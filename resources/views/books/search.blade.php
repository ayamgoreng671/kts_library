<x-app-layout>
    <p class="font-bold text-4xl text-white mb-4">Data Buku</p>
    <div class="bg-white dark:bg-gray-800 overflow-hidden shadow-sm sm:rounded-lg">



    </div>
    <div class="bg-white dark:bg-gray-800 card my-4">
        <div class="card-body">

            <form action="{{ route('books.search') }}" method="post">
                @csrf
                <input name="search" type="text" placeholder="Type here"
                    class="input input-bordered w-full max-w-xs 
                    {{-- @error('search') 
                    input-error 
                    @enderror --}}
                    " />

                <input type="submit" value="Search" class="btn btn-primary mt-4">
                {{-- @error('search')
                    <br>
                    <span class="text-error">{{ $message }}</span>


                @enderror --}}
                {{-- <a href="{{ route('dashboard') }}"><input type="button" value="Return"
                    class="btn btn-warning mt-4"></a> --}}
                    
            
            </form>
        </div>

    </div>

    <div class="overflow-x-auto bg-base-100 mt-8 rounded-lg">
        <table class="table">
            <!-- head -->
            <thead>
                <tr>
                    <th>Author</th>
                    <th>Publisher</th>
                    <th>Title</th>
                    <th>Cover</th>
                    <th>Year</th>
                    <th>Details</th>
                    <th>Action</th>
                    <th></th>
                </tr>
            </thead>
            <tbody>

                @foreach ($books as $book)
                    <!-- row 1 -->
                    <tr>
                        <td>
                            {{-- <div class="flex items-center gap-3">
                                <div class="avatar">
                                    <div class="mask mask-squircle w-12 h-12">
                                        <img src="storage/{{ $book->author->name }}" alt="duar">
                                    </div>
                                </div>
                            </div> --}}
                            {{-- {{dd($book->author)}} --}}
                            {{ $book->author->name }}
                        </td>
                        <td>
                            {{ $book->publisher->name }}

                        </td>
                        <td>
                            {{ $book->title }}
                        </td>
                        <td>
                            <div class="avatar">
                                <div class="mask mask-squircle w-12 h-12">
                                    <img src="/storage/{{ $book->cover }}" alt="duar">
                                </div>
                            </div>
                        </td>
                        <td>{{ $book->year }}</td>
                        <td><a href="{{ route('books.show', $book->id) }}" class="link link-info">Details </a></td>
                        <td>
                            <div>

                                <a href="{{ route('books.edit', $book->id) }}" class="btn btn-warning btn-sm">Edit</a>
                                <form action="{{ route('books.destroy', $book->id) }}" method="post">
                                    @csrf
                                    @method('DELETE')
                                    <input type="submit" class="btn btn-sm btn-error mt-2" value="delete">
                                </form>
                            </div>
                        </td>
                    </tr>

                    </tr>
                @endforeach
            </tbody>
            <!-- foot -->
            <tfoot>
                <tr>
                    <th>Author</th>
                    <th>Publisher</th>
                    <th>Title</th>
                    <th>Cover</th>
                    <th>Year</th>
                    <th>Details</th>
                    <th>Action</th>
                    <th></th>
                </tr>
            </tfoot>

        </table>
    </div>
    {{-- 
        <div class="card bg-base-100 my-4">
            <div class="card-body">
                <h3>{{ $book->name }}</h3>
                <img src="storage/{{ $book->photo }}" alt="duar">
            </div>

            <div class="card-actions p-2">
                <a href=" {{ route('books.show', $book) }} " class="link link-secondary">Komentar</a>
                <a href="{{ route('books.edit', $book->id) }}" class="btn btn-warning btn-sm">Edit</a>
                <form action="{{ route('books.destroy', $book->id) }}" method="post">
                    @csrf
                    @method('DELETE')
                    <input type="submit" class="btn btn-sm btn-error" value="delete">
                </form>
            </div>
        </div> --}}


</x-app-layout>
