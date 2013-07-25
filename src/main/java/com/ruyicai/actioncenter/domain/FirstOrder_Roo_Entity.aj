// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.ruyicai.actioncenter.domain;

import com.ruyicai.actioncenter.domain.FirstOrder;
import java.lang.String;
import java.util.List;
import javax.persistence.Entity;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Table;
import org.springframework.transaction.annotation.Transactional;

privileged aspect FirstOrder_Roo_Entity {
    
    declare @type: FirstOrder: @Entity;
    
    declare @type: FirstOrder: @Table(name = "FIRSTORDER");
    
    @PersistenceContext
    transient EntityManager FirstOrder.entityManager;
    
    @Transactional
    public void FirstOrder.persist() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.persist(this);
    }
    
    @Transactional
    public void FirstOrder.remove() {
        if (this.entityManager == null) this.entityManager = entityManager();
        if (this.entityManager.contains(this)) {
            this.entityManager.remove(this);
        } else {
            FirstOrder attached = FirstOrder.findFirstOrder(this.userno);
            this.entityManager.remove(attached);
        }
    }
    
    @Transactional
    public void FirstOrder.flush() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.flush();
    }
    
    @Transactional
    public void FirstOrder.clear() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.clear();
    }
    
    @Transactional
    public FirstOrder FirstOrder.merge() {
        if (this.entityManager == null) this.entityManager = entityManager();
        FirstOrder merged = this.entityManager.merge(this);
        this.entityManager.flush();
        return merged;
    }
    
    public static final EntityManager FirstOrder.entityManager() {
        EntityManager em = new FirstOrder().entityManager;
        if (em == null) throw new IllegalStateException("Entity manager has not been injected (is the Spring Aspects JAR configured as an AJC/AJDT aspects library?)");
        return em;
    }
    
    public static long FirstOrder.countFirstOrders() {
        return entityManager().createQuery("SELECT COUNT(o) FROM FirstOrder o", Long.class).getSingleResult();
    }
    
    public static List<FirstOrder> FirstOrder.findAllFirstOrders() {
        return entityManager().createQuery("SELECT o FROM FirstOrder o", FirstOrder.class).getResultList();
    }
    
    public static FirstOrder FirstOrder.findFirstOrder(String userno) {
        if (userno == null || userno.length() == 0) return null;
        return entityManager().find(FirstOrder.class, userno);
    }
    
    public static List<FirstOrder> FirstOrder.findFirstOrderEntries(int firstResult, int maxResults) {
        return entityManager().createQuery("SELECT o FROM FirstOrder o", FirstOrder.class).setFirstResult(firstResult).setMaxResults(maxResults).getResultList();
    }
    
}
