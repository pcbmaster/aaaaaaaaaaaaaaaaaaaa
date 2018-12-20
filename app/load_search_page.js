var page = new WebPage();
var fs = require('fs');

page.onLoadFinished = function() {
    console.log("page load finished");
    fs.write('assets/search_page.html', page.content, 'w');
    phantom.exit();
};

page.open("https://www.ksl.com/auto/search/index?make[]=BMW&priceTo=7000&zip=84060&miles=100&transmission[]=Manual&drive[]=RWD&page=0&sort=0&perPage=96", function() {
    page.evaluate(function() {
    });
});
