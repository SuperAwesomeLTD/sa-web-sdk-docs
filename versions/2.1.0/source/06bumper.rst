Bumper page
===========

This section will show how to use the bumper element and how to customise it.

The Bumper is an optional UI dialog that informs the user that they are about to leave a kid-safe place and
proceed to an external website.

In technical terms when a user clicks on an ad placement a bumper popup will be presented for a duration of 3 seconds
informing that the user will be redirected to a external source.

SuperAwesome's kid-safe review team will always configure the bumper when:

    * An ad links to a social media site, eg YouTube, Facebook, etc.
    * An ad links to a retailer or online shop

Bumper customisation
^^^^^^^^^^^^^^^^^^^^

It is possible to customise the bumper in following ways:

    1. Add a custom name.
    2. Add a custom logo.
    3. Set a URL path to a custom bumper.


**1. Bumper customisation - custom name.**

In order to override the name on the bumper dialog, please use the following code:

.. code-block:: html

    <head>
        <script src="https://ads.superawesome.tv/v3/bumper_settings"></script>
        <script type="text/javascript">
            WebSDK.bumperSettings.setCompanyName('My App');
        </script>
    </head>


**2. Bumper customisation - custom logo.**

In order to override the logo on the bumper dialog, please use the following code:

    * Please make sure that the resource is stored on a secure server (SSL).
    * Please make sure that that the URL does not contain characters that might be treated as a JS code.
    * The logo should have a transparent background and should not have more than 500px in either dimension.

.. code-block:: html

    <head>
        <script src="https://ads.superawesome.tv/v3/bumper_settings"></script>
        <script type="text/javascript">
            WebSDK.bumperSettings.setCompanyLogo('https://www.mypage.co.uk/myLogo.png');
        </script>
    </head>


**3. Bumper customisation - custom bumper URL.**

It is possible to provide a custom bumper code. To use that functionality, please use the following code:

    * Please make sure that the resource is stored on a secure server (SSL).
    * Please make sure that the URL does not contain characters that might be treated as a JS code.
    * Please make sure that the server returns the resource with the correct 'X-Frame-Options' (instructions can be found below)

.. code-block:: html

    <head>
        <script src="https://ads.superawesome.tv/v3/bumper_settings"></script>
        <script type="text/javascript">
            WebSDK.bumperSettings.setCustomBumper('https://www.mypage.co.uk/bumperPage.html');
        </script>
    </head>

X-Frame-Options
^^^^^^^^^^^^^^^

The custom bumper is embedded in the response from the SuperAwesome domain therefore please make sure that the resource
is returned with header: 'X-Frame-Options', 'ALLOW-FROM https://ads.superawesome.tv/' - this header assures that the
custom bumper is allowed to be embedded.

Example: in Node.js the header can be set using the following line of code:

.. code-block:: javascript

    res.setHeader('X-Frame-Options', 'ALLOW-FROM https://ads.superawesome.tv/');

Forcing the bumper
^^^^^^^^^^^^^^^^^^

Optionally, Publishers can choose for the bumper to always display when an ad is served on a placement.
In order to enable the bumper, please use the following code:

.. code-block:: html

    <head>
        <script src="https://ads.superawesome.tv/v3/bumper_settings"></script>
        <script type="text/javascript">
            WebSDK.bumperSettings.enableBumper();
        </script>
    </head>

The code block above will ensure that the bumper will always be triggered if any of adverts is clicked.
