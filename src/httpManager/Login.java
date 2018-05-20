package httpManager;

import database.DBManager;
import Bean.*;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.ResultSet;
import java.sql.ResultSetMetaData;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.UUID;

/**
 * Created by Westchennn on 3/27/18.
 */
public class Login extends HttpServlet {

    private static ResultSet ret = null;
    private ResultSetMetaData rsmd = null;

    public Login() {
        super();
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        doPost(request,response);
    }


    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        response.setContentType("application/json;charset=utf-8");
        request.setCharacterEncoding("utf-8");
        response.setCharacterEncoding("utf-8");
        PrintWriter out = response.getWriter();




        String operation = request.getParameter("operation");
        String sql = "";
        if(operation.equals("login")) {
            String username = request.getParameter("username");
            String password = request.getParameter("password");
            HttpSession session = request.getSession(true);
            String sessionID = session.getId();
            JSONObject status = new JSONObject();
            if (session.getAttribute("userAuthority")==null) {
//                session.setAttribute("username",username);
//                session.setAttribute("password",password);
                System.out.print("创建新session");
                sql = "select * from userInfo where username = '" + username + "' AND password = '" + password + "';";
                DBManager db = new DBManager(sql);
                try {
                    ret = db.pst.executeQuery();
                    if (ret.first()) {
//                        System.out.print(ret.getString("userid"));
//                        int userId = Integer.valueOf(ret.getString("userid"));
//                        String userName = ret.getString("userName");
//                        String passWord = ret.getString("password");
//                        String userAuthority = ret.getString("userAuthority");
                        status.accumulate("status", "1");
                        status.accumulate("userId", ret.getString("userid"));
                        status.accumulate("userName", ret.getString("userName"));
                        status.accumulate("password", ret.getString("password"));
                        status.accumulate("userAuthority",ret.getString("userAuthority"));
                        status.accumulate("telephone",ret.getString("telephone"));
//                        User user = new User();
//                        user.setUserId(Integer.valueOf(userId));
//                        user.setUserName(userName);
//                        user.setPassword(passWord);
//                        user.setUserAuthority(userAuthority);
//                        session.setAttribute("user",user);
                        session.setAttribute("status", status.get("status"));
                        session.setAttribute("userId", status.get("userId"));
                        session.setAttribute("userName", status.get("userName"));
                        session.setAttribute("password", status.get("password"));
                        session.setAttribute("userAuthority",status.get("userAuthority"));
                        session.setAttribute("telephone",status.get("telephone"));
                    } else {
                        status.accumulate("status", "-1");
                    }
                    out.print(status.toString());
                } catch (Exception e) {
                    e.printStackTrace();
                }
            } else {
                try {
                    System.out.print("旧的session");
                    status.accumulate("status", session.getAttribute("status"));
                    status.accumulate("userId", session.getAttribute("user"));
                    status.accumulate("userName", session.getAttribute("userName"));
                    status.accumulate("password", session.getAttribute("password"));
                    status.accumulate("userAuthority",session.getAttribute("userAuthority"));
                    status.accumulate("telephone",ret.getString("telephone"));
//                    System.out.print(status.get("username"));
                    out.print(status.toString());
                } catch (Exception e) {
                    e.printStackTrace();
                }
            }
        }
        else if(operation.equals("logOut")){
            System.out.print("进入了logout");
            HttpSession session = request.getSession(false);
            if(session==null){
                return;
            }
            session.invalidate();
            //从定向到index.jsp
            response.sendRedirect("/web/index.jsp");
        }
        else if(operation.equals("signup")){
            HttpSession session = request.getSession(true);
            String sessionID = session.getId();
            JSONObject status = new JSONObject();
            String username = request.getParameter("username");
            String password = request.getParameter("password");
            String telephone = request.getParameter("telephone");
            String userAuthority = "user";

            sql = "INSERT INTO userInfo (username,password,userAuthority,telephone) " +
                    "VALUES ('"+username+"','"+password+"','"+userAuthority
                    +"','" + telephone+"')";
            DBManager db = new DBManager(sql);
            String sql2 = "select * from userInfo";
            DBManager db2 = new DBManager(sql2);
            int lastUserId = 0;

            try{
                ret = db2.pst.executeQuery();


                status.put("duplicate","0");
                while(ret.next()){
                    String existName = ret.getString("username");
                    if(existName.toLowerCase().equals(username.toLowerCase())){
                        status.put("status","-1");
                        status.put("duplicate","1");
                    }
                    lastUserId = ret.getInt("userid");
                }

                if(status.isNull("status")){
                    status.put("status","1");
                    status.put("userAuthority",userAuthority);
                    status.put("userName",username);
                    db.pst.executeUpdate();
                    lastUserId = lastUserId +1;
                    session.setAttribute("status", "1");
                    session.setAttribute("userId", lastUserId);
                    session.setAttribute("userName", username);
                    session.setAttribute("password", password);
                    session.setAttribute("userAuthority",userAuthority);
                    session.setAttribute("telephone",telephone);
                }
                out.print(status.toString());

            }catch (Exception e){
                e.printStackTrace();
            }
        }else if (operation.equals("getAllPost")){

            JSONArray JsonArray = new JSONArray();
            sql = "select * from post";
            System.out.print("进入了angular");
            DBManager db = new DBManager(sql);
            try{

                ret = db.pst.executeQuery();
                List<String> postID = new ArrayList<>();
                List<String> Content = new ArrayList<>();
//                List<String> postID = new ArrayList<>();

                while(ret.next()){
                    JSONObject status = new JSONObject();
//                    postID.add(ret.getString("postID"));
//                    Content.add(ret.getString("Content"));
//                    status.accumulate("PostBy",ret.getString("PostBy"));


                    status.put("postID",ret.getString("postID"));
                    status.put("Content",ret.getString("Content"));
                    JsonArray.put(status);
                }
//                status.accumulate("status","1");
//                status.accumulate("postID",postID);
//                status.accumulate("Content",Content);


//                System.out.print(JsonArray.toString());
                out.print(JsonArray.toString());

//                out.print(status.toString());
            }catch (Exception e){
                e.printStackTrace();
            }
        }else if(operation.equals("getEachComment")){
            String postID = request.getParameter("postID");
            sql = "select * from comment where postID = " + Integer.valueOf(postID);
            DBManager db = new DBManager(sql);
            try{
                JSONObject status = new JSONObject();
                ret = db.pst.executeQuery();
                List<String> commentID = new ArrayList<>();
                List<String> commentBy = new ArrayList<>();
                List<String> comment = new ArrayList<>();
//                List<String> postID = new ArrayList<>();

                while(ret.next()){
                    commentID.add(ret.getString("commentID"));
                    commentBy.add(ret.getString("commentBy"));
                    comment.add(ret.getString("comment"));
                }
                if(commentID.size() == 0)
                    status.accumulate("status","-1");
                else{
                    status.accumulate("status","1");
                    status.accumulate("commentID",commentID);
                    status.accumulate("commentBy",commentBy);
                    status.accumulate("comment",comment);
                }

                out.print(status.toString());
            }catch (Exception e){
                e.printStackTrace();
            }
        }


    }
}

