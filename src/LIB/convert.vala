/*
 * Licencia Publica GNU
 *Autor: Gabriel Vargas Monroy - Sebastian Mora
*/

using GLib;

namespace Lib
{
	public class Convert : Object
	{
		public string convnum2hex(double num)
		{
			int val = (int)num;
			switch (val)
			{
		        case (10):
		        {
			        return "A";
		        }
		        case (11):
		        {
			        return "B";
		        }
		        case (12):
		        {
			        return "C";
		        }
		        case (13):
		        {
		 	        return "D";
		        }
		        case(14):
		        {
			        return "E";
		        }
		        case (15):
		        {
			        return "F";
		        }
		        default:
		        {
			        return val.to_string();
		        }
			}
		}

		public int convhex2num(string num)
		{
			switch (num)
			{
		        case ("A"):
		        {
			        return 10;
		        }
		        case ("B"):
		        {
			        return 11;
		        }
		        case ("C"):
		        {
			        return 12;
		        }
		        case ("D"):
		        {
		 	        return 13;
		        }
		        case("E"):
		        {
			        return 14;
		        }
		        case ("F"):
		        {
			        return 15;
		        }
		        default:
		        {
			        return (int.parse(num));
		        }
			}
		}

		public int pot (int a,int b)
		{
			if (b==0)
			{
				return 1;
			}
			else
			{
				return a*pot(a,b-1);
			}
		}

		public string invertir (string val)
		{
			string inver="";
			for (int i=val.length-1;i>=0;i--)
			{
				inver+=val.get(i).to_string();
			}
			return inver;
		}

		public int mod (int a,int b)
		{
		
			var temp = (int)(a/b);
			var temp1 = (temp*b);
			var temp2 = (temp-temp1);
		
			return temp2;
		}

		public double dec2bin (double val)
		{
			if (val==0)
			{
				return 0;
			}
			else
			{
				return ((val%2)+((this.dec2bin((int)(val/2)))*10));
			}
		}

		public double dec2oct (double val)
		{
			if (val==0)
			{
				return 0;
			}
			else
			{
				return ((val%8)+((this.dec2oct((int)(val/8)))*10));
			}
		}

		public double maxdiv16(double val)
		{
			double i=0;
			while (!(val<=15))
			{
				val=val/16;
				i++;
			}
			return i;
		}

		public string dec2hex (double val)
		{
			string hex="";
			int i=0;
			double lim=0;
			if (val<16)
			{
				hex=val.to_string();
			}
			else
			{
				lim=maxdiv16(val);
				for (i=0;i<=lim;i++)
				{
					if (val>=0 && val<=15)
					{
						hex+=convnum2hex(val);
					}
					else
					{
						hex+=convnum2hex(val%16);
					}
					val=val/16;
				}
			}
			return invertir(hex);
		}

		public double bin2dec(double val)
		{
			double valor=0;
			var st = invertir(val.to_string());
			for (int i=0;i<st.length;i++)
			{
				valor+=(((double)(st.get(i)-48))*(Math.pow(2,i)));
			}
			return valor;
		}

		public double oct2dec(double val)
		{
			double valor=0;
			var st = invertir(val.to_string());
			for (int i=0;i<st.length;i++)
			{
				valor+=(((double)(st.get(i)-48))*(Math.pow(8,i)));
			}
			return valor;
		}

		public double hex2dec(string val)
		{
			double a=0;
			var st = invertir(val.to_string());
			for (int i=0;i<st.length;i++)
			{
				double temp=(Math.pow(16,i));
				string temp1=(st.get(i).to_string());
				int temp2=convhex2num(temp1);
				double temp3=((double)temp2);
				a+=(temp3*temp);
			}
			return a;
		}
	}
}