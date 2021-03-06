<%@ page import="java.util.ArrayList" %>

<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>

<%
    request.setCharacterEncoding("utf-8");
    /*API 연동한 servlet에서 선택한 구에 속한 도로명을 받아온다.*/
    ArrayList<String> name = (ArrayList<String>) session.getAttribute("cdname");

    /*데이터 최대 1000개*/
    int size = 1000;
    /*받아온 도로명 넣을 배열 생성*/
    String[] st = new String[size];

    /*초기 페이지 로딩시 도로명은 null이다.*/
    /*null이면 ArrayList에서 도로명을 가져온다.*/
    if (name != null) {
        for (int i = 0; i < size; i++) {
            st[i] = name.get(i);
            if (name.size() == i + 1) {
                size = i + 1;
                break;
            }
        }
    } else {
        System.out.println("정상동작");
    }
%>
<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="stylesheet" href="public/build/tailwind.css">
</head>
<body>
<nav class="p-2">
    <%--구 도로명 선택 --%>
    <form class="flex" action="RQ" method="post" name="Guselect">
        <div class="flex-1 bg-green-300 rounded-lg">
            <p>구 선택</p>
            <%--구를 선택하면 즉시 API servlet에 선택한 구가 전송된다.--%>
            <select class="rounded-lg border-solid border-2" name="Guselect" onchange="this.form.submit()">
                <option>구 선택</option>
                <option value="11110">종로구</option>
                <option value="11140">중구</option>
                <option value="11170">용산구</option>
                <option value="11200">성동구</option>
                <option value="11230">동대문구</option>
                <option value="11620">관악구</option>
                <option value="11680">강남구</option>
                <option value="11500">강서구</option>
                <option value="11545">금천구</option>
                <option value="11380">은평구</option>
                <option value="11710">송파구</option>
                <option value="11590">동작구</option>
                <option value="11560">영등포구</option>
                <option value="11530">구로구</option>
                <option value="11470">양천구</option>
                <option value="11650">서초구</option>
                <option value="11305">강북구</option>
                <option value="11320">도봉구</option>
                <option value="11290">성북구</option>
                <option value="11215">광진구</option>
                <option value="11260">중랑구</option>
                <option value="11440">마포구</option>
                <option value="11740">강동구</option>
                <option value="11410">서대문구</option>
                <option value="11350">노원구</option>
            </select>
        </div>
        <div class="flex-1 rounded-lg bg-green-300">
            <p>도로명 선택</p>
            <input class="border-solid border-2 rounded-lg" list="gil" name="gil">
            <datalist id="gil">
                <%
                    if (st[0] == null) {
                %>
                <option></option>
                <%
                } else {
                %>
                <%
                    for (int i = 0; i < size; i++) {
                %>
                <%--option태그에 도로명을 하나씩 지정한다.--%>
                <option><%=st[i]%>
                </option>

                <%
                    }
                %>
                <%}%>
            </datalist>
        </div>
        <input class="border-2 bg-white border-yellow-500 hover:bg-blue-500 hover:text-white rounded-lg"
               type="submit"
               value="전송"
               name="submitbtn">
    </form>
</nav>
</body>
</html>