<adialog>
    <div class="overlay">
    </div>
    <div class="adialog_modal">
            <yield from="adialog_header"></yield>
            <yield from="adialog_body"></yield>
            <div if={adialog_type==0} class="adialog_btn_group">
                <div class="adialog_btn adialog_btn_yes" data-selection="true" onclick={dismiss}>yes</div>
                <div class="adialog_btn adialog_btn_no" data-selection="false" onclick={dismiss}>no</div>
            </div>
            <div if={adialog_type==1} class="adialog_btn_group">
                <div class="adialog_btn adialog_btn_yes" data-selection="true" onclick={dismiss}>ok</div>
                <div class="adialog_btn adialog_btn_no" data-selection="false" onclick={dismiss}>cancel</div>
            </div>
    </div>

    <script>
        
        show() {
            this.root.firstChild.classList.add('show');
        }
        
        dismiss(evt) {
            this.root.firstChild.classList.remove('show');
            this.selection = evt.target.dataset.selection;
        }
        
        this.on('mount', function(){
            this.root.childNodes[1].style.backgroundColor = this.opts.adialog_color || 'orange' ;
            this.adialog_type = this.opts.adialog_type || 1 ;
            this.update();
        });
        
    </script>
    
    <style scoped>
    .overlay {
        position: fixed;
        top: 0;
        left: 0;
        right: 0;
        bottom: 0;
        background-color: black;
        visibility: hidden;
        opacity: 0;
        transition: all 0.2s ease-out;
    }
    .overlay.show {
        z-index: 999;
        visibility: visible;
        opacity: 0.8;
        transition: all 0.2s ease-in; 
    }
    .overlay.show + .adialog_modal {
        z-index: 1000;
        visibility: visible;
        opacity: 1;
        transform: translateX( -50% ) scale(1);
        transition: all 0.2s ease-in;
    }
    .adialog_modal {
        position: fixed;
        min-width: 380px;
        max-width: 100%;
        height: auto;
        max-height: 80%;
        overflow: auto;
        top: 13%;
        left: 50%;
        padding: 20px;
        transform: translateX( -50% ) scale(0.8);
        visibility: hidden;
        opacity: 0;
        box-shadow: 0 13px 23px;
        transition: all 0.2s ease-out;
    }
    .adialog_btn {
        display: inline;
        width: auto;
        text-align: center;
        background: none;
        border: none;
        text-decoration: none;
        cursor: pointer;
        padding: 6px 13px;
        font-weight: bold;
        text-transform: uppercase;
    }
    .adialog_btn_yes {
        color: blue;
    }
    .adialog_btn_yes:hover {
        background-color: blue;
        color: white;
        transition: all 0.2s linear;
    }
    .adialog_btn_no {
        color: red;
    }
    .adialog_btn_no:hover {
        background-color: red;
        color: white;
        transition: all 0.2s linear;
    }
    .adialog_btn_group {
        text-align: center;
    }
    </style>

</adialog>