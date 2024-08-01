<div>
    <form method="get" id="searchForm">
        <input style="display: none" name="action" value="search">
        <table class="table table-borderless">
            <thead>
            <tr>
                <th><label for="searchProductName">Product Name</label></th>
                <th><label for="searchProductPrice">Price</label></th>
                <th><label for="searchProductColor">Color</label></th>
                <th><label for="searchProductCategory">Category</label></th>
                <th><label for="searchFromClear">Clear</label></th>
                <th></th>
            </tr>
            </thead>
            <tbody>
            <tr>
                <td><input id="searchProductName" type="text" name="searchProductName" value="${productName}"></td>
                <td><input id="searchProductPrice" type="text" pattern="[0-9]+" name="searchProductPrice"
                           value="${productPrice}"></td>
                <td><input id="searchProductColor" type="text" name="searchProductColor" value="${productColor}"></td>
                <td><input id="searchProductCategory" type="text" name="searchProductCategory"
                           value="${productCategory}"></td>
                <td><input id="searchFromClear" type="button" value="Reset" onclick="clearSearchForm()"></td>
                <td><input type="submit" value="Search"></td>
            </tr>
            </tbody>
        </table>
    </form>
</div>