#5a
use bookstore;

db.books.insertMany([
{title:"ToKillaMockingbird",author:"HarperLee",price:10.99},
{title:"1984", author:"GeorgeOrwell", price:8.99 }
]);

#5b
db.books.find()

db.books.find({author:'GeorgeOrwell'});

#5c

CREATE(book1:Book{title:'ToKillaMockingbird',author:'HarperLee'}) CREATE (book2:Book {title: '1984', author: 'George Orwell'})
CREATE(customer:Customer{name:'JohnDoe'}) CREATE (customer)-[:BOUGHT]->(book1)

MATCH (customer:Customer)-[:BOUGHT]->(book:Book) WHERE customer.name = 'John Doe'
RETURN book.title, book.author;


MATCH (customer:Customer)-[:BOUGHT]->(book:Book)
WHERE customer.name = 'JohnDoe'
RETURN book.title, book.author;

