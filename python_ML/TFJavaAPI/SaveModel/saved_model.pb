	
Ž((
:
Add
x"T
y"T
z"T"
Ttype:
2	
î
	ApplyAdam
var"T	
m"T	
v"T
beta1_power"T
beta2_power"T
lr"T

beta1"T

beta2"T
epsilon"T	
grad"T
out"T" 
Ttype:
2	"
use_lockingbool( "
use_nesterovbool( 

ArgMax

input"T
	dimension"Tidx
output"output_type" 
Ttype:
2	"
Tidxtype0:
2	"
output_typetype0	:
2	
x
Assign
ref"T

value"T

output_ref"T"	
Ttype"
validate_shapebool("
use_lockingbool(
~
BiasAdd

value"T	
bias"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
~
BiasAddGrad
out_backprop"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
R
BroadcastGradientArgs
s0"T
s1"T
r0"T
r1"T"
Ttype0:
2	
N
Cast	
x"SrcT	
y"DstT"
SrcTtype"
DstTtype"
Truncatebool( 
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
ě
Conv2D

input"T
filter"T
output"T"
Ttype:
2"
strides	list(int)"
use_cudnn_on_gpubool(""
paddingstring:
SAMEVALID"-
data_formatstringNHWC:
NHWCNCHW" 
	dilations	list(int)


Conv2DBackpropFilter

input"T
filter_sizes
out_backprop"T
output"T"
Ttype:
2"
strides	list(int)"
use_cudnn_on_gpubool(""
paddingstring:
SAMEVALID"-
data_formatstringNHWC:
NHWCNCHW" 
	dilations	list(int)


Conv2DBackpropInput
input_sizes
filter"T
out_backprop"T
output"T"
Ttype:
2"
strides	list(int)"
use_cudnn_on_gpubool(""
paddingstring:
SAMEVALID"-
data_formatstringNHWC:
NHWCNCHW" 
	dilations	list(int)

5
DivNoNan
x"T
y"T
z"T"
Ttype:
2
B
Equal
x"T
y"T
z
"
Ttype:
2	

W

ExpandDims

input"T
dim"Tdim
output"T"	
Ttype"
Tdimtype0:
2	
^
Fill
dims"
index_type

value"T
output"T"	
Ttype"

index_typetype0:
2	
.
Identity

input"T
output"T"	
Ttype
?

LogSoftmax
logits"T

logsoftmax"T"
Ttype:
2
q
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:

2	
Ô
MaxPool

input"T
output"T"
Ttype0:
2	"
ksize	list(int)(0"
strides	list(int)(0""
paddingstring:
SAMEVALID":
data_formatstringNHWC:
NHWCNCHWNCHW_VECT_C
î
MaxPoolGrad

orig_input"T
orig_output"T	
grad"T
output"T"
ksize	list(int)(0"
strides	list(int)(0""
paddingstring:
SAMEVALID"-
data_formatstringNHWC:
NHWCNCHW"
Ttype0:
2	
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(
=
Mul
x"T
y"T
z"T"
Ttype:
2	
.
Neg
x"T
y"T"
Ttype:

2	
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
X
PlaceholderWithDefault
input"dtype
output"dtype"
dtypetype"
shapeshape
~
RandomUniform

shape"T
output"dtype"
seedint "
seed2int "
dtypetype:
2"
Ttype:
2	
E
Relu
features"T
activations"T"
Ttype:
2	
V
ReluGrad
	gradients"T
features"T
	backprops"T"
Ttype:
2	
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
list(type)(0
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0
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
e
ShapeN
input"T*N
output"out_type*N"
Nint(0"	
Ttype"
out_typetype0:
2	
H
ShardedFilename
basename	
shard

num_shards
filename
a
Slice

input"T
begin"Index
size"Index
output"T"	
Ttype"
Indextype:
2	
j
SoftmaxCrossEntropyWithLogits
features"T
labels"T	
loss"T
backprop"T"
Ttype:
2
2
StopGradient

input"T
output"T"	
Ttype
N

StringJoin
inputs*N

output"
Nint(0"
	separatorstring 
:
Sub
x"T
y"T
z"T"
Ttype:
2	

Sum

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
c
Tile

input"T
	multiples"
Tmultiples
output"T"	
Ttype"

Tmultiplestype0:
2	
s

VariableV2
ref"dtype"
shapeshape"
dtypetype"
	containerstring "
shared_namestring 
&
	ZerosLike
x"T
y"T"	
Ttype"serve*1.13.12
b'unknown'Ş˘
f
xPlaceholder*
dtype0*
shape:˙˙˙˙˙˙˙˙˙*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
n
PlaceholderPlaceholder*
dtype0*
shape:˙˙˙˙˙˙˙˙˙
*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

R
Placeholder_1Placeholder*
dtype0*
shape:*
_output_shapes
:
f
Reshape/shapeConst*%
valueB"˙˙˙˙         *
dtype0*
_output_shapes
:
l
ReshapeReshapexReshape/shape*
T0*
Tshape0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙
Š
.conv2d/kernel/Initializer/random_uniform/shapeConst*%
valueB"             *
dtype0* 
_class
loc:@conv2d/kernel*
_output_shapes
:

,conv2d/kernel/Initializer/random_uniform/minConst*
valueB
 *ž*
dtype0* 
_class
loc:@conv2d/kernel*
_output_shapes
: 

,conv2d/kernel/Initializer/random_uniform/maxConst*
valueB
 *>*
dtype0* 
_class
loc:@conv2d/kernel*
_output_shapes
: 
đ
6conv2d/kernel/Initializer/random_uniform/RandomUniformRandomUniform.conv2d/kernel/Initializer/random_uniform/shape*
T0*
dtype0*
seed2 * 
_class
loc:@conv2d/kernel*

seed *&
_output_shapes
: 
Ň
,conv2d/kernel/Initializer/random_uniform/subSub,conv2d/kernel/Initializer/random_uniform/max,conv2d/kernel/Initializer/random_uniform/min*
T0* 
_class
loc:@conv2d/kernel*
_output_shapes
: 
ě
,conv2d/kernel/Initializer/random_uniform/mulMul6conv2d/kernel/Initializer/random_uniform/RandomUniform,conv2d/kernel/Initializer/random_uniform/sub*
T0* 
_class
loc:@conv2d/kernel*&
_output_shapes
: 
Ţ
(conv2d/kernel/Initializer/random_uniformAdd,conv2d/kernel/Initializer/random_uniform/mul,conv2d/kernel/Initializer/random_uniform/min*
T0* 
_class
loc:@conv2d/kernel*&
_output_shapes
: 
ł
conv2d/kernel
VariableV2*
dtype0*
shared_name *
	container *
shape: * 
_class
loc:@conv2d/kernel*&
_output_shapes
: 
Ó
conv2d/kernel/AssignAssignconv2d/kernel(conv2d/kernel/Initializer/random_uniform*
T0*
use_locking(*
validate_shape(* 
_class
loc:@conv2d/kernel*&
_output_shapes
: 

conv2d/kernel/readIdentityconv2d/kernel*
T0* 
_class
loc:@conv2d/kernel*&
_output_shapes
: 

conv2d/bias/Initializer/zerosConst*
valueB *    *
dtype0*
_class
loc:@conv2d/bias*
_output_shapes
: 

conv2d/bias
VariableV2*
dtype0*
shared_name *
	container *
shape: *
_class
loc:@conv2d/bias*
_output_shapes
: 
ś
conv2d/bias/AssignAssignconv2d/biasconv2d/bias/Initializer/zeros*
T0*
use_locking(*
validate_shape(*
_class
loc:@conv2d/bias*
_output_shapes
: 
n
conv2d/bias/readIdentityconv2d/bias*
T0*
_class
loc:@conv2d/bias*
_output_shapes
: 
e
conv2d/dilation_rateConst*
valueB"      *
dtype0*
_output_shapes
:
Ü
conv2d/Conv2DConv2DReshapeconv2d/kernel/read*
strides
*
	dilations
*
T0*
data_formatNHWC*
paddingSAME*
use_cudnn_on_gpu(*/
_output_shapes
:˙˙˙˙˙˙˙˙˙ 

conv2d/BiasAddBiasAddconv2d/Conv2Dconv2d/bias/read*
T0*
data_formatNHWC*/
_output_shapes
:˙˙˙˙˙˙˙˙˙ 
]
conv2d/ReluReluconv2d/BiasAdd*
T0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙ 
š
max_pooling2d/MaxPoolMaxPoolconv2d/Relu*
T0*
strides
*
data_formatNHWC*
paddingSAME*
ksize
*/
_output_shapes
:˙˙˙˙˙˙˙˙˙ 
m
dropout/IdentityIdentitymax_pooling2d/MaxPool*
T0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙ 
­
0conv2d_1/kernel/Initializer/random_uniform/shapeConst*%
valueB"          @   *
dtype0*"
_class
loc:@conv2d_1/kernel*
_output_shapes
:

.conv2d_1/kernel/Initializer/random_uniform/minConst*
valueB
 *ŤŞŞ˝*
dtype0*"
_class
loc:@conv2d_1/kernel*
_output_shapes
: 

.conv2d_1/kernel/Initializer/random_uniform/maxConst*
valueB
 *ŤŞŞ=*
dtype0*"
_class
loc:@conv2d_1/kernel*
_output_shapes
: 
ö
8conv2d_1/kernel/Initializer/random_uniform/RandomUniformRandomUniform0conv2d_1/kernel/Initializer/random_uniform/shape*
T0*
dtype0*
seed2 *"
_class
loc:@conv2d_1/kernel*

seed *&
_output_shapes
: @
Ú
.conv2d_1/kernel/Initializer/random_uniform/subSub.conv2d_1/kernel/Initializer/random_uniform/max.conv2d_1/kernel/Initializer/random_uniform/min*
T0*"
_class
loc:@conv2d_1/kernel*
_output_shapes
: 
ô
.conv2d_1/kernel/Initializer/random_uniform/mulMul8conv2d_1/kernel/Initializer/random_uniform/RandomUniform.conv2d_1/kernel/Initializer/random_uniform/sub*
T0*"
_class
loc:@conv2d_1/kernel*&
_output_shapes
: @
ć
*conv2d_1/kernel/Initializer/random_uniformAdd.conv2d_1/kernel/Initializer/random_uniform/mul.conv2d_1/kernel/Initializer/random_uniform/min*
T0*"
_class
loc:@conv2d_1/kernel*&
_output_shapes
: @
ˇ
conv2d_1/kernel
VariableV2*
dtype0*
shared_name *
	container *
shape: @*"
_class
loc:@conv2d_1/kernel*&
_output_shapes
: @
Ű
conv2d_1/kernel/AssignAssignconv2d_1/kernel*conv2d_1/kernel/Initializer/random_uniform*
T0*
use_locking(*
validate_shape(*"
_class
loc:@conv2d_1/kernel*&
_output_shapes
: @

conv2d_1/kernel/readIdentityconv2d_1/kernel*
T0*"
_class
loc:@conv2d_1/kernel*&
_output_shapes
: @

conv2d_1/bias/Initializer/zerosConst*
valueB@*    *
dtype0* 
_class
loc:@conv2d_1/bias*
_output_shapes
:@

conv2d_1/bias
VariableV2*
dtype0*
shared_name *
	container *
shape:@* 
_class
loc:@conv2d_1/bias*
_output_shapes
:@
ž
conv2d_1/bias/AssignAssignconv2d_1/biasconv2d_1/bias/Initializer/zeros*
T0*
use_locking(*
validate_shape(* 
_class
loc:@conv2d_1/bias*
_output_shapes
:@
t
conv2d_1/bias/readIdentityconv2d_1/bias*
T0* 
_class
loc:@conv2d_1/bias*
_output_shapes
:@
g
conv2d_1/dilation_rateConst*
valueB"      *
dtype0*
_output_shapes
:
é
conv2d_1/Conv2DConv2Ddropout/Identityconv2d_1/kernel/read*
strides
*
	dilations
*
T0*
data_formatNHWC*
paddingSAME*
use_cudnn_on_gpu(*/
_output_shapes
:˙˙˙˙˙˙˙˙˙@

conv2d_1/BiasAddBiasAddconv2d_1/Conv2Dconv2d_1/bias/read*
T0*
data_formatNHWC*/
_output_shapes
:˙˙˙˙˙˙˙˙˙@
a
conv2d_1/ReluReluconv2d_1/BiasAdd*
T0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙@
˝
max_pooling2d_1/MaxPoolMaxPoolconv2d_1/Relu*
T0*
strides
*
data_formatNHWC*
paddingSAME*
ksize
*/
_output_shapes
:˙˙˙˙˙˙˙˙˙@
q
dropout_1/IdentityIdentitymax_pooling2d_1/MaxPool*
T0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙@
­
0conv2d_2/kernel/Initializer/random_uniform/shapeConst*%
valueB"      @      *
dtype0*"
_class
loc:@conv2d_2/kernel*
_output_shapes
:

.conv2d_2/kernel/Initializer/random_uniform/minConst*
valueB
 *ď[q˝*
dtype0*"
_class
loc:@conv2d_2/kernel*
_output_shapes
: 

.conv2d_2/kernel/Initializer/random_uniform/maxConst*
valueB
 *ď[q=*
dtype0*"
_class
loc:@conv2d_2/kernel*
_output_shapes
: 
÷
8conv2d_2/kernel/Initializer/random_uniform/RandomUniformRandomUniform0conv2d_2/kernel/Initializer/random_uniform/shape*
T0*
dtype0*
seed2 *"
_class
loc:@conv2d_2/kernel*

seed *'
_output_shapes
:@
Ú
.conv2d_2/kernel/Initializer/random_uniform/subSub.conv2d_2/kernel/Initializer/random_uniform/max.conv2d_2/kernel/Initializer/random_uniform/min*
T0*"
_class
loc:@conv2d_2/kernel*
_output_shapes
: 
ő
.conv2d_2/kernel/Initializer/random_uniform/mulMul8conv2d_2/kernel/Initializer/random_uniform/RandomUniform.conv2d_2/kernel/Initializer/random_uniform/sub*
T0*"
_class
loc:@conv2d_2/kernel*'
_output_shapes
:@
ç
*conv2d_2/kernel/Initializer/random_uniformAdd.conv2d_2/kernel/Initializer/random_uniform/mul.conv2d_2/kernel/Initializer/random_uniform/min*
T0*"
_class
loc:@conv2d_2/kernel*'
_output_shapes
:@
š
conv2d_2/kernel
VariableV2*
dtype0*
shared_name *
	container *
shape:@*"
_class
loc:@conv2d_2/kernel*'
_output_shapes
:@
Ü
conv2d_2/kernel/AssignAssignconv2d_2/kernel*conv2d_2/kernel/Initializer/random_uniform*
T0*
use_locking(*
validate_shape(*"
_class
loc:@conv2d_2/kernel*'
_output_shapes
:@

conv2d_2/kernel/readIdentityconv2d_2/kernel*
T0*"
_class
loc:@conv2d_2/kernel*'
_output_shapes
:@

conv2d_2/bias/Initializer/zerosConst*
valueB*    *
dtype0* 
_class
loc:@conv2d_2/bias*
_output_shapes	
:

conv2d_2/bias
VariableV2*
dtype0*
shared_name *
	container *
shape:* 
_class
loc:@conv2d_2/bias*
_output_shapes	
:
ż
conv2d_2/bias/AssignAssignconv2d_2/biasconv2d_2/bias/Initializer/zeros*
T0*
use_locking(*
validate_shape(* 
_class
loc:@conv2d_2/bias*
_output_shapes	
:
u
conv2d_2/bias/readIdentityconv2d_2/bias*
T0* 
_class
loc:@conv2d_2/bias*
_output_shapes	
:
g
conv2d_2/dilation_rateConst*
valueB"      *
dtype0*
_output_shapes
:
ě
conv2d_2/Conv2DConv2Ddropout_1/Identityconv2d_2/kernel/read*
strides
*
	dilations
*
T0*
data_formatNHWC*
paddingSAME*
use_cudnn_on_gpu(*0
_output_shapes
:˙˙˙˙˙˙˙˙˙

conv2d_2/BiasAddBiasAddconv2d_2/Conv2Dconv2d_2/bias/read*
T0*
data_formatNHWC*0
_output_shapes
:˙˙˙˙˙˙˙˙˙
b
conv2d_2/ReluReluconv2d_2/BiasAdd*
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙
ž
max_pooling2d_2/MaxPoolMaxPoolconv2d_2/Relu*
T0*
strides
*
data_formatNHWC*
paddingSAME*
ksize
*0
_output_shapes
:˙˙˙˙˙˙˙˙˙
r
dropout_2/IdentityIdentitymax_pooling2d_2/MaxPool*
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙
`
Reshape_1/shapeConst*
valueB"˙˙˙˙   *
dtype0*
_output_shapes
:
z
	Reshape_1Reshapedropout_2/IdentityReshape_1/shape*
T0*
Tshape0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙

-dense/kernel/Initializer/random_uniform/shapeConst*
valueB"      *
dtype0*
_class
loc:@dense/kernel*
_output_shapes
:

+dense/kernel/Initializer/random_uniform/minConst*
valueB
 *AW˝*
dtype0*
_class
loc:@dense/kernel*
_output_shapes
: 

+dense/kernel/Initializer/random_uniform/maxConst*
valueB
 *AW=*
dtype0*
_class
loc:@dense/kernel*
_output_shapes
: 
ç
5dense/kernel/Initializer/random_uniform/RandomUniformRandomUniform-dense/kernel/Initializer/random_uniform/shape*
T0*
dtype0*
seed2 *
_class
loc:@dense/kernel*

seed * 
_output_shapes
:

Î
+dense/kernel/Initializer/random_uniform/subSub+dense/kernel/Initializer/random_uniform/max+dense/kernel/Initializer/random_uniform/min*
T0*
_class
loc:@dense/kernel*
_output_shapes
: 
â
+dense/kernel/Initializer/random_uniform/mulMul5dense/kernel/Initializer/random_uniform/RandomUniform+dense/kernel/Initializer/random_uniform/sub*
T0*
_class
loc:@dense/kernel* 
_output_shapes
:

Ô
'dense/kernel/Initializer/random_uniformAdd+dense/kernel/Initializer/random_uniform/mul+dense/kernel/Initializer/random_uniform/min*
T0*
_class
loc:@dense/kernel* 
_output_shapes
:

Ľ
dense/kernel
VariableV2*
dtype0*
shared_name *
	container *
shape:
*
_class
loc:@dense/kernel* 
_output_shapes
:

É
dense/kernel/AssignAssigndense/kernel'dense/kernel/Initializer/random_uniform*
T0*
use_locking(*
validate_shape(*
_class
loc:@dense/kernel* 
_output_shapes
:

w
dense/kernel/readIdentitydense/kernel*
T0*
_class
loc:@dense/kernel* 
_output_shapes
:


dense/bias/Initializer/zerosConst*
valueB*    *
dtype0*
_class
loc:@dense/bias*
_output_shapes	
:


dense/bias
VariableV2*
dtype0*
shared_name *
	container *
shape:*
_class
loc:@dense/bias*
_output_shapes	
:
ł
dense/bias/AssignAssign
dense/biasdense/bias/Initializer/zeros*
T0*
use_locking(*
validate_shape(*
_class
loc:@dense/bias*
_output_shapes	
:
l
dense/bias/readIdentity
dense/bias*
T0*
_class
loc:@dense/bias*
_output_shapes	
:

dense/MatMulMatMul	Reshape_1dense/kernel/read*
T0*
transpose_b( *
transpose_a( *(
_output_shapes
:˙˙˙˙˙˙˙˙˙

dense/BiasAddBiasAdddense/MatMuldense/bias/read*
T0*
data_formatNHWC*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
T

dense/ReluReludense/BiasAdd*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
]
dropout_3/IdentityIdentity
dense/Relu*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ł
/dense_1/kernel/Initializer/random_uniform/shapeConst*
valueB"      *
dtype0*!
_class
loc:@dense_1/kernel*
_output_shapes
:

-dense_1/kernel/Initializer/random_uniform/minConst*
valueB
 *   ž*
dtype0*!
_class
loc:@dense_1/kernel*
_output_shapes
: 

-dense_1/kernel/Initializer/random_uniform/maxConst*
valueB
 *   >*
dtype0*!
_class
loc:@dense_1/kernel*
_output_shapes
: 
í
7dense_1/kernel/Initializer/random_uniform/RandomUniformRandomUniform/dense_1/kernel/Initializer/random_uniform/shape*
T0*
dtype0*
seed2 *!
_class
loc:@dense_1/kernel*

seed * 
_output_shapes
:

Ö
-dense_1/kernel/Initializer/random_uniform/subSub-dense_1/kernel/Initializer/random_uniform/max-dense_1/kernel/Initializer/random_uniform/min*
T0*!
_class
loc:@dense_1/kernel*
_output_shapes
: 
ę
-dense_1/kernel/Initializer/random_uniform/mulMul7dense_1/kernel/Initializer/random_uniform/RandomUniform-dense_1/kernel/Initializer/random_uniform/sub*
T0*!
_class
loc:@dense_1/kernel* 
_output_shapes
:

Ü
)dense_1/kernel/Initializer/random_uniformAdd-dense_1/kernel/Initializer/random_uniform/mul-dense_1/kernel/Initializer/random_uniform/min*
T0*!
_class
loc:@dense_1/kernel* 
_output_shapes
:

Š
dense_1/kernel
VariableV2*
dtype0*
shared_name *
	container *
shape:
*!
_class
loc:@dense_1/kernel* 
_output_shapes
:

Ń
dense_1/kernel/AssignAssigndense_1/kernel)dense_1/kernel/Initializer/random_uniform*
T0*
use_locking(*
validate_shape(*!
_class
loc:@dense_1/kernel* 
_output_shapes
:

}
dense_1/kernel/readIdentitydense_1/kernel*
T0*!
_class
loc:@dense_1/kernel* 
_output_shapes
:


dense_1/bias/Initializer/zerosConst*
valueB*    *
dtype0*
_class
loc:@dense_1/bias*
_output_shapes	
:

dense_1/bias
VariableV2*
dtype0*
shared_name *
	container *
shape:*
_class
loc:@dense_1/bias*
_output_shapes	
:
ť
dense_1/bias/AssignAssigndense_1/biasdense_1/bias/Initializer/zeros*
T0*
use_locking(*
validate_shape(*
_class
loc:@dense_1/bias*
_output_shapes	
:
r
dense_1/bias/readIdentitydense_1/bias*
T0*
_class
loc:@dense_1/bias*
_output_shapes	
:

dense_1/MatMulMatMuldropout_3/Identitydense_1/kernel/read*
T0*
transpose_b( *
transpose_a( *(
_output_shapes
:˙˙˙˙˙˙˙˙˙

dense_1/BiasAddBiasAdddense_1/MatMuldense_1/bias/read*
T0*
data_formatNHWC*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
X
dense_1/ReluReludense_1/BiasAdd*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
_
dropout_4/IdentityIdentitydense_1/Relu*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ł
/dense_2/kernel/Initializer/random_uniform/shapeConst*
valueB"      *
dtype0*!
_class
loc:@dense_2/kernel*
_output_shapes
:

-dense_2/kernel/Initializer/random_uniform/minConst*
valueB
 *   ž*
dtype0*!
_class
loc:@dense_2/kernel*
_output_shapes
: 

-dense_2/kernel/Initializer/random_uniform/maxConst*
valueB
 *   >*
dtype0*!
_class
loc:@dense_2/kernel*
_output_shapes
: 
í
7dense_2/kernel/Initializer/random_uniform/RandomUniformRandomUniform/dense_2/kernel/Initializer/random_uniform/shape*
T0*
dtype0*
seed2 *!
_class
loc:@dense_2/kernel*

seed * 
_output_shapes
:

Ö
-dense_2/kernel/Initializer/random_uniform/subSub-dense_2/kernel/Initializer/random_uniform/max-dense_2/kernel/Initializer/random_uniform/min*
T0*!
_class
loc:@dense_2/kernel*
_output_shapes
: 
ę
-dense_2/kernel/Initializer/random_uniform/mulMul7dense_2/kernel/Initializer/random_uniform/RandomUniform-dense_2/kernel/Initializer/random_uniform/sub*
T0*!
_class
loc:@dense_2/kernel* 
_output_shapes
:

Ü
)dense_2/kernel/Initializer/random_uniformAdd-dense_2/kernel/Initializer/random_uniform/mul-dense_2/kernel/Initializer/random_uniform/min*
T0*!
_class
loc:@dense_2/kernel* 
_output_shapes
:

Š
dense_2/kernel
VariableV2*
dtype0*
shared_name *
	container *
shape:
*!
_class
loc:@dense_2/kernel* 
_output_shapes
:

Ń
dense_2/kernel/AssignAssigndense_2/kernel)dense_2/kernel/Initializer/random_uniform*
T0*
use_locking(*
validate_shape(*!
_class
loc:@dense_2/kernel* 
_output_shapes
:

}
dense_2/kernel/readIdentitydense_2/kernel*
T0*!
_class
loc:@dense_2/kernel* 
_output_shapes
:


dense_2/bias/Initializer/zerosConst*
valueB*    *
dtype0*
_class
loc:@dense_2/bias*
_output_shapes	
:

dense_2/bias
VariableV2*
dtype0*
shared_name *
	container *
shape:*
_class
loc:@dense_2/bias*
_output_shapes	
:
ť
dense_2/bias/AssignAssigndense_2/biasdense_2/bias/Initializer/zeros*
T0*
use_locking(*
validate_shape(*
_class
loc:@dense_2/bias*
_output_shapes	
:
r
dense_2/bias/readIdentitydense_2/bias*
T0*
_class
loc:@dense_2/bias*
_output_shapes	
:

dense_2/MatMulMatMuldropout_4/Identitydense_2/kernel/read*
T0*
transpose_b( *
transpose_a( *(
_output_shapes
:˙˙˙˙˙˙˙˙˙

dense_2/BiasAddBiasAdddense_2/MatMuldense_2/bias/read*
T0*
data_formatNHWC*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
X
dense_2/ReluReludense_2/BiasAdd*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
_
dropout_5/IdentityIdentitydense_2/Relu*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ł
/dense_3/kernel/Initializer/random_uniform/shapeConst*
valueB"      *
dtype0*!
_class
loc:@dense_3/kernel*
_output_shapes
:

-dense_3/kernel/Initializer/random_uniform/minConst*
valueB
 *řKĆ˝*
dtype0*!
_class
loc:@dense_3/kernel*
_output_shapes
: 

-dense_3/kernel/Initializer/random_uniform/maxConst*
valueB
 *řKĆ=*
dtype0*!
_class
loc:@dense_3/kernel*
_output_shapes
: 
í
7dense_3/kernel/Initializer/random_uniform/RandomUniformRandomUniform/dense_3/kernel/Initializer/random_uniform/shape*
T0*
dtype0*
seed2 *!
_class
loc:@dense_3/kernel*

seed * 
_output_shapes
:

Ö
-dense_3/kernel/Initializer/random_uniform/subSub-dense_3/kernel/Initializer/random_uniform/max-dense_3/kernel/Initializer/random_uniform/min*
T0*!
_class
loc:@dense_3/kernel*
_output_shapes
: 
ę
-dense_3/kernel/Initializer/random_uniform/mulMul7dense_3/kernel/Initializer/random_uniform/RandomUniform-dense_3/kernel/Initializer/random_uniform/sub*
T0*!
_class
loc:@dense_3/kernel* 
_output_shapes
:

Ü
)dense_3/kernel/Initializer/random_uniformAdd-dense_3/kernel/Initializer/random_uniform/mul-dense_3/kernel/Initializer/random_uniform/min*
T0*!
_class
loc:@dense_3/kernel* 
_output_shapes
:

Š
dense_3/kernel
VariableV2*
dtype0*
shared_name *
	container *
shape:
*!
_class
loc:@dense_3/kernel* 
_output_shapes
:

Ń
dense_3/kernel/AssignAssigndense_3/kernel)dense_3/kernel/Initializer/random_uniform*
T0*
use_locking(*
validate_shape(*!
_class
loc:@dense_3/kernel* 
_output_shapes
:

}
dense_3/kernel/readIdentitydense_3/kernel*
T0*!
_class
loc:@dense_3/kernel* 
_output_shapes
:


dense_3/bias/Initializer/zerosConst*
valueB*    *
dtype0*
_class
loc:@dense_3/bias*
_output_shapes	
:

dense_3/bias
VariableV2*
dtype0*
shared_name *
	container *
shape:*
_class
loc:@dense_3/bias*
_output_shapes	
:
ť
dense_3/bias/AssignAssigndense_3/biasdense_3/bias/Initializer/zeros*
T0*
use_locking(*
validate_shape(*
_class
loc:@dense_3/bias*
_output_shapes	
:
r
dense_3/bias/readIdentitydense_3/bias*
T0*
_class
loc:@dense_3/bias*
_output_shapes	
:

dense_3/MatMulMatMuldropout_5/Identitydense_3/kernel/read*
T0*
transpose_b( *
transpose_a( *(
_output_shapes
:˙˙˙˙˙˙˙˙˙

dense_3/BiasAddBiasAdddense_3/MatMuldense_3/bias/read*
T0*
data_formatNHWC*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
X
dense_3/ReluReludense_3/BiasAdd*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
_
dropout_6/IdentityIdentitydense_3/Relu*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ł
/dense_4/kernel/Initializer/random_uniform/shapeConst*
valueB"      *
dtype0*!
_class
loc:@dense_4/kernel*
_output_shapes
:

-dense_4/kernel/Initializer/random_uniform/minConst*
valueB
 *  ˝*
dtype0*!
_class
loc:@dense_4/kernel*
_output_shapes
: 

-dense_4/kernel/Initializer/random_uniform/maxConst*
valueB
 *  =*
dtype0*!
_class
loc:@dense_4/kernel*
_output_shapes
: 
í
7dense_4/kernel/Initializer/random_uniform/RandomUniformRandomUniform/dense_4/kernel/Initializer/random_uniform/shape*
T0*
dtype0*
seed2 *!
_class
loc:@dense_4/kernel*

seed * 
_output_shapes
:

Ö
-dense_4/kernel/Initializer/random_uniform/subSub-dense_4/kernel/Initializer/random_uniform/max-dense_4/kernel/Initializer/random_uniform/min*
T0*!
_class
loc:@dense_4/kernel*
_output_shapes
: 
ę
-dense_4/kernel/Initializer/random_uniform/mulMul7dense_4/kernel/Initializer/random_uniform/RandomUniform-dense_4/kernel/Initializer/random_uniform/sub*
T0*!
_class
loc:@dense_4/kernel* 
_output_shapes
:

Ü
)dense_4/kernel/Initializer/random_uniformAdd-dense_4/kernel/Initializer/random_uniform/mul-dense_4/kernel/Initializer/random_uniform/min*
T0*!
_class
loc:@dense_4/kernel* 
_output_shapes
:

Š
dense_4/kernel
VariableV2*
dtype0*
shared_name *
	container *
shape:
*!
_class
loc:@dense_4/kernel* 
_output_shapes
:

Ń
dense_4/kernel/AssignAssigndense_4/kernel)dense_4/kernel/Initializer/random_uniform*
T0*
use_locking(*
validate_shape(*!
_class
loc:@dense_4/kernel* 
_output_shapes
:

}
dense_4/kernel/readIdentitydense_4/kernel*
T0*!
_class
loc:@dense_4/kernel* 
_output_shapes
:


.dense_4/bias/Initializer/zeros/shape_as_tensorConst*
valueB:*
dtype0*
_class
loc:@dense_4/bias*
_output_shapes
:

$dense_4/bias/Initializer/zeros/ConstConst*
valueB
 *    *
dtype0*
_class
loc:@dense_4/bias*
_output_shapes
: 
Ő
dense_4/bias/Initializer/zerosFill.dense_4/bias/Initializer/zeros/shape_as_tensor$dense_4/bias/Initializer/zeros/Const*
T0*

index_type0*
_class
loc:@dense_4/bias*
_output_shapes	
:

dense_4/bias
VariableV2*
dtype0*
shared_name *
	container *
shape:*
_class
loc:@dense_4/bias*
_output_shapes	
:
ť
dense_4/bias/AssignAssigndense_4/biasdense_4/bias/Initializer/zeros*
T0*
use_locking(*
validate_shape(*
_class
loc:@dense_4/bias*
_output_shapes	
:
r
dense_4/bias/readIdentitydense_4/bias*
T0*
_class
loc:@dense_4/bias*
_output_shapes	
:

dense_4/MatMulMatMuldropout_6/Identitydense_4/kernel/read*
T0*
transpose_b( *
transpose_a( *(
_output_shapes
:˙˙˙˙˙˙˙˙˙

dense_4/BiasAddBiasAdddense_4/MatMuldense_4/bias/read*
T0*
data_formatNHWC*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
X
dense_4/ReluReludense_4/BiasAdd*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
_
dropout_7/IdentityIdentitydense_4/Relu*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ł
/dense_5/kernel/Initializer/random_uniform/shapeConst*
valueB"   
   *
dtype0*!
_class
loc:@dense_5/kernel*
_output_shapes
:

-dense_5/kernel/Initializer/random_uniform/minConst*
valueB
 *č˝*
dtype0*!
_class
loc:@dense_5/kernel*
_output_shapes
: 

-dense_5/kernel/Initializer/random_uniform/maxConst*
valueB
 *č=*
dtype0*!
_class
loc:@dense_5/kernel*
_output_shapes
: 
ě
7dense_5/kernel/Initializer/random_uniform/RandomUniformRandomUniform/dense_5/kernel/Initializer/random_uniform/shape*
T0*
dtype0*
seed2 *!
_class
loc:@dense_5/kernel*

seed *
_output_shapes
:	

Ö
-dense_5/kernel/Initializer/random_uniform/subSub-dense_5/kernel/Initializer/random_uniform/max-dense_5/kernel/Initializer/random_uniform/min*
T0*!
_class
loc:@dense_5/kernel*
_output_shapes
: 
é
-dense_5/kernel/Initializer/random_uniform/mulMul7dense_5/kernel/Initializer/random_uniform/RandomUniform-dense_5/kernel/Initializer/random_uniform/sub*
T0*!
_class
loc:@dense_5/kernel*
_output_shapes
:	

Ű
)dense_5/kernel/Initializer/random_uniformAdd-dense_5/kernel/Initializer/random_uniform/mul-dense_5/kernel/Initializer/random_uniform/min*
T0*!
_class
loc:@dense_5/kernel*
_output_shapes
:	

§
dense_5/kernel
VariableV2*
dtype0*
shared_name *
	container *
shape:	
*!
_class
loc:@dense_5/kernel*
_output_shapes
:	

Đ
dense_5/kernel/AssignAssigndense_5/kernel)dense_5/kernel/Initializer/random_uniform*
T0*
use_locking(*
validate_shape(*!
_class
loc:@dense_5/kernel*
_output_shapes
:	

|
dense_5/kernel/readIdentitydense_5/kernel*
T0*!
_class
loc:@dense_5/kernel*
_output_shapes
:	


dense_5/bias/Initializer/zerosConst*
valueB
*    *
dtype0*
_class
loc:@dense_5/bias*
_output_shapes
:


dense_5/bias
VariableV2*
dtype0*
shared_name *
	container *
shape:
*
_class
loc:@dense_5/bias*
_output_shapes
:

ş
dense_5/bias/AssignAssigndense_5/biasdense_5/bias/Initializer/zeros*
T0*
use_locking(*
validate_shape(*
_class
loc:@dense_5/bias*
_output_shapes
:

q
dense_5/bias/readIdentitydense_5/bias*
T0*
_class
loc:@dense_5/bias*
_output_shapes
:


dense_5/MatMulMatMuldropout_7/Identitydense_5/kernel/read*
T0*
transpose_b( *
transpose_a( *'
_output_shapes
:˙˙˙˙˙˙˙˙˙


dense_5/BiasAddBiasAdddense_5/MatMuldense_5/bias/read*
T0*
data_formatNHWC*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

P
hIdentitydense_5/BiasAdd*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

~
/softmax_cross_entropy_loss/labels_stop_gradientStopGradientPlaceholder*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

j
(softmax_cross_entropy_loss/xentropy/RankConst*
value	B :*
dtype0*
_output_shapes
: 
x
)softmax_cross_entropy_loss/xentropy/ShapeShapedense_5/BiasAdd*
T0*
out_type0*
_output_shapes
:
l
*softmax_cross_entropy_loss/xentropy/Rank_1Const*
value	B :*
dtype0*
_output_shapes
: 
z
+softmax_cross_entropy_loss/xentropy/Shape_1Shapedense_5/BiasAdd*
T0*
out_type0*
_output_shapes
:
k
)softmax_cross_entropy_loss/xentropy/Sub/yConst*
value	B :*
dtype0*
_output_shapes
: 
Ś
'softmax_cross_entropy_loss/xentropy/SubSub*softmax_cross_entropy_loss/xentropy/Rank_1)softmax_cross_entropy_loss/xentropy/Sub/y*
T0*
_output_shapes
: 

/softmax_cross_entropy_loss/xentropy/Slice/beginPack'softmax_cross_entropy_loss/xentropy/Sub*

axis *
T0*
N*
_output_shapes
:
x
.softmax_cross_entropy_loss/xentropy/Slice/sizeConst*
valueB:*
dtype0*
_output_shapes
:
ň
)softmax_cross_entropy_loss/xentropy/SliceSlice+softmax_cross_entropy_loss/xentropy/Shape_1/softmax_cross_entropy_loss/xentropy/Slice/begin.softmax_cross_entropy_loss/xentropy/Slice/size*
Index0*
T0*
_output_shapes
:

3softmax_cross_entropy_loss/xentropy/concat/values_0Const*
valueB:
˙˙˙˙˙˙˙˙˙*
dtype0*
_output_shapes
:
q
/softmax_cross_entropy_loss/xentropy/concat/axisConst*
value	B : *
dtype0*
_output_shapes
: 

*softmax_cross_entropy_loss/xentropy/concatConcatV23softmax_cross_entropy_loss/xentropy/concat/values_0)softmax_cross_entropy_loss/xentropy/Slice/softmax_cross_entropy_loss/xentropy/concat/axis*
T0*
N*

Tidx0*
_output_shapes
:
ź
+softmax_cross_entropy_loss/xentropy/ReshapeReshapedense_5/BiasAdd*softmax_cross_entropy_loss/xentropy/concat*
T0*
Tshape0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
l
*softmax_cross_entropy_loss/xentropy/Rank_2Const*
value	B :*
dtype0*
_output_shapes
: 

+softmax_cross_entropy_loss/xentropy/Shape_2Shape/softmax_cross_entropy_loss/labels_stop_gradient*
T0*
out_type0*
_output_shapes
:
m
+softmax_cross_entropy_loss/xentropy/Sub_1/yConst*
value	B :*
dtype0*
_output_shapes
: 
Ş
)softmax_cross_entropy_loss/xentropy/Sub_1Sub*softmax_cross_entropy_loss/xentropy/Rank_2+softmax_cross_entropy_loss/xentropy/Sub_1/y*
T0*
_output_shapes
: 

1softmax_cross_entropy_loss/xentropy/Slice_1/beginPack)softmax_cross_entropy_loss/xentropy/Sub_1*

axis *
T0*
N*
_output_shapes
:
z
0softmax_cross_entropy_loss/xentropy/Slice_1/sizeConst*
valueB:*
dtype0*
_output_shapes
:
ř
+softmax_cross_entropy_loss/xentropy/Slice_1Slice+softmax_cross_entropy_loss/xentropy/Shape_21softmax_cross_entropy_loss/xentropy/Slice_1/begin0softmax_cross_entropy_loss/xentropy/Slice_1/size*
Index0*
T0*
_output_shapes
:

5softmax_cross_entropy_loss/xentropy/concat_1/values_0Const*
valueB:
˙˙˙˙˙˙˙˙˙*
dtype0*
_output_shapes
:
s
1softmax_cross_entropy_loss/xentropy/concat_1/axisConst*
value	B : *
dtype0*
_output_shapes
: 

,softmax_cross_entropy_loss/xentropy/concat_1ConcatV25softmax_cross_entropy_loss/xentropy/concat_1/values_0+softmax_cross_entropy_loss/xentropy/Slice_11softmax_cross_entropy_loss/xentropy/concat_1/axis*
T0*
N*

Tidx0*
_output_shapes
:
ŕ
-softmax_cross_entropy_loss/xentropy/Reshape_1Reshape/softmax_cross_entropy_loss/labels_stop_gradient,softmax_cross_entropy_loss/xentropy/concat_1*
T0*
Tshape0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
ę
#softmax_cross_entropy_loss/xentropySoftmaxCrossEntropyWithLogits+softmax_cross_entropy_loss/xentropy/Reshape-softmax_cross_entropy_loss/xentropy/Reshape_1*
T0*?
_output_shapes-
+:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
m
+softmax_cross_entropy_loss/xentropy/Sub_2/yConst*
value	B :*
dtype0*
_output_shapes
: 
¨
)softmax_cross_entropy_loss/xentropy/Sub_2Sub(softmax_cross_entropy_loss/xentropy/Rank+softmax_cross_entropy_loss/xentropy/Sub_2/y*
T0*
_output_shapes
: 
{
1softmax_cross_entropy_loss/xentropy/Slice_2/beginConst*
valueB: *
dtype0*
_output_shapes
:

0softmax_cross_entropy_loss/xentropy/Slice_2/sizePack)softmax_cross_entropy_loss/xentropy/Sub_2*

axis *
T0*
N*
_output_shapes
:
ö
+softmax_cross_entropy_loss/xentropy/Slice_2Slice)softmax_cross_entropy_loss/xentropy/Shape1softmax_cross_entropy_loss/xentropy/Slice_2/begin0softmax_cross_entropy_loss/xentropy/Slice_2/size*
Index0*
T0*
_output_shapes
:
Ć
-softmax_cross_entropy_loss/xentropy/Reshape_2Reshape#softmax_cross_entropy_loss/xentropy+softmax_cross_entropy_loss/xentropy/Slice_2*
T0*
Tshape0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙
|
7softmax_cross_entropy_loss/assert_broadcastable/weightsConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 

=softmax_cross_entropy_loss/assert_broadcastable/weights/shapeConst*
valueB *
dtype0*
_output_shapes
: 
~
<softmax_cross_entropy_loss/assert_broadcastable/weights/rankConst*
value	B : *
dtype0*
_output_shapes
: 
Š
<softmax_cross_entropy_loss/assert_broadcastable/values/shapeShape-softmax_cross_entropy_loss/xentropy/Reshape_2*
T0*
out_type0*
_output_shapes
:
}
;softmax_cross_entropy_loss/assert_broadcastable/values/rankConst*
value	B :*
dtype0*
_output_shapes
: 
S
Ksoftmax_cross_entropy_loss/assert_broadcastable/static_scalar_check_successNoOp
ˇ
$softmax_cross_entropy_loss/ToFloat/xConstL^softmax_cross_entropy_loss/assert_broadcastable/static_scalar_check_success*
valueB
 *  ?*
dtype0*
_output_shapes
: 
¨
softmax_cross_entropy_loss/MulMul-softmax_cross_entropy_loss/xentropy/Reshape_2$softmax_cross_entropy_loss/ToFloat/x*
T0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙
¸
 softmax_cross_entropy_loss/ConstConstL^softmax_cross_entropy_loss/assert_broadcastable/static_scalar_check_success*
valueB: *
dtype0*
_output_shapes
:
Ľ
softmax_cross_entropy_loss/SumSumsoftmax_cross_entropy_loss/Mul softmax_cross_entropy_loss/Const*
	keep_dims( *
T0*

Tidx0*
_output_shapes
: 
Á
.softmax_cross_entropy_loss/num_present/Equal/yConstL^softmax_cross_entropy_loss/assert_broadcastable/static_scalar_check_success*
valueB
 *    *
dtype0*
_output_shapes
: 
Ź
,softmax_cross_entropy_loss/num_present/EqualEqual$softmax_cross_entropy_loss/ToFloat/x.softmax_cross_entropy_loss/num_present/Equal/y*
T0*
_output_shapes
: 
Ä
1softmax_cross_entropy_loss/num_present/zeros_likeConstL^softmax_cross_entropy_loss/assert_broadcastable/static_scalar_check_success*
valueB
 *    *
dtype0*
_output_shapes
: 
Ç
6softmax_cross_entropy_loss/num_present/ones_like/ShapeConstL^softmax_cross_entropy_loss/assert_broadcastable/static_scalar_check_success*
valueB *
dtype0*
_output_shapes
: 
É
6softmax_cross_entropy_loss/num_present/ones_like/ConstConstL^softmax_cross_entropy_loss/assert_broadcastable/static_scalar_check_success*
valueB
 *  ?*
dtype0*
_output_shapes
: 
Ű
0softmax_cross_entropy_loss/num_present/ones_likeFill6softmax_cross_entropy_loss/num_present/ones_like/Shape6softmax_cross_entropy_loss/num_present/ones_like/Const*
T0*

index_type0*
_output_shapes
: 
ë
-softmax_cross_entropy_loss/num_present/SelectSelect,softmax_cross_entropy_loss/num_present/Equal1softmax_cross_entropy_loss/num_present/zeros_like0softmax_cross_entropy_loss/num_present/ones_like*
T0*
_output_shapes
: 
ě
[softmax_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/weights/shapeConstL^softmax_cross_entropy_loss/assert_broadcastable/static_scalar_check_success*
valueB *
dtype0*
_output_shapes
: 
ę
Zsoftmax_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/weights/rankConstL^softmax_cross_entropy_loss/assert_broadcastable/static_scalar_check_success*
value	B : *
dtype0*
_output_shapes
: 

Zsoftmax_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/values/shapeShape-softmax_cross_entropy_loss/xentropy/Reshape_2L^softmax_cross_entropy_loss/assert_broadcastable/static_scalar_check_success*
T0*
out_type0*
_output_shapes
:
é
Ysoftmax_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/values/rankConstL^softmax_cross_entropy_loss/assert_broadcastable/static_scalar_check_success*
value	B :*
dtype0*
_output_shapes
: 
ż
isoftmax_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/static_scalar_check_successNoOpL^softmax_cross_entropy_loss/assert_broadcastable/static_scalar_check_success
ď
Hsoftmax_cross_entropy_loss/num_present/broadcast_weights/ones_like/ShapeShape-softmax_cross_entropy_loss/xentropy/Reshape_2L^softmax_cross_entropy_loss/assert_broadcastable/static_scalar_check_successj^softmax_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/static_scalar_check_success*
T0*
out_type0*
_output_shapes
:
Ç
Hsoftmax_cross_entropy_loss/num_present/broadcast_weights/ones_like/ConstConstL^softmax_cross_entropy_loss/assert_broadcastable/static_scalar_check_successj^softmax_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/static_scalar_check_success*
valueB
 *  ?*
dtype0*
_output_shapes
: 

Bsoftmax_cross_entropy_loss/num_present/broadcast_weights/ones_likeFillHsoftmax_cross_entropy_loss/num_present/broadcast_weights/ones_like/ShapeHsoftmax_cross_entropy_loss/num_present/broadcast_weights/ones_like/Const*
T0*

index_type0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙
ŕ
8softmax_cross_entropy_loss/num_present/broadcast_weightsMul-softmax_cross_entropy_loss/num_present/SelectBsoftmax_cross_entropy_loss/num_present/broadcast_weights/ones_like*
T0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ä
,softmax_cross_entropy_loss/num_present/ConstConstL^softmax_cross_entropy_loss/assert_broadcastable/static_scalar_check_success*
valueB: *
dtype0*
_output_shapes
:
Ó
&softmax_cross_entropy_loss/num_presentSum8softmax_cross_entropy_loss/num_present/broadcast_weights,softmax_cross_entropy_loss/num_present/Const*
	keep_dims( *
T0*

Tidx0*
_output_shapes
: 
ł
"softmax_cross_entropy_loss/Const_1ConstL^softmax_cross_entropy_loss/assert_broadcastable/static_scalar_check_success*
valueB *
dtype0*
_output_shapes
: 
Š
 softmax_cross_entropy_loss/Sum_1Sumsoftmax_cross_entropy_loss/Sum"softmax_cross_entropy_loss/Const_1*
	keep_dims( *
T0*

Tidx0*
_output_shapes
: 

 softmax_cross_entropy_loss/valueDivNoNan softmax_cross_entropy_loss/Sum_1&softmax_cross_entropy_loss/num_present*
T0*
_output_shapes
: 
R
gradients/ShapeConst*
valueB *
dtype0*
_output_shapes
: 
X
gradients/grad_ys_0Const*
valueB
 *  ?*
dtype0*
_output_shapes
: 
o
gradients/FillFillgradients/Shapegradients/grad_ys_0*
T0*

index_type0*
_output_shapes
: 
x
5gradients/softmax_cross_entropy_loss/value_grad/ShapeConst*
valueB *
dtype0*
_output_shapes
: 
z
7gradients/softmax_cross_entropy_loss/value_grad/Shape_1Const*
valueB *
dtype0*
_output_shapes
: 

Egradients/softmax_cross_entropy_loss/value_grad/BroadcastGradientArgsBroadcastGradientArgs5gradients/softmax_cross_entropy_loss/value_grad/Shape7gradients/softmax_cross_entropy_loss/value_grad/Shape_1*
T0*2
_output_shapes 
:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙

:gradients/softmax_cross_entropy_loss/value_grad/div_no_nanDivNoNangradients/Fill&softmax_cross_entropy_loss/num_present*
T0*
_output_shapes
: 
ű
3gradients/softmax_cross_entropy_loss/value_grad/SumSum:gradients/softmax_cross_entropy_loss/value_grad/div_no_nanEgradients/softmax_cross_entropy_loss/value_grad/BroadcastGradientArgs*
	keep_dims( *
T0*

Tidx0*
_output_shapes
: 
Ý
7gradients/softmax_cross_entropy_loss/value_grad/ReshapeReshape3gradients/softmax_cross_entropy_loss/value_grad/Sum5gradients/softmax_cross_entropy_loss/value_grad/Shape*
T0*
Tshape0*
_output_shapes
: 
}
3gradients/softmax_cross_entropy_loss/value_grad/NegNeg softmax_cross_entropy_loss/Sum_1*
T0*
_output_shapes
: 
Ć
<gradients/softmax_cross_entropy_loss/value_grad/div_no_nan_1DivNoNan3gradients/softmax_cross_entropy_loss/value_grad/Neg&softmax_cross_entropy_loss/num_present*
T0*
_output_shapes
: 
Ď
<gradients/softmax_cross_entropy_loss/value_grad/div_no_nan_2DivNoNan<gradients/softmax_cross_entropy_loss/value_grad/div_no_nan_1&softmax_cross_entropy_loss/num_present*
T0*
_output_shapes
: 
Š
3gradients/softmax_cross_entropy_loss/value_grad/mulMulgradients/Fill<gradients/softmax_cross_entropy_loss/value_grad/div_no_nan_2*
T0*
_output_shapes
: 
ř
5gradients/softmax_cross_entropy_loss/value_grad/Sum_1Sum3gradients/softmax_cross_entropy_loss/value_grad/mulGgradients/softmax_cross_entropy_loss/value_grad/BroadcastGradientArgs:1*
	keep_dims( *
T0*

Tidx0*
_output_shapes
: 
ă
9gradients/softmax_cross_entropy_loss/value_grad/Reshape_1Reshape5gradients/softmax_cross_entropy_loss/value_grad/Sum_17gradients/softmax_cross_entropy_loss/value_grad/Shape_1*
T0*
Tshape0*
_output_shapes
: 
ž
@gradients/softmax_cross_entropy_loss/value_grad/tuple/group_depsNoOp8^gradients/softmax_cross_entropy_loss/value_grad/Reshape:^gradients/softmax_cross_entropy_loss/value_grad/Reshape_1
˝
Hgradients/softmax_cross_entropy_loss/value_grad/tuple/control_dependencyIdentity7gradients/softmax_cross_entropy_loss/value_grad/ReshapeA^gradients/softmax_cross_entropy_loss/value_grad/tuple/group_deps*
T0*J
_class@
><loc:@gradients/softmax_cross_entropy_loss/value_grad/Reshape*
_output_shapes
: 
Ă
Jgradients/softmax_cross_entropy_loss/value_grad/tuple/control_dependency_1Identity9gradients/softmax_cross_entropy_loss/value_grad/Reshape_1A^gradients/softmax_cross_entropy_loss/value_grad/tuple/group_deps*
T0*L
_classB
@>loc:@gradients/softmax_cross_entropy_loss/value_grad/Reshape_1*
_output_shapes
: 

=gradients/softmax_cross_entropy_loss/Sum_1_grad/Reshape/shapeConst*
valueB *
dtype0*
_output_shapes
: 
ú
7gradients/softmax_cross_entropy_loss/Sum_1_grad/ReshapeReshapeHgradients/softmax_cross_entropy_loss/value_grad/tuple/control_dependency=gradients/softmax_cross_entropy_loss/Sum_1_grad/Reshape/shape*
T0*
Tshape0*
_output_shapes
: 
x
5gradients/softmax_cross_entropy_loss/Sum_1_grad/ConstConst*
valueB *
dtype0*
_output_shapes
: 
ß
4gradients/softmax_cross_entropy_loss/Sum_1_grad/TileTile7gradients/softmax_cross_entropy_loss/Sum_1_grad/Reshape5gradients/softmax_cross_entropy_loss/Sum_1_grad/Const*
T0*

Tmultiples0*
_output_shapes
: 

;gradients/softmax_cross_entropy_loss/Sum_grad/Reshape/shapeConst*
valueB:*
dtype0*
_output_shapes
:
ć
5gradients/softmax_cross_entropy_loss/Sum_grad/ReshapeReshape4gradients/softmax_cross_entropy_loss/Sum_1_grad/Tile;gradients/softmax_cross_entropy_loss/Sum_grad/Reshape/shape*
T0*
Tshape0*
_output_shapes
:

3gradients/softmax_cross_entropy_loss/Sum_grad/ShapeShapesoftmax_cross_entropy_loss/Mul*
T0*
out_type0*
_output_shapes
:
ć
2gradients/softmax_cross_entropy_loss/Sum_grad/TileTile5gradients/softmax_cross_entropy_loss/Sum_grad/Reshape3gradients/softmax_cross_entropy_loss/Sum_grad/Shape*
T0*

Tmultiples0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
3gradients/softmax_cross_entropy_loss/Mul_grad/ShapeShape-softmax_cross_entropy_loss/xentropy/Reshape_2*
T0*
out_type0*
_output_shapes
:
x
5gradients/softmax_cross_entropy_loss/Mul_grad/Shape_1Const*
valueB *
dtype0*
_output_shapes
: 

Cgradients/softmax_cross_entropy_loss/Mul_grad/BroadcastGradientArgsBroadcastGradientArgs3gradients/softmax_cross_entropy_loss/Mul_grad/Shape5gradients/softmax_cross_entropy_loss/Mul_grad/Shape_1*
T0*2
_output_shapes 
:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙
Ŕ
1gradients/softmax_cross_entropy_loss/Mul_grad/MulMul2gradients/softmax_cross_entropy_loss/Sum_grad/Tile$softmax_cross_entropy_loss/ToFloat/x*
T0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙
đ
1gradients/softmax_cross_entropy_loss/Mul_grad/SumSum1gradients/softmax_cross_entropy_loss/Mul_grad/MulCgradients/softmax_cross_entropy_loss/Mul_grad/BroadcastGradientArgs*
	keep_dims( *
T0*

Tidx0*
_output_shapes
:
ä
5gradients/softmax_cross_entropy_loss/Mul_grad/ReshapeReshape1gradients/softmax_cross_entropy_loss/Mul_grad/Sum3gradients/softmax_cross_entropy_loss/Mul_grad/Shape*
T0*
Tshape0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ë
3gradients/softmax_cross_entropy_loss/Mul_grad/Mul_1Mul-softmax_cross_entropy_loss/xentropy/Reshape_22gradients/softmax_cross_entropy_loss/Sum_grad/Tile*
T0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙
ö
3gradients/softmax_cross_entropy_loss/Mul_grad/Sum_1Sum3gradients/softmax_cross_entropy_loss/Mul_grad/Mul_1Egradients/softmax_cross_entropy_loss/Mul_grad/BroadcastGradientArgs:1*
	keep_dims( *
T0*

Tidx0*
_output_shapes
:
Ý
7gradients/softmax_cross_entropy_loss/Mul_grad/Reshape_1Reshape3gradients/softmax_cross_entropy_loss/Mul_grad/Sum_15gradients/softmax_cross_entropy_loss/Mul_grad/Shape_1*
T0*
Tshape0*
_output_shapes
: 
¸
>gradients/softmax_cross_entropy_loss/Mul_grad/tuple/group_depsNoOp6^gradients/softmax_cross_entropy_loss/Mul_grad/Reshape8^gradients/softmax_cross_entropy_loss/Mul_grad/Reshape_1
Â
Fgradients/softmax_cross_entropy_loss/Mul_grad/tuple/control_dependencyIdentity5gradients/softmax_cross_entropy_loss/Mul_grad/Reshape?^gradients/softmax_cross_entropy_loss/Mul_grad/tuple/group_deps*
T0*H
_class>
<:loc:@gradients/softmax_cross_entropy_loss/Mul_grad/Reshape*#
_output_shapes
:˙˙˙˙˙˙˙˙˙
ť
Hgradients/softmax_cross_entropy_loss/Mul_grad/tuple/control_dependency_1Identity7gradients/softmax_cross_entropy_loss/Mul_grad/Reshape_1?^gradients/softmax_cross_entropy_loss/Mul_grad/tuple/group_deps*
T0*J
_class@
><loc:@gradients/softmax_cross_entropy_loss/Mul_grad/Reshape_1*
_output_shapes
: 
Ľ
Bgradients/softmax_cross_entropy_loss/xentropy/Reshape_2_grad/ShapeShape#softmax_cross_entropy_loss/xentropy*
T0*
out_type0*
_output_shapes
:

Dgradients/softmax_cross_entropy_loss/xentropy/Reshape_2_grad/ReshapeReshapeFgradients/softmax_cross_entropy_loss/Mul_grad/tuple/control_dependencyBgradients/softmax_cross_entropy_loss/xentropy/Reshape_2_grad/Shape*
T0*
Tshape0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙

gradients/zeros_like	ZerosLike%softmax_cross_entropy_loss/xentropy:1*
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙

Agradients/softmax_cross_entropy_loss/xentropy_grad/ExpandDims/dimConst*
valueB :
˙˙˙˙˙˙˙˙˙*
dtype0*
_output_shapes
: 

=gradients/softmax_cross_entropy_loss/xentropy_grad/ExpandDims
ExpandDimsDgradients/softmax_cross_entropy_loss/xentropy/Reshape_2_grad/ReshapeAgradients/softmax_cross_entropy_loss/xentropy_grad/ExpandDims/dim*
T0*

Tdim0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ţ
6gradients/softmax_cross_entropy_loss/xentropy_grad/mulMul=gradients/softmax_cross_entropy_loss/xentropy_grad/ExpandDims%softmax_cross_entropy_loss/xentropy:1*
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
ł
=gradients/softmax_cross_entropy_loss/xentropy_grad/LogSoftmax
LogSoftmax+softmax_cross_entropy_loss/xentropy/Reshape*
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
ˇ
6gradients/softmax_cross_entropy_loss/xentropy_grad/NegNeg=gradients/softmax_cross_entropy_loss/xentropy_grad/LogSoftmax*
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙

Cgradients/softmax_cross_entropy_loss/xentropy_grad/ExpandDims_1/dimConst*
valueB :
˙˙˙˙˙˙˙˙˙*
dtype0*
_output_shapes
: 

?gradients/softmax_cross_entropy_loss/xentropy_grad/ExpandDims_1
ExpandDimsDgradients/softmax_cross_entropy_loss/xentropy/Reshape_2_grad/ReshapeCgradients/softmax_cross_entropy_loss/xentropy_grad/ExpandDims_1/dim*
T0*

Tdim0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
ó
8gradients/softmax_cross_entropy_loss/xentropy_grad/mul_1Mul?gradients/softmax_cross_entropy_loss/xentropy_grad/ExpandDims_16gradients/softmax_cross_entropy_loss/xentropy_grad/Neg*
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
ż
Cgradients/softmax_cross_entropy_loss/xentropy_grad/tuple/group_depsNoOp7^gradients/softmax_cross_entropy_loss/xentropy_grad/mul9^gradients/softmax_cross_entropy_loss/xentropy_grad/mul_1
Ű
Kgradients/softmax_cross_entropy_loss/xentropy_grad/tuple/control_dependencyIdentity6gradients/softmax_cross_entropy_loss/xentropy_grad/mulD^gradients/softmax_cross_entropy_loss/xentropy_grad/tuple/group_deps*
T0*I
_class?
=;loc:@gradients/softmax_cross_entropy_loss/xentropy_grad/mul*0
_output_shapes
:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
á
Mgradients/softmax_cross_entropy_loss/xentropy_grad/tuple/control_dependency_1Identity8gradients/softmax_cross_entropy_loss/xentropy_grad/mul_1D^gradients/softmax_cross_entropy_loss/xentropy_grad/tuple/group_deps*
T0*K
_classA
?=loc:@gradients/softmax_cross_entropy_loss/xentropy_grad/mul_1*0
_output_shapes
:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙

@gradients/softmax_cross_entropy_loss/xentropy/Reshape_grad/ShapeShapedense_5/BiasAdd*
T0*
out_type0*
_output_shapes
:

Bgradients/softmax_cross_entropy_loss/xentropy/Reshape_grad/ReshapeReshapeKgradients/softmax_cross_entropy_loss/xentropy_grad/tuple/control_dependency@gradients/softmax_cross_entropy_loss/xentropy/Reshape_grad/Shape*
T0*
Tshape0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

š
*gradients/dense_5/BiasAdd_grad/BiasAddGradBiasAddGradBgradients/softmax_cross_entropy_loss/xentropy/Reshape_grad/Reshape*
T0*
data_formatNHWC*
_output_shapes
:

Š
/gradients/dense_5/BiasAdd_grad/tuple/group_depsNoOp+^gradients/dense_5/BiasAdd_grad/BiasAddGradC^gradients/softmax_cross_entropy_loss/xentropy/Reshape_grad/Reshape
Â
7gradients/dense_5/BiasAdd_grad/tuple/control_dependencyIdentityBgradients/softmax_cross_entropy_loss/xentropy/Reshape_grad/Reshape0^gradients/dense_5/BiasAdd_grad/tuple/group_deps*
T0*U
_classK
IGloc:@gradients/softmax_cross_entropy_loss/xentropy/Reshape_grad/Reshape*'
_output_shapes
:˙˙˙˙˙˙˙˙˙


9gradients/dense_5/BiasAdd_grad/tuple/control_dependency_1Identity*gradients/dense_5/BiasAdd_grad/BiasAddGrad0^gradients/dense_5/BiasAdd_grad/tuple/group_deps*
T0*=
_class3
1/loc:@gradients/dense_5/BiasAdd_grad/BiasAddGrad*
_output_shapes
:

Ő
$gradients/dense_5/MatMul_grad/MatMulMatMul7gradients/dense_5/BiasAdd_grad/tuple/control_dependencydense_5/kernel/read*
T0*
transpose_b(*
transpose_a( *(
_output_shapes
:˙˙˙˙˙˙˙˙˙
Í
&gradients/dense_5/MatMul_grad/MatMul_1MatMuldropout_7/Identity7gradients/dense_5/BiasAdd_grad/tuple/control_dependency*
T0*
transpose_b( *
transpose_a(*
_output_shapes
:	


.gradients/dense_5/MatMul_grad/tuple/group_depsNoOp%^gradients/dense_5/MatMul_grad/MatMul'^gradients/dense_5/MatMul_grad/MatMul_1

6gradients/dense_5/MatMul_grad/tuple/control_dependencyIdentity$gradients/dense_5/MatMul_grad/MatMul/^gradients/dense_5/MatMul_grad/tuple/group_deps*
T0*7
_class-
+)loc:@gradients/dense_5/MatMul_grad/MatMul*(
_output_shapes
:˙˙˙˙˙˙˙˙˙

8gradients/dense_5/MatMul_grad/tuple/control_dependency_1Identity&gradients/dense_5/MatMul_grad/MatMul_1/^gradients/dense_5/MatMul_grad/tuple/group_deps*
T0*9
_class/
-+loc:@gradients/dense_5/MatMul_grad/MatMul_1*
_output_shapes
:	

Š
$gradients/dense_4/Relu_grad/ReluGradReluGrad6gradients/dense_5/MatMul_grad/tuple/control_dependencydense_4/Relu*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙

*gradients/dense_4/BiasAdd_grad/BiasAddGradBiasAddGrad$gradients/dense_4/Relu_grad/ReluGrad*
T0*
data_formatNHWC*
_output_shapes	
:

/gradients/dense_4/BiasAdd_grad/tuple/group_depsNoOp+^gradients/dense_4/BiasAdd_grad/BiasAddGrad%^gradients/dense_4/Relu_grad/ReluGrad

7gradients/dense_4/BiasAdd_grad/tuple/control_dependencyIdentity$gradients/dense_4/Relu_grad/ReluGrad0^gradients/dense_4/BiasAdd_grad/tuple/group_deps*
T0*7
_class-
+)loc:@gradients/dense_4/Relu_grad/ReluGrad*(
_output_shapes
:˙˙˙˙˙˙˙˙˙

9gradients/dense_4/BiasAdd_grad/tuple/control_dependency_1Identity*gradients/dense_4/BiasAdd_grad/BiasAddGrad0^gradients/dense_4/BiasAdd_grad/tuple/group_deps*
T0*=
_class3
1/loc:@gradients/dense_4/BiasAdd_grad/BiasAddGrad*
_output_shapes	
:
Ő
$gradients/dense_4/MatMul_grad/MatMulMatMul7gradients/dense_4/BiasAdd_grad/tuple/control_dependencydense_4/kernel/read*
T0*
transpose_b(*
transpose_a( *(
_output_shapes
:˙˙˙˙˙˙˙˙˙
Î
&gradients/dense_4/MatMul_grad/MatMul_1MatMuldropout_6/Identity7gradients/dense_4/BiasAdd_grad/tuple/control_dependency*
T0*
transpose_b( *
transpose_a(* 
_output_shapes
:


.gradients/dense_4/MatMul_grad/tuple/group_depsNoOp%^gradients/dense_4/MatMul_grad/MatMul'^gradients/dense_4/MatMul_grad/MatMul_1

6gradients/dense_4/MatMul_grad/tuple/control_dependencyIdentity$gradients/dense_4/MatMul_grad/MatMul/^gradients/dense_4/MatMul_grad/tuple/group_deps*
T0*7
_class-
+)loc:@gradients/dense_4/MatMul_grad/MatMul*(
_output_shapes
:˙˙˙˙˙˙˙˙˙

8gradients/dense_4/MatMul_grad/tuple/control_dependency_1Identity&gradients/dense_4/MatMul_grad/MatMul_1/^gradients/dense_4/MatMul_grad/tuple/group_deps*
T0*9
_class/
-+loc:@gradients/dense_4/MatMul_grad/MatMul_1* 
_output_shapes
:

Š
$gradients/dense_3/Relu_grad/ReluGradReluGrad6gradients/dense_4/MatMul_grad/tuple/control_dependencydense_3/Relu*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙

*gradients/dense_3/BiasAdd_grad/BiasAddGradBiasAddGrad$gradients/dense_3/Relu_grad/ReluGrad*
T0*
data_formatNHWC*
_output_shapes	
:

/gradients/dense_3/BiasAdd_grad/tuple/group_depsNoOp+^gradients/dense_3/BiasAdd_grad/BiasAddGrad%^gradients/dense_3/Relu_grad/ReluGrad

7gradients/dense_3/BiasAdd_grad/tuple/control_dependencyIdentity$gradients/dense_3/Relu_grad/ReluGrad0^gradients/dense_3/BiasAdd_grad/tuple/group_deps*
T0*7
_class-
+)loc:@gradients/dense_3/Relu_grad/ReluGrad*(
_output_shapes
:˙˙˙˙˙˙˙˙˙

9gradients/dense_3/BiasAdd_grad/tuple/control_dependency_1Identity*gradients/dense_3/BiasAdd_grad/BiasAddGrad0^gradients/dense_3/BiasAdd_grad/tuple/group_deps*
T0*=
_class3
1/loc:@gradients/dense_3/BiasAdd_grad/BiasAddGrad*
_output_shapes	
:
Ő
$gradients/dense_3/MatMul_grad/MatMulMatMul7gradients/dense_3/BiasAdd_grad/tuple/control_dependencydense_3/kernel/read*
T0*
transpose_b(*
transpose_a( *(
_output_shapes
:˙˙˙˙˙˙˙˙˙
Î
&gradients/dense_3/MatMul_grad/MatMul_1MatMuldropout_5/Identity7gradients/dense_3/BiasAdd_grad/tuple/control_dependency*
T0*
transpose_b( *
transpose_a(* 
_output_shapes
:


.gradients/dense_3/MatMul_grad/tuple/group_depsNoOp%^gradients/dense_3/MatMul_grad/MatMul'^gradients/dense_3/MatMul_grad/MatMul_1

6gradients/dense_3/MatMul_grad/tuple/control_dependencyIdentity$gradients/dense_3/MatMul_grad/MatMul/^gradients/dense_3/MatMul_grad/tuple/group_deps*
T0*7
_class-
+)loc:@gradients/dense_3/MatMul_grad/MatMul*(
_output_shapes
:˙˙˙˙˙˙˙˙˙

8gradients/dense_3/MatMul_grad/tuple/control_dependency_1Identity&gradients/dense_3/MatMul_grad/MatMul_1/^gradients/dense_3/MatMul_grad/tuple/group_deps*
T0*9
_class/
-+loc:@gradients/dense_3/MatMul_grad/MatMul_1* 
_output_shapes
:

Š
$gradients/dense_2/Relu_grad/ReluGradReluGrad6gradients/dense_3/MatMul_grad/tuple/control_dependencydense_2/Relu*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙

*gradients/dense_2/BiasAdd_grad/BiasAddGradBiasAddGrad$gradients/dense_2/Relu_grad/ReluGrad*
T0*
data_formatNHWC*
_output_shapes	
:

/gradients/dense_2/BiasAdd_grad/tuple/group_depsNoOp+^gradients/dense_2/BiasAdd_grad/BiasAddGrad%^gradients/dense_2/Relu_grad/ReluGrad

7gradients/dense_2/BiasAdd_grad/tuple/control_dependencyIdentity$gradients/dense_2/Relu_grad/ReluGrad0^gradients/dense_2/BiasAdd_grad/tuple/group_deps*
T0*7
_class-
+)loc:@gradients/dense_2/Relu_grad/ReluGrad*(
_output_shapes
:˙˙˙˙˙˙˙˙˙

9gradients/dense_2/BiasAdd_grad/tuple/control_dependency_1Identity*gradients/dense_2/BiasAdd_grad/BiasAddGrad0^gradients/dense_2/BiasAdd_grad/tuple/group_deps*
T0*=
_class3
1/loc:@gradients/dense_2/BiasAdd_grad/BiasAddGrad*
_output_shapes	
:
Ő
$gradients/dense_2/MatMul_grad/MatMulMatMul7gradients/dense_2/BiasAdd_grad/tuple/control_dependencydense_2/kernel/read*
T0*
transpose_b(*
transpose_a( *(
_output_shapes
:˙˙˙˙˙˙˙˙˙
Î
&gradients/dense_2/MatMul_grad/MatMul_1MatMuldropout_4/Identity7gradients/dense_2/BiasAdd_grad/tuple/control_dependency*
T0*
transpose_b( *
transpose_a(* 
_output_shapes
:


.gradients/dense_2/MatMul_grad/tuple/group_depsNoOp%^gradients/dense_2/MatMul_grad/MatMul'^gradients/dense_2/MatMul_grad/MatMul_1

6gradients/dense_2/MatMul_grad/tuple/control_dependencyIdentity$gradients/dense_2/MatMul_grad/MatMul/^gradients/dense_2/MatMul_grad/tuple/group_deps*
T0*7
_class-
+)loc:@gradients/dense_2/MatMul_grad/MatMul*(
_output_shapes
:˙˙˙˙˙˙˙˙˙

8gradients/dense_2/MatMul_grad/tuple/control_dependency_1Identity&gradients/dense_2/MatMul_grad/MatMul_1/^gradients/dense_2/MatMul_grad/tuple/group_deps*
T0*9
_class/
-+loc:@gradients/dense_2/MatMul_grad/MatMul_1* 
_output_shapes
:

Š
$gradients/dense_1/Relu_grad/ReluGradReluGrad6gradients/dense_2/MatMul_grad/tuple/control_dependencydense_1/Relu*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙

*gradients/dense_1/BiasAdd_grad/BiasAddGradBiasAddGrad$gradients/dense_1/Relu_grad/ReluGrad*
T0*
data_formatNHWC*
_output_shapes	
:

/gradients/dense_1/BiasAdd_grad/tuple/group_depsNoOp+^gradients/dense_1/BiasAdd_grad/BiasAddGrad%^gradients/dense_1/Relu_grad/ReluGrad

7gradients/dense_1/BiasAdd_grad/tuple/control_dependencyIdentity$gradients/dense_1/Relu_grad/ReluGrad0^gradients/dense_1/BiasAdd_grad/tuple/group_deps*
T0*7
_class-
+)loc:@gradients/dense_1/Relu_grad/ReluGrad*(
_output_shapes
:˙˙˙˙˙˙˙˙˙

9gradients/dense_1/BiasAdd_grad/tuple/control_dependency_1Identity*gradients/dense_1/BiasAdd_grad/BiasAddGrad0^gradients/dense_1/BiasAdd_grad/tuple/group_deps*
T0*=
_class3
1/loc:@gradients/dense_1/BiasAdd_grad/BiasAddGrad*
_output_shapes	
:
Ő
$gradients/dense_1/MatMul_grad/MatMulMatMul7gradients/dense_1/BiasAdd_grad/tuple/control_dependencydense_1/kernel/read*
T0*
transpose_b(*
transpose_a( *(
_output_shapes
:˙˙˙˙˙˙˙˙˙
Î
&gradients/dense_1/MatMul_grad/MatMul_1MatMuldropout_3/Identity7gradients/dense_1/BiasAdd_grad/tuple/control_dependency*
T0*
transpose_b( *
transpose_a(* 
_output_shapes
:


.gradients/dense_1/MatMul_grad/tuple/group_depsNoOp%^gradients/dense_1/MatMul_grad/MatMul'^gradients/dense_1/MatMul_grad/MatMul_1

6gradients/dense_1/MatMul_grad/tuple/control_dependencyIdentity$gradients/dense_1/MatMul_grad/MatMul/^gradients/dense_1/MatMul_grad/tuple/group_deps*
T0*7
_class-
+)loc:@gradients/dense_1/MatMul_grad/MatMul*(
_output_shapes
:˙˙˙˙˙˙˙˙˙

8gradients/dense_1/MatMul_grad/tuple/control_dependency_1Identity&gradients/dense_1/MatMul_grad/MatMul_1/^gradients/dense_1/MatMul_grad/tuple/group_deps*
T0*9
_class/
-+loc:@gradients/dense_1/MatMul_grad/MatMul_1* 
_output_shapes
:

Ľ
"gradients/dense/Relu_grad/ReluGradReluGrad6gradients/dense_1/MatMul_grad/tuple/control_dependency
dense/Relu*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙

(gradients/dense/BiasAdd_grad/BiasAddGradBiasAddGrad"gradients/dense/Relu_grad/ReluGrad*
T0*
data_formatNHWC*
_output_shapes	
:

-gradients/dense/BiasAdd_grad/tuple/group_depsNoOp)^gradients/dense/BiasAdd_grad/BiasAddGrad#^gradients/dense/Relu_grad/ReluGrad
˙
5gradients/dense/BiasAdd_grad/tuple/control_dependencyIdentity"gradients/dense/Relu_grad/ReluGrad.^gradients/dense/BiasAdd_grad/tuple/group_deps*
T0*5
_class+
)'loc:@gradients/dense/Relu_grad/ReluGrad*(
_output_shapes
:˙˙˙˙˙˙˙˙˙

7gradients/dense/BiasAdd_grad/tuple/control_dependency_1Identity(gradients/dense/BiasAdd_grad/BiasAddGrad.^gradients/dense/BiasAdd_grad/tuple/group_deps*
T0*;
_class1
/-loc:@gradients/dense/BiasAdd_grad/BiasAddGrad*
_output_shapes	
:
Ď
"gradients/dense/MatMul_grad/MatMulMatMul5gradients/dense/BiasAdd_grad/tuple/control_dependencydense/kernel/read*
T0*
transpose_b(*
transpose_a( *(
_output_shapes
:˙˙˙˙˙˙˙˙˙
Á
$gradients/dense/MatMul_grad/MatMul_1MatMul	Reshape_15gradients/dense/BiasAdd_grad/tuple/control_dependency*
T0*
transpose_b( *
transpose_a(* 
_output_shapes
:


,gradients/dense/MatMul_grad/tuple/group_depsNoOp#^gradients/dense/MatMul_grad/MatMul%^gradients/dense/MatMul_grad/MatMul_1
ý
4gradients/dense/MatMul_grad/tuple/control_dependencyIdentity"gradients/dense/MatMul_grad/MatMul-^gradients/dense/MatMul_grad/tuple/group_deps*
T0*5
_class+
)'loc:@gradients/dense/MatMul_grad/MatMul*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
ű
6gradients/dense/MatMul_grad/tuple/control_dependency_1Identity$gradients/dense/MatMul_grad/MatMul_1-^gradients/dense/MatMul_grad/tuple/group_deps*
T0*7
_class-
+)loc:@gradients/dense/MatMul_grad/MatMul_1* 
_output_shapes
:

p
gradients/Reshape_1_grad/ShapeShapedropout_2/Identity*
T0*
out_type0*
_output_shapes
:
Ę
 gradients/Reshape_1_grad/ReshapeReshape4gradients/dense/MatMul_grad/tuple/control_dependencygradients/Reshape_1_grad/Shape*
T0*
Tshape0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙

2gradients/max_pooling2d_2/MaxPool_grad/MaxPoolGradMaxPoolGradconv2d_2/Relumax_pooling2d_2/MaxPool gradients/Reshape_1_grad/Reshape*
T0*
strides
*
data_formatNHWC*
paddingSAME*
ksize
*0
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ż
%gradients/conv2d_2/Relu_grad/ReluGradReluGrad2gradients/max_pooling2d_2/MaxPool_grad/MaxPoolGradconv2d_2/Relu*
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙

+gradients/conv2d_2/BiasAdd_grad/BiasAddGradBiasAddGrad%gradients/conv2d_2/Relu_grad/ReluGrad*
T0*
data_formatNHWC*
_output_shapes	
:

0gradients/conv2d_2/BiasAdd_grad/tuple/group_depsNoOp,^gradients/conv2d_2/BiasAdd_grad/BiasAddGrad&^gradients/conv2d_2/Relu_grad/ReluGrad

8gradients/conv2d_2/BiasAdd_grad/tuple/control_dependencyIdentity%gradients/conv2d_2/Relu_grad/ReluGrad1^gradients/conv2d_2/BiasAdd_grad/tuple/group_deps*
T0*8
_class.
,*loc:@gradients/conv2d_2/Relu_grad/ReluGrad*0
_output_shapes
:˙˙˙˙˙˙˙˙˙

:gradients/conv2d_2/BiasAdd_grad/tuple/control_dependency_1Identity+gradients/conv2d_2/BiasAdd_grad/BiasAddGrad1^gradients/conv2d_2/BiasAdd_grad/tuple/group_deps*
T0*>
_class4
20loc:@gradients/conv2d_2/BiasAdd_grad/BiasAddGrad*
_output_shapes	
:

%gradients/conv2d_2/Conv2D_grad/ShapeNShapeNdropout_1/Identityconv2d_2/kernel/read*
T0*
out_type0*
N* 
_output_shapes
::
č
2gradients/conv2d_2/Conv2D_grad/Conv2DBackpropInputConv2DBackpropInput%gradients/conv2d_2/Conv2D_grad/ShapeNconv2d_2/kernel/read8gradients/conv2d_2/BiasAdd_grad/tuple/control_dependency*
strides
*
	dilations
*
T0*
data_formatNHWC*
paddingSAME*
use_cudnn_on_gpu(*/
_output_shapes
:˙˙˙˙˙˙˙˙˙@
â
3gradients/conv2d_2/Conv2D_grad/Conv2DBackpropFilterConv2DBackpropFilterdropout_1/Identity'gradients/conv2d_2/Conv2D_grad/ShapeN:18gradients/conv2d_2/BiasAdd_grad/tuple/control_dependency*
strides
*
	dilations
*
T0*
data_formatNHWC*
paddingSAME*
use_cudnn_on_gpu(*'
_output_shapes
:@
˘
/gradients/conv2d_2/Conv2D_grad/tuple/group_depsNoOp4^gradients/conv2d_2/Conv2D_grad/Conv2DBackpropFilter3^gradients/conv2d_2/Conv2D_grad/Conv2DBackpropInput
Ş
7gradients/conv2d_2/Conv2D_grad/tuple/control_dependencyIdentity2gradients/conv2d_2/Conv2D_grad/Conv2DBackpropInput0^gradients/conv2d_2/Conv2D_grad/tuple/group_deps*
T0*E
_class;
97loc:@gradients/conv2d_2/Conv2D_grad/Conv2DBackpropInput*/
_output_shapes
:˙˙˙˙˙˙˙˙˙@
Ś
9gradients/conv2d_2/Conv2D_grad/tuple/control_dependency_1Identity3gradients/conv2d_2/Conv2D_grad/Conv2DBackpropFilter0^gradients/conv2d_2/Conv2D_grad/tuple/group_deps*
T0*F
_class<
:8loc:@gradients/conv2d_2/Conv2D_grad/Conv2DBackpropFilter*'
_output_shapes
:@
Ž
2gradients/max_pooling2d_1/MaxPool_grad/MaxPoolGradMaxPoolGradconv2d_1/Relumax_pooling2d_1/MaxPool7gradients/conv2d_2/Conv2D_grad/tuple/control_dependency*
T0*
strides
*
data_formatNHWC*
paddingSAME*
ksize
*/
_output_shapes
:˙˙˙˙˙˙˙˙˙@
Ž
%gradients/conv2d_1/Relu_grad/ReluGradReluGrad2gradients/max_pooling2d_1/MaxPool_grad/MaxPoolGradconv2d_1/Relu*
T0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙@

+gradients/conv2d_1/BiasAdd_grad/BiasAddGradBiasAddGrad%gradients/conv2d_1/Relu_grad/ReluGrad*
T0*
data_formatNHWC*
_output_shapes
:@

0gradients/conv2d_1/BiasAdd_grad/tuple/group_depsNoOp,^gradients/conv2d_1/BiasAdd_grad/BiasAddGrad&^gradients/conv2d_1/Relu_grad/ReluGrad

8gradients/conv2d_1/BiasAdd_grad/tuple/control_dependencyIdentity%gradients/conv2d_1/Relu_grad/ReluGrad1^gradients/conv2d_1/BiasAdd_grad/tuple/group_deps*
T0*8
_class.
,*loc:@gradients/conv2d_1/Relu_grad/ReluGrad*/
_output_shapes
:˙˙˙˙˙˙˙˙˙@

:gradients/conv2d_1/BiasAdd_grad/tuple/control_dependency_1Identity+gradients/conv2d_1/BiasAdd_grad/BiasAddGrad1^gradients/conv2d_1/BiasAdd_grad/tuple/group_deps*
T0*>
_class4
20loc:@gradients/conv2d_1/BiasAdd_grad/BiasAddGrad*
_output_shapes
:@

%gradients/conv2d_1/Conv2D_grad/ShapeNShapeNdropout/Identityconv2d_1/kernel/read*
T0*
out_type0*
N* 
_output_shapes
::
č
2gradients/conv2d_1/Conv2D_grad/Conv2DBackpropInputConv2DBackpropInput%gradients/conv2d_1/Conv2D_grad/ShapeNconv2d_1/kernel/read8gradients/conv2d_1/BiasAdd_grad/tuple/control_dependency*
strides
*
	dilations
*
T0*
data_formatNHWC*
paddingSAME*
use_cudnn_on_gpu(*/
_output_shapes
:˙˙˙˙˙˙˙˙˙ 
ß
3gradients/conv2d_1/Conv2D_grad/Conv2DBackpropFilterConv2DBackpropFilterdropout/Identity'gradients/conv2d_1/Conv2D_grad/ShapeN:18gradients/conv2d_1/BiasAdd_grad/tuple/control_dependency*
strides
*
	dilations
*
T0*
data_formatNHWC*
paddingSAME*
use_cudnn_on_gpu(*&
_output_shapes
: @
˘
/gradients/conv2d_1/Conv2D_grad/tuple/group_depsNoOp4^gradients/conv2d_1/Conv2D_grad/Conv2DBackpropFilter3^gradients/conv2d_1/Conv2D_grad/Conv2DBackpropInput
Ş
7gradients/conv2d_1/Conv2D_grad/tuple/control_dependencyIdentity2gradients/conv2d_1/Conv2D_grad/Conv2DBackpropInput0^gradients/conv2d_1/Conv2D_grad/tuple/group_deps*
T0*E
_class;
97loc:@gradients/conv2d_1/Conv2D_grad/Conv2DBackpropInput*/
_output_shapes
:˙˙˙˙˙˙˙˙˙ 
Ľ
9gradients/conv2d_1/Conv2D_grad/tuple/control_dependency_1Identity3gradients/conv2d_1/Conv2D_grad/Conv2DBackpropFilter0^gradients/conv2d_1/Conv2D_grad/tuple/group_deps*
T0*F
_class<
:8loc:@gradients/conv2d_1/Conv2D_grad/Conv2DBackpropFilter*&
_output_shapes
: @
¨
0gradients/max_pooling2d/MaxPool_grad/MaxPoolGradMaxPoolGradconv2d/Relumax_pooling2d/MaxPool7gradients/conv2d_1/Conv2D_grad/tuple/control_dependency*
T0*
strides
*
data_formatNHWC*
paddingSAME*
ksize
*/
_output_shapes
:˙˙˙˙˙˙˙˙˙ 
¨
#gradients/conv2d/Relu_grad/ReluGradReluGrad0gradients/max_pooling2d/MaxPool_grad/MaxPoolGradconv2d/Relu*
T0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙ 

)gradients/conv2d/BiasAdd_grad/BiasAddGradBiasAddGrad#gradients/conv2d/Relu_grad/ReluGrad*
T0*
data_formatNHWC*
_output_shapes
: 

.gradients/conv2d/BiasAdd_grad/tuple/group_depsNoOp*^gradients/conv2d/BiasAdd_grad/BiasAddGrad$^gradients/conv2d/Relu_grad/ReluGrad

6gradients/conv2d/BiasAdd_grad/tuple/control_dependencyIdentity#gradients/conv2d/Relu_grad/ReluGrad/^gradients/conv2d/BiasAdd_grad/tuple/group_deps*
T0*6
_class,
*(loc:@gradients/conv2d/Relu_grad/ReluGrad*/
_output_shapes
:˙˙˙˙˙˙˙˙˙ 

8gradients/conv2d/BiasAdd_grad/tuple/control_dependency_1Identity)gradients/conv2d/BiasAdd_grad/BiasAddGrad/^gradients/conv2d/BiasAdd_grad/tuple/group_deps*
T0*<
_class2
0.loc:@gradients/conv2d/BiasAdd_grad/BiasAddGrad*
_output_shapes
: 

#gradients/conv2d/Conv2D_grad/ShapeNShapeNReshapeconv2d/kernel/read*
T0*
out_type0*
N* 
_output_shapes
::
ŕ
0gradients/conv2d/Conv2D_grad/Conv2DBackpropInputConv2DBackpropInput#gradients/conv2d/Conv2D_grad/ShapeNconv2d/kernel/read6gradients/conv2d/BiasAdd_grad/tuple/control_dependency*
strides
*
	dilations
*
T0*
data_formatNHWC*
paddingSAME*
use_cudnn_on_gpu(*/
_output_shapes
:˙˙˙˙˙˙˙˙˙
Đ
1gradients/conv2d/Conv2D_grad/Conv2DBackpropFilterConv2DBackpropFilterReshape%gradients/conv2d/Conv2D_grad/ShapeN:16gradients/conv2d/BiasAdd_grad/tuple/control_dependency*
strides
*
	dilations
*
T0*
data_formatNHWC*
paddingSAME*
use_cudnn_on_gpu(*&
_output_shapes
: 

-gradients/conv2d/Conv2D_grad/tuple/group_depsNoOp2^gradients/conv2d/Conv2D_grad/Conv2DBackpropFilter1^gradients/conv2d/Conv2D_grad/Conv2DBackpropInput
˘
5gradients/conv2d/Conv2D_grad/tuple/control_dependencyIdentity0gradients/conv2d/Conv2D_grad/Conv2DBackpropInput.^gradients/conv2d/Conv2D_grad/tuple/group_deps*
T0*C
_class9
75loc:@gradients/conv2d/Conv2D_grad/Conv2DBackpropInput*/
_output_shapes
:˙˙˙˙˙˙˙˙˙

7gradients/conv2d/Conv2D_grad/tuple/control_dependency_1Identity1gradients/conv2d/Conv2D_grad/Conv2DBackpropFilter.^gradients/conv2d/Conv2D_grad/tuple/group_deps*
T0*D
_class:
86loc:@gradients/conv2d/Conv2D_grad/Conv2DBackpropFilter*&
_output_shapes
: 
~
beta1_power/initial_valueConst*
valueB
 *fff?*
dtype0*
_class
loc:@conv2d/bias*
_output_shapes
: 

beta1_power
VariableV2*
dtype0*
shared_name *
	container *
shape: *
_class
loc:@conv2d/bias*
_output_shapes
: 
Ž
beta1_power/AssignAssignbeta1_powerbeta1_power/initial_value*
T0*
use_locking(*
validate_shape(*
_class
loc:@conv2d/bias*
_output_shapes
: 
j
beta1_power/readIdentitybeta1_power*
T0*
_class
loc:@conv2d/bias*
_output_shapes
: 
~
beta2_power/initial_valueConst*
valueB
 *wž?*
dtype0*
_class
loc:@conv2d/bias*
_output_shapes
: 

beta2_power
VariableV2*
dtype0*
shared_name *
	container *
shape: *
_class
loc:@conv2d/bias*
_output_shapes
: 
Ž
beta2_power/AssignAssignbeta2_powerbeta2_power/initial_value*
T0*
use_locking(*
validate_shape(*
_class
loc:@conv2d/bias*
_output_shapes
: 
j
beta2_power/readIdentitybeta2_power*
T0*
_class
loc:@conv2d/bias*
_output_shapes
: 
Ť
$conv2d/kernel/Adam/Initializer/zerosConst*%
valueB *    *
dtype0* 
_class
loc:@conv2d/kernel*&
_output_shapes
: 
¸
conv2d/kernel/Adam
VariableV2*
dtype0*
shared_name *
shape: *
	container * 
_class
loc:@conv2d/kernel*&
_output_shapes
: 
Ů
conv2d/kernel/Adam/AssignAssignconv2d/kernel/Adam$conv2d/kernel/Adam/Initializer/zeros*
T0*
use_locking(*
validate_shape(* 
_class
loc:@conv2d/kernel*&
_output_shapes
: 

conv2d/kernel/Adam/readIdentityconv2d/kernel/Adam*
T0* 
_class
loc:@conv2d/kernel*&
_output_shapes
: 
­
&conv2d/kernel/Adam_1/Initializer/zerosConst*%
valueB *    *
dtype0* 
_class
loc:@conv2d/kernel*&
_output_shapes
: 
ş
conv2d/kernel/Adam_1
VariableV2*
dtype0*
shared_name *
shape: *
	container * 
_class
loc:@conv2d/kernel*&
_output_shapes
: 
ß
conv2d/kernel/Adam_1/AssignAssignconv2d/kernel/Adam_1&conv2d/kernel/Adam_1/Initializer/zeros*
T0*
use_locking(*
validate_shape(* 
_class
loc:@conv2d/kernel*&
_output_shapes
: 

conv2d/kernel/Adam_1/readIdentityconv2d/kernel/Adam_1*
T0* 
_class
loc:@conv2d/kernel*&
_output_shapes
: 

"conv2d/bias/Adam/Initializer/zerosConst*
valueB *    *
dtype0*
_class
loc:@conv2d/bias*
_output_shapes
: 

conv2d/bias/Adam
VariableV2*
dtype0*
shared_name *
shape: *
	container *
_class
loc:@conv2d/bias*
_output_shapes
: 
Ĺ
conv2d/bias/Adam/AssignAssignconv2d/bias/Adam"conv2d/bias/Adam/Initializer/zeros*
T0*
use_locking(*
validate_shape(*
_class
loc:@conv2d/bias*
_output_shapes
: 
x
conv2d/bias/Adam/readIdentityconv2d/bias/Adam*
T0*
_class
loc:@conv2d/bias*
_output_shapes
: 

$conv2d/bias/Adam_1/Initializer/zerosConst*
valueB *    *
dtype0*
_class
loc:@conv2d/bias*
_output_shapes
: 

conv2d/bias/Adam_1
VariableV2*
dtype0*
shared_name *
shape: *
	container *
_class
loc:@conv2d/bias*
_output_shapes
: 
Ë
conv2d/bias/Adam_1/AssignAssignconv2d/bias/Adam_1$conv2d/bias/Adam_1/Initializer/zeros*
T0*
use_locking(*
validate_shape(*
_class
loc:@conv2d/bias*
_output_shapes
: 
|
conv2d/bias/Adam_1/readIdentityconv2d/bias/Adam_1*
T0*
_class
loc:@conv2d/bias*
_output_shapes
: 
ł
6conv2d_1/kernel/Adam/Initializer/zeros/shape_as_tensorConst*%
valueB"          @   *
dtype0*"
_class
loc:@conv2d_1/kernel*
_output_shapes
:

,conv2d_1/kernel/Adam/Initializer/zeros/ConstConst*
valueB
 *    *
dtype0*"
_class
loc:@conv2d_1/kernel*
_output_shapes
: 
ű
&conv2d_1/kernel/Adam/Initializer/zerosFill6conv2d_1/kernel/Adam/Initializer/zeros/shape_as_tensor,conv2d_1/kernel/Adam/Initializer/zeros/Const*
T0*

index_type0*"
_class
loc:@conv2d_1/kernel*&
_output_shapes
: @
ź
conv2d_1/kernel/Adam
VariableV2*
dtype0*
shared_name *
shape: @*
	container *"
_class
loc:@conv2d_1/kernel*&
_output_shapes
: @
á
conv2d_1/kernel/Adam/AssignAssignconv2d_1/kernel/Adam&conv2d_1/kernel/Adam/Initializer/zeros*
T0*
use_locking(*
validate_shape(*"
_class
loc:@conv2d_1/kernel*&
_output_shapes
: @

conv2d_1/kernel/Adam/readIdentityconv2d_1/kernel/Adam*
T0*"
_class
loc:@conv2d_1/kernel*&
_output_shapes
: @
ľ
8conv2d_1/kernel/Adam_1/Initializer/zeros/shape_as_tensorConst*%
valueB"          @   *
dtype0*"
_class
loc:@conv2d_1/kernel*
_output_shapes
:

.conv2d_1/kernel/Adam_1/Initializer/zeros/ConstConst*
valueB
 *    *
dtype0*"
_class
loc:@conv2d_1/kernel*
_output_shapes
: 

(conv2d_1/kernel/Adam_1/Initializer/zerosFill8conv2d_1/kernel/Adam_1/Initializer/zeros/shape_as_tensor.conv2d_1/kernel/Adam_1/Initializer/zeros/Const*
T0*

index_type0*"
_class
loc:@conv2d_1/kernel*&
_output_shapes
: @
ž
conv2d_1/kernel/Adam_1
VariableV2*
dtype0*
shared_name *
shape: @*
	container *"
_class
loc:@conv2d_1/kernel*&
_output_shapes
: @
ç
conv2d_1/kernel/Adam_1/AssignAssignconv2d_1/kernel/Adam_1(conv2d_1/kernel/Adam_1/Initializer/zeros*
T0*
use_locking(*
validate_shape(*"
_class
loc:@conv2d_1/kernel*&
_output_shapes
: @

conv2d_1/kernel/Adam_1/readIdentityconv2d_1/kernel/Adam_1*
T0*"
_class
loc:@conv2d_1/kernel*&
_output_shapes
: @

$conv2d_1/bias/Adam/Initializer/zerosConst*
valueB@*    *
dtype0* 
_class
loc:@conv2d_1/bias*
_output_shapes
:@
 
conv2d_1/bias/Adam
VariableV2*
dtype0*
shared_name *
shape:@*
	container * 
_class
loc:@conv2d_1/bias*
_output_shapes
:@
Í
conv2d_1/bias/Adam/AssignAssignconv2d_1/bias/Adam$conv2d_1/bias/Adam/Initializer/zeros*
T0*
use_locking(*
validate_shape(* 
_class
loc:@conv2d_1/bias*
_output_shapes
:@
~
conv2d_1/bias/Adam/readIdentityconv2d_1/bias/Adam*
T0* 
_class
loc:@conv2d_1/bias*
_output_shapes
:@

&conv2d_1/bias/Adam_1/Initializer/zerosConst*
valueB@*    *
dtype0* 
_class
loc:@conv2d_1/bias*
_output_shapes
:@
˘
conv2d_1/bias/Adam_1
VariableV2*
dtype0*
shared_name *
shape:@*
	container * 
_class
loc:@conv2d_1/bias*
_output_shapes
:@
Ó
conv2d_1/bias/Adam_1/AssignAssignconv2d_1/bias/Adam_1&conv2d_1/bias/Adam_1/Initializer/zeros*
T0*
use_locking(*
validate_shape(* 
_class
loc:@conv2d_1/bias*
_output_shapes
:@

conv2d_1/bias/Adam_1/readIdentityconv2d_1/bias/Adam_1*
T0* 
_class
loc:@conv2d_1/bias*
_output_shapes
:@
ł
6conv2d_2/kernel/Adam/Initializer/zeros/shape_as_tensorConst*%
valueB"      @      *
dtype0*"
_class
loc:@conv2d_2/kernel*
_output_shapes
:

,conv2d_2/kernel/Adam/Initializer/zeros/ConstConst*
valueB
 *    *
dtype0*"
_class
loc:@conv2d_2/kernel*
_output_shapes
: 
ü
&conv2d_2/kernel/Adam/Initializer/zerosFill6conv2d_2/kernel/Adam/Initializer/zeros/shape_as_tensor,conv2d_2/kernel/Adam/Initializer/zeros/Const*
T0*

index_type0*"
_class
loc:@conv2d_2/kernel*'
_output_shapes
:@
ž
conv2d_2/kernel/Adam
VariableV2*
dtype0*
shared_name *
shape:@*
	container *"
_class
loc:@conv2d_2/kernel*'
_output_shapes
:@
â
conv2d_2/kernel/Adam/AssignAssignconv2d_2/kernel/Adam&conv2d_2/kernel/Adam/Initializer/zeros*
T0*
use_locking(*
validate_shape(*"
_class
loc:@conv2d_2/kernel*'
_output_shapes
:@

conv2d_2/kernel/Adam/readIdentityconv2d_2/kernel/Adam*
T0*"
_class
loc:@conv2d_2/kernel*'
_output_shapes
:@
ľ
8conv2d_2/kernel/Adam_1/Initializer/zeros/shape_as_tensorConst*%
valueB"      @      *
dtype0*"
_class
loc:@conv2d_2/kernel*
_output_shapes
:

.conv2d_2/kernel/Adam_1/Initializer/zeros/ConstConst*
valueB
 *    *
dtype0*"
_class
loc:@conv2d_2/kernel*
_output_shapes
: 

(conv2d_2/kernel/Adam_1/Initializer/zerosFill8conv2d_2/kernel/Adam_1/Initializer/zeros/shape_as_tensor.conv2d_2/kernel/Adam_1/Initializer/zeros/Const*
T0*

index_type0*"
_class
loc:@conv2d_2/kernel*'
_output_shapes
:@
Ŕ
conv2d_2/kernel/Adam_1
VariableV2*
dtype0*
shared_name *
shape:@*
	container *"
_class
loc:@conv2d_2/kernel*'
_output_shapes
:@
č
conv2d_2/kernel/Adam_1/AssignAssignconv2d_2/kernel/Adam_1(conv2d_2/kernel/Adam_1/Initializer/zeros*
T0*
use_locking(*
validate_shape(*"
_class
loc:@conv2d_2/kernel*'
_output_shapes
:@

conv2d_2/kernel/Adam_1/readIdentityconv2d_2/kernel/Adam_1*
T0*"
_class
loc:@conv2d_2/kernel*'
_output_shapes
:@

$conv2d_2/bias/Adam/Initializer/zerosConst*
valueB*    *
dtype0* 
_class
loc:@conv2d_2/bias*
_output_shapes	
:
˘
conv2d_2/bias/Adam
VariableV2*
dtype0*
shared_name *
shape:*
	container * 
_class
loc:@conv2d_2/bias*
_output_shapes	
:
Î
conv2d_2/bias/Adam/AssignAssignconv2d_2/bias/Adam$conv2d_2/bias/Adam/Initializer/zeros*
T0*
use_locking(*
validate_shape(* 
_class
loc:@conv2d_2/bias*
_output_shapes	
:

conv2d_2/bias/Adam/readIdentityconv2d_2/bias/Adam*
T0* 
_class
loc:@conv2d_2/bias*
_output_shapes	
:

&conv2d_2/bias/Adam_1/Initializer/zerosConst*
valueB*    *
dtype0* 
_class
loc:@conv2d_2/bias*
_output_shapes	
:
¤
conv2d_2/bias/Adam_1
VariableV2*
dtype0*
shared_name *
shape:*
	container * 
_class
loc:@conv2d_2/bias*
_output_shapes	
:
Ô
conv2d_2/bias/Adam_1/AssignAssignconv2d_2/bias/Adam_1&conv2d_2/bias/Adam_1/Initializer/zeros*
T0*
use_locking(*
validate_shape(* 
_class
loc:@conv2d_2/bias*
_output_shapes	
:

conv2d_2/bias/Adam_1/readIdentityconv2d_2/bias/Adam_1*
T0* 
_class
loc:@conv2d_2/bias*
_output_shapes	
:
Ľ
3dense/kernel/Adam/Initializer/zeros/shape_as_tensorConst*
valueB"      *
dtype0*
_class
loc:@dense/kernel*
_output_shapes
:

)dense/kernel/Adam/Initializer/zeros/ConstConst*
valueB
 *    *
dtype0*
_class
loc:@dense/kernel*
_output_shapes
: 
é
#dense/kernel/Adam/Initializer/zerosFill3dense/kernel/Adam/Initializer/zeros/shape_as_tensor)dense/kernel/Adam/Initializer/zeros/Const*
T0*

index_type0*
_class
loc:@dense/kernel* 
_output_shapes
:

Ş
dense/kernel/Adam
VariableV2*
dtype0*
shared_name *
shape:
*
	container *
_class
loc:@dense/kernel* 
_output_shapes
:

Ď
dense/kernel/Adam/AssignAssigndense/kernel/Adam#dense/kernel/Adam/Initializer/zeros*
T0*
use_locking(*
validate_shape(*
_class
loc:@dense/kernel* 
_output_shapes
:


dense/kernel/Adam/readIdentitydense/kernel/Adam*
T0*
_class
loc:@dense/kernel* 
_output_shapes
:

§
5dense/kernel/Adam_1/Initializer/zeros/shape_as_tensorConst*
valueB"      *
dtype0*
_class
loc:@dense/kernel*
_output_shapes
:

+dense/kernel/Adam_1/Initializer/zeros/ConstConst*
valueB
 *    *
dtype0*
_class
loc:@dense/kernel*
_output_shapes
: 
ď
%dense/kernel/Adam_1/Initializer/zerosFill5dense/kernel/Adam_1/Initializer/zeros/shape_as_tensor+dense/kernel/Adam_1/Initializer/zeros/Const*
T0*

index_type0*
_class
loc:@dense/kernel* 
_output_shapes
:

Ź
dense/kernel/Adam_1
VariableV2*
dtype0*
shared_name *
shape:
*
	container *
_class
loc:@dense/kernel* 
_output_shapes
:

Ő
dense/kernel/Adam_1/AssignAssigndense/kernel/Adam_1%dense/kernel/Adam_1/Initializer/zeros*
T0*
use_locking(*
validate_shape(*
_class
loc:@dense/kernel* 
_output_shapes
:


dense/kernel/Adam_1/readIdentitydense/kernel/Adam_1*
T0*
_class
loc:@dense/kernel* 
_output_shapes
:


!dense/bias/Adam/Initializer/zerosConst*
valueB*    *
dtype0*
_class
loc:@dense/bias*
_output_shapes	
:

dense/bias/Adam
VariableV2*
dtype0*
shared_name *
shape:*
	container *
_class
loc:@dense/bias*
_output_shapes	
:
Â
dense/bias/Adam/AssignAssigndense/bias/Adam!dense/bias/Adam/Initializer/zeros*
T0*
use_locking(*
validate_shape(*
_class
loc:@dense/bias*
_output_shapes	
:
v
dense/bias/Adam/readIdentitydense/bias/Adam*
T0*
_class
loc:@dense/bias*
_output_shapes	
:

#dense/bias/Adam_1/Initializer/zerosConst*
valueB*    *
dtype0*
_class
loc:@dense/bias*
_output_shapes	
:

dense/bias/Adam_1
VariableV2*
dtype0*
shared_name *
shape:*
	container *
_class
loc:@dense/bias*
_output_shapes	
:
Č
dense/bias/Adam_1/AssignAssigndense/bias/Adam_1#dense/bias/Adam_1/Initializer/zeros*
T0*
use_locking(*
validate_shape(*
_class
loc:@dense/bias*
_output_shapes	
:
z
dense/bias/Adam_1/readIdentitydense/bias/Adam_1*
T0*
_class
loc:@dense/bias*
_output_shapes	
:
Š
5dense_1/kernel/Adam/Initializer/zeros/shape_as_tensorConst*
valueB"      *
dtype0*!
_class
loc:@dense_1/kernel*
_output_shapes
:

+dense_1/kernel/Adam/Initializer/zeros/ConstConst*
valueB
 *    *
dtype0*!
_class
loc:@dense_1/kernel*
_output_shapes
: 
ń
%dense_1/kernel/Adam/Initializer/zerosFill5dense_1/kernel/Adam/Initializer/zeros/shape_as_tensor+dense_1/kernel/Adam/Initializer/zeros/Const*
T0*

index_type0*!
_class
loc:@dense_1/kernel* 
_output_shapes
:

Ž
dense_1/kernel/Adam
VariableV2*
dtype0*
shared_name *
shape:
*
	container *!
_class
loc:@dense_1/kernel* 
_output_shapes
:

×
dense_1/kernel/Adam/AssignAssigndense_1/kernel/Adam%dense_1/kernel/Adam/Initializer/zeros*
T0*
use_locking(*
validate_shape(*!
_class
loc:@dense_1/kernel* 
_output_shapes
:


dense_1/kernel/Adam/readIdentitydense_1/kernel/Adam*
T0*!
_class
loc:@dense_1/kernel* 
_output_shapes
:

Ť
7dense_1/kernel/Adam_1/Initializer/zeros/shape_as_tensorConst*
valueB"      *
dtype0*!
_class
loc:@dense_1/kernel*
_output_shapes
:

-dense_1/kernel/Adam_1/Initializer/zeros/ConstConst*
valueB
 *    *
dtype0*!
_class
loc:@dense_1/kernel*
_output_shapes
: 
÷
'dense_1/kernel/Adam_1/Initializer/zerosFill7dense_1/kernel/Adam_1/Initializer/zeros/shape_as_tensor-dense_1/kernel/Adam_1/Initializer/zeros/Const*
T0*

index_type0*!
_class
loc:@dense_1/kernel* 
_output_shapes
:

°
dense_1/kernel/Adam_1
VariableV2*
dtype0*
shared_name *
shape:
*
	container *!
_class
loc:@dense_1/kernel* 
_output_shapes
:

Ý
dense_1/kernel/Adam_1/AssignAssigndense_1/kernel/Adam_1'dense_1/kernel/Adam_1/Initializer/zeros*
T0*
use_locking(*
validate_shape(*!
_class
loc:@dense_1/kernel* 
_output_shapes
:


dense_1/kernel/Adam_1/readIdentitydense_1/kernel/Adam_1*
T0*!
_class
loc:@dense_1/kernel* 
_output_shapes
:


#dense_1/bias/Adam/Initializer/zerosConst*
valueB*    *
dtype0*
_class
loc:@dense_1/bias*
_output_shapes	
:
 
dense_1/bias/Adam
VariableV2*
dtype0*
shared_name *
shape:*
	container *
_class
loc:@dense_1/bias*
_output_shapes	
:
Ę
dense_1/bias/Adam/AssignAssigndense_1/bias/Adam#dense_1/bias/Adam/Initializer/zeros*
T0*
use_locking(*
validate_shape(*
_class
loc:@dense_1/bias*
_output_shapes	
:
|
dense_1/bias/Adam/readIdentitydense_1/bias/Adam*
T0*
_class
loc:@dense_1/bias*
_output_shapes	
:

%dense_1/bias/Adam_1/Initializer/zerosConst*
valueB*    *
dtype0*
_class
loc:@dense_1/bias*
_output_shapes	
:
˘
dense_1/bias/Adam_1
VariableV2*
dtype0*
shared_name *
shape:*
	container *
_class
loc:@dense_1/bias*
_output_shapes	
:
Đ
dense_1/bias/Adam_1/AssignAssigndense_1/bias/Adam_1%dense_1/bias/Adam_1/Initializer/zeros*
T0*
use_locking(*
validate_shape(*
_class
loc:@dense_1/bias*
_output_shapes	
:

dense_1/bias/Adam_1/readIdentitydense_1/bias/Adam_1*
T0*
_class
loc:@dense_1/bias*
_output_shapes	
:
Š
5dense_2/kernel/Adam/Initializer/zeros/shape_as_tensorConst*
valueB"      *
dtype0*!
_class
loc:@dense_2/kernel*
_output_shapes
:

+dense_2/kernel/Adam/Initializer/zeros/ConstConst*
valueB
 *    *
dtype0*!
_class
loc:@dense_2/kernel*
_output_shapes
: 
ń
%dense_2/kernel/Adam/Initializer/zerosFill5dense_2/kernel/Adam/Initializer/zeros/shape_as_tensor+dense_2/kernel/Adam/Initializer/zeros/Const*
T0*

index_type0*!
_class
loc:@dense_2/kernel* 
_output_shapes
:

Ž
dense_2/kernel/Adam
VariableV2*
dtype0*
shared_name *
shape:
*
	container *!
_class
loc:@dense_2/kernel* 
_output_shapes
:

×
dense_2/kernel/Adam/AssignAssigndense_2/kernel/Adam%dense_2/kernel/Adam/Initializer/zeros*
T0*
use_locking(*
validate_shape(*!
_class
loc:@dense_2/kernel* 
_output_shapes
:


dense_2/kernel/Adam/readIdentitydense_2/kernel/Adam*
T0*!
_class
loc:@dense_2/kernel* 
_output_shapes
:

Ť
7dense_2/kernel/Adam_1/Initializer/zeros/shape_as_tensorConst*
valueB"      *
dtype0*!
_class
loc:@dense_2/kernel*
_output_shapes
:

-dense_2/kernel/Adam_1/Initializer/zeros/ConstConst*
valueB
 *    *
dtype0*!
_class
loc:@dense_2/kernel*
_output_shapes
: 
÷
'dense_2/kernel/Adam_1/Initializer/zerosFill7dense_2/kernel/Adam_1/Initializer/zeros/shape_as_tensor-dense_2/kernel/Adam_1/Initializer/zeros/Const*
T0*

index_type0*!
_class
loc:@dense_2/kernel* 
_output_shapes
:

°
dense_2/kernel/Adam_1
VariableV2*
dtype0*
shared_name *
shape:
*
	container *!
_class
loc:@dense_2/kernel* 
_output_shapes
:

Ý
dense_2/kernel/Adam_1/AssignAssigndense_2/kernel/Adam_1'dense_2/kernel/Adam_1/Initializer/zeros*
T0*
use_locking(*
validate_shape(*!
_class
loc:@dense_2/kernel* 
_output_shapes
:


dense_2/kernel/Adam_1/readIdentitydense_2/kernel/Adam_1*
T0*!
_class
loc:@dense_2/kernel* 
_output_shapes
:


#dense_2/bias/Adam/Initializer/zerosConst*
valueB*    *
dtype0*
_class
loc:@dense_2/bias*
_output_shapes	
:
 
dense_2/bias/Adam
VariableV2*
dtype0*
shared_name *
shape:*
	container *
_class
loc:@dense_2/bias*
_output_shapes	
:
Ę
dense_2/bias/Adam/AssignAssigndense_2/bias/Adam#dense_2/bias/Adam/Initializer/zeros*
T0*
use_locking(*
validate_shape(*
_class
loc:@dense_2/bias*
_output_shapes	
:
|
dense_2/bias/Adam/readIdentitydense_2/bias/Adam*
T0*
_class
loc:@dense_2/bias*
_output_shapes	
:

%dense_2/bias/Adam_1/Initializer/zerosConst*
valueB*    *
dtype0*
_class
loc:@dense_2/bias*
_output_shapes	
:
˘
dense_2/bias/Adam_1
VariableV2*
dtype0*
shared_name *
shape:*
	container *
_class
loc:@dense_2/bias*
_output_shapes	
:
Đ
dense_2/bias/Adam_1/AssignAssigndense_2/bias/Adam_1%dense_2/bias/Adam_1/Initializer/zeros*
T0*
use_locking(*
validate_shape(*
_class
loc:@dense_2/bias*
_output_shapes	
:

dense_2/bias/Adam_1/readIdentitydense_2/bias/Adam_1*
T0*
_class
loc:@dense_2/bias*
_output_shapes	
:
Š
5dense_3/kernel/Adam/Initializer/zeros/shape_as_tensorConst*
valueB"      *
dtype0*!
_class
loc:@dense_3/kernel*
_output_shapes
:

+dense_3/kernel/Adam/Initializer/zeros/ConstConst*
valueB
 *    *
dtype0*!
_class
loc:@dense_3/kernel*
_output_shapes
: 
ń
%dense_3/kernel/Adam/Initializer/zerosFill5dense_3/kernel/Adam/Initializer/zeros/shape_as_tensor+dense_3/kernel/Adam/Initializer/zeros/Const*
T0*

index_type0*!
_class
loc:@dense_3/kernel* 
_output_shapes
:

Ž
dense_3/kernel/Adam
VariableV2*
dtype0*
shared_name *
shape:
*
	container *!
_class
loc:@dense_3/kernel* 
_output_shapes
:

×
dense_3/kernel/Adam/AssignAssigndense_3/kernel/Adam%dense_3/kernel/Adam/Initializer/zeros*
T0*
use_locking(*
validate_shape(*!
_class
loc:@dense_3/kernel* 
_output_shapes
:


dense_3/kernel/Adam/readIdentitydense_3/kernel/Adam*
T0*!
_class
loc:@dense_3/kernel* 
_output_shapes
:

Ť
7dense_3/kernel/Adam_1/Initializer/zeros/shape_as_tensorConst*
valueB"      *
dtype0*!
_class
loc:@dense_3/kernel*
_output_shapes
:

-dense_3/kernel/Adam_1/Initializer/zeros/ConstConst*
valueB
 *    *
dtype0*!
_class
loc:@dense_3/kernel*
_output_shapes
: 
÷
'dense_3/kernel/Adam_1/Initializer/zerosFill7dense_3/kernel/Adam_1/Initializer/zeros/shape_as_tensor-dense_3/kernel/Adam_1/Initializer/zeros/Const*
T0*

index_type0*!
_class
loc:@dense_3/kernel* 
_output_shapes
:

°
dense_3/kernel/Adam_1
VariableV2*
dtype0*
shared_name *
shape:
*
	container *!
_class
loc:@dense_3/kernel* 
_output_shapes
:

Ý
dense_3/kernel/Adam_1/AssignAssigndense_3/kernel/Adam_1'dense_3/kernel/Adam_1/Initializer/zeros*
T0*
use_locking(*
validate_shape(*!
_class
loc:@dense_3/kernel* 
_output_shapes
:


dense_3/kernel/Adam_1/readIdentitydense_3/kernel/Adam_1*
T0*!
_class
loc:@dense_3/kernel* 
_output_shapes
:


#dense_3/bias/Adam/Initializer/zerosConst*
valueB*    *
dtype0*
_class
loc:@dense_3/bias*
_output_shapes	
:
 
dense_3/bias/Adam
VariableV2*
dtype0*
shared_name *
shape:*
	container *
_class
loc:@dense_3/bias*
_output_shapes	
:
Ę
dense_3/bias/Adam/AssignAssigndense_3/bias/Adam#dense_3/bias/Adam/Initializer/zeros*
T0*
use_locking(*
validate_shape(*
_class
loc:@dense_3/bias*
_output_shapes	
:
|
dense_3/bias/Adam/readIdentitydense_3/bias/Adam*
T0*
_class
loc:@dense_3/bias*
_output_shapes	
:

%dense_3/bias/Adam_1/Initializer/zerosConst*
valueB*    *
dtype0*
_class
loc:@dense_3/bias*
_output_shapes	
:
˘
dense_3/bias/Adam_1
VariableV2*
dtype0*
shared_name *
shape:*
	container *
_class
loc:@dense_3/bias*
_output_shapes	
:
Đ
dense_3/bias/Adam_1/AssignAssigndense_3/bias/Adam_1%dense_3/bias/Adam_1/Initializer/zeros*
T0*
use_locking(*
validate_shape(*
_class
loc:@dense_3/bias*
_output_shapes	
:

dense_3/bias/Adam_1/readIdentitydense_3/bias/Adam_1*
T0*
_class
loc:@dense_3/bias*
_output_shapes	
:
Š
5dense_4/kernel/Adam/Initializer/zeros/shape_as_tensorConst*
valueB"      *
dtype0*!
_class
loc:@dense_4/kernel*
_output_shapes
:

+dense_4/kernel/Adam/Initializer/zeros/ConstConst*
valueB
 *    *
dtype0*!
_class
loc:@dense_4/kernel*
_output_shapes
: 
ń
%dense_4/kernel/Adam/Initializer/zerosFill5dense_4/kernel/Adam/Initializer/zeros/shape_as_tensor+dense_4/kernel/Adam/Initializer/zeros/Const*
T0*

index_type0*!
_class
loc:@dense_4/kernel* 
_output_shapes
:

Ž
dense_4/kernel/Adam
VariableV2*
dtype0*
shared_name *
shape:
*
	container *!
_class
loc:@dense_4/kernel* 
_output_shapes
:

×
dense_4/kernel/Adam/AssignAssigndense_4/kernel/Adam%dense_4/kernel/Adam/Initializer/zeros*
T0*
use_locking(*
validate_shape(*!
_class
loc:@dense_4/kernel* 
_output_shapes
:


dense_4/kernel/Adam/readIdentitydense_4/kernel/Adam*
T0*!
_class
loc:@dense_4/kernel* 
_output_shapes
:

Ť
7dense_4/kernel/Adam_1/Initializer/zeros/shape_as_tensorConst*
valueB"      *
dtype0*!
_class
loc:@dense_4/kernel*
_output_shapes
:

-dense_4/kernel/Adam_1/Initializer/zeros/ConstConst*
valueB
 *    *
dtype0*!
_class
loc:@dense_4/kernel*
_output_shapes
: 
÷
'dense_4/kernel/Adam_1/Initializer/zerosFill7dense_4/kernel/Adam_1/Initializer/zeros/shape_as_tensor-dense_4/kernel/Adam_1/Initializer/zeros/Const*
T0*

index_type0*!
_class
loc:@dense_4/kernel* 
_output_shapes
:

°
dense_4/kernel/Adam_1
VariableV2*
dtype0*
shared_name *
shape:
*
	container *!
_class
loc:@dense_4/kernel* 
_output_shapes
:

Ý
dense_4/kernel/Adam_1/AssignAssigndense_4/kernel/Adam_1'dense_4/kernel/Adam_1/Initializer/zeros*
T0*
use_locking(*
validate_shape(*!
_class
loc:@dense_4/kernel* 
_output_shapes
:


dense_4/kernel/Adam_1/readIdentitydense_4/kernel/Adam_1*
T0*!
_class
loc:@dense_4/kernel* 
_output_shapes
:


3dense_4/bias/Adam/Initializer/zeros/shape_as_tensorConst*
valueB:*
dtype0*
_class
loc:@dense_4/bias*
_output_shapes
:

)dense_4/bias/Adam/Initializer/zeros/ConstConst*
valueB
 *    *
dtype0*
_class
loc:@dense_4/bias*
_output_shapes
: 
ä
#dense_4/bias/Adam/Initializer/zerosFill3dense_4/bias/Adam/Initializer/zeros/shape_as_tensor)dense_4/bias/Adam/Initializer/zeros/Const*
T0*

index_type0*
_class
loc:@dense_4/bias*
_output_shapes	
:
 
dense_4/bias/Adam
VariableV2*
dtype0*
shared_name *
shape:*
	container *
_class
loc:@dense_4/bias*
_output_shapes	
:
Ę
dense_4/bias/Adam/AssignAssigndense_4/bias/Adam#dense_4/bias/Adam/Initializer/zeros*
T0*
use_locking(*
validate_shape(*
_class
loc:@dense_4/bias*
_output_shapes	
:
|
dense_4/bias/Adam/readIdentitydense_4/bias/Adam*
T0*
_class
loc:@dense_4/bias*
_output_shapes	
:
Ą
5dense_4/bias/Adam_1/Initializer/zeros/shape_as_tensorConst*
valueB:*
dtype0*
_class
loc:@dense_4/bias*
_output_shapes
:

+dense_4/bias/Adam_1/Initializer/zeros/ConstConst*
valueB
 *    *
dtype0*
_class
loc:@dense_4/bias*
_output_shapes
: 
ę
%dense_4/bias/Adam_1/Initializer/zerosFill5dense_4/bias/Adam_1/Initializer/zeros/shape_as_tensor+dense_4/bias/Adam_1/Initializer/zeros/Const*
T0*

index_type0*
_class
loc:@dense_4/bias*
_output_shapes	
:
˘
dense_4/bias/Adam_1
VariableV2*
dtype0*
shared_name *
shape:*
	container *
_class
loc:@dense_4/bias*
_output_shapes	
:
Đ
dense_4/bias/Adam_1/AssignAssigndense_4/bias/Adam_1%dense_4/bias/Adam_1/Initializer/zeros*
T0*
use_locking(*
validate_shape(*
_class
loc:@dense_4/bias*
_output_shapes	
:

dense_4/bias/Adam_1/readIdentitydense_4/bias/Adam_1*
T0*
_class
loc:@dense_4/bias*
_output_shapes	
:
Š
5dense_5/kernel/Adam/Initializer/zeros/shape_as_tensorConst*
valueB"   
   *
dtype0*!
_class
loc:@dense_5/kernel*
_output_shapes
:

+dense_5/kernel/Adam/Initializer/zeros/ConstConst*
valueB
 *    *
dtype0*!
_class
loc:@dense_5/kernel*
_output_shapes
: 
đ
%dense_5/kernel/Adam/Initializer/zerosFill5dense_5/kernel/Adam/Initializer/zeros/shape_as_tensor+dense_5/kernel/Adam/Initializer/zeros/Const*
T0*

index_type0*!
_class
loc:@dense_5/kernel*
_output_shapes
:	

Ź
dense_5/kernel/Adam
VariableV2*
dtype0*
shared_name *
shape:	
*
	container *!
_class
loc:@dense_5/kernel*
_output_shapes
:	

Ö
dense_5/kernel/Adam/AssignAssigndense_5/kernel/Adam%dense_5/kernel/Adam/Initializer/zeros*
T0*
use_locking(*
validate_shape(*!
_class
loc:@dense_5/kernel*
_output_shapes
:	


dense_5/kernel/Adam/readIdentitydense_5/kernel/Adam*
T0*!
_class
loc:@dense_5/kernel*
_output_shapes
:	

Ť
7dense_5/kernel/Adam_1/Initializer/zeros/shape_as_tensorConst*
valueB"   
   *
dtype0*!
_class
loc:@dense_5/kernel*
_output_shapes
:

-dense_5/kernel/Adam_1/Initializer/zeros/ConstConst*
valueB
 *    *
dtype0*!
_class
loc:@dense_5/kernel*
_output_shapes
: 
ö
'dense_5/kernel/Adam_1/Initializer/zerosFill7dense_5/kernel/Adam_1/Initializer/zeros/shape_as_tensor-dense_5/kernel/Adam_1/Initializer/zeros/Const*
T0*

index_type0*!
_class
loc:@dense_5/kernel*
_output_shapes
:	

Ž
dense_5/kernel/Adam_1
VariableV2*
dtype0*
shared_name *
shape:	
*
	container *!
_class
loc:@dense_5/kernel*
_output_shapes
:	

Ü
dense_5/kernel/Adam_1/AssignAssigndense_5/kernel/Adam_1'dense_5/kernel/Adam_1/Initializer/zeros*
T0*
use_locking(*
validate_shape(*!
_class
loc:@dense_5/kernel*
_output_shapes
:	


dense_5/kernel/Adam_1/readIdentitydense_5/kernel/Adam_1*
T0*!
_class
loc:@dense_5/kernel*
_output_shapes
:	


#dense_5/bias/Adam/Initializer/zerosConst*
valueB
*    *
dtype0*
_class
loc:@dense_5/bias*
_output_shapes
:


dense_5/bias/Adam
VariableV2*
dtype0*
shared_name *
shape:
*
	container *
_class
loc:@dense_5/bias*
_output_shapes
:

É
dense_5/bias/Adam/AssignAssigndense_5/bias/Adam#dense_5/bias/Adam/Initializer/zeros*
T0*
use_locking(*
validate_shape(*
_class
loc:@dense_5/bias*
_output_shapes
:

{
dense_5/bias/Adam/readIdentitydense_5/bias/Adam*
T0*
_class
loc:@dense_5/bias*
_output_shapes
:


%dense_5/bias/Adam_1/Initializer/zerosConst*
valueB
*    *
dtype0*
_class
loc:@dense_5/bias*
_output_shapes
:

 
dense_5/bias/Adam_1
VariableV2*
dtype0*
shared_name *
shape:
*
	container *
_class
loc:@dense_5/bias*
_output_shapes
:

Ď
dense_5/bias/Adam_1/AssignAssigndense_5/bias/Adam_1%dense_5/bias/Adam_1/Initializer/zeros*
T0*
use_locking(*
validate_shape(*
_class
loc:@dense_5/bias*
_output_shapes
:


dense_5/bias/Adam_1/readIdentitydense_5/bias/Adam_1*
T0*
_class
loc:@dense_5/bias*
_output_shapes
:

W
Adam/learning_rateConst*
valueB
 *o:*
dtype0*
_output_shapes
: 
O

Adam/beta1Const*
valueB
 *fff?*
dtype0*
_output_shapes
: 
O

Adam/beta2Const*
valueB
 *wž?*
dtype0*
_output_shapes
: 
Q
Adam/epsilonConst*
valueB
 *wĚ+2*
dtype0*
_output_shapes
: 
ú
#Adam/update_conv2d/kernel/ApplyAdam	ApplyAdamconv2d/kernelconv2d/kernel/Adamconv2d/kernel/Adam_1beta1_power/readbeta2_power/readAdam/learning_rate
Adam/beta1
Adam/beta2Adam/epsilon7gradients/conv2d/Conv2D_grad/tuple/control_dependency_1*
T0*
use_locking( * 
_class
loc:@conv2d/kernel*
use_nesterov( *&
_output_shapes
: 
ĺ
!Adam/update_conv2d/bias/ApplyAdam	ApplyAdamconv2d/biasconv2d/bias/Adamconv2d/bias/Adam_1beta1_power/readbeta2_power/readAdam/learning_rate
Adam/beta1
Adam/beta2Adam/epsilon8gradients/conv2d/BiasAdd_grad/tuple/control_dependency_1*
T0*
use_locking( *
_class
loc:@conv2d/bias*
use_nesterov( *
_output_shapes
: 

%Adam/update_conv2d_1/kernel/ApplyAdam	ApplyAdamconv2d_1/kernelconv2d_1/kernel/Adamconv2d_1/kernel/Adam_1beta1_power/readbeta2_power/readAdam/learning_rate
Adam/beta1
Adam/beta2Adam/epsilon9gradients/conv2d_1/Conv2D_grad/tuple/control_dependency_1*
T0*
use_locking( *"
_class
loc:@conv2d_1/kernel*
use_nesterov( *&
_output_shapes
: @
ń
#Adam/update_conv2d_1/bias/ApplyAdam	ApplyAdamconv2d_1/biasconv2d_1/bias/Adamconv2d_1/bias/Adam_1beta1_power/readbeta2_power/readAdam/learning_rate
Adam/beta1
Adam/beta2Adam/epsilon:gradients/conv2d_1/BiasAdd_grad/tuple/control_dependency_1*
T0*
use_locking( * 
_class
loc:@conv2d_1/bias*
use_nesterov( *
_output_shapes
:@

%Adam/update_conv2d_2/kernel/ApplyAdam	ApplyAdamconv2d_2/kernelconv2d_2/kernel/Adamconv2d_2/kernel/Adam_1beta1_power/readbeta2_power/readAdam/learning_rate
Adam/beta1
Adam/beta2Adam/epsilon9gradients/conv2d_2/Conv2D_grad/tuple/control_dependency_1*
T0*
use_locking( *"
_class
loc:@conv2d_2/kernel*
use_nesterov( *'
_output_shapes
:@
ň
#Adam/update_conv2d_2/bias/ApplyAdam	ApplyAdamconv2d_2/biasconv2d_2/bias/Adamconv2d_2/bias/Adam_1beta1_power/readbeta2_power/readAdam/learning_rate
Adam/beta1
Adam/beta2Adam/epsilon:gradients/conv2d_2/BiasAdd_grad/tuple/control_dependency_1*
T0*
use_locking( * 
_class
loc:@conv2d_2/bias*
use_nesterov( *
_output_shapes	
:
î
"Adam/update_dense/kernel/ApplyAdam	ApplyAdamdense/kerneldense/kernel/Adamdense/kernel/Adam_1beta1_power/readbeta2_power/readAdam/learning_rate
Adam/beta1
Adam/beta2Adam/epsilon6gradients/dense/MatMul_grad/tuple/control_dependency_1*
T0*
use_locking( *
_class
loc:@dense/kernel*
use_nesterov( * 
_output_shapes
:

ŕ
 Adam/update_dense/bias/ApplyAdam	ApplyAdam
dense/biasdense/bias/Adamdense/bias/Adam_1beta1_power/readbeta2_power/readAdam/learning_rate
Adam/beta1
Adam/beta2Adam/epsilon7gradients/dense/BiasAdd_grad/tuple/control_dependency_1*
T0*
use_locking( *
_class
loc:@dense/bias*
use_nesterov( *
_output_shapes	
:
ú
$Adam/update_dense_1/kernel/ApplyAdam	ApplyAdamdense_1/kerneldense_1/kernel/Adamdense_1/kernel/Adam_1beta1_power/readbeta2_power/readAdam/learning_rate
Adam/beta1
Adam/beta2Adam/epsilon8gradients/dense_1/MatMul_grad/tuple/control_dependency_1*
T0*
use_locking( *!
_class
loc:@dense_1/kernel*
use_nesterov( * 
_output_shapes
:

ě
"Adam/update_dense_1/bias/ApplyAdam	ApplyAdamdense_1/biasdense_1/bias/Adamdense_1/bias/Adam_1beta1_power/readbeta2_power/readAdam/learning_rate
Adam/beta1
Adam/beta2Adam/epsilon9gradients/dense_1/BiasAdd_grad/tuple/control_dependency_1*
T0*
use_locking( *
_class
loc:@dense_1/bias*
use_nesterov( *
_output_shapes	
:
ú
$Adam/update_dense_2/kernel/ApplyAdam	ApplyAdamdense_2/kerneldense_2/kernel/Adamdense_2/kernel/Adam_1beta1_power/readbeta2_power/readAdam/learning_rate
Adam/beta1
Adam/beta2Adam/epsilon8gradients/dense_2/MatMul_grad/tuple/control_dependency_1*
T0*
use_locking( *!
_class
loc:@dense_2/kernel*
use_nesterov( * 
_output_shapes
:

ě
"Adam/update_dense_2/bias/ApplyAdam	ApplyAdamdense_2/biasdense_2/bias/Adamdense_2/bias/Adam_1beta1_power/readbeta2_power/readAdam/learning_rate
Adam/beta1
Adam/beta2Adam/epsilon9gradients/dense_2/BiasAdd_grad/tuple/control_dependency_1*
T0*
use_locking( *
_class
loc:@dense_2/bias*
use_nesterov( *
_output_shapes	
:
ú
$Adam/update_dense_3/kernel/ApplyAdam	ApplyAdamdense_3/kerneldense_3/kernel/Adamdense_3/kernel/Adam_1beta1_power/readbeta2_power/readAdam/learning_rate
Adam/beta1
Adam/beta2Adam/epsilon8gradients/dense_3/MatMul_grad/tuple/control_dependency_1*
T0*
use_locking( *!
_class
loc:@dense_3/kernel*
use_nesterov( * 
_output_shapes
:

ě
"Adam/update_dense_3/bias/ApplyAdam	ApplyAdamdense_3/biasdense_3/bias/Adamdense_3/bias/Adam_1beta1_power/readbeta2_power/readAdam/learning_rate
Adam/beta1
Adam/beta2Adam/epsilon9gradients/dense_3/BiasAdd_grad/tuple/control_dependency_1*
T0*
use_locking( *
_class
loc:@dense_3/bias*
use_nesterov( *
_output_shapes	
:
ú
$Adam/update_dense_4/kernel/ApplyAdam	ApplyAdamdense_4/kerneldense_4/kernel/Adamdense_4/kernel/Adam_1beta1_power/readbeta2_power/readAdam/learning_rate
Adam/beta1
Adam/beta2Adam/epsilon8gradients/dense_4/MatMul_grad/tuple/control_dependency_1*
T0*
use_locking( *!
_class
loc:@dense_4/kernel*
use_nesterov( * 
_output_shapes
:

ě
"Adam/update_dense_4/bias/ApplyAdam	ApplyAdamdense_4/biasdense_4/bias/Adamdense_4/bias/Adam_1beta1_power/readbeta2_power/readAdam/learning_rate
Adam/beta1
Adam/beta2Adam/epsilon9gradients/dense_4/BiasAdd_grad/tuple/control_dependency_1*
T0*
use_locking( *
_class
loc:@dense_4/bias*
use_nesterov( *
_output_shapes	
:
ů
$Adam/update_dense_5/kernel/ApplyAdam	ApplyAdamdense_5/kerneldense_5/kernel/Adamdense_5/kernel/Adam_1beta1_power/readbeta2_power/readAdam/learning_rate
Adam/beta1
Adam/beta2Adam/epsilon8gradients/dense_5/MatMul_grad/tuple/control_dependency_1*
T0*
use_locking( *!
_class
loc:@dense_5/kernel*
use_nesterov( *
_output_shapes
:	

ë
"Adam/update_dense_5/bias/ApplyAdam	ApplyAdamdense_5/biasdense_5/bias/Adamdense_5/bias/Adam_1beta1_power/readbeta2_power/readAdam/learning_rate
Adam/beta1
Adam/beta2Adam/epsilon9gradients/dense_5/BiasAdd_grad/tuple/control_dependency_1*
T0*
use_locking( *
_class
loc:@dense_5/bias*
use_nesterov( *
_output_shapes
:


Adam/mulMulbeta1_power/read
Adam/beta1"^Adam/update_conv2d/bias/ApplyAdam$^Adam/update_conv2d/kernel/ApplyAdam$^Adam/update_conv2d_1/bias/ApplyAdam&^Adam/update_conv2d_1/kernel/ApplyAdam$^Adam/update_conv2d_2/bias/ApplyAdam&^Adam/update_conv2d_2/kernel/ApplyAdam!^Adam/update_dense/bias/ApplyAdam#^Adam/update_dense/kernel/ApplyAdam#^Adam/update_dense_1/bias/ApplyAdam%^Adam/update_dense_1/kernel/ApplyAdam#^Adam/update_dense_2/bias/ApplyAdam%^Adam/update_dense_2/kernel/ApplyAdam#^Adam/update_dense_3/bias/ApplyAdam%^Adam/update_dense_3/kernel/ApplyAdam#^Adam/update_dense_4/bias/ApplyAdam%^Adam/update_dense_4/kernel/ApplyAdam#^Adam/update_dense_5/bias/ApplyAdam%^Adam/update_dense_5/kernel/ApplyAdam*
T0*
_class
loc:@conv2d/bias*
_output_shapes
: 

Adam/AssignAssignbeta1_powerAdam/mul*
T0*
use_locking( *
validate_shape(*
_class
loc:@conv2d/bias*
_output_shapes
: 


Adam/mul_1Mulbeta2_power/read
Adam/beta2"^Adam/update_conv2d/bias/ApplyAdam$^Adam/update_conv2d/kernel/ApplyAdam$^Adam/update_conv2d_1/bias/ApplyAdam&^Adam/update_conv2d_1/kernel/ApplyAdam$^Adam/update_conv2d_2/bias/ApplyAdam&^Adam/update_conv2d_2/kernel/ApplyAdam!^Adam/update_dense/bias/ApplyAdam#^Adam/update_dense/kernel/ApplyAdam#^Adam/update_dense_1/bias/ApplyAdam%^Adam/update_dense_1/kernel/ApplyAdam#^Adam/update_dense_2/bias/ApplyAdam%^Adam/update_dense_2/kernel/ApplyAdam#^Adam/update_dense_3/bias/ApplyAdam%^Adam/update_dense_3/kernel/ApplyAdam#^Adam/update_dense_4/bias/ApplyAdam%^Adam/update_dense_4/kernel/ApplyAdam#^Adam/update_dense_5/bias/ApplyAdam%^Adam/update_dense_5/kernel/ApplyAdam*
T0*
_class
loc:@conv2d/bias*
_output_shapes
: 

Adam/Assign_1Assignbeta2_power
Adam/mul_1*
T0*
use_locking( *
validate_shape(*
_class
loc:@conv2d/bias*
_output_shapes
: 
Ô
AdamNoOp^Adam/Assign^Adam/Assign_1"^Adam/update_conv2d/bias/ApplyAdam$^Adam/update_conv2d/kernel/ApplyAdam$^Adam/update_conv2d_1/bias/ApplyAdam&^Adam/update_conv2d_1/kernel/ApplyAdam$^Adam/update_conv2d_2/bias/ApplyAdam&^Adam/update_conv2d_2/kernel/ApplyAdam!^Adam/update_dense/bias/ApplyAdam#^Adam/update_dense/kernel/ApplyAdam#^Adam/update_dense_1/bias/ApplyAdam%^Adam/update_dense_1/kernel/ApplyAdam#^Adam/update_dense_2/bias/ApplyAdam%^Adam/update_dense_2/kernel/ApplyAdam#^Adam/update_dense_3/bias/ApplyAdam%^Adam/update_dense_3/kernel/ApplyAdam#^Adam/update_dense_4/bias/ApplyAdam%^Adam/update_dense_4/kernel/ApplyAdam#^Adam/update_dense_5/bias/ApplyAdam%^Adam/update_dense_5/kernel/ApplyAdam
R
ArgMax/dimensionConst*
value	B :*
dtype0*
_output_shapes
: 

ArgMaxArgMaxdense_5/BiasAddArgMax/dimension*
output_type0	*
T0*

Tidx0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙
T
ArgMax_1/dimensionConst*
value	B :*
dtype0*
_output_shapes
: 

ArgMax_1ArgMaxPlaceholderArgMax_1/dimension*
output_type0	*
T0*

Tidx0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙
N
EqualEqualArgMaxArgMax_1*
T0	*#
_output_shapes
:˙˙˙˙˙˙˙˙˙
`
CastCastEqual*

DstT0*
Truncate( *

SrcT0
*#
_output_shapes
:˙˙˙˙˙˙˙˙˙
O
ConstConst*
valueB: *
dtype0*
_output_shapes
:
U
SumSumCastConst*
	keep_dims( *
T0*

Tidx0*
_output_shapes
: 
â
initNoOp^beta1_power/Assign^beta2_power/Assign^conv2d/bias/Adam/Assign^conv2d/bias/Adam_1/Assign^conv2d/bias/Assign^conv2d/kernel/Adam/Assign^conv2d/kernel/Adam_1/Assign^conv2d/kernel/Assign^conv2d_1/bias/Adam/Assign^conv2d_1/bias/Adam_1/Assign^conv2d_1/bias/Assign^conv2d_1/kernel/Adam/Assign^conv2d_1/kernel/Adam_1/Assign^conv2d_1/kernel/Assign^conv2d_2/bias/Adam/Assign^conv2d_2/bias/Adam_1/Assign^conv2d_2/bias/Assign^conv2d_2/kernel/Adam/Assign^conv2d_2/kernel/Adam_1/Assign^conv2d_2/kernel/Assign^dense/bias/Adam/Assign^dense/bias/Adam_1/Assign^dense/bias/Assign^dense/kernel/Adam/Assign^dense/kernel/Adam_1/Assign^dense/kernel/Assign^dense_1/bias/Adam/Assign^dense_1/bias/Adam_1/Assign^dense_1/bias/Assign^dense_1/kernel/Adam/Assign^dense_1/kernel/Adam_1/Assign^dense_1/kernel/Assign^dense_2/bias/Adam/Assign^dense_2/bias/Adam_1/Assign^dense_2/bias/Assign^dense_2/kernel/Adam/Assign^dense_2/kernel/Adam_1/Assign^dense_2/kernel/Assign^dense_3/bias/Adam/Assign^dense_3/bias/Adam_1/Assign^dense_3/bias/Assign^dense_3/kernel/Adam/Assign^dense_3/kernel/Adam_1/Assign^dense_3/kernel/Assign^dense_4/bias/Adam/Assign^dense_4/bias/Adam_1/Assign^dense_4/bias/Assign^dense_4/kernel/Adam/Assign^dense_4/kernel/Adam_1/Assign^dense_4/kernel/Assign^dense_5/bias/Adam/Assign^dense_5/bias/Adam_1/Assign^dense_5/bias/Assign^dense_5/kernel/Adam/Assign^dense_5/kernel/Adam_1/Assign^dense_5/kernel/Assign
Y
save/filename/inputConst*
valueB Bmodel*
dtype0*
_output_shapes
: 
n
save/filenamePlaceholderWithDefaultsave/filename/input*
dtype0*
shape: *
_output_shapes
: 
e

save/ConstPlaceholderWithDefaultsave/filename*
dtype0*
shape: *
_output_shapes
: 

save/StringJoin/inputs_1Const*<
value3B1 B+_temp_2deeb957e50e487195668270864d2723/part*
dtype0*
_output_shapes
: 
u
save/StringJoin
StringJoin
save/Constsave/StringJoin/inputs_1*
N*
	separator *
_output_shapes
: 
Q
save/num_shardsConst*
value	B :*
dtype0*
_output_shapes
: 
k
save/ShardedFilename/shardConst"/device:CPU:0*
value	B : *
dtype0*
_output_shapes
: 

save/ShardedFilenameShardedFilenamesave/StringJoinsave/ShardedFilename/shardsave/num_shards"/device:CPU:0*
_output_shapes
: 
	
save/SaveV2/tensor_namesConst"/device:CPU:0*Ť
valueĄB8Bbeta1_powerBbeta2_powerBconv2d/biasBconv2d/bias/AdamBconv2d/bias/Adam_1Bconv2d/kernelBconv2d/kernel/AdamBconv2d/kernel/Adam_1Bconv2d_1/biasBconv2d_1/bias/AdamBconv2d_1/bias/Adam_1Bconv2d_1/kernelBconv2d_1/kernel/AdamBconv2d_1/kernel/Adam_1Bconv2d_2/biasBconv2d_2/bias/AdamBconv2d_2/bias/Adam_1Bconv2d_2/kernelBconv2d_2/kernel/AdamBconv2d_2/kernel/Adam_1B
dense/biasBdense/bias/AdamBdense/bias/Adam_1Bdense/kernelBdense/kernel/AdamBdense/kernel/Adam_1Bdense_1/biasBdense_1/bias/AdamBdense_1/bias/Adam_1Bdense_1/kernelBdense_1/kernel/AdamBdense_1/kernel/Adam_1Bdense_2/biasBdense_2/bias/AdamBdense_2/bias/Adam_1Bdense_2/kernelBdense_2/kernel/AdamBdense_2/kernel/Adam_1Bdense_3/biasBdense_3/bias/AdamBdense_3/bias/Adam_1Bdense_3/kernelBdense_3/kernel/AdamBdense_3/kernel/Adam_1Bdense_4/biasBdense_4/bias/AdamBdense_4/bias/Adam_1Bdense_4/kernelBdense_4/kernel/AdamBdense_4/kernel/Adam_1Bdense_5/biasBdense_5/bias/AdamBdense_5/bias/Adam_1Bdense_5/kernelBdense_5/kernel/AdamBdense_5/kernel/Adam_1*
dtype0*
_output_shapes
:8
ă
save/SaveV2/shape_and_slicesConst"/device:CPU:0*
valuezBx8B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B *
dtype0*
_output_shapes
:8
Đ	
save/SaveV2SaveV2save/ShardedFilenamesave/SaveV2/tensor_namessave/SaveV2/shape_and_slicesbeta1_powerbeta2_powerconv2d/biasconv2d/bias/Adamconv2d/bias/Adam_1conv2d/kernelconv2d/kernel/Adamconv2d/kernel/Adam_1conv2d_1/biasconv2d_1/bias/Adamconv2d_1/bias/Adam_1conv2d_1/kernelconv2d_1/kernel/Adamconv2d_1/kernel/Adam_1conv2d_2/biasconv2d_2/bias/Adamconv2d_2/bias/Adam_1conv2d_2/kernelconv2d_2/kernel/Adamconv2d_2/kernel/Adam_1
dense/biasdense/bias/Adamdense/bias/Adam_1dense/kerneldense/kernel/Adamdense/kernel/Adam_1dense_1/biasdense_1/bias/Adamdense_1/bias/Adam_1dense_1/kerneldense_1/kernel/Adamdense_1/kernel/Adam_1dense_2/biasdense_2/bias/Adamdense_2/bias/Adam_1dense_2/kerneldense_2/kernel/Adamdense_2/kernel/Adam_1dense_3/biasdense_3/bias/Adamdense_3/bias/Adam_1dense_3/kerneldense_3/kernel/Adamdense_3/kernel/Adam_1dense_4/biasdense_4/bias/Adamdense_4/bias/Adam_1dense_4/kerneldense_4/kernel/Adamdense_4/kernel/Adam_1dense_5/biasdense_5/bias/Adamdense_5/bias/Adam_1dense_5/kerneldense_5/kernel/Adamdense_5/kernel/Adam_1"/device:CPU:0*F
dtypes<
:28
 
save/control_dependencyIdentitysave/ShardedFilename^save/SaveV2"/device:CPU:0*
T0*'
_class
loc:@save/ShardedFilename*
_output_shapes
: 
Ź
+save/MergeV2Checkpoints/checkpoint_prefixesPacksave/ShardedFilename^save/control_dependency"/device:CPU:0*

axis *
T0*
N*
_output_shapes
:

save/MergeV2CheckpointsMergeV2Checkpoints+save/MergeV2Checkpoints/checkpoint_prefixes
save/Const"/device:CPU:0*
delete_old_dirs(

save/IdentityIdentity
save/Const^save/MergeV2Checkpoints^save/control_dependency"/device:CPU:0*
T0*
_output_shapes
: 
	
save/RestoreV2/tensor_namesConst"/device:CPU:0*Ť
valueĄB8Bbeta1_powerBbeta2_powerBconv2d/biasBconv2d/bias/AdamBconv2d/bias/Adam_1Bconv2d/kernelBconv2d/kernel/AdamBconv2d/kernel/Adam_1Bconv2d_1/biasBconv2d_1/bias/AdamBconv2d_1/bias/Adam_1Bconv2d_1/kernelBconv2d_1/kernel/AdamBconv2d_1/kernel/Adam_1Bconv2d_2/biasBconv2d_2/bias/AdamBconv2d_2/bias/Adam_1Bconv2d_2/kernelBconv2d_2/kernel/AdamBconv2d_2/kernel/Adam_1B
dense/biasBdense/bias/AdamBdense/bias/Adam_1Bdense/kernelBdense/kernel/AdamBdense/kernel/Adam_1Bdense_1/biasBdense_1/bias/AdamBdense_1/bias/Adam_1Bdense_1/kernelBdense_1/kernel/AdamBdense_1/kernel/Adam_1Bdense_2/biasBdense_2/bias/AdamBdense_2/bias/Adam_1Bdense_2/kernelBdense_2/kernel/AdamBdense_2/kernel/Adam_1Bdense_3/biasBdense_3/bias/AdamBdense_3/bias/Adam_1Bdense_3/kernelBdense_3/kernel/AdamBdense_3/kernel/Adam_1Bdense_4/biasBdense_4/bias/AdamBdense_4/bias/Adam_1Bdense_4/kernelBdense_4/kernel/AdamBdense_4/kernel/Adam_1Bdense_5/biasBdense_5/bias/AdamBdense_5/bias/Adam_1Bdense_5/kernelBdense_5/kernel/AdamBdense_5/kernel/Adam_1*
dtype0*
_output_shapes
:8
ć
save/RestoreV2/shape_and_slicesConst"/device:CPU:0*
valuezBx8B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B *
dtype0*
_output_shapes
:8
ľ
save/RestoreV2	RestoreV2
save/Constsave/RestoreV2/tensor_namessave/RestoreV2/shape_and_slices"/device:CPU:0*F
dtypes<
:28*ö
_output_shapesă
ŕ::::::::::::::::::::::::::::::::::::::::::::::::::::::::

save/AssignAssignbeta1_powersave/RestoreV2*
T0*
use_locking(*
validate_shape(*
_class
loc:@conv2d/bias*
_output_shapes
: 
 
save/Assign_1Assignbeta2_powersave/RestoreV2:1*
T0*
use_locking(*
validate_shape(*
_class
loc:@conv2d/bias*
_output_shapes
: 
¤
save/Assign_2Assignconv2d/biassave/RestoreV2:2*
T0*
use_locking(*
validate_shape(*
_class
loc:@conv2d/bias*
_output_shapes
: 
Š
save/Assign_3Assignconv2d/bias/Adamsave/RestoreV2:3*
T0*
use_locking(*
validate_shape(*
_class
loc:@conv2d/bias*
_output_shapes
: 
Ť
save/Assign_4Assignconv2d/bias/Adam_1save/RestoreV2:4*
T0*
use_locking(*
validate_shape(*
_class
loc:@conv2d/bias*
_output_shapes
: 
´
save/Assign_5Assignconv2d/kernelsave/RestoreV2:5*
T0*
use_locking(*
validate_shape(* 
_class
loc:@conv2d/kernel*&
_output_shapes
: 
š
save/Assign_6Assignconv2d/kernel/Adamsave/RestoreV2:6*
T0*
use_locking(*
validate_shape(* 
_class
loc:@conv2d/kernel*&
_output_shapes
: 
ť
save/Assign_7Assignconv2d/kernel/Adam_1save/RestoreV2:7*
T0*
use_locking(*
validate_shape(* 
_class
loc:@conv2d/kernel*&
_output_shapes
: 
¨
save/Assign_8Assignconv2d_1/biassave/RestoreV2:8*
T0*
use_locking(*
validate_shape(* 
_class
loc:@conv2d_1/bias*
_output_shapes
:@
­
save/Assign_9Assignconv2d_1/bias/Adamsave/RestoreV2:9*
T0*
use_locking(*
validate_shape(* 
_class
loc:@conv2d_1/bias*
_output_shapes
:@
ą
save/Assign_10Assignconv2d_1/bias/Adam_1save/RestoreV2:10*
T0*
use_locking(*
validate_shape(* 
_class
loc:@conv2d_1/bias*
_output_shapes
:@
ş
save/Assign_11Assignconv2d_1/kernelsave/RestoreV2:11*
T0*
use_locking(*
validate_shape(*"
_class
loc:@conv2d_1/kernel*&
_output_shapes
: @
ż
save/Assign_12Assignconv2d_1/kernel/Adamsave/RestoreV2:12*
T0*
use_locking(*
validate_shape(*"
_class
loc:@conv2d_1/kernel*&
_output_shapes
: @
Á
save/Assign_13Assignconv2d_1/kernel/Adam_1save/RestoreV2:13*
T0*
use_locking(*
validate_shape(*"
_class
loc:@conv2d_1/kernel*&
_output_shapes
: @
Ť
save/Assign_14Assignconv2d_2/biassave/RestoreV2:14*
T0*
use_locking(*
validate_shape(* 
_class
loc:@conv2d_2/bias*
_output_shapes	
:
°
save/Assign_15Assignconv2d_2/bias/Adamsave/RestoreV2:15*
T0*
use_locking(*
validate_shape(* 
_class
loc:@conv2d_2/bias*
_output_shapes	
:
˛
save/Assign_16Assignconv2d_2/bias/Adam_1save/RestoreV2:16*
T0*
use_locking(*
validate_shape(* 
_class
loc:@conv2d_2/bias*
_output_shapes	
:
ť
save/Assign_17Assignconv2d_2/kernelsave/RestoreV2:17*
T0*
use_locking(*
validate_shape(*"
_class
loc:@conv2d_2/kernel*'
_output_shapes
:@
Ŕ
save/Assign_18Assignconv2d_2/kernel/Adamsave/RestoreV2:18*
T0*
use_locking(*
validate_shape(*"
_class
loc:@conv2d_2/kernel*'
_output_shapes
:@
Â
save/Assign_19Assignconv2d_2/kernel/Adam_1save/RestoreV2:19*
T0*
use_locking(*
validate_shape(*"
_class
loc:@conv2d_2/kernel*'
_output_shapes
:@
Ľ
save/Assign_20Assign
dense/biassave/RestoreV2:20*
T0*
use_locking(*
validate_shape(*
_class
loc:@dense/bias*
_output_shapes	
:
Ş
save/Assign_21Assigndense/bias/Adamsave/RestoreV2:21*
T0*
use_locking(*
validate_shape(*
_class
loc:@dense/bias*
_output_shapes	
:
Ź
save/Assign_22Assigndense/bias/Adam_1save/RestoreV2:22*
T0*
use_locking(*
validate_shape(*
_class
loc:@dense/bias*
_output_shapes	
:
Ž
save/Assign_23Assigndense/kernelsave/RestoreV2:23*
T0*
use_locking(*
validate_shape(*
_class
loc:@dense/kernel* 
_output_shapes
:

ł
save/Assign_24Assigndense/kernel/Adamsave/RestoreV2:24*
T0*
use_locking(*
validate_shape(*
_class
loc:@dense/kernel* 
_output_shapes
:

ľ
save/Assign_25Assigndense/kernel/Adam_1save/RestoreV2:25*
T0*
use_locking(*
validate_shape(*
_class
loc:@dense/kernel* 
_output_shapes
:

Š
save/Assign_26Assigndense_1/biassave/RestoreV2:26*
T0*
use_locking(*
validate_shape(*
_class
loc:@dense_1/bias*
_output_shapes	
:
Ž
save/Assign_27Assigndense_1/bias/Adamsave/RestoreV2:27*
T0*
use_locking(*
validate_shape(*
_class
loc:@dense_1/bias*
_output_shapes	
:
°
save/Assign_28Assigndense_1/bias/Adam_1save/RestoreV2:28*
T0*
use_locking(*
validate_shape(*
_class
loc:@dense_1/bias*
_output_shapes	
:
˛
save/Assign_29Assigndense_1/kernelsave/RestoreV2:29*
T0*
use_locking(*
validate_shape(*!
_class
loc:@dense_1/kernel* 
_output_shapes
:

ˇ
save/Assign_30Assigndense_1/kernel/Adamsave/RestoreV2:30*
T0*
use_locking(*
validate_shape(*!
_class
loc:@dense_1/kernel* 
_output_shapes
:

š
save/Assign_31Assigndense_1/kernel/Adam_1save/RestoreV2:31*
T0*
use_locking(*
validate_shape(*!
_class
loc:@dense_1/kernel* 
_output_shapes
:

Š
save/Assign_32Assigndense_2/biassave/RestoreV2:32*
T0*
use_locking(*
validate_shape(*
_class
loc:@dense_2/bias*
_output_shapes	
:
Ž
save/Assign_33Assigndense_2/bias/Adamsave/RestoreV2:33*
T0*
use_locking(*
validate_shape(*
_class
loc:@dense_2/bias*
_output_shapes	
:
°
save/Assign_34Assigndense_2/bias/Adam_1save/RestoreV2:34*
T0*
use_locking(*
validate_shape(*
_class
loc:@dense_2/bias*
_output_shapes	
:
˛
save/Assign_35Assigndense_2/kernelsave/RestoreV2:35*
T0*
use_locking(*
validate_shape(*!
_class
loc:@dense_2/kernel* 
_output_shapes
:

ˇ
save/Assign_36Assigndense_2/kernel/Adamsave/RestoreV2:36*
T0*
use_locking(*
validate_shape(*!
_class
loc:@dense_2/kernel* 
_output_shapes
:

š
save/Assign_37Assigndense_2/kernel/Adam_1save/RestoreV2:37*
T0*
use_locking(*
validate_shape(*!
_class
loc:@dense_2/kernel* 
_output_shapes
:

Š
save/Assign_38Assigndense_3/biassave/RestoreV2:38*
T0*
use_locking(*
validate_shape(*
_class
loc:@dense_3/bias*
_output_shapes	
:
Ž
save/Assign_39Assigndense_3/bias/Adamsave/RestoreV2:39*
T0*
use_locking(*
validate_shape(*
_class
loc:@dense_3/bias*
_output_shapes	
:
°
save/Assign_40Assigndense_3/bias/Adam_1save/RestoreV2:40*
T0*
use_locking(*
validate_shape(*
_class
loc:@dense_3/bias*
_output_shapes	
:
˛
save/Assign_41Assigndense_3/kernelsave/RestoreV2:41*
T0*
use_locking(*
validate_shape(*!
_class
loc:@dense_3/kernel* 
_output_shapes
:

ˇ
save/Assign_42Assigndense_3/kernel/Adamsave/RestoreV2:42*
T0*
use_locking(*
validate_shape(*!
_class
loc:@dense_3/kernel* 
_output_shapes
:

š
save/Assign_43Assigndense_3/kernel/Adam_1save/RestoreV2:43*
T0*
use_locking(*
validate_shape(*!
_class
loc:@dense_3/kernel* 
_output_shapes
:

Š
save/Assign_44Assigndense_4/biassave/RestoreV2:44*
T0*
use_locking(*
validate_shape(*
_class
loc:@dense_4/bias*
_output_shapes	
:
Ž
save/Assign_45Assigndense_4/bias/Adamsave/RestoreV2:45*
T0*
use_locking(*
validate_shape(*
_class
loc:@dense_4/bias*
_output_shapes	
:
°
save/Assign_46Assigndense_4/bias/Adam_1save/RestoreV2:46*
T0*
use_locking(*
validate_shape(*
_class
loc:@dense_4/bias*
_output_shapes	
:
˛
save/Assign_47Assigndense_4/kernelsave/RestoreV2:47*
T0*
use_locking(*
validate_shape(*!
_class
loc:@dense_4/kernel* 
_output_shapes
:

ˇ
save/Assign_48Assigndense_4/kernel/Adamsave/RestoreV2:48*
T0*
use_locking(*
validate_shape(*!
_class
loc:@dense_4/kernel* 
_output_shapes
:

š
save/Assign_49Assigndense_4/kernel/Adam_1save/RestoreV2:49*
T0*
use_locking(*
validate_shape(*!
_class
loc:@dense_4/kernel* 
_output_shapes
:

¨
save/Assign_50Assigndense_5/biassave/RestoreV2:50*
T0*
use_locking(*
validate_shape(*
_class
loc:@dense_5/bias*
_output_shapes
:

­
save/Assign_51Assigndense_5/bias/Adamsave/RestoreV2:51*
T0*
use_locking(*
validate_shape(*
_class
loc:@dense_5/bias*
_output_shapes
:

Ż
save/Assign_52Assigndense_5/bias/Adam_1save/RestoreV2:52*
T0*
use_locking(*
validate_shape(*
_class
loc:@dense_5/bias*
_output_shapes
:

ą
save/Assign_53Assigndense_5/kernelsave/RestoreV2:53*
T0*
use_locking(*
validate_shape(*!
_class
loc:@dense_5/kernel*
_output_shapes
:	

ś
save/Assign_54Assigndense_5/kernel/Adamsave/RestoreV2:54*
T0*
use_locking(*
validate_shape(*!
_class
loc:@dense_5/kernel*
_output_shapes
:	

¸
save/Assign_55Assigndense_5/kernel/Adam_1save/RestoreV2:55*
T0*
use_locking(*
validate_shape(*!
_class
loc:@dense_5/kernel*
_output_shapes
:	

Ć
save/restore_shardNoOp^save/Assign^save/Assign_1^save/Assign_10^save/Assign_11^save/Assign_12^save/Assign_13^save/Assign_14^save/Assign_15^save/Assign_16^save/Assign_17^save/Assign_18^save/Assign_19^save/Assign_2^save/Assign_20^save/Assign_21^save/Assign_22^save/Assign_23^save/Assign_24^save/Assign_25^save/Assign_26^save/Assign_27^save/Assign_28^save/Assign_29^save/Assign_3^save/Assign_30^save/Assign_31^save/Assign_32^save/Assign_33^save/Assign_34^save/Assign_35^save/Assign_36^save/Assign_37^save/Assign_38^save/Assign_39^save/Assign_4^save/Assign_40^save/Assign_41^save/Assign_42^save/Assign_43^save/Assign_44^save/Assign_45^save/Assign_46^save/Assign_47^save/Assign_48^save/Assign_49^save/Assign_5^save/Assign_50^save/Assign_51^save/Assign_52^save/Assign_53^save/Assign_54^save/Assign_55^save/Assign_6^save/Assign_7^save/Assign_8^save/Assign_9
-
save/restore_allNoOp^save/restore_shard"<
save/Const:0save/Identity:0save/restore_all (5 @F8"ě
trainable_variablesÔŃ
k
conv2d/kernel:0conv2d/kernel/Assignconv2d/kernel/read:02*conv2d/kernel/Initializer/random_uniform:08
Z
conv2d/bias:0conv2d/bias/Assignconv2d/bias/read:02conv2d/bias/Initializer/zeros:08
s
conv2d_1/kernel:0conv2d_1/kernel/Assignconv2d_1/kernel/read:02,conv2d_1/kernel/Initializer/random_uniform:08
b
conv2d_1/bias:0conv2d_1/bias/Assignconv2d_1/bias/read:02!conv2d_1/bias/Initializer/zeros:08
s
conv2d_2/kernel:0conv2d_2/kernel/Assignconv2d_2/kernel/read:02,conv2d_2/kernel/Initializer/random_uniform:08
b
conv2d_2/bias:0conv2d_2/bias/Assignconv2d_2/bias/read:02!conv2d_2/bias/Initializer/zeros:08
g
dense/kernel:0dense/kernel/Assigndense/kernel/read:02)dense/kernel/Initializer/random_uniform:08
V
dense/bias:0dense/bias/Assigndense/bias/read:02dense/bias/Initializer/zeros:08
o
dense_1/kernel:0dense_1/kernel/Assigndense_1/kernel/read:02+dense_1/kernel/Initializer/random_uniform:08
^
dense_1/bias:0dense_1/bias/Assigndense_1/bias/read:02 dense_1/bias/Initializer/zeros:08
o
dense_2/kernel:0dense_2/kernel/Assigndense_2/kernel/read:02+dense_2/kernel/Initializer/random_uniform:08
^
dense_2/bias:0dense_2/bias/Assigndense_2/bias/read:02 dense_2/bias/Initializer/zeros:08
o
dense_3/kernel:0dense_3/kernel/Assigndense_3/kernel/read:02+dense_3/kernel/Initializer/random_uniform:08
^
dense_3/bias:0dense_3/bias/Assigndense_3/bias/read:02 dense_3/bias/Initializer/zeros:08
o
dense_4/kernel:0dense_4/kernel/Assigndense_4/kernel/read:02+dense_4/kernel/Initializer/random_uniform:08
^
dense_4/bias:0dense_4/bias/Assigndense_4/bias/read:02 dense_4/bias/Initializer/zeros:08
o
dense_5/kernel:0dense_5/kernel/Assigndense_5/kernel/read:02+dense_5/kernel/Initializer/random_uniform:08
^
dense_5/bias:0dense_5/bias/Assigndense_5/bias/read:02 dense_5/bias/Initializer/zeros:08"­2
	variables22
k
conv2d/kernel:0conv2d/kernel/Assignconv2d/kernel/read:02*conv2d/kernel/Initializer/random_uniform:08
Z
conv2d/bias:0conv2d/bias/Assignconv2d/bias/read:02conv2d/bias/Initializer/zeros:08
s
conv2d_1/kernel:0conv2d_1/kernel/Assignconv2d_1/kernel/read:02,conv2d_1/kernel/Initializer/random_uniform:08
b
conv2d_1/bias:0conv2d_1/bias/Assignconv2d_1/bias/read:02!conv2d_1/bias/Initializer/zeros:08
s
conv2d_2/kernel:0conv2d_2/kernel/Assignconv2d_2/kernel/read:02,conv2d_2/kernel/Initializer/random_uniform:08
b
conv2d_2/bias:0conv2d_2/bias/Assignconv2d_2/bias/read:02!conv2d_2/bias/Initializer/zeros:08
g
dense/kernel:0dense/kernel/Assigndense/kernel/read:02)dense/kernel/Initializer/random_uniform:08
V
dense/bias:0dense/bias/Assigndense/bias/read:02dense/bias/Initializer/zeros:08
o
dense_1/kernel:0dense_1/kernel/Assigndense_1/kernel/read:02+dense_1/kernel/Initializer/random_uniform:08
^
dense_1/bias:0dense_1/bias/Assigndense_1/bias/read:02 dense_1/bias/Initializer/zeros:08
o
dense_2/kernel:0dense_2/kernel/Assigndense_2/kernel/read:02+dense_2/kernel/Initializer/random_uniform:08
^
dense_2/bias:0dense_2/bias/Assigndense_2/bias/read:02 dense_2/bias/Initializer/zeros:08
o
dense_3/kernel:0dense_3/kernel/Assigndense_3/kernel/read:02+dense_3/kernel/Initializer/random_uniform:08
^
dense_3/bias:0dense_3/bias/Assigndense_3/bias/read:02 dense_3/bias/Initializer/zeros:08
o
dense_4/kernel:0dense_4/kernel/Assigndense_4/kernel/read:02+dense_4/kernel/Initializer/random_uniform:08
^
dense_4/bias:0dense_4/bias/Assigndense_4/bias/read:02 dense_4/bias/Initializer/zeros:08
o
dense_5/kernel:0dense_5/kernel/Assigndense_5/kernel/read:02+dense_5/kernel/Initializer/random_uniform:08
^
dense_5/bias:0dense_5/bias/Assigndense_5/bias/read:02 dense_5/bias/Initializer/zeros:08
T
beta1_power:0beta1_power/Assignbeta1_power/read:02beta1_power/initial_value:0
T
beta2_power:0beta2_power/Assignbeta2_power/read:02beta2_power/initial_value:0
t
conv2d/kernel/Adam:0conv2d/kernel/Adam/Assignconv2d/kernel/Adam/read:02&conv2d/kernel/Adam/Initializer/zeros:0
|
conv2d/kernel/Adam_1:0conv2d/kernel/Adam_1/Assignconv2d/kernel/Adam_1/read:02(conv2d/kernel/Adam_1/Initializer/zeros:0
l
conv2d/bias/Adam:0conv2d/bias/Adam/Assignconv2d/bias/Adam/read:02$conv2d/bias/Adam/Initializer/zeros:0
t
conv2d/bias/Adam_1:0conv2d/bias/Adam_1/Assignconv2d/bias/Adam_1/read:02&conv2d/bias/Adam_1/Initializer/zeros:0
|
conv2d_1/kernel/Adam:0conv2d_1/kernel/Adam/Assignconv2d_1/kernel/Adam/read:02(conv2d_1/kernel/Adam/Initializer/zeros:0

conv2d_1/kernel/Adam_1:0conv2d_1/kernel/Adam_1/Assignconv2d_1/kernel/Adam_1/read:02*conv2d_1/kernel/Adam_1/Initializer/zeros:0
t
conv2d_1/bias/Adam:0conv2d_1/bias/Adam/Assignconv2d_1/bias/Adam/read:02&conv2d_1/bias/Adam/Initializer/zeros:0
|
conv2d_1/bias/Adam_1:0conv2d_1/bias/Adam_1/Assignconv2d_1/bias/Adam_1/read:02(conv2d_1/bias/Adam_1/Initializer/zeros:0
|
conv2d_2/kernel/Adam:0conv2d_2/kernel/Adam/Assignconv2d_2/kernel/Adam/read:02(conv2d_2/kernel/Adam/Initializer/zeros:0

conv2d_2/kernel/Adam_1:0conv2d_2/kernel/Adam_1/Assignconv2d_2/kernel/Adam_1/read:02*conv2d_2/kernel/Adam_1/Initializer/zeros:0
t
conv2d_2/bias/Adam:0conv2d_2/bias/Adam/Assignconv2d_2/bias/Adam/read:02&conv2d_2/bias/Adam/Initializer/zeros:0
|
conv2d_2/bias/Adam_1:0conv2d_2/bias/Adam_1/Assignconv2d_2/bias/Adam_1/read:02(conv2d_2/bias/Adam_1/Initializer/zeros:0
p
dense/kernel/Adam:0dense/kernel/Adam/Assigndense/kernel/Adam/read:02%dense/kernel/Adam/Initializer/zeros:0
x
dense/kernel/Adam_1:0dense/kernel/Adam_1/Assigndense/kernel/Adam_1/read:02'dense/kernel/Adam_1/Initializer/zeros:0
h
dense/bias/Adam:0dense/bias/Adam/Assigndense/bias/Adam/read:02#dense/bias/Adam/Initializer/zeros:0
p
dense/bias/Adam_1:0dense/bias/Adam_1/Assigndense/bias/Adam_1/read:02%dense/bias/Adam_1/Initializer/zeros:0
x
dense_1/kernel/Adam:0dense_1/kernel/Adam/Assigndense_1/kernel/Adam/read:02'dense_1/kernel/Adam/Initializer/zeros:0

dense_1/kernel/Adam_1:0dense_1/kernel/Adam_1/Assigndense_1/kernel/Adam_1/read:02)dense_1/kernel/Adam_1/Initializer/zeros:0
p
dense_1/bias/Adam:0dense_1/bias/Adam/Assigndense_1/bias/Adam/read:02%dense_1/bias/Adam/Initializer/zeros:0
x
dense_1/bias/Adam_1:0dense_1/bias/Adam_1/Assigndense_1/bias/Adam_1/read:02'dense_1/bias/Adam_1/Initializer/zeros:0
x
dense_2/kernel/Adam:0dense_2/kernel/Adam/Assigndense_2/kernel/Adam/read:02'dense_2/kernel/Adam/Initializer/zeros:0

dense_2/kernel/Adam_1:0dense_2/kernel/Adam_1/Assigndense_2/kernel/Adam_1/read:02)dense_2/kernel/Adam_1/Initializer/zeros:0
p
dense_2/bias/Adam:0dense_2/bias/Adam/Assigndense_2/bias/Adam/read:02%dense_2/bias/Adam/Initializer/zeros:0
x
dense_2/bias/Adam_1:0dense_2/bias/Adam_1/Assigndense_2/bias/Adam_1/read:02'dense_2/bias/Adam_1/Initializer/zeros:0
x
dense_3/kernel/Adam:0dense_3/kernel/Adam/Assigndense_3/kernel/Adam/read:02'dense_3/kernel/Adam/Initializer/zeros:0

dense_3/kernel/Adam_1:0dense_3/kernel/Adam_1/Assigndense_3/kernel/Adam_1/read:02)dense_3/kernel/Adam_1/Initializer/zeros:0
p
dense_3/bias/Adam:0dense_3/bias/Adam/Assigndense_3/bias/Adam/read:02%dense_3/bias/Adam/Initializer/zeros:0
x
dense_3/bias/Adam_1:0dense_3/bias/Adam_1/Assigndense_3/bias/Adam_1/read:02'dense_3/bias/Adam_1/Initializer/zeros:0
x
dense_4/kernel/Adam:0dense_4/kernel/Adam/Assigndense_4/kernel/Adam/read:02'dense_4/kernel/Adam/Initializer/zeros:0

dense_4/kernel/Adam_1:0dense_4/kernel/Adam_1/Assigndense_4/kernel/Adam_1/read:02)dense_4/kernel/Adam_1/Initializer/zeros:0
p
dense_4/bias/Adam:0dense_4/bias/Adam/Assigndense_4/bias/Adam/read:02%dense_4/bias/Adam/Initializer/zeros:0
x
dense_4/bias/Adam_1:0dense_4/bias/Adam_1/Assigndense_4/bias/Adam_1/read:02'dense_4/bias/Adam_1/Initializer/zeros:0
x
dense_5/kernel/Adam:0dense_5/kernel/Adam/Assigndense_5/kernel/Adam/read:02'dense_5/kernel/Adam/Initializer/zeros:0

dense_5/kernel/Adam_1:0dense_5/kernel/Adam_1/Assigndense_5/kernel/Adam_1/read:02)dense_5/kernel/Adam_1/Initializer/zeros:0
p
dense_5/bias/Adam:0dense_5/bias/Adam/Assigndense_5/bias/Adam/read:02%dense_5/bias/Adam/Initializer/zeros:0
x
dense_5/bias/Adam_1:0dense_5/bias/Adam_1/Assigndense_5/bias/Adam_1/read:02'dense_5/bias/Adam_1/Initializer/zeros:0"0
losses&
$
"softmax_cross_entropy_loss/value:0"
train_op

Adam