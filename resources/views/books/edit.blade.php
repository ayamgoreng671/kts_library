<x-app-layout>




    <div class="bg-white dark:bg-gray-800 overflow-hidden shadow-sm sm:rounded-lg">


        <div class="p-6 text-gray-900 dark:text-gray-100">
            <form action="{{ route('books.update', $book->id) }}" class="form-control" method="post" enctype="multipart/form-data">
                @csrf
                @method("PUT")

                <div class="grid grid-cols-2 gap-4">

                    <div><x-input-label for="author" :value="__('Author')" /><select name="author"
                            class="select select-bordered w-full max-w-xs">
                            <option disabled>Masukkan nama author</option>
                            @foreach ($authors as $author)
                            @if ($book->author_id == $author->id)
                            <option value="{{ $author->id }}" selected>{{ $author->name }}</option>
                            @else
                            <option value="{{ $author->id }}">{{ $author->name }}</option>
                            @endif
                            @endforeach

                        </select></div>
                    <div><x-input-label for="publisher" :value="__('Publisher')" /><select name="publisher"
                            class="select select-bordered w-full max-w-xs">
                            <option disabled>Masukkan nama publisher</option>
                            @foreach ($publishers as $publisher)
                            @if ($book->publisher_id == $publisher->id)
                            <option value="{{ $publisher->id }}" selected>{{ $publisher->name }}</option>
                            @else
                            <option value="{{ $publisher->id }}">{{ $publisher->name }}</option>
                            @endif
                            
                                
                            @endforeach

                        </select></div>
                    <div> <x-input-label for="title" :value="__('Title')" />
                        <input name="title" type="text" placeholder="Type here"
                            class="input input-bordered @error('title')
                        input-error
                        @enderror w-full max-w-xs" value="{{ $book->title }}" />

                        @error('title')
                            <span class="text-error">{{ $message }}</span>
                        @enderror
                    </div>
                    <div> <x-input-label for="cover" :value="__('Cover')" class="" />
                        <input name="cover" type="file"
                            class="file-input file-input-bordered w-full max-w-xs @error('cover')
                        file-input-error 
                        @enderror " />

                        @error('cover')
                            <span class="text-error">{{ $message }}</span>
                        @enderror
                    </div>

                    <div> <x-input-label for="year" :value="__('Year')" />
                        <input name="year" type="number" placeholder="Type here"
                            class="input input-bordered @error('year')
                        input-error 
                        @enderror w-full max-w-xs" value="{{ $book->year }}" />

                        @error('year')
                            <span class="text-error">{{ $message }}</span>
                        @enderror
                    </div>

                    <div>
                        <div class="avatar mt-4">
                            <div class="mask mask-squircle w-12 h-12">
                                <img src="/storage/{{ $book->cover }}" alt="duar">
                            </div>
                        </div>
                    </div>

                </div>



                <div>
                    <a href="{{ route('books.index') }}"><input type="button" value="Return"
                            class="btn btn-warning mt-4"></a>
                    <input type="submit" value="Submit" class="btn btn-primary mt-4">
                </div>

            </form>


        </div>

    </div>


</x-app-layout>
