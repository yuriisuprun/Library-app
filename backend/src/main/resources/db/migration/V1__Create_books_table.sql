-- Create books table with all required fields
-- Migration: V1__Create_books_table.sql
-- Description: Initial table creation for the library management system

CREATE TABLE books (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(255) NOT NULL,
    author VARCHAR(255) NOT NULL,
    isbn VARCHAR(20),
    published_year INTEGER,
    publisher VARCHAR(255),
    genre VARCHAR(100),
    target_audience VARCHAR(30),
    country VARCHAR(100),
    language VARCHAR(50),
    page_count INTEGER,
    description VARCHAR(2000),
    cover_image_url VARCHAR(500),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    
    -- Constraints
    CONSTRAINT chk_published_year CHECK (published_year >= 0),
    CONSTRAINT chk_page_count CHECK (page_count >= 1),
    CONSTRAINT chk_target_audience CHECK (target_audience IN ('CHILDREN', 'YOUNG_ADULT', 'ADULT', 'ACADEMIC'))
);

-- Create indexes for better query performance
CREATE INDEX idx_books_title ON books(title);
CREATE INDEX idx_books_author ON books(author);
CREATE INDEX idx_books_isbn ON books(isbn);
CREATE INDEX idx_books_published_year ON books(published_year);
CREATE INDEX idx_books_genre ON books(genre);