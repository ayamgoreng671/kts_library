<?php

namespace App\Http\Controllers;

use App\Models\Author;
use App\Models\Book;
use App\Models\Publisher;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class BookController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        return view("books.index", [
            "books" => Book::latest()->get(),
            "authors" => Author::latest()->get(),
            "publishers" => Publisher::latest()->get()
        ]);
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        $this->validate($request, [
            "author" => ["required"],
            "publisher" => ["required"],
            "title" => ["required"],
            "cover" => ["required"],
            "description" => ["required"],
            "year" => ["required"]
        ]);

        Book::create([
            "author_id" => $request->author,
            "publisher_id" => $request->publisher,
            "title" => $request->title,
            "cover" => $request->file("cover")->store(),
            "description" => $request->description,
            "year" => $request->year,
        ]);

        session()->flash('success', 'Berhasil menambahkan data buku');

        return to_route('books.index');
    }

    /**
     * Display the specified resource.
     */
    public function show(string $id)
    {
        return view('books.show', [
            'book' => Book::find($id)
        ]);
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(string $id)
    {
        return view("books.edit", [
            "book" => Book::find($id),
            "authors" => Author::latest()->get(),
            "publishers" => Publisher::latest()->get()
        ]);
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, string $id)
    {
        $this->validate($request, [
            "author" => ["required"],
            "publisher" => ["required"],
            "title" => ["required"],
            "cover" => ["required"],
            "description" => ["required"],
            "year" => ["required"]
        ]);
        $book = Book::find($id);

        $book->update([
            "author_id" => $request->author,
            "publisher_id" => $request->publisher,
            "title" => $request->title,
            "cover" => $request->file("cover")->store(),
            "description" => $request->description,
            "year" => $request->year,
        ]);

        session()->flash('success', 'Berhasil memperbarui data buku');

        return to_route('books.index');
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(string $id)
    {
        $book = Book::find($id);

        $book->delete();

        session()->flash('danger', 'Berhasil menghapus data buku');

        return to_route('books.index');
    }

    public function search(Request $request){

        $this->validate($request, [
            "search" => ["required"],

        ]);
        $target = $request->search;
        // dd($target);
        $books = Book::select()
                    ->where("title","LIKE","%$target%")
                    ->get();
        // dd($books);
        return view("books.search", [
            "books" => $books,
            "authors" => Author::latest()->get(),
            "publishers" => Publisher::latest()->get()
        ]);
    }
}
