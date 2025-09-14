#!/usr/bin/env python3

import gi, subprocess, sys
gi.require_version("Gtk", "3.0")
from gi.repository import Gtk

class Installer(Gtk.Window):
    def __init__(self):
        super().__init__(title="Installation Epitech")
        self.set_border_width(10)
        self.set_default_size(200, 100)

        dialog = Gtk.MessageDialog(
            transient_for=self,
            flags=0,
            message_type=Gtk.MessageType.QUESTION,
            buttons=Gtk.ButtonsType.YES_NO,
            text="Voulez-vous installer les utilitaires Epitech ?",
        )
        response = dialog.run()
        dialog.destroy()

        if response == Gtk.ResponseType.YES:
            self.ask_password()
        else:
            self.show_info("Installation annulée.")
            Gtk.main_quit()

    def ask_password(self):
        dialog = Gtk.Dialog(title="Mot de passe requis", transient_for=self, flags=0)
        box = dialog.get_content_area()

        entry = Gtk.Entry()
        entry.set_visibility(False)
        entry.set_invisible_char("•")
        entry.set_placeholder_text("Mot de passe")
        box.add(entry)

        dialog.add_button("OK", Gtk.ResponseType.OK)
        dialog.add_button("Annuler", Gtk.ResponseType.CANCEL)
        dialog.show_all()

        response = dialog.run()
        password = entry.get_text()
        dialog.destroy()

        if response == Gtk.ResponseType.OK and password:
            self.run_install(password)
        else:
            self.show_error("Aucun mot de passe fourni. Installation annulée.")
            Gtk.main_quit()

    def run_install(self, password):
        try:
            cmd = 'wget -O - "https://raw.githubusercontent.com/nogebeat/deb-ubuntu-epitech/main/App-code/src/dumps" | sudo -S bash -s'
            subprocess.run(cmd, input=(password+"\n"), shell=True, check=True)
            self.show_info("✅ Logiciel installé avec succès par Noge Productions.")
        except subprocess.CalledProcessError:
            self.show_error("❌ Erreur lors de l'installation.")
        Gtk.main_quit()

    def show_info(self, message):
        dialog = Gtk.MessageDialog(
            transient_for=self,
            flags=0,
            message_type=Gtk.MessageType.INFO,
            buttons=Gtk.ButtonsType.OK,
            text=message,
        )
        dialog.run()
        dialog.destroy()

    def show_error(self, message):
        dialog = Gtk.MessageDialog(
            transient_for=self,
            flags=0,
            message_type=Gtk.MessageType.ERROR,
            buttons=Gtk.ButtonsType.OK,
            text=message,
        )
        dialog.run()
        dialog.destroy()

if __name__ == "__main__":
    win = Installer()
    Gtk.main()
