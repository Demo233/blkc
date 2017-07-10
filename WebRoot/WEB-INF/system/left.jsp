<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    
   <title>无标题文档</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/css/frame.css">
	<script type="text/jscript" language="JavaScript" src="${pageContext.request.contextPath }/js/qq_hidemenu.js"></script>

	<SCRIPT language=JavaScript>
function  Content(){
parent.main.location="${pageContext.request.contextPath }/system/f_main.action";
}
function goto1(surl){
	document.idFrmMain.action = surl;
	document.idFrmMain.target = "right";
	document.idFrmMain.submit();
}
</SCRIPT>

  </head>
  
  <body   nLoad="widgets.ToggleWidget(hideTop1);widgets.ToggleWidget(hideTop2);widgets.ToggleWidget(hideTop3)"> 
<FORM NAME="idFrmMain" ID="idFrmMain" METHOD="POST"  ACTION="" ONSUBMIT="return false"> 
  <table width="180" height="100%"  border="0" cellpadding="0" cellspacing="0"> 
    <tr> 
      <td valign="top" class="left"><table width="98%"  border="0" align="center" cellpadding="0" cellspacing="0"> 
          <tr>
            <td  height="9"></td> 
          </tr> 
          <tr> 
            <td > <table width="100%" cellspacing="0" cellpadding="0" border="0"> 
                <tr> 
                  <td  class="left1"> <a id="exp52" title="折叠" href="javascript:widgets.ToggleWidget(hideTop1);" ><img id="exp5" alt="折叠" src="${pageContext.request.contextPath }/image/qq_minimize.gif"  border="0"></a> &nbsp;&nbsp;&nbsp;&nbsp;<a id="exp51" title="折叠" href="javascript:widgets.ToggleWidget(hideTop1);">系统管理</a></td> 
                </tr> 
              </table></td> 
          </tr> 
          <tr> 
            <td class="left2" > <div id="hideTop1"  img="exp5" openAlt="折叠" closedAlt="展开"> 
                <table width="100%"  border="0" cellspacing="1" cellpadding="0"> 
                  <c:if test="${sessionScope.user.userLogin == 'admin' }"> 
	                  <tr> 
	                    <td><div align="right"><img src="${pageContext.request.contextPath }/image/dot1.gif" width="13" height="16"></div></td> 
	                    <td>
	                    	<a href="#" onClick="goto1('${pageContext.request.contextPath}/user/user_findAllUser.action');">用户管理</a>
	                    </td> 
	                  </tr>
                  </c:if> 
				  <tr> 
                    <td><div align="right"><img src="${pageContext.request.contextPath }/image/dot1.gif" width="13" height="16"></div></td> 
                    <td><a href="#" onClick="goto1('${pageContext.request.contextPath}/bl/bl_blList.action');">库存管理</a></td> 
                  </tr>                 
				   <tr> 
                   <%--  <td><div align="right"><img src="${pageContext.request.contextPath }/image/dot1.gif" width="13" height="16"></div></td> --%> 
                    <%-- <td><a href="#" onClick="goto1('${pageContext.request.contextPath}/ck/ck_ckList.action');">仓库</a></td>  --%>
                   <!--  <td><a href="#">仓库</a></td>  -->
                  </tr>  
                  <tr> 
                    <td colspan="2"  height="10"></td> 
                  </tr> 
                </table> 
              </div></td> 
          </tr> 
		  
		  
		  <!--需要修改4个id和两个div的id--> 
          <tr> 
            <td height="8"></td> 
          </tr> 
         
          <tr> 
            <td height="8"></t d> 
          </tr> 
          <tr> 
            <td>&nbsp;</td> 
          </tr> 
        </table></td> 
    </tr> 
  </table> 
</form> 
</body>
</html>



