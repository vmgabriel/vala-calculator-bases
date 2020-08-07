/*
 * Licencia Publica GNU
 *Autor: Gabriel Vargas Monroy - Sebastian Mora
*/

using GLib;
using Gtk;
using Ctrl;

namespace Gui
{
	public class Principal : Window
	{
		private Ctrl.Principal eve;
		private Box cajaprinci;

		//Dialogos
		public MessageDialog mensaje;

		//Botones
		public Button btn0;
		public Button btn1;
		public Button btn2;
		public Button btn3;
		public Button btn4;
		public Button btn5;
		public Button btn6;
		public Button btn7;
		public Button btn8;
		public Button btn9;
		public Button btnA;
		public Button btnB;
		public Button btnC;
		public Button btnD;
		public Button btnE;
		public Button btnF;
		public Button btnsuma;
		public Button btnresta;
		public Button btnmult;
		public Button btndiv;
	    public Button btnborrar;
		public Button btnpasar;
		public Button btnconvertir;
		//------

		//RB
		public RadioButton rbbin1;
		public RadioButton rbbin2;
		public RadioButton rboct1;
		public RadioButton rboct2;
		public RadioButton rbdec1;
		public RadioButton rbdec2;
		public RadioButton rbhex1;
		public RadioButton rbhex2;
		//------

		//Labels, txt y separador
		public Entry txtconver1;
		public Entry txtconver2;
		private Label lblflecha;
		private Separator sepa;
		//-----
		
		public Principal()
		{
			this.contruir();
			//paso 1
		}

		private void contruir()
		{
			this.title="Calculadora de Bases";
			this.window_position=WindowPosition.CENTER;
			this.set_default_size(700,700);
			this.destroy.connect(Gtk.main_quit);

			//Mode GOD
			this.carga();
		}

		private void carga()
		{
			this.cajaprinci=new Box(Orientation.VERTICAL,3);

			this.cajaprinci.pack_start(pnsup(),false,true,3);
			this.cajaprinci.pack_start(pnmed(),false,true,1);
			this.cajaprinci.pack_start(pninf(),true,true,1);

			this.add(this.cajaprinci);
		}

		private Box pnsup()
		{
			var caja = new Box(Orientation.HORIZONTAL,3);

			this.txtconver1 = new Entry();
			this.txtconver2 = new Entry();
			this.lblflecha = new Label("------->");

			caja.pack_start(this.txtconver1,true,true,1);
			caja.pack_start(this.lblflecha,false,false,1);
			caja.pack_start(this.txtconver2,true,true,1);
			
			return caja;
		}

		private Box pnmed()
		{
			var caja = new Box(Orientation.HORIZONTAL,3);

			var caja1 = new Box(Orientation.VERTICAL,1);
			var caja2 = new Box(Orientation.VERTICAL,1);

			this.sepa = new Separator (Orientation.VERTICAL);
			this.rbbin1 = new RadioButton.with_label_from_widget (null, "Binario");
			this.rbbin2 = new RadioButton.with_label_from_widget (null, "Binario");
			this.rboct1 = new RadioButton.with_label_from_widget (rbbin1, "Octal");
			this.rboct2 = new RadioButton.with_label_from_widget (rbbin2, "Octal");
			this.rbdec1 = new RadioButton.with_label_from_widget (rbbin1, "Decimal");
			this.rbdec2 = new RadioButton.with_label_from_widget (rbbin2, "Decimal");
			this.rbhex1 = new RadioButton.with_label_from_widget (rbbin1, "Hexadecimal");
			this.rbhex2 = new RadioButton.with_label_from_widget (rbbin2, "Hexadecimal");

			caja1.pack_start(this.rbbin1,true,true,1);
			caja1.pack_start(this.rboct1,true,true,1);
			caja1.pack_start(this.rbdec1,true,true,1);
			caja1.pack_start(this.rbhex1,true,true,1);
			caja2.pack_start(this.rbbin2,true,true,1);
			caja2.pack_start(this.rboct2,true,true,1);
			caja2.pack_start(this.rbdec2,true,true,1);
			caja2.pack_start(this.rbhex2,true,true,1);

			caja.pack_start(caja1,true,true,1);
			caja.pack_start(this.sepa,false,true,1);
			caja.pack_start(caja2,true,true,1);
			
			return caja;
		}

