﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Dominio
{
    public class Telefono
    {
       public int Numero { get; set; }
		public override string ToString()
		{
			return Numero.ToString();
		}
	}
}
