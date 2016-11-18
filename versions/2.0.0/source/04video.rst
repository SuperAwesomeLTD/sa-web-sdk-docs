Video ads
=========

This section will present a list of ways to add a video ad to you webpage.

Placement tags
^^^^^^^^^^^^^^

Video ads can be embedded just as easily as display ads, by either going to the Dashboard and obtaining the Live or Test tag, or adding it manually, as follows:

.. code-block:: html

    <div id="preroll">
        <script type="text/javascript"
                src="https://ads.superawesome.tv/v2/ad.js?placement=30479&video=true&test=true&smallclick=true">
        </script>
    </div>

Notice that video ads **must** have the **video=true** parameter set, otherwise they won't display.

The result is something similar to this:

.. image:: img/IMG_03_Video_1.png

This however will add a video that will expand to fill it's natural size.

Wrapper tags
^^^^^^^^^^^^

If you want to force the video to fit a certain size (ex: a div of 300x200 px to display the video in), you're better
adding a script video wrapper instead:

.. code-block:: html

    <div id="preroll" style="width:300px; height: 200px;">
        <!-- content in the div will be masked by the video -->
    </div>
    <script type="text/javascript"
        src="http://ads.superawesome.tv/v2/adwrapper.js?placement=30479"
        data-test-enabled="true"
        data-post-ad-container="preroll"
        data-has-small-click="true"
        data-is-skippable="true">
    </script>

Notice that the containing div and the script tag are separate.
Also note that the script tag contains some additional parameters:

 * data-test-enabled: can be true or false
 * data-post-ad-container: where the ad should be placed
 * data-has-small-click: whether the whole video surface is clickable, or just a "Find out more" button in the bottom-left part of the screen
 * data-is-skippable: whether video is skippable (only for videos > 30s)

Also note that the source parameter of the script tag must only contain the placement format.

Javascript object
^^^^^^^^^^^^^^^^^

Finally, if you want to add the video as a Javascript object:

.. code-block:: html

    <!-- define a div to display the ad in -->
    <div id="movie" style="width:300px; height:200px "></div>

    <!-- and once the page gets loaded -->
    <script type="text/javascript">

        (function() {

            var mov = document.getElementById("movie");
            var vid = new AwesomeVideo(30479, false, mov, false);
            vid.write();
            vid.onErrorCallback = function () {
              console.log('error callabck');
            }
            vid.onEmptyCallback = function () {
              console.log('empty callabck');
            }
            vid.onFinishedCallback = function () {
              console.log('finished callabck');
            }

        })();

    </script>

The AwesomeVideo function has three parameters:

  * the Id of the placement to be loaded
  * if test is enabled or not
  * the DOM element to render the video to
  * whether the whole video surface is clickable or not

Result
^^^^^^

In both cases the result will be something similar to this:

.. image:: img/IMG_03_Video_2.png

Notice in this case the video did indeed respect the containing div's 300x200px size.
