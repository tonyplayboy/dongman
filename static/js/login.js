$(function () {
    name_error=false
    pwd_error=false
    $('.name_input').blur(function () {
            if($('.name_input').val().length==0){
                $('.user_error').html('请填写用户名').show();
                name_error = true
            }else {
                $('.user_error').hide()
                name_error=false;
            }
    });
     $('.pass_input').blur(function () {
        if($('.pass_input').val().length==0){
            $('.pwd_error').html('请写密码').show();
            pwd_error = true
        }
        else {
            $('.pwd_error').hide()
            pwd_error=false;
        }
    });

    $(":submit[id=lo]").click(function(){
        if(name_error || pwd_error) {
            return false;
        }

        $.ajax({
            url:'/user/login_handle/',
            data:{
                    csrfmiddlewaretoken: $('input[name="csrfmiddlewaretoken"]').val(),
                    username: $('#username').val(),
                    pwd:$('#pwd').val(),
                    isCheck:$('[name="isCheck"]').val()
                },
            type:'post',
            dataType:'json'
        })
         .done(function(data) {
             if(data.code == 2) {
                    console.log(data);
                     location.href = data.last_url


             }else if(data.code == 1) {
                $('.pwd_error').html('密码错误').show();
             }else if(data.code == 0) {
                 $('.user_error').html('用户名错误').show();
             }
         });
    });
});
