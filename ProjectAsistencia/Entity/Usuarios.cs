﻿using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations.Schema;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Text;
using System.Text.Json.Serialization;
using System.Threading.Tasks;

namespace ProjectAsistencia.Entity
{
    //public class Usuarios
    //{

    //    public int id_Usuario { get; set; }
    //    public string email { get; set; }
    //    public string password { get; set; }
    //    public string UsuarioNombre { get; set; }

    //    public string Rol { get; set; }
    //    public DateTime check_entrada { get; set; }
    //    public DateTime check_salida { get; set; }
    //}

    [Table("Usuario")]
    public class Usuarios
    {
        [Key]
        public int id_Usuario { get; set; }

        [Required(ErrorMessage = "El nombre es obligatorio")]
        public string nombre { get; set; }

        [Required(ErrorMessage = "El email es obligatorio")]
        [EmailAddress(ErrorMessage = "Email inválido")]
        public string email { get; set; }

        [Required(ErrorMessage = "La contraseña es obligatoria")]
        public string password { get; set; }

        [Required(ErrorMessage = "El rol es obligatorio")]
        public string rol { get; set; }

        [JsonIgnore]
        public ICollection<Asist_Usuarios>? Asistencias { get; set; }
    }
}