		private Box pninf()
		{
			var caja = new Box(Orientation.HORIZONTAL,1);

			var caja1 = new Box(Orientation.VERTICAL,1);
			var caja2 = new Box(Orientation.VERTICAL,1);
			var caja3 = new Box(Orientation.VERTICAL,1);
			var caja4 = new Box(Orientation.VERTICAL,1);
			var caja5 = new Box(Orientation.VERTICAL,1);
			var caja6 = new Box(Orientation.VERTICAL,1);

			this.btnC = new Button.with_label("C");
			this.btn8 = new Button.with_label("8");
			this.btn4 = new Button.with_label("4");
			this.btn0 = new Button.with_label("0");
			this.btnD = new Button.with_label("D");
			this.btn9 = new Button.with_label("9");
			this.btn5 = new Button.with_label("5");
			this.btn1 = new Button.with_label("1");
			this.btnE = new Button.with_label("E");
			this.btnA = new Button.with_label("A");
			this.btn6 = new Button.with_label("6");
			this.btn2 = new Button.with_label("2");
			this.btnF = new Button.with_label("F");
			this.btnB = new Button.with_label("B");
			this.btn7 = new Button.with_label("7");
			this.btn3 = new Button.with_label("3");
			this.btnsuma = new Button.with_label("+");
			this.btnresta = new Button.with_label("-");
			this.btnmult = new Button.with_label("x");
			this.btndiv = new Button.with_label("/");
			this.btnborrar = new Button.with_label("Borrar");
			this.btnpasar = new Button.with_label("Pasar");
			this.btnconvertir = new Button.with_label("=");

			caja1.pack_start(this.btnC,true,true,0);
			caja1.pack_start(this.btn8,true,true,0);
			caja1.pack_start(this.btn4,true,true,0);
			caja1.pack_start(this.btn0,true,true,0);

			caja2.pack_start(this.btnD,true,true,0);
			caja2.pack_start(this.btn9,true,true,0);
			caja2.pack_start(this.btn5,true,true,0);
			caja2.pack_start(this.btn1,true,true,0);

			caja3.pack_start(this.btnE,true,true,0);
			caja3.pack_start(this.btnA,true,true,0);
			caja3.pack_start(this.btn6,true,true,0);
			caja3.pack_start(this.btn2,true,true,0);

			caja4.pack_start(this.btnF,true,true,0);
			caja4.pack_start(this.btnB,true,true,0);
			caja4.pack_start(this.btn7,true,true,0);
			caja4.pack_start(this.btn3,true,true,0);

			caja6.pack_start(this.btnsuma,true,true,0);
			caja6.pack_start(this.btnresta,true,true,0);
			caja6.pack_start(this.btnmult,true,true,0);
			caja6.pack_start(this.btndiv,true,true,0);

			caja5.pack_start(this.btnborrar,false,true,0);
			caja5.pack_start(this.btnpasar,false,true,0);
			caja5.pack_start(this.btnconvertir,true,true,0);

			caja.pack_start(caja1,true,true,1);
			caja.pack_start(caja2,true,true,1);
			caja.pack_start(caja3,true,true,1);
			caja.pack_start(caja4,true,true,1);
			caja.pack_start(caja6,true,true,1);
			caja.pack_start(caja5,true,true,1);
			
			return caja;
		}

		//Getter Evento
		public void GetEve (Ctrl.Principal eve)
		{
			this.eve=eve;
		}

		//Invervenciones con mensajes graficos
		public void EnviarMensaje(string men)
		{
			this.mensaje=new MessageDialog(this, Gtk.DialogFlags.MODAL, Gtk.MessageType.WARNING, Gtk.ButtonsType.OK, men);
			this.mensaje.response.connect ((response_id) =>
			{
				this.mensaje.destroy();
			});
			this.mensaje.show();
		}
		
	}
}