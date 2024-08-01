<div id="header">
    <div style="float: left;">
        <h1>Product Management</h1>
    </div>
    <div style="float: right">
        <button  class="btn btn-primary btn-sm align-middle" id="addPopupBtn" onclick="openCreatePopup()">Add Product</button>
        <div style="display: none" id="createPopup">
            <%@ include file="product/create.jsp" %>
        </div>
    </div>
</div>
