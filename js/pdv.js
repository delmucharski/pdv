$(function(){

    var totalPagar = 0;

    $('#btn-codigo').focus();

    $('#btn-codigo').mask('0000');

    $('#btn-add-produto').click(function(){

        var codigo = $('#btn-codigo').val();

        $.getJSON('/model/carrega-produto.php',{id: codigo},function(res){

            if (res==null){
                //produto não existe
                $('#modal-alerta').modal('show');
                return;
            }
            var li = '<li>'+res.nome+' -- '+res.marca+' -- <span class="produto-preco">'+res.preco+'</span></li>'
            $('#lista-produtos').append(li);

            totalPagar += parseFloat(res.preco);

            $('.total-pagar').html("R$ "+ totalPagar);
            $('#btn-codigo').val('');
        });
    });

    $('.btn-codigo').keydown(function(){
        
        if (ev.keycode==13){
            $('#btn-add-produto').click();
        }
    });

    $('#modal-alerta').on('hidden.bs.modal', function(){
        $('#btn-codigo').focus();
        $('#btn-codigo').val('');
    });

    $('#btn-finalizar').click(function(){
        $('#modal-finalizar').modal('show');
    });

    $(document).keydown(function(ev){
        if (ev.key=='F4'){
            $('#btn-finalizar').click();
        }
    })
});