var system = require('system');
var args = system.args;
var page = require('webpage').create();

// url
var url = 'http://' + system.args[1];
page.open(url, function (status) {
    
    var links = page.evaluate(function() {
            return [].map.call(document.querySelectorAll('div.post_in'), function(link) {
                        return link.innerText;
                    });
        });
    console.log(links.join('\n'));
    
    phantom.exit();
    }); 
