var rootURL = "";
var toggle = false;
var id = 1;
var current_series = "";
var current_book = "";

var series = new Array();
var updated_series = new Array();

var index = 0;

// Gets an json file with all the books
function findAll(){
    $.ajax({
        type: 'GET',
        url:rootURL + "books",
        dataType:"json",
        success: showList
    });
}

// Finds one book based on id
function findOne(){
    $.ajax({
        type: 'GET',
        url:rootURL + "book/" + id,
        dataType:"json",
        success: showOne
    });
}

// Deletes a book based on id
function deleteBook(){
    $.ajax({
        type: 'DELETE',
        url:rootURL + "book/" + id,
        dataType:"json",
        success: findAll
    });
}

//Clears the container where all the information goes
function clear_page(html) {
    $("#container").html("");
    $("#container").load(html);
}

// Edits a page with one book on it
function showOne(data)
{
    current_series = data[0].series;
    current_book = data[0].name;
    $("#book-title").text(data[0].series);
    $('#image-large').attr("src","images/" + data[0].image + "");
    $('#book-header').html(data[0].name + "<br>by&nbsp;" + data[0].author);
    $('#isbn').html("ISBN: " + data[0].ISBN);
    $('#blurb').html(data[0].blurb);
    $('#pov').html("Main Character: " +data[0].pov_character);
    $('#word-count').html("Word Count: " + data[0].word_count);
    $('#pages').html("Pages: " + data[0].pages);
    getSeries(series);
}

// Creates the more from the author or chooses random books for it
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
        // If the series of books is more than 3 show the first books
        if(updated_series.length >= 3)
        {
            $("#image-1").attr("id",updated_series[0].book_id); 
            $("#image-2").attr("id",updated_series[1].book_id); 
            $("#image-3").attr("id",updated_series[2].book_id);

            $("#series-1").attr("src","images/" + updated_series[0].image + ""); 
            $("#series-2").attr("src","images/" + updated_series[1].image + "");  
            $("#series-3").attr("src","images/" + updated_series[2].image + "");
        } 
        // If the book only has 3 or less in the series pick 3 random books
        else
        {
            var random = Math.floor(Math.random() * series.length);
            var random2 = Math.floor(Math.random() * series.length);
            while(random === random2)
            {
                random2 = Math.floor(Math.random() * series.length);
            }
            var random3 = Math.floor(Math.random() * series.length);
            while(random3 === random || random3 == random2)
            {
                random3 = Math.floor(Math.random() * series.length);
            }

            $("#image-1").attr("id",series[random].book_id); 
            $("#image-2").attr("id",series[random2].book_id); 
            $("#image-3").attr("id",series[random3].book_id);

            $("#series-1").attr("src","images/" + series[random].image + ""); 
            $("#series-2").attr("src","images/" + series[random2].image + "");  
            $("#series-3").attr("src","images/" + series[random3].image + "");
        }  
    });
}

// Moves the more from the author right
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

// Moves the more from the author left
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

// Creates the main page with all the books
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

// Creates the profile icon and changes it
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

// Deletes a book and goes back to the main menu
function delete_current() {
    clear_page("gallery.html");
    deleteBook();
}

// Usees the id to generate the Focus page
function getOne(this_id) {
    clear_page("focus.html");
    id = this_id;
    findOne();
}

// Returns home and refreshes the database
function home() {
    clear_page("gallery.html");
    findAll(); 
}

// Generate the datatable
function generateTable() {
    clear_page("table.html");
    $(document).ready(function(){
        $('#dataTable').DataTable();
    });
      
}

// Loads the main page when the DOM is loaded
$(document).ready(function(){
    clear_page("gallery.html");
    findAll();
});
