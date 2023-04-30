<%@page import="com.techblog.entities.User"%>
<%@page import="com.techblog.dao.LikeDao"%>
<%@page import="java.util.List"%>
<%@page import="com.techblog.entities.Post"%>
<%@page import="com.techblog.helper.ConnectionProvider"%>
<%@page import="com.techblog.dao.PostDao"%>
<script src="js/myjs.js" type="text/javascript"></script>
<div class="row">
    <%
        User usr=(User)session.getAttribute("currentUser");
        
        PostDao d = new PostDao(ConnectionProvider.getConnection());
        int cid = Integer.parseInt(request.getParameter("cid"));
        List<Post> posts = null;
        if (cid == 0) {
            posts = d.getAllPosts();
        } else {
            posts = d.getPostByCatId(cid);
        }
        if (posts.size() == 0) {
            out.println("<h4 class='display-3 text-center'>No posts in this category..</h4>");
            return;
        }
        for (Post p : posts) {
    %>
    <div class="col-md-6 mt-2">
        <div class="card">
            <img class="card-img-top" src="blog_pics/<%=p.getpPic()%>" alt="Card image cap">
            <div class="card-body">
                <b><%=p.getpTitle()%><b>
                        <p><%=p.getpContent()%><p>
                      
        </div>
                        <div class="card-footer bg-dark text-center">
                            <%
                            LikeDao ld=new LikeDao(ConnectionProvider.getConnection());
                            %>
                           
                            <a href="show_blog_page.jsp?post_id=<%= p.getPid() %>" class="btn btn-outline-light btn-sm">Read More.</a>
                            
                           
                        </div>
    </div>
</div>

                                <%
                                    }
                                %>
</div>