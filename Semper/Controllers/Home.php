<?php
class Home extends Controller
{
    public function __construct() {
        parent::__construct();
        session_start();
    }
    public function index()
    {
        $data['title'] = 'Semper';
        $data['categorias'] = $this->model->getCategorias();
        $data['NuevosProductos'] = $this->model->getNuevosProductos();
        $this->views->getView('home', "index", $data);
    }

}