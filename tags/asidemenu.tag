<asidemenu>

    <div class="asidemenu_overlay" onclick={dismiss}>
    </div>
    <div class="asidemenu_content" onclick={linkaction}>
        <yield from="asidemenu_header"></yield>
        <yield from="asidemenu_items"></yield>
    </div>
    
    <script>
        show() {
            this.root.firstChild.classList.add('show');
        }
        dismiss(evt) {
            this.root.firstChild.classList.remove('show');
        }
        linkaction(evt) {
            if ( evt.target !== event.currentTarget ) {
                this.root.firstChild.classList.remove('show');
                return true;
            }
        }
        
        this.on('mount', function(){
            this.root.childNodes[1].style.backgroundColor = this.opts.asidemenu_color || 'orange' ;
        });
    </script>
    
    <style scoped>
        .asidemenu_overlay {
            position: fixed;
            top: 0;
            left: 0;
            width: 100%;
            height: 100vh;
            visibility: hidden;
            opacity: 0;
            background-color: black;
            transition: all 0.3s ease-in-out;
        }
        .asidemenu_content {
            position: fixed;
            top: 0;
            left: -100%;
            width: auto;
            max-width: 100%;
            height: 100vh;
            background-color: orange;
            padding: 30px 60px;
            overflow: auto;
            box-shadow: 0 13px 23px;
            transition: all 0.3s ease-in-out;
        }
        .asidemenu_overlay.show {
            z-index: 999;
            visibility: visible;
            opacity: 0.8;
            transition: all 0.3s ease-in-out;
        }
        .asidemenu_overlay.show + .asidemenu_content {
            z-index: 999;
            left: 0;
            transition: all 0.3s ease-in-out;
        }
        
    </style>


</asidemenu>