фѕ
Эо
B
AssignVariableOp
resource
value"dtype"
dtypetypeИ
~
BiasAdd

value"T	
bias"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
N
Cast	
x"SrcT	
y"DstT"
SrcTtype"
DstTtype"
Truncatebool( 
8
Const
output"dtype"
valuetensor"
dtypetype
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
delete_old_dirsbool(И
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
@
ReadVariableOp
resource
value"dtype"
dtypetypeИ
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
list(type)(0И
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0И
?
Select
	condition

t"T
e"T
output"T"	
Ttype
H
ShardedFilename
basename	
shard

num_shards
filename
9
Softmax
logits"T
softmax"T"
Ttype:
2
Ѕ
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
executor_typestring И®
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
Ц
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 И"serve*2.7.02v2.7.0-rc1-69-gc256c071bb28Фв
|
dense_32/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
РА* 
shared_namedense_32/kernel
u
#dense_32/kernel/Read/ReadVariableOpReadVariableOpdense_32/kernel* 
_output_shapes
:
РА*
dtype0
s
dense_32/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*
shared_namedense_32/bias
l
!dense_32/bias/Read/ReadVariableOpReadVariableOpdense_32/bias*
_output_shapes	
:А*
dtype0
|
dense_33/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
АА* 
shared_namedense_33/kernel
u
#dense_33/kernel/Read/ReadVariableOpReadVariableOpdense_33/kernel* 
_output_shapes
:
АА*
dtype0
s
dense_33/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*
shared_namedense_33/bias
l
!dense_33/bias/Read/ReadVariableOpReadVariableOpdense_33/bias*
_output_shapes	
:А*
dtype0
{
dense_34/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	А
* 
shared_namedense_34/kernel
t
#dense_34/kernel/Read/ReadVariableOpReadVariableOpdense_34/kernel*
_output_shapes
:	А
*
dtype0
r
dense_34/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*
shared_namedense_34/bias
k
!dense_34/bias/Read/ReadVariableOpReadVariableOpdense_34/bias*
_output_shapes
:
*
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
К
Adam/dense_32/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
РА*'
shared_nameAdam/dense_32/kernel/m
Г
*Adam/dense_32/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_32/kernel/m* 
_output_shapes
:
РА*
dtype0
Б
Adam/dense_32/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*%
shared_nameAdam/dense_32/bias/m
z
(Adam/dense_32/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_32/bias/m*
_output_shapes	
:А*
dtype0
К
Adam/dense_33/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
АА*'
shared_nameAdam/dense_33/kernel/m
Г
*Adam/dense_33/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_33/kernel/m* 
_output_shapes
:
АА*
dtype0
Б
Adam/dense_33/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*%
shared_nameAdam/dense_33/bias/m
z
(Adam/dense_33/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_33/bias/m*
_output_shapes	
:А*
dtype0
Й
Adam/dense_34/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	А
*'
shared_nameAdam/dense_34/kernel/m
В
*Adam/dense_34/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_34/kernel/m*
_output_shapes
:	А
*
dtype0
А
Adam/dense_34/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*%
shared_nameAdam/dense_34/bias/m
y
(Adam/dense_34/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_34/bias/m*
_output_shapes
:
*
dtype0
К
Adam/dense_32/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
РА*'
shared_nameAdam/dense_32/kernel/v
Г
*Adam/dense_32/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_32/kernel/v* 
_output_shapes
:
РА*
dtype0
Б
Adam/dense_32/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*%
shared_nameAdam/dense_32/bias/v
z
(Adam/dense_32/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_32/bias/v*
_output_shapes	
:А*
dtype0
К
Adam/dense_33/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
АА*'
shared_nameAdam/dense_33/kernel/v
Г
*Adam/dense_33/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_33/kernel/v* 
_output_shapes
:
АА*
dtype0
Б
Adam/dense_33/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*%
shared_nameAdam/dense_33/bias/v
z
(Adam/dense_33/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_33/bias/v*
_output_shapes	
:А*
dtype0
Й
Adam/dense_34/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	А
*'
shared_nameAdam/dense_34/kernel/v
В
*Adam/dense_34/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_34/kernel/v*
_output_shapes
:	А
*
dtype0
А
Adam/dense_34/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*%
shared_nameAdam/dense_34/bias/v
y
(Adam/dense_34/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_34/bias/v*
_output_shapes
:
*
dtype0

NoOpNoOp
ƒ'
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*€&
valueх&Bт& Bл&
у
layer-0
layer_with_weights-0
layer-1
layer_with_weights-1
layer-2
layer_with_weights-2
layer-3
	optimizer
	variables
trainable_variables
regularization_losses
		keras_api


signatures
R
	variables
trainable_variables
regularization_losses
	keras_api
h

kernel
bias
	variables
trainable_variables
regularization_losses
	keras_api
h

kernel
bias
	variables
trainable_variables
regularization_losses
	keras_api
h

kernel
bias
	variables
trainable_variables
regularization_losses
 	keras_api
ђ
!iter

"beta_1

#beta_2
	$decay
%learning_ratemJmKmLmMmNmOvPvQvRvSvTvU
*
0
1
2
3
4
5
*
0
1
2
3
4
5
 
≠
&non_trainable_variables

'layers
(metrics
)layer_regularization_losses
*layer_metrics
	variables
trainable_variables
regularization_losses
 
 
 
 
≠
+non_trainable_variables

,layers
-metrics
.layer_regularization_losses
/layer_metrics
	variables
trainable_variables
regularization_losses
[Y
VARIABLE_VALUEdense_32/kernel6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEdense_32/bias4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUE

0
1

0
1
 
≠
0non_trainable_variables

1layers
2metrics
3layer_regularization_losses
4layer_metrics
	variables
trainable_variables
regularization_losses
[Y
VARIABLE_VALUEdense_33/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEdense_33/bias4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE

0
1

0
1
 
≠
5non_trainable_variables

6layers
7metrics
8layer_regularization_losses
9layer_metrics
	variables
trainable_variables
regularization_losses
[Y
VARIABLE_VALUEdense_34/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEdense_34/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE

0
1

0
1
 
≠
:non_trainable_variables

;layers
<metrics
=layer_regularization_losses
>layer_metrics
	variables
trainable_variables
regularization_losses
HF
VARIABLE_VALUE	Adam/iter)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUE
LJ
VARIABLE_VALUEAdam/beta_1+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUE
LJ
VARIABLE_VALUEAdam/beta_2+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUE
JH
VARIABLE_VALUE
Adam/decay*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUE
ZX
VARIABLE_VALUEAdam/learning_rate2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUE
 

0
1
2
3

?0
@1
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
4
	Atotal
	Bcount
C	variables
D	keras_api
D
	Etotal
	Fcount
G
_fn_kwargs
H	variables
I	keras_api
OM
VARIABLE_VALUEtotal4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE
OM
VARIABLE_VALUEcount4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE

A0
B1

C	variables
QO
VARIABLE_VALUEtotal_14keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUE
QO
VARIABLE_VALUEcount_14keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUE
 

E0
F1

H	variables
~|
VARIABLE_VALUEAdam/dense_32/kernel/mRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_32/bias/mPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/dense_33/kernel/mRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_33/bias/mPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/dense_34/kernel/mRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_34/bias/mPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/dense_32/kernel/vRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_32/bias/vPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/dense_33/kernel/vRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_33/bias/vPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/dense_34/kernel/vRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_34/bias/vPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
К
serving_default_flatten_2_inputPlaceholder*+
_output_shapes
:€€€€€€€€€*
dtype0* 
shape:€€€€€€€€€
•
StatefulPartitionedCallStatefulPartitionedCallserving_default_flatten_2_inputdense_32/kerneldense_32/biasdense_33/kerneldense_33/biasdense_34/kerneldense_34/bias*
Tin
	2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€
*(
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8В *,
f'R%
#__inference_signature_wrapper_28513
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
™

StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename#dense_32/kernel/Read/ReadVariableOp!dense_32/bias/Read/ReadVariableOp#dense_33/kernel/Read/ReadVariableOp!dense_33/bias/Read/ReadVariableOp#dense_34/kernel/Read/ReadVariableOp!dense_34/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOptotal_1/Read/ReadVariableOpcount_1/Read/ReadVariableOp*Adam/dense_32/kernel/m/Read/ReadVariableOp(Adam/dense_32/bias/m/Read/ReadVariableOp*Adam/dense_33/kernel/m/Read/ReadVariableOp(Adam/dense_33/bias/m/Read/ReadVariableOp*Adam/dense_34/kernel/m/Read/ReadVariableOp(Adam/dense_34/bias/m/Read/ReadVariableOp*Adam/dense_32/kernel/v/Read/ReadVariableOp(Adam/dense_32/bias/v/Read/ReadVariableOp*Adam/dense_33/kernel/v/Read/ReadVariableOp(Adam/dense_33/bias/v/Read/ReadVariableOp*Adam/dense_34/kernel/v/Read/ReadVariableOp(Adam/dense_34/bias/v/Read/ReadVariableOpConst*(
Tin!
2	*
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
GPU 2J 8В *'
f"R 
__inference__traced_save_28779
Й
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamedense_32/kerneldense_32/biasdense_33/kerneldense_33/biasdense_34/kerneldense_34/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratetotalcounttotal_1count_1Adam/dense_32/kernel/mAdam/dense_32/bias/mAdam/dense_33/kernel/mAdam/dense_33/bias/mAdam/dense_34/kernel/mAdam/dense_34/bias/mAdam/dense_32/kernel/vAdam/dense_32/bias/vAdam/dense_33/kernel/vAdam/dense_33/bias/vAdam/dense_34/kernel/vAdam/dense_34/bias/v*'
Tin 
2*
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
GPU 2J 8В **
f%R#
!__inference__traced_restore_28870от
ё
Ц
G__inference_sequential_9_layer_call_and_return_conditional_losses_28326

inputs"
dense_32_28286:
РА
dense_32_28288:	А"
dense_33_28303:
АА
dense_33_28305:	А!
dense_34_28320:	А

dense_34_28322:

identityИҐ dense_32/StatefulPartitionedCallҐ dense_33/StatefulPartitionedCallҐ dense_34/StatefulPartitionedCallЇ
flatten_2/PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:€€€€€€€€€Р* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_flatten_2_layer_call_and_return_conditional_losses_28271К
 dense_32/StatefulPartitionedCallStatefulPartitionedCall"flatten_2/PartitionedCall:output:0dense_32_28286dense_32_28288*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:€€€€€€€€€А*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_dense_32_layer_call_and_return_conditional_losses_28285С
 dense_33/StatefulPartitionedCallStatefulPartitionedCall)dense_32/StatefulPartitionedCall:output:0dense_33_28303dense_33_28305*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:€€€€€€€€€А*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_dense_33_layer_call_and_return_conditional_losses_28302Р
 dense_34/StatefulPartitionedCallStatefulPartitionedCall)dense_33/StatefulPartitionedCall:output:0dense_34_28320dense_34_28322*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€
*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_dense_34_layer_call_and_return_conditional_losses_28319x
IdentityIdentity)dense_34/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€
ѓ
NoOpNoOp!^dense_32/StatefulPartitionedCall!^dense_33/StatefulPartitionedCall!^dense_34/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:€€€€€€€€€: : : : : : 2D
 dense_32/StatefulPartitionedCall dense_32/StatefulPartitionedCall2D
 dense_33/StatefulPartitionedCall dense_33/StatefulPartitionedCall2D
 dense_34/StatefulPartitionedCall dense_34/StatefulPartitionedCall:S O
+
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs
Ъ	
Х
,__inference_sequential_9_layer_call_fn_28448
flatten_2_input
unknown:
РА
	unknown_0:	А
	unknown_1:
АА
	unknown_2:	А
	unknown_3:	А

	unknown_4:

identityИҐStatefulPartitionedCallЩ
StatefulPartitionedCallStatefulPartitionedCallflatten_2_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
	2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€
*(
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8В *P
fKRI
G__inference_sequential_9_layer_call_and_return_conditional_losses_28416o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€
`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:€€€€€€€€€: : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:\ X
+
_output_shapes
:€€€€€€€€€
)
_user_specified_nameflatten_2_input
¶

ч
C__inference_dense_33_layer_call_and_return_conditional_losses_28655

inputs2
matmul_readvariableop_resource:
АА.
biasadd_readvariableop_resource:	А
identityИҐBiasAdd/ReadVariableOpҐMatMul/ReadVariableOpv
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
АА*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€Аs
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€АQ
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:€€€€€€€€€Аb
IdentityIdentityRelu:activations:0^NoOp*
T0*(
_output_shapes
:€€€€€€€€€Аw
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:€€€€€€€€€А: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:€€€€€€€€€А
 
_user_specified_nameinputs
Ы
П
G__inference_sequential_9_layer_call_and_return_conditional_losses_28575

inputs;
'dense_32_matmul_readvariableop_resource:
РА7
(dense_32_biasadd_readvariableop_resource:	А;
'dense_33_matmul_readvariableop_resource:
АА7
(dense_33_biasadd_readvariableop_resource:	А:
'dense_34_matmul_readvariableop_resource:	А
6
(dense_34_biasadd_readvariableop_resource:

identityИҐdense_32/BiasAdd/ReadVariableOpҐdense_32/MatMul/ReadVariableOpҐdense_33/BiasAdd/ReadVariableOpҐdense_33/MatMul/ReadVariableOpҐdense_34/BiasAdd/ReadVariableOpҐdense_34/MatMul/ReadVariableOp`
flatten_2/ConstConst*
_output_shapes
:*
dtype0*
valueB"€€€€  q
flatten_2/ReshapeReshapeinputsflatten_2/Const:output:0*
T0*(
_output_shapes
:€€€€€€€€€Рs
dense_32/CastCastflatten_2/Reshape:output:0*

DstT0*

SrcT0*(
_output_shapes
:€€€€€€€€€РИ
dense_32/MatMul/ReadVariableOpReadVariableOp'dense_32_matmul_readvariableop_resource* 
_output_shapes
:
РА*
dtype0З
dense_32/MatMulMatMuldense_32/Cast:y:0&dense_32/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€АЕ
dense_32/BiasAdd/ReadVariableOpReadVariableOp(dense_32_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0Т
dense_32/BiasAddBiasAdddense_32/MatMul:product:0'dense_32/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€Аc
dense_32/ReluReludense_32/BiasAdd:output:0*
T0*(
_output_shapes
:€€€€€€€€€АИ
dense_33/MatMul/ReadVariableOpReadVariableOp'dense_33_matmul_readvariableop_resource* 
_output_shapes
:
АА*
dtype0С
dense_33/MatMulMatMuldense_32/Relu:activations:0&dense_33/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€АЕ
dense_33/BiasAdd/ReadVariableOpReadVariableOp(dense_33_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0Т
dense_33/BiasAddBiasAdddense_33/MatMul:product:0'dense_33/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€Аc
dense_33/ReluReludense_33/BiasAdd:output:0*
T0*(
_output_shapes
:€€€€€€€€€АЗ
dense_34/MatMul/ReadVariableOpReadVariableOp'dense_34_matmul_readvariableop_resource*
_output_shapes
:	А
*
dtype0Р
dense_34/MatMulMatMuldense_33/Relu:activations:0&dense_34/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€
Д
dense_34/BiasAdd/ReadVariableOpReadVariableOp(dense_34_biasadd_readvariableop_resource*
_output_shapes
:
*
dtype0С
dense_34/BiasAddBiasAdddense_34/MatMul:product:0'dense_34/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€
h
dense_34/SoftmaxSoftmaxdense_34/BiasAdd:output:0*
T0*'
_output_shapes
:€€€€€€€€€
i
IdentityIdentitydense_34/Softmax:softmax:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€
П
NoOpNoOp ^dense_32/BiasAdd/ReadVariableOp^dense_32/MatMul/ReadVariableOp ^dense_33/BiasAdd/ReadVariableOp^dense_33/MatMul/ReadVariableOp ^dense_34/BiasAdd/ReadVariableOp^dense_34/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:€€€€€€€€€: : : : : : 2B
dense_32/BiasAdd/ReadVariableOpdense_32/BiasAdd/ReadVariableOp2@
dense_32/MatMul/ReadVariableOpdense_32/MatMul/ReadVariableOp2B
dense_33/BiasAdd/ReadVariableOpdense_33/BiasAdd/ReadVariableOp2@
dense_33/MatMul/ReadVariableOpdense_33/MatMul/ReadVariableOp2B
dense_34/BiasAdd/ReadVariableOpdense_34/BiasAdd/ReadVariableOp2@
dense_34/MatMul/ReadVariableOpdense_34/MatMul/ReadVariableOp:S O
+
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs
Њ
`
D__inference_flatten_2_layer_call_and_return_conditional_losses_28614

inputs
identityV
ConstConst*
_output_shapes
:*
dtype0*
valueB"€€€€  ]
ReshapeReshapeinputsConst:output:0*
T0*(
_output_shapes
:€€€€€€€€€РY
IdentityIdentityReshape:output:0*
T0*(
_output_shapes
:€€€€€€€€€Р"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:€€€€€€€€€:S O
+
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs
«
Ш
(__inference_dense_33_layer_call_fn_28644

inputs
unknown:
АА
	unknown_0:	А
identityИҐStatefulPartitionedCallў
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:€€€€€€€€€А*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_dense_33_layer_call_and_return_conditional_losses_28302p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:€€€€€€€€€А`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:€€€€€€€€€А: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:€€€€€€€€€А
 
_user_specified_nameinputs
І
E
)__inference_flatten_2_layer_call_fn_28608

inputs
identity∞
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:€€€€€€€€€Р* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_flatten_2_layer_call_and_return_conditional_losses_28271a
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:€€€€€€€€€Р"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:€€€€€€€€€:S O
+
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs
ё
Ц
G__inference_sequential_9_layer_call_and_return_conditional_losses_28416

inputs"
dense_32_28400:
РА
dense_32_28402:	А"
dense_33_28405:
АА
dense_33_28407:	А!
dense_34_28410:	А

dense_34_28412:

identityИҐ dense_32/StatefulPartitionedCallҐ dense_33/StatefulPartitionedCallҐ dense_34/StatefulPartitionedCallЇ
flatten_2/PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:€€€€€€€€€Р* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_flatten_2_layer_call_and_return_conditional_losses_28271К
 dense_32/StatefulPartitionedCallStatefulPartitionedCall"flatten_2/PartitionedCall:output:0dense_32_28400dense_32_28402*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:€€€€€€€€€А*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_dense_32_layer_call_and_return_conditional_losses_28285С
 dense_33/StatefulPartitionedCallStatefulPartitionedCall)dense_32/StatefulPartitionedCall:output:0dense_33_28405dense_33_28407*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:€€€€€€€€€А*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_dense_33_layer_call_and_return_conditional_losses_28302Р
 dense_34/StatefulPartitionedCallStatefulPartitionedCall)dense_33/StatefulPartitionedCall:output:0dense_34_28410dense_34_28412*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€
*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_dense_34_layer_call_and_return_conditional_losses_28319x
IdentityIdentity)dense_34/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€
ѓ
NoOpNoOp!^dense_32/StatefulPartitionedCall!^dense_33/StatefulPartitionedCall!^dense_34/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:€€€€€€€€€: : : : : : 2D
 dense_32/StatefulPartitionedCall dense_32/StatefulPartitionedCall2D
 dense_33/StatefulPartitionedCall dense_33/StatefulPartitionedCall2D
 dense_34/StatefulPartitionedCall dense_34/StatefulPartitionedCall:S O
+
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs
Ёl
Ж
!__inference__traced_restore_28870
file_prefix4
 assignvariableop_dense_32_kernel:
РА/
 assignvariableop_1_dense_32_bias:	А6
"assignvariableop_2_dense_33_kernel:
АА/
 assignvariableop_3_dense_33_bias:	А5
"assignvariableop_4_dense_34_kernel:	А
.
 assignvariableop_5_dense_34_bias:
&
assignvariableop_6_adam_iter:	 (
assignvariableop_7_adam_beta_1: (
assignvariableop_8_adam_beta_2: '
assignvariableop_9_adam_decay: 0
&assignvariableop_10_adam_learning_rate: #
assignvariableop_11_total: #
assignvariableop_12_count: %
assignvariableop_13_total_1: %
assignvariableop_14_count_1: >
*assignvariableop_15_adam_dense_32_kernel_m:
РА7
(assignvariableop_16_adam_dense_32_bias_m:	А>
*assignvariableop_17_adam_dense_33_kernel_m:
АА7
(assignvariableop_18_adam_dense_33_bias_m:	А=
*assignvariableop_19_adam_dense_34_kernel_m:	А
6
(assignvariableop_20_adam_dense_34_bias_m:
>
*assignvariableop_21_adam_dense_32_kernel_v:
РА7
(assignvariableop_22_adam_dense_32_bias_v:	А>
*assignvariableop_23_adam_dense_33_kernel_v:
АА7
(assignvariableop_24_adam_dense_33_bias_v:	А=
*assignvariableop_25_adam_dense_34_kernel_v:	А
6
(assignvariableop_26_adam_dense_34_bias_v:

identity_28ИҐAssignVariableOpҐAssignVariableOp_1ҐAssignVariableOp_10ҐAssignVariableOp_11ҐAssignVariableOp_12ҐAssignVariableOp_13ҐAssignVariableOp_14ҐAssignVariableOp_15ҐAssignVariableOp_16ҐAssignVariableOp_17ҐAssignVariableOp_18ҐAssignVariableOp_19ҐAssignVariableOp_2ҐAssignVariableOp_20ҐAssignVariableOp_21ҐAssignVariableOp_22ҐAssignVariableOp_23ҐAssignVariableOp_24ҐAssignVariableOp_25ҐAssignVariableOp_26ҐAssignVariableOp_3ҐAssignVariableOp_4ҐAssignVariableOp_5ҐAssignVariableOp_6ҐAssignVariableOp_7ҐAssignVariableOp_8ҐAssignVariableOp_9ш
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*Ю
valueФBСB6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH®
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*K
valueBB@B B B B B B B B B B B B B B B B B B B B B B B B B B B B Ђ
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*Д
_output_shapesr
p::::::::::::::::::::::::::::**
dtypes 
2	[
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:Л
AssignVariableOpAssignVariableOp assignvariableop_dense_32_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:П
AssignVariableOp_1AssignVariableOp assignvariableop_1_dense_32_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:С
AssignVariableOp_2AssignVariableOp"assignvariableop_2_dense_33_kernelIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:П
AssignVariableOp_3AssignVariableOp assignvariableop_3_dense_33_biasIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:С
AssignVariableOp_4AssignVariableOp"assignvariableop_4_dense_34_kernelIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:П
AssignVariableOp_5AssignVariableOp assignvariableop_5_dense_34_biasIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0	*
_output_shapes
:Л
AssignVariableOp_6AssignVariableOpassignvariableop_6_adam_iterIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	]

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:Н
AssignVariableOp_7AssignVariableOpassignvariableop_7_adam_beta_1Identity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:Н
AssignVariableOp_8AssignVariableOpassignvariableop_8_adam_beta_2Identity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:М
AssignVariableOp_9AssignVariableOpassignvariableop_9_adam_decayIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:Ч
AssignVariableOp_10AssignVariableOp&assignvariableop_10_adam_learning_rateIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:К
AssignVariableOp_11AssignVariableOpassignvariableop_11_totalIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:К
AssignVariableOp_12AssignVariableOpassignvariableop_12_countIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:М
AssignVariableOp_13AssignVariableOpassignvariableop_13_total_1Identity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:М
AssignVariableOp_14AssignVariableOpassignvariableop_14_count_1Identity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:Ы
AssignVariableOp_15AssignVariableOp*assignvariableop_15_adam_dense_32_kernel_mIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:Щ
AssignVariableOp_16AssignVariableOp(assignvariableop_16_adam_dense_32_bias_mIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:Ы
AssignVariableOp_17AssignVariableOp*assignvariableop_17_adam_dense_33_kernel_mIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:Щ
AssignVariableOp_18AssignVariableOp(assignvariableop_18_adam_dense_33_bias_mIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:Ы
AssignVariableOp_19AssignVariableOp*assignvariableop_19_adam_dense_34_kernel_mIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:Щ
AssignVariableOp_20AssignVariableOp(assignvariableop_20_adam_dense_34_bias_mIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:Ы
AssignVariableOp_21AssignVariableOp*assignvariableop_21_adam_dense_32_kernel_vIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:Щ
AssignVariableOp_22AssignVariableOp(assignvariableop_22_adam_dense_32_bias_vIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:Ы
AssignVariableOp_23AssignVariableOp*assignvariableop_23_adam_dense_33_kernel_vIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:Щ
AssignVariableOp_24AssignVariableOp(assignvariableop_24_adam_dense_33_bias_vIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:Ы
AssignVariableOp_25AssignVariableOp*assignvariableop_25_adam_dense_34_kernel_vIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:Щ
AssignVariableOp_26AssignVariableOp(assignvariableop_26_adam_dense_34_bias_vIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype01
NoOpNoOp"/device:CPU:0*
_output_shapes
 °
Identity_27Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: W
Identity_28IdentityIdentity_27:output:0^NoOp_1*
T0*
_output_shapes
: О
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*"
_acd_function_control_output(*
_output_shapes
 "#
identity_28Identity_28:output:0*K
_input_shapes:
8: : : : : : : : : : : : : : : : : : : : : : : : : : : : 2$
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
AssignVariableOp_20AssignVariableOp_202*
AssignVariableOp_21AssignVariableOp_212*
AssignVariableOp_22AssignVariableOp_222*
AssignVariableOp_23AssignVariableOp_232*
AssignVariableOp_24AssignVariableOp_242*
AssignVariableOp_25AssignVariableOp_252*
AssignVariableOp_26AssignVariableOp_262(
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
А
ч
C__inference_dense_32_layer_call_and_return_conditional_losses_28635

inputs2
matmul_readvariableop_resource:
РА.
biasadd_readvariableop_resource:	А
identityИҐBiasAdd/ReadVariableOpҐMatMul/ReadVariableOpV
CastCastinputs*

DstT0*

SrcT0*(
_output_shapes
:€€€€€€€€€Рv
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
РА*
dtype0l
MatMulMatMulCast:y:0MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€Аs
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€АQ
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:€€€€€€€€€Аb
IdentityIdentityRelu:activations:0^NoOp*
T0*(
_output_shapes
:€€€€€€€€€Аw
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:€€€€€€€€€Р: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:€€€€€€€€€Р
 
_user_specified_nameinputs
Ъ	
Х
,__inference_sequential_9_layer_call_fn_28341
flatten_2_input
unknown:
РА
	unknown_0:	А
	unknown_1:
АА
	unknown_2:	А
	unknown_3:	А

	unknown_4:

identityИҐStatefulPartitionedCallЩ
StatefulPartitionedCallStatefulPartitionedCallflatten_2_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
	2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€
*(
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8В *P
fKRI
G__inference_sequential_9_layer_call_and_return_conditional_losses_28326o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€
`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:€€€€€€€€€: : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:\ X
+
_output_shapes
:€€€€€€€€€
)
_user_specified_nameflatten_2_input
щ
Я
G__inference_sequential_9_layer_call_and_return_conditional_losses_28488
flatten_2_input"
dense_32_28472:
РА
dense_32_28474:	А"
dense_33_28477:
АА
dense_33_28479:	А!
dense_34_28482:	А

dense_34_28484:

identityИҐ dense_32/StatefulPartitionedCallҐ dense_33/StatefulPartitionedCallҐ dense_34/StatefulPartitionedCall√
flatten_2/PartitionedCallPartitionedCallflatten_2_input*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:€€€€€€€€€Р* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_flatten_2_layer_call_and_return_conditional_losses_28271К
 dense_32/StatefulPartitionedCallStatefulPartitionedCall"flatten_2/PartitionedCall:output:0dense_32_28472dense_32_28474*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:€€€€€€€€€А*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_dense_32_layer_call_and_return_conditional_losses_28285С
 dense_33/StatefulPartitionedCallStatefulPartitionedCall)dense_32/StatefulPartitionedCall:output:0dense_33_28477dense_33_28479*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:€€€€€€€€€А*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_dense_33_layer_call_and_return_conditional_losses_28302Р
 dense_34/StatefulPartitionedCallStatefulPartitionedCall)dense_33/StatefulPartitionedCall:output:0dense_34_28482dense_34_28484*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€
*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_dense_34_layer_call_and_return_conditional_losses_28319x
IdentityIdentity)dense_34/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€
ѓ
NoOpNoOp!^dense_32/StatefulPartitionedCall!^dense_33/StatefulPartitionedCall!^dense_34/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:€€€€€€€€€: : : : : : 2D
 dense_32/StatefulPartitionedCall dense_32/StatefulPartitionedCall2D
 dense_33/StatefulPartitionedCall dense_33/StatefulPartitionedCall2D
 dense_34/StatefulPartitionedCall dense_34/StatefulPartitionedCall:\ X
+
_output_shapes
:€€€€€€€€€
)
_user_specified_nameflatten_2_input
Ы
П
G__inference_sequential_9_layer_call_and_return_conditional_losses_28603

inputs;
'dense_32_matmul_readvariableop_resource:
РА7
(dense_32_biasadd_readvariableop_resource:	А;
'dense_33_matmul_readvariableop_resource:
АА7
(dense_33_biasadd_readvariableop_resource:	А:
'dense_34_matmul_readvariableop_resource:	А
6
(dense_34_biasadd_readvariableop_resource:

identityИҐdense_32/BiasAdd/ReadVariableOpҐdense_32/MatMul/ReadVariableOpҐdense_33/BiasAdd/ReadVariableOpҐdense_33/MatMul/ReadVariableOpҐdense_34/BiasAdd/ReadVariableOpҐdense_34/MatMul/ReadVariableOp`
flatten_2/ConstConst*
_output_shapes
:*
dtype0*
valueB"€€€€  q
flatten_2/ReshapeReshapeinputsflatten_2/Const:output:0*
T0*(
_output_shapes
:€€€€€€€€€Рs
dense_32/CastCastflatten_2/Reshape:output:0*

DstT0*

SrcT0*(
_output_shapes
:€€€€€€€€€РИ
dense_32/MatMul/ReadVariableOpReadVariableOp'dense_32_matmul_readvariableop_resource* 
_output_shapes
:
РА*
dtype0З
dense_32/MatMulMatMuldense_32/Cast:y:0&dense_32/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€АЕ
dense_32/BiasAdd/ReadVariableOpReadVariableOp(dense_32_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0Т
dense_32/BiasAddBiasAdddense_32/MatMul:product:0'dense_32/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€Аc
dense_32/ReluReludense_32/BiasAdd:output:0*
T0*(
_output_shapes
:€€€€€€€€€АИ
dense_33/MatMul/ReadVariableOpReadVariableOp'dense_33_matmul_readvariableop_resource* 
_output_shapes
:
АА*
dtype0С
dense_33/MatMulMatMuldense_32/Relu:activations:0&dense_33/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€АЕ
dense_33/BiasAdd/ReadVariableOpReadVariableOp(dense_33_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0Т
dense_33/BiasAddBiasAdddense_33/MatMul:product:0'dense_33/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€Аc
dense_33/ReluReludense_33/BiasAdd:output:0*
T0*(
_output_shapes
:€€€€€€€€€АЗ
dense_34/MatMul/ReadVariableOpReadVariableOp'dense_34_matmul_readvariableop_resource*
_output_shapes
:	А
*
dtype0Р
dense_34/MatMulMatMuldense_33/Relu:activations:0&dense_34/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€
Д
dense_34/BiasAdd/ReadVariableOpReadVariableOp(dense_34_biasadd_readvariableop_resource*
_output_shapes
:
*
dtype0С
dense_34/BiasAddBiasAdddense_34/MatMul:product:0'dense_34/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€
h
dense_34/SoftmaxSoftmaxdense_34/BiasAdd:output:0*
T0*'
_output_shapes
:€€€€€€€€€
i
IdentityIdentitydense_34/Softmax:softmax:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€
П
NoOpNoOp ^dense_32/BiasAdd/ReadVariableOp^dense_32/MatMul/ReadVariableOp ^dense_33/BiasAdd/ReadVariableOp^dense_33/MatMul/ReadVariableOp ^dense_34/BiasAdd/ReadVariableOp^dense_34/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:€€€€€€€€€: : : : : : 2B
dense_32/BiasAdd/ReadVariableOpdense_32/BiasAdd/ReadVariableOp2@
dense_32/MatMul/ReadVariableOpdense_32/MatMul/ReadVariableOp2B
dense_33/BiasAdd/ReadVariableOpdense_33/BiasAdd/ReadVariableOp2@
dense_33/MatMul/ReadVariableOpdense_33/MatMul/ReadVariableOp2B
dense_34/BiasAdd/ReadVariableOpdense_34/BiasAdd/ReadVariableOp2@
dense_34/MatMul/ReadVariableOpdense_34/MatMul/ReadVariableOp:S O
+
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs
£

х
C__inference_dense_34_layer_call_and_return_conditional_losses_28675

inputs1
matmul_readvariableop_resource:	А
-
biasadd_readvariableop_resource:

identityИҐBiasAdd/ReadVariableOpҐMatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	А
*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:
*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€
V
SoftmaxSoftmaxBiasAdd:output:0*
T0*'
_output_shapes
:€€€€€€€€€
`
IdentityIdentitySoftmax:softmax:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€
w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:€€€€€€€€€А: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:€€€€€€€€€А
 
_user_specified_nameinputs
€
М
,__inference_sequential_9_layer_call_fn_28530

inputs
unknown:
РА
	unknown_0:	А
	unknown_1:
АА
	unknown_2:	А
	unknown_3:	А

	unknown_4:

identityИҐStatefulPartitionedCallР
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
	2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€
*(
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8В *P
fKRI
G__inference_sequential_9_layer_call_and_return_conditional_losses_28326o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€
`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:€€€€€€€€€: : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs
А
ч
C__inference_dense_32_layer_call_and_return_conditional_losses_28285

inputs2
matmul_readvariableop_resource:
РА.
biasadd_readvariableop_resource:	А
identityИҐBiasAdd/ReadVariableOpҐMatMul/ReadVariableOpV
CastCastinputs*

DstT0*

SrcT0*(
_output_shapes
:€€€€€€€€€Рv
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
РА*
dtype0l
MatMulMatMulCast:y:0MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€Аs
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€АQ
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:€€€€€€€€€Аb
IdentityIdentityRelu:activations:0^NoOp*
T0*(
_output_shapes
:€€€€€€€€€Аw
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:€€€€€€€€€Р: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:€€€€€€€€€Р
 
_user_specified_nameinputs
щ
Я
G__inference_sequential_9_layer_call_and_return_conditional_losses_28468
flatten_2_input"
dense_32_28452:
РА
dense_32_28454:	А"
dense_33_28457:
АА
dense_33_28459:	А!
dense_34_28462:	А

dense_34_28464:

identityИҐ dense_32/StatefulPartitionedCallҐ dense_33/StatefulPartitionedCallҐ dense_34/StatefulPartitionedCall√
flatten_2/PartitionedCallPartitionedCallflatten_2_input*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:€€€€€€€€€Р* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_flatten_2_layer_call_and_return_conditional_losses_28271К
 dense_32/StatefulPartitionedCallStatefulPartitionedCall"flatten_2/PartitionedCall:output:0dense_32_28452dense_32_28454*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:€€€€€€€€€А*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_dense_32_layer_call_and_return_conditional_losses_28285С
 dense_33/StatefulPartitionedCallStatefulPartitionedCall)dense_32/StatefulPartitionedCall:output:0dense_33_28457dense_33_28459*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:€€€€€€€€€А*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_dense_33_layer_call_and_return_conditional_losses_28302Р
 dense_34/StatefulPartitionedCallStatefulPartitionedCall)dense_33/StatefulPartitionedCall:output:0dense_34_28462dense_34_28464*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€
*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_dense_34_layer_call_and_return_conditional_losses_28319x
IdentityIdentity)dense_34/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€
ѓ
NoOpNoOp!^dense_32/StatefulPartitionedCall!^dense_33/StatefulPartitionedCall!^dense_34/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:€€€€€€€€€: : : : : : 2D
 dense_32/StatefulPartitionedCall dense_32/StatefulPartitionedCall2D
 dense_33/StatefulPartitionedCall dense_33/StatefulPartitionedCall2D
 dense_34/StatefulPartitionedCall dense_34/StatefulPartitionedCall:\ X
+
_output_shapes
:€€€€€€€€€
)
_user_specified_nameflatten_2_input
Г<
Й
__inference__traced_save_28779
file_prefix.
*savev2_dense_32_kernel_read_readvariableop,
(savev2_dense_32_bias_read_readvariableop.
*savev2_dense_33_kernel_read_readvariableop,
(savev2_dense_33_bias_read_readvariableop.
*savev2_dense_34_kernel_read_readvariableop,
(savev2_dense_34_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop&
"savev2_total_1_read_readvariableop&
"savev2_count_1_read_readvariableop5
1savev2_adam_dense_32_kernel_m_read_readvariableop3
/savev2_adam_dense_32_bias_m_read_readvariableop5
1savev2_adam_dense_33_kernel_m_read_readvariableop3
/savev2_adam_dense_33_bias_m_read_readvariableop5
1savev2_adam_dense_34_kernel_m_read_readvariableop3
/savev2_adam_dense_34_bias_m_read_readvariableop5
1savev2_adam_dense_32_kernel_v_read_readvariableop3
/savev2_adam_dense_32_bias_v_read_readvariableop5
1savev2_adam_dense_33_kernel_v_read_readvariableop3
/savev2_adam_dense_33_bias_v_read_readvariableop5
1savev2_adam_dense_34_kernel_v_read_readvariableop3
/savev2_adam_dense_34_bias_v_read_readvariableop
savev2_const

identity_1ИҐMergeV2Checkpointsw
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
_temp/partБ
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
value	B : У
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: х
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*Ю
valueФBСB6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH•
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*K
valueBB@B B B B B B B B B B B B B B B B B B B B B B B B B B B B э

SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0*savev2_dense_32_kernel_read_readvariableop(savev2_dense_32_bias_read_readvariableop*savev2_dense_33_kernel_read_readvariableop(savev2_dense_33_bias_read_readvariableop*savev2_dense_34_kernel_read_readvariableop(savev2_dense_34_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableop1savev2_adam_dense_32_kernel_m_read_readvariableop/savev2_adam_dense_32_bias_m_read_readvariableop1savev2_adam_dense_33_kernel_m_read_readvariableop/savev2_adam_dense_33_bias_m_read_readvariableop1savev2_adam_dense_34_kernel_m_read_readvariableop/savev2_adam_dense_34_bias_m_read_readvariableop1savev2_adam_dense_32_kernel_v_read_readvariableop/savev2_adam_dense_32_bias_v_read_readvariableop1savev2_adam_dense_33_kernel_v_read_readvariableop/savev2_adam_dense_33_bias_v_read_readvariableop1savev2_adam_dense_34_kernel_v_read_readvariableop/savev2_adam_dense_34_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 **
dtypes 
2	Р
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:Л
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

identity_1Identity_1:output:0*–
_input_shapesЊ
ї: :
РА:А:
АА:А:	А
:
: : : : : : : : : :
РА:А:
АА:А:	А
:
:
РА:А:
АА:А:	А
:
: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:&"
 
_output_shapes
:
РА:!

_output_shapes	
:А:&"
 
_output_shapes
:
АА:!

_output_shapes	
:А:%!

_output_shapes
:	А
: 

_output_shapes
:
:
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
: :

_output_shapes
: :

_output_shapes
: :&"
 
_output_shapes
:
РА:!

_output_shapes	
:А:&"
 
_output_shapes
:
АА:!

_output_shapes	
:А:%!

_output_shapes
:	А
: 

_output_shapes
:
:&"
 
_output_shapes
:
РА:!

_output_shapes	
:А:&"
 
_output_shapes
:
АА:!

_output_shapes	
:А:%!

_output_shapes
:	А
: 

_output_shapes
:
:

_output_shapes
: 
Ї&
Н
 __inference__wrapped_model_28258
flatten_2_inputH
4sequential_9_dense_32_matmul_readvariableop_resource:
РАD
5sequential_9_dense_32_biasadd_readvariableop_resource:	АH
4sequential_9_dense_33_matmul_readvariableop_resource:
ААD
5sequential_9_dense_33_biasadd_readvariableop_resource:	АG
4sequential_9_dense_34_matmul_readvariableop_resource:	А
C
5sequential_9_dense_34_biasadd_readvariableop_resource:

identityИҐ,sequential_9/dense_32/BiasAdd/ReadVariableOpҐ+sequential_9/dense_32/MatMul/ReadVariableOpҐ,sequential_9/dense_33/BiasAdd/ReadVariableOpҐ+sequential_9/dense_33/MatMul/ReadVariableOpҐ,sequential_9/dense_34/BiasAdd/ReadVariableOpҐ+sequential_9/dense_34/MatMul/ReadVariableOpm
sequential_9/flatten_2/ConstConst*
_output_shapes
:*
dtype0*
valueB"€€€€  Ф
sequential_9/flatten_2/ReshapeReshapeflatten_2_input%sequential_9/flatten_2/Const:output:0*
T0*(
_output_shapes
:€€€€€€€€€РН
sequential_9/dense_32/CastCast'sequential_9/flatten_2/Reshape:output:0*

DstT0*

SrcT0*(
_output_shapes
:€€€€€€€€€РҐ
+sequential_9/dense_32/MatMul/ReadVariableOpReadVariableOp4sequential_9_dense_32_matmul_readvariableop_resource* 
_output_shapes
:
РА*
dtype0Ѓ
sequential_9/dense_32/MatMulMatMulsequential_9/dense_32/Cast:y:03sequential_9/dense_32/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€АЯ
,sequential_9/dense_32/BiasAdd/ReadVariableOpReadVariableOp5sequential_9_dense_32_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0є
sequential_9/dense_32/BiasAddBiasAdd&sequential_9/dense_32/MatMul:product:04sequential_9/dense_32/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А}
sequential_9/dense_32/ReluRelu&sequential_9/dense_32/BiasAdd:output:0*
T0*(
_output_shapes
:€€€€€€€€€АҐ
+sequential_9/dense_33/MatMul/ReadVariableOpReadVariableOp4sequential_9_dense_33_matmul_readvariableop_resource* 
_output_shapes
:
АА*
dtype0Є
sequential_9/dense_33/MatMulMatMul(sequential_9/dense_32/Relu:activations:03sequential_9/dense_33/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€АЯ
,sequential_9/dense_33/BiasAdd/ReadVariableOpReadVariableOp5sequential_9_dense_33_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0є
sequential_9/dense_33/BiasAddBiasAdd&sequential_9/dense_33/MatMul:product:04sequential_9/dense_33/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А}
sequential_9/dense_33/ReluRelu&sequential_9/dense_33/BiasAdd:output:0*
T0*(
_output_shapes
:€€€€€€€€€А°
+sequential_9/dense_34/MatMul/ReadVariableOpReadVariableOp4sequential_9_dense_34_matmul_readvariableop_resource*
_output_shapes
:	А
*
dtype0Ј
sequential_9/dense_34/MatMulMatMul(sequential_9/dense_33/Relu:activations:03sequential_9/dense_34/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€
Ю
,sequential_9/dense_34/BiasAdd/ReadVariableOpReadVariableOp5sequential_9_dense_34_biasadd_readvariableop_resource*
_output_shapes
:
*
dtype0Є
sequential_9/dense_34/BiasAddBiasAdd&sequential_9/dense_34/MatMul:product:04sequential_9/dense_34/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€
В
sequential_9/dense_34/SoftmaxSoftmax&sequential_9/dense_34/BiasAdd:output:0*
T0*'
_output_shapes
:€€€€€€€€€
v
IdentityIdentity'sequential_9/dense_34/Softmax:softmax:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€
Ё
NoOpNoOp-^sequential_9/dense_32/BiasAdd/ReadVariableOp,^sequential_9/dense_32/MatMul/ReadVariableOp-^sequential_9/dense_33/BiasAdd/ReadVariableOp,^sequential_9/dense_33/MatMul/ReadVariableOp-^sequential_9/dense_34/BiasAdd/ReadVariableOp,^sequential_9/dense_34/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:€€€€€€€€€: : : : : : 2\
,sequential_9/dense_32/BiasAdd/ReadVariableOp,sequential_9/dense_32/BiasAdd/ReadVariableOp2Z
+sequential_9/dense_32/MatMul/ReadVariableOp+sequential_9/dense_32/MatMul/ReadVariableOp2\
,sequential_9/dense_33/BiasAdd/ReadVariableOp,sequential_9/dense_33/BiasAdd/ReadVariableOp2Z
+sequential_9/dense_33/MatMul/ReadVariableOp+sequential_9/dense_33/MatMul/ReadVariableOp2\
,sequential_9/dense_34/BiasAdd/ReadVariableOp,sequential_9/dense_34/BiasAdd/ReadVariableOp2Z
+sequential_9/dense_34/MatMul/ReadVariableOp+sequential_9/dense_34/MatMul/ReadVariableOp:\ X
+
_output_shapes
:€€€€€€€€€
)
_user_specified_nameflatten_2_input
к
М
#__inference_signature_wrapper_28513
flatten_2_input
unknown:
РА
	unknown_0:	А
	unknown_1:
АА
	unknown_2:	А
	unknown_3:	А

	unknown_4:

identityИҐStatefulPartitionedCallт
StatefulPartitionedCallStatefulPartitionedCallflatten_2_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
	2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€
*(
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8В *)
f$R"
 __inference__wrapped_model_28258o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€
`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:€€€€€€€€€: : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:\ X
+
_output_shapes
:€€€€€€€€€
)
_user_specified_nameflatten_2_input
£

х
C__inference_dense_34_layer_call_and_return_conditional_losses_28319

inputs1
matmul_readvariableop_resource:	А
-
biasadd_readvariableop_resource:

identityИҐBiasAdd/ReadVariableOpҐMatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	А
*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:
*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€
V
SoftmaxSoftmaxBiasAdd:output:0*
T0*'
_output_shapes
:€€€€€€€€€
`
IdentityIdentitySoftmax:softmax:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€
w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:€€€€€€€€€А: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:€€€€€€€€€А
 
_user_specified_nameinputs
«
Ш
(__inference_dense_32_layer_call_fn_28623

inputs
unknown:
РА
	unknown_0:	А
identityИҐStatefulPartitionedCallў
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:€€€€€€€€€А*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_dense_32_layer_call_and_return_conditional_losses_28285p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:€€€€€€€€€А`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:€€€€€€€€€Р: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:€€€€€€€€€Р
 
_user_specified_nameinputs
Њ
`
D__inference_flatten_2_layer_call_and_return_conditional_losses_28271

inputs
identityV
ConstConst*
_output_shapes
:*
dtype0*
valueB"€€€€  ]
ReshapeReshapeinputsConst:output:0*
T0*(
_output_shapes
:€€€€€€€€€РY
IdentityIdentityReshape:output:0*
T0*(
_output_shapes
:€€€€€€€€€Р"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:€€€€€€€€€:S O
+
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs
¶

ч
C__inference_dense_33_layer_call_and_return_conditional_losses_28302

inputs2
matmul_readvariableop_resource:
АА.
biasadd_readvariableop_resource:	А
identityИҐBiasAdd/ReadVariableOpҐMatMul/ReadVariableOpv
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
АА*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€Аs
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€АQ
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:€€€€€€€€€Аb
IdentityIdentityRelu:activations:0^NoOp*
T0*(
_output_shapes
:€€€€€€€€€Аw
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:€€€€€€€€€А: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:€€€€€€€€€А
 
_user_specified_nameinputs
€
М
,__inference_sequential_9_layer_call_fn_28547

inputs
unknown:
РА
	unknown_0:	А
	unknown_1:
АА
	unknown_2:	А
	unknown_3:	А

	unknown_4:

identityИҐStatefulPartitionedCallР
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
	2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€
*(
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8В *P
fKRI
G__inference_sequential_9_layer_call_and_return_conditional_losses_28416o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€
`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:€€€€€€€€€: : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs
√
Ц
(__inference_dense_34_layer_call_fn_28664

inputs
unknown:	А

	unknown_0:

identityИҐStatefulPartitionedCallЎ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€
*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_dense_34_layer_call_and_return_conditional_losses_28319o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€
`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:€€€€€€€€€А: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:€€€€€€€€€А
 
_user_specified_nameinputs"ВL
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*њ
serving_defaultЂ
O
flatten_2_input<
!serving_default_flatten_2_input:0€€€€€€€€€<
dense_340
StatefulPartitionedCall:0€€€€€€€€€
tensorflow/serving/predict:»[
и
layer-0
layer_with_weights-0
layer-1
layer_with_weights-1
layer-2
layer_with_weights-2
layer-3
	optimizer
	variables
trainable_variables
regularization_losses
		keras_api


signatures
V__call__
*W&call_and_return_all_conditional_losses
X_default_save_signature"
_tf_keras_sequential
•
	variables
trainable_variables
regularization_losses
	keras_api
Y__call__
*Z&call_and_return_all_conditional_losses"
_tf_keras_layer
ї

kernel
bias
	variables
trainable_variables
regularization_losses
	keras_api
[__call__
*\&call_and_return_all_conditional_losses"
_tf_keras_layer
ї

kernel
bias
	variables
trainable_variables
regularization_losses
	keras_api
]__call__
*^&call_and_return_all_conditional_losses"
_tf_keras_layer
ї

kernel
bias
	variables
trainable_variables
regularization_losses
 	keras_api
___call__
*`&call_and_return_all_conditional_losses"
_tf_keras_layer
њ
!iter

"beta_1

#beta_2
	$decay
%learning_ratemJmKmLmMmNmOvPvQvRvSvTvU"
	optimizer
J
0
1
2
3
4
5"
trackable_list_wrapper
J
0
1
2
3
4
5"
trackable_list_wrapper
 "
trackable_list_wrapper
 
&non_trainable_variables

'layers
(metrics
)layer_regularization_losses
*layer_metrics
	variables
trainable_variables
regularization_losses
V__call__
X_default_save_signature
*W&call_and_return_all_conditional_losses
&W"call_and_return_conditional_losses"
_generic_user_object
,
aserving_default"
signature_map
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
≠
+non_trainable_variables

,layers
-metrics
.layer_regularization_losses
/layer_metrics
	variables
trainable_variables
regularization_losses
Y__call__
*Z&call_and_return_all_conditional_losses
&Z"call_and_return_conditional_losses"
_generic_user_object
#:!
РА2dense_32/kernel
:А2dense_32/bias
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
≠
0non_trainable_variables

1layers
2metrics
3layer_regularization_losses
4layer_metrics
	variables
trainable_variables
regularization_losses
[__call__
*\&call_and_return_all_conditional_losses
&\"call_and_return_conditional_losses"
_generic_user_object
#:!
АА2dense_33/kernel
:А2dense_33/bias
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
≠
5non_trainable_variables

6layers
7metrics
8layer_regularization_losses
9layer_metrics
	variables
trainable_variables
regularization_losses
]__call__
*^&call_and_return_all_conditional_losses
&^"call_and_return_conditional_losses"
_generic_user_object
": 	А
2dense_34/kernel
:
2dense_34/bias
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
≠
:non_trainable_variables

;layers
<metrics
=layer_regularization_losses
>layer_metrics
	variables
trainable_variables
regularization_losses
___call__
*`&call_and_return_all_conditional_losses
&`"call_and_return_conditional_losses"
_generic_user_object
:	 (2	Adam/iter
: (2Adam/beta_1
: (2Adam/beta_2
: (2
Adam/decay
: (2Adam/learning_rate
 "
trackable_list_wrapper
<
0
1
2
3"
trackable_list_wrapper
.
?0
@1"
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
	Atotal
	Bcount
C	variables
D	keras_api"
_tf_keras_metric
^
	Etotal
	Fcount
G
_fn_kwargs
H	variables
I	keras_api"
_tf_keras_metric
:  (2total
:  (2count
.
A0
B1"
trackable_list_wrapper
-
C	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper
.
E0
F1"
trackable_list_wrapper
-
H	variables"
_generic_user_object
(:&
РА2Adam/dense_32/kernel/m
!:А2Adam/dense_32/bias/m
(:&
АА2Adam/dense_33/kernel/m
!:А2Adam/dense_33/bias/m
':%	А
2Adam/dense_34/kernel/m
 :
2Adam/dense_34/bias/m
(:&
РА2Adam/dense_32/kernel/v
!:А2Adam/dense_32/bias/v
(:&
АА2Adam/dense_33/kernel/v
!:А2Adam/dense_33/bias/v
':%	А
2Adam/dense_34/kernel/v
 :
2Adam/dense_34/bias/v
ю2ы
,__inference_sequential_9_layer_call_fn_28341
,__inference_sequential_9_layer_call_fn_28530
,__inference_sequential_9_layer_call_fn_28547
,__inference_sequential_9_layer_call_fn_28448ј
Ј≤≥
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaults™ 
annotations™ *
 
к2з
G__inference_sequential_9_layer_call_and_return_conditional_losses_28575
G__inference_sequential_9_layer_call_and_return_conditional_losses_28603
G__inference_sequential_9_layer_call_and_return_conditional_losses_28468
G__inference_sequential_9_layer_call_and_return_conditional_losses_28488ј
Ј≤≥
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaults™ 
annotations™ *
 
”B–
 __inference__wrapped_model_28258flatten_2_input"Ш
С≤Н
FullArgSpec
argsЪ 
varargsjargs
varkwjkwargs
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
”2–
)__inference_flatten_2_layer_call_fn_28608Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
о2л
D__inference_flatten_2_layer_call_and_return_conditional_losses_28614Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
“2ѕ
(__inference_dense_32_layer_call_fn_28623Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
н2к
C__inference_dense_32_layer_call_and_return_conditional_losses_28635Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
“2ѕ
(__inference_dense_33_layer_call_fn_28644Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
н2к
C__inference_dense_33_layer_call_and_return_conditional_losses_28655Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
“2ѕ
(__inference_dense_34_layer_call_fn_28664Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
н2к
C__inference_dense_34_layer_call_and_return_conditional_losses_28675Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
“Bѕ
#__inference_signature_wrapper_28513flatten_2_input"Ф
Н≤Й
FullArgSpec
argsЪ 
varargs
 
varkwjkwargs
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 Я
 __inference__wrapped_model_28258{<Ґ9
2Ґ/
-К*
flatten_2_input€€€€€€€€€
™ "3™0
.
dense_34"К
dense_34€€€€€€€€€
•
C__inference_dense_32_layer_call_and_return_conditional_losses_28635^0Ґ-
&Ґ#
!К
inputs€€€€€€€€€Р
™ "&Ґ#
К
0€€€€€€€€€А
Ъ }
(__inference_dense_32_layer_call_fn_28623Q0Ґ-
&Ґ#
!К
inputs€€€€€€€€€Р
™ "К€€€€€€€€€А•
C__inference_dense_33_layer_call_and_return_conditional_losses_28655^0Ґ-
&Ґ#
!К
inputs€€€€€€€€€А
™ "&Ґ#
К
0€€€€€€€€€А
Ъ }
(__inference_dense_33_layer_call_fn_28644Q0Ґ-
&Ґ#
!К
inputs€€€€€€€€€А
™ "К€€€€€€€€€А§
C__inference_dense_34_layer_call_and_return_conditional_losses_28675]0Ґ-
&Ґ#
!К
inputs€€€€€€€€€А
™ "%Ґ"
К
0€€€€€€€€€

Ъ |
(__inference_dense_34_layer_call_fn_28664P0Ґ-
&Ґ#
!К
inputs€€€€€€€€€А
™ "К€€€€€€€€€
•
D__inference_flatten_2_layer_call_and_return_conditional_losses_28614]3Ґ0
)Ґ&
$К!
inputs€€€€€€€€€
™ "&Ґ#
К
0€€€€€€€€€Р
Ъ }
)__inference_flatten_2_layer_call_fn_28608P3Ґ0
)Ґ&
$К!
inputs€€€€€€€€€
™ "К€€€€€€€€€Рј
G__inference_sequential_9_layer_call_and_return_conditional_losses_28468uDҐA
:Ґ7
-К*
flatten_2_input€€€€€€€€€
p 

 
™ "%Ґ"
К
0€€€€€€€€€

Ъ ј
G__inference_sequential_9_layer_call_and_return_conditional_losses_28488uDҐA
:Ґ7
-К*
flatten_2_input€€€€€€€€€
p

 
™ "%Ґ"
К
0€€€€€€€€€

Ъ Ј
G__inference_sequential_9_layer_call_and_return_conditional_losses_28575l;Ґ8
1Ґ.
$К!
inputs€€€€€€€€€
p 

 
™ "%Ґ"
К
0€€€€€€€€€

Ъ Ј
G__inference_sequential_9_layer_call_and_return_conditional_losses_28603l;Ґ8
1Ґ.
$К!
inputs€€€€€€€€€
p

 
™ "%Ґ"
К
0€€€€€€€€€

Ъ Ш
,__inference_sequential_9_layer_call_fn_28341hDҐA
:Ґ7
-К*
flatten_2_input€€€€€€€€€
p 

 
™ "К€€€€€€€€€
Ш
,__inference_sequential_9_layer_call_fn_28448hDҐA
:Ґ7
-К*
flatten_2_input€€€€€€€€€
p

 
™ "К€€€€€€€€€
П
,__inference_sequential_9_layer_call_fn_28530_;Ґ8
1Ґ.
$К!
inputs€€€€€€€€€
p 

 
™ "К€€€€€€€€€
П
,__inference_sequential_9_layer_call_fn_28547_;Ґ8
1Ґ.
$К!
inputs€€€€€€€€€
p

 
™ "К€€€€€€€€€
ґ
#__inference_signature_wrapper_28513ОOҐL
Ґ 
E™B
@
flatten_2_input-К*
flatten_2_input€€€€€€€€€"3™0
.
dense_34"К
dense_34€€€€€€€€€
