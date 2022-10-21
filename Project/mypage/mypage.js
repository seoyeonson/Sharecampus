    const file = document.querySelector("input[type='file']");

    file.addEventListener("change", function(e){
        var reader = new FileReader();
        reader.readAsDataURL(e.target.files[0]);
        reader.onload = function(e){
            let url = e.target.result;

            if(url.includes("image")){
                document.querySelector("label div").style.backgroundImage = "url(" + url +")";
            }else{
                document.querySelector("label div").style.backgroundImage = "url(img/no_image.jpg)";
            }
        }
    });