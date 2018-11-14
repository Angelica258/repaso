$("a").click(function (event){
    if ($(this).data('seleccion') != null){
        console.log($(this).data('seleccion'));
        if ($(this).data('seleccion') === "index"){
            window.location.href = "index.jsp";
        } else {
            $("#recargaInfor").load('paginas/'+$(this).data('seleccion')+'.jsp');
        }
    }
});


