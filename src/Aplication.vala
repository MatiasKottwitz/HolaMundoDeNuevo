/*
 * SPDX-License-Identifier: GPL-3.0-or-later
 * SPDX-FileCopyrightText: 2022 Matias Kottwitz <kottvitz.matias@gmail.com>
 */
 
 public class MyApp : Gtk.Application {
    public MyApp(){
        Object(
            application_id: "https://github.com/MatiasKottwitz/HolaMundoDeNuevo",
            flags: ApplicationFlags.FLAGS_NONE
        );
        
    }
    
    protected override void activate (){
        var button_hello = new Gtk.Button.with_label (_("Aprietame!")){
          margin = 50
        };
        button_hello.clicked.connect (() => {
            button_hello.label = _("Bien! Hola de Nuevo!!");
            button_hello.sensitive = false;
        });
        var label = new Gtk.Label (_("Hola Mundo de nuevo!"));
        var main_window = new Gtk.ApplicationWindow(this){
            default_height = 300,
            default_width = 300,
            title = _("Hola Mundo de nuevo")
        };
        main_window.add (button_hello);
        main_window.add(label);
        main_window.show_all();
    }
    
    public static int main (string[]args){
        return new MyApp().run (args);
    }
    
    
}
