<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

//Tablas involucradas: usuario, registro, grado, municipio, recuperacion
use DateTime;
use App\Models\UsuarioModels; 
use App\Models\RegistroModels;
use App\Models\GradoModels; 
use App\Models\MunicipioModels; 
use App\Models\RecuperacionModels; 

class RegistroController extends Controller
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
