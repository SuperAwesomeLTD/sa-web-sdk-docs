Interstitial ads
================

This section will present a list of ways to add an interstitial ad to you webpage.

Placement tags
^^^^^^^^^^^^^^

Interstitial ads cover the whole screen and usually display above all other HTML content - thus they are best suited for mobile web pages.

To add an interstitial ad and show it when the page first loads, add it as a placement tag anywhere in your code:

.. code-block:: html

    <script type="text/javascript"
            src="https://ads.superawesome.tv/v2/ad.js?placement=30474&test=true&interstitial=true"></script>


Notice the **interstitial=true** parameter.

Javascript object
^^^^^^^^^^^^^^^^^

If you want to add an interstitial as a Javascript object (and trigger it on the push of a button, for example):

.. code-block:: html

    <script type="text/javascript">

        (function() {

            var inter = new AwesomeInterstitial(30474, true);

        })();

    </script>

Where the AwesomeInterstitial parameters are:

 * the id of the placement
 * whether testing is enabled or not
