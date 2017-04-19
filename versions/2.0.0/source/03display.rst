Display ads
===========

This section will present a list of ways to add a display ad (leaderboard, skinny skyscraper, MPU) to you webpage.

Placement tags
^^^^^^^^^^^^^^

The simplest way get a hold of the relevant display ad is to head over to your Dashboard, select the placement you want to add and click on the
button marked **Get Placement Tags**.

 .. image:: img/IMG_02_Display_1.png

Then click on either the **Live Tag** or **Test Tag** buttons to copy the tag.

 * Live tags should be added only when you have a live campaign running on your placements; otherwise nothing will display
 * Test tags will always show a SuperAwesome test image corresponding to the type of placement chosen

.. image:: img/IMG_02_Display_2.png

After that you can add the copied tag in any part of your web app:

.. code-block:: html

    <div id="top_leaderboard">
        <script type="text/javascript"
                src="https://ads.superawesome.tv/v2/ad.js?placement=31428&test=true">
        </script>
    </div>

Notice the tag you copied from the dashboard is identical to the one presented in the **Integrate the SDK** chapter.
The dashboard is just a convenient way of obtaining the correct, right code for your app, without much hassle.

Javascript object
^^^^^^^^^^^^^^^^^

If you want to create the ad as a Javascript object, you'll need to first add the AwesomeAds SDK into your header (as presented in
the **Integrate the SDK** chapter), then:

.. code-block:: html

    <!-- define a div to display the ad in -->
    <div id="top_leaderboard" style="width:728px; height:90px"></div>

    <!-- and once the page gets loaded -->
    <script type="text/javascript">
        (function() {

						// parent element
						var el = document.getElementById("top_leaaderboard")

						// create a new AwesomeDisplay object
            var ad = new AwesomeDisplay(31428).test();

						// add callbacks
						ad.onEmpty (function() {
							console.log('empty callback')
						})

						// append element
            el.appendChild(ad.element);

        })();
    </script>

Result
^^^^^^

In both cases the result will be an ad showing on your page, similar to this:

.. image:: img/IMG_02_Display_3.png
