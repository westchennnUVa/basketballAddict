package httpManager;

import database.DBManager;
import org.json.JSONArray;
import org.json.JSONObject;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.ResultSet;
import java.sql.ResultSetMetaData;
import java.util.ArrayList;
import java.util.List;

/**
 * Created by Westchennn on 4/29/18.
 */
public class comment extends HttpServlet {

    private static ResultSet ret = null;
    private ResultSetMetaData rsmd = null;

    public comment() {
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
        JSONArray JsonArray = new JSONArray();
        String sql = "select * from post";
        System.out.print("进入了angular");
        DBManager db = new DBManager(sql);

        StringBuffer json = new StringBuffer();
        String line = null;
        try{

            BufferedReader reader = request.getReader();
            while((line = reader.readLine()) != null) {
                json.append(line);
            }

            String jsonStr = (json.toString());

            System.out.println(jsonStr+"testestetstes");
            ret = db.pst.executeQuery();
            List<String> postID = new ArrayList<>();
            List<String> Content = new ArrayList<>();
            List<JSONObject> newJsonArray = new ArrayList<>();
//                List<String> postID = new ArrayList<>();
            int count = 0;

            rsmd = ret.getMetaData();
            int columnCount = rsmd.getColumnCount();



            while(ret.next()){
                JSONObject jsonObject = new JSONObject();


                for(int i=1;i<=columnCount;i++){
                    String columnName = rsmd.getColumnName(i);
                    String value = ret.getString(columnName);
                    jsonObject.put(columnName,value);
                }
                JsonArray.put(jsonObject);
//                status.put("postID",ret.getString("postID"));
//                status.put("Content",ret.getString("Content"));
//                JsonArray.put(count,status);
//                newJsonArray.add(status);
//                System.out.println(count+JsonArray.toString());
            }

            System.out.print("测试"+JsonArray.toString());


//            System.out.print(newJsonArray.toString());

            out.print(JsonArray.toString());

        }catch (Exception e){
            e.printStackTrace();
        }
    }
}
