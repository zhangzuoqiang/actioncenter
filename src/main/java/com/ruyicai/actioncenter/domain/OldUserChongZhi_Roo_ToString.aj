// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.ruyicai.actioncenter.domain;

import java.lang.String;

privileged aspect OldUserChongZhi_Roo_ToString {
    
    public String OldUserChongZhi.toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("ChongZhiAmt: ").append(getChongZhiAmt()).append(", ");
        sb.append("CreateTime: ").append(getCreateTime()).append(", ");
        sb.append("Userno: ").append(getUserno()).append(", ");
        sb.append("ZengsongAmt: ").append(getZengsongAmt());
        return sb.toString();
    }
    
}
