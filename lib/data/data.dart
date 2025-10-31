import 'package:flutter/material.dart';

String apphelp =
    "About this app you'll get all the necessary secret and hidden codes you can perform to know the hidden information's about your mobile phone manufacture, being it devices running on Android, HarmoneyOS and iOS.\n"
    "This application also gives  latest mobile releases at the moment.\n"
    "Tricks and hacks to repair your phone if it malfunctions, are all provided at your convenience";
String appinfo =
    'Secret codes are a set of numeric or alphanumeric combinations that can be used to access hidden features or settings on your smartphone. These codes are often used by manufacturers, developers, or network providers for testing, debugging, or maintenance purposes.'
    'Some common examples of secret codes for smartphones include: '
    '*#06#: This code can be used to get the International Mobile Equipment Identity (IMEI) number of your phone, which is a unique identifier for your device. '
    '##4636##: This code can be used to access the phone information and usage statistics menu, which displays various details about your device, including battery usage, Wi-Fi information, and more. '
    '##7780##: This code can be used to reset your phone to its factory settings. Note that this will erase all your data, so make sure to back up your important files before using this code. '
    '##34971539##: This code can be used to access the camera information menu, which displays various details about your device\'s camera, such as its resolution, sensor size, and more. '
    'There are many secret codes for smartphones. However, it is important to be cautious when using such secret codes, as they may not be reliable or safe. It is always recommended to use the built-in codes provided by your device\'s manufacturer or network provider, or to consult official documentation or support channels for your device.';
List<Map<String, String>> list = [
  {"img": "assets/images/samsung.png", "name": "Samsung"},
  {"img": "assets/images/apple.png", "name": "iPhone"},
  {"img": "assets/images/blackberry.png", "name": "Blackberry"},
  {"img": "assets/images/huawei.png", "name": "Huawei"},
  {"img": "assets/images/infinix.png", "name": "Infinix"},
  {"img": "assets/images/itel.png", "name": "Itel"},
  {"img": "assets/images/moto.png", "name": "Motorola"},
  {"img": "assets/images/nokia.png", "name": "Nokia"},
  {"img": "assets/images/sony.png", "name": "Sony Xperia"},
  {"img": "assets/images/tecno.png", "name": "Tecno"},
  {"img": "assets/images/vivo.png", "name": "Vivo"},
  {"img": "assets/images/oppo.png", "name": "Oppo"}
];

List<String> imgs = ["1.jpg", "2.jpg", "3.jpg", "4.jpg", "5.jpg"];

List<String> menuitems = [
  "Mobile Secret Codes",
  "Mobile Latest Releases",
  "Mobile Tricks",
  /*  */ "Mobile Reviews",
  "Mobile Self Repairs",
];

