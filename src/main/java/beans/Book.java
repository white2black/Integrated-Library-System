/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package beans;

/**
 *
 * @author Administrator
 */
public class Book {
    
    private String bookId;
    private String bookName;
   
    private String category;
    private String author;
    private String publisher;
   
    private String description;
    
    private String imagePath;
    private String available; // this will be username
    
    public Book(String bookId, String bookName, String category,
            String author, String publisher, String description,
            String imagePath, String available){
        this.bookId = bookId;
        this.bookName = bookName;
        this.category = category;
        this.author = author;
        this.publisher = publisher;
        this.description = description;
        this.imagePath = imagePath;
        this.available = available;
    }
    
    
    public Book(){
        this.available = "";
    }

    public String getCategory() {
        return category;
    }

    public void setCategory(String category) {
        this.category = category;
    }

    public String getImagePath() {
        return imagePath;
    }

    public void setImagePath(String imageLink) {
        this.imagePath = imageLink;
    }
   
    
    public String getBookId() {
        return bookId;
    }

    public void setBookId(String bookId) {
        this.bookId = bookId;
    }

    public String getBookName() {
        return bookName;
    }

    public void setBookName(String name) {
        this.bookName = name;
    }

    public String getPublisher() {
        return publisher;
    }

    public void setPublisher(String publisher) {
        this.publisher = publisher;
    }

    public String getAuthor() {
        return author;
    }

    public void setAuthor(String author) {
        this.author = author;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getAvailable() {
        return available;
    }

    public void setAvailable(String available) {
        this.available = available;
    }
    
    
    
}
