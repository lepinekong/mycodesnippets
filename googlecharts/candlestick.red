Red [
    Title: "candlestick.red"
]

Article: [

    Title: {candlestick}

    Source: [
        .title: {ReAdABLE Source [(What is the ReAdABLE Human Format?)](http://readablehumanformat.com)}
        .text: {[http://mycodesnippets.space/googlecharts/candlestick.red](https://github.com/lepinekong/mycodesnippets/blob/master/googlecharts/candlestick.red)
        }
        .Published-Url: http://mycodesnippets.space/googlecharts/candlestick
    ]    
    
    candlestick: [

        .title: {Paste this snippet in red User.Snippets (don’t forget the “,” separator):}
        .code: {
    "googlechart-candlestick": {
        "prefix": "googlechart-candlestick",
        "body": [
            "<html>\r",
            "    <head>\r",
            "        <script type=\"text/javascript\" src=\"https://www.gstatic.com/charts/loader.js\"></script>\r",
            "        <script type=\"text/javascript\">\r",
            "        google.charts.load('current', {'packages':['corechart']});\r",
            "        google.charts.setOnLoadCallback(drawChart);\r",
            "\r",
            "    function drawChart() {\r",
            "        var data = google.visualization.arrayToDataTable([\r",
            "        ['Mon', 20, 28, 38, 45, 0],\r",
            "        ['Tue', 31, 38, 55, 66, 0],\r",
            "        ['Wed', 50, 55, 77, 80, 10],\r",
            "        ['Thu', 77, 77, 66, 50, 10],\r",
            "        ['Fri', 68, 66, 22, 15, 10]\r",
            "        // Treat first row as data as well.\r",
            "        ], true);\r",
            "\r",
            "        var options = {\r",
            "        legend:'none',\r",
            "        series: {\r",
            "            1: {\r",
            "                type: 'line'\r",
            "            }\r",
            "    }    \r",
            "        };\r",
            "\r",
            "        var chart = new google.visualization.CandlestickChart(document.getElementById('chart_div'));\r",
            "\r",
            "        chart.draw(data, options);\r",
            "    }\r",
            "        </script>\r",
            "    </head>\r",
            "    <body>\r",
            "        <div id=\"chart_div\" style=\"width: 100%; height: 500px;\"></div>\r",
            "    </body>\r",
            "</html> "
        ],
        "description": "googlechart-candlestick"
    }
        }
        .title: {If you need to recreate it with Easy Snippet, start with this snippet (don’t forget to add $ in front of variables):}
        .code: {
<html>
    <head>
        <script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
        <script type="text/javascript">
        google.charts.load('current', {'packages':['corechart']});
        google.charts.setOnLoadCallback(drawChart);

    function drawChart() {
        var data = google.visualization.arrayToDataTable([
        ['Mon', 20, 28, 38, 45, 0],
        ['Tue', 31, 38, 55, 66, 0],
        ['Wed', 50, 55, 77, 80, 10],
        ['Thu', 77, 77, 66, 50, 10],
        ['Fri', 68, 66, 22, 15, 10]
        // Treat first row as data as well.
        ], true);

        var options = {
        legend:'none',
        series: {
            1: {
                type: 'line'
            }
    }    
        };

        var chart = new google.visualization.CandlestickChart(document.getElementById('chart_div'));

        chart.draw(data, options);
    }
        </script>
    </head>
    <body>
        <div id="chart_div" style="width: 100%; height: 500px;"></div>
    </body>
</html>            
        }
    ]
]

do read http://readablehumanformat.com/lib.red
markdown-gen 
