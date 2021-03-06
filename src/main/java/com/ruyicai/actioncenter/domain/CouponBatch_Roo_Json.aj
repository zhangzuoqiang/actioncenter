// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.ruyicai.actioncenter.domain;

import com.ruyicai.actioncenter.domain.CouponBatch;
import flexjson.JSONDeserializer;
import flexjson.JSONSerializer;
import java.lang.String;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;

privileged aspect CouponBatch_Roo_Json {
    
    public String CouponBatch.toJson() {
        return new JSONSerializer().exclude("*.class").serialize(this);
    }
    
    public static CouponBatch CouponBatch.fromJsonToCouponBatch(String json) {
        return new JSONDeserializer<CouponBatch>().use(null, CouponBatch.class).deserialize(json);
    }
    
    public static String CouponBatch.toJsonArray(Collection<CouponBatch> collection) {
        return new JSONSerializer().exclude("*.class").serialize(collection);
    }
    
    public static Collection<CouponBatch> CouponBatch.fromJsonArrayToCouponBatches(String json) {
        return new JSONDeserializer<List<CouponBatch>>().use(null, ArrayList.class).use("values", CouponBatch.class).deserialize(json);
    }
    
}