List<Map<String, String>> codes = [
  {
    "code": "*#*#7780#*#*",
    "desc":
        "Factory restore setting Clear all applications and data. Remove the Google account setting. Remove System, application data, and settings."
  },
  {
    "code": "*2767*3855#",
    "desc":
        "Reinstall the phone’s firmware. It is used for factory format. Remove all files and settings, including internal storage. Reinstall the firmware."
  },
  {
    "code": "*#*#197328640#*#*",
    "desc":
        "Enabling the test mode for service activity. It is used to enter into Service mode. You can run and change various tests and settings in the service mode."
  },
  {
    "code": "*#*#4636#*#*",
    "desc": "Phone basic information.Phone usage detail.Battery information."
  },
  {
    "code": "*#*#34971539#*#*",
    "desc": "Information about mobile cameras. Get camera information. Note"
  },
  {
    "code": "*#*#7594#*#*",
    "desc":
        "Changing the power button behavior. Enables the direct power off without asking for selecting any option (silent mode, Aeroplane, and power off)."
  },
  {
    "code": "*#*#273283*255*663282*#*#*",
    "desc":
        "Create backup to all your media files. Opens file copy screen where you can backup your media files like (images, videos, and audios)."
  },
  {
    "code": "*#*#8255#*#*",
    "desc":
        "For Google Talk service monitoring. Used to launch G Talk Service Monitor."
  },
  {"code": "*2767*4387264636*", "desc": "Used to display product code."},
  {"code": "*#0228#", "desc": "Used to know Battery Status."},
  {"code": "*#12580*369*", "desc": "Software and Hardware Info."},
  {"code": "*#32489#", "desc": "Let you know Ciphering Info."},
  {"code": "*#273283*255*3282*#", "desc": "Data create a menu."},
  {"code": "*#3282*727336*#", "desc": "Data usage status."},
  {"code": "*#8736364#", "desc": "OTA update menu."},
  {"code": "*#*#526#*#*", "desc": "Not defined yet"},
  {"code": "*#*#528#*#*", "desc": "Not defined yet"},
  {"code": "*#*#232339#*#*", "desc": "WLAN Test."},
  {"code": "*#*#232338#*#*", "desc": "Displays/Shows WiFi MAC address."},
  {"code": "*#*#1472365#*#*", "desc": "For a quick GPS test."},
  {"code": "*#*#1575#*#*", "desc": "Different type of GPS tests."},
  {"code": "*#*#232331#*#*", "desc": "Bluetooth test."},
  {"code": "*#*#232337#*#", "desc": "Displays Bluetooth device address."},
  {"code": "*#*#1111#*#", "desc": "Let you know about the FTA SW Version."},
  {"code": "*#*#2222#*#*", "desc": "FTA Hardware Version."},
  {
    "code": "*#*#4986*2650468#*#*",
    "desc": "Firmware Info PDA, Phone, H/W, RFCallDate."
  },
  {"code": "*#*#1234#*#*", "desc": "PDA and Phone firmware info."},
  {"code": "*#2263#", "desc": "RF band selection"},
  {"code": "*#9090#", "desc": "Diagnostic configuration."},
  {"code": "*#7284#", "desc": "USB 12C mode control."},
  {"code": "*#872564#", "desc": "USB logging control."},
  {"code": "*#745#", "desc": "RIL dump menu."},
  {"code": "*#746#", "desc": "Debug dump menu."},
  {"code": "*#9900#", "desc": "System dump mode."},
  {"code": "*#*#44336#*#*", "desc": "Shows Build time changelist number."},
  {"code": "*#03#", "desc": "NAND flash serial number."},
  {"code": "*#3214789#", "desc": "GCF mode status."},
  {"code": "*#*#0283#*#*", "desc": "Packet Loop-back test."},
  {"code": "*#*#0*#*#*", "desc": "LCD test."},
  {"code": "*#*#0673#*#*", "desc": "Not defined yet"},
  {"code": "*#*#0289#*#*", "desc": "Audio/Melody test."},
  {
    "code": "*#*#0842#*#*",
    "desc": "Vibration test and Back Light test Device test."
  },
  {"code": "*#*#2663#*#*", "desc": "Displays the Touch screen version."},
  {"code": "*#*#2664#*#*", "desc": "Touch-Screen test."},
  {"code": "*#*#0588#*#*", "desc": "Proximity sensor test."},
  {"code": "*#*#3264#*#*", "desc": "RAM version."},
  {"code": "*#0782#", "desc": "Real-time clock test."},
  {"code": "*#0589#", "desc": "Light sensor test."},
  {"code": "*#7353#", "desc": "Quick test menu."},
  {"code": "*#*#7262626#*#*", "desc": "Field test."},
  {"code": "*#*#8351#*#*", "desc": "Enables voice dialing logging mode."},
  {"code": "*#*#8350#*#*", "desc": "Disables voice dialing logging mode."},
  {
    "code": "**05***#",
    "desc": "Execute from Emergency dial screen to unlock PUK code."
  },
  {"code": "*#301279#", "desc": "HSDPA HSUPA control menu."},
  {"code": "*#7465625#", "desc": "View phone lock status."},
  {"code": "*#0*#", "desc": "Galaxy S3 service menu."},
  {"code": "##7764726", "desc": "Motorola DROID hidden service menu."},
  {"code": "1809#*990#", "desc": "LG Optimus 2x hidden service menu."},
  {"code": "3845#*920#", "desc": "Lg Optimus 3D hidden service menu."},
  {"code": "#*#4636#*#*", "desc": "Device information program"},
  {"code": "*#*#7262626#*#*", "desc": "Field Test"},
  {"code": "*#*#3424#*#*", "desc": "HTC Function Test Program"},
  {"code": "*#*#1111#*#*", "desc": "Display software version"},
  {"code": "*#*#2222#*#*", "desc": "Display hardware version"},
  {"code": "*#*#232338#*#*", "desc": "Wi-Fi Mac Address"},
  {"code": "*#*#232337#*#", "desc": "Bluetooth Mac Address"},
  {"code": "*#*#1472365#*#*", "desc": "GPS Test"},
  {"code": "*#*#1575#*#*", "desc": "GPS Test 2"},
  {"code": "*#*#232331#*#*", "desc": "Bluetooth test"},
  {"code": "*#*#0*#*#*", "desc": "Display test"},
  {"code": "*#*#2663#*#*", "desc": "Touch Screen version"},
  {"code": "*#*#2664#*#*", "desc": "Touch Screen Test"},
  {"code": "#*#759#*#*", "desc": "Debug UI"},
  {"code": "*2767*3855#", "desc": "Factory format"},
  {"code": "*#*#2846579#*#*", "desc": "Project Menu"},
  {"code": "*#*#2664#*#*", "desc": "Touch screen test"},
  {"code": "*#*#4636#*#*", "desc": "Phone Information, Usage, and Battery"},
  {"code": "*#06#", "desc": "Displays IMEI number"},
  {"code": "*#0*#", "desc": "Enter Service Menu"},
  {"code": "*#*#34971539#*#*", "desc": "Detailed Camera Information"},
  {"code": "*#*#273282*255*663282*#*#*", "desc": "Backup All Media Files"},
  {"code": "*#*#232339#*#*", "desc": "Wireless LAN Test"},
  {"code": "*#*#197328640#*#*", "desc": "Enable Test Mode for Service"},
  {"code": "*#*#0842#*#*", "desc": "Back-light Test"},
  {"code": "*#*#2664#*#*", "desc": "Test the Touchscreen"},
  {"code": "*#*#0842#*#*", "desc": "Vibration Test"},
  {"code": "*#*#1111#*#*", "desc": "FTA Software Version"},
  {"code": "*#12580*369#", "desc": "Complete Software and Hardware Info"},
  {"code": "*#9090#", "desc": "Diagnostic Configuration"},
  {"code": "*#872564#", "desc": "USB Logging Control"},
  {"code": "*#9900#", "desc": "System Dump Mode"},
  {"code": "*#301279#", "desc": "HSDPA/HSUPA Control Menu"},
  {"code": "*#7465625#", "desc": "View Phone Lock Status"},
  {"code": "*#*#232338#*#*", "desc": "Shows WiFi MAC address"},
  {"code": "*#*#1472365#*#*", "desc": "GPS test"},
  {"code": "*#*#232331#*#*", "desc": "Bluetooth test"},
  {"code": "*#0*#", "desc": "Access diagnostics"},
  {"code": "*#011#", "desc": "Network details and serving cell information"},
  {"code": "*#0228#", "desc": "Battery status"},
  {"code": "*#0283#", "desc": "Loopback Test menu"},
  {"code": "*#0808#", "desc": "USB Settings"},
  {"code": "*#1234#", "desc": "Software version/ Model details"},
  {"code": "*#2663#", "desc": "Firmware details (Advanced)"},
  {"code": "*#7353#", "desc": "Quick test menu"},
  {"code": "*#9090#", "desc": "Advanced debugging tools"},
  {"code": "*#9900#", "desc": "SysDump"},
  {"code": "*#2683662#", "desc": "Service mode (Advanced)"},
  {"code": "*#34971539#", "desc": "Camera firmware details"},
  {"code": "*#7780#", "desc": "(Caution!) Factory reset"},
  {"code": "*2767*3855#", "desc": "(Caution!) Full factory reset"},
  {"code": "*#*#7594#*#*", "desc": "Power off the phone"},
  {"code": "*#*#8351#*#*", "desc": "Activate dialer log mode"},
  {"code": "#*#8350#*#*", "desc": "Deactivate dialer log mode"},
  {"code": "*#0228#", "desc": "Battery Status"},
  {"code": "*#273283*255*3282*#", "desc": "Data create menu"},
  {"code": "*#3282*727336*#", "desc": "Data usage status"},
  {"code": "*#8736364#", "desc": "OTA update menu"},
  {"code": "*#2263#", "desc": "RF band selection"},
  {"code": "*#9090#", "desc": "Diagnostic configuration"},
  {"code": "*#7284#", "desc": "USB 12C mode control"},
  {"code": "*#872564#", "desc": "USB logging control"},
  {"code": "*#746#", "desc": "Debug dump menu"},
  {"code": "*#9900#", "desc": "System dump mode"},
  {"code": "*#03#", "desc": "NAND flash serial number"},
  {"code": "*#0782#", "desc": "Real-time clock test"},
  {"code": "*#0589#", "desc": "Light sensor test"},
  {"code": "*#7353#", "desc": "Quick test menu"},
  {
    "code": "*#*#4636#*#*",
    "desc": "Display information about Phone, Battery, and Usage statistics"
  },
  {
    "code": "*#*#7780#*#*",
    "desc": "Factory Reset- (Only deletes app data and apps)"
  },
  {
    "code": "*2767*3855#",
    "desc": "Reinstalls the phones firmware and deletes all your data"
  },
  {"code": "*#*#34971539#*#*", "desc": "Information about the camera"},
  {
    "code": "*#*#7594#*#*",
    "desc": "Makes power button a direct power off once the code enabled"
  },
  {
    "code": "*#*#273283*255*663282*#*#*",
    "desc": "Quick backup to all your media files"
  },
  {
    "code": "*#*#197328640#*#*",
    "desc": "Enabling test mode for service activity"
  },
  {"code": "*#*#232339#*#* OR *#*#526#*#*", "desc": "Wireless Lan Tests"},
  {"code": "*#*#232338#*#*", "desc": "Displays Wi-Fi Mac-address"},
  {"code": "*#*#1472365#*#*", "desc": "For a quick GPS test"},
  {"code": "*#*#1575#*#*", "desc": "A Different type of GPS test"},
  {"code": "*#*#0283#*#*", "desc": "Packet Loopback test"},
  {"code": "*#*#0*#*#*", "desc": "LCD display test"},
  {"code": "*#*#0673#*#* OR *#*#0289#*#*", "desc": "Audio test"},
  {"code": "*#*#0842#*#*", "desc": "Vibration and Backlight test"},
  {"code": "*#*#2663#*#*", "desc": "Displays touch-screen version"},
  {"code": "*#*#2664#*#*", "desc": "Touch-Screen test"},
  {"code": "*#*#0588#*#*", "desc": "Proximity sensor test"},
  {"code": "*#*#3264#*#*", "desc": "Ram version"},
  {"code": "*#*#232331#*#*", "desc": "Bluetooth test"},
  {"code": "*#*#7262626#*#*", "desc": "Field test"},
  {"code": "*#*#232337#*#", "desc": "Displays Bluetooth device address"},
  {"code": "*#*#8255#*#*", "desc": "For Google Talk service monitoring"},
  {
    "code": "*#*#4986*2650468#*#*",
    "desc": "PDA, Phone, Hardware, RF Call Date firmware info"
  },
  {"code": "*#*#1234#*#*", "desc": "PDA and Phone firmware info"},
  {"code": "*#*#1111#*#*", "desc": "FTA Software version"},
  {"code": "*#*#2222#*#*", "desc": "FTA Hardware version"},
  {
    "code": "*#*#44336#*#*",
    "desc": "Displays Build time and change list number"
  },
  {"code": "*#*#8351#*#*", "desc": "Enables voice dialing logging mode"},
  {"code": "*#*#8350#*#*", "desc": "Disables voice dialing logging mode"},
  {"code": "##778", "desc": "(+call) Brings up EPST menu"},
];
List<Map<String, String>> samsung = [
  {"code": "*#9999#", "desc": "Software Version"},
  {"code": "*#06#", "desc": "IMEI Number"},
  {"code": "*#0001#", "desc": "Serial Number"},
  {"code": "*#9998*523#", "desc": "LCD Contrast"},
  {"code": "*#0228# or *#8999*228#", "desc": "Battery Info"},
  {"code": "*#8999*636#", "desc": "Display Storage Capacity"},
  {"code": "*#8999*778#", "desc": "Display SIM Card Information"},
  {"code": "*#8999*782#", "desc": "Show Date And Alarm Clock"},
  {"code": "*#8999*786#", "desc": "The Display During Warning"},
  {"code": "*#8999*837#", "desc": "Samsung Hardware Version"},
  {"code": "*#0523# - *#8999*523#", "desc": "Display Contrast"},
  {"code": "*#8999*638#", "desc": "Show Network Information"},
  {"code": "*#9998*246#", "desc": "Battery Status- Memory Capacity"},
  {"code": "*#8999*324#", "desc": "Debug Screen"},
  {"code": "*#9998*324#", "desc": "Debug Screen"},
  {"code": "*#8999*842#", "desc": "Vibration Test"},
  {"code": "*#9998*842#", "desc": "Vibration Test"},
  {"code": "*#8999*289#", "desc": "Alarm Beeper - Ringtone Test"},
  {"code": "*#9998*289#", "desc": "Alarm Beeper - Ringtone Test"},
  {
    "code": "*#8999*9266#",
    "desc": "Display Received Channel Number And Received Intensity"
  },
  {"code": "*#8999*364#", "desc": "Watchdog ON/OFF"},
  {"code": "*#8999*427#", "desc": "WATCHDOG Signal Route Setup"},
  {
    "code": "*2767*3855#",
    "desc": "Full Reset (Caution every stored data will be deleted.)"
  },
  {"code": "*2767*2878#", "desc": "Custom Reset"},
  {"code": "*2767*927#", "desc": "Wap Reset"},
  {"code": "*2767*226372#", "desc": "Camera Reset (deletes photos)"},
  {"code": "*2767*688#", "desc": "Reset Mobile TV"},
  {"code": "#7263867#", "desc": "RAM Dump (On or Off)"},
  {"code": "#*4773#", "desc": "Incremental Redundancy"},
  {"code": "#*7785#", "desc": "Reset wake-up & RTK Timer Variables"},
  {"code": "#*7200#", "desc": "Tone Generator Mute"},
  {"code": "#*3888#", "desc": "BLUETOOTH Test Mode"},
  {"code": "#*7828#", "desc": "Task Screen"},
  {"code": "#*2562#", "desc": "Restarts Phone"},
  {"code": "#*2565#", "desc": "No Blocking? General Defense."},
  {"code": "#*3353#", "desc": "General Defense, Code Erased."},
  {"code": "#*3837#", "desc": "Phone Hangs on White screen."},
  {"code": "#*3849#", "desc": "Restarts Phone"},
  {"code": "#*7337#", "desc": "Restarts Phone (Resets Wap Settings)"},
  {"code": "#*2886#", "desc": "Auto Answer ON/OFF"},
  {"code": "#*7288#", "desc": "GPRS Detached/Attached"},
  {"code": "#*7287#", "desc": "GPRS Attached"},
  {"code": "#*2077#", "desc": "GPRS Switch"},
  {"code": "#*22671#", "desc": "AMR REC START"},
  {"code": "#*22673#", "desc": "Pause REC"},
  {"code": "#*22674#", "desc": "Resume REC"},
  {"code": "#*22675#", "desc": "AMR Playback"},
  {"code": "#*22676#", "desc": "AMR Stop Play"},
  {"code": "#*22677#", "desc": "Pause Play"},
  {"code": "#*22678#", "desc": "Resume Play"},
  {"code": "#*77261#", "desc": "PCM Rec Req"},
  {"code": "#*77262#", "desc": "Stop PCM Rec"},
  {"code": "#*77263#", "desc": "PCM Playback"},
  {"code": "#*77264#", "desc": "PCM Stop Play"},
  {"code": "#*22679#", "desc": "AMR Get Time"},
  {"code": "#*7666#", "desc": "White Screen"},
  {"code": "#*7693#", "desc": "Sleep Deactivate/Activate"},
  {"code": "#*2286#", "desc": "Data Battery"},
  {"code": "#*2679#", "desc": "Copycat Feature Active/Deactivate"},
  {"code": "#*3940#", "desc": "External Loop-Test 9600 bps"},
  {"code": "#*4263#", "desc": "Hands Free Mode Activate/Deactivate"},
  {"code": "#*2558#", "desc": "Time ON"},
  {"code": "#*3941#", "desc": "External Loop-Test 115200 bps"},
  {"code": "#*5176#", "desc": "L1 Sleep"},
  {"code": "#*7462#", "desc": "SIM Phase"},
  {"code": "#*7983#", "desc": "Voltage/Freq"},
  {"code": "#*7986#", "desc": "Voltage"},
  {"code": "#*8466#", "desc": "Old Time"},
  {"code": "#*2255#", "desc": "Call Failed"},
  {"code": "#*5376#", "desc": "Delete All Sms"},
  {"code": "#*2337#", "desc": "Permanent Registration Beep"},
  {"code": "#*2474#", "desc": "Charging Duration"},
  {"code": "#*2834#", "desc": "Audio Path (Hands-free)"},
  {"code": "#*3270#", "desc": "DCS Support Activate/Deactivate"},
  {"code": "#*3282#", "desc": "Data Activate/Deactivate"},
  {"code": "#*3476#", "desc": "EGSM Activate/Deactivate"},
  {"code": "#*3676#", "desc": "Format Flash Volume"},
  {"code": "#*4760#", "desc": "GSM Activate/Deactivate"},
  {"code": "#*4864#", "desc": "White Screen"},
  {"code": "#*7326#", "desc": "Accessory"},
  {"code": "#*7683#", "desc": "Sleep Variable"},
  {"code": "#*3797#", "desc": "Blinks 3D030300 In RED"},
  {"code": "#*7372#", "desc": "Resetting The Time To DPB Variables"},
  {"code": "*#8999*667#", "desc": "Debug Mode"},
  {"code": "*#92782#", "desc": "Phone Model (Wap)"},
  {"code": "#*5737425#", "desc": "JAVA Mode"},
  {"code": "*#2255#", "desc": "Call List"},
  {"code": "*#232337#", "desc": "Bluetooth MAC Address"},
  {"code": "*#5282837#", "desc": "Java Version"},
  {"code": "*#8999*8376263#", "desc": "All Versions Together"},
  {"code": "*#8999*8378#", "desc": "Test Menu"},
  {"code": "*#4777*8665#", "desc": "GPSR Tool"},
  {"code": "*#8999*523#", "desc": "LCD Brightness"},
  {"code": "*#8999*377#", "desc": "Error LOG Menu"},
  {"code": "*#8999*327#", "desc": "EEP Menu"},
  {"code": "*7465625*228#", "desc": "Active Lock ON"},
  {"code": "#7465625*228#", "desc": "Active Lock OFF"},
  {"code": "*7465625*28638#", "desc": "Auto Network Lock ON"},
  {"code": "#7465625*28638#", "desc": "Auto Network Lock OFF"},
  {"code": "*7465625*28782#", "desc": "Auto Subset Lock ON"},
  {"code": "#7465625*28782#", "desc": "Auto Subset Lock OFF"},
  {"code": "*7465625*2877#", "desc": "Auto SP Lock ON"},
  {"code": "#7465625*2877#", "desc": "Auto SP Lock OFF"},
  {"code": "*7465625*2827#", "desc": "Auto CP Lock ON"},
  {"code": "#7465625*2827#", "desc": "Auto CP Lock OFF"},
  {"code": "*7465625*28746#", "desc": "Auto SIM Lock ON"},
  {"code": "#7465625*28746#", "desc": "Auto SIM Lock OFF"},
  {"code": "*#7465625#", "desc": "Check the phone lock status"},
  {"code": "*7465625*638*Code#", "desc": "Enables Network lock"},
  {"code": "#7465625*638*Code#", "desc": "Disables Network lock"},
  {"code": "*7465625*782*Code#", "desc": "Enables Subset lock"},
  {"code": "#7465625*782*Code#", "desc": "Disables Subset lock"},
  {"code": "*7465625*77*Code#", "desc": "Enables SP lock"},
  {"code": "#7465625*77*Code#", "desc": "Disables SP lock"},
  {"code": "*7465625*27*Code#", "desc": "Enables CP lock"},
  {"code": "#7465625*27*Code#", "desc": "Disables CP lock"},
  {"code": "*7465625*746*Code#", "desc": "Enables SIM lock"},
  {"code": "#7465625*746*Code#", "desc": "Disables SIM lock"},
];
List<Map<String, String>> iphone = [
  {
    "code": "*#06#",
    "desc":
        "It will displays your iPhone IMEI. It is a identifier for your mobile phone hardware."
  },
  {
    "code": "*3001#12345#*",
    "desc":
        "This code opens you field mode which contains all of iPhone inner settings, cell information and newest network."
  },
  {
    "code": "*#67#",
    "desc":
        "You can check the number in order to call forwarding when the iPhone is busy. And again, but for when the iPhone is busy."
  },
  {
    "code": "*646#",
    "desc": "(Postpaid only) It will display you available minutes."
  },
  {"code": "*225#", "desc": "( Postpaid only) To check the Bill Balance."},
  {
    "code": "*777#",
    "desc":
        "To check the Account balance use this code for prepaid iPhone only."
  },
  {
    "code": "*#33#",
    "desc":
        "You can check call control bars by using this code. Also for see whether barring is enabled or disabled for outgoing you can check all the usual suspects like fax, SMS, voice, information, etc."
  },
  {
    "code": "*#76#",
    "desc":
        "For checking connected line presentation is enabled or not you can use this code. like to the calling line presentation you can also check whether the connected line presentation is enabled or disabled."
  },
  {
    "code": "*#21#",
    "desc":
        "You can set inquiry for call forwards. Find the settings for your call forwarding. You will see whether you have fax, SMS, voice, knowledge, sync, async, paid access & packet access call forwarding enabled or disabled."
  },
  {
    "code": "*3282#",
    "desc": "It will let you know about the use of information info."
  },
  {"code": "*#61#", "desc": "To check number of missed calls."},
  {
    "code": "*#62#",
    "desc":
        "You can verifies the number for forwarding calls If there is no service is available."
  },
  {
    "code": "*3370#",
    "desc":
        "EFR mode Enhanced Full Rate improves your iPhone voice quality, but it will slightly reduced battery life."
  },
  {"code": "*#5005*7672#", "desc": "To check SMS center."},
  {
    "code": "*331*",
    "desc":
        "Barring code # Outgoing calls abroad to block the lock code to inquire about her please contact your network operator."
  },
  {"code": "*#43#", "desc": "Call Waiting Status."},
  {"code": "*43#", "desc": "Activate a waiting."},
  {"code": "#43#", "desc": "Deactivate waiting."},
  {"code": "*#31#", "desc": "It allow you hide your number."},
];
List<Map<String, String>> motorola = [
  {"code": "#*22678#", "desc": "Resume Play"},
  {"code": "#*77261#", "desc": "PCM Rec Req"},
  {"code": "#*77262#", "desc": "Stop PCM Rec"},
  {"code": "#*77263#", "desc": "PCM Playback"},
  {"code": "#*77264#", "desc": "PCM Stop Play"},
  {"code": "#*22679#", "desc": "AMR Get Time"},
  {"code": "#*7666#", "desc": "White Screen"},
  {"code": "#*7693#", "desc": "Sleep Deactivate/Activate"},
  {"code": "*#8999*8376263#", "desc": "All Versions Together"},
  {"code": "*#8999*8378#", "desc": "Test Menu"},
  {"code": "*#4777*8665#", "desc": "GPSR Tool"},
  {"code": "*#8999*523#", "desc": "LCD Brightness"},
  {"code": "*#8999*377#", "desc": "Error LOG Menu"},
  {"code": "*#8999*327#", "desc": "EEP Menu"},
  {"code": "*7465625*228#", "desc": "Active Lock ON"},
  {"code": "#7465625*228#", "desc": "Active Lock OFF"},
  {"code": "#*3676#", "desc": "Format Flash Volume"},
  {"code": "#*4760#", "desc": "GSM Activate/Deactivate"},
  {"code": "#*4864#", "desc": "White Screen"},
  {"code": "#*7326#", "desc": "Accessory"},
  {"code": "#*7683#", "desc": "Sleep Variable"},
  {"code": "#*3797#", "desc": "Blinks 3D030300 In RED"},
  {"code": "#*7372#", "desc": "Resetting The Time To DPB Variables"},
  {"code": "*#8999*667#", "desc": "Debug Mode"},
  {"code": "*#92782#", "desc": "Phone Model (Wap)"},
];
List<Map<String, String>> sony = [
  {"code": "#*3676#", "desc": "Format Flash Volume"},
  {"code": "#*4760#", "desc": "GSM Activate/Deactivate"},
  {"code": "#*4864#", "desc": "White Screen"},
  {"code": "#*7326#", "desc": "Accessory"},
  {"code": "#*7683#", "desc": "Sleep Variable"},
  {"code": "#*3797#", "desc": "Blinks 3D030300 In RED"},
  {"code": "#*7372#", "desc": "Resetting The Time To DPB Variables"},
  {"code": "*#8999*667#", "desc": "Debug Mode"},
  {"code": "*#92782#", "desc": "Phone Model (Wap)"},
];
List<Map<String, String>> huawei = [
  {"code": "*#*#2846579#*#*", "desc": "Project Menu"},
  {"code": "*#*#2664#*#*", "desc": "Touch screen test"},
  {"code": "*#*#4636#*#*", "desc": "Phone Information, Usage, and Battery"},
  {"code": "*#06#", "desc": "IMEI Number"},
  {"code": "*#0*#", "desc": "Enter Service Menu"},
  {"code": "*#*#34971539#*#*", "desc": "Detailed Camera Information"},
  {"code": "*#*#273282*255*663282*#*#*", "desc": "Backup All Media Files"},
  {"code": "*#*#232339#*#*", "desc": "Wireless LAN Test"},
  {"code": "*#*#197328640#*#*", "desc": "Enable Test Mode for Service"},
  {"code": "*#*#0842#*#*", "desc": "Back-light Test"},
  {"code": "*#*#2664#*#*", "desc": "Test the Touchscreen"},
  {"code": "*#*#0842#*#*", "desc": "Vibration Test"},
  {"code": "*#*#1111#*#*", "desc": "FTA Software Version"},
  {"code": "*#12580*369#", "desc": "Complete Software and Hardware Info"},
  {"code": "*#9090#", "desc": "Diagnostic Configuration"},
  {"code": "*#872564#", "desc": "USB Logging Control"},
  {"code": "*#9900#", "desc": "System Dump Mode"},
  {"code": "*#301279#", "desc": "HSDPA/HSUPA Control Menu"},
  {"code": "*#7465625#", "desc": "View Phone Lock Status"},
  {"code": "*#*#232338#*#*", "desc": "Shows WiFi MAC address"},
  {"code": "*#*#1472365#*#*", "desc": "GPS test"},
  {"code": "*#*#232331#*#*", "desc": "Bluetooth test"},
];
List<Map<String, String>> infinix = [
  {"code": "*#*#2846579#*#*", "desc": "Project Menu"},
  {"code": "*#*#2664#*#*", "desc": "Touch screen test"},
  {"code": "*#*#4636#*#*", "desc": "Phone Information, Usage, and Battery"},
  {"code": "*#06#", "desc": "IMEI Number"},
  {"code": "*#0*#", "desc": "Enter Service Menu"},
  {"code": "*#*#34971539#*#*", "desc": "Detailed Camera Information"},
  {"code": "*#*#273282*255*663282*#*#*", "desc": "Backup All Media Files"},
  {"code": "*#*#232339#*#*", "desc": "Wireless LAN Test"},
  {"code": "*#*#197328640#*#*", "desc": "Enable Test Mode for Service"},
  {"code": "*#*#0842#*#*", "desc": "Back-light Test"},
  {"code": "*#*#2664#*#*", "desc": "Test the Touchscreen"},
  {"code": "*#*#0842#*#*", "desc": "Vibration Test"},
  {"code": "*#*#1111#*#*", "desc": "FTA Software Version"},
  {"code": "*#12580*369#", "desc": "Complete Software and Hardware Info"},
  {"code": "*#9090#", "desc": "Diagnostic Configuration"},
  {"code": "*#872564#", "desc": "USB Logging Control"},
  {"code": "*#9900#", "desc": "System Dump Mode"},
  {"code": "*#301279#", "desc": "HSDPA/HSUPA Control Menu"},
  {"code": "*#7465625#", "desc": "View Phone Lock Status"},
  {"code": "*#*#232338#*#*", "desc": "Shows WiFi MAC address"},
  {"code": "*#*#1472365#*#*", "desc": "GPS test"},
  {"code": "*#*#232331#*#*", "desc": "Bluetooth test"},
];
List<Map<String, String>> vivo = [
  {"code": "*#8999*778#", "desc": "Display SIM Card Information"},
  {"code": "*#8999*782#", "desc": "Show Date And Alarm Clock"},
  {"code": "*#8999*786#", "desc": "The Display During Warning"},
  {"code": "*#8999*837#", "desc": "Samsung Hardware Version"},
  {"code": "*#0523# - *#8999*523#", "desc": "Display Contrast"},
  {"code": "*#8999*638#", "desc": "Show Network Information"},
  {"code": "*#9998*246#", "desc": "Battery Status- Memory Capacity"},
  {"code": "*#8999*324#", "desc": "Debug Screen"},
  {"code": "*#9998*324#", "desc": "Debug Screen"},
  {"code": "*#8999*842#", "desc": "Vibration Test"},
  {"code": "*#9998*842#", "desc": "Vibration Test"},
  {"code": "*#8999*289#", "desc": "Alarm Beeper - Ringtone Test"},
  {"code": "*#9998*289#", "desc": "Alarm Beeper - Ringtone Test"},
];
List<Map<String, String>> oppo = [
  {"code": "*#7353#", "desc": "Quick test menu"},
  {"code": "*#9090#", "desc": "Advanced debugging tools"},
  {"code": "*#9900#", "desc": "SysDump"},
  {"code": "*#2683662#", "desc": "Service mode (Advanced)"},
  {"code": "*#34971539#", "desc": "Camera firmware details"},
  {"code": "*#7780#", "desc": "(Caution!) Factory reset"},
  {"code": "*2767*3855#", "desc": "(Caution!) Full factory reset"},
  {"code": "*#*#7594#*#*", "desc": "Power off the phone"},
  {"code": "*#*#8351#*#*", "desc": "Activate dialer log mode"},
  {"code": "#*#8350#*#*", "desc": "Deactivate dialer log mode"},
  {"code": "*#0228#", "desc": "Battery Status"},
  {"code": "*#273283*255*3282*#", "desc": "Data create menu"},
  {"code": "*#3282*727336*#", "desc": "Data usage status"},
  {"code": "*#8736364#", "desc": "OTA update menu"},
];
List<Map<String, String>> nokia = [
  {
    "code": "*#06#",
    "desc": "Used for checking IMEI (International Mobile Equipment Identity)."
  },
  {"code": "*#7780#", "desc": "Reset to factory settings."},
  {"code": "*#67705646#", "desc": "This will clear the LCD display"},
  {"code": "*#0000#", "desc": "Used to view software version."},
  {"code": "*#2820#", "desc": "Bluetooth device address."},
  {"code": "#pw+1234567890+1#", "desc": "Shows if SIM has restrictions."},
  {
    "code": "*#92702689#",
    "desc":
        "Takes you to a secret menu where you may find some of the information below"
  },
  {"code": "*#4720#", "desc": "Half Rate Codec activation."},
  {
    "code": "*#4720*",
    "desc":
        "Half Rate Codec deactivation. The phone will automatically restart."
  },
  {
    "code": "#bta0#",
    "desc":
        "Display the Bluetooth MAC address (models with build-in Bluetooth radio, activate first to show address)"
  },
  {
    "code": "*#mac0wlan#",
    "desc": "Display the WLAN MAC address (models with build-in Wi-fi radio)"
  },
  {
    "code": "*#opr0logo#",
    "desc": "Clear the operator logo (3310 and 3330 only)"
  },
  {
    "code": "*#pca0#",
    "desc": "Activate the GPRS PCCCH support (early GPRS models)"
  },
  {
    "code": "*#pcd0#",
    "desc": "Deactivate the GPRS PCCCH support (early GPRS models)"
  },
  {
    "code": "*#res0wallet#",
    "desc": "Reset the mobile wallet (models with mobile wallet)."
  },
  {"code": "*#res0#", "desc": "Soft-format the memory (Symbian models only)"},
  {
    "code": "*#rst0#",
    "desc": "Reset the mobile wallet (models with mobile wallet)."
  },
  {
    "code": "*#res0wallet#",
    "desc": "Reset to factory defaults, confirmation required (DCT4 or newer)"
  },
  {"code": "*#sim0clock#", "desc": "Reset SIM clock"},
  {
    "code": "*#war0anty#",
    "desc":
        "Display the manufacturing and repair info (no exit on DCT3) or total talk time on Symbian models"
  },
  {"code": "*efr0#", "desc": "Enable EFR encoding (pre-2003 models)"},
  {"code": "#efr0#", "desc": "Disable EFR encoding (pre-2003 models)"},
  {
    "code": "*#7370#",
    "desc":
        "Restore the phone to factory default settings. You will loose all your settings, data, etc. This is used to reset the phone to the same state when it was brand new."
  },
  {"code": "#*#2820#", "desc": "Show Bluetooth MAC address."},
  {"code": "#*#62209526#", "desc": "Show Wireless LAN MAC address"},
  {
    "code": "*3370#",
    "desc":
        "Enhanced Full Rate Codec (EFR) activation. It will automatically restart."
  },
  {
    "code": "#3370#",
    "desc":
        "Enhanced Full Rate Codec (EFR) deactivation. It will automatically restart."
  },
  {
    "code": "*4370#",
    "desc": "Half Rate Codec activation. It will automatically restart"
  },
  {
    "code": "#4370#",
    "desc": "Half Rate Codec deactivation. It will automatically restart"
  },
  {
    "code": "*#147#",
    "desc":
        "(Vodafone) this lets you know who called you last *#1471# Last call (Only Vodafone)"
  },
  {
    "code": "*#21#",
    "desc": "Allows you to check the number that “All Calls” are diverted To"
  },
  {"code": "*#2640#", "desc": "Displays security code in US"},
  {"code": "*#30#", "desc": "Lets you see the private number"},
  {
    "code": "*#43#",
    "desc": "Allows you to check the “Call Waiting” status of your phone."
  },
  {
    "code": "*#61#",
    "desc":
        "Allows you to check the number that “On No Reply” calls are diverted to"
  },
  {
    "code": "*#62#",
    "desc":
        "Allows you to check the number that “Divert If Unreachable (no service)” calls are diverted to"
  },
  {
    "code": "*#67#",
    "desc":
        "Allows you to check the number that “On Busy Calls” are diverted to"
  },
  {"code": "*#67705646#", "desc": "Removes operator logo on 3310 & 3330"},
  {"code": "*#73#", "desc": "Reset phone timers and game scores"},
  {
    "code": "*#746025625#",
    "desc":
        "Displays the SIM Clock status, if your phone supports this power saving feature “SIM Clock Stop Allowed”, it means you will get he best standby time possible"
  },
  {"code": "*#7760#", "desc": "Manufactures code."},
  {"code": "*#7780#", "desc": "Restore factory settings."},
  {"code": "*#8110#", "desc": "Software version for the Nokia 8110"},
];
List<Map<String, String>> itel = [
  {"code": "*#8999*778#", "desc": "Display SIM Card Information"},
  {"code": "*#8999*782#", "desc": "Show Date And Alarm Clock"},
  {"code": "*#8999*786#", "desc": "The Display During Warning"},
  {"code": "*#8999*837#", "desc": "Samsung Hardware Version"},
  {"code": "*#0523# - *#8999*523#", "desc": "Display Contrast"},
  {"code": "*#8999*638#", "desc": "Show Network Information"},
  {"code": "*#9998*246#", "desc": "Battery Status- Memory Capacity"},
  {"code": "*#8999*324#", "desc": "Debug Screen"},
  {"code": "*#9998*324#", "desc": "Debug Screen"},
  {"code": "*#8999*842#", "desc": "Vibration Test"},
  {"code": "*#9998*842#", "desc": "Vibration Test"},
  {"code": "*#8999*289#", "desc": "Alarm Beeper - Ringtone Test"},
  {"code": "*#9998*289#", "desc": "Alarm Beeper - Ringtone Test"},
];
List<Map<String, String>> tecno = [
  {"code": "*#7353#", "desc": "Quick test menu"},
  {"code": "*#9090#", "desc": "Advanced debugging tools"},
  {"code": "*#9900#", "desc": "SysDump"},
  {"code": "*#2683662#", "desc": "Service mode (Advanced)"},
  {"code": "*#34971539#", "desc": "Camera firmware details"},
  {"code": "*#7780#", "desc": "(Caution!) Factory reset"},
  {
    "code": "*#*#7594#*#*",
    "desc":
        "Changing the power button behavior. Enables the direct power off without asking for selecting any option (silent mode, Aeroplane, and power off)."
  },
  {
    "code": "*#*#273283*255*663282*#*#*",
    "desc":
        "Create backup to all your media files. Opens file copy screen where you can backup your media files like (images, videos, and audios)."
  },
  {
    "code": "*#*#8255#*#*",
    "desc":
        "For Google Talk service monitoring. Used to launch G Talk Service Monitor."
  },
  {"code": "*2767*4387264636*", "desc": "Used to display product code."},
  {"code": "*#0228#", "desc": "Used to know Battery Status."},
  {"code": "*#12580*369*", "desc": "Software and Hardware Info."},
  {"code": "*#32489#", "desc": "Let you know Ciphering Info."},
  {"code": "*#273283*255*3282*#", "desc": "Data create a menu."},
  {"code": "*#3282*727336*#", "desc": "Data usage status."},
  {"code": "*#8736364#", "desc": "OTA update menu."},
  {"code": "*#*#526#*#*", "desc": "Not defined yet"},
  {"code": "*#*#528#*#*", "desc": "Not defined yet"},
  {"code": "*2767*3855#", "desc": "(Caution!) Full factory reset"},
  {"code": "*#*#7594#*#*", "desc": "Power off the phone"},
  {"code": "*#*#8351#*#*", "desc": "Activate dialer log mode"},
  {"code": "#*#8350#*#*", "desc": "Deactivate dialer log mode"},
  {"code": "*#0228#", "desc": "Battery Status"},
  {"code": "*#273283*255*3282*#", "desc": "Data create menu"},
  {"code": "*#3282*727336*#", "desc": "Data usage status"},
  {"code": "*#8736364#", "desc": "OTA update menu"},
];
List<Map<String, String>> blackberry = [
  {
    "code": "*#*#4636#*#*",
    "desc": "Phone basic information.Phone usage detail.Battery information."
  },
  {
    "code": "*#*#34971539#*#*",
    "desc": "Information about mobile cameras. Get camera information. Note"
  },
  {
    "code": "*#*#7594#*#*",
    "desc":
        "Changing the power button behavior. Enables the direct power off without asking for selecting any option (silent mode, Aeroplane, and power off)."
  },
  {
    "code": "*#*#273283*255*663282*#*#*",
    "desc":
        "Create backup to all your media files. Opens file copy screen where you can backup your media files like (images, videos, and audios)."
  },
  {
    "code": "*#*#8255#*#*",
    "desc":
        "For Google Talk service monitoring. Used to launch G Talk Service Monitor."
  },
  {"code": "*2767*4387264636*", "desc": "Used to display product code."},
  {"code": "*#0228#", "desc": "Used to know Battery Status."},
  {"code": "*#12580*369*", "desc": "Software and Hardware Info."},
  {"code": "*#32489#", "desc": "Let you know Ciphering Info."},
  {"code": "*#273283*255*3282*#", "desc": "Data create a menu."},
  {"code": "*#3282*727336*#", "desc": "Data usage status."},
  {"code": "*#8736364#", "desc": "OTA update menu."},
  {"code": "*#*#526#*#*", "desc": "Not defined yet"},
  {"code": "*#*#528#*#*", "desc": "Not defined yet"},
  {"code": "*#*#232339#*#*", "desc": "WLAN Test."},
  {"code": "*#*#232338#*#*", "desc": "Displays/Shows WiFi MAC address."},
  {"code": "*#*#1472365#*#*", "desc": "For a quick GPS test."},
  {"code": "*#*#1575#*#*", "desc": "Different type of GPS tests."},
  {"code": "*#*#232331#*#*", "desc": "Bluetooth test."},
  {"code": "*#*#232337#*#", "desc": "Displays Bluetooth device address."},
  {"code": "*#*#1111#*#", "desc": "Let you know about the FTA SW Version."},
  {"code": "*#*#2222#*#*", "desc": "FTA Hardware Version."},
];

List<Map<String, dynamic>> menu = [
  {'icon': Icons.list, 'title': "View All Codes"},
  {'icon': Icons.category, 'title': "View by brand"},
  {'icon': Icons.help, 'title': "Get Help"},
  {'icon': Icons.info, 'title': "App Info"},
  {'icon': Icons.thumb_up_rounded, 'title': "Rate our App"},
  {'icon': Icons.share, 'title': "Share App"},
];
//https://www.app-privacy-policy.com/

//privacy https://www.app-privacy-policy.com/live.php?token=UPIjDmh9uxgJcNkhgbumqpZowChPpI1k
//EULA https://www.app-privacy-policy.com/live.php?token=adZWdDWAqIfgJ3ow9X0xolNSRC3trzz0
//Terms and conditions https://www.app-privacy-policy.com/live.php?token=fm6XyqhiJQ2nfG7h1Rbd9Ug776yuQy00

//Is CN=samuel oteng, OU=codeink, O=codeink, L=accra, ST=greater accra, C=gh correct?
//  keytool -genkey -v -keystore c:\Users\SOA\upload-keystore.jks -storetype JKS -keyalg RSA -keysize 2048 -validity 10000 -alias upload
