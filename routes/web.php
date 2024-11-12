<?php

use Illuminate\Support\Facades\Route;
use Inertia\Inertia;
use App\Http\Controllers\{AuthController, DashboardController, ProfileController, ListingController, AdminController};
use App\Models\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use App\Http\Controllers\Auth\RegisterController;
use App\Http\Middleware\Admin;

Route::get('/home/one', function (Request $request) {
    return inertia('Home', [
        'users' => User::when($request->search, function ($query) use($request) {
            $query
            ->where('name','like','%'. $request->search .'%')
            ->orWhere('email','like','%'. $request->search .'%')
            ;
        })->paginate(5)->withQueryString(),
        'searchTerm' => $request->search,
        'can' => [
            'delete_user' => Auth::user() ? Auth::user()->can('delete', User::class) : null
        ]
    ]);
})->name('home.one');

Route::middleware('auth')->group(function () {
    Route::inertia('/dashboard/one', 'Dashboard')->name('dashboard.one');
    Route::post('/logout/one', [AuthController::class, 'logout'])->name('logout.one');
});

Route::middleware('guest')->group(function () {
    Route::inertia('/register/one', 'Auth/Register')->name('register.one');
    Route::post('/register/one', [AuthController::class, 'register']);

    Route::inertia('/login/one', 'Auth/Login')->name('login.one');
    Route::post('/login/one', [AuthController::class, 'login']);
});

// User Profile Routes
Route::middleware(['auth'])->group(function () {
    Route::get('/dashboard', [DashboardController::class, 'index'])->middleware('verified')->name('dashboard');
    Route::get('/profile', [ProfileController::class, 'edit'])->name('profile.edit');

    Route::patch('/profile', [ProfileController::class, 'updateInfo'])->name('profile.info');
    Route::put('/profile', [ProfileController::class, 'updatePassword'])->name('profile.password');

    Route::delete('/profile', [ProfileController::class, 'destroy'])->name('profile.destroy');
});
// Listing Routes
Route::get('/', [ListingController::class, 'index'])->name('home');
Route::resource('listing', ListingController::class)->except('index');

// Admin Routes
Route::middleware(['auth', 'verified', Admin::class])
    ->controller(AdminController::class)
    ->group(function () {
    Route::get('/admin', 'index')->name('admin.index');
    Route::get('/users/{user}', 'show')->name('user.show');
    Route::put('/admin/{user}/role', 'role')->name('admin.role');
    Route::put('/listing/{listing}/approve', 'approve')->name('admin.approve');
});

require __DIR__ . '/auth.php';

