// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.ruyicai.lottery.domain;

import com.ruyicai.lottery.domain.Tsubscribe;
import flexjson.JSONDeserializer;
import flexjson.JSONSerializer;
import java.lang.String;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;

privileged aspect Tsubscribe_Roo_Json {
    
    public String Tsubscribe.toJson() {
        return new JSONSerializer().exclude("*.class").serialize(this);
    }
    
    public static Tsubscribe Tsubscribe.fromJsonToTsubscribe(String json) {
        return new JSONDeserializer<Tsubscribe>().use(null, Tsubscribe.class).deserialize(json);
    }
    
    public static String Tsubscribe.toJsonArray(Collection<Tsubscribe> collection) {
        return new JSONSerializer().exclude("*.class").serialize(collection);
    }
    
    public static Collection<Tsubscribe> Tsubscribe.fromJsonArrayToTsubscribes(String json) {
        return new JSONDeserializer<List<Tsubscribe>>().use(null, ArrayList.class).use("values", Tsubscribe.class).deserialize(json);
    }
    
}
