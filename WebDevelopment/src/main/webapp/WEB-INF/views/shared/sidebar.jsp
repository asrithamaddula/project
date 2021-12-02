 <br/>
 <div class="col-md-3" style="background-color: #ECECEC;border-radius: 8px">
<br/>
                <p class="text-left" style="font-size:25px;font-weight:25px;color:black;font-family:Rockwell Condensed">All Categories</p>
              <div class="list-group">
                   <c:forEach items="${categories}" var="category">
                    <a style="font-size:18px" href="${contextRoot}/show/category/${category.id}/products" class="list-group-item">${category.name}</a>
                </c:forEach>
                </div>
            </div>
