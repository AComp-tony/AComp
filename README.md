# AComponents
A set of open-source components built using [Riot.js](http://riotjs.com/)

The list of components are as below:-
-  ASideMenu
-  ADialog
- _more to come_

### Getting Started
To use AComp just add the 2 lines of code below to the body of your HTML file

    <script src="https://cdn.jsdelivr.net/riot/2.3/riot.min.js"></script>
    <script src="./dist/acomp.min.js"></script>

### 1. AsideMenu
_**asidemenu**_ is a basic container for the left slide out menu.
You can style your menu header and menu items to your liking and inject into it.

_Options_
- asidemenu_color = the color of asidemenu background. Same as string in CSS to set color.

_Usage_

    <asidemenu asidemenu_color="cyan">
        <yield to="asidemenu_header">
            //your menu header which can include logo
        </yield>
        <yield to="asidemenu_items">
            //your menu items or links
        </yield>
    </asidemenu>

and to show asidemenu just use the show() method like below

    var asidemenu = riot.mount( 'asidemenu' ) ;
    asidemenu[0].show() ;

asidemenu will auto-close when an menu item is clicked or a click on the overlay.

### 2. ADialog
_**adialog**_ is basically a container for a dialog box.
You can style your dialog box header and the body content to your liking and inject into it.

_Options_
- adialog_type = either 0 or 1 ( where 0 is dialog with button YES/NO and 1 is dialog with button OK/CANCEL )
- adialog_color = the color of adialog background. Same as string in CSS to set color.

_Properties_
- selection = 'true' if YES or OK pressed and 'false' if NO or CANCEL pressed

_Usage_

    <adialog adialog_type="0" adialog_color="rgba(255,255,255,0.8)">
        <yield to="adialog_header">
          your dialog header content
        </yield>
        <yield to="adialog_body">
          //your dialog body content
        </yield>
    </adialog>

and to show adialog just use the show() method like below

    var adialog = riot.mount( 'adialog' ) ;
    adialog[0].show();
    
adialog will auto-close when the dialog box buttons are clicked.
