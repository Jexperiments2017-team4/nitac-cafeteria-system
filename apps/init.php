<?php
  // apps/
  define("_APPS_DIR", _ROOT_DIR."apps/");

  // apps/controllers
  define("_CONTROLLERS_DIR", _APPS_DIR."controllers/");

  // apps/models
  define("_MODELS_DIR", _APPS_DIR."models/");

  // apps/smarty
  define("_SMARTY_DIR", _APPS_DIR."smarty/");

  // apps/templates
  define("_TEMPLATES_DIR", _APPS_DIR."templates/");

  // apps/templates_c
  define("_TEMPLATES_C_DIR", _APPS_DIR."templates_c/");

  require_once(_SMARTY_DIR."Smarty.class.php");

  // controller
  require_once(_CONTROLLERS_DIR."BaseController.php");
  require_once(_CONTROLLERS_DIR."ProductController.php");
  require_once(_CONTROLLERS_DIR."ReviewController.php");

  // model
  require_once(_MODELS_DIR."BaseModel.php");
  require_once(_MODELS_DIR."Product.php");
  require_once(_MODELS_DIR."Review.php");
  
?>