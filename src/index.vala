/*
 * Licencia Publica GNU
 *Autor: Gabriel Vargas Monroy - Sebastian Mora
*/

using GLib;
using Gtk;
using Gui;
using Lib;
using Ctrl;

class inicio : Object
{
	public static int main (string[] args)
	{
		Gtk.init(ref args);

		var lib=new Convert();
		var frm=new Gui.Principal();
		var ctrl=new Ctrl.Principal(frm,lib);
		frm.GetEve(ctrl);
		
		frm.show_all();
		Gtk.main();
		
		return 0;
	}
}