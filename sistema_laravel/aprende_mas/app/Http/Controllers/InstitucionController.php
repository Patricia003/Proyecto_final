<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

//Tablas involucradas: institucion, registro, municipio
use DateTime;
use App\Models\InstitucionModels; 
use App\Models\RegistroModels;
use App\Models\MunicipioModels; 


class InstitucionController extends Controller
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
