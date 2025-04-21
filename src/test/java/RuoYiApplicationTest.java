//
//import com.ruoyi.RuoYiApplication;
//import com.ruoyi.project.tool.gen.domain.GenTable;
//import com.ruoyi.project.tool.gen.mapper.GenTableMapper;
//import org.apache.commons.io.FileUtils;
//import org.junit.runner.RunWith;
//import org.springframework.beans.factory.annotation.Autowired;
//import org.springframework.boot.test.context.SpringBootTest;
//import org.springframework.test.context.ActiveProfiles;
//import org.springframework.test.context.junit4.SpringRunner;
//
//import java.io.File;
//import java.io.IOException;
//
//@RunWith(SpringRunner.class)
//@SpringBootTest(classes = RuoYiApplication.class)
//@ActiveProfiles("test") // 激活 test 环境
//public class RuoYiApplicationTest {
//
//    @Autowired
//    private GenTableMapper genTableMapper;
//
//
//    @org.junit.Test
//    public void get1() throws IOException {
//        String tableNames = "";
//        GenTable genTable = new GenTable();
//        genTable.setUserTab("1");
//        for (GenTable table : genTableMapper.selectGenTableList(genTable)) {
//            tableNames += ",\""+table.getTableName() + "\"";
//        }
//        // 获取当前工作目录
//        String currentDir = System.getProperty("user.dir");
//        File file = new File(currentDir);
//        File parentFile = file.getParentFile();
//        File houduanFileParent = new File(parentFile.getAbsolutePath()+"/RuoYi-Tunma-Backend");
//        File houtaiFileParent = new File(parentFile.getAbsolutePath()+"/RuoYi-Tunma-Frontend");
//        File qiantaiFileParent = new File(parentFile.getAbsolutePath()+"/Tunma-reception");
//        //java tool
//        FileUtils.deleteDirectory(new File(houduanFileParent.getAbsolutePath() + "/src/main/java/com/ruoyi/project/tool"));
//        //resources tool
//        FileUtils.deleteDirectory(new File(houduanFileParent.getAbsolutePath() + "/src/main/resources/mybatis/tool"));
//        //vm 模板文件
//        FileUtils.deleteDirectory(new File(houduanFileParent.getAbsolutePath() + "/src/main/resources/vm"));
//
//        //vue 文件
//        FileUtils.deleteDirectory(new File(houtaiFileParent.getAbsolutePath() + "/src/views/tool"));
//        //api 文件
//        FileUtils.deleteDirectory(new File(houtaiFileParent.getAbsolutePath() + "/src/api/tool"));
//        //删除后台编译文件
////        FileUtils.deleteDirectory(new File(houtaiFileParent.getAbsolutePath() + "/node_modules"));
////        //删除前台编译文件
////        FileUtils.deleteDirectory(new File(qiantaiFileParent.getAbsolutePath() + "/node_modules"));
//        //覆盖路由文件
//        FileUtils.copyFile(new File("D:\\Desktop\\若依通用sql\\index.js"), new File(houtaiFileParent.getAbsolutePath() + "/src/router/index.js"));
//        //覆盖UserSql文件
//        String userSqlText = FileUtils.readFileToString(new File("D:\\Desktop\\若依通用sql\\UserSql.java"), "UTF-8");
//        userSqlText=userSqlText.replaceAll("tunma", "Arrays.asList(\"sys_user\"" +tableNames+")");
//        FileUtils.writeStringToFile(new File(houduanFileParent.getAbsolutePath() + "/src/main/java/com/ruoyi/common/sql/UserSql.java"), userSqlText, "UTF-8");
//        //删除后端编译文件
////        FileUtils.deleteDirectory(new File(houduanFileParent.getAbsolutePath() + "/target"));
//    }
//}
