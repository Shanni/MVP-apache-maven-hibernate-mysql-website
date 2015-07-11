package testdb;
 
import javax.persistence.*;

import Apple.model.Movie;

import java.util.*;
 
public class testJpa {
    public static void main(String[] args) {
        // Open a database connection
        // (create a new database if it doesn't exist yet):
        EntityManagerFactory emf =
            Persistence.createEntityManagerFactory("MIS");
        EntityManager em = emf.createEntityManager();
 
        // Store Movie objects in the database:
        em.getTransaction().begin();
        
//        Movie movie=new Movie("50 shade of gray");
//        Movie movie1=new Movie("1900");
//        em.persist(movie);
//        em.persist(movie1);
//        
        
        em.getTransaction().commit();
 
//        // Find the number of Point objects in the database:
//        Query q1 = em.createQuery("SELECT COUNT(p) FROM Point p");
//        System.out.println("Total Points: " + q1.getSingleResult());
// 
//        // Find the average X value:
//        Query q2 = em.createQuery("SELECT AVG(p.x) FROM Point p");
//        System.out.println("Average X: " + q2.getSingleResult());
 
        // Retrieve all the Point objects from the database:
        TypedQuery<Movie> query =
            em.createQuery("SELECT * FROM Movie", Movie.class);
        List<Movie> results = query.getResultList();
        for (Movie a : results) {
            System.out.println(a);
        }
 
        // Close the database connection:
        em.close();
        emf.close();
    }
}