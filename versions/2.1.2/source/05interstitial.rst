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

Close action
^^^^^^^^^^^^

AwesomeAds Web SDK creates a close button (close image in the corner of the screen) which removes advert and related elements from the document.

This action will also send a cross-domain post message to the top-most window that can be used to trigger custom code or close the main context.
In order to catch the message please implement a receiver on the Window object e.g.:

.. code-block:: html

    <script>
        if (window.addEventListener) {
            window.addEventListener("message", onMessage, false);
        }
        else if (window.attachEvent) {
            window.attachEvent("onmessage", onMessage, false);
        }

        function onMessage(event) {
            if (event.data && event.data.function === 'aa_close_button') {
                console.log('* Received message from SA Web SDK. Interstitial ad has been closed.');
                console.log(event.data);
                // call your methods here e.g. foo();
            }
        }
    </script>

Here is the console output in the Developer Tools in the Chrome browser:

.. image:: img/IMG_05_Console_1.png

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
