<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class RegistroModels extends Model
{


    use HasFactory;

    protected $table = "registro"; //Tabla creada en la base de datos
    
    public $timestamps = false; // Desactiva las fechas automaticas.

    protected $fillable = [  //campo requerido para un método insert
        "nombre_registro",
        "apellido_registro",
        "nie",
        "fecha_nacimiento",
        "genero",
        "foto",
        "correo",
        "fecha_registro",
        "estado_registro",
        "id_usuario",
        "id_grado",
        "id_municipio",

    ];
}
