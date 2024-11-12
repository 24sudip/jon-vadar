<?php

namespace App\Policies;

use App\Models\Listing;
use App\Models\User;
use Illuminate\Auth\Access\Response;

class ListingPolicy
{
    public function before(User $user) {
        if ($user->isAdmin()) {
            return true;
        }
        return null;
    }
    
    /**
     * Determine whether the user can view the model.
     */
    public function view(?User $user, Listing $listing)
    {
        return $listing->user->role !== 'suspended' && $listing->approved;
    }

    /**
     * Determine whether the user can create models.
     */
    public function create(User $user): bool
    {
        return $user->role !== 'suspended';
    }

    public function modify(User $user, Listing $listing): bool
    {
        return $user->role !== 'suspended' && $user->id === $listing->user_id;
    }

    public function approve(User $user, Listing $listing) {
        return $user->isAdmin();
    }

    /** * Determine whether the user can view any models.*/
    // public function viewAny(User $user): bool {}

    /** * Determine whether the user can update the model.*/
    // public function update(User $user, Listing $listing): bool {}

    /** * Determine whether the user can delete the model.*/
    // public function delete(User $user, Listing $listing): bool {}

    /** * Determine whether the user can restore the model.*/
    // public function restore(User $user, Listing $listing): bool {}

    /** * Determine whether the user can permanently delete the model.*/
    // public function forceDelete(User $user, Listing $listing): bool {}
}
