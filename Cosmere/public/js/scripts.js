var rootURL = "";
var toggle = false;
var id = 1;
var current_series = "";
var current_book = "";

var series = new Array();
var updated_series = new Array();

var index = 0;

function findAll(){
    $.ajax({
        type: 'GET',
        url:rootURL + "books",
        dataType:"json",
        success: showList
    });
}

function findOne(){
    $.ajax({
        type: 'GET',
        url:rootURL + "book/" + id,
        dataType:"json",
        success: showOne
    });
}

function deleteBook(){
    $.ajax({
        type: 'DELETE',
        url:rootURL + "book/" + id,
        dataType:"json",
        success: showList
    });
}

function showOne(data)
{
    current_series = data[0].series;
    current_book = data[0].name;
    $("#book-title").text(data[0].series);
    $('#book-large-image').attr("src","images/" + data[0].image + "");
    $('#book-header').html(data[0].name + "<br>by&nbsp;" + data[0].author);
    $('#isbn').html("ISBN: " + data[0].ISBN);
    $('#blurb').html(data[0].blurb);
    $('#pov').html("Main Character: " +data[0].pov_character);
    $('#word-count').html("Word Count: " + data[0].word_count);
    $('#pages').html("Pages: " + data[0].pages);
    getSeries(series);
}

function getSeries(series) 
{
    jQuery(function(){
        updated_series = [];
        index = 0;
        $.each(series,function(index,book) {
            if(current_series === series[index].series && series[index].name != current_book)
            {
                updated_series.push(series[index]);
            }
        });

        $("#image-1").attr("id",updated_series[0].book_id); 
        $("#image-2").attr("id",updated_series[1].book_id); 
        $("#image-3").attr("id",updated_series[2].book_id);

        $("#series-1").attr("src","images/" + updated_series[0].image + ""); 
        $("#series-2").attr("src","images/" + updated_series[1].image + "");  
        $("#series-3").attr("src","images/" + updated_series[2].image + "");   
    });
}

function moveSeriesRight() {
    jQuery(function(){
        if(index < updated_series.length - 3  && updated_series.length > 3)
        {
            $("#" + updated_series[index + 2].book_id).attr("id",updated_series[index + 3].book_id); 
            $("#" + updated_series[index + 1].book_id).attr("id",updated_series[index + 2].book_id); 
            $("#" + updated_series[index].book_id).attr("id",updated_series[index + 1].book_id);
            $("#series-1").attr("src","images/" + updated_series[index + 1].image + ""); 
            $("#series-2").attr("src","images/" + updated_series[index + 2].image + "");  
            $("#series-3").attr("src","images/" + updated_series[index + 3].image + ""); 
            index = index + 1; 
        }      
    });
}

function moveSeriesLeft() {
    jQuery(function(){
        var flag = false;
        if(index >= 1 && updated_series.length > 3)
        {
            $("#" + updated_series[index + 2].book_id).attr("id",updated_series[index + 1].book_id); 
            $("#" + updated_series[index + 1].book_id).attr("id",updated_series[index].book_id); 
            $("#" + updated_series[index].book_id).attr("id",updated_series[index - 1].book_id); 
            flag = true;  
        }
        if(flag && index >= 1)
        {
            $("#series-1").attr("src","images/" + updated_series[index - 1].image + ""); 
            $("#series-2").attr("src","images/" + updated_series[index].image + "");  
            $("#series-3").attr("src","images/" + updated_series[index + 1].image + "");
            flag = false; 
            index = index - 1;
        } 
    });
}

function showList(data){
    series = [];
    $('#row').append("<div id=\"row\">");
    $.each(data,function(index,book) {
        series.push(book);
        $('#row').append(
        "<button type=\"button\" " + "onclick=\"getOne(this.id)\"" + 
        "id=\"" + book.book_id + "\">" +
        "<div class=\"column\">" + 
        "<img src=\"images/" + book.image + "\">" +
        "</div></button>" );
    });
    $('#row').append("</div>");
}

function profile_menu() {
    if(!toggle)
    {
        $("#change-icon").removeClass("fas fa-chevron-down");
        $("#change-icon").addClass('fas fa-chevron-up');
        toggle = true;
    }
    else
    {
        $("#change-icon").removeClass("fas fa-chevron-up");
        $("#change-icon").addClass('fas fa-chevron-down');
        toggle = false;
    }
}



function getOne(this_id) {
    $("#container").html("");
    $("#container").load("focus_book.html");
    id = this_id;
    findOne();
}

function home() {
    $("#container").html("");
    $("#container").load("gallery.html");
    findAll(); 
}

$(document).ready(function(){
    $("#container").html("");
    $("#container").load("gallery.html");
    findAll();
});
