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

**1. Bumper customisation - custom name.**

In order to override the name on the bumper dialog, please use the following code:

.. code-block:: html

    <head>
        <script src="https://ads.superawesome.tv/v3/bumper_settings"></script>
        <script type="text/javascript">
            WebSDK.bumperSettings.setCompanyName("My App");
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
            WebSDK.bumperSettings.setCompanyLogo("https://www.mypage.co.uk/myLogo.png");
        </script>
    </head>

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

Google DFP tag
^^^^^^^^^^^^^^

In order to make the bumper work with a Google DFP tag, please add the customisation code to the tag as a first request.
As an example, the content of a DFP tag should look like the following:

.. code-block:: html

    <script src="https://ads.superawesome.tv/v3/bumper_settings"></script>
    <script type="text/javascript">
        WebSDK.bumperSettings.enableBumper();
        WebSDK.bumperSettings.setCompanyName("SuperAwesome");
        WebSDK.bumperSettings.setCompanyLogo("https://www.mypage.co.uk/myLogo.png");
    </script>
    <script type="text/javascript" src="https://ads.superawesome.tv/v2/ad.js?placement=XXXX"></script>


VAST request
^^^^^^^^^^^^

It is possible to add the bumper customisation code to the VAST call (e.g. for the external players like Google player).
To achieve it, customisation parameters have to be encoded and added to the URL request.

    1. Download :download:`this parameter generator <download/generator.html>`.
    2. Open the downloaded html file in any browser.
    3. Follow instructions and generate URL parameters.
    4. Paste the generated parameters to the VAST request URL.

Please add the generated string to your VAST call e.g.:

VAST url:

.. code-block:: html

    https://ads.superawesome.tv/v2/ad/XXXX?vast=true

Generated parameters:

.. code-block:: html

    &bumperEnabled=true&companyName=SuperAwesome&companyLogo=default&customBumper=default

Final URL:

.. code-block:: html

    https://ads.superawesome.tv/v2/ad/XXXX?vast=true&bumperEnabled=true&companyName=SuperAwesome&companyLogo=default&customBumper=default


