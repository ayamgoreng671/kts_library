<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Book extends Model
{
    use HasFactory;
    protected $fillable = [
        'author_id',
        'publisher_id',
        "title",
        "cover",
        "description",
        "year"

    ];

    public function author(){
        return $this->belongsTo(Author::class);
    }
    public function publisher(){
        return $this->belongsTo(Publisher::class);
    }
}
