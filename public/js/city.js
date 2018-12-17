var cityFn = {
    init: function () {
        this.bindEvent();
        this.hot = true;
    },
    bindEvent: function () {
        var self = this;
        $('.city').on('mouseenter', function () {
            $(this).addClass('current');
        });

        $('.city').on('mouseleave', function () {
            $(this).removeClass('current');
        });

    }

};
$(function () {
    cityFn.init();

    $(".citytab span").mouseover(function () {
        var index = $(this).index(".citytab span");
        $(this).addClass("active").siblings().removeClass("active");
        $($(".citylist")[index]).addClass("active").siblings().removeClass("active");
    });
    $("#citylist .headline a").on("click", function () {

        $("._selected").removeClass("_selected");

        $(this).addClass("_selected");

        app.changecity(this);
    })
})
