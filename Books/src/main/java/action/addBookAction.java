package action;

import org.hibernate.Session; 

import org.hibernate.Transaction;

import com.opensymphony.xwork2.ActionSupport;

import helper.FactoryProvider;
import model.Book;

public class addBookAction extends ActionSupport{
    private Book book;
    public String post() {
        Session session = FactoryProvider.getFactory().openSession();
        Transaction tx = null;

        try {
            tx = session.beginTransaction();
            session.persist(book);
            tx.commit();
            addActionMessage("Book added successfully!");
            return SUCCESS;
        } catch (Exception e){
            if (tx != null && tx.isActive()) {	
                tx.rollback();
            }
            addActionError("Error adding book: " + e.getMessage());
            return ERROR;
        } finally {            session.close();
        }
    }

    public Book getBook() {
        return book;
    }

    public void setBook(Book book) {
        this.book = book;
    }
}
