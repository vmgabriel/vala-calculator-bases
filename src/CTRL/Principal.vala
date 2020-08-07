/*
 * Licencia Publica GNU
 *Autor: Gabriel Vargas Monroy - Sebastian Mora
*/

using GLib;
using Lib;
using Gui;

namespace Ctrl
{
	public class Principal : Object
	{
		private int base1=10;
		private int base2=10;
		private double resultado=0;
		private string oper="";
		private Gui.Principal gui;
		private Convert modo;
		
		public Principal(Gui.Principal gui,Convert modo)
		{
			this.gui=gui;
			this.modo=modo;
			this.run();
		}

		private void run()
		{
			gui.btn0.clicked.connect(this.evebtn0);
			gui.btn1.clicked.connect(this.evebtn1);
			gui.btn2.clicked.connect(this.evebtn2);
			gui.btn3.clicked.connect(this.evebtn3);
			gui.btn4.clicked.connect(this.evebtn4);
			gui.btn5.clicked.connect(this.evebtn5);
			gui.btn6.clicked.connect(this.evebtn6);
			gui.btn7.clicked.connect(this.evebtn7);
			gui.btn8.clicked.connect(this.evebtn8);
			gui.btn9.clicked.connect(this.evebtn9);
			gui.btnA.clicked.connect(this.evebtnA);
			gui.btnB.clicked.connect(this.evebtnB);
			gui.btnC.clicked.connect(this.evebtnC);
			gui.btnD.clicked.connect(this.evebtnD);
			gui.btnE.clicked.connect(this.evebtnE);
			gui.btnF.clicked.connect(this.evebtnF);
			gui.btnsuma.clicked.connect(this.evebtnsuma);
			gui.btnresta.clicked.connect(this.evebtnresta);
			gui.btnmult.clicked.connect(this.evebtnmult);
			gui.btndiv.clicked.connect(this.evebtndiv);
			gui.btnborrar.clicked.connect(this.evebtnborrar);
			gui.btnpasar.clicked.connect(this.evebtnpasar);
			gui.btnconvertir.clicked.connect(this.evebtnconvertir);

			gui.rbdec1.set_active(true);
			gui.rbdec2.set_active(true);

			gui.rbbin1.toggled.connect(this.everbactivobin1);
			gui.rboct1.toggled.connect(this.everbactivooct1);
			gui.rbdec1.toggled.connect(this.everbactivodec1);
			gui.rbhex1.toggled.connect(this.everbactivohex1);
			gui.rbbin2.toggled.connect(this.everbactivobin2);
			gui.rboct2.toggled.connect(this.everbactivooct2);
			gui.rbdec2.toggled.connect(this.everbactivodec2);
			gui.rbhex2.toggled.connect(this.everbactivohex2);

			this.base10act();
		}

		private void base2act()
		{
			gui.btn0.set_sensitive(true);
			gui.btn1.set_sensitive(true);
			gui.btn2.set_sensitive(false);
			gui.btn3.set_sensitive(false);
			gui.btn4.set_sensitive(false);
			gui.btn5.set_sensitive(false);
			gui.btn6.set_sensitive(false);
			gui.btn7.set_sensitive(false);
			gui.btn8.set_sensitive(false);
			gui.btn9.set_sensitive(false);
			gui.btnA.set_sensitive(false);
			gui.btnB.set_sensitive(false);
			gui.btnC.set_sensitive(false);
			gui.btnD.set_sensitive(false);
			gui.btnE.set_sensitive(false);
			gui.btnF.set_sensitive(false);
		}

		private void base8act()
		{
			gui.btn0.set_sensitive(true);
			gui.btn1.set_sensitive(true);
			gui.btn2.set_sensitive(true);
			gui.btn3.set_sensitive(true);
			gui.btn4.set_sensitive(true);
			gui.btn5.set_sensitive(true);
			gui.btn6.set_sensitive(true);
			gui.btn7.set_sensitive(true);
			gui.btn8.set_sensitive(false);
			gui.btn9.set_sensitive(false);
			gui.btnA.set_sensitive(false);
			gui.btnB.set_sensitive(false);
			gui.btnC.set_sensitive(false);
			gui.btnD.set_sensitive(false);
			gui.btnE.set_sensitive(false);
			gui.btnF.set_sensitive(false);
		}

