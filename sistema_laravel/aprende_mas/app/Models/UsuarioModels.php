<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class UsuarioModels extends Model
{
    

    use HasFactory;

    protected $table = "usuario"; //Tabla creada en la base de datos
    
    public $timestamps = false; // Desactiva las fechas automaticas.

    protected $fillable = [  //campo requerido para un método insert
        "contra",
        "visita",
        "sesiones",
        "id_progreso",
        "id_rol",
       
    ];




}
