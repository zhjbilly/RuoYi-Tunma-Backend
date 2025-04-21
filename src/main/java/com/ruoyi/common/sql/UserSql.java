package com.ruoyi.common.sql;

import org.springframework.stereotype.Component;

import java.util.Arrays;
import java.util.List;

@Component
public class UserSql {

    //登录
    public static final String LOGIN_SQL = "select u.user_id, u.dept_id, u.user_name, u.nick_name, u.email, u.avatar, u.phonenumber, u.password, u.sex, u.status, u.del_flag, u.login_ip, u.login_date, u.create_by, u.create_time, u.remark,r.role_id, r.role_name, r.role_key, r.role_sort, r.data_scope, r.status as role_status from %s u left join sys_user_role ur on u.user_id = ur.user_id left join sys_role r on r.role_id = ur.role_id ";

    //列表
    public static final String List_SQL = "select u.user_id, u.dept_id, u.nick_name, u.user_name, u.email, u.avatar, u.phonenumber, u.sex, u.status, u.del_flag, u.login_ip, u.login_date, u.create_by, u.create_time, u.remark from %s u";

    public static final String AllocatedList = "select u.user_id, u.dept_id, u.user_name, u.nick_name, u.email, u.phonenumber, u.status, u.create_time, u.del_flag from %s u ";

    public static final String USER_ID = "SELECT user_id  FROM %s ";

    public static final String USER_NAME = "select user_id, user_name, del_flag from %s ";


    public List<String> getTables() {
        return Arrays.asList("sys_user");
    }

    public String getLoginSQL() {
        List<String> tabs = getTables();
        String sql = "select * from ( %s ) u ";
        StringBuilder sqlout = new StringBuilder("");
        for (int i = 0; i < tabs.size(); i++) {
            String table = tabs.get(i);
            if (i == tabs.size() - 1) {
                sqlout.append(String.format(LOGIN_SQL, table));
            } else {
                sqlout.append(String.format(LOGIN_SQL, table) + " union all ");
            }
        }
        return String.format(sql, sqlout);
    }


    public String getListSQL() {
        List<String> tabs = getTables();
        String sql = "select * from ( %s ) u where u.del_flag = '0'";
        StringBuilder sqlout = new StringBuilder("");
        for (int i = 0; i < tabs.size(); i++) {
            String table = tabs.get(i);
            if (i == tabs.size() - 1) {
                sqlout.append(String.format(List_SQL, table));
            } else {
                sqlout.append(String.format(List_SQL, table) + " union all ");
            }
        }
        return String.format(sql, sqlout);
    }


    public String getAllocatedListSQL() {
        List<String> tabs = getTables();
        StringBuilder sqlout = new StringBuilder("");
        for (int i = 0; i < tabs.size(); i++) {
            String table = tabs.get(i);
            if (i == tabs.size() - 1) {
                sqlout.append(String.format(AllocatedList, table));
            } else {
                sqlout.append(String.format(AllocatedList, table) + " union all ");
            }
        }
        return sqlout.toString();
    }


    public String getMenuUserSQL() {
        List<String> tabs = getTables();
        StringBuilder sqlout = new StringBuilder("");
        for (int i = 0; i < tabs.size(); i++) {
            String table = tabs.get(i);
            if (i == tabs.size() - 1) {
                sqlout.append(String.format(USER_ID, table));
            } else {
                sqlout.append(String.format(USER_ID, table) + " union all ");
            }
        }
        return sqlout.toString();
    }


    public String getUserId() {
        List<String> tabs = getTables();
        String sql = "SELECT IF(MAX(a.user_id) IS NULL,1,MAX(a.user_id)+1) AS user_id FROM (%s) a";
        StringBuilder sqlout = new StringBuilder("");
        for (int i = 0; i < tabs.size(); i++) {
            String table = tabs.get(i);
            if (i == tabs.size() - 1) {
                sqlout.append(String.format(USER_ID, table));
            } else {
                sqlout.append(String.format(USER_ID, table) + " union all ");
            }
        }
        return String.format(sql, sqlout);
    }


    public String getUserNameSql() {
        List<String> tabs = getTables();
        StringBuilder sqlout = new StringBuilder("");
        for (int i = 0; i < tabs.size(); i++) {
            String table = tabs.get(i);
            if (i == tabs.size() - 1) {
                sqlout.append(String.format(USER_NAME, table));
            } else {
                sqlout.append(String.format(USER_NAME, table) + " union all ");
            }
        }
        return sqlout.toString();

    }

}
