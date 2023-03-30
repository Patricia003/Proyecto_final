<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class CuestionarioModels extends Model
{


    use HasFactory;

    protected $table = "cuestionario"; //Tabla creada en la base de datos
    
    public $timestamps = false; // Esto desactiva las fechas automaticas. Siempre desactival o da error

    protected $fillable = [  //campo requerido para un método insert
       'inicio_cuestionario',
       'final_cuestionario',
       'nota_final',
       'duracion_cuestionario',
       'intento',
       'estado_cuestoinario',
       'estado',
       'id_grado', 
       'id_progreso',
       'id_tema',

    ];


}
