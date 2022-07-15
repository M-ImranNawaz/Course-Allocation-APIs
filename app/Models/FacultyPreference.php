<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class FacultyPreference extends Model
{
    use HasFactory;

    protected $fillable = [
        'faculty_id',
        'pref_1',
        'pref_2',
        'pref_3',
        'pref_4',
    ];
}
