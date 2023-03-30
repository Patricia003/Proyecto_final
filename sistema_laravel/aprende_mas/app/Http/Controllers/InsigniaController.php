<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

//Tablas involucradas: insignia, nivel, registro
use DateTime;
use App\Models\InsigniaModels; 
use App\Models\NivelModels;
use App\Models\RegistroModels; 

class InsigniaController extends Controller
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
