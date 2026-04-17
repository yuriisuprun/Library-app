-- Insert initial sample books
-- Migration: V2__Insert_initial_books.sql
-- Description: Load initial book data for the library system

INSERT INTO books (
    title, 
    author, 
    isbn, 
    published_year, 
    publisher, 
    genre, 
    target_audience, 
    country, 
    language, 
    page_count, 
    description
) VALUES 
(
    'Lo cercava Elia',
    'Ugo Grottoli',
    '978-88-123-4567-8',
    2023,
    'Editore Italiano',
    'Fiction',
    'ADULT',
    'IT',
    'it',
    320,
    'Un romanzo avvincente che racconta la storia di Elia e la sua ricerca interiore attraverso paesaggi italiani mozzafiato.'
),
(
    'Bla! bla!',
    'Scrittore Moderno',
    '978-88-987-6543-2',
    2024,
    'Casa Editrice Contemporanea',
    'Contemporary',
    'YOUNG_ADULT',
    'IT',
    'it',
    280,
    'Una narrazione dinamica e coinvolgente che esplora temi contemporanei attraverso dialoghi brillanti e situazioni inaspettate.'
);