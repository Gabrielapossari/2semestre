﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace senai.Peoples.WebApi.Domains
{
    public class UsuarioDomain
    {
        public int IDUsuario { get; set; }

        public string Email { get; set;  }

        public string Senha { get; set; }

        public Tipo_UsuarioDomain IDTipo_Usuario { get; set; }
    }
}
