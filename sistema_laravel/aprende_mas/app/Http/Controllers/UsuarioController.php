<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

//Tablas involucradas: usuario, rol, progreso_guardado
use DateTime;
use App\Models\UsuarioModels; 
use App\Models\RolModels;
use App\Models\Progreso_guardadoModels; 


class UsuarioController extends Controller
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
