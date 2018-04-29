<%@ page import="java.io.*" %>
<%
String str = "print me";
//always give the path from root. This way it almost always works.
String nameOfTextFile = "d://testW.txt";
try { 
  PrintWriter pw = new PrintWriter(new FileOutputStream(nameOfTextFile));
  pw.println(str);
  //clean up
  pw.close();
} catch(IOException e) {
  out.println(e.getMessage());
}
%>