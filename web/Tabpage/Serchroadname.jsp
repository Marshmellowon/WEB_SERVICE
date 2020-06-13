<%--  도로명으로 검색하기--%>

<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="utf-8" %>
<%
    request.setCharacterEncoding("utf-8");
    String gil = (String) request.getAttribute("gil");
    String man = (String) request.getAttribute("man");
    String women = (String) request.getAttribute("women");

    String manlive = (String) session.getAttribute("manlive");
    String womenlive = (String) session.getAttribute("womenlive");

    if (gil == null) {
        gil = "도로명";
        man = "0";
        women = "0";
        manlive = "0";
        womenlive = "0";
    }
%>
<html>
<head>
    <title>WEBSERVICE</title>
    <link rel="stylesheet" href="public/build/tailwind.css">
    <link rel="stylesheet" href="public/build/custom.css">
</head>
<body>
<!--print, input area-->
<section class="flex w-full">
    <nav class="p-1 h-map bg-indigo-400 rounded-lg bg">
        <%--지도 --%>
        <%--구 도로명 선택 --%>
        <section class="justify-center">
            <jsp:include page="../Select/Gu.jsp" flush="false"/>
        </section>
    </nav>
    <%--TODO 선택 form이랑 결과 nav 거리 두기--%>
    <%--TODO 인구관련은 form 밑으로 , 오른쪽에 다른 데이터 넣기--%>

    <!--Input-->
    <nav class="flex justify-center rounded-lg bg-blue-300 w-1/2 p-1">
        <div class="pt-5">
            <div><span id="gilname"><%=gil%>
            </span>의 정보
            </div>
            <br>
            <div>
                남자 직장 인구수 : <%=man%> 명
            </div>
            <br>
            <div>
                여자 직장 인구수 : <%=women%> 명
            </div>
            <br>
            <div>
                남자 상주 인구수 : <%=manlive%> 명
            </div>
            <br>
            <div>
                여자 상주 인구수 : <%=womenlive%> 명
            </div>
        </div>
    </nav>
</section>
</body>
</html>