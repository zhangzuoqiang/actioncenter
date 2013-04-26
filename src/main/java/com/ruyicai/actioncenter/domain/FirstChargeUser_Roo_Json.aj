// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.ruyicai.actioncenter.domain;

import com.ruyicai.actioncenter.domain.FirstChargeUser;
import flexjson.JSONDeserializer;
import flexjson.JSONSerializer;
import java.lang.String;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;

privileged aspect FirstChargeUser_Roo_Json {
    
    public String FirstChargeUser.toJson() {
        return new JSONSerializer().exclude("*.class").serialize(this);
    }
    
    public static FirstChargeUser FirstChargeUser.fromJsonToFirstChargeUser(String json) {
        return new JSONDeserializer<FirstChargeUser>().use(null, FirstChargeUser.class).deserialize(json);
    }
    
    public static String FirstChargeUser.toJsonArray(Collection<FirstChargeUser> collection) {
        return new JSONSerializer().exclude("*.class").serialize(collection);
    }
    
    public static Collection<FirstChargeUser> FirstChargeUser.fromJsonArrayToFirstChargeUsers(String json) {
        return new JSONDeserializer<List<FirstChargeUser>>().use(null, ArrayList.class).use("values", FirstChargeUser.class).deserialize(json);
    }
    
}