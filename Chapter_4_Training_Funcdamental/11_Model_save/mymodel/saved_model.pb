??
??
^
AssignVariableOp
resource
value"dtype"
dtypetype"
validate_shapebool( ?
~
BiasAdd

value"T	
bias"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
h
ConcatV2
values"T*N
axis"Tidx
output"T"
Nint(0"	
Ttype"
Tidxtype0:
2	
8
Const
output"dtype"
valuetensor"
dtypetype
?
GatherV2
params"Tparams
indices"Tindices
axis"Taxis
output"Tparams"

batch_dimsint "
Tparamstype"
Tindicestype:
2	"
Taxistype:
2	
.
Identity

input"T
output"T"	
Ttype
q
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:

2	
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(?

NoOp
M
Pack
values"T*N
output"T"
Nint(0"	
Ttype"
axisint 
C
Placeholder
output"dtype"
dtypetype"
shapeshape:
?
Prod

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
@
ReadVariableOp
resource
value"dtype"
dtypetype?
E
Relu
features"T
activations"T"
Ttype:
2	
[
Reshape
tensor"T
shape"Tshape
output"T"	
Ttype"
Tshapetype0:
2	
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0?
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0?
?
Select
	condition

t"T
e"T
output"T"	
Ttype
P
Shape

input"T
output"out_type"	
Ttype"
out_typetype0:
2	
H
ShardedFilename
basename	
shard

num_shards
filename
?
StatefulPartitionedCall
args2Tin
output2Tout"
Tin
list(type)("
Tout
list(type)("	
ffunc"
configstring "
config_protostring "
executor_typestring ??
@
StaticRegexFullMatch	
input

output
"
patternstring
N

StringJoin
inputs*N

output"
Nint(0"
	separatorstring 
P
	Transpose
x"T
perm"Tperm
y"T"	
Ttype"
Tpermtype0:
2	
?
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 ?"serve*2.8.02v2.8.0-rc1-32-g3f878cff5b68??
z
dense_59/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
: * 
shared_namedense_59/kernel
s
#dense_59/kernel/Read/ReadVariableOpReadVariableOpdense_59/kernel*
_output_shapes

: *
dtype0
r
dense_59/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namedense_59/bias
k
!dense_59/bias/Read/ReadVariableOpReadVariableOpdense_59/bias*
_output_shapes
: *
dtype0
z
dense_60/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
: * 
shared_namedense_60/kernel
s
#dense_60/kernel/Read/ReadVariableOpReadVariableOpdense_60/kernel*
_output_shapes

: *
dtype0
r
dense_60/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_60/bias
k
!dense_60/bias/Read/ReadVariableOpReadVariableOpdense_60/bias*
_output_shapes
:*
dtype0
f
	Adam/iterVarHandleOp*
_output_shapes
: *
dtype0	*
shape: *
shared_name	Adam/iter
_
Adam/iter/Read/ReadVariableOpReadVariableOp	Adam/iter*
_output_shapes
: *
dtype0	
j
Adam/beta_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameAdam/beta_1
c
Adam/beta_1/Read/ReadVariableOpReadVariableOpAdam/beta_1*
_output_shapes
: *
dtype0
j
Adam/beta_2VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameAdam/beta_2
c
Adam/beta_2/Read/ReadVariableOpReadVariableOpAdam/beta_2*
_output_shapes
: *
dtype0
h

Adam/decayVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name
Adam/decay
a
Adam/decay/Read/ReadVariableOpReadVariableOp
Adam/decay*
_output_shapes
: *
dtype0
x
Adam/learning_rateVarHandleOp*
_output_shapes
: *
dtype0*
shape: *#
shared_nameAdam/learning_rate
q
&Adam/learning_rate/Read/ReadVariableOpReadVariableOpAdam/learning_rate*
_output_shapes
: *
dtype0
^
totalVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nametotal
W
total/Read/ReadVariableOpReadVariableOptotal*
_output_shapes
: *
dtype0
^
countVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namecount
W
count/Read/ReadVariableOpReadVariableOpcount*
_output_shapes
: *
dtype0
b
total_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	total_1
[
total_1/Read/ReadVariableOpReadVariableOptotal_1*
_output_shapes
: *
dtype0
b
count_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	count_1
[
count_1/Read/ReadVariableOpReadVariableOpcount_1*
_output_shapes
: *
dtype0
?
Adam/dense_59/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
: *'
shared_nameAdam/dense_59/kernel/m
?
*Adam/dense_59/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_59/kernel/m*
_output_shapes

: *
dtype0
?
Adam/dense_59/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *%
shared_nameAdam/dense_59/bias/m
y
(Adam/dense_59/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_59/bias/m*
_output_shapes
: *
dtype0
?
Adam/dense_60/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
: *'
shared_nameAdam/dense_60/kernel/m
?
*Adam/dense_60/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_60/kernel/m*
_output_shapes

: *
dtype0
?
Adam/dense_60/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/dense_60/bias/m
y
(Adam/dense_60/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_60/bias/m*
_output_shapes
:*
dtype0
?
Adam/dense_59/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
: *'
shared_nameAdam/dense_59/kernel/v
?
*Adam/dense_59/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_59/kernel/v*
_output_shapes

: *
dtype0
?
Adam/dense_59/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *%
shared_nameAdam/dense_59/bias/v
y
(Adam/dense_59/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_59/bias/v*
_output_shapes
: *
dtype0
?
Adam/dense_60/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
: *'
shared_nameAdam/dense_60/kernel/v
?
*Adam/dense_60/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_60/kernel/v*
_output_shapes

: *
dtype0
?
Adam/dense_60/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/dense_60/bias/v
y
(Adam/dense_60/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_60/bias/v*
_output_shapes
:*
dtype0

NoOpNoOp
?"
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*?"
value?"B?" B?!
?
layer-0
layer_with_weights-0
layer-1
layer_with_weights-1
layer-2
	optimizer
	variables
trainable_variables
regularization_losses
	keras_api
	__call__
*
&call_and_return_all_conditional_losses
_default_save_signature

signatures*
* 
?

kernel
bias
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses*
?

kernel
bias
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses*
?
iter

beta_1

beta_2
	 decay
!learning_ratem<m=m>m?v@vAvBvC*
 
0
1
2
3*
 
0
1
2
3*
* 
?
"non_trainable_variables

#layers
$metrics
%layer_regularization_losses
&layer_metrics
	variables
trainable_variables
regularization_losses
	__call__
_default_save_signature
*
&call_and_return_all_conditional_losses
&
"call_and_return_conditional_losses*
* 
* 
* 

'serving_default* 
_Y
VARIABLE_VALUEdense_59/kernel6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUE*
[U
VARIABLE_VALUEdense_59/bias4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUE*

0
1*

0
1*
* 
?
(non_trainable_variables

)layers
*metrics
+layer_regularization_losses
,layer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*
* 
* 
_Y
VARIABLE_VALUEdense_60/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE*
[U
VARIABLE_VALUEdense_60/bias4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE*

0
1*

0
1*
* 
?
-non_trainable_variables

.layers
/metrics
0layer_regularization_losses
1layer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*
* 
* 
LF
VARIABLE_VALUE	Adam/iter)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUE*
PJ
VARIABLE_VALUEAdam/beta_1+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUE*
PJ
VARIABLE_VALUEAdam/beta_2+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUE*
NH
VARIABLE_VALUE
Adam/decay*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUE*
^X
VARIABLE_VALUEAdam/learning_rate2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUE*
* 

0
1
2*

20
31*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
8
	4total
	5count
6	variables
7	keras_api*
8
	8total
	9count
:	variables
;	keras_api*
SM
VARIABLE_VALUEtotal4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE*
SM
VARIABLE_VALUEcount4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE*

40
51*

6	variables*
UO
VARIABLE_VALUEtotal_14keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUE*
UO
VARIABLE_VALUEcount_14keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUE*

80
91*

:	variables*
?|
VARIABLE_VALUEAdam/dense_59/kernel/mRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUEAdam/dense_59/bias/mPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
?|
VARIABLE_VALUEAdam/dense_60/kernel/mRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUEAdam/dense_60/bias/mPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
?|
VARIABLE_VALUEAdam/dense_59/kernel/vRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUEAdam/dense_59/bias/vPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
?|
VARIABLE_VALUEAdam/dense_60/kernel/vRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUEAdam/dense_60/bias/vPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
?
serving_default_input_20Placeholder*+
_output_shapes
:?????????*
dtype0* 
shape:?????????
?
StatefulPartitionedCallStatefulPartitionedCallserving_default_input_20dense_59/kerneldense_59/biasdense_60/kerneldense_60/bias*
Tin	
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *+
f&R$
"__inference_signature_wrapper_7110
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
?
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename#dense_59/kernel/Read/ReadVariableOp!dense_59/bias/Read/ReadVariableOp#dense_60/kernel/Read/ReadVariableOp!dense_60/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOptotal_1/Read/ReadVariableOpcount_1/Read/ReadVariableOp*Adam/dense_59/kernel/m/Read/ReadVariableOp(Adam/dense_59/bias/m/Read/ReadVariableOp*Adam/dense_60/kernel/m/Read/ReadVariableOp(Adam/dense_60/bias/m/Read/ReadVariableOp*Adam/dense_59/kernel/v/Read/ReadVariableOp(Adam/dense_59/bias/v/Read/ReadVariableOp*Adam/dense_60/kernel/v/Read/ReadVariableOp(Adam/dense_60/bias/v/Read/ReadVariableOpConst*"
Tin
2	*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *&
f!R
__inference__traced_save_7276
?
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamedense_59/kerneldense_59/biasdense_60/kerneldense_60/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratetotalcounttotal_1count_1Adam/dense_59/kernel/mAdam/dense_59/bias/mAdam/dense_60/kernel/mAdam/dense_60/bias/mAdam/dense_59/kernel/vAdam/dense_59/bias/vAdam/dense_60/kernel/vAdam/dense_60/bias/v*!
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *)
f$R"
 __inference__traced_restore_7349??
?
?
B__inference_dense_59_layer_call_and_return_conditional_losses_7150

inputs3
!tensordot_readvariableop_resource: -
biasadd_readvariableop_resource: 
identity??BiasAdd/ReadVariableOp?Tensordot/ReadVariableOpz
Tensordot/ReadVariableOpReadVariableOp!tensordot_readvariableop_resource*
_output_shapes

: *
dtype0X
Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:_
Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       E
Tensordot/ShapeShapeinputs*
T0*
_output_shapes
:Y
Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
Tensordot/GatherV2GatherV2Tensordot/Shape:output:0Tensordot/free:output:0 Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:[
Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
Tensordot/GatherV2_1GatherV2Tensordot/Shape:output:0Tensordot/axes:output:0"Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:Y
Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: n
Tensordot/ProdProdTensordot/GatherV2:output:0Tensordot/Const:output:0*
T0*
_output_shapes
: [
Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: t
Tensordot/Prod_1ProdTensordot/GatherV2_1:output:0Tensordot/Const_1:output:0*
T0*
_output_shapes
: W
Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
Tensordot/concatConcatV2Tensordot/free:output:0Tensordot/axes:output:0Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:y
Tensordot/stackPackTensordot/Prod:output:0Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:y
Tensordot/transpose	TransposeinputsTensordot/concat:output:0*
T0*+
_output_shapes
:??????????
Tensordot/ReshapeReshapeTensordot/transpose:y:0Tensordot/stack:output:0*
T0*0
_output_shapes
:???????????????????
Tensordot/MatMulMatMulTensordot/Reshape:output:0 Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? [
Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB: Y
Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
Tensordot/concat_1ConcatV2Tensordot/GatherV2:output:0Tensordot/Const_2:output:0 Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:?
	TensordotReshapeTensordot/MatMul:product:0Tensordot/concat_1:output:0*
T0*+
_output_shapes
:????????? r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0|
BiasAddBiasAddTensordot:output:0BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:????????? T
ReluReluBiasAdd:output:0*
T0*+
_output_shapes
:????????? e
IdentityIdentityRelu:activations:0^NoOp*
T0*+
_output_shapes
:????????? z
NoOpNoOp^BiasAdd/ReadVariableOp^Tensordot/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp24
Tensordot/ReadVariableOpTensordot/ReadVariableOp:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?@
?
A__inference_model_7_layer_call_and_return_conditional_losses_7095

inputs<
*dense_59_tensordot_readvariableop_resource: 6
(dense_59_biasadd_readvariableop_resource: <
*dense_60_tensordot_readvariableop_resource: 6
(dense_60_biasadd_readvariableop_resource:
identity??dense_59/BiasAdd/ReadVariableOp?!dense_59/Tensordot/ReadVariableOp?dense_60/BiasAdd/ReadVariableOp?!dense_60/Tensordot/ReadVariableOp?
!dense_59/Tensordot/ReadVariableOpReadVariableOp*dense_59_tensordot_readvariableop_resource*
_output_shapes

: *
dtype0a
dense_59/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:h
dense_59/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       N
dense_59/Tensordot/ShapeShapeinputs*
T0*
_output_shapes
:b
 dense_59/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
dense_59/Tensordot/GatherV2GatherV2!dense_59/Tensordot/Shape:output:0 dense_59/Tensordot/free:output:0)dense_59/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:d
"dense_59/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
dense_59/Tensordot/GatherV2_1GatherV2!dense_59/Tensordot/Shape:output:0 dense_59/Tensordot/axes:output:0+dense_59/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:b
dense_59/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: ?
dense_59/Tensordot/ProdProd$dense_59/Tensordot/GatherV2:output:0!dense_59/Tensordot/Const:output:0*
T0*
_output_shapes
: d
dense_59/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: ?
dense_59/Tensordot/Prod_1Prod&dense_59/Tensordot/GatherV2_1:output:0#dense_59/Tensordot/Const_1:output:0*
T0*
_output_shapes
: `
dense_59/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
dense_59/Tensordot/concatConcatV2 dense_59/Tensordot/free:output:0 dense_59/Tensordot/axes:output:0'dense_59/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:?
dense_59/Tensordot/stackPack dense_59/Tensordot/Prod:output:0"dense_59/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:?
dense_59/Tensordot/transpose	Transposeinputs"dense_59/Tensordot/concat:output:0*
T0*+
_output_shapes
:??????????
dense_59/Tensordot/ReshapeReshape dense_59/Tensordot/transpose:y:0!dense_59/Tensordot/stack:output:0*
T0*0
_output_shapes
:???????????????????
dense_59/Tensordot/MatMulMatMul#dense_59/Tensordot/Reshape:output:0)dense_59/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? d
dense_59/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB: b
 dense_59/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
dense_59/Tensordot/concat_1ConcatV2$dense_59/Tensordot/GatherV2:output:0#dense_59/Tensordot/Const_2:output:0)dense_59/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:?
dense_59/TensordotReshape#dense_59/Tensordot/MatMul:product:0$dense_59/Tensordot/concat_1:output:0*
T0*+
_output_shapes
:????????? ?
dense_59/BiasAdd/ReadVariableOpReadVariableOp(dense_59_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0?
dense_59/BiasAddBiasAdddense_59/Tensordot:output:0'dense_59/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:????????? f
dense_59/ReluReludense_59/BiasAdd:output:0*
T0*+
_output_shapes
:????????? ?
!dense_60/Tensordot/ReadVariableOpReadVariableOp*dense_60_tensordot_readvariableop_resource*
_output_shapes

: *
dtype0a
dense_60/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:h
dense_60/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       c
dense_60/Tensordot/ShapeShapedense_59/Relu:activations:0*
T0*
_output_shapes
:b
 dense_60/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
dense_60/Tensordot/GatherV2GatherV2!dense_60/Tensordot/Shape:output:0 dense_60/Tensordot/free:output:0)dense_60/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:d
"dense_60/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
dense_60/Tensordot/GatherV2_1GatherV2!dense_60/Tensordot/Shape:output:0 dense_60/Tensordot/axes:output:0+dense_60/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:b
dense_60/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: ?
dense_60/Tensordot/ProdProd$dense_60/Tensordot/GatherV2:output:0!dense_60/Tensordot/Const:output:0*
T0*
_output_shapes
: d
dense_60/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: ?
dense_60/Tensordot/Prod_1Prod&dense_60/Tensordot/GatherV2_1:output:0#dense_60/Tensordot/Const_1:output:0*
T0*
_output_shapes
: `
dense_60/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
dense_60/Tensordot/concatConcatV2 dense_60/Tensordot/free:output:0 dense_60/Tensordot/axes:output:0'dense_60/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:?
dense_60/Tensordot/stackPack dense_60/Tensordot/Prod:output:0"dense_60/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:?
dense_60/Tensordot/transpose	Transposedense_59/Relu:activations:0"dense_60/Tensordot/concat:output:0*
T0*+
_output_shapes
:????????? ?
dense_60/Tensordot/ReshapeReshape dense_60/Tensordot/transpose:y:0!dense_60/Tensordot/stack:output:0*
T0*0
_output_shapes
:???????????????????
dense_60/Tensordot/MatMulMatMul#dense_60/Tensordot/Reshape:output:0)dense_60/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????d
dense_60/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:b
 dense_60/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
dense_60/Tensordot/concat_1ConcatV2$dense_60/Tensordot/GatherV2:output:0#dense_60/Tensordot/Const_2:output:0)dense_60/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:?
dense_60/TensordotReshape#dense_60/Tensordot/MatMul:product:0$dense_60/Tensordot/concat_1:output:0*
T0*+
_output_shapes
:??????????
dense_60/BiasAdd/ReadVariableOpReadVariableOp(dense_60_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
dense_60/BiasAddBiasAdddense_60/Tensordot:output:0'dense_60/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:?????????f
dense_60/ReluReludense_60/BiasAdd:output:0*
T0*+
_output_shapes
:?????????n
IdentityIdentitydense_60/Relu:activations:0^NoOp*
T0*+
_output_shapes
:??????????
NoOpNoOp ^dense_59/BiasAdd/ReadVariableOp"^dense_59/Tensordot/ReadVariableOp ^dense_60/BiasAdd/ReadVariableOp"^dense_60/Tensordot/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????: : : : 2B
dense_59/BiasAdd/ReadVariableOpdense_59/BiasAdd/ReadVariableOp2F
!dense_59/Tensordot/ReadVariableOp!dense_59/Tensordot/ReadVariableOp2B
dense_60/BiasAdd/ReadVariableOpdense_60/BiasAdd/ReadVariableOp2F
!dense_60/Tensordot/ReadVariableOp!dense_60/Tensordot/ReadVariableOp:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?U
?
 __inference__traced_restore_7349
file_prefix2
 assignvariableop_dense_59_kernel: .
 assignvariableop_1_dense_59_bias: 4
"assignvariableop_2_dense_60_kernel: .
 assignvariableop_3_dense_60_bias:&
assignvariableop_4_adam_iter:	 (
assignvariableop_5_adam_beta_1: (
assignvariableop_6_adam_beta_2: '
assignvariableop_7_adam_decay: /
%assignvariableop_8_adam_learning_rate: "
assignvariableop_9_total: #
assignvariableop_10_count: %
assignvariableop_11_total_1: %
assignvariableop_12_count_1: <
*assignvariableop_13_adam_dense_59_kernel_m: 6
(assignvariableop_14_adam_dense_59_bias_m: <
*assignvariableop_15_adam_dense_60_kernel_m: 6
(assignvariableop_16_adam_dense_60_bias_m:<
*assignvariableop_17_adam_dense_59_kernel_v: 6
(assignvariableop_18_adam_dense_59_bias_v: <
*assignvariableop_19_adam_dense_60_kernel_v: 6
(assignvariableop_20_adam_dense_60_bias_v:
identity_22??AssignVariableOp?AssignVariableOp_1?AssignVariableOp_10?AssignVariableOp_11?AssignVariableOp_12?AssignVariableOp_13?AssignVariableOp_14?AssignVariableOp_15?AssignVariableOp_16?AssignVariableOp_17?AssignVariableOp_18?AssignVariableOp_19?AssignVariableOp_2?AssignVariableOp_20?AssignVariableOp_3?AssignVariableOp_4?AssignVariableOp_5?AssignVariableOp_6?AssignVariableOp_7?AssignVariableOp_8?AssignVariableOp_9?
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*?

value?
B?
B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH?
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*?
value6B4B B B B B B B B B B B B B B B B B B B B B B ?
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*l
_output_shapesZ
X::::::::::::::::::::::*$
dtypes
2	[
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOpAssignVariableOp assignvariableop_dense_59_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_1AssignVariableOp assignvariableop_1_dense_59_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_2AssignVariableOp"assignvariableop_2_dense_60_kernelIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_3AssignVariableOp assignvariableop_3_dense_60_biasIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0	*
_output_shapes
:?
AssignVariableOp_4AssignVariableOpassignvariableop_4_adam_iterIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_5AssignVariableOpassignvariableop_5_adam_beta_1Identity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_6AssignVariableOpassignvariableop_6_adam_beta_2Identity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_7AssignVariableOpassignvariableop_7_adam_decayIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_8AssignVariableOp%assignvariableop_8_adam_learning_rateIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_9AssignVariableOpassignvariableop_9_totalIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_10AssignVariableOpassignvariableop_10_countIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_11AssignVariableOpassignvariableop_11_total_1Identity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_12AssignVariableOpassignvariableop_12_count_1Identity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_13AssignVariableOp*assignvariableop_13_adam_dense_59_kernel_mIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_14AssignVariableOp(assignvariableop_14_adam_dense_59_bias_mIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_15AssignVariableOp*assignvariableop_15_adam_dense_60_kernel_mIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_16AssignVariableOp(assignvariableop_16_adam_dense_60_bias_mIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_17AssignVariableOp*assignvariableop_17_adam_dense_59_kernel_vIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_18AssignVariableOp(assignvariableop_18_adam_dense_59_bias_vIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_19AssignVariableOp*assignvariableop_19_adam_dense_60_kernel_vIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_20AssignVariableOp(assignvariableop_20_adam_dense_60_bias_vIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype01
NoOpNoOp"/device:CPU:0*
_output_shapes
 ?
Identity_21Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: W
Identity_22IdentityIdentity_21:output:0^NoOp_1*
T0*
_output_shapes
: ?
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*"
_acd_function_control_output(*
_output_shapes
 "#
identity_22Identity_22:output:0*?
_input_shapes.
,: : : : : : : : : : : : : : : : : : : : : : 2$
AssignVariableOpAssignVariableOp2(
AssignVariableOp_1AssignVariableOp_12*
AssignVariableOp_10AssignVariableOp_102*
AssignVariableOp_11AssignVariableOp_112*
AssignVariableOp_12AssignVariableOp_122*
AssignVariableOp_13AssignVariableOp_132*
AssignVariableOp_14AssignVariableOp_142*
AssignVariableOp_15AssignVariableOp_152*
AssignVariableOp_16AssignVariableOp_162*
AssignVariableOp_17AssignVariableOp_172*
AssignVariableOp_18AssignVariableOp_182*
AssignVariableOp_19AssignVariableOp_192(
AssignVariableOp_2AssignVariableOp_22*
AssignVariableOp_20AssignVariableOp_202(
AssignVariableOp_3AssignVariableOp_32(
AssignVariableOp_4AssignVariableOp_42(
AssignVariableOp_5AssignVariableOp_52(
AssignVariableOp_6AssignVariableOp_62(
AssignVariableOp_7AssignVariableOp_72(
AssignVariableOp_8AssignVariableOp_82(
AssignVariableOp_9AssignVariableOp_9:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
?
?
A__inference_model_7_layer_call_and_return_conditional_losses_6835

inputs
dense_59_6792: 
dense_59_6794: 
dense_60_6829: 
dense_60_6831:
identity?? dense_59/StatefulPartitionedCall? dense_60/StatefulPartitionedCall?
 dense_59/StatefulPartitionedCallStatefulPartitionedCallinputsdense_59_6792dense_59_6794*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:????????? *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *K
fFRD
B__inference_dense_59_layer_call_and_return_conditional_losses_6791?
 dense_60/StatefulPartitionedCallStatefulPartitionedCall)dense_59/StatefulPartitionedCall:output:0dense_60_6829dense_60_6831*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *K
fFRD
B__inference_dense_60_layer_call_and_return_conditional_losses_6828|
IdentityIdentity)dense_60/StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:??????????
NoOpNoOp!^dense_59/StatefulPartitionedCall!^dense_60/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????: : : : 2D
 dense_59/StatefulPartitionedCall dense_59/StatefulPartitionedCall2D
 dense_60/StatefulPartitionedCall dense_60/StatefulPartitionedCall:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
A__inference_model_7_layer_call_and_return_conditional_losses_6947
input_20
dense_59_6936: 
dense_59_6938: 
dense_60_6941: 
dense_60_6943:
identity?? dense_59/StatefulPartitionedCall? dense_60/StatefulPartitionedCall?
 dense_59/StatefulPartitionedCallStatefulPartitionedCallinput_20dense_59_6936dense_59_6938*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:????????? *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *K
fFRD
B__inference_dense_59_layer_call_and_return_conditional_losses_6791?
 dense_60/StatefulPartitionedCallStatefulPartitionedCall)dense_59/StatefulPartitionedCall:output:0dense_60_6941dense_60_6943*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *K
fFRD
B__inference_dense_60_layer_call_and_return_conditional_losses_6828|
IdentityIdentity)dense_60/StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:??????????
NoOpNoOp!^dense_59/StatefulPartitionedCall!^dense_60/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????: : : : 2D
 dense_59/StatefulPartitionedCall dense_59/StatefulPartitionedCall2D
 dense_60/StatefulPartitionedCall dense_60/StatefulPartitionedCall:U Q
+
_output_shapes
:?????????
"
_user_specified_name
input_20
?
?
B__inference_dense_60_layer_call_and_return_conditional_losses_7190

inputs3
!tensordot_readvariableop_resource: -
biasadd_readvariableop_resource:
identity??BiasAdd/ReadVariableOp?Tensordot/ReadVariableOpz
Tensordot/ReadVariableOpReadVariableOp!tensordot_readvariableop_resource*
_output_shapes

: *
dtype0X
Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:_
Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       E
Tensordot/ShapeShapeinputs*
T0*
_output_shapes
:Y
Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
Tensordot/GatherV2GatherV2Tensordot/Shape:output:0Tensordot/free:output:0 Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:[
Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
Tensordot/GatherV2_1GatherV2Tensordot/Shape:output:0Tensordot/axes:output:0"Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:Y
Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: n
Tensordot/ProdProdTensordot/GatherV2:output:0Tensordot/Const:output:0*
T0*
_output_shapes
: [
Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: t
Tensordot/Prod_1ProdTensordot/GatherV2_1:output:0Tensordot/Const_1:output:0*
T0*
_output_shapes
: W
Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
Tensordot/concatConcatV2Tensordot/free:output:0Tensordot/axes:output:0Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:y
Tensordot/stackPackTensordot/Prod:output:0Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:y
Tensordot/transpose	TransposeinputsTensordot/concat:output:0*
T0*+
_output_shapes
:????????? ?
Tensordot/ReshapeReshapeTensordot/transpose:y:0Tensordot/stack:output:0*
T0*0
_output_shapes
:???????????????????
Tensordot/MatMulMatMulTensordot/Reshape:output:0 Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????[
Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:Y
Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
Tensordot/concat_1ConcatV2Tensordot/GatherV2:output:0Tensordot/Const_2:output:0 Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:?
	TensordotReshapeTensordot/MatMul:product:0Tensordot/concat_1:output:0*
T0*+
_output_shapes
:?????????r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0|
BiasAddBiasAddTensordot:output:0BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:?????????T
ReluReluBiasAdd:output:0*
T0*+
_output_shapes
:?????????e
IdentityIdentityRelu:activations:0^NoOp*
T0*+
_output_shapes
:?????????z
NoOpNoOp^BiasAdd/ReadVariableOp^Tensordot/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:????????? : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp24
Tensordot/ReadVariableOpTensordot/ReadVariableOp:S O
+
_output_shapes
:????????? 
 
_user_specified_nameinputs
?
?
A__inference_model_7_layer_call_and_return_conditional_losses_6895

inputs
dense_59_6884: 
dense_59_6886: 
dense_60_6889: 
dense_60_6891:
identity?? dense_59/StatefulPartitionedCall? dense_60/StatefulPartitionedCall?
 dense_59/StatefulPartitionedCallStatefulPartitionedCallinputsdense_59_6884dense_59_6886*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:????????? *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *K
fFRD
B__inference_dense_59_layer_call_and_return_conditional_losses_6791?
 dense_60/StatefulPartitionedCallStatefulPartitionedCall)dense_59/StatefulPartitionedCall:output:0dense_60_6889dense_60_6891*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *K
fFRD
B__inference_dense_60_layer_call_and_return_conditional_losses_6828|
IdentityIdentity)dense_60/StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:??????????
NoOpNoOp!^dense_59/StatefulPartitionedCall!^dense_60/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????: : : : 2D
 dense_59/StatefulPartitionedCall dense_59/StatefulPartitionedCall2D
 dense_60/StatefulPartitionedCall dense_60/StatefulPartitionedCall:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
'__inference_dense_59_layer_call_fn_7119

inputs
unknown: 
	unknown_0: 
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:????????? *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *K
fFRD
B__inference_dense_59_layer_call_and_return_conditional_losses_6791s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:????????? `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????: : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
B__inference_dense_59_layer_call_and_return_conditional_losses_6791

inputs3
!tensordot_readvariableop_resource: -
biasadd_readvariableop_resource: 
identity??BiasAdd/ReadVariableOp?Tensordot/ReadVariableOpz
Tensordot/ReadVariableOpReadVariableOp!tensordot_readvariableop_resource*
_output_shapes

: *
dtype0X
Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:_
Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       E
Tensordot/ShapeShapeinputs*
T0*
_output_shapes
:Y
Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
Tensordot/GatherV2GatherV2Tensordot/Shape:output:0Tensordot/free:output:0 Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:[
Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
Tensordot/GatherV2_1GatherV2Tensordot/Shape:output:0Tensordot/axes:output:0"Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:Y
Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: n
Tensordot/ProdProdTensordot/GatherV2:output:0Tensordot/Const:output:0*
T0*
_output_shapes
: [
Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: t
Tensordot/Prod_1ProdTensordot/GatherV2_1:output:0Tensordot/Const_1:output:0*
T0*
_output_shapes
: W
Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
Tensordot/concatConcatV2Tensordot/free:output:0Tensordot/axes:output:0Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:y
Tensordot/stackPackTensordot/Prod:output:0Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:y
Tensordot/transpose	TransposeinputsTensordot/concat:output:0*
T0*+
_output_shapes
:??????????
Tensordot/ReshapeReshapeTensordot/transpose:y:0Tensordot/stack:output:0*
T0*0
_output_shapes
:???????????????????
Tensordot/MatMulMatMulTensordot/Reshape:output:0 Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? [
Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB: Y
Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
Tensordot/concat_1ConcatV2Tensordot/GatherV2:output:0Tensordot/Const_2:output:0 Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:?
	TensordotReshapeTensordot/MatMul:product:0Tensordot/concat_1:output:0*
T0*+
_output_shapes
:????????? r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0|
BiasAddBiasAddTensordot:output:0BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:????????? T
ReluReluBiasAdd:output:0*
T0*+
_output_shapes
:????????? e
IdentityIdentityRelu:activations:0^NoOp*
T0*+
_output_shapes
:????????? z
NoOpNoOp^BiasAdd/ReadVariableOp^Tensordot/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp24
Tensordot/ReadVariableOpTensordot/ReadVariableOp:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
&__inference_model_7_layer_call_fn_6846
input_20
unknown: 
	unknown_0: 
	unknown_1: 
	unknown_2:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinput_20unknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *J
fERC
A__inference_model_7_layer_call_and_return_conditional_losses_6835s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:U Q
+
_output_shapes
:?????????
"
_user_specified_name
input_20
?
?
&__inference_model_7_layer_call_fn_6979

inputs
unknown: 
	unknown_0: 
	unknown_1: 
	unknown_2:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *J
fERC
A__inference_model_7_layer_call_and_return_conditional_losses_6895s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?@
?
A__inference_model_7_layer_call_and_return_conditional_losses_7037

inputs<
*dense_59_tensordot_readvariableop_resource: 6
(dense_59_biasadd_readvariableop_resource: <
*dense_60_tensordot_readvariableop_resource: 6
(dense_60_biasadd_readvariableop_resource:
identity??dense_59/BiasAdd/ReadVariableOp?!dense_59/Tensordot/ReadVariableOp?dense_60/BiasAdd/ReadVariableOp?!dense_60/Tensordot/ReadVariableOp?
!dense_59/Tensordot/ReadVariableOpReadVariableOp*dense_59_tensordot_readvariableop_resource*
_output_shapes

: *
dtype0a
dense_59/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:h
dense_59/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       N
dense_59/Tensordot/ShapeShapeinputs*
T0*
_output_shapes
:b
 dense_59/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
dense_59/Tensordot/GatherV2GatherV2!dense_59/Tensordot/Shape:output:0 dense_59/Tensordot/free:output:0)dense_59/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:d
"dense_59/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
dense_59/Tensordot/GatherV2_1GatherV2!dense_59/Tensordot/Shape:output:0 dense_59/Tensordot/axes:output:0+dense_59/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:b
dense_59/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: ?
dense_59/Tensordot/ProdProd$dense_59/Tensordot/GatherV2:output:0!dense_59/Tensordot/Const:output:0*
T0*
_output_shapes
: d
dense_59/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: ?
dense_59/Tensordot/Prod_1Prod&dense_59/Tensordot/GatherV2_1:output:0#dense_59/Tensordot/Const_1:output:0*
T0*
_output_shapes
: `
dense_59/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
dense_59/Tensordot/concatConcatV2 dense_59/Tensordot/free:output:0 dense_59/Tensordot/axes:output:0'dense_59/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:?
dense_59/Tensordot/stackPack dense_59/Tensordot/Prod:output:0"dense_59/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:?
dense_59/Tensordot/transpose	Transposeinputs"dense_59/Tensordot/concat:output:0*
T0*+
_output_shapes
:??????????
dense_59/Tensordot/ReshapeReshape dense_59/Tensordot/transpose:y:0!dense_59/Tensordot/stack:output:0*
T0*0
_output_shapes
:???????????????????
dense_59/Tensordot/MatMulMatMul#dense_59/Tensordot/Reshape:output:0)dense_59/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? d
dense_59/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB: b
 dense_59/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
dense_59/Tensordot/concat_1ConcatV2$dense_59/Tensordot/GatherV2:output:0#dense_59/Tensordot/Const_2:output:0)dense_59/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:?
dense_59/TensordotReshape#dense_59/Tensordot/MatMul:product:0$dense_59/Tensordot/concat_1:output:0*
T0*+
_output_shapes
:????????? ?
dense_59/BiasAdd/ReadVariableOpReadVariableOp(dense_59_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0?
dense_59/BiasAddBiasAdddense_59/Tensordot:output:0'dense_59/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:????????? f
dense_59/ReluReludense_59/BiasAdd:output:0*
T0*+
_output_shapes
:????????? ?
!dense_60/Tensordot/ReadVariableOpReadVariableOp*dense_60_tensordot_readvariableop_resource*
_output_shapes

: *
dtype0a
dense_60/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:h
dense_60/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       c
dense_60/Tensordot/ShapeShapedense_59/Relu:activations:0*
T0*
_output_shapes
:b
 dense_60/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
dense_60/Tensordot/GatherV2GatherV2!dense_60/Tensordot/Shape:output:0 dense_60/Tensordot/free:output:0)dense_60/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:d
"dense_60/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
dense_60/Tensordot/GatherV2_1GatherV2!dense_60/Tensordot/Shape:output:0 dense_60/Tensordot/axes:output:0+dense_60/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:b
dense_60/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: ?
dense_60/Tensordot/ProdProd$dense_60/Tensordot/GatherV2:output:0!dense_60/Tensordot/Const:output:0*
T0*
_output_shapes
: d
dense_60/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: ?
dense_60/Tensordot/Prod_1Prod&dense_60/Tensordot/GatherV2_1:output:0#dense_60/Tensordot/Const_1:output:0*
T0*
_output_shapes
: `
dense_60/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
dense_60/Tensordot/concatConcatV2 dense_60/Tensordot/free:output:0 dense_60/Tensordot/axes:output:0'dense_60/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:?
dense_60/Tensordot/stackPack dense_60/Tensordot/Prod:output:0"dense_60/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:?
dense_60/Tensordot/transpose	Transposedense_59/Relu:activations:0"dense_60/Tensordot/concat:output:0*
T0*+
_output_shapes
:????????? ?
dense_60/Tensordot/ReshapeReshape dense_60/Tensordot/transpose:y:0!dense_60/Tensordot/stack:output:0*
T0*0
_output_shapes
:???????????????????
dense_60/Tensordot/MatMulMatMul#dense_60/Tensordot/Reshape:output:0)dense_60/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????d
dense_60/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:b
 dense_60/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
dense_60/Tensordot/concat_1ConcatV2$dense_60/Tensordot/GatherV2:output:0#dense_60/Tensordot/Const_2:output:0)dense_60/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:?
dense_60/TensordotReshape#dense_60/Tensordot/MatMul:product:0$dense_60/Tensordot/concat_1:output:0*
T0*+
_output_shapes
:??????????
dense_60/BiasAdd/ReadVariableOpReadVariableOp(dense_60_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
dense_60/BiasAddBiasAdddense_60/Tensordot:output:0'dense_60/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:?????????f
dense_60/ReluReludense_60/BiasAdd:output:0*
T0*+
_output_shapes
:?????????n
IdentityIdentitydense_60/Relu:activations:0^NoOp*
T0*+
_output_shapes
:??????????
NoOpNoOp ^dense_59/BiasAdd/ReadVariableOp"^dense_59/Tensordot/ReadVariableOp ^dense_60/BiasAdd/ReadVariableOp"^dense_60/Tensordot/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????: : : : 2B
dense_59/BiasAdd/ReadVariableOpdense_59/BiasAdd/ReadVariableOp2F
!dense_59/Tensordot/ReadVariableOp!dense_59/Tensordot/ReadVariableOp2B
dense_60/BiasAdd/ReadVariableOpdense_60/BiasAdd/ReadVariableOp2F
!dense_60/Tensordot/ReadVariableOp!dense_60/Tensordot/ReadVariableOp:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?H
?
__inference__wrapped_model_6753
input_20D
2model_7_dense_59_tensordot_readvariableop_resource: >
0model_7_dense_59_biasadd_readvariableop_resource: D
2model_7_dense_60_tensordot_readvariableop_resource: >
0model_7_dense_60_biasadd_readvariableop_resource:
identity??'model_7/dense_59/BiasAdd/ReadVariableOp?)model_7/dense_59/Tensordot/ReadVariableOp?'model_7/dense_60/BiasAdd/ReadVariableOp?)model_7/dense_60/Tensordot/ReadVariableOp?
)model_7/dense_59/Tensordot/ReadVariableOpReadVariableOp2model_7_dense_59_tensordot_readvariableop_resource*
_output_shapes

: *
dtype0i
model_7/dense_59/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:p
model_7/dense_59/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       X
 model_7/dense_59/Tensordot/ShapeShapeinput_20*
T0*
_output_shapes
:j
(model_7/dense_59/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
#model_7/dense_59/Tensordot/GatherV2GatherV2)model_7/dense_59/Tensordot/Shape:output:0(model_7/dense_59/Tensordot/free:output:01model_7/dense_59/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:l
*model_7/dense_59/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
%model_7/dense_59/Tensordot/GatherV2_1GatherV2)model_7/dense_59/Tensordot/Shape:output:0(model_7/dense_59/Tensordot/axes:output:03model_7/dense_59/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:j
 model_7/dense_59/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: ?
model_7/dense_59/Tensordot/ProdProd,model_7/dense_59/Tensordot/GatherV2:output:0)model_7/dense_59/Tensordot/Const:output:0*
T0*
_output_shapes
: l
"model_7/dense_59/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: ?
!model_7/dense_59/Tensordot/Prod_1Prod.model_7/dense_59/Tensordot/GatherV2_1:output:0+model_7/dense_59/Tensordot/Const_1:output:0*
T0*
_output_shapes
: h
&model_7/dense_59/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
!model_7/dense_59/Tensordot/concatConcatV2(model_7/dense_59/Tensordot/free:output:0(model_7/dense_59/Tensordot/axes:output:0/model_7/dense_59/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:?
 model_7/dense_59/Tensordot/stackPack(model_7/dense_59/Tensordot/Prod:output:0*model_7/dense_59/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:?
$model_7/dense_59/Tensordot/transpose	Transposeinput_20*model_7/dense_59/Tensordot/concat:output:0*
T0*+
_output_shapes
:??????????
"model_7/dense_59/Tensordot/ReshapeReshape(model_7/dense_59/Tensordot/transpose:y:0)model_7/dense_59/Tensordot/stack:output:0*
T0*0
_output_shapes
:???????????????????
!model_7/dense_59/Tensordot/MatMulMatMul+model_7/dense_59/Tensordot/Reshape:output:01model_7/dense_59/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? l
"model_7/dense_59/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB: j
(model_7/dense_59/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
#model_7/dense_59/Tensordot/concat_1ConcatV2,model_7/dense_59/Tensordot/GatherV2:output:0+model_7/dense_59/Tensordot/Const_2:output:01model_7/dense_59/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:?
model_7/dense_59/TensordotReshape+model_7/dense_59/Tensordot/MatMul:product:0,model_7/dense_59/Tensordot/concat_1:output:0*
T0*+
_output_shapes
:????????? ?
'model_7/dense_59/BiasAdd/ReadVariableOpReadVariableOp0model_7_dense_59_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0?
model_7/dense_59/BiasAddBiasAdd#model_7/dense_59/Tensordot:output:0/model_7/dense_59/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:????????? v
model_7/dense_59/ReluRelu!model_7/dense_59/BiasAdd:output:0*
T0*+
_output_shapes
:????????? ?
)model_7/dense_60/Tensordot/ReadVariableOpReadVariableOp2model_7_dense_60_tensordot_readvariableop_resource*
_output_shapes

: *
dtype0i
model_7/dense_60/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:p
model_7/dense_60/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       s
 model_7/dense_60/Tensordot/ShapeShape#model_7/dense_59/Relu:activations:0*
T0*
_output_shapes
:j
(model_7/dense_60/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
#model_7/dense_60/Tensordot/GatherV2GatherV2)model_7/dense_60/Tensordot/Shape:output:0(model_7/dense_60/Tensordot/free:output:01model_7/dense_60/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:l
*model_7/dense_60/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
%model_7/dense_60/Tensordot/GatherV2_1GatherV2)model_7/dense_60/Tensordot/Shape:output:0(model_7/dense_60/Tensordot/axes:output:03model_7/dense_60/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:j
 model_7/dense_60/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: ?
model_7/dense_60/Tensordot/ProdProd,model_7/dense_60/Tensordot/GatherV2:output:0)model_7/dense_60/Tensordot/Const:output:0*
T0*
_output_shapes
: l
"model_7/dense_60/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: ?
!model_7/dense_60/Tensordot/Prod_1Prod.model_7/dense_60/Tensordot/GatherV2_1:output:0+model_7/dense_60/Tensordot/Const_1:output:0*
T0*
_output_shapes
: h
&model_7/dense_60/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
!model_7/dense_60/Tensordot/concatConcatV2(model_7/dense_60/Tensordot/free:output:0(model_7/dense_60/Tensordot/axes:output:0/model_7/dense_60/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:?
 model_7/dense_60/Tensordot/stackPack(model_7/dense_60/Tensordot/Prod:output:0*model_7/dense_60/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:?
$model_7/dense_60/Tensordot/transpose	Transpose#model_7/dense_59/Relu:activations:0*model_7/dense_60/Tensordot/concat:output:0*
T0*+
_output_shapes
:????????? ?
"model_7/dense_60/Tensordot/ReshapeReshape(model_7/dense_60/Tensordot/transpose:y:0)model_7/dense_60/Tensordot/stack:output:0*
T0*0
_output_shapes
:???????????????????
!model_7/dense_60/Tensordot/MatMulMatMul+model_7/dense_60/Tensordot/Reshape:output:01model_7/dense_60/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????l
"model_7/dense_60/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:j
(model_7/dense_60/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
#model_7/dense_60/Tensordot/concat_1ConcatV2,model_7/dense_60/Tensordot/GatherV2:output:0+model_7/dense_60/Tensordot/Const_2:output:01model_7/dense_60/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:?
model_7/dense_60/TensordotReshape+model_7/dense_60/Tensordot/MatMul:product:0,model_7/dense_60/Tensordot/concat_1:output:0*
T0*+
_output_shapes
:??????????
'model_7/dense_60/BiasAdd/ReadVariableOpReadVariableOp0model_7_dense_60_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
model_7/dense_60/BiasAddBiasAdd#model_7/dense_60/Tensordot:output:0/model_7/dense_60/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:?????????v
model_7/dense_60/ReluRelu!model_7/dense_60/BiasAdd:output:0*
T0*+
_output_shapes
:?????????v
IdentityIdentity#model_7/dense_60/Relu:activations:0^NoOp*
T0*+
_output_shapes
:??????????
NoOpNoOp(^model_7/dense_59/BiasAdd/ReadVariableOp*^model_7/dense_59/Tensordot/ReadVariableOp(^model_7/dense_60/BiasAdd/ReadVariableOp*^model_7/dense_60/Tensordot/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????: : : : 2R
'model_7/dense_59/BiasAdd/ReadVariableOp'model_7/dense_59/BiasAdd/ReadVariableOp2V
)model_7/dense_59/Tensordot/ReadVariableOp)model_7/dense_59/Tensordot/ReadVariableOp2R
'model_7/dense_60/BiasAdd/ReadVariableOp'model_7/dense_60/BiasAdd/ReadVariableOp2V
)model_7/dense_60/Tensordot/ReadVariableOp)model_7/dense_60/Tensordot/ReadVariableOp:U Q
+
_output_shapes
:?????????
"
_user_specified_name
input_20
?
?
&__inference_model_7_layer_call_fn_6966

inputs
unknown: 
	unknown_0: 
	unknown_1: 
	unknown_2:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *J
fERC
A__inference_model_7_layer_call_and_return_conditional_losses_6835s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
A__inference_model_7_layer_call_and_return_conditional_losses_6933
input_20
dense_59_6922: 
dense_59_6924: 
dense_60_6927: 
dense_60_6929:
identity?? dense_59/StatefulPartitionedCall? dense_60/StatefulPartitionedCall?
 dense_59/StatefulPartitionedCallStatefulPartitionedCallinput_20dense_59_6922dense_59_6924*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:????????? *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *K
fFRD
B__inference_dense_59_layer_call_and_return_conditional_losses_6791?
 dense_60/StatefulPartitionedCallStatefulPartitionedCall)dense_59/StatefulPartitionedCall:output:0dense_60_6927dense_60_6929*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *K
fFRD
B__inference_dense_60_layer_call_and_return_conditional_losses_6828|
IdentityIdentity)dense_60/StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:??????????
NoOpNoOp!^dense_59/StatefulPartitionedCall!^dense_60/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????: : : : 2D
 dense_59/StatefulPartitionedCall dense_59/StatefulPartitionedCall2D
 dense_60/StatefulPartitionedCall dense_60/StatefulPartitionedCall:U Q
+
_output_shapes
:?????????
"
_user_specified_name
input_20
?
?
'__inference_dense_60_layer_call_fn_7159

inputs
unknown: 
	unknown_0:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *K
fFRD
B__inference_dense_60_layer_call_and_return_conditional_losses_6828s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:????????? : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:????????? 
 
_user_specified_nameinputs
?1
?
__inference__traced_save_7276
file_prefix.
*savev2_dense_59_kernel_read_readvariableop,
(savev2_dense_59_bias_read_readvariableop.
*savev2_dense_60_kernel_read_readvariableop,
(savev2_dense_60_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop&
"savev2_total_1_read_readvariableop&
"savev2_count_1_read_readvariableop5
1savev2_adam_dense_59_kernel_m_read_readvariableop3
/savev2_adam_dense_59_bias_m_read_readvariableop5
1savev2_adam_dense_60_kernel_m_read_readvariableop3
/savev2_adam_dense_60_bias_m_read_readvariableop5
1savev2_adam_dense_59_kernel_v_read_readvariableop3
/savev2_adam_dense_59_bias_v_read_readvariableop5
1savev2_adam_dense_60_kernel_v_read_readvariableop3
/savev2_adam_dense_60_bias_v_read_readvariableop
savev2_const

identity_1??MergeV2Checkpointsw
StaticRegexFullMatchStaticRegexFullMatchfile_prefix"/device:CPU:**
_output_shapes
: *
pattern
^s3://.*Z
ConstConst"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B.parta
Const_1Const"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B
_temp/part?
SelectSelectStaticRegexFullMatch:output:0Const:output:0Const_1:output:0"/device:CPU:**
T0*
_output_shapes
: f

StringJoin
StringJoinfile_prefixSelect:output:0"/device:CPU:**
N*
_output_shapes
: L

num_shardsConst*
_output_shapes
: *
dtype0*
value	B :f
ShardedFilename/shardConst"/device:CPU:0*
_output_shapes
: *
dtype0*
value	B : ?
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: ?
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*?

value?
B?
B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH?
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*?
value6B4B B B B B B B B B B B B B B B B B B B B B B ?
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0*savev2_dense_59_kernel_read_readvariableop(savev2_dense_59_bias_read_readvariableop*savev2_dense_60_kernel_read_readvariableop(savev2_dense_60_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableop1savev2_adam_dense_59_kernel_m_read_readvariableop/savev2_adam_dense_59_bias_m_read_readvariableop1savev2_adam_dense_60_kernel_m_read_readvariableop/savev2_adam_dense_60_bias_m_read_readvariableop1savev2_adam_dense_59_kernel_v_read_readvariableop/savev2_adam_dense_59_bias_v_read_readvariableop1savev2_adam_dense_60_kernel_v_read_readvariableop/savev2_adam_dense_60_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *$
dtypes
2	?
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:?
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*
_output_shapes
 f
IdentityIdentityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: Q

Identity_1IdentityIdentity:output:0^NoOp*
T0*
_output_shapes
: [
NoOpNoOp^MergeV2Checkpoints*"
_acd_function_control_output(*
_output_shapes
 "!

identity_1Identity_1:output:0*?
_input_shapesx
v: : : : :: : : : : : : : : : : : :: : : :: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:$ 

_output_shapes

: : 

_output_shapes
: :$ 

_output_shapes

: : 

_output_shapes
::

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :	

_output_shapes
: :


_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :$ 

_output_shapes

: : 

_output_shapes
: :$ 

_output_shapes

: : 

_output_shapes
::$ 

_output_shapes

: : 

_output_shapes
: :$ 

_output_shapes

: : 

_output_shapes
::

_output_shapes
: 
?
?
&__inference_model_7_layer_call_fn_6919
input_20
unknown: 
	unknown_0: 
	unknown_1: 
	unknown_2:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinput_20unknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *J
fERC
A__inference_model_7_layer_call_and_return_conditional_losses_6895s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:U Q
+
_output_shapes
:?????????
"
_user_specified_name
input_20
?
?
B__inference_dense_60_layer_call_and_return_conditional_losses_6828

inputs3
!tensordot_readvariableop_resource: -
biasadd_readvariableop_resource:
identity??BiasAdd/ReadVariableOp?Tensordot/ReadVariableOpz
Tensordot/ReadVariableOpReadVariableOp!tensordot_readvariableop_resource*
_output_shapes

: *
dtype0X
Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:_
Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       E
Tensordot/ShapeShapeinputs*
T0*
_output_shapes
:Y
Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
Tensordot/GatherV2GatherV2Tensordot/Shape:output:0Tensordot/free:output:0 Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:[
Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
Tensordot/GatherV2_1GatherV2Tensordot/Shape:output:0Tensordot/axes:output:0"Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:Y
Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: n
Tensordot/ProdProdTensordot/GatherV2:output:0Tensordot/Const:output:0*
T0*
_output_shapes
: [
Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: t
Tensordot/Prod_1ProdTensordot/GatherV2_1:output:0Tensordot/Const_1:output:0*
T0*
_output_shapes
: W
Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
Tensordot/concatConcatV2Tensordot/free:output:0Tensordot/axes:output:0Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:y
Tensordot/stackPackTensordot/Prod:output:0Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:y
Tensordot/transpose	TransposeinputsTensordot/concat:output:0*
T0*+
_output_shapes
:????????? ?
Tensordot/ReshapeReshapeTensordot/transpose:y:0Tensordot/stack:output:0*
T0*0
_output_shapes
:???????????????????
Tensordot/MatMulMatMulTensordot/Reshape:output:0 Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????[
Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:Y
Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
Tensordot/concat_1ConcatV2Tensordot/GatherV2:output:0Tensordot/Const_2:output:0 Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:?
	TensordotReshapeTensordot/MatMul:product:0Tensordot/concat_1:output:0*
T0*+
_output_shapes
:?????????r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0|
BiasAddBiasAddTensordot:output:0BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:?????????T
ReluReluBiasAdd:output:0*
T0*+
_output_shapes
:?????????e
IdentityIdentityRelu:activations:0^NoOp*
T0*+
_output_shapes
:?????????z
NoOpNoOp^BiasAdd/ReadVariableOp^Tensordot/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:????????? : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp24
Tensordot/ReadVariableOpTensordot/ReadVariableOp:S O
+
_output_shapes
:????????? 
 
_user_specified_nameinputs
?
?
"__inference_signature_wrapper_7110
input_20
unknown: 
	unknown_0: 
	unknown_1: 
	unknown_2:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinput_20unknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *(
f#R!
__inference__wrapped_model_6753s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:U Q
+
_output_shapes
:?????????
"
_user_specified_name
input_20"?L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*?
serving_default?
A
input_205
serving_default_input_20:0?????????@
dense_604
StatefulPartitionedCall:0?????????tensorflow/serving/predict:?@
?
layer-0
layer_with_weights-0
layer-1
layer_with_weights-1
layer-2
	optimizer
	variables
trainable_variables
regularization_losses
	keras_api
	__call__
*
&call_and_return_all_conditional_losses
_default_save_signature

signatures"
_tf_keras_network
"
_tf_keras_input_layer
?

kernel
bias
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses"
_tf_keras_layer
?

kernel
bias
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses"
_tf_keras_layer
?
iter

beta_1

beta_2
	 decay
!learning_ratem<m=m>m?v@vAvBvC"
	optimizer
<
0
1
2
3"
trackable_list_wrapper
<
0
1
2
3"
trackable_list_wrapper
 "
trackable_list_wrapper
?
"non_trainable_variables

#layers
$metrics
%layer_regularization_losses
&layer_metrics
	variables
trainable_variables
regularization_losses
	__call__
_default_save_signature
*
&call_and_return_all_conditional_losses
&
"call_and_return_conditional_losses"
_generic_user_object
?2?
&__inference_model_7_layer_call_fn_6846
&__inference_model_7_layer_call_fn_6966
&__inference_model_7_layer_call_fn_6979
&__inference_model_7_layer_call_fn_6919?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
A__inference_model_7_layer_call_and_return_conditional_losses_7037
A__inference_model_7_layer_call_and_return_conditional_losses_7095
A__inference_model_7_layer_call_and_return_conditional_losses_6933
A__inference_model_7_layer_call_and_return_conditional_losses_6947?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?B?
__inference__wrapped_model_6753input_20"?
???
FullArgSpec
args? 
varargsjargs
varkwjkwargs
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
,
'serving_default"
signature_map
!: 2dense_59/kernel
: 2dense_59/bias
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
(non_trainable_variables

)layers
*metrics
+layer_regularization_losses
,layer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
?2?
'__inference_dense_59_layer_call_fn_7119?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
B__inference_dense_59_layer_call_and_return_conditional_losses_7150?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
!: 2dense_60/kernel
:2dense_60/bias
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
-non_trainable_variables

.layers
/metrics
0layer_regularization_losses
1layer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
?2?
'__inference_dense_60_layer_call_fn_7159?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
B__inference_dense_60_layer_call_and_return_conditional_losses_7190?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
:	 (2	Adam/iter
: (2Adam/beta_1
: (2Adam/beta_2
: (2
Adam/decay
: (2Adam/learning_rate
 "
trackable_list_wrapper
5
0
1
2"
trackable_list_wrapper
.
20
31"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
?B?
"__inference_signature_wrapper_7110input_20"?
???
FullArgSpec
args? 
varargs
 
varkwjkwargs
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
N
	4total
	5count
6	variables
7	keras_api"
_tf_keras_metric
N
	8total
	9count
:	variables
;	keras_api"
_tf_keras_metric
:  (2total
:  (2count
.
40
51"
trackable_list_wrapper
-
6	variables"
_generic_user_object
:  (2total
:  (2count
.
80
91"
trackable_list_wrapper
-
:	variables"
_generic_user_object
&:$ 2Adam/dense_59/kernel/m
 : 2Adam/dense_59/bias/m
&:$ 2Adam/dense_60/kernel/m
 :2Adam/dense_60/bias/m
&:$ 2Adam/dense_59/kernel/v
 : 2Adam/dense_59/bias/v
&:$ 2Adam/dense_60/kernel/v
 :2Adam/dense_60/bias/v?
__inference__wrapped_model_6753v5?2
+?(
&?#
input_20?????????
? "7?4
2
dense_60&?#
dense_60??????????
B__inference_dense_59_layer_call_and_return_conditional_losses_7150d3?0
)?&
$?!
inputs?????????
? ")?&
?
0????????? 
? ?
'__inference_dense_59_layer_call_fn_7119W3?0
)?&
$?!
inputs?????????
? "?????????? ?
B__inference_dense_60_layer_call_and_return_conditional_losses_7190d3?0
)?&
$?!
inputs????????? 
? ")?&
?
0?????????
? ?
'__inference_dense_60_layer_call_fn_7159W3?0
)?&
$?!
inputs????????? 
? "???????????
A__inference_model_7_layer_call_and_return_conditional_losses_6933p=?:
3?0
&?#
input_20?????????
p 

 
? ")?&
?
0?????????
? ?
A__inference_model_7_layer_call_and_return_conditional_losses_6947p=?:
3?0
&?#
input_20?????????
p

 
? ")?&
?
0?????????
? ?
A__inference_model_7_layer_call_and_return_conditional_losses_7037n;?8
1?.
$?!
inputs?????????
p 

 
? ")?&
?
0?????????
? ?
A__inference_model_7_layer_call_and_return_conditional_losses_7095n;?8
1?.
$?!
inputs?????????
p

 
? ")?&
?
0?????????
? ?
&__inference_model_7_layer_call_fn_6846c=?:
3?0
&?#
input_20?????????
p 

 
? "???????????
&__inference_model_7_layer_call_fn_6919c=?:
3?0
&?#
input_20?????????
p

 
? "???????????
&__inference_model_7_layer_call_fn_6966a;?8
1?.
$?!
inputs?????????
p 

 
? "???????????
&__inference_model_7_layer_call_fn_6979a;?8
1?.
$?!
inputs?????????
p

 
? "???????????
"__inference_signature_wrapper_7110?A?>
? 
7?4
2
input_20&?#
input_20?????????"7?4
2
dense_60&?#
dense_60?????????