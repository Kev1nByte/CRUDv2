<?php
    require_once("../config/conexion.php");
    require_once("../models/Producto.php");
    $producto = new Producto();

    switch($_GET["op"]){

        case "listar":
            $datos=$producto->get_producto();
            $data= Array();
            foreach($datos as $row){
                $sub_array = array();
                $sub_array[] = $row["cat_nom"];
                $sub_array[] = $row["prod_nom"];
                $sub_array[] = $row["prod_desc"];
                $sub_array[] = $row["prod_cant"];
                $sub_array[] = '<button type="button" onClick="editar('.$row["prod_id"].');"  id="'.$row["prod_id"].'" class="btn btn-outline-primary btn-icon"><div><i class="fa fa-edit"></i></div></button>';
                $sub_array[] = '<button type="button" onClick="eliminar('.$row["prod_id"].');"  id="'.$row["prod_id"].'" class="btn btn-outline-danger btn-icon"><div><i class="fa fa-trash"></i></div></button>';
                $data[]=$sub_array;
            }
            $results = array(
                "sEcho"=>1,
                "iTotalRecords"=>count($data),
                "iTotalDisplayRecords"=>count($data),
                "aaData"=>$data);
            echo json_encode($results);

            break;
        
        case "guardaryeditar":
                $datos=$producto->get_producto_x_id($_POST["prod_id"]);
            if(empty($_POST["prod_id"])){
                if(is_array($datos)==true and count($datos)==0){
                        $producto->insert_producto($_POST["cat_id"],$_POST["prod_nom"],$_POST["prod_desc"],$_POST["prod_cant"]);
                    }
            }else{
                    $producto->update_producto($_POST["prod_id"],$_POST["cat_id"],$_POST["prod_nom"],$_POST["prod_desc"],$_POST["prod_cant"]);
            }
                break;

        case "mostrar":
            $datos=$producto->get_producto_x_id($_POST["prod_id"]);
            if(is_array($datos)==true and count($datos)>0){
                foreach($datos as $row){
                    $output["prod_id"] = $row["prod_id"];
                    $output["cat_id"] = $row["cat_id"];
                    $output["prod_nom"] = $row["prod_nom"];
                    $output["prod_desc"] = $row["prod_desc"];
                    $output["prod_cant"] = $row["prod_cant"];
                }
                echo json_encode($output);
            }
            break;

            case "eliminar":
                $producto->delete_producto($_POST["prod_id"]);
                break;
    
    }
?>
