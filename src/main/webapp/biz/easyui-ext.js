$.extend($.fn.validatebox.defaults.rules, {
    port: {
        validator: function(value, param){
            return /\d+/.test(value) && value >= param[0] && value < param[1];
        },
        message: '请输入合法的端口（{0}~{1}）'
    }
});