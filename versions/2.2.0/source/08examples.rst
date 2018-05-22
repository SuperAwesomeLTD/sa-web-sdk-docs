Examples
========

.. code-block:: html

    <!doctype html>
    <html>
    <head>
    <title>Web SDK Demo</title>
    <style>
        div#big {
            width: 100%;
            background-color: #efefef;
        }
        div#top_leaderboard {
            width: 728px;
            height: 90px;
            display: table;
            margin: 0 auto;
        }
        div#preroll {
            width: 300px;
            height: 200px;
        }
    </style>
    </head>
    <body>
    <div id="big">
        <div id="top_leaderboard">
            <script type="text/javascript"
                    src="https://ads.superawesome.tv/v2/ad.js?placement=31428&test=true">
            </script>
        </div>
    </div>
    <div>
        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>
        <p>Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?</p>
    </div>
    <div id="preroll">
    </div>
    <script type="text/javascript"
            src="http://ads.superawesome.tv/v2/adwrapper.js?placement=30479"
            data-test-enabled="true"
            data-post-ad-container="preroll">
    </script>
    </body>
    </html>
