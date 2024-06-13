# REST API Challenge: Book Management System

## Objective
Create a REST API for managing a collection of books using C#. The API should allow users to perform CRUD (Create, Read, Update, Delete) operations on books.

## Requirements
1. **Programming Language**: C#
2. **Framework**: ASP.NET Core
3. **Database**: In-memory database (using Entity Framework Core)

## API Endpoints
1. **GET /books**: Retrieve a list of all books.
2. **GET /books/{id}**: Retrieve a single book by its ID.
3. **POST /books**: Create a new book.
4. **PUT /books/{id}**: Update an existing book by its ID.
5. **DELETE /books/{id}**: Delete a book by its ID.

## Book Model
A book should have the following attributes:
- **id**: Unique identifier for the book (integer).
- **title**: Title of the book (string).
- **author**: Author of the book (string).
- **published_date**: Date when the book was published (date).
- **isbn**: ISBN number of the book (string).
- **pages**: Number of pages in the book (integer).
- **cover_url**: URL to the cover image of the book (string).
- **language**: Language of the book (string).

### Example Data
```json
{
  "id": 1,
  "title": "The Great Gatsby",
  "author": "F. Scott Fitzgerald",
  "published_date": "1925-04-10",
  "isbn": "9780743273565",
  "pages": 180,
  "cover_url": "https://example.com/great-gatsby.jpg",
  "language": "English"
}
