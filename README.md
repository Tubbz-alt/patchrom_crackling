# MIUI8_patchrom_crackling
## Device configuration for Wileyfox Swift

## Spec Sheet

| Feature                 | Specification                     |
| :---------------------- | :-------------------------------- |
| CPU                     | Quad-core 1.2 GHz ARM® Cortex™ A53|
| Chipset                 | Qualcomm MSM8916 Snapdragon 410   |
| GPU                     | Adreno 306                        |
| Memory                  | 2 GB                              |
| Shipped Android Version | 5.1.1                             |
| Storage                 | 16 GB                             |
| MicroSD                 | Up to 128 GB                      |
| Battery                 | 2500 mAh (removable)              |
| Dimensions              | 71 x 141,15 x 9,36 mm             |
| Display                 | 720 x 1280 pixels, 5.0" IPS LCD   |
| Rear Camera             | 13 MP, LED flash                  |
| Front Camera            | 5 MP                              |

## Device Picture

![Wileyfox Swift](http://s.4pda.to/YstumqO2cI57cw7o9jBDUMREsvGDbWqz0jTna7xTz2z1jqJHnONSI.jpg "Wileyfox Swift")

Project MIUI 8 Patchrom for Wileyfox Swift
===========

Get Android SDK
----------------

In order to build patchrom project, you must have android sdk installed.(http://developer.android.com/sdk/installing.html)

And add the sdk tools and platform-tools to PATH.

$ vim .bashrc

$ export PATH=$PATH:/home/xxx/android-sdk/tools:/home/xxx/anroid-sdk/platform-tools

Getting Started
---------------

To get started with MiCode/patchrom, you'll need to get
familiar with [Git and Repo](http://source.android.com/download/using-repo).

To initialize your local repository using the patchrom trees, use a command like this:

$ mkdir patchrom

$ cd patchrom

$ repo init -u git://github.com/MiCode/patchrom.git -b marshmallow

Then to sync up:

$ repo sync

$ git clone git@github.com:Wileyfox-Swift-MIUI/patchrom_crackling.git -b marshmallow-pro crackling

Build
--------
$ . build/envsetup.sh && cd crackling

$ make fullota

And then look at out/fullota.zip,it is the MIUI ROM

Now you can get your own miui ROM, enjoy it!

<b> Thank to </b>
- @Micode Miui Rom
- @LineageOS
- @GriefNorth
- @vlw
