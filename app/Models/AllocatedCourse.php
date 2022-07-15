<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class AllocatedCourse extends Model
{
    use HasFactory;
    protected $fillable = [
        'faculty',
        'courses',
    ];
}
