<?php

use yii\helpers\Html;
use yii\widgets\ActiveForm;
use yii\helpers\ArrayHelper;
use frontend\models\MstFinancialYear;
use frontend\models\MstScheme;
use frontend\models\MstComponent;
use frontend\models\MstItems;
use frontend\models\MstUlb;
use frontend\models\MstWard;
use frontend\models\Wms;


/* @var $this yii\web\View */
/* @var $model frontend\models\Wms */
/* @var $form yii\widgets\ActiveForm */

/*$FinancialYear = ArrayHelper::map(
    MstFinancialYear::find()->asArray()->all(),
    'id',
    function($model) {
        return $model['start_year'].'-'.$model['end_year'];
    }
  );*/
  
  $MstScheme = ArrayHelper::map(MstScheme::find('id', 'scheme')->all(),'id','scheme');
  $component = ArrayHelper::map(MstComponent::find('id', 'component')->all(),'id','component');
  $MstItems = ArrayHelper::map(MstItems::find('id', 'item_name')->all(),'id','item_name');
  $MstUlb = ArrayHelper::map(MstUlb::find('id', 'name')->all(),'id','name');
  $MstWard = ArrayHelper::map(MstWard::find('id', 'ward_number')->all(),'id','ward_number');
  ////$WmsList = ArrayHelper::map(Wms::find('id', 'work_code_number')->all(),'id','work_code_number');
  //print_r();die;
?>

<div class="wms-work-items-form">

    <?php $form = ActiveForm::begin(); ?>

<div class="row">
    <div class="col-md-3">
         <?= $form->field($model, 'wms_id')->dropDownList(
         ArrayHelper::map(Wms::find()->where(['is_active'=>'Y'])->all(), 'id', 'work_code_number'),['prompt' => '-- Select Work Item --'])
    ?>
     </div>
    <div class="col-md-3">
        <?= $form->field($wmsmodel, 'work_name')->dropDownList(
         ArrayHelper::map(Wms::find()->where(['is_active'=>'Y'])->all(), 'id', 'work_name'),['prompt' => '-- Select Work Item --'])
    ?>
    </div>
    <div class="col-md-3">  
        <?= $form->field($wmsmodel, 'scheme_id')->dropDownList(
         ArrayHelper::map(MstScheme::find()->where(['is_active'=>'Y'])->all(), 'id', 'scheme'),['prompt' => '-- Select Work Item --'])
    ?>
         
    </div>
    <div class="col-md-3">  
        <?= $form->field($model, 'item_id')->dropDownList(
         ArrayHelper::map(MstItems::find()->where(['is_active'=>'Y'])->all(), 'id', 'item_name'),['prompt' => '-- Select Work Item --'])
    ?>
        
    </div>

</div><br><br><br>
<div class="row">
    <table class="table">
       
        <tr>
            <td> <?= $form->field($model, 'item_id')->dropDownList($MstItems) ?></td>
            <td> <?= $form->field($model, 'description')->textInput(['maxlength' => true]) ?></td>
            <td><?= $form->field($model, 'remarks')->textInput(['maxlength' => true]) ?></td>
            <td><?= $form->field($model, 'number1')->textInput(['maxlength' => true]) ?></td>
            <td><?= $form->field($model, 'number2')->textInput(['maxlength' => true]) ?></td>
            <td><?= $form->field($model, 'number3')->textInput(['maxlength' => true]) ?></td>
            <td><?= $form->field($model, 'length')->textInput(['maxlength' => true]) ?></td>
            <td><?= $form->field($model, 'breadth')->textInput(['maxlength' => true]) ?></td>
            <td><?= $form->field($model, 'height')->textInput(['maxlength' => true]) ?></td>
            <td><?= $form->field($model, 'unit')->textInput(['maxlength' => true]) ?></td>
            <td><?= $form->field($model, 'quantity')->textInput() ?></td>
        </tr>
    </table>
</div>

<div class="row">
<div class="col-md-12">
    <h3>View Items</h3>
    <table class="table">
        <tr>
            <th>Item</th>
            <th>Decription</th>
            <th>Remarks</th>
            <th>Number1</th>
            <th>Number2</th>
            <th>Number3</th>
            <th>Length</th>
            <th>Breadth</th>
            <th>Height</th>
            <th>Unit</th>
            <th>Quantity</th>
            <th>Action</th>
        </tr>
        <tr>
            <td></td>
            <td></td>
            <td></td>
            <td></td>
            <td></td>
            <td></td>
            <td></td>
            <td></td>
            <td></td>
            <td></td>
            <td></td>
            <td>
                <button class="btn btn-sm btn-warning">Edit</button>
                <button class="btn btn-sm btn-danger">Delete</button>
            </td>
        </tr>
    </table>
</div>
</div>
    
    
    <div class="form-group">
        <?= Html::submitButton('Save', ['class' => 'btn btn-success']) ?>
    </div>

    <?php ActiveForm::end(); ?>

</div>
