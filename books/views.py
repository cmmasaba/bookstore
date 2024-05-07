from django.views.generic import ListView

from .models import Book

class BooksListView(ListView):
    model = Book
    context_object_name = 'book_list'
    template_name = 'books/books_list.html'