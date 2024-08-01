function openCreatePopup() {
    const button = document.getElementById('addPopupBtn');
    const popup = document.getElementById('createPopup');
    if (popup.style.display === 'block') {
        popup.style.display = 'none';
        button.innerText = "Add Product";
    } else {
        popup.style.display = 'block';
        button.innerText = "Cancel";
    }
}

function clearSearchForm() {
    document.querySelectorAll('input[id^=searchProduct]').forEach(node => {
        node.value = "";
    })
}