// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.ruyicai.actioncenter.domain;

import com.ruyicai.actioncenter.domain.SSCPrizedDetail;
import com.ruyicai.actioncenter.domain.SSCPrizedDetailPK;
import java.util.List;
import javax.persistence.Entity;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Table;
import org.springframework.transaction.annotation.Transactional;

privileged aspect SSCPrizedDetail_Roo_Entity {
    
    declare @type: SSCPrizedDetail: @Entity;
    
    declare @type: SSCPrizedDetail: @Table(name = "SSCPRIZEDDETAIL");
    
    @PersistenceContext
    transient EntityManager SSCPrizedDetail.entityManager;
    
    @Transactional
    public void SSCPrizedDetail.persist() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.persist(this);
    }
    
    @Transactional
    public void SSCPrizedDetail.remove() {
        if (this.entityManager == null) this.entityManager = entityManager();
        if (this.entityManager.contains(this)) {
            this.entityManager.remove(this);
        } else {
            SSCPrizedDetail attached = SSCPrizedDetail.findSSCPrizedDetail(this.id);
            this.entityManager.remove(attached);
        }
    }
    
    @Transactional
    public void SSCPrizedDetail.flush() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.flush();
    }
    
    @Transactional
    public void SSCPrizedDetail.clear() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.clear();
    }
    
    @Transactional
    public SSCPrizedDetail SSCPrizedDetail.merge() {
        if (this.entityManager == null) this.entityManager = entityManager();
        SSCPrizedDetail merged = this.entityManager.merge(this);
        this.entityManager.flush();
        return merged;
    }
    
    public static final EntityManager SSCPrizedDetail.entityManager() {
        EntityManager em = new SSCPrizedDetail().entityManager;
        if (em == null) throw new IllegalStateException("Entity manager has not been injected (is the Spring Aspects JAR configured as an AJC/AJDT aspects library?)");
        return em;
    }
    
    public static long SSCPrizedDetail.countSSCPrizedDetails() {
        return entityManager().createQuery("SELECT COUNT(o) FROM SSCPrizedDetail o", Long.class).getSingleResult();
    }
    
    public static List<SSCPrizedDetail> SSCPrizedDetail.findAllSSCPrizedDetails() {
        return entityManager().createQuery("SELECT o FROM SSCPrizedDetail o", SSCPrizedDetail.class).getResultList();
    }
    
    public static SSCPrizedDetail SSCPrizedDetail.findSSCPrizedDetail(SSCPrizedDetailPK id) {
        if (id == null) return null;
        return entityManager().find(SSCPrizedDetail.class, id);
    }
    
    public static List<SSCPrizedDetail> SSCPrizedDetail.findSSCPrizedDetailEntries(int firstResult, int maxResults) {
        return entityManager().createQuery("SELECT o FROM SSCPrizedDetail o", SSCPrizedDetail.class).setFirstResult(firstResult).setMaxResults(maxResults).getResultList();
    }
    
}
