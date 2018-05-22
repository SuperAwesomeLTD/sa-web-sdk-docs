Integrate the SDK
=================

This section will present the two main ways in which you can integrate the AwesomeAds Web SDK in your web application or site.

Integrate as placement tags
^^^^^^^^^^^^^^^^^^^^^^^^^^^

In this case ads usually appear embedded alongside other content in your page HTML source, in the form of **placement tags**.

Placement tags are JavaScript **script** tags whose source parameter points to a valid AwesomeAds location from where the ad will be served.

They will always have this format:

.. code-block:: html

    <script type="text/javascript"
            src="https://ads.superawesome.tv/v2/ad.js?placement=31428">
    </script>

The source URL can contain a number of parameters:

====================== ============== ========================== ========================================================================================= ==========================
Parameter              Value          Example                    Description                                                                               Notes
====================== ============== ========================== ========================================================================================= ==========================
placement              Number         placement=31428            Indicates the ID of the placement to be loaded                                            Required
test                   Boolean        test=true                  If set to true, will ignore the placement ID and load the demo ad all the time            Optional
video                  Boolean        video=true                 Should always be set to true for video                                                    Required (for video)
interstitial           Boolean        interstitial=true          Set to true if the creative is going to be displayed as an interstitial                   Optional (best for mobile)
smallclick             Boolean        smallclick=true            When set to true, the video is going to have a small button for the user to click through Optional (for video)
click_tracking_url     String         click_tracking_url=[click] Replace [click] with your ad server click macro, to be able to count clicks               Optional
keywords               String         keywords=key1+key2+key3    Add one ore more keywords to the placement, separated by "+"                              Optional
interstitial (legacy)  Boolean        interstitial=true          Set to true if the creative is going to be displayed as an interstitial                   Optional (best for mobile)
instl                  Integer        instl=1                    Set to 1 (true) or 0 (false) if the creative is going to be displayed as an interstitial  Optional (best for mobile)
playbackmethod         Integer/Array  playbackmethod=2,3         Set playback method/s for video creative (can have multiple values for fallbacks)         Optional (for video)
====================== ============== ========================== ========================================================================================= ==========================

Playback methods:

======== ============================================================================================================
Value    Description
======== ============================================================================================================
1        Auto-play with sound (Blocked in Chrome versions 66 and above)
2        Auto-play muted
3        Play on click (on the play button)
4        Play on mouse hover over the video creative
5        Play with sound when the video creative is visible (Can be blocked by Chrome versions 66 and above)
6        Play muted when the video creative is visible
======== ============================================================================================================

In this scenario ads are added to your web app on page load.

Integrate through Javascript
^^^^^^^^^^^^^^^^^^^^^^^^^^^^

In this case ads are loaded as Javascript objects.
To be able to create them you'll first need to load the AwesomeAds SDK into your page header.

.. code-block:: html

    <html>
    <head>
        <title>My web app</title>

        <!-- load AwesomeAds SDK -->
        <script type="text/javascript" src="https://ads.superawesome.tv/v2/ads.js">
        </script>

        <!-- rest of your header -->
    </head>
    <!-- rest of your web page -->
    </html>

Then, in a Javascript code block you'll need to create an specific ad object:

.. code-block:: html

    <!-- define a div to display the ad in -->
    <div id="ad_area" style="width:728px; height:90px"></div>

    <!-- and once the page gets loaded -->
    <script type="text/javascript">

        (function() {

            var ad = new AwesomeDisplay(31428).test();
            document.getElementById("ad_area").appendChild(ad.element);

        })();

    </script>

In this scenario ads can be created on the push of a button, when an event gets triggered, etc.