		private void base10act()
		{
			gui.btn0.set_sensitive(true);
			gui.btn1.set_sensitive(true);
			gui.btn2.set_sensitive(true);
			gui.btn3.set_sensitive(true);
			gui.btn4.set_sensitive(true);
			gui.btn5.set_sensitive(true);
			gui.btn6.set_sensitive(true);
			gui.btn7.set_sensitive(true);
			gui.btn8.set_sensitive(true);
			gui.btn9.set_sensitive(true);
			gui.btnA.set_sensitive(false);
			gui.btnB.set_sensitive(false);
			gui.btnC.set_sensitive(false);
			gui.btnD.set_sensitive(false);
			gui.btnE.set_sensitive(false);
			gui.btnF.set_sensitive(false);
		}

		private void base16act ()
		{
			gui.btn0.set_sensitive(true);
			gui.btn1.set_sensitive(true);
			gui.btn2.set_sensitive(true);
			gui.btn3.set_sensitive(true);
			gui.btn4.set_sensitive(true);
			gui.btn5.set_sensitive(true);
			gui.btn6.set_sensitive(true);
			gui.btn7.set_sensitive(true);
			gui.btn8.set_sensitive(true);
			gui.btn9.set_sensitive(true);
			gui.btnA.set_sensitive(true);
			gui.btnB.set_sensitive(true);
			gui.btnC.set_sensitive(true);
			gui.btnD.set_sensitive(true);
			gui.btnE.set_sensitive(true);
			gui.btnF.set_sensitive(true);
		}

		private void evebtn0()
		{
			gui.txtconver1.set_text(gui.txtconver1.get_text()+"0");
		}

		private void evebtn1()
		{
			gui.txtconver1.set_text(gui.txtconver1.get_text()+"1");
		}

		private void evebtn2()
		{
			gui.txtconver1.set_text(gui.txtconver1.get_text()+"2");
		}

		private void evebtn3()
		{
			gui.txtconver1.set_text(gui.txtconver1.get_text()+"3");
		}

		private void evebtn4()
		{
			gui.txtconver1.set_text(gui.txtconver1.get_text()+"4");
		}

		private void evebtn5()
		{
			gui.txtconver1.set_text(gui.txtconver1.get_text()+"5");
		}

		private void evebtn6()
		{
			gui.txtconver1.set_text(gui.txtconver1.get_text()+"6");
		}

		private void evebtn7()
		{
			gui.txtconver1.set_text(gui.txtconver1.get_text()+"7");
		}

		private void evebtn8()
		{
			gui.txtconver1.set_text(gui.txtconver1.get_text()+"8");
		}

		private void evebtn9()
		{
			gui.txtconver1.set_text(gui.txtconver1.get_text()+"9");
		}

		private void evebtnA()
		{
			gui.txtconver1.set_text(gui.txtconver1.get_text()+"A");
		}

		private void evebtnB()
		{
			gui.txtconver1.set_text(gui.txtconver1.get_text()+"B");
		}

		private void evebtnC()
		{
			gui.txtconver1.set_text(gui.txtconver1.get_text()+"C");
		}
		
		private void evebtnD()
		{
			gui.txtconver1.set_text(gui.txtconver1.get_text()+"D");
		}

		private void evebtnE()
		{
			gui.txtconver1.set_text(gui.txtconver1.get_text()+"E");
		}

		private void evebtnF()
		{
			gui.txtconver1.set_text(gui.txtconver1.get_text()+"F");
		}

		private double convertir()
		{
			double valores=0;
			switch (base1)
			{
			    case 2:
			    {
					valores=((modo.bin2dec(double.parse(gui.txtconver1.get_text()))));
				}
				break;
			    case 8:
				{
					valores=((modo.oct2dec(double.parse(gui.txtconver1.get_text()))));
				}
				break;
			    case 10:
				{
					valores=(double.parse(gui.txtconver1.get_text()));
				}
				break;
			    case 16:
				{
					valores=((modo.hex2dec(gui.txtconver1.get_text())));
				}
				break;
			}
			return valores;
		}

