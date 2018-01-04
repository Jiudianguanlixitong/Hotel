$('#Consoletabs a').click(function (e) {
    e.preventDefault();
    $(this).tab('show');
});

function formSubmit(form) {
    $(form).submit()
}

// var url = window.location.href;
// $("ul.nav-tabs > li > a").on("shown.bs.tab", function (e) {
//     var id = $(e.target).attr("hred").substr(1);
//     window.location.hash = id;
// });
//
// var hash = window.location.hash;
// $('#Consoletabs a[href="' + hash + '"]').tab('show');

$('a[data-toggle="tab"]').on('show.bs.tab', function (e) {
    localStorage.setItem('activeTab', $(e.target).attr('href'));
});
var activeTab = localStorage.getItem('activeTab');
if (activeTab) {
    $('#Consoletabs a[href="' + activeTab + '"]').tab('show');
}