var strings;
 $(".numBtn").click(function(){
    function getstr(len){
        var template = '';//将所有可选的字符存储起来
        for(var i = 65;i < 65 + 26; i++)
        {
            template += String.fromCharCode(i); //A~Z对应的Unicode码
        }
        for(var i = 97; i < 97 + 26; i++)
        {
            template += String.fromCharCode(i); //a~z
        }
        for(var i = 48; i < 48 + 10; i++)
        {
            template += String.fromCharCode(i); //0~9
        }
        var result = "";
        for(var i = 0; i < len; i++)
        {
            var index = getnumber(0, template.length - 1); //随机获取一个下标
            result += template[index];
        }
        return result;
    }
    function getnumber(min, max){
        return Math.floor((Math.random() * (max - min +1) + min));
    }
    strings = getstr(4); //获取一个4位数
    // 显示验证码的文本框并填充验证码
    $("#numberCode").css("display","inline").text(strings);
})