		private void evebtnsuma()
		{
			oper="+";
			resultado+=convertir();
			gui.txtconver1.set_text("");
		}
		private void evebtnresta()
		{
			oper="-";
			resultado-=convertir();
			gui.txtconver1.set_text("");
		}
		private void evebtnmult()
		{
			oper="*";
			if (resultado ==0)
			{
				resultado=1;
			}
			resultado*=convertir();
			gui.txtconver1.set_text("");
		}
		private void evebtndiv()
		{
			oper="/";
			if (gui.txtconver1.get_text()=="")
			{
				gui.EnviarMensaje("La Division por cero es indeterminada");
			}
			else
			{
				if (resultado ==0)
				{
					resultado=1;
				}
				resultado=convertir();
				gui.txtconver1.set_text("");
			}
		}

		private void evebtnborrar()
		{
			gui.txtconver1.set_text("");
			resultado=0;
		}

		private void evebtnpasar()
		{
			if (this.base1==this.base2)
			{
				gui.txtconver1.set_text(gui.txtconver2.get_text());
			}
			else
			{
				gui.EnviarMensaje("Para Pasar de un lado a otro hay que tener ambos en bases iguales");
			}
		}

		private void revoperacion()
		{
			switch (oper)
			{
			    case "+":
			    {
					resultado+=convertir();
				}
			    break;
			    case "-":
			    {
					resultado-=convertir();
				}
			    break;
			    case "*":
			    {
					resultado*=convertir();
				}
			    break;
			    case "/":
			    {
					resultado/=convertir();
				}
			    break;
			}
		}

		private void evebtnconvertir()
		{
			this.revoperacion();
			switch (base2)
			{
			    case 2:
			    {
					gui.txtconver2.set_text((modo.dec2bin(resultado)).to_string());
				}
				break;
			    case 8:
			    {
					gui.txtconver2.set_text((modo.dec2oct(resultado)).to_string());
				}
				break;
			    case 10:
			    {
					gui.txtconver2.set_text((resultado).to_string());
				}
				break;
			    case 16:
			    {
					gui.txtconver2.set_text((modo.dec2hex(resultado)).to_string());
				}
				break;
			}
			resultado=0;
		}

		public void everbactivobin1()
		{
			if (gui.rbbin1.get_active())
			{
				switch (base1)
				{
				    case 8:
				    {
						double temp=modo.oct2dec(double.parse(gui.txtconver1.get_text()));
						double bin=modo.dec2bin(temp);
						gui.txtconver1.set_text(bin.to_string());
					}
					break;
				    case 10:
				    {
						double temp=modo.dec2bin(double.parse(gui.txtconver1.get_text()));
						gui.txtconver1.set_text(temp.to_string());
					}
					break;
				    case 16:
					{
						double temp=modo.hex2dec(gui.txtconver1.get_text());
						double bin=modo.dec2bin(temp);
						gui.txtconver1.set_text(bin.to_string());
					}
					break;
				}
				this.base1=2;
				this.base2act();
			}
		}

		public void everbactivooct1()
		{
			if (gui.rboct1.get_active())
			{
				switch (base1)
				{
				    case 2:
				    {
						double temp=modo.bin2dec(double.parse(gui.txtconver1.get_text()));
						double bin=modo.dec2oct(temp);
						gui.txtconver1.set_text(bin.to_string());
					}
					break;
				    case 10:
				    {
						double temp=modo.dec2oct(double.parse(gui.txtconver1.get_text()));
						gui.txtconver1.set_text(temp.to_string());
					}
					break;
				    case 16:
					{
						double temp=modo.hex2dec(gui.txtconver1.get_text());
						double bin=modo.dec2oct(temp);
						gui.txtconver1.set_text(bin.to_string());
					}
					break;
				}
				this.base1=8;
				this.base8act();
			}
		}

		public void everbactivodec1()
		{
			if (gui.rbdec1.get_active())
			{
				switch (base1)
				{
				    case 2:
				    {
						double temp=modo.bin2dec(double.parse(gui.txtconver1.get_text()));
						gui.txtconver1.set_text(temp.to_string());
					}
					break;
				    case 8:
				    {
						double temp=modo.oct2dec(double.parse(gui.txtconver1.get_text()));
						gui.txtconver1.set_text(temp.to_string());
					}
					break;
				    case 16:
					{
						double temp=modo.hex2dec(gui.txtconver1.get_text());
						gui.txtconver1.set_text(temp.to_string());
					}
					break;
				}
				this.base1=10;
				this.base10act();
			}
		}

