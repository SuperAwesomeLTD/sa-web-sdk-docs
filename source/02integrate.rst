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

The source parameter can contain a number of important elements:

============ ==================================== =========================
Element      Value                                Notes
============ ==================================== =========================
Base URL     https://ads.superawesome.tv/v2/ad.js Required
Placement    placement=31428                      Required
Test         test=true                            Optional
Video        video=true                           Only for videos
Interstitial interstitial=true                    Optional, best for mobile
============ ==================================== =========================

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
