<x-app-layout>



    <div class="card bg-base-100 my-4">
        <div class="card-body">
            <p class="flex justify-center text-white text-2xl">{{ $book->title }}</p>
            <div>
                <div class="flex justify-center">
                    <img src="/storage/{{ $book->cover }}" class="w-64 h-96" alt="duar">
                </div>
            </div>
            <p>{{ $book->description }}</p>
            <div class="card-action"><a href="{{ route("books.index") }}"><input type="submit" value="Return" class="btn btn-warning mt-4"></a></div>
        </div>

        

    </div>





</x-app-layout>
