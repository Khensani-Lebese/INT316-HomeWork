/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package za.ac.tut.bl;

import java.util.List;
import javax.annotation.security.RolesAllowed;
import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;
import za.ac.tut.entities.Student;

/**
 *
 * @author TRafapa
 */
@Stateless
public class StudentFacade extends AbstractFacade<Student> implements StudentFacadeLocal {

    @PersistenceContext(unitName = "StudentEJBModulePU")
    private EntityManager em;

    @Override
    protected EntityManager getEntityManager() {
        return em;
    }

    public StudentFacade() {
        super(Student.class);
    }
    
    @Override
    public List<Student> getListByCourse(Character course) {
    String str = "SELECT s FROM Student s WHERE s.course = ?1";
        Query qr = em.createQuery(str);
        qr.setParameter(1, course);
        List<Student> stud = qr.getResultList();
        return stud;
    }
    
    @Override
    public List<Student> findList() {
    String str ="SELECT s FROM Student s";
    Query qr = em.createQuery(str);
    List<Student> stud = (List<Student>)qr.getResultList();
    return stud;
    }
    
}
