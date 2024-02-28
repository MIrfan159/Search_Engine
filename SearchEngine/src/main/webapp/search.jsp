<%@page import = "java.util.ArrayList"%>
<%@page import = "com.Accio.SearchResult"%>

<html>
<head>
<link rel = "stylesheet" type = "text/css" href = "styles.css">
</head>
<body>
<h1>Simple Search Engine</h1>
<form action = "Search">
       <input type = "text" name = "keyword"></input>
       <button type = "Submit">Search</button>
</form>
<form action = "History">
       <button type = "Submit">History</button>
</form>
   <table border = 2 class = "resultTable">
       <tr>
           <td>Title</td>
           <td>Link</td>
       </tr>
       <%
           //get result from search servlet
            ArrayList<SearchResult> results = (ArrayList<SearchResult>)request.getAttribute("results");
            //Iterate for every data present in the result array
            for(SearchResult result : results){
        %>
        <tr>
             <td><%out.println(result.getTitle()); %></td>
             <td><a href = "<%out.println(result.getLink()); %>"><%out.println(result.getLink()); %></a></td>
        </tr>
        <%
            }
        %>
   </table>
</body>
</html>