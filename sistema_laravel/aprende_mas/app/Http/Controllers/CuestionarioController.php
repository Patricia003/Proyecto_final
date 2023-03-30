<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

//Tablas involucradas: cuestionario, registro, pregunta, insignia, grado, tema
use DateTime;
use App\Models\CuestionarioModels; 
use App\Models\RegistroModels;
use App\Models\PreguntaModels; 
use App\Models\InsigniaModels; 
use App\Models\GradoModels; 
use App\Models\TemaModels; 

class CuestionarioController extends Controller
{
    public function listar(Request $request)
    {
        $registro = Registro::where("productos.estado", "=", 0)


        ->select("",)

        ->inner_join("categorias", "productos.categoria_id", "=", "categorias.id");
        $producto = $producto->get();

        return response()->json($producto);
    }
}