		public void everbactivohex1()
		{
			if (gui.rbhex1.get_active())
			{
				switch (base1)
				{
				    case 2:
				    {
						double temp=modo.bin2dec(double.parse(gui.txtconver1.get_text()));
						string hex=modo.dec2hex(temp);
						gui.txtconver1.set_text(hex);
					}
					break;
				    case 8:
				    {
						double temp=modo.oct2dec(double.parse(gui.txtconver1.get_text()));
						string hex=modo.dec2hex(temp);
						gui.txtconver1.set_text(hex);
					}
					break;
				    case 10:
					{
						string temp=modo.dec2hex(double.parse(gui.txtconver1.get_text()));
						gui.txtconver1.set_text(temp);
					}
					break;
				}
				this.base1=16;
				this.base16act();
			}
		}

		public void everbactivobin2()
		{
			if (gui.rbbin2.get_active())
			{
			    switch (base1)
				{
				    case 8:
				    {
						double temp=modo.oct2dec(double.parse(gui.txtconver2.get_text()));
						double bin=modo.dec2bin(temp);
						gui.txtconver2.set_text(bin.to_string());
					}
					break;
				    case 10:
				    {
						double temp=modo.dec2bin(double.parse(gui.txtconver2.get_text()));
						gui.txtconver2.set_text(temp.to_string());
					}
					break;
				    case 16:
					{
						double temp=modo.hex2dec(gui.txtconver2.get_text());
						double bin=modo.dec2bin(temp);
						gui.txtconver2.set_text(bin.to_string());
					}
					break;
				}
				this.base2=2;
			}
		}

		public void everbactivooct2()
		{
			if (gui.rboct2.get_active())
			{
				switch (base1)
				{
				    case 2:
				    {
						double temp=modo.bin2dec(double.parse(gui.txtconver2.get_text()));
						double bin=modo.dec2oct(temp);
						gui.txtconver2.set_text(bin.to_string());
					}
					break;
				    case 10:
				    {
						double temp=modo.dec2oct(double.parse(gui.txtconver2.get_text()));
						gui.txtconver2.set_text(temp.to_string());
					}
					break;
				    case 16:
					{
						double temp=modo.hex2dec(gui.txtconver2.get_text());
						double bin=modo.dec2oct(temp);
						gui.txtconver2.set_text(bin.to_string());
					}
					break;
				}
				this.base2=8;
			}
		}

		public void everbactivodec2()
		{
			if (gui.rbdec2.get_active())
			{
				switch (base1)
				{
				    case 2:
				    {
						double temp=modo.bin2dec(double.parse(gui.txtconver2.get_text()));
						gui.txtconver2.set_text(temp.to_string());
					}
					break;
				    case 8:
				    {
						double temp=modo.oct2dec(double.parse(gui.txtconver2.get_text()));
						gui.txtconver2.set_text(temp.to_string());
					}
					break;
				    case 16:
					{
						double temp=modo.hex2dec(gui.txtconver2.get_text());
						gui.txtconver2.set_text(temp.to_string());
					}
					break;
				}
				this.base2=10;
			}
		}

		public void everbactivohex2()
		{
			if (gui.rbhex2.get_active())
			{
				switch (base1)
				{
				    case 2:
				    {
						double temp=modo.bin2dec(double.parse(gui.txtconver2.get_text()));
						string hex=modo.dec2hex(temp);
						gui.txtconver2.set_text(hex);
					}
					break;
				    case 8:
				    {
						double temp=modo.oct2dec(double.parse(gui.txtconver2.get_text()));
						string hex=modo.dec2hex(temp);
						gui.txtconver2.set_text(hex);
					}
					break;
				    case 10:
					{
						string temp=modo.dec2hex(double.parse(gui.txtconver2.get_text()));
						gui.txtconver2.set_text(temp);
					}
					break;
				}
				this.base2=16;
			}
		}
	}
}