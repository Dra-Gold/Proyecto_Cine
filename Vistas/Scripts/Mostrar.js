function showimagepreview(input) {

    if (input.files && input.files[0]) {
        var reader = new FileReader();
        reader.onload = function (e) {

            document.getElementsByTagName("img")[0].setAttribute("src", e.target.result);

        }
        reader.readAsDataURL(input.files[0]);
    }
}