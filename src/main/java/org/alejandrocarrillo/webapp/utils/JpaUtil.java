package org.alejandrocarrillo.webapp.utils;

import jakarta.persistence.EntityManager;
import jakarta.persistence.EntityManagerFactory;
import jakarta.persistence.Persistence;

public class JpaUtil {
    private static final EntityManagerFactory emf = buildEntityManagerFactory();
    public static EntityManagerFactory buildEntityManagerFactory(){
        try{
            return Persistence.createEntityManagerFactory("SGBDProductos2020412");
        } catch(Exception e){
            e.printStackTrace();
            throw new ExceptionInInitializerError(e);
        }
    }
    
    public static EntityManager getEntityMager(){
        return emf.createEntityManager();
    }
    
    public static void close(){
        emf.close();
    }
}
