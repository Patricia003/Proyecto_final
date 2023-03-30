<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

//Tablas involucradas: materia, tema
use DateTime;
use App\Models\MateriaModels; 
use App\Models\TemaModels;


class MateriaController extends Controller
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
