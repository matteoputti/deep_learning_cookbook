ЂО	
њ0в0
9
Add
x"T
y"T
z"T"
Ttype:
2	

ArgMax

input"T
	dimension"Tidx
output"output_type"
Ttype:
2	"
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
p
	AssignAdd
ref"T

value"T

output_ref"T"
Ttype:
2	"
use_lockingbool( 
{
BiasAdd

value"T	
bias"T
output"T"
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
{
BiasAddGrad
out_backprop"T
output"T"
Ttype:
2	"-
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
8
Cast	
x"SrcT	
y"DstT"
SrcTtype"
DstTtype
8
Const
output"dtype"
valuetensor"
dtypetype
Ш
Conv2D

input"T
filter"T
output"T"
Ttype:
2"
strides	list(int)"
use_cudnn_on_gpubool(""
paddingstring:
SAMEVALID"-
data_formatstringNHWC:
NHWCNCHW
ю
Conv2DBackpropFilter

input"T
filter_sizes
out_backprop"T
output"T"
Ttype:
2"
strides	list(int)"
use_cudnn_on_gpubool(""
paddingstring:
SAMEVALID"-
data_formatstringNHWC:
NHWCNCHW
э
Conv2DBackpropInput
input_sizes
filter"T
out_backprop"T
output"T"
Ttype:
2"
strides	list(int)"
use_cudnn_on_gpubool(""
paddingstring:
SAMEVALID"-
data_formatstringNHWC:
NHWCNCHW
S
DynamicStitch
indices*N
data"T*N
merged"T"
Nint(0"	
Ttype
A
Equal
x"T
y"T
z
"
Ttype:
2	

W

ExpandDims

input"T
dim"Tdim
output"T"	
Ttype"
Tdimtype0:
2	
4
Fill
dims

value"T
output"T"	
Ttype
>
FloorDiv
x"T
y"T
z"T"
Ttype:
2	
7
FloorMod
x"T
y"T
z"T"
Ttype:
2	
?
GreaterEqual
x"T
y"T
z
"
Ttype:
2		
.
Identity

input"T
output"T"	
Ttype
N
IsVariableInitialized
ref"dtype
is_initialized
"
dtypetype
<
	LessEqual
x"T
y"T
z
"
Ttype:
2		
+
Log
x"T
y"T"
Ttype:	
2
o
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:

2

Max

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( "
Ttype:
2	"
Tidxtype0:
2	
г
MaxPool

input"T
output"T"
Ttype0:
2
	"
ksize	list(int)(0"
strides	list(int)(0""
paddingstring:
SAMEVALID":
data_formatstringNHWC:
NHWCNCHWNCHW_VECT_C
ы
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
Ttype0:
2		
:
Maximum
x"T
y"T
z"T"
Ttype:	
2	

Mean

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( "
Ttype:
2	"
Tidxtype0:
2	
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(
:
Minimum
x"T
y"T
z"T"
Ttype:	
2	
<
Mul
x"T
y"T
z"T"
Ttype:
2	
-
Neg
x"T
y"T"
Ttype:
	2	

NoOp
D
NotEqual
x"T
y"T
z
"
Ttype:
2	

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
L
PreventGradient

input"T
output"T"	
Ttype"
messagestring 

Prod

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( "
Ttype:
2	"
Tidxtype0:
2	
}
RandomUniform

shape"T
output"dtype"
seedint "
seed2int "
dtypetype:
2"
Ttype:
2	
`
Range
start"Tidx
limit"Tidx
delta"Tidx
output"Tidx"
Tidxtype0:
2	
=
RealDiv
x"T
y"T
z"T"
Ttype:
2	
4

Reciprocal
x"T
y"T"
Ttype:
	2	
A
Relu
features"T
activations"T"
Ttype:
2		
S
ReluGrad
	gradients"T
features"T
	backprops"T"
Ttype:
2		
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
8
Softmax
logits"T
softmax"T"
Ttype:
2

#SparseSoftmaxCrossEntropyWithLogits
features"T
labels"Tlabels	
loss"T
backprop"T"
Ttype:
2"
Tlabelstype0	:
2	
,
Sqrt
x"T
y"T"
Ttype:	
2
0
Square
x"T
y"T"
Ttype:
	2	
N
Squeeze

input"T
output"T"	
Ttype"
squeeze_dims	list(int)
 (
і
StridedSlice

input"T
begin"Index
end"Index
strides"Index
output"T"	
Ttype"
Indextype:
2	"

begin_maskint "
end_maskint "
ellipsis_maskint "
new_axis_maskint "
shrink_axis_maskint 
N

StringJoin
inputs*N

output"
Nint(0"
	separatorstring 
9
Sub
x"T
y"T
z"T"
Ttype:
2	

Sum

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( "
Ttype:
2	"
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
Ttype"serve*1.4.12v1.4.0-19-ga52c8d9b01Њк
{
char_cnn_inputPlaceholder*
dtype0*!
shape:џџџџџџџџџ`*,
_output_shapes
:џџџџџџџџџ`
r
conv1d_1/random_uniform/shapeConst*
dtype0*!
valueB"   `      *
_output_shapes
:
`
conv1d_1/random_uniform/minConst*
dtype0*
valueB
 *wжН*
_output_shapes
: 
`
conv1d_1/random_uniform/maxConst*
dtype0*
valueB
 *wж=*
_output_shapes
: 
Џ
%conv1d_1/random_uniform/RandomUniformRandomUniformconv1d_1/random_uniform/shape*
dtype0*
seed2ѕж*
seedБџх)*
T0*#
_output_shapes
:`
}
conv1d_1/random_uniform/subSubconv1d_1/random_uniform/maxconv1d_1/random_uniform/min*
T0*
_output_shapes
: 

conv1d_1/random_uniform/mulMul%conv1d_1/random_uniform/RandomUniformconv1d_1/random_uniform/sub*
T0*#
_output_shapes
:`

conv1d_1/random_uniformAddconv1d_1/random_uniform/mulconv1d_1/random_uniform/min*
T0*#
_output_shapes
:`

conv1d_1/kernel
VariableV2*
dtype0*
shape:`*
	container *
shared_name *#
_output_shapes
:`
Х
conv1d_1/kernel/AssignAssignconv1d_1/kernelconv1d_1/random_uniform*
validate_shape(*"
_class
loc:@conv1d_1/kernel*
use_locking(*
T0*#
_output_shapes
:`

conv1d_1/kernel/readIdentityconv1d_1/kernel*"
_class
loc:@conv1d_1/kernel*
T0*#
_output_shapes
:`
]
conv1d_1/ConstConst*
dtype0*
valueB*    *
_output_shapes	
:
{
conv1d_1/bias
VariableV2*
dtype0*
shape:*
	container *
shared_name *
_output_shapes	
:
Ў
conv1d_1/bias/AssignAssignconv1d_1/biasconv1d_1/Const*
validate_shape(* 
_class
loc:@conv1d_1/bias*
use_locking(*
T0*
_output_shapes	
:
u
conv1d_1/bias/readIdentityconv1d_1/bias* 
_class
loc:@conv1d_1/bias*
T0*
_output_shapes	
:
l
"conv1d_1/convolution/dilation_rateConst*
dtype0*
valueB:*
_output_shapes
:
e
#conv1d_1/convolution/ExpandDims/dimConst*
dtype0*
value	B :*
_output_shapes
: 
Љ
conv1d_1/convolution/ExpandDims
ExpandDimschar_cnn_input#conv1d_1/convolution/ExpandDims/dim*

Tdim0*
T0*0
_output_shapes
:џџџџџџџџџ`
g
%conv1d_1/convolution/ExpandDims_1/dimConst*
dtype0*
value	B : *
_output_shapes
: 
Њ
!conv1d_1/convolution/ExpandDims_1
ExpandDimsconv1d_1/kernel/read%conv1d_1/convolution/ExpandDims_1/dim*

Tdim0*
T0*'
_output_shapes
:`
§
conv1d_1/convolution/Conv2DConv2Dconv1d_1/convolution/ExpandDims!conv1d_1/convolution/ExpandDims_1*1
_output_shapes
:џџџџџџџџџ*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingVALID*
strides
*
T0

conv1d_1/convolution/SqueezeSqueezeconv1d_1/convolution/Conv2D*
squeeze_dims
*
T0*-
_output_shapes
:џџџџџџџџџ
k
conv1d_1/Reshape/shapeConst*
dtype0*!
valueB"         *
_output_shapes
:

conv1d_1/ReshapeReshapeconv1d_1/bias/readconv1d_1/Reshape/shape*#
_output_shapes
:*
Tshape0*
T0
{
conv1d_1/addAddconv1d_1/convolution/Squeezeconv1d_1/Reshape*
T0*-
_output_shapes
:џџџџџџџџџ
[
conv1d_1/ReluReluconv1d_1/add*
T0*-
_output_shapes
:џџџџџџџџџ
`
max_pooling1d_1/ExpandDims/dimConst*
dtype0*
value	B :*
_output_shapes
: 

max_pooling1d_1/ExpandDims
ExpandDimsconv1d_1/Relumax_pooling1d_1/ExpandDims/dim*

Tdim0*
T0*1
_output_shapes
:џџџџџџџџџ
Ь
max_pooling1d_1/MaxPoolMaxPoolmax_pooling1d_1/ExpandDims*0
_output_shapes
:џџџџџџџџџ!*
data_formatNHWC*
paddingVALID*
strides
*
ksize
*
T0

max_pooling1d_1/SqueezeSqueezemax_pooling1d_1/MaxPool*
squeeze_dims
*
T0*,
_output_shapes
:џџџџџџџџџ!
r
conv1d_2/random_uniform/shapeConst*
dtype0*!
valueB"         *
_output_shapes
:
`
conv1d_2/random_uniform/minConst*
dtype0*
valueB
 *ьQН*
_output_shapes
: 
`
conv1d_2/random_uniform/maxConst*
dtype0*
valueB
 *ьQ=*
_output_shapes
: 
А
%conv1d_2/random_uniform/RandomUniformRandomUniformconv1d_2/random_uniform/shape*
dtype0*
seed2А*
seedБџх)*
T0*$
_output_shapes
:
}
conv1d_2/random_uniform/subSubconv1d_2/random_uniform/maxconv1d_2/random_uniform/min*
T0*
_output_shapes
: 

conv1d_2/random_uniform/mulMul%conv1d_2/random_uniform/RandomUniformconv1d_2/random_uniform/sub*
T0*$
_output_shapes
:

conv1d_2/random_uniformAddconv1d_2/random_uniform/mulconv1d_2/random_uniform/min*
T0*$
_output_shapes
:

conv1d_2/kernel
VariableV2*
dtype0*
shape:*
	container *
shared_name *$
_output_shapes
:
Ц
conv1d_2/kernel/AssignAssignconv1d_2/kernelconv1d_2/random_uniform*
validate_shape(*"
_class
loc:@conv1d_2/kernel*
use_locking(*
T0*$
_output_shapes
:

conv1d_2/kernel/readIdentityconv1d_2/kernel*"
_class
loc:@conv1d_2/kernel*
T0*$
_output_shapes
:
]
conv1d_2/ConstConst*
dtype0*
valueB*    *
_output_shapes	
:
{
conv1d_2/bias
VariableV2*
dtype0*
shape:*
	container *
shared_name *
_output_shapes	
:
Ў
conv1d_2/bias/AssignAssignconv1d_2/biasconv1d_2/Const*
validate_shape(* 
_class
loc:@conv1d_2/bias*
use_locking(*
T0*
_output_shapes	
:
u
conv1d_2/bias/readIdentityconv1d_2/bias* 
_class
loc:@conv1d_2/bias*
T0*
_output_shapes	
:
l
"conv1d_2/convolution/dilation_rateConst*
dtype0*
valueB:*
_output_shapes
:
e
#conv1d_2/convolution/ExpandDims/dimConst*
dtype0*
value	B :*
_output_shapes
: 
В
conv1d_2/convolution/ExpandDims
ExpandDimsmax_pooling1d_1/Squeeze#conv1d_2/convolution/ExpandDims/dim*

Tdim0*
T0*0
_output_shapes
:џџџџџџџџџ!
g
%conv1d_2/convolution/ExpandDims_1/dimConst*
dtype0*
value	B : *
_output_shapes
: 
Ћ
!conv1d_2/convolution/ExpandDims_1
ExpandDimsconv1d_2/kernel/read%conv1d_2/convolution/ExpandDims_1/dim*

Tdim0*
T0*(
_output_shapes
:
ќ
conv1d_2/convolution/Conv2DConv2Dconv1d_2/convolution/ExpandDims!conv1d_2/convolution/ExpandDims_1*0
_output_shapes
:џџџџџџџџџ*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingVALID*
strides
*
T0

conv1d_2/convolution/SqueezeSqueezeconv1d_2/convolution/Conv2D*
squeeze_dims
*
T0*,
_output_shapes
:џџџџџџџџџ
k
conv1d_2/Reshape/shapeConst*
dtype0*!
valueB"         *
_output_shapes
:

conv1d_2/ReshapeReshapeconv1d_2/bias/readconv1d_2/Reshape/shape*#
_output_shapes
:*
Tshape0*
T0
z
conv1d_2/addAddconv1d_2/convolution/Squeezeconv1d_2/Reshape*
T0*,
_output_shapes
:џџџџџџџџџ
Z
conv1d_2/ReluReluconv1d_2/add*
T0*,
_output_shapes
:џџџџџџџџџ
`
max_pooling1d_2/ExpandDims/dimConst*
dtype0*
value	B :*
_output_shapes
: 

max_pooling1d_2/ExpandDims
ExpandDimsconv1d_2/Relumax_pooling1d_2/ExpandDims/dim*

Tdim0*
T0*0
_output_shapes
:џџџџџџџџџ
Ь
max_pooling1d_2/MaxPoolMaxPoolmax_pooling1d_2/ExpandDims*0
_output_shapes
:џџџџџџџџџ*
data_formatNHWC*
paddingVALID*
strides
*
ksize
*
T0

max_pooling1d_2/SqueezeSqueezemax_pooling1d_2/MaxPool*
squeeze_dims
*
T0*,
_output_shapes
:џџџџџџџџџ
f
flatten_1/ShapeShapemax_pooling1d_2/Squeeze*
out_type0*
T0*
_output_shapes
:
g
flatten_1/strided_slice/stackConst*
dtype0*
valueB:*
_output_shapes
:
i
flatten_1/strided_slice/stack_1Const*
dtype0*
valueB: *
_output_shapes
:
i
flatten_1/strided_slice/stack_2Const*
dtype0*
valueB:*
_output_shapes
:
Џ
flatten_1/strided_sliceStridedSliceflatten_1/Shapeflatten_1/strided_slice/stackflatten_1/strided_slice/stack_1flatten_1/strided_slice/stack_2*
new_axis_mask *
Index0*
_output_shapes
:*

begin_mask *
ellipsis_mask *
end_mask*
T0*
shrink_axis_mask 
Y
flatten_1/ConstConst*
dtype0*
valueB: *
_output_shapes
:
~
flatten_1/ProdProdflatten_1/strided_sliceflatten_1/Const*
_output_shapes
: *

Tidx0*
	keep_dims( *
T0
\
flatten_1/stack/0Const*
dtype0*
valueB :
џџџџџџџџџ*
_output_shapes
: 
t
flatten_1/stackPackflatten_1/stack/0flatten_1/Prod*
N*

axis *
T0*
_output_shapes
:

flatten_1/ReshapeReshapemax_pooling1d_2/Squeezeflatten_1/stack*0
_output_shapes
:џџџџџџџџџџџџџџџџџџ*
Tshape0*
T0
m
dense_1/random_uniform/shapeConst*
dtype0*
valueB"      *
_output_shapes
:
_
dense_1/random_uniform/minConst*
dtype0*
valueB
 *.љdН*
_output_shapes
: 
_
dense_1/random_uniform/maxConst*
dtype0*
valueB
 *.љd=*
_output_shapes
: 
Њ
$dense_1/random_uniform/RandomUniformRandomUniformdense_1/random_uniform/shape*
dtype0*
seed2ьу*
seedБџх)*
T0* 
_output_shapes
:

z
dense_1/random_uniform/subSubdense_1/random_uniform/maxdense_1/random_uniform/min*
T0*
_output_shapes
: 

dense_1/random_uniform/mulMul$dense_1/random_uniform/RandomUniformdense_1/random_uniform/sub*
T0* 
_output_shapes
:


dense_1/random_uniformAdddense_1/random_uniform/muldense_1/random_uniform/min*
T0* 
_output_shapes
:


dense_1/kernel
VariableV2*
dtype0*
shape:
*
	container *
shared_name * 
_output_shapes
:

О
dense_1/kernel/AssignAssigndense_1/kerneldense_1/random_uniform*
validate_shape(*!
_class
loc:@dense_1/kernel*
use_locking(*
T0* 
_output_shapes
:

}
dense_1/kernel/readIdentitydense_1/kernel*!
_class
loc:@dense_1/kernel*
T0* 
_output_shapes
:

\
dense_1/ConstConst*
dtype0*
valueB*    *
_output_shapes	
:
z
dense_1/bias
VariableV2*
dtype0*
shape:*
	container *
shared_name *
_output_shapes	
:
Њ
dense_1/bias/AssignAssigndense_1/biasdense_1/Const*
validate_shape(*
_class
loc:@dense_1/bias*
use_locking(*
T0*
_output_shapes	
:
r
dense_1/bias/readIdentitydense_1/bias*
_class
loc:@dense_1/bias*
T0*
_output_shapes	
:

dense_1/MatMulMatMulflatten_1/Reshapedense_1/kernel/read*
transpose_b( *
transpose_a( *
T0*(
_output_shapes
:џџџџџџџџџ

dense_1/BiasAddBiasAdddense_1/MatMuldense_1/bias/read*(
_output_shapes
:џџџџџџџџџ*
data_formatNHWC*
T0
X
dense_1/ReluReludense_1/BiasAdd*
T0*(
_output_shapes
:џџџџџџџџџ
z
)char_cnn_predictions/random_uniform/shapeConst*
dtype0*
valueB"   y   *
_output_shapes
:
l
'char_cnn_predictions/random_uniform/minConst*
dtype0*
valueB
 *ЄєО*
_output_shapes
: 
l
'char_cnn_predictions/random_uniform/maxConst*
dtype0*
valueB
 *Єє>*
_output_shapes
: 
У
1char_cnn_predictions/random_uniform/RandomUniformRandomUniform)char_cnn_predictions/random_uniform/shape*
dtype0*
seed2иЂ*
seedБџх)*
T0*
_output_shapes
:	y
Ё
'char_cnn_predictions/random_uniform/subSub'char_cnn_predictions/random_uniform/max'char_cnn_predictions/random_uniform/min*
T0*
_output_shapes
: 
Д
'char_cnn_predictions/random_uniform/mulMul1char_cnn_predictions/random_uniform/RandomUniform'char_cnn_predictions/random_uniform/sub*
T0*
_output_shapes
:	y
І
#char_cnn_predictions/random_uniformAdd'char_cnn_predictions/random_uniform/mul'char_cnn_predictions/random_uniform/min*
T0*
_output_shapes
:	y

char_cnn_predictions/kernel
VariableV2*
dtype0*
shape:	y*
	container *
shared_name *
_output_shapes
:	y
ё
"char_cnn_predictions/kernel/AssignAssignchar_cnn_predictions/kernel#char_cnn_predictions/random_uniform*
validate_shape(*.
_class$
" loc:@char_cnn_predictions/kernel*
use_locking(*
T0*
_output_shapes
:	y
Ѓ
 char_cnn_predictions/kernel/readIdentitychar_cnn_predictions/kernel*.
_class$
" loc:@char_cnn_predictions/kernel*
T0*
_output_shapes
:	y
g
char_cnn_predictions/ConstConst*
dtype0*
valueBy*    *
_output_shapes
:y

char_cnn_predictions/bias
VariableV2*
dtype0*
shape:y*
	container *
shared_name *
_output_shapes
:y
н
 char_cnn_predictions/bias/AssignAssignchar_cnn_predictions/biaschar_cnn_predictions/Const*
validate_shape(*,
_class"
 loc:@char_cnn_predictions/bias*
use_locking(*
T0*
_output_shapes
:y

char_cnn_predictions/bias/readIdentitychar_cnn_predictions/bias*,
_class"
 loc:@char_cnn_predictions/bias*
T0*
_output_shapes
:y
­
char_cnn_predictions/MatMulMatMuldense_1/Relu char_cnn_predictions/kernel/read*
transpose_b( *
transpose_a( *
T0*'
_output_shapes
:џџџџџџџџџy
­
char_cnn_predictions/BiasAddBiasAddchar_cnn_predictions/MatMulchar_cnn_predictions/bias/read*'
_output_shapes
:џџџџџџџџџy*
data_formatNHWC*
T0
w
char_cnn_predictions/SoftmaxSoftmaxchar_cnn_predictions/BiasAdd*
T0*'
_output_shapes
:џџџџџџџџџy
f
PlaceholderPlaceholder*
dtype0*
shape:`*#
_output_shapes
:`
Љ
AssignAssignconv1d_1/kernelPlaceholder*
validate_shape(*"
_class
loc:@conv1d_1/kernel*
use_locking( *
T0*#
_output_shapes
:`
X
Placeholder_1Placeholder*
dtype0*
shape:*
_output_shapes	
:
Ё
Assign_1Assignconv1d_1/biasPlaceholder_1*
validate_shape(* 
_class
loc:@conv1d_1/bias*
use_locking( *
T0*
_output_shapes	
:
j
Placeholder_2Placeholder*
dtype0*
shape:*$
_output_shapes
:
Ў
Assign_2Assignconv1d_2/kernelPlaceholder_2*
validate_shape(*"
_class
loc:@conv1d_2/kernel*
use_locking( *
T0*$
_output_shapes
:
X
Placeholder_3Placeholder*
dtype0*
shape:*
_output_shapes	
:
Ё
Assign_3Assignconv1d_2/biasPlaceholder_3*
validate_shape(* 
_class
loc:@conv1d_2/bias*
use_locking( *
T0*
_output_shapes	
:
b
Placeholder_4Placeholder*
dtype0*
shape:
* 
_output_shapes
:

Ј
Assign_4Assigndense_1/kernelPlaceholder_4*
validate_shape(*!
_class
loc:@dense_1/kernel*
use_locking( *
T0* 
_output_shapes
:

X
Placeholder_5Placeholder*
dtype0*
shape:*
_output_shapes	
:

Assign_5Assigndense_1/biasPlaceholder_5*
validate_shape(*
_class
loc:@dense_1/bias*
use_locking( *
T0*
_output_shapes	
:
`
Placeholder_6Placeholder*
dtype0*
shape:	y*
_output_shapes
:	y
С
Assign_6Assignchar_cnn_predictions/kernelPlaceholder_6*
validate_shape(*.
_class$
" loc:@char_cnn_predictions/kernel*
use_locking( *
T0*
_output_shapes
:	y
V
Placeholder_7Placeholder*
dtype0*
shape:y*
_output_shapes
:y
И
Assign_7Assignchar_cnn_predictions/biasPlaceholder_7*
validate_shape(*,
_class"
 loc:@char_cnn_predictions/bias*
use_locking( *
T0*
_output_shapes
:y

IsVariableInitializedIsVariableInitializedconv1d_1/kernel*
dtype0*"
_class
loc:@conv1d_1/kernel*
_output_shapes
: 

IsVariableInitialized_1IsVariableInitializedconv1d_1/bias*
dtype0* 
_class
loc:@conv1d_1/bias*
_output_shapes
: 

IsVariableInitialized_2IsVariableInitializedconv1d_2/kernel*
dtype0*"
_class
loc:@conv1d_2/kernel*
_output_shapes
: 

IsVariableInitialized_3IsVariableInitializedconv1d_2/bias*
dtype0* 
_class
loc:@conv1d_2/bias*
_output_shapes
: 

IsVariableInitialized_4IsVariableInitializeddense_1/kernel*
dtype0*!
_class
loc:@dense_1/kernel*
_output_shapes
: 

IsVariableInitialized_5IsVariableInitializeddense_1/bias*
dtype0*
_class
loc:@dense_1/bias*
_output_shapes
: 
Ђ
IsVariableInitialized_6IsVariableInitializedchar_cnn_predictions/kernel*
dtype0*.
_class$
" loc:@char_cnn_predictions/kernel*
_output_shapes
: 

IsVariableInitialized_7IsVariableInitializedchar_cnn_predictions/bias*
dtype0*,
_class"
 loc:@char_cnn_predictions/bias*
_output_shapes
: 
т
initNoOp^conv1d_1/kernel/Assign^conv1d_1/bias/Assign^conv1d_2/kernel/Assign^conv1d_2/bias/Assign^dense_1/kernel/Assign^dense_1/bias/Assign#^char_cnn_predictions/kernel/Assign!^char_cnn_predictions/bias/Assign
]
RMSprop/lr/initial_valueConst*
dtype0*
valueB
 *o:*
_output_shapes
: 
n

RMSprop/lr
VariableV2*
dtype0*
shape: *
	container *
shared_name *
_output_shapes
: 
Њ
RMSprop/lr/AssignAssign
RMSprop/lrRMSprop/lr/initial_value*
validate_shape(*
_class
loc:@RMSprop/lr*
use_locking(*
T0*
_output_shapes
: 
g
RMSprop/lr/readIdentity
RMSprop/lr*
_class
loc:@RMSprop/lr*
T0*
_output_shapes
: 
^
RMSprop/rho/initial_valueConst*
dtype0*
valueB
 *fff?*
_output_shapes
: 
o
RMSprop/rho
VariableV2*
dtype0*
shape: *
	container *
shared_name *
_output_shapes
: 
Ў
RMSprop/rho/AssignAssignRMSprop/rhoRMSprop/rho/initial_value*
validate_shape(*
_class
loc:@RMSprop/rho*
use_locking(*
T0*
_output_shapes
: 
j
RMSprop/rho/readIdentityRMSprop/rho*
_class
loc:@RMSprop/rho*
T0*
_output_shapes
: 
`
RMSprop/decay/initial_valueConst*
dtype0*
valueB
 *    *
_output_shapes
: 
q
RMSprop/decay
VariableV2*
dtype0*
shape: *
	container *
shared_name *
_output_shapes
: 
Ж
RMSprop/decay/AssignAssignRMSprop/decayRMSprop/decay/initial_value*
validate_shape(* 
_class
loc:@RMSprop/decay*
use_locking(*
T0*
_output_shapes
: 
p
RMSprop/decay/readIdentityRMSprop/decay* 
_class
loc:@RMSprop/decay*
T0*
_output_shapes
: 
b
 RMSprop/iterations/initial_valueConst*
dtype0	*
value	B	 R *
_output_shapes
: 
v
RMSprop/iterations
VariableV2*
dtype0	*
shape: *
	container *
shared_name *
_output_shapes
: 
Ъ
RMSprop/iterations/AssignAssignRMSprop/iterations RMSprop/iterations/initial_value*
validate_shape(*%
_class
loc:@RMSprop/iterations*
use_locking(*
T0	*
_output_shapes
: 

RMSprop/iterations/readIdentityRMSprop/iterations*%
_class
loc:@RMSprop/iterations*
T0	*
_output_shapes
: 

char_cnn_predictions_targetPlaceholder*
dtype0*%
shape:џџџџџџџџџџџџџџџџџџ*0
_output_shapes
:џџџџџџџџџџџџџџџџџџ
~
#char_cnn_predictions_sample_weightsPlaceholder*
dtype0*
shape:џџџџџџџџџ*#
_output_shapes
:џџџџџџџџџ
i
$loss/char_cnn_predictions_loss/ConstConst*
dtype0*
valueB
 *Пж3*
_output_shapes
: 
i
$loss/char_cnn_predictions_loss/sub/xConst*
dtype0*
valueB
 *  ?*
_output_shapes
: 

"loss/char_cnn_predictions_loss/subSub$loss/char_cnn_predictions_loss/sub/x$loss/char_cnn_predictions_loss/Const*
T0*
_output_shapes
: 
Г
4loss/char_cnn_predictions_loss/clip_by_value/MinimumMinimumchar_cnn_predictions/Softmax"loss/char_cnn_predictions_loss/sub*
T0*'
_output_shapes
:џџџџџџџџџy
Х
,loss/char_cnn_predictions_loss/clip_by_valueMaximum4loss/char_cnn_predictions_loss/clip_by_value/Minimum$loss/char_cnn_predictions_loss/Const*
T0*'
_output_shapes
:џџџџџџџџџy

"loss/char_cnn_predictions_loss/LogLog,loss/char_cnn_predictions_loss/clip_by_value*
T0*'
_output_shapes
:џџџџџџџџџy

,loss/char_cnn_predictions_loss/Reshape/shapeConst*
dtype0*
valueB:
џџџџџџџџџ*
_output_shapes
:
И
&loss/char_cnn_predictions_loss/ReshapeReshapechar_cnn_predictions_target,loss/char_cnn_predictions_loss/Reshape/shape*#
_output_shapes
:џџџџџџџџџ*
Tshape0*
T0

#loss/char_cnn_predictions_loss/CastCast&loss/char_cnn_predictions_loss/Reshape*

DstT0	*

SrcT0*#
_output_shapes
:џџџџџџџџџ

.loss/char_cnn_predictions_loss/Reshape_1/shapeConst*
dtype0*
valueB"џџџџy   *
_output_shapes
:
Ч
(loss/char_cnn_predictions_loss/Reshape_1Reshape"loss/char_cnn_predictions_loss/Log.loss/char_cnn_predictions_loss/Reshape_1/shape*'
_output_shapes
:џџџџџџџџџy*
Tshape0*
T0
Ћ
Hloss/char_cnn_predictions_loss/SparseSoftmaxCrossEntropyWithLogits/ShapeShape#loss/char_cnn_predictions_loss/Cast*
out_type0*
T0	*
_output_shapes
:
Ќ
floss/char_cnn_predictions_loss/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits#SparseSoftmaxCrossEntropyWithLogits(loss/char_cnn_predictions_loss/Reshape_1#loss/char_cnn_predictions_loss/Cast*
T0*
Tlabels0	*6
_output_shapes$
":џџџџџџџџџ:џџџџџџџџџy
x
5loss/char_cnn_predictions_loss/Mean/reduction_indicesConst*
dtype0*
valueB *
_output_shapes
: 

#loss/char_cnn_predictions_loss/MeanMeanfloss/char_cnn_predictions_loss/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits5loss/char_cnn_predictions_loss/Mean/reduction_indices*#
_output_shapes
:џџџџџџџџџ*

Tidx0*
	keep_dims( *
T0
Ё
"loss/char_cnn_predictions_loss/mulMul#loss/char_cnn_predictions_loss/Mean#char_cnn_predictions_sample_weights*
T0*#
_output_shapes
:џџџџџџџџџ
n
)loss/char_cnn_predictions_loss/NotEqual/yConst*
dtype0*
valueB
 *    *
_output_shapes
: 
Б
'loss/char_cnn_predictions_loss/NotEqualNotEqual#char_cnn_predictions_sample_weights)loss/char_cnn_predictions_loss/NotEqual/y*
T0*#
_output_shapes
:џџџџџџџџџ

%loss/char_cnn_predictions_loss/Cast_1Cast'loss/char_cnn_predictions_loss/NotEqual*

DstT0*

SrcT0
*#
_output_shapes
:џџџџџџџџџ
p
&loss/char_cnn_predictions_loss/Const_1Const*
dtype0*
valueB: *
_output_shapes
:
К
%loss/char_cnn_predictions_loss/Mean_1Mean%loss/char_cnn_predictions_loss/Cast_1&loss/char_cnn_predictions_loss/Const_1*
_output_shapes
: *

Tidx0*
	keep_dims( *
T0
І
"loss/char_cnn_predictions_loss/divRealDiv"loss/char_cnn_predictions_loss/mul%loss/char_cnn_predictions_loss/Mean_1*
T0*#
_output_shapes
:џџџџџџџџџ
p
&loss/char_cnn_predictions_loss/Const_2Const*
dtype0*
valueB: *
_output_shapes
:
З
%loss/char_cnn_predictions_loss/Mean_2Mean"loss/char_cnn_predictions_loss/div&loss/char_cnn_predictions_loss/Const_2*
_output_shapes
: *

Tidx0*
	keep_dims( *
T0
O

loss/mul/xConst*
dtype0*
valueB
 *  ?*
_output_shapes
: 
c
loss/mulMul
loss/mul/x%loss/char_cnn_predictions_loss/Mean_2*
T0*
_output_shapes
: 
l
!metrics/acc/Max/reduction_indicesConst*
dtype0*
valueB :
џџџџџџџџџ*
_output_shapes
: 
Ё
metrics/acc/MaxMaxchar_cnn_predictions_target!metrics/acc/Max/reduction_indices*#
_output_shapes
:џџџџџџџџџ*

Tidx0*
	keep_dims( *
T0
g
metrics/acc/ArgMax/dimensionConst*
dtype0*
valueB :
џџџџџџџџџ*
_output_shapes
: 
Ѕ
metrics/acc/ArgMaxArgMaxchar_cnn_predictions/Softmaxmetrics/acc/ArgMax/dimension*
output_type0	*#
_output_shapes
:џџџџџџџџџ*

Tidx0*
T0
i
metrics/acc/CastCastmetrics/acc/ArgMax*

DstT0*

SrcT0	*#
_output_shapes
:џџџџџџџџџ
k
metrics/acc/EqualEqualmetrics/acc/Maxmetrics/acc/Cast*
T0*#
_output_shapes
:џџџџџџџџџ
j
metrics/acc/Cast_1Castmetrics/acc/Equal*

DstT0*

SrcT0
*#
_output_shapes
:џџџџџџџџџ
[
metrics/acc/ConstConst*
dtype0*
valueB: *
_output_shapes
:
}
metrics/acc/MeanMeanmetrics/acc/Cast_1metrics/acc/Const*
_output_shapes
: *

Tidx0*
	keep_dims( *
T0

 training/RMSprop/gradients/ShapeConst*
dtype0*
_class
loc:@loss/mul*
valueB *
_output_shapes
: 

 training/RMSprop/gradients/ConstConst*
dtype0*
_class
loc:@loss/mul*
valueB
 *  ?*
_output_shapes
: 
Љ
training/RMSprop/gradients/FillFill training/RMSprop/gradients/Shape training/RMSprop/gradients/Const*
_class
loc:@loss/mul*
T0*
_output_shapes
: 

.training/RMSprop/gradients/loss/mul_grad/ShapeConst*
dtype0*
_class
loc:@loss/mul*
valueB *
_output_shapes
: 

0training/RMSprop/gradients/loss/mul_grad/Shape_1Const*
dtype0*
_class
loc:@loss/mul*
valueB *
_output_shapes
: 

>training/RMSprop/gradients/loss/mul_grad/BroadcastGradientArgsBroadcastGradientArgs.training/RMSprop/gradients/loss/mul_grad/Shape0training/RMSprop/gradients/loss/mul_grad/Shape_1*
_class
loc:@loss/mul*
T0*2
_output_shapes 
:џџџџџџџџџ:џџџџџџџџџ
Й
,training/RMSprop/gradients/loss/mul_grad/mulMultraining/RMSprop/gradients/Fill%loss/char_cnn_predictions_loss/Mean_2*
_class
loc:@loss/mul*
T0*
_output_shapes
: 
ў
,training/RMSprop/gradients/loss/mul_grad/SumSum,training/RMSprop/gradients/loss/mul_grad/mul>training/RMSprop/gradients/loss/mul_grad/BroadcastGradientArgs*
_output_shapes
:*
_class
loc:@loss/mul*

Tidx0*
	keep_dims( *
T0
х
0training/RMSprop/gradients/loss/mul_grad/ReshapeReshape,training/RMSprop/gradients/loss/mul_grad/Sum.training/RMSprop/gradients/loss/mul_grad/Shape*
_class
loc:@loss/mul*
Tshape0*
_output_shapes
: *
T0
 
.training/RMSprop/gradients/loss/mul_grad/mul_1Mul
loss/mul/xtraining/RMSprop/gradients/Fill*
_class
loc:@loss/mul*
T0*
_output_shapes
: 

.training/RMSprop/gradients/loss/mul_grad/Sum_1Sum.training/RMSprop/gradients/loss/mul_grad/mul_1@training/RMSprop/gradients/loss/mul_grad/BroadcastGradientArgs:1*
_output_shapes
:*
_class
loc:@loss/mul*

Tidx0*
	keep_dims( *
T0
ы
2training/RMSprop/gradients/loss/mul_grad/Reshape_1Reshape.training/RMSprop/gradients/loss/mul_grad/Sum_10training/RMSprop/gradients/loss/mul_grad/Shape_1*
_class
loc:@loss/mul*
Tshape0*
_output_shapes
: *
T0
з
Straining/RMSprop/gradients/loss/char_cnn_predictions_loss/Mean_2_grad/Reshape/shapeConst*
dtype0*8
_class.
,*loc:@loss/char_cnn_predictions_loss/Mean_2*
valueB:*
_output_shapes
:
Ю
Mtraining/RMSprop/gradients/loss/char_cnn_predictions_loss/Mean_2_grad/ReshapeReshape2training/RMSprop/gradients/loss/mul_grad/Reshape_1Straining/RMSprop/gradients/loss/char_cnn_predictions_loss/Mean_2_grad/Reshape/shape*8
_class.
,*loc:@loss/char_cnn_predictions_loss/Mean_2*
Tshape0*
_output_shapes
:*
T0
ч
Ktraining/RMSprop/gradients/loss/char_cnn_predictions_loss/Mean_2_grad/ShapeShape"loss/char_cnn_predictions_loss/div*
out_type0*8
_class.
,*loc:@loss/char_cnn_predictions_loss/Mean_2*
T0*
_output_shapes
:
ш
Jtraining/RMSprop/gradients/loss/char_cnn_predictions_loss/Mean_2_grad/TileTileMtraining/RMSprop/gradients/loss/char_cnn_predictions_loss/Mean_2_grad/ReshapeKtraining/RMSprop/gradients/loss/char_cnn_predictions_loss/Mean_2_grad/Shape*

Tmultiples0*8
_class.
,*loc:@loss/char_cnn_predictions_loss/Mean_2*
T0*#
_output_shapes
:џџџџџџџџџ
щ
Mtraining/RMSprop/gradients/loss/char_cnn_predictions_loss/Mean_2_grad/Shape_1Shape"loss/char_cnn_predictions_loss/div*
out_type0*8
_class.
,*loc:@loss/char_cnn_predictions_loss/Mean_2*
T0*
_output_shapes
:
Ъ
Mtraining/RMSprop/gradients/loss/char_cnn_predictions_loss/Mean_2_grad/Shape_2Const*
dtype0*8
_class.
,*loc:@loss/char_cnn_predictions_loss/Mean_2*
valueB *
_output_shapes
: 
Я
Ktraining/RMSprop/gradients/loss/char_cnn_predictions_loss/Mean_2_grad/ConstConst*
dtype0*8
_class.
,*loc:@loss/char_cnn_predictions_loss/Mean_2*
valueB: *
_output_shapes
:
ц
Jtraining/RMSprop/gradients/loss/char_cnn_predictions_loss/Mean_2_grad/ProdProdMtraining/RMSprop/gradients/loss/char_cnn_predictions_loss/Mean_2_grad/Shape_1Ktraining/RMSprop/gradients/loss/char_cnn_predictions_loss/Mean_2_grad/Const*
_output_shapes
: *8
_class.
,*loc:@loss/char_cnn_predictions_loss/Mean_2*

Tidx0*
	keep_dims( *
T0
б
Mtraining/RMSprop/gradients/loss/char_cnn_predictions_loss/Mean_2_grad/Const_1Const*
dtype0*8
_class.
,*loc:@loss/char_cnn_predictions_loss/Mean_2*
valueB: *
_output_shapes
:
ъ
Ltraining/RMSprop/gradients/loss/char_cnn_predictions_loss/Mean_2_grad/Prod_1ProdMtraining/RMSprop/gradients/loss/char_cnn_predictions_loss/Mean_2_grad/Shape_2Mtraining/RMSprop/gradients/loss/char_cnn_predictions_loss/Mean_2_grad/Const_1*
_output_shapes
: *8
_class.
,*loc:@loss/char_cnn_predictions_loss/Mean_2*

Tidx0*
	keep_dims( *
T0
Ы
Otraining/RMSprop/gradients/loss/char_cnn_predictions_loss/Mean_2_grad/Maximum/yConst*
dtype0*8
_class.
,*loc:@loss/char_cnn_predictions_loss/Mean_2*
value	B :*
_output_shapes
: 
в
Mtraining/RMSprop/gradients/loss/char_cnn_predictions_loss/Mean_2_grad/MaximumMaximumLtraining/RMSprop/gradients/loss/char_cnn_predictions_loss/Mean_2_grad/Prod_1Otraining/RMSprop/gradients/loss/char_cnn_predictions_loss/Mean_2_grad/Maximum/y*8
_class.
,*loc:@loss/char_cnn_predictions_loss/Mean_2*
T0*
_output_shapes
: 
а
Ntraining/RMSprop/gradients/loss/char_cnn_predictions_loss/Mean_2_grad/floordivFloorDivJtraining/RMSprop/gradients/loss/char_cnn_predictions_loss/Mean_2_grad/ProdMtraining/RMSprop/gradients/loss/char_cnn_predictions_loss/Mean_2_grad/Maximum*8
_class.
,*loc:@loss/char_cnn_predictions_loss/Mean_2*
T0*
_output_shapes
: 

Jtraining/RMSprop/gradients/loss/char_cnn_predictions_loss/Mean_2_grad/CastCastNtraining/RMSprop/gradients/loss/char_cnn_predictions_loss/Mean_2_grad/floordiv*

DstT0*8
_class.
,*loc:@loss/char_cnn_predictions_loss/Mean_2*

SrcT0*
_output_shapes
: 
и
Mtraining/RMSprop/gradients/loss/char_cnn_predictions_loss/Mean_2_grad/truedivRealDivJtraining/RMSprop/gradients/loss/char_cnn_predictions_loss/Mean_2_grad/TileJtraining/RMSprop/gradients/loss/char_cnn_predictions_loss/Mean_2_grad/Cast*8
_class.
,*loc:@loss/char_cnn_predictions_loss/Mean_2*
T0*#
_output_shapes
:џџџџџџџџџ
с
Htraining/RMSprop/gradients/loss/char_cnn_predictions_loss/div_grad/ShapeShape"loss/char_cnn_predictions_loss/mul*
out_type0*5
_class+
)'loc:@loss/char_cnn_predictions_loss/div*
T0*
_output_shapes
:
Ф
Jtraining/RMSprop/gradients/loss/char_cnn_predictions_loss/div_grad/Shape_1Const*
dtype0*5
_class+
)'loc:@loss/char_cnn_predictions_loss/div*
valueB *
_output_shapes
: 
ћ
Xtraining/RMSprop/gradients/loss/char_cnn_predictions_loss/div_grad/BroadcastGradientArgsBroadcastGradientArgsHtraining/RMSprop/gradients/loss/char_cnn_predictions_loss/div_grad/ShapeJtraining/RMSprop/gradients/loss/char_cnn_predictions_loss/div_grad/Shape_1*5
_class+
)'loc:@loss/char_cnn_predictions_loss/div*
T0*2
_output_shapes 
:џџџџџџџџџ:џџџџџџџџџ
А
Jtraining/RMSprop/gradients/loss/char_cnn_predictions_loss/div_grad/RealDivRealDivMtraining/RMSprop/gradients/loss/char_cnn_predictions_loss/Mean_2_grad/truediv%loss/char_cnn_predictions_loss/Mean_1*5
_class+
)'loc:@loss/char_cnn_predictions_loss/div*
T0*#
_output_shapes
:џџџџџџџџџ
ъ
Ftraining/RMSprop/gradients/loss/char_cnn_predictions_loss/div_grad/SumSumJtraining/RMSprop/gradients/loss/char_cnn_predictions_loss/div_grad/RealDivXtraining/RMSprop/gradients/loss/char_cnn_predictions_loss/div_grad/BroadcastGradientArgs*
_output_shapes
:*5
_class+
)'loc:@loss/char_cnn_predictions_loss/div*

Tidx0*
	keep_dims( *
T0
к
Jtraining/RMSprop/gradients/loss/char_cnn_predictions_loss/div_grad/ReshapeReshapeFtraining/RMSprop/gradients/loss/char_cnn_predictions_loss/div_grad/SumHtraining/RMSprop/gradients/loss/char_cnn_predictions_loss/div_grad/Shape*5
_class+
)'loc:@loss/char_cnn_predictions_loss/div*
Tshape0*#
_output_shapes
:џџџџџџџџџ*
T0
ж
Ftraining/RMSprop/gradients/loss/char_cnn_predictions_loss/div_grad/NegNeg"loss/char_cnn_predictions_loss/mul*5
_class+
)'loc:@loss/char_cnn_predictions_loss/div*
T0*#
_output_shapes
:џџџџџџџџџ
Ћ
Ltraining/RMSprop/gradients/loss/char_cnn_predictions_loss/div_grad/RealDiv_1RealDivFtraining/RMSprop/gradients/loss/char_cnn_predictions_loss/div_grad/Neg%loss/char_cnn_predictions_loss/Mean_1*5
_class+
)'loc:@loss/char_cnn_predictions_loss/div*
T0*#
_output_shapes
:џџџџџџџџџ
Б
Ltraining/RMSprop/gradients/loss/char_cnn_predictions_loss/div_grad/RealDiv_2RealDivLtraining/RMSprop/gradients/loss/char_cnn_predictions_loss/div_grad/RealDiv_1%loss/char_cnn_predictions_loss/Mean_1*5
_class+
)'loc:@loss/char_cnn_predictions_loss/div*
T0*#
_output_shapes
:џџџџџџџџџ
Я
Ftraining/RMSprop/gradients/loss/char_cnn_predictions_loss/div_grad/mulMulMtraining/RMSprop/gradients/loss/char_cnn_predictions_loss/Mean_2_grad/truedivLtraining/RMSprop/gradients/loss/char_cnn_predictions_loss/div_grad/RealDiv_2*5
_class+
)'loc:@loss/char_cnn_predictions_loss/div*
T0*#
_output_shapes
:џџџџџџџџџ
ъ
Htraining/RMSprop/gradients/loss/char_cnn_predictions_loss/div_grad/Sum_1SumFtraining/RMSprop/gradients/loss/char_cnn_predictions_loss/div_grad/mulZtraining/RMSprop/gradients/loss/char_cnn_predictions_loss/div_grad/BroadcastGradientArgs:1*
_output_shapes
:*5
_class+
)'loc:@loss/char_cnn_predictions_loss/div*

Tidx0*
	keep_dims( *
T0
г
Ltraining/RMSprop/gradients/loss/char_cnn_predictions_loss/div_grad/Reshape_1ReshapeHtraining/RMSprop/gradients/loss/char_cnn_predictions_loss/div_grad/Sum_1Jtraining/RMSprop/gradients/loss/char_cnn_predictions_loss/div_grad/Shape_1*5
_class+
)'loc:@loss/char_cnn_predictions_loss/div*
Tshape0*
_output_shapes
: *
T0
т
Htraining/RMSprop/gradients/loss/char_cnn_predictions_loss/mul_grad/ShapeShape#loss/char_cnn_predictions_loss/Mean*
out_type0*5
_class+
)'loc:@loss/char_cnn_predictions_loss/mul*
T0*
_output_shapes
:
ф
Jtraining/RMSprop/gradients/loss/char_cnn_predictions_loss/mul_grad/Shape_1Shape#char_cnn_predictions_sample_weights*
out_type0*5
_class+
)'loc:@loss/char_cnn_predictions_loss/mul*
T0*
_output_shapes
:
ћ
Xtraining/RMSprop/gradients/loss/char_cnn_predictions_loss/mul_grad/BroadcastGradientArgsBroadcastGradientArgsHtraining/RMSprop/gradients/loss/char_cnn_predictions_loss/mul_grad/ShapeJtraining/RMSprop/gradients/loss/char_cnn_predictions_loss/mul_grad/Shape_1*5
_class+
)'loc:@loss/char_cnn_predictions_loss/mul*
T0*2
_output_shapes 
:џџџџџџџџџ:џџџџџџџџџ
Ѓ
Ftraining/RMSprop/gradients/loss/char_cnn_predictions_loss/mul_grad/mulMulJtraining/RMSprop/gradients/loss/char_cnn_predictions_loss/div_grad/Reshape#char_cnn_predictions_sample_weights*5
_class+
)'loc:@loss/char_cnn_predictions_loss/mul*
T0*#
_output_shapes
:џџџџџџџџџ
ц
Ftraining/RMSprop/gradients/loss/char_cnn_predictions_loss/mul_grad/SumSumFtraining/RMSprop/gradients/loss/char_cnn_predictions_loss/mul_grad/mulXtraining/RMSprop/gradients/loss/char_cnn_predictions_loss/mul_grad/BroadcastGradientArgs*
_output_shapes
:*5
_class+
)'loc:@loss/char_cnn_predictions_loss/mul*

Tidx0*
	keep_dims( *
T0
к
Jtraining/RMSprop/gradients/loss/char_cnn_predictions_loss/mul_grad/ReshapeReshapeFtraining/RMSprop/gradients/loss/char_cnn_predictions_loss/mul_grad/SumHtraining/RMSprop/gradients/loss/char_cnn_predictions_loss/mul_grad/Shape*5
_class+
)'loc:@loss/char_cnn_predictions_loss/mul*
Tshape0*#
_output_shapes
:џџџџџџџџџ*
T0
Ѕ
Htraining/RMSprop/gradients/loss/char_cnn_predictions_loss/mul_grad/mul_1Mul#loss/char_cnn_predictions_loss/MeanJtraining/RMSprop/gradients/loss/char_cnn_predictions_loss/div_grad/Reshape*5
_class+
)'loc:@loss/char_cnn_predictions_loss/mul*
T0*#
_output_shapes
:џџџџџџџџџ
ь
Htraining/RMSprop/gradients/loss/char_cnn_predictions_loss/mul_grad/Sum_1SumHtraining/RMSprop/gradients/loss/char_cnn_predictions_loss/mul_grad/mul_1Ztraining/RMSprop/gradients/loss/char_cnn_predictions_loss/mul_grad/BroadcastGradientArgs:1*
_output_shapes
:*5
_class+
)'loc:@loss/char_cnn_predictions_loss/mul*

Tidx0*
	keep_dims( *
T0
р
Ltraining/RMSprop/gradients/loss/char_cnn_predictions_loss/mul_grad/Reshape_1ReshapeHtraining/RMSprop/gradients/loss/char_cnn_predictions_loss/mul_grad/Sum_1Jtraining/RMSprop/gradients/loss/char_cnn_predictions_loss/mul_grad/Shape_1*5
_class+
)'loc:@loss/char_cnn_predictions_loss/mul*
Tshape0*#
_output_shapes
:џџџџџџџџџ*
T0
Ї
Itraining/RMSprop/gradients/loss/char_cnn_predictions_loss/Mean_grad/ShapeShapefloss/char_cnn_predictions_loss/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits*
out_type0*6
_class,
*(loc:@loss/char_cnn_predictions_loss/Mean*
T0*
_output_shapes
:
Т
Htraining/RMSprop/gradients/loss/char_cnn_predictions_loss/Mean_grad/SizeConst*
dtype0*6
_class,
*(loc:@loss/char_cnn_predictions_loss/Mean*
value	B :*
_output_shapes
: 
Њ
Gtraining/RMSprop/gradients/loss/char_cnn_predictions_loss/Mean_grad/addAdd5loss/char_cnn_predictions_loss/Mean/reduction_indicesHtraining/RMSprop/gradients/loss/char_cnn_predictions_loss/Mean_grad/Size*6
_class,
*(loc:@loss/char_cnn_predictions_loss/Mean*
T0*
_output_shapes
: 
С
Gtraining/RMSprop/gradients/loss/char_cnn_predictions_loss/Mean_grad/modFloorModGtraining/RMSprop/gradients/loss/char_cnn_predictions_loss/Mean_grad/addHtraining/RMSprop/gradients/loss/char_cnn_predictions_loss/Mean_grad/Size*6
_class,
*(loc:@loss/char_cnn_predictions_loss/Mean*
T0*
_output_shapes
: 
Э
Ktraining/RMSprop/gradients/loss/char_cnn_predictions_loss/Mean_grad/Shape_1Const*
dtype0*6
_class,
*(loc:@loss/char_cnn_predictions_loss/Mean*
valueB: *
_output_shapes
:
Щ
Otraining/RMSprop/gradients/loss/char_cnn_predictions_loss/Mean_grad/range/startConst*
dtype0*6
_class,
*(loc:@loss/char_cnn_predictions_loss/Mean*
value	B : *
_output_shapes
: 
Щ
Otraining/RMSprop/gradients/loss/char_cnn_predictions_loss/Mean_grad/range/deltaConst*
dtype0*6
_class,
*(loc:@loss/char_cnn_predictions_loss/Mean*
value	B :*
_output_shapes
: 

Itraining/RMSprop/gradients/loss/char_cnn_predictions_loss/Mean_grad/rangeRangeOtraining/RMSprop/gradients/loss/char_cnn_predictions_loss/Mean_grad/range/startHtraining/RMSprop/gradients/loss/char_cnn_predictions_loss/Mean_grad/SizeOtraining/RMSprop/gradients/loss/char_cnn_predictions_loss/Mean_grad/range/delta*6
_class,
*(loc:@loss/char_cnn_predictions_loss/Mean*

Tidx0*
_output_shapes
:
Ш
Ntraining/RMSprop/gradients/loss/char_cnn_predictions_loss/Mean_grad/Fill/valueConst*
dtype0*6
_class,
*(loc:@loss/char_cnn_predictions_loss/Mean*
value	B :*
_output_shapes
: 
Ш
Htraining/RMSprop/gradients/loss/char_cnn_predictions_loss/Mean_grad/FillFillKtraining/RMSprop/gradients/loss/char_cnn_predictions_loss/Mean_grad/Shape_1Ntraining/RMSprop/gradients/loss/char_cnn_predictions_loss/Mean_grad/Fill/value*6
_class,
*(loc:@loss/char_cnn_predictions_loss/Mean*
T0*
_output_shapes
: 
њ
Qtraining/RMSprop/gradients/loss/char_cnn_predictions_loss/Mean_grad/DynamicStitchDynamicStitchItraining/RMSprop/gradients/loss/char_cnn_predictions_loss/Mean_grad/rangeGtraining/RMSprop/gradients/loss/char_cnn_predictions_loss/Mean_grad/modItraining/RMSprop/gradients/loss/char_cnn_predictions_loss/Mean_grad/ShapeHtraining/RMSprop/gradients/loss/char_cnn_predictions_loss/Mean_grad/Fill*6
_class,
*(loc:@loss/char_cnn_predictions_loss/Mean*
T0*#
_output_shapes
:џџџџџџџџџ*
N
Ч
Mtraining/RMSprop/gradients/loss/char_cnn_predictions_loss/Mean_grad/Maximum/yConst*
dtype0*6
_class,
*(loc:@loss/char_cnn_predictions_loss/Mean*
value	B :*
_output_shapes
: 
о
Ktraining/RMSprop/gradients/loss/char_cnn_predictions_loss/Mean_grad/MaximumMaximumQtraining/RMSprop/gradients/loss/char_cnn_predictions_loss/Mean_grad/DynamicStitchMtraining/RMSprop/gradients/loss/char_cnn_predictions_loss/Mean_grad/Maximum/y*6
_class,
*(loc:@loss/char_cnn_predictions_loss/Mean*
T0*#
_output_shapes
:џџџџџџџџџ
ж
Ltraining/RMSprop/gradients/loss/char_cnn_predictions_loss/Mean_grad/floordivFloorDivItraining/RMSprop/gradients/loss/char_cnn_predictions_loss/Mean_grad/ShapeKtraining/RMSprop/gradients/loss/char_cnn_predictions_loss/Mean_grad/Maximum*6
_class,
*(loc:@loss/char_cnn_predictions_loss/Mean*
T0*#
_output_shapes
:џџџџџџџџџ
о
Ktraining/RMSprop/gradients/loss/char_cnn_predictions_loss/Mean_grad/ReshapeReshapeJtraining/RMSprop/gradients/loss/char_cnn_predictions_loss/mul_grad/ReshapeQtraining/RMSprop/gradients/loss/char_cnn_predictions_loss/Mean_grad/DynamicStitch*6
_class,
*(loc:@loss/char_cnn_predictions_loss/Mean*
Tshape0*
_output_shapes
:*
T0
и
Htraining/RMSprop/gradients/loss/char_cnn_predictions_loss/Mean_grad/TileTileKtraining/RMSprop/gradients/loss/char_cnn_predictions_loss/Mean_grad/ReshapeLtraining/RMSprop/gradients/loss/char_cnn_predictions_loss/Mean_grad/floordiv*

Tmultiples0*6
_class,
*(loc:@loss/char_cnn_predictions_loss/Mean*
T0*
_output_shapes
:
Љ
Ktraining/RMSprop/gradients/loss/char_cnn_predictions_loss/Mean_grad/Shape_2Shapefloss/char_cnn_predictions_loss/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits*
out_type0*6
_class,
*(loc:@loss/char_cnn_predictions_loss/Mean*
T0*
_output_shapes
:
ц
Ktraining/RMSprop/gradients/loss/char_cnn_predictions_loss/Mean_grad/Shape_3Shape#loss/char_cnn_predictions_loss/Mean*
out_type0*6
_class,
*(loc:@loss/char_cnn_predictions_loss/Mean*
T0*
_output_shapes
:
Ы
Itraining/RMSprop/gradients/loss/char_cnn_predictions_loss/Mean_grad/ConstConst*
dtype0*6
_class,
*(loc:@loss/char_cnn_predictions_loss/Mean*
valueB: *
_output_shapes
:
о
Htraining/RMSprop/gradients/loss/char_cnn_predictions_loss/Mean_grad/ProdProdKtraining/RMSprop/gradients/loss/char_cnn_predictions_loss/Mean_grad/Shape_2Itraining/RMSprop/gradients/loss/char_cnn_predictions_loss/Mean_grad/Const*
_output_shapes
: *6
_class,
*(loc:@loss/char_cnn_predictions_loss/Mean*

Tidx0*
	keep_dims( *
T0
Э
Ktraining/RMSprop/gradients/loss/char_cnn_predictions_loss/Mean_grad/Const_1Const*
dtype0*6
_class,
*(loc:@loss/char_cnn_predictions_loss/Mean*
valueB: *
_output_shapes
:
т
Jtraining/RMSprop/gradients/loss/char_cnn_predictions_loss/Mean_grad/Prod_1ProdKtraining/RMSprop/gradients/loss/char_cnn_predictions_loss/Mean_grad/Shape_3Ktraining/RMSprop/gradients/loss/char_cnn_predictions_loss/Mean_grad/Const_1*
_output_shapes
: *6
_class,
*(loc:@loss/char_cnn_predictions_loss/Mean*

Tidx0*
	keep_dims( *
T0
Щ
Otraining/RMSprop/gradients/loss/char_cnn_predictions_loss/Mean_grad/Maximum_1/yConst*
dtype0*6
_class,
*(loc:@loss/char_cnn_predictions_loss/Mean*
value	B :*
_output_shapes
: 
Ю
Mtraining/RMSprop/gradients/loss/char_cnn_predictions_loss/Mean_grad/Maximum_1MaximumJtraining/RMSprop/gradients/loss/char_cnn_predictions_loss/Mean_grad/Prod_1Otraining/RMSprop/gradients/loss/char_cnn_predictions_loss/Mean_grad/Maximum_1/y*6
_class,
*(loc:@loss/char_cnn_predictions_loss/Mean*
T0*
_output_shapes
: 
Ь
Ntraining/RMSprop/gradients/loss/char_cnn_predictions_loss/Mean_grad/floordiv_1FloorDivHtraining/RMSprop/gradients/loss/char_cnn_predictions_loss/Mean_grad/ProdMtraining/RMSprop/gradients/loss/char_cnn_predictions_loss/Mean_grad/Maximum_1*6
_class,
*(loc:@loss/char_cnn_predictions_loss/Mean*
T0*
_output_shapes
: 

Htraining/RMSprop/gradients/loss/char_cnn_predictions_loss/Mean_grad/CastCastNtraining/RMSprop/gradients/loss/char_cnn_predictions_loss/Mean_grad/floordiv_1*

DstT0*6
_class,
*(loc:@loss/char_cnn_predictions_loss/Mean*

SrcT0*
_output_shapes
: 
а
Ktraining/RMSprop/gradients/loss/char_cnn_predictions_loss/Mean_grad/truedivRealDivHtraining/RMSprop/gradients/loss/char_cnn_predictions_loss/Mean_grad/TileHtraining/RMSprop/gradients/loss/char_cnn_predictions_loss/Mean_grad/Cast*6
_class,
*(loc:@loss/char_cnn_predictions_loss/Mean*
T0*#
_output_shapes
:џџџџџџџџџ
Щ
%training/RMSprop/gradients/zeros_like	ZerosLikehloss/char_cnn_predictions_loss/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits:1*y
_classo
mkloc:@loss/char_cnn_predictions_loss/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits*
T0*'
_output_shapes
:џџџџџџџџџy
ј
training/RMSprop/gradients/loss/char_cnn_predictions_loss/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits_grad/PreventGradientPreventGradienthloss/char_cnn_predictions_loss/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits:1*Д
messageЈЅCurrently there is no way to take the second derivative of sparse_softmax_cross_entropy_with_logits due to the fused implementation's interaction with tf.gradients()*y
_classo
mkloc:@loss/char_cnn_predictions_loss/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits*
T0*'
_output_shapes
:џџџџџџџџџy
м
training/RMSprop/gradients/loss/char_cnn_predictions_loss/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDims/dimConst*
dtype0*y
_classo
mkloc:@loss/char_cnn_predictions_loss/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits*
valueB :
џџџџџџџџџ*
_output_shapes
: 
О
training/RMSprop/gradients/loss/char_cnn_predictions_loss/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDims
ExpandDimsKtraining/RMSprop/gradients/loss/char_cnn_predictions_loss/Mean_grad/truedivtraining/RMSprop/gradients/loss/char_cnn_predictions_loss/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDims/dim*

Tdim0*y
_classo
mkloc:@loss/char_cnn_predictions_loss/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits*
T0*'
_output_shapes
:џџџџџџџџџ
ь
training/RMSprop/gradients/loss/char_cnn_predictions_loss/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits_grad/mulMultraining/RMSprop/gradients/loss/char_cnn_predictions_loss/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDimstraining/RMSprop/gradients/loss/char_cnn_predictions_loss/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits_grad/PreventGradient*y
_classo
mkloc:@loss/char_cnn_predictions_loss/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits*
T0*'
_output_shapes
:џџџџџџџџџy
э
Ntraining/RMSprop/gradients/loss/char_cnn_predictions_loss/Reshape_1_grad/ShapeShape"loss/char_cnn_predictions_loss/Log*
out_type0*;
_class1
/-loc:@loss/char_cnn_predictions_loss/Reshape_1*
T0*
_output_shapes
:
Е
Ptraining/RMSprop/gradients/loss/char_cnn_predictions_loss/Reshape_1_grad/ReshapeReshapetraining/RMSprop/gradients/loss/char_cnn_predictions_loss/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits_grad/mulNtraining/RMSprop/gradients/loss/char_cnn_predictions_loss/Reshape_1_grad/Shape*;
_class1
/-loc:@loss/char_cnn_predictions_loss/Reshape_1*
Tshape0*'
_output_shapes
:џџџџџџџџџy*
T0
Х
Mtraining/RMSprop/gradients/loss/char_cnn_predictions_loss/Log_grad/Reciprocal
Reciprocal,loss/char_cnn_predictions_loss/clip_by_valueQ^training/RMSprop/gradients/loss/char_cnn_predictions_loss/Reshape_1_grad/Reshape*5
_class+
)'loc:@loss/char_cnn_predictions_loss/Log*
T0*'
_output_shapes
:џџџџџџџџџy
з
Ftraining/RMSprop/gradients/loss/char_cnn_predictions_loss/Log_grad/mulMulPtraining/RMSprop/gradients/loss/char_cnn_predictions_loss/Reshape_1_grad/ReshapeMtraining/RMSprop/gradients/loss/char_cnn_predictions_loss/Log_grad/Reciprocal*5
_class+
)'loc:@loss/char_cnn_predictions_loss/Log*
T0*'
_output_shapes
:џџџџџџџџџy

Rtraining/RMSprop/gradients/loss/char_cnn_predictions_loss/clip_by_value_grad/ShapeShape4loss/char_cnn_predictions_loss/clip_by_value/Minimum*
out_type0*?
_class5
31loc:@loss/char_cnn_predictions_loss/clip_by_value*
T0*
_output_shapes
:
и
Ttraining/RMSprop/gradients/loss/char_cnn_predictions_loss/clip_by_value_grad/Shape_1Const*
dtype0*?
_class5
31loc:@loss/char_cnn_predictions_loss/clip_by_value*
valueB *
_output_shapes
: 

Ttraining/RMSprop/gradients/loss/char_cnn_predictions_loss/clip_by_value_grad/Shape_2ShapeFtraining/RMSprop/gradients/loss/char_cnn_predictions_loss/Log_grad/mul*
out_type0*?
_class5
31loc:@loss/char_cnn_predictions_loss/clip_by_value*
T0*
_output_shapes
:
о
Xtraining/RMSprop/gradients/loss/char_cnn_predictions_loss/clip_by_value_grad/zeros/ConstConst*
dtype0*?
_class5
31loc:@loss/char_cnn_predictions_loss/clip_by_value*
valueB
 *    *
_output_shapes
: 
§
Rtraining/RMSprop/gradients/loss/char_cnn_predictions_loss/clip_by_value_grad/zerosFillTtraining/RMSprop/gradients/loss/char_cnn_predictions_loss/clip_by_value_grad/Shape_2Xtraining/RMSprop/gradients/loss/char_cnn_predictions_loss/clip_by_value_grad/zeros/Const*?
_class5
31loc:@loss/char_cnn_predictions_loss/clip_by_value*
T0*'
_output_shapes
:џџџџџџџџџy
И
Ytraining/RMSprop/gradients/loss/char_cnn_predictions_loss/clip_by_value_grad/GreaterEqualGreaterEqual4loss/char_cnn_predictions_loss/clip_by_value/Minimum$loss/char_cnn_predictions_loss/Const*?
_class5
31loc:@loss/char_cnn_predictions_loss/clip_by_value*
T0*'
_output_shapes
:џџџџџџџџџy
Ѓ
btraining/RMSprop/gradients/loss/char_cnn_predictions_loss/clip_by_value_grad/BroadcastGradientArgsBroadcastGradientArgsRtraining/RMSprop/gradients/loss/char_cnn_predictions_loss/clip_by_value_grad/ShapeTtraining/RMSprop/gradients/loss/char_cnn_predictions_loss/clip_by_value_grad/Shape_1*?
_class5
31loc:@loss/char_cnn_predictions_loss/clip_by_value*
T0*2
_output_shapes 
:џџџџџџџџџ:џџџџџџџџџ
Ч
Straining/RMSprop/gradients/loss/char_cnn_predictions_loss/clip_by_value_grad/SelectSelectYtraining/RMSprop/gradients/loss/char_cnn_predictions_loss/clip_by_value_grad/GreaterEqualFtraining/RMSprop/gradients/loss/char_cnn_predictions_loss/Log_grad/mulRtraining/RMSprop/gradients/loss/char_cnn_predictions_loss/clip_by_value_grad/zeros*?
_class5
31loc:@loss/char_cnn_predictions_loss/clip_by_value*
T0*'
_output_shapes
:џџџџџџџџџy
Щ
Utraining/RMSprop/gradients/loss/char_cnn_predictions_loss/clip_by_value_grad/Select_1SelectYtraining/RMSprop/gradients/loss/char_cnn_predictions_loss/clip_by_value_grad/GreaterEqualRtraining/RMSprop/gradients/loss/char_cnn_predictions_loss/clip_by_value_grad/zerosFtraining/RMSprop/gradients/loss/char_cnn_predictions_loss/Log_grad/mul*?
_class5
31loc:@loss/char_cnn_predictions_loss/clip_by_value*
T0*'
_output_shapes
:џџџџџџџџџy

Ptraining/RMSprop/gradients/loss/char_cnn_predictions_loss/clip_by_value_grad/SumSumStraining/RMSprop/gradients/loss/char_cnn_predictions_loss/clip_by_value_grad/Selectbtraining/RMSprop/gradients/loss/char_cnn_predictions_loss/clip_by_value_grad/BroadcastGradientArgs*
_output_shapes
:*?
_class5
31loc:@loss/char_cnn_predictions_loss/clip_by_value*

Tidx0*
	keep_dims( *
T0

Ttraining/RMSprop/gradients/loss/char_cnn_predictions_loss/clip_by_value_grad/ReshapeReshapePtraining/RMSprop/gradients/loss/char_cnn_predictions_loss/clip_by_value_grad/SumRtraining/RMSprop/gradients/loss/char_cnn_predictions_loss/clip_by_value_grad/Shape*?
_class5
31loc:@loss/char_cnn_predictions_loss/clip_by_value*
Tshape0*'
_output_shapes
:џџџџџџџџџy*
T0

Rtraining/RMSprop/gradients/loss/char_cnn_predictions_loss/clip_by_value_grad/Sum_1SumUtraining/RMSprop/gradients/loss/char_cnn_predictions_loss/clip_by_value_grad/Select_1dtraining/RMSprop/gradients/loss/char_cnn_predictions_loss/clip_by_value_grad/BroadcastGradientArgs:1*
_output_shapes
:*?
_class5
31loc:@loss/char_cnn_predictions_loss/clip_by_value*

Tidx0*
	keep_dims( *
T0
ћ
Vtraining/RMSprop/gradients/loss/char_cnn_predictions_loss/clip_by_value_grad/Reshape_1ReshapeRtraining/RMSprop/gradients/loss/char_cnn_predictions_loss/clip_by_value_grad/Sum_1Ttraining/RMSprop/gradients/loss/char_cnn_predictions_loss/clip_by_value_grad/Shape_1*?
_class5
31loc:@loss/char_cnn_predictions_loss/clip_by_value*
Tshape0*
_output_shapes
: *
T0
џ
Ztraining/RMSprop/gradients/loss/char_cnn_predictions_loss/clip_by_value/Minimum_grad/ShapeShapechar_cnn_predictions/Softmax*
out_type0*G
_class=
;9loc:@loss/char_cnn_predictions_loss/clip_by_value/Minimum*
T0*
_output_shapes
:
ш
\training/RMSprop/gradients/loss/char_cnn_predictions_loss/clip_by_value/Minimum_grad/Shape_1Const*
dtype0*G
_class=
;9loc:@loss/char_cnn_predictions_loss/clip_by_value/Minimum*
valueB *
_output_shapes
: 
Й
\training/RMSprop/gradients/loss/char_cnn_predictions_loss/clip_by_value/Minimum_grad/Shape_2ShapeTtraining/RMSprop/gradients/loss/char_cnn_predictions_loss/clip_by_value_grad/Reshape*
out_type0*G
_class=
;9loc:@loss/char_cnn_predictions_loss/clip_by_value/Minimum*
T0*
_output_shapes
:
ю
`training/RMSprop/gradients/loss/char_cnn_predictions_loss/clip_by_value/Minimum_grad/zeros/ConstConst*
dtype0*G
_class=
;9loc:@loss/char_cnn_predictions_loss/clip_by_value/Minimum*
valueB
 *    *
_output_shapes
: 

Ztraining/RMSprop/gradients/loss/char_cnn_predictions_loss/clip_by_value/Minimum_grad/zerosFill\training/RMSprop/gradients/loss/char_cnn_predictions_loss/clip_by_value/Minimum_grad/Shape_2`training/RMSprop/gradients/loss/char_cnn_predictions_loss/clip_by_value/Minimum_grad/zeros/Const*G
_class=
;9loc:@loss/char_cnn_predictions_loss/clip_by_value/Minimum*
T0*'
_output_shapes
:џџџџџџџџџy
Ј
^training/RMSprop/gradients/loss/char_cnn_predictions_loss/clip_by_value/Minimum_grad/LessEqual	LessEqualchar_cnn_predictions/Softmax"loss/char_cnn_predictions_loss/sub*G
_class=
;9loc:@loss/char_cnn_predictions_loss/clip_by_value/Minimum*
T0*'
_output_shapes
:џџџџџџџџџy
У
jtraining/RMSprop/gradients/loss/char_cnn_predictions_loss/clip_by_value/Minimum_grad/BroadcastGradientArgsBroadcastGradientArgsZtraining/RMSprop/gradients/loss/char_cnn_predictions_loss/clip_by_value/Minimum_grad/Shape\training/RMSprop/gradients/loss/char_cnn_predictions_loss/clip_by_value/Minimum_grad/Shape_1*G
_class=
;9loc:@loss/char_cnn_predictions_loss/clip_by_value/Minimum*
T0*2
_output_shapes 
:џџџџџџџџџ:џџџџџџџџџ
ђ
[training/RMSprop/gradients/loss/char_cnn_predictions_loss/clip_by_value/Minimum_grad/SelectSelect^training/RMSprop/gradients/loss/char_cnn_predictions_loss/clip_by_value/Minimum_grad/LessEqualTtraining/RMSprop/gradients/loss/char_cnn_predictions_loss/clip_by_value_grad/ReshapeZtraining/RMSprop/gradients/loss/char_cnn_predictions_loss/clip_by_value/Minimum_grad/zeros*G
_class=
;9loc:@loss/char_cnn_predictions_loss/clip_by_value/Minimum*
T0*'
_output_shapes
:џџџџџџџџџy
є
]training/RMSprop/gradients/loss/char_cnn_predictions_loss/clip_by_value/Minimum_grad/Select_1Select^training/RMSprop/gradients/loss/char_cnn_predictions_loss/clip_by_value/Minimum_grad/LessEqualZtraining/RMSprop/gradients/loss/char_cnn_predictions_loss/clip_by_value/Minimum_grad/zerosTtraining/RMSprop/gradients/loss/char_cnn_predictions_loss/clip_by_value_grad/Reshape*G
_class=
;9loc:@loss/char_cnn_predictions_loss/clip_by_value/Minimum*
T0*'
_output_shapes
:џџџџџџџџџy
Б
Xtraining/RMSprop/gradients/loss/char_cnn_predictions_loss/clip_by_value/Minimum_grad/SumSum[training/RMSprop/gradients/loss/char_cnn_predictions_loss/clip_by_value/Minimum_grad/Selectjtraining/RMSprop/gradients/loss/char_cnn_predictions_loss/clip_by_value/Minimum_grad/BroadcastGradientArgs*
_output_shapes
:*G
_class=
;9loc:@loss/char_cnn_predictions_loss/clip_by_value/Minimum*

Tidx0*
	keep_dims( *
T0
І
\training/RMSprop/gradients/loss/char_cnn_predictions_loss/clip_by_value/Minimum_grad/ReshapeReshapeXtraining/RMSprop/gradients/loss/char_cnn_predictions_loss/clip_by_value/Minimum_grad/SumZtraining/RMSprop/gradients/loss/char_cnn_predictions_loss/clip_by_value/Minimum_grad/Shape*G
_class=
;9loc:@loss/char_cnn_predictions_loss/clip_by_value/Minimum*
Tshape0*'
_output_shapes
:џџџџџџџџџy*
T0
З
Ztraining/RMSprop/gradients/loss/char_cnn_predictions_loss/clip_by_value/Minimum_grad/Sum_1Sum]training/RMSprop/gradients/loss/char_cnn_predictions_loss/clip_by_value/Minimum_grad/Select_1ltraining/RMSprop/gradients/loss/char_cnn_predictions_loss/clip_by_value/Minimum_grad/BroadcastGradientArgs:1*
_output_shapes
:*G
_class=
;9loc:@loss/char_cnn_predictions_loss/clip_by_value/Minimum*

Tidx0*
	keep_dims( *
T0

^training/RMSprop/gradients/loss/char_cnn_predictions_loss/clip_by_value/Minimum_grad/Reshape_1ReshapeZtraining/RMSprop/gradients/loss/char_cnn_predictions_loss/clip_by_value/Minimum_grad/Sum_1\training/RMSprop/gradients/loss/char_cnn_predictions_loss/clip_by_value/Minimum_grad/Shape_1*G
_class=
;9loc:@loss/char_cnn_predictions_loss/clip_by_value/Minimum*
Tshape0*
_output_shapes
: *
T0
І
@training/RMSprop/gradients/char_cnn_predictions/Softmax_grad/mulMul\training/RMSprop/gradients/loss/char_cnn_predictions_loss/clip_by_value/Minimum_grad/Reshapechar_cnn_predictions/Softmax*/
_class%
#!loc:@char_cnn_predictions/Softmax*
T0*'
_output_shapes
:џџџџџџџџџy
Э
Rtraining/RMSprop/gradients/char_cnn_predictions/Softmax_grad/Sum/reduction_indicesConst*
dtype0*/
_class%
#!loc:@char_cnn_predictions/Softmax*
valueB:*
_output_shapes
:
й
@training/RMSprop/gradients/char_cnn_predictions/Softmax_grad/SumSum@training/RMSprop/gradients/char_cnn_predictions/Softmax_grad/mulRtraining/RMSprop/gradients/char_cnn_predictions/Softmax_grad/Sum/reduction_indices*#
_output_shapes
:џџџџџџџџџ*/
_class%
#!loc:@char_cnn_predictions/Softmax*

Tidx0*
	keep_dims( *
T0
Ь
Jtraining/RMSprop/gradients/char_cnn_predictions/Softmax_grad/Reshape/shapeConst*
dtype0*/
_class%
#!loc:@char_cnn_predictions/Softmax*
valueB"џџџџ   *
_output_shapes
:
Ю
Dtraining/RMSprop/gradients/char_cnn_predictions/Softmax_grad/ReshapeReshape@training/RMSprop/gradients/char_cnn_predictions/Softmax_grad/SumJtraining/RMSprop/gradients/char_cnn_predictions/Softmax_grad/Reshape/shape*/
_class%
#!loc:@char_cnn_predictions/Softmax*
Tshape0*'
_output_shapes
:џџџџџџџџџ*
T0
Ю
@training/RMSprop/gradients/char_cnn_predictions/Softmax_grad/subSub\training/RMSprop/gradients/loss/char_cnn_predictions_loss/clip_by_value/Minimum_grad/ReshapeDtraining/RMSprop/gradients/char_cnn_predictions/Softmax_grad/Reshape*/
_class%
#!loc:@char_cnn_predictions/Softmax*
T0*'
_output_shapes
:џџџџџџџџџy

Btraining/RMSprop/gradients/char_cnn_predictions/Softmax_grad/mul_1Mul@training/RMSprop/gradients/char_cnn_predictions/Softmax_grad/subchar_cnn_predictions/Softmax*/
_class%
#!loc:@char_cnn_predictions/Softmax*
T0*'
_output_shapes
:џџџџџџџџџy

Htraining/RMSprop/gradients/char_cnn_predictions/BiasAdd_grad/BiasAddGradBiasAddGradBtraining/RMSprop/gradients/char_cnn_predictions/Softmax_grad/mul_1*/
_class%
#!loc:@char_cnn_predictions/BiasAdd*
data_formatNHWC*
_output_shapes
:y*
T0
Л
Btraining/RMSprop/gradients/char_cnn_predictions/MatMul_grad/MatMulMatMulBtraining/RMSprop/gradients/char_cnn_predictions/Softmax_grad/mul_1 char_cnn_predictions/kernel/read*
transpose_b(*
transpose_a( *.
_class$
" loc:@char_cnn_predictions/MatMul*
T0*(
_output_shapes
:џџџџџџџџџ
 
Dtraining/RMSprop/gradients/char_cnn_predictions/MatMul_grad/MatMul_1MatMuldense_1/ReluBtraining/RMSprop/gradients/char_cnn_predictions/Softmax_grad/mul_1*
transpose_b( *
transpose_a(*.
_class$
" loc:@char_cnn_predictions/MatMul*
T0*
_output_shapes
:	y
ч
5training/RMSprop/gradients/dense_1/Relu_grad/ReluGradReluGradBtraining/RMSprop/gradients/char_cnn_predictions/MatMul_grad/MatMuldense_1/Relu*
_class
loc:@dense_1/Relu*
T0*(
_output_shapes
:џџџџџџџџџ
т
;training/RMSprop/gradients/dense_1/BiasAdd_grad/BiasAddGradBiasAddGrad5training/RMSprop/gradients/dense_1/Relu_grad/ReluGrad*"
_class
loc:@dense_1/BiasAdd*
data_formatNHWC*
_output_shapes	
:*
T0

5training/RMSprop/gradients/dense_1/MatMul_grad/MatMulMatMul5training/RMSprop/gradients/dense_1/Relu_grad/ReluGraddense_1/kernel/read*
transpose_b(*
transpose_a( *!
_class
loc:@dense_1/MatMul*
T0*(
_output_shapes
:џџџџџџџџџ
џ
7training/RMSprop/gradients/dense_1/MatMul_grad/MatMul_1MatMulflatten_1/Reshape5training/RMSprop/gradients/dense_1/Relu_grad/ReluGrad*
transpose_b( *
transpose_a(*!
_class
loc:@dense_1/MatMul*
T0* 
_output_shapes
:

Д
7training/RMSprop/gradients/flatten_1/Reshape_grad/ShapeShapemax_pooling1d_2/Squeeze*
out_type0*$
_class
loc:@flatten_1/Reshape*
T0*
_output_shapes
:

9training/RMSprop/gradients/flatten_1/Reshape_grad/ReshapeReshape5training/RMSprop/gradients/dense_1/MatMul_grad/MatMul7training/RMSprop/gradients/flatten_1/Reshape_grad/Shape*$
_class
loc:@flatten_1/Reshape*
Tshape0*,
_output_shapes
:џџџџџџџџџ*
T0
Р
=training/RMSprop/gradients/max_pooling1d_2/Squeeze_grad/ShapeShapemax_pooling1d_2/MaxPool*
out_type0**
_class 
loc:@max_pooling1d_2/Squeeze*
T0*
_output_shapes
:
Й
?training/RMSprop/gradients/max_pooling1d_2/Squeeze_grad/ReshapeReshape9training/RMSprop/gradients/flatten_1/Reshape_grad/Reshape=training/RMSprop/gradients/max_pooling1d_2/Squeeze_grad/Shape**
_class 
loc:@max_pooling1d_2/Squeeze*
Tshape0*0
_output_shapes
:џџџџџџџџџ*
T0

Ctraining/RMSprop/gradients/max_pooling1d_2/MaxPool_grad/MaxPoolGradMaxPoolGradmax_pooling1d_2/ExpandDimsmax_pooling1d_2/MaxPool?training/RMSprop/gradients/max_pooling1d_2/Squeeze_grad/Reshape*0
_output_shapes
:џџџџџџџџџ*
data_formatNHWC*
paddingVALID*
strides
*
ksize
**
_class 
loc:@max_pooling1d_2/MaxPool*
T0
М
@training/RMSprop/gradients/max_pooling1d_2/ExpandDims_grad/ShapeShapeconv1d_2/Relu*
out_type0*-
_class#
!loc:@max_pooling1d_2/ExpandDims*
T0*
_output_shapes
:
Ш
Btraining/RMSprop/gradients/max_pooling1d_2/ExpandDims_grad/ReshapeReshapeCtraining/RMSprop/gradients/max_pooling1d_2/MaxPool_grad/MaxPoolGrad@training/RMSprop/gradients/max_pooling1d_2/ExpandDims_grad/Shape*-
_class#
!loc:@max_pooling1d_2/ExpandDims*
Tshape0*,
_output_shapes
:џџџџџџџџџ*
T0
ю
6training/RMSprop/gradients/conv1d_2/Relu_grad/ReluGradReluGradBtraining/RMSprop/gradients/max_pooling1d_2/ExpandDims_grad/Reshapeconv1d_2/Relu* 
_class
loc:@conv1d_2/Relu*
T0*,
_output_shapes
:џџџџџџџџџ
Џ
2training/RMSprop/gradients/conv1d_2/add_grad/ShapeShapeconv1d_2/convolution/Squeeze*
out_type0*
_class
loc:@conv1d_2/add*
T0*
_output_shapes
:
Њ
4training/RMSprop/gradients/conv1d_2/add_grad/Shape_1Const*
dtype0*
_class
loc:@conv1d_2/add*!
valueB"         *
_output_shapes
:
Ѓ
Btraining/RMSprop/gradients/conv1d_2/add_grad/BroadcastGradientArgsBroadcastGradientArgs2training/RMSprop/gradients/conv1d_2/add_grad/Shape4training/RMSprop/gradients/conv1d_2/add_grad/Shape_1*
_class
loc:@conv1d_2/add*
T0*2
_output_shapes 
:џџџџџџџџџ:џџџџџџџџџ

0training/RMSprop/gradients/conv1d_2/add_grad/SumSum6training/RMSprop/gradients/conv1d_2/Relu_grad/ReluGradBtraining/RMSprop/gradients/conv1d_2/add_grad/BroadcastGradientArgs*
_output_shapes
:*
_class
loc:@conv1d_2/add*

Tidx0*
	keep_dims( *
T0

4training/RMSprop/gradients/conv1d_2/add_grad/ReshapeReshape0training/RMSprop/gradients/conv1d_2/add_grad/Sum2training/RMSprop/gradients/conv1d_2/add_grad/Shape*
_class
loc:@conv1d_2/add*
Tshape0*,
_output_shapes
:џџџџџџџџџ*
T0

2training/RMSprop/gradients/conv1d_2/add_grad/Sum_1Sum6training/RMSprop/gradients/conv1d_2/Relu_grad/ReluGradDtraining/RMSprop/gradients/conv1d_2/add_grad/BroadcastGradientArgs:1*
_output_shapes
:*
_class
loc:@conv1d_2/add*

Tidx0*
	keep_dims( *
T0

6training/RMSprop/gradients/conv1d_2/add_grad/Reshape_1Reshape2training/RMSprop/gradients/conv1d_2/add_grad/Sum_14training/RMSprop/gradients/conv1d_2/add_grad/Shape_1*
_class
loc:@conv1d_2/add*
Tshape0*#
_output_shapes
:*
T0
Ю
Btraining/RMSprop/gradients/conv1d_2/convolution/Squeeze_grad/ShapeShapeconv1d_2/convolution/Conv2D*
out_type0*/
_class%
#!loc:@conv1d_2/convolution/Squeeze*
T0*
_output_shapes
:
У
Dtraining/RMSprop/gradients/conv1d_2/convolution/Squeeze_grad/ReshapeReshape4training/RMSprop/gradients/conv1d_2/add_grad/ReshapeBtraining/RMSprop/gradients/conv1d_2/convolution/Squeeze_grad/Shape*/
_class%
#!loc:@conv1d_2/convolution/Squeeze*
Tshape0*0
_output_shapes
:џџџџџџџџџ*
T0
І
6training/RMSprop/gradients/conv1d_2/Reshape_grad/ShapeConst*
dtype0*#
_class
loc:@conv1d_2/Reshape*
valueB:*
_output_shapes
:

8training/RMSprop/gradients/conv1d_2/Reshape_grad/ReshapeReshape6training/RMSprop/gradients/conv1d_2/add_grad/Reshape_16training/RMSprop/gradients/conv1d_2/Reshape_grad/Shape*#
_class
loc:@conv1d_2/Reshape*
Tshape0*
_output_shapes	
:*
T0

Btraining/RMSprop/gradients/conv1d_2/convolution/Conv2D_grad/ShapeNShapeNconv1d_2/convolution/ExpandDims!conv1d_2/convolution/ExpandDims_1*
out_type0*
T0*.
_class$
" loc:@conv1d_2/convolution/Conv2D* 
_output_shapes
::*
N
ж
Otraining/RMSprop/gradients/conv1d_2/convolution/Conv2D_grad/Conv2DBackpropInputConv2DBackpropInputBtraining/RMSprop/gradients/conv1d_2/convolution/Conv2D_grad/ShapeN!conv1d_2/convolution/ExpandDims_1Dtraining/RMSprop/gradients/conv1d_2/convolution/Squeeze_grad/Reshape*0
_output_shapes
:џџџџџџџџџ!*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingVALID*
strides
*
T0*.
_class$
" loc:@conv1d_2/convolution/Conv2D
а
Ptraining/RMSprop/gradients/conv1d_2/convolution/Conv2D_grad/Conv2DBackpropFilterConv2DBackpropFilterconv1d_2/convolution/ExpandDimsDtraining/RMSprop/gradients/conv1d_2/convolution/Conv2D_grad/ShapeN:1Dtraining/RMSprop/gradients/conv1d_2/convolution/Squeeze_grad/Reshape*(
_output_shapes
:*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingVALID*
strides
*
T0*.
_class$
" loc:@conv1d_2/convolution/Conv2D
а
Etraining/RMSprop/gradients/conv1d_2/convolution/ExpandDims_grad/ShapeShapemax_pooling1d_1/Squeeze*
out_type0*2
_class(
&$loc:@conv1d_2/convolution/ExpandDims*
T0*
_output_shapes
:
у
Gtraining/RMSprop/gradients/conv1d_2/convolution/ExpandDims_grad/ReshapeReshapeOtraining/RMSprop/gradients/conv1d_2/convolution/Conv2D_grad/Conv2DBackpropInputEtraining/RMSprop/gradients/conv1d_2/convolution/ExpandDims_grad/Shape*2
_class(
&$loc:@conv1d_2/convolution/ExpandDims*
Tshape0*,
_output_shapes
:џџџџџџџџџ!*
T0
в
Gtraining/RMSprop/gradients/conv1d_2/convolution/ExpandDims_1_grad/ShapeConst*
dtype0*4
_class*
(&loc:@conv1d_2/convolution/ExpandDims_1*!
valueB"         *
_output_shapes
:
т
Itraining/RMSprop/gradients/conv1d_2/convolution/ExpandDims_1_grad/ReshapeReshapePtraining/RMSprop/gradients/conv1d_2/convolution/Conv2D_grad/Conv2DBackpropFilterGtraining/RMSprop/gradients/conv1d_2/convolution/ExpandDims_1_grad/Shape*4
_class*
(&loc:@conv1d_2/convolution/ExpandDims_1*
Tshape0*$
_output_shapes
:*
T0
Р
=training/RMSprop/gradients/max_pooling1d_1/Squeeze_grad/ShapeShapemax_pooling1d_1/MaxPool*
out_type0**
_class 
loc:@max_pooling1d_1/Squeeze*
T0*
_output_shapes
:
Ч
?training/RMSprop/gradients/max_pooling1d_1/Squeeze_grad/ReshapeReshapeGtraining/RMSprop/gradients/conv1d_2/convolution/ExpandDims_grad/Reshape=training/RMSprop/gradients/max_pooling1d_1/Squeeze_grad/Shape**
_class 
loc:@max_pooling1d_1/Squeeze*
Tshape0*0
_output_shapes
:џџџџџџџџџ!*
T0

Ctraining/RMSprop/gradients/max_pooling1d_1/MaxPool_grad/MaxPoolGradMaxPoolGradmax_pooling1d_1/ExpandDimsmax_pooling1d_1/MaxPool?training/RMSprop/gradients/max_pooling1d_1/Squeeze_grad/Reshape*1
_output_shapes
:џџџџџџџџџ*
data_formatNHWC*
paddingVALID*
strides
*
ksize
**
_class 
loc:@max_pooling1d_1/MaxPool*
T0
М
@training/RMSprop/gradients/max_pooling1d_1/ExpandDims_grad/ShapeShapeconv1d_1/Relu*
out_type0*-
_class#
!loc:@max_pooling1d_1/ExpandDims*
T0*
_output_shapes
:
Щ
Btraining/RMSprop/gradients/max_pooling1d_1/ExpandDims_grad/ReshapeReshapeCtraining/RMSprop/gradients/max_pooling1d_1/MaxPool_grad/MaxPoolGrad@training/RMSprop/gradients/max_pooling1d_1/ExpandDims_grad/Shape*-
_class#
!loc:@max_pooling1d_1/ExpandDims*
Tshape0*-
_output_shapes
:џџџџџџџџџ*
T0
я
6training/RMSprop/gradients/conv1d_1/Relu_grad/ReluGradReluGradBtraining/RMSprop/gradients/max_pooling1d_1/ExpandDims_grad/Reshapeconv1d_1/Relu* 
_class
loc:@conv1d_1/Relu*
T0*-
_output_shapes
:џџџџџџџџџ
Џ
2training/RMSprop/gradients/conv1d_1/add_grad/ShapeShapeconv1d_1/convolution/Squeeze*
out_type0*
_class
loc:@conv1d_1/add*
T0*
_output_shapes
:
Њ
4training/RMSprop/gradients/conv1d_1/add_grad/Shape_1Const*
dtype0*
_class
loc:@conv1d_1/add*!
valueB"         *
_output_shapes
:
Ѓ
Btraining/RMSprop/gradients/conv1d_1/add_grad/BroadcastGradientArgsBroadcastGradientArgs2training/RMSprop/gradients/conv1d_1/add_grad/Shape4training/RMSprop/gradients/conv1d_1/add_grad/Shape_1*
_class
loc:@conv1d_1/add*
T0*2
_output_shapes 
:џџџџџџџџџ:џџџџџџџџџ

0training/RMSprop/gradients/conv1d_1/add_grad/SumSum6training/RMSprop/gradients/conv1d_1/Relu_grad/ReluGradBtraining/RMSprop/gradients/conv1d_1/add_grad/BroadcastGradientArgs*
_output_shapes
:*
_class
loc:@conv1d_1/add*

Tidx0*
	keep_dims( *
T0

4training/RMSprop/gradients/conv1d_1/add_grad/ReshapeReshape0training/RMSprop/gradients/conv1d_1/add_grad/Sum2training/RMSprop/gradients/conv1d_1/add_grad/Shape*
_class
loc:@conv1d_1/add*
Tshape0*-
_output_shapes
:џџџџџџџџџ*
T0

2training/RMSprop/gradients/conv1d_1/add_grad/Sum_1Sum6training/RMSprop/gradients/conv1d_1/Relu_grad/ReluGradDtraining/RMSprop/gradients/conv1d_1/add_grad/BroadcastGradientArgs:1*
_output_shapes
:*
_class
loc:@conv1d_1/add*

Tidx0*
	keep_dims( *
T0

6training/RMSprop/gradients/conv1d_1/add_grad/Reshape_1Reshape2training/RMSprop/gradients/conv1d_1/add_grad/Sum_14training/RMSprop/gradients/conv1d_1/add_grad/Shape_1*
_class
loc:@conv1d_1/add*
Tshape0*#
_output_shapes
:*
T0
Ю
Btraining/RMSprop/gradients/conv1d_1/convolution/Squeeze_grad/ShapeShapeconv1d_1/convolution/Conv2D*
out_type0*/
_class%
#!loc:@conv1d_1/convolution/Squeeze*
T0*
_output_shapes
:
Ф
Dtraining/RMSprop/gradients/conv1d_1/convolution/Squeeze_grad/ReshapeReshape4training/RMSprop/gradients/conv1d_1/add_grad/ReshapeBtraining/RMSprop/gradients/conv1d_1/convolution/Squeeze_grad/Shape*/
_class%
#!loc:@conv1d_1/convolution/Squeeze*
Tshape0*1
_output_shapes
:џџџџџџџџџ*
T0
І
6training/RMSprop/gradients/conv1d_1/Reshape_grad/ShapeConst*
dtype0*#
_class
loc:@conv1d_1/Reshape*
valueB:*
_output_shapes
:

8training/RMSprop/gradients/conv1d_1/Reshape_grad/ReshapeReshape6training/RMSprop/gradients/conv1d_1/add_grad/Reshape_16training/RMSprop/gradients/conv1d_1/Reshape_grad/Shape*#
_class
loc:@conv1d_1/Reshape*
Tshape0*
_output_shapes	
:*
T0

Btraining/RMSprop/gradients/conv1d_1/convolution/Conv2D_grad/ShapeNShapeNconv1d_1/convolution/ExpandDims!conv1d_1/convolution/ExpandDims_1*
out_type0*
T0*.
_class$
" loc:@conv1d_1/convolution/Conv2D* 
_output_shapes
::*
N
ж
Otraining/RMSprop/gradients/conv1d_1/convolution/Conv2D_grad/Conv2DBackpropInputConv2DBackpropInputBtraining/RMSprop/gradients/conv1d_1/convolution/Conv2D_grad/ShapeN!conv1d_1/convolution/ExpandDims_1Dtraining/RMSprop/gradients/conv1d_1/convolution/Squeeze_grad/Reshape*0
_output_shapes
:џџџџџџџџџ`*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingVALID*
strides
*
T0*.
_class$
" loc:@conv1d_1/convolution/Conv2D
Я
Ptraining/RMSprop/gradients/conv1d_1/convolution/Conv2D_grad/Conv2DBackpropFilterConv2DBackpropFilterconv1d_1/convolution/ExpandDimsDtraining/RMSprop/gradients/conv1d_1/convolution/Conv2D_grad/ShapeN:1Dtraining/RMSprop/gradients/conv1d_1/convolution/Squeeze_grad/Reshape*'
_output_shapes
:`*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingVALID*
strides
*
T0*.
_class$
" loc:@conv1d_1/convolution/Conv2D
в
Gtraining/RMSprop/gradients/conv1d_1/convolution/ExpandDims_1_grad/ShapeConst*
dtype0*4
_class*
(&loc:@conv1d_1/convolution/ExpandDims_1*!
valueB"   `      *
_output_shapes
:
с
Itraining/RMSprop/gradients/conv1d_1/convolution/ExpandDims_1_grad/ReshapeReshapePtraining/RMSprop/gradients/conv1d_1/convolution/Conv2D_grad/Conv2DBackpropFilterGtraining/RMSprop/gradients/conv1d_1/convolution/ExpandDims_1_grad/Shape*4
_class*
(&loc:@conv1d_1/convolution/ExpandDims_1*
Tshape0*#
_output_shapes
:`*
T0
u
training/RMSprop/ConstConst*
dtype0*"
valueB`*    *#
_output_shapes
:`

training/RMSprop/Variable
VariableV2*
dtype0*
shape:`*
	container *
shared_name *#
_output_shapes
:`
т
 training/RMSprop/Variable/AssignAssigntraining/RMSprop/Variabletraining/RMSprop/Const*
validate_shape(*,
_class"
 loc:@training/RMSprop/Variable*
use_locking(*
T0*#
_output_shapes
:`
Ё
training/RMSprop/Variable/readIdentitytraining/RMSprop/Variable*,
_class"
 loc:@training/RMSprop/Variable*
T0*#
_output_shapes
:`
g
training/RMSprop/Const_1Const*
dtype0*
valueB*    *
_output_shapes	
:

training/RMSprop/Variable_1
VariableV2*
dtype0*
shape:*
	container *
shared_name *
_output_shapes	
:
т
"training/RMSprop/Variable_1/AssignAssigntraining/RMSprop/Variable_1training/RMSprop/Const_1*
validate_shape(*.
_class$
" loc:@training/RMSprop/Variable_1*
use_locking(*
T0*
_output_shapes	
:

 training/RMSprop/Variable_1/readIdentitytraining/RMSprop/Variable_1*.
_class$
" loc:@training/RMSprop/Variable_1*
T0*
_output_shapes	
:
y
training/RMSprop/Const_2Const*
dtype0*#
valueB*    *$
_output_shapes
:

training/RMSprop/Variable_2
VariableV2*
dtype0*
shape:*
	container *
shared_name *$
_output_shapes
:
ы
"training/RMSprop/Variable_2/AssignAssigntraining/RMSprop/Variable_2training/RMSprop/Const_2*
validate_shape(*.
_class$
" loc:@training/RMSprop/Variable_2*
use_locking(*
T0*$
_output_shapes
:
Ј
 training/RMSprop/Variable_2/readIdentitytraining/RMSprop/Variable_2*.
_class$
" loc:@training/RMSprop/Variable_2*
T0*$
_output_shapes
:
g
training/RMSprop/Const_3Const*
dtype0*
valueB*    *
_output_shapes	
:

training/RMSprop/Variable_3
VariableV2*
dtype0*
shape:*
	container *
shared_name *
_output_shapes	
:
т
"training/RMSprop/Variable_3/AssignAssigntraining/RMSprop/Variable_3training/RMSprop/Const_3*
validate_shape(*.
_class$
" loc:@training/RMSprop/Variable_3*
use_locking(*
T0*
_output_shapes	
:

 training/RMSprop/Variable_3/readIdentitytraining/RMSprop/Variable_3*.
_class$
" loc:@training/RMSprop/Variable_3*
T0*
_output_shapes	
:
q
training/RMSprop/Const_4Const*
dtype0*
valueB
*    * 
_output_shapes
:


training/RMSprop/Variable_4
VariableV2*
dtype0*
shape:
*
	container *
shared_name * 
_output_shapes
:

ч
"training/RMSprop/Variable_4/AssignAssigntraining/RMSprop/Variable_4training/RMSprop/Const_4*
validate_shape(*.
_class$
" loc:@training/RMSprop/Variable_4*
use_locking(*
T0* 
_output_shapes
:

Є
 training/RMSprop/Variable_4/readIdentitytraining/RMSprop/Variable_4*.
_class$
" loc:@training/RMSprop/Variable_4*
T0* 
_output_shapes
:

g
training/RMSprop/Const_5Const*
dtype0*
valueB*    *
_output_shapes	
:

training/RMSprop/Variable_5
VariableV2*
dtype0*
shape:*
	container *
shared_name *
_output_shapes	
:
т
"training/RMSprop/Variable_5/AssignAssigntraining/RMSprop/Variable_5training/RMSprop/Const_5*
validate_shape(*.
_class$
" loc:@training/RMSprop/Variable_5*
use_locking(*
T0*
_output_shapes	
:

 training/RMSprop/Variable_5/readIdentitytraining/RMSprop/Variable_5*.
_class$
" loc:@training/RMSprop/Variable_5*
T0*
_output_shapes	
:
o
training/RMSprop/Const_6Const*
dtype0*
valueB	y*    *
_output_shapes
:	y

training/RMSprop/Variable_6
VariableV2*
dtype0*
shape:	y*
	container *
shared_name *
_output_shapes
:	y
ц
"training/RMSprop/Variable_6/AssignAssigntraining/RMSprop/Variable_6training/RMSprop/Const_6*
validate_shape(*.
_class$
" loc:@training/RMSprop/Variable_6*
use_locking(*
T0*
_output_shapes
:	y
Ѓ
 training/RMSprop/Variable_6/readIdentitytraining/RMSprop/Variable_6*.
_class$
" loc:@training/RMSprop/Variable_6*
T0*
_output_shapes
:	y
e
training/RMSprop/Const_7Const*
dtype0*
valueBy*    *
_output_shapes
:y

training/RMSprop/Variable_7
VariableV2*
dtype0*
shape:y*
	container *
shared_name *
_output_shapes
:y
с
"training/RMSprop/Variable_7/AssignAssigntraining/RMSprop/Variable_7training/RMSprop/Const_7*
validate_shape(*.
_class$
" loc:@training/RMSprop/Variable_7*
use_locking(*
T0*
_output_shapes
:y

 training/RMSprop/Variable_7/readIdentitytraining/RMSprop/Variable_7*.
_class$
" loc:@training/RMSprop/Variable_7*
T0*
_output_shapes
:y
b
 training/RMSprop/AssignAdd/valueConst*
dtype0	*
value	B	 R*
_output_shapes
: 
И
training/RMSprop/AssignAdd	AssignAddRMSprop/iterations training/RMSprop/AssignAdd/value*%
_class
loc:@RMSprop/iterations*
use_locking( *
T0	*
_output_shapes
: 
{
training/RMSprop/mulMulRMSprop/rho/readtraining/RMSprop/Variable/read*
T0*#
_output_shapes
:`
[
training/RMSprop/sub/xConst*
dtype0*
valueB
 *  ?*
_output_shapes
: 
f
training/RMSprop/subSubtraining/RMSprop/sub/xRMSprop/rho/read*
T0*
_output_shapes
: 

training/RMSprop/SquareSquareItraining/RMSprop/gradients/conv1d_1/convolution/ExpandDims_1_grad/Reshape*
T0*#
_output_shapes
:`
z
training/RMSprop/mul_1Multraining/RMSprop/subtraining/RMSprop/Square*
T0*#
_output_shapes
:`
w
training/RMSprop/addAddtraining/RMSprop/multraining/RMSprop/mul_1*
T0*#
_output_shapes
:`
з
training/RMSprop/AssignAssigntraining/RMSprop/Variabletraining/RMSprop/add*
validate_shape(*,
_class"
 loc:@training/RMSprop/Variable*
use_locking(*
T0*#
_output_shapes
:`
Ї
training/RMSprop/mul_2MulRMSprop/lr/readItraining/RMSprop/gradients/conv1d_1/convolution/ExpandDims_1_grad/Reshape*
T0*#
_output_shapes
:`
]
training/RMSprop/Const_8Const*
dtype0*
valueB
 *    *
_output_shapes
: 
]
training/RMSprop/Const_9Const*
dtype0*
valueB
 *  *
_output_shapes
: 

&training/RMSprop/clip_by_value/MinimumMinimumtraining/RMSprop/addtraining/RMSprop/Const_9*
T0*#
_output_shapes
:`

training/RMSprop/clip_by_valueMaximum&training/RMSprop/clip_by_value/Minimumtraining/RMSprop/Const_8*
T0*#
_output_shapes
:`
k
training/RMSprop/SqrtSqrttraining/RMSprop/clip_by_value*
T0*#
_output_shapes
:`
]
training/RMSprop/add_1/yConst*
dtype0*
valueB
 *wЬ+2*
_output_shapes
: 
|
training/RMSprop/add_1Addtraining/RMSprop/Sqrttraining/RMSprop/add_1/y*
T0*#
_output_shapes
:`
}
training/RMSprop/divRealDivtraining/RMSprop/mul_2training/RMSprop/add_1*
T0*#
_output_shapes
:`
w
training/RMSprop/sub_1Subconv1d_1/kernel/readtraining/RMSprop/div*
T0*#
_output_shapes
:`
Ч
training/RMSprop/Assign_1Assignconv1d_1/kerneltraining/RMSprop/sub_1*
validate_shape(*"
_class
loc:@conv1d_1/kernel*
use_locking(*
T0*#
_output_shapes
:`
w
training/RMSprop/mul_3MulRMSprop/rho/read training/RMSprop/Variable_1/read*
T0*
_output_shapes	
:
]
training/RMSprop/sub_2/xConst*
dtype0*
valueB
 *  ?*
_output_shapes
: 
j
training/RMSprop/sub_2Subtraining/RMSprop/sub_2/xRMSprop/rho/read*
T0*
_output_shapes
: 

training/RMSprop/Square_1Square8training/RMSprop/gradients/conv1d_1/Reshape_grad/Reshape*
T0*
_output_shapes	
:
v
training/RMSprop/mul_4Multraining/RMSprop/sub_2training/RMSprop/Square_1*
T0*
_output_shapes	
:
s
training/RMSprop/add_2Addtraining/RMSprop/mul_3training/RMSprop/mul_4*
T0*
_output_shapes	
:
з
training/RMSprop/Assign_2Assigntraining/RMSprop/Variable_1training/RMSprop/add_2*
validate_shape(*.
_class$
" loc:@training/RMSprop/Variable_1*
use_locking(*
T0*
_output_shapes	
:

training/RMSprop/mul_5MulRMSprop/lr/read8training/RMSprop/gradients/conv1d_1/Reshape_grad/Reshape*
T0*
_output_shapes	
:
^
training/RMSprop/Const_10Const*
dtype0*
valueB
 *    *
_output_shapes
: 
^
training/RMSprop/Const_11Const*
dtype0*
valueB
 *  *
_output_shapes
: 

(training/RMSprop/clip_by_value_1/MinimumMinimumtraining/RMSprop/add_2training/RMSprop/Const_11*
T0*
_output_shapes	
:

 training/RMSprop/clip_by_value_1Maximum(training/RMSprop/clip_by_value_1/Minimumtraining/RMSprop/Const_10*
T0*
_output_shapes	
:
g
training/RMSprop/Sqrt_1Sqrt training/RMSprop/clip_by_value_1*
T0*
_output_shapes	
:
]
training/RMSprop/add_3/yConst*
dtype0*
valueB
 *wЬ+2*
_output_shapes
: 
v
training/RMSprop/add_3Addtraining/RMSprop/Sqrt_1training/RMSprop/add_3/y*
T0*
_output_shapes	
:
w
training/RMSprop/div_1RealDivtraining/RMSprop/mul_5training/RMSprop/add_3*
T0*
_output_shapes	
:
o
training/RMSprop/sub_3Subconv1d_1/bias/readtraining/RMSprop/div_1*
T0*
_output_shapes	
:
Л
training/RMSprop/Assign_3Assignconv1d_1/biastraining/RMSprop/sub_3*
validate_shape(* 
_class
loc:@conv1d_1/bias*
use_locking(*
T0*
_output_shapes	
:

training/RMSprop/mul_6MulRMSprop/rho/read training/RMSprop/Variable_2/read*
T0*$
_output_shapes
:
]
training/RMSprop/sub_4/xConst*
dtype0*
valueB
 *  ?*
_output_shapes
: 
j
training/RMSprop/sub_4Subtraining/RMSprop/sub_4/xRMSprop/rho/read*
T0*
_output_shapes
: 

training/RMSprop/Square_2SquareItraining/RMSprop/gradients/conv1d_2/convolution/ExpandDims_1_grad/Reshape*
T0*$
_output_shapes
:

training/RMSprop/mul_7Multraining/RMSprop/sub_4training/RMSprop/Square_2*
T0*$
_output_shapes
:
|
training/RMSprop/add_4Addtraining/RMSprop/mul_6training/RMSprop/mul_7*
T0*$
_output_shapes
:
р
training/RMSprop/Assign_4Assigntraining/RMSprop/Variable_2training/RMSprop/add_4*
validate_shape(*.
_class$
" loc:@training/RMSprop/Variable_2*
use_locking(*
T0*$
_output_shapes
:
Ј
training/RMSprop/mul_8MulRMSprop/lr/readItraining/RMSprop/gradients/conv1d_2/convolution/ExpandDims_1_grad/Reshape*
T0*$
_output_shapes
:
^
training/RMSprop/Const_12Const*
dtype0*
valueB
 *    *
_output_shapes
: 
^
training/RMSprop/Const_13Const*
dtype0*
valueB
 *  *
_output_shapes
: 

(training/RMSprop/clip_by_value_2/MinimumMinimumtraining/RMSprop/add_4training/RMSprop/Const_13*
T0*$
_output_shapes
:

 training/RMSprop/clip_by_value_2Maximum(training/RMSprop/clip_by_value_2/Minimumtraining/RMSprop/Const_12*
T0*$
_output_shapes
:
p
training/RMSprop/Sqrt_2Sqrt training/RMSprop/clip_by_value_2*
T0*$
_output_shapes
:
]
training/RMSprop/add_5/yConst*
dtype0*
valueB
 *wЬ+2*
_output_shapes
: 

training/RMSprop/add_5Addtraining/RMSprop/Sqrt_2training/RMSprop/add_5/y*
T0*$
_output_shapes
:

training/RMSprop/div_2RealDivtraining/RMSprop/mul_8training/RMSprop/add_5*
T0*$
_output_shapes
:
z
training/RMSprop/sub_5Subconv1d_2/kernel/readtraining/RMSprop/div_2*
T0*$
_output_shapes
:
Ш
training/RMSprop/Assign_5Assignconv1d_2/kerneltraining/RMSprop/sub_5*
validate_shape(*"
_class
loc:@conv1d_2/kernel*
use_locking(*
T0*$
_output_shapes
:
w
training/RMSprop/mul_9MulRMSprop/rho/read training/RMSprop/Variable_3/read*
T0*
_output_shapes	
:
]
training/RMSprop/sub_6/xConst*
dtype0*
valueB
 *  ?*
_output_shapes
: 
j
training/RMSprop/sub_6Subtraining/RMSprop/sub_6/xRMSprop/rho/read*
T0*
_output_shapes
: 

training/RMSprop/Square_3Square8training/RMSprop/gradients/conv1d_2/Reshape_grad/Reshape*
T0*
_output_shapes	
:
w
training/RMSprop/mul_10Multraining/RMSprop/sub_6training/RMSprop/Square_3*
T0*
_output_shapes	
:
t
training/RMSprop/add_6Addtraining/RMSprop/mul_9training/RMSprop/mul_10*
T0*
_output_shapes	
:
з
training/RMSprop/Assign_6Assigntraining/RMSprop/Variable_3training/RMSprop/add_6*
validate_shape(*.
_class$
" loc:@training/RMSprop/Variable_3*
use_locking(*
T0*
_output_shapes	
:

training/RMSprop/mul_11MulRMSprop/lr/read8training/RMSprop/gradients/conv1d_2/Reshape_grad/Reshape*
T0*
_output_shapes	
:
^
training/RMSprop/Const_14Const*
dtype0*
valueB
 *    *
_output_shapes
: 
^
training/RMSprop/Const_15Const*
dtype0*
valueB
 *  *
_output_shapes
: 

(training/RMSprop/clip_by_value_3/MinimumMinimumtraining/RMSprop/add_6training/RMSprop/Const_15*
T0*
_output_shapes	
:

 training/RMSprop/clip_by_value_3Maximum(training/RMSprop/clip_by_value_3/Minimumtraining/RMSprop/Const_14*
T0*
_output_shapes	
:
g
training/RMSprop/Sqrt_3Sqrt training/RMSprop/clip_by_value_3*
T0*
_output_shapes	
:
]
training/RMSprop/add_7/yConst*
dtype0*
valueB
 *wЬ+2*
_output_shapes
: 
v
training/RMSprop/add_7Addtraining/RMSprop/Sqrt_3training/RMSprop/add_7/y*
T0*
_output_shapes	
:
x
training/RMSprop/div_3RealDivtraining/RMSprop/mul_11training/RMSprop/add_7*
T0*
_output_shapes	
:
o
training/RMSprop/sub_7Subconv1d_2/bias/readtraining/RMSprop/div_3*
T0*
_output_shapes	
:
Л
training/RMSprop/Assign_7Assignconv1d_2/biastraining/RMSprop/sub_7*
validate_shape(* 
_class
loc:@conv1d_2/bias*
use_locking(*
T0*
_output_shapes	
:
}
training/RMSprop/mul_12MulRMSprop/rho/read training/RMSprop/Variable_4/read*
T0* 
_output_shapes
:

]
training/RMSprop/sub_8/xConst*
dtype0*
valueB
 *  ?*
_output_shapes
: 
j
training/RMSprop/sub_8Subtraining/RMSprop/sub_8/xRMSprop/rho/read*
T0*
_output_shapes
: 

training/RMSprop/Square_4Square7training/RMSprop/gradients/dense_1/MatMul_grad/MatMul_1*
T0* 
_output_shapes
:

|
training/RMSprop/mul_13Multraining/RMSprop/sub_8training/RMSprop/Square_4*
T0* 
_output_shapes
:

z
training/RMSprop/add_8Addtraining/RMSprop/mul_12training/RMSprop/mul_13*
T0* 
_output_shapes
:

м
training/RMSprop/Assign_8Assigntraining/RMSprop/Variable_4training/RMSprop/add_8*
validate_shape(*.
_class$
" loc:@training/RMSprop/Variable_4*
use_locking(*
T0* 
_output_shapes
:


training/RMSprop/mul_14MulRMSprop/lr/read7training/RMSprop/gradients/dense_1/MatMul_grad/MatMul_1*
T0* 
_output_shapes
:

^
training/RMSprop/Const_16Const*
dtype0*
valueB
 *    *
_output_shapes
: 
^
training/RMSprop/Const_17Const*
dtype0*
valueB
 *  *
_output_shapes
: 

(training/RMSprop/clip_by_value_4/MinimumMinimumtraining/RMSprop/add_8training/RMSprop/Const_17*
T0* 
_output_shapes
:


 training/RMSprop/clip_by_value_4Maximum(training/RMSprop/clip_by_value_4/Minimumtraining/RMSprop/Const_16*
T0* 
_output_shapes
:

l
training/RMSprop/Sqrt_4Sqrt training/RMSprop/clip_by_value_4*
T0* 
_output_shapes
:

]
training/RMSprop/add_9/yConst*
dtype0*
valueB
 *wЬ+2*
_output_shapes
: 
{
training/RMSprop/add_9Addtraining/RMSprop/Sqrt_4training/RMSprop/add_9/y*
T0* 
_output_shapes
:

}
training/RMSprop/div_4RealDivtraining/RMSprop/mul_14training/RMSprop/add_9*
T0* 
_output_shapes
:

u
training/RMSprop/sub_9Subdense_1/kernel/readtraining/RMSprop/div_4*
T0* 
_output_shapes
:

Т
training/RMSprop/Assign_9Assigndense_1/kerneltraining/RMSprop/sub_9*
validate_shape(*!
_class
loc:@dense_1/kernel*
use_locking(*
T0* 
_output_shapes
:

x
training/RMSprop/mul_15MulRMSprop/rho/read training/RMSprop/Variable_5/read*
T0*
_output_shapes	
:
^
training/RMSprop/sub_10/xConst*
dtype0*
valueB
 *  ?*
_output_shapes
: 
l
training/RMSprop/sub_10Subtraining/RMSprop/sub_10/xRMSprop/rho/read*
T0*
_output_shapes
: 

training/RMSprop/Square_5Square;training/RMSprop/gradients/dense_1/BiasAdd_grad/BiasAddGrad*
T0*
_output_shapes	
:
x
training/RMSprop/mul_16Multraining/RMSprop/sub_10training/RMSprop/Square_5*
T0*
_output_shapes	
:
v
training/RMSprop/add_10Addtraining/RMSprop/mul_15training/RMSprop/mul_16*
T0*
_output_shapes	
:
й
training/RMSprop/Assign_10Assigntraining/RMSprop/Variable_5training/RMSprop/add_10*
validate_shape(*.
_class$
" loc:@training/RMSprop/Variable_5*
use_locking(*
T0*
_output_shapes	
:

training/RMSprop/mul_17MulRMSprop/lr/read;training/RMSprop/gradients/dense_1/BiasAdd_grad/BiasAddGrad*
T0*
_output_shapes	
:
^
training/RMSprop/Const_18Const*
dtype0*
valueB
 *    *
_output_shapes
: 
^
training/RMSprop/Const_19Const*
dtype0*
valueB
 *  *
_output_shapes
: 

(training/RMSprop/clip_by_value_5/MinimumMinimumtraining/RMSprop/add_10training/RMSprop/Const_19*
T0*
_output_shapes	
:

 training/RMSprop/clip_by_value_5Maximum(training/RMSprop/clip_by_value_5/Minimumtraining/RMSprop/Const_18*
T0*
_output_shapes	
:
g
training/RMSprop/Sqrt_5Sqrt training/RMSprop/clip_by_value_5*
T0*
_output_shapes	
:
^
training/RMSprop/add_11/yConst*
dtype0*
valueB
 *wЬ+2*
_output_shapes
: 
x
training/RMSprop/add_11Addtraining/RMSprop/Sqrt_5training/RMSprop/add_11/y*
T0*
_output_shapes	
:
y
training/RMSprop/div_5RealDivtraining/RMSprop/mul_17training/RMSprop/add_11*
T0*
_output_shapes	
:
o
training/RMSprop/sub_11Subdense_1/bias/readtraining/RMSprop/div_5*
T0*
_output_shapes	
:
Л
training/RMSprop/Assign_11Assigndense_1/biastraining/RMSprop/sub_11*
validate_shape(*
_class
loc:@dense_1/bias*
use_locking(*
T0*
_output_shapes	
:
|
training/RMSprop/mul_18MulRMSprop/rho/read training/RMSprop/Variable_6/read*
T0*
_output_shapes
:	y
^
training/RMSprop/sub_12/xConst*
dtype0*
valueB
 *  ?*
_output_shapes
: 
l
training/RMSprop/sub_12Subtraining/RMSprop/sub_12/xRMSprop/rho/read*
T0*
_output_shapes
: 

training/RMSprop/Square_6SquareDtraining/RMSprop/gradients/char_cnn_predictions/MatMul_grad/MatMul_1*
T0*
_output_shapes
:	y
|
training/RMSprop/mul_19Multraining/RMSprop/sub_12training/RMSprop/Square_6*
T0*
_output_shapes
:	y
z
training/RMSprop/add_12Addtraining/RMSprop/mul_18training/RMSprop/mul_19*
T0*
_output_shapes
:	y
н
training/RMSprop/Assign_12Assigntraining/RMSprop/Variable_6training/RMSprop/add_12*
validate_shape(*.
_class$
" loc:@training/RMSprop/Variable_6*
use_locking(*
T0*
_output_shapes
:	y

training/RMSprop/mul_20MulRMSprop/lr/readDtraining/RMSprop/gradients/char_cnn_predictions/MatMul_grad/MatMul_1*
T0*
_output_shapes
:	y
^
training/RMSprop/Const_20Const*
dtype0*
valueB
 *    *
_output_shapes
: 
^
training/RMSprop/Const_21Const*
dtype0*
valueB
 *  *
_output_shapes
: 

(training/RMSprop/clip_by_value_6/MinimumMinimumtraining/RMSprop/add_12training/RMSprop/Const_21*
T0*
_output_shapes
:	y

 training/RMSprop/clip_by_value_6Maximum(training/RMSprop/clip_by_value_6/Minimumtraining/RMSprop/Const_20*
T0*
_output_shapes
:	y
k
training/RMSprop/Sqrt_6Sqrt training/RMSprop/clip_by_value_6*
T0*
_output_shapes
:	y
^
training/RMSprop/add_13/yConst*
dtype0*
valueB
 *wЬ+2*
_output_shapes
: 
|
training/RMSprop/add_13Addtraining/RMSprop/Sqrt_6training/RMSprop/add_13/y*
T0*
_output_shapes
:	y
}
training/RMSprop/div_6RealDivtraining/RMSprop/mul_20training/RMSprop/add_13*
T0*
_output_shapes
:	y

training/RMSprop/sub_13Sub char_cnn_predictions/kernel/readtraining/RMSprop/div_6*
T0*
_output_shapes
:	y
н
training/RMSprop/Assign_13Assignchar_cnn_predictions/kerneltraining/RMSprop/sub_13*
validate_shape(*.
_class$
" loc:@char_cnn_predictions/kernel*
use_locking(*
T0*
_output_shapes
:	y
w
training/RMSprop/mul_21MulRMSprop/rho/read training/RMSprop/Variable_7/read*
T0*
_output_shapes
:y
^
training/RMSprop/sub_14/xConst*
dtype0*
valueB
 *  ?*
_output_shapes
: 
l
training/RMSprop/sub_14Subtraining/RMSprop/sub_14/xRMSprop/rho/read*
T0*
_output_shapes
: 

training/RMSprop/Square_7SquareHtraining/RMSprop/gradients/char_cnn_predictions/BiasAdd_grad/BiasAddGrad*
T0*
_output_shapes
:y
w
training/RMSprop/mul_22Multraining/RMSprop/sub_14training/RMSprop/Square_7*
T0*
_output_shapes
:y
u
training/RMSprop/add_14Addtraining/RMSprop/mul_21training/RMSprop/mul_22*
T0*
_output_shapes
:y
и
training/RMSprop/Assign_14Assigntraining/RMSprop/Variable_7training/RMSprop/add_14*
validate_shape(*.
_class$
" loc:@training/RMSprop/Variable_7*
use_locking(*
T0*
_output_shapes
:y

training/RMSprop/mul_23MulRMSprop/lr/readHtraining/RMSprop/gradients/char_cnn_predictions/BiasAdd_grad/BiasAddGrad*
T0*
_output_shapes
:y
^
training/RMSprop/Const_22Const*
dtype0*
valueB
 *    *
_output_shapes
: 
^
training/RMSprop/Const_23Const*
dtype0*
valueB
 *  *
_output_shapes
: 

(training/RMSprop/clip_by_value_7/MinimumMinimumtraining/RMSprop/add_14training/RMSprop/Const_23*
T0*
_output_shapes
:y

 training/RMSprop/clip_by_value_7Maximum(training/RMSprop/clip_by_value_7/Minimumtraining/RMSprop/Const_22*
T0*
_output_shapes
:y
f
training/RMSprop/Sqrt_7Sqrt training/RMSprop/clip_by_value_7*
T0*
_output_shapes
:y
^
training/RMSprop/add_15/yConst*
dtype0*
valueB
 *wЬ+2*
_output_shapes
: 
w
training/RMSprop/add_15Addtraining/RMSprop/Sqrt_7training/RMSprop/add_15/y*
T0*
_output_shapes
:y
x
training/RMSprop/div_7RealDivtraining/RMSprop/mul_23training/RMSprop/add_15*
T0*
_output_shapes
:y
{
training/RMSprop/sub_15Subchar_cnn_predictions/bias/readtraining/RMSprop/div_7*
T0*
_output_shapes
:y
д
training/RMSprop/Assign_15Assignchar_cnn_predictions/biastraining/RMSprop/sub_15*
validate_shape(*,
_class"
 loc:@char_cnn_predictions/bias*
use_locking(*
T0*
_output_shapes
:y

training/group_depsNoOp	^loss/mul^metrics/acc/Mean^training/RMSprop/AssignAdd^training/RMSprop/Assign^training/RMSprop/Assign_1^training/RMSprop/Assign_2^training/RMSprop/Assign_3^training/RMSprop/Assign_4^training/RMSprop/Assign_5^training/RMSprop/Assign_6^training/RMSprop/Assign_7^training/RMSprop/Assign_8^training/RMSprop/Assign_9^training/RMSprop/Assign_10^training/RMSprop/Assign_11^training/RMSprop/Assign_12^training/RMSprop/Assign_13^training/RMSprop/Assign_14^training/RMSprop/Assign_15

IsVariableInitialized_8IsVariableInitialized
RMSprop/lr*
dtype0*
_class
loc:@RMSprop/lr*
_output_shapes
: 

IsVariableInitialized_9IsVariableInitializedRMSprop/rho*
dtype0*
_class
loc:@RMSprop/rho*
_output_shapes
: 

IsVariableInitialized_10IsVariableInitializedRMSprop/decay*
dtype0* 
_class
loc:@RMSprop/decay*
_output_shapes
: 

IsVariableInitialized_11IsVariableInitializedRMSprop/iterations*
dtype0	*%
_class
loc:@RMSprop/iterations*
_output_shapes
: 

IsVariableInitialized_12IsVariableInitializedtraining/RMSprop/Variable*
dtype0*,
_class"
 loc:@training/RMSprop/Variable*
_output_shapes
: 
Ѓ
IsVariableInitialized_13IsVariableInitializedtraining/RMSprop/Variable_1*
dtype0*.
_class$
" loc:@training/RMSprop/Variable_1*
_output_shapes
: 
Ѓ
IsVariableInitialized_14IsVariableInitializedtraining/RMSprop/Variable_2*
dtype0*.
_class$
" loc:@training/RMSprop/Variable_2*
_output_shapes
: 
Ѓ
IsVariableInitialized_15IsVariableInitializedtraining/RMSprop/Variable_3*
dtype0*.
_class$
" loc:@training/RMSprop/Variable_3*
_output_shapes
: 
Ѓ
IsVariableInitialized_16IsVariableInitializedtraining/RMSprop/Variable_4*
dtype0*.
_class$
" loc:@training/RMSprop/Variable_4*
_output_shapes
: 
Ѓ
IsVariableInitialized_17IsVariableInitializedtraining/RMSprop/Variable_5*
dtype0*.
_class$
" loc:@training/RMSprop/Variable_5*
_output_shapes
: 
Ѓ
IsVariableInitialized_18IsVariableInitializedtraining/RMSprop/Variable_6*
dtype0*.
_class$
" loc:@training/RMSprop/Variable_6*
_output_shapes
: 
Ѓ
IsVariableInitialized_19IsVariableInitializedtraining/RMSprop/Variable_7*
dtype0*.
_class$
" loc:@training/RMSprop/Variable_7*
_output_shapes
: 

init_1NoOp^RMSprop/lr/Assign^RMSprop/rho/Assign^RMSprop/decay/Assign^RMSprop/iterations/Assign!^training/RMSprop/Variable/Assign#^training/RMSprop/Variable_1/Assign#^training/RMSprop/Variable_2/Assign#^training/RMSprop/Variable_3/Assign#^training/RMSprop/Variable_4/Assign#^training/RMSprop/Variable_5/Assign#^training/RMSprop/Variable_6/Assign#^training/RMSprop/Variable_7/Assign
}
char_cnn_input_1Placeholder*
dtype0*!
shape:џџџџџџџџџ`*,
_output_shapes
:џџџџџџџџџ`
t
conv1d_1_1/random_uniform/shapeConst*
dtype0*!
valueB"   `      *
_output_shapes
:
b
conv1d_1_1/random_uniform/minConst*
dtype0*
valueB
 *wжН*
_output_shapes
: 
b
conv1d_1_1/random_uniform/maxConst*
dtype0*
valueB
 *wж=*
_output_shapes
: 
Г
'conv1d_1_1/random_uniform/RandomUniformRandomUniformconv1d_1_1/random_uniform/shape*
dtype0*
seed2ЗМ*
seedБџх)*
T0*#
_output_shapes
:`

conv1d_1_1/random_uniform/subSubconv1d_1_1/random_uniform/maxconv1d_1_1/random_uniform/min*
T0*
_output_shapes
: 

conv1d_1_1/random_uniform/mulMul'conv1d_1_1/random_uniform/RandomUniformconv1d_1_1/random_uniform/sub*
T0*#
_output_shapes
:`

conv1d_1_1/random_uniformAddconv1d_1_1/random_uniform/mulconv1d_1_1/random_uniform/min*
T0*#
_output_shapes
:`

conv1d_1_1/kernel
VariableV2*
dtype0*
shape:`*
	container *
shared_name *#
_output_shapes
:`
Э
conv1d_1_1/kernel/AssignAssignconv1d_1_1/kernelconv1d_1_1/random_uniform*
validate_shape(*$
_class
loc:@conv1d_1_1/kernel*
use_locking(*
T0*#
_output_shapes
:`

conv1d_1_1/kernel/readIdentityconv1d_1_1/kernel*$
_class
loc:@conv1d_1_1/kernel*
T0*#
_output_shapes
:`
_
conv1d_1_1/ConstConst*
dtype0*
valueB*    *
_output_shapes	
:
}
conv1d_1_1/bias
VariableV2*
dtype0*
shape:*
	container *
shared_name *
_output_shapes	
:
Ж
conv1d_1_1/bias/AssignAssignconv1d_1_1/biasconv1d_1_1/Const*
validate_shape(*"
_class
loc:@conv1d_1_1/bias*
use_locking(*
T0*
_output_shapes	
:
{
conv1d_1_1/bias/readIdentityconv1d_1_1/bias*"
_class
loc:@conv1d_1_1/bias*
T0*
_output_shapes	
:
n
$conv1d_1_1/convolution/dilation_rateConst*
dtype0*
valueB:*
_output_shapes
:
g
%conv1d_1_1/convolution/ExpandDims/dimConst*
dtype0*
value	B :*
_output_shapes
: 
Џ
!conv1d_1_1/convolution/ExpandDims
ExpandDimschar_cnn_input_1%conv1d_1_1/convolution/ExpandDims/dim*

Tdim0*
T0*0
_output_shapes
:џџџџџџџџџ`
i
'conv1d_1_1/convolution/ExpandDims_1/dimConst*
dtype0*
value	B : *
_output_shapes
: 
А
#conv1d_1_1/convolution/ExpandDims_1
ExpandDimsconv1d_1_1/kernel/read'conv1d_1_1/convolution/ExpandDims_1/dim*

Tdim0*
T0*'
_output_shapes
:`

conv1d_1_1/convolution/Conv2DConv2D!conv1d_1_1/convolution/ExpandDims#conv1d_1_1/convolution/ExpandDims_1*1
_output_shapes
:џџџџџџџџџ*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingVALID*
strides
*
T0

conv1d_1_1/convolution/SqueezeSqueezeconv1d_1_1/convolution/Conv2D*
squeeze_dims
*
T0*-
_output_shapes
:џџџџџџџџџ
m
conv1d_1_1/Reshape/shapeConst*
dtype0*!
valueB"         *
_output_shapes
:

conv1d_1_1/ReshapeReshapeconv1d_1_1/bias/readconv1d_1_1/Reshape/shape*#
_output_shapes
:*
Tshape0*
T0

conv1d_1_1/addAddconv1d_1_1/convolution/Squeezeconv1d_1_1/Reshape*
T0*-
_output_shapes
:џџџџџџџџџ
_
conv1d_1_1/ReluReluconv1d_1_1/add*
T0*-
_output_shapes
:џџџџџџџџџ
b
 max_pooling1d_1_1/ExpandDims/dimConst*
dtype0*
value	B :*
_output_shapes
: 
Ѕ
max_pooling1d_1_1/ExpandDims
ExpandDimsconv1d_1_1/Relu max_pooling1d_1_1/ExpandDims/dim*

Tdim0*
T0*1
_output_shapes
:џџџџџџџџџ
а
max_pooling1d_1_1/MaxPoolMaxPoolmax_pooling1d_1_1/ExpandDims*0
_output_shapes
:џџџџџџџџџ!*
data_formatNHWC*
paddingVALID*
strides
*
ksize
*
T0

max_pooling1d_1_1/SqueezeSqueezemax_pooling1d_1_1/MaxPool*
squeeze_dims
*
T0*,
_output_shapes
:џџџџџџџџџ!
t
conv1d_2_1/random_uniform/shapeConst*
dtype0*!
valueB"         *
_output_shapes
:
b
conv1d_2_1/random_uniform/minConst*
dtype0*
valueB
 *ьQН*
_output_shapes
: 
b
conv1d_2_1/random_uniform/maxConst*
dtype0*
valueB
 *ьQ=*
_output_shapes
: 
Д
'conv1d_2_1/random_uniform/RandomUniformRandomUniformconv1d_2_1/random_uniform/shape*
dtype0*
seed2вЩ*
seedБџх)*
T0*$
_output_shapes
:

conv1d_2_1/random_uniform/subSubconv1d_2_1/random_uniform/maxconv1d_2_1/random_uniform/min*
T0*
_output_shapes
: 

conv1d_2_1/random_uniform/mulMul'conv1d_2_1/random_uniform/RandomUniformconv1d_2_1/random_uniform/sub*
T0*$
_output_shapes
:

conv1d_2_1/random_uniformAddconv1d_2_1/random_uniform/mulconv1d_2_1/random_uniform/min*
T0*$
_output_shapes
:

conv1d_2_1/kernel
VariableV2*
dtype0*
shape:*
	container *
shared_name *$
_output_shapes
:
Ю
conv1d_2_1/kernel/AssignAssignconv1d_2_1/kernelconv1d_2_1/random_uniform*
validate_shape(*$
_class
loc:@conv1d_2_1/kernel*
use_locking(*
T0*$
_output_shapes
:

conv1d_2_1/kernel/readIdentityconv1d_2_1/kernel*$
_class
loc:@conv1d_2_1/kernel*
T0*$
_output_shapes
:
_
conv1d_2_1/ConstConst*
dtype0*
valueB*    *
_output_shapes	
:
}
conv1d_2_1/bias
VariableV2*
dtype0*
shape:*
	container *
shared_name *
_output_shapes	
:
Ж
conv1d_2_1/bias/AssignAssignconv1d_2_1/biasconv1d_2_1/Const*
validate_shape(*"
_class
loc:@conv1d_2_1/bias*
use_locking(*
T0*
_output_shapes	
:
{
conv1d_2_1/bias/readIdentityconv1d_2_1/bias*"
_class
loc:@conv1d_2_1/bias*
T0*
_output_shapes	
:
n
$conv1d_2_1/convolution/dilation_rateConst*
dtype0*
valueB:*
_output_shapes
:
g
%conv1d_2_1/convolution/ExpandDims/dimConst*
dtype0*
value	B :*
_output_shapes
: 
И
!conv1d_2_1/convolution/ExpandDims
ExpandDimsmax_pooling1d_1_1/Squeeze%conv1d_2_1/convolution/ExpandDims/dim*

Tdim0*
T0*0
_output_shapes
:џџџџџџџџџ!
i
'conv1d_2_1/convolution/ExpandDims_1/dimConst*
dtype0*
value	B : *
_output_shapes
: 
Б
#conv1d_2_1/convolution/ExpandDims_1
ExpandDimsconv1d_2_1/kernel/read'conv1d_2_1/convolution/ExpandDims_1/dim*

Tdim0*
T0*(
_output_shapes
:

conv1d_2_1/convolution/Conv2DConv2D!conv1d_2_1/convolution/ExpandDims#conv1d_2_1/convolution/ExpandDims_1*0
_output_shapes
:џџџџџџџџџ*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingVALID*
strides
*
T0

conv1d_2_1/convolution/SqueezeSqueezeconv1d_2_1/convolution/Conv2D*
squeeze_dims
*
T0*,
_output_shapes
:џџџџџџџџџ
m
conv1d_2_1/Reshape/shapeConst*
dtype0*!
valueB"         *
_output_shapes
:

conv1d_2_1/ReshapeReshapeconv1d_2_1/bias/readconv1d_2_1/Reshape/shape*#
_output_shapes
:*
Tshape0*
T0

conv1d_2_1/addAddconv1d_2_1/convolution/Squeezeconv1d_2_1/Reshape*
T0*,
_output_shapes
:џџџџџџџџџ
^
conv1d_2_1/ReluReluconv1d_2_1/add*
T0*,
_output_shapes
:џџџџџџџџџ
b
 max_pooling1d_2_1/ExpandDims/dimConst*
dtype0*
value	B :*
_output_shapes
: 
Є
max_pooling1d_2_1/ExpandDims
ExpandDimsconv1d_2_1/Relu max_pooling1d_2_1/ExpandDims/dim*

Tdim0*
T0*0
_output_shapes
:џџџџџџџџџ
а
max_pooling1d_2_1/MaxPoolMaxPoolmax_pooling1d_2_1/ExpandDims*0
_output_shapes
:џџџџџџџџџ*
data_formatNHWC*
paddingVALID*
strides
*
ksize
*
T0

max_pooling1d_2_1/SqueezeSqueezemax_pooling1d_2_1/MaxPool*
squeeze_dims
*
T0*,
_output_shapes
:џџџџџџџџџ
j
flatten_1_1/ShapeShapemax_pooling1d_2_1/Squeeze*
out_type0*
T0*
_output_shapes
:
i
flatten_1_1/strided_slice/stackConst*
dtype0*
valueB:*
_output_shapes
:
k
!flatten_1_1/strided_slice/stack_1Const*
dtype0*
valueB: *
_output_shapes
:
k
!flatten_1_1/strided_slice/stack_2Const*
dtype0*
valueB:*
_output_shapes
:
Й
flatten_1_1/strided_sliceStridedSliceflatten_1_1/Shapeflatten_1_1/strided_slice/stack!flatten_1_1/strided_slice/stack_1!flatten_1_1/strided_slice/stack_2*
new_axis_mask *
Index0*
_output_shapes
:*

begin_mask *
ellipsis_mask *
end_mask*
T0*
shrink_axis_mask 
[
flatten_1_1/ConstConst*
dtype0*
valueB: *
_output_shapes
:

flatten_1_1/ProdProdflatten_1_1/strided_sliceflatten_1_1/Const*
_output_shapes
: *

Tidx0*
	keep_dims( *
T0
^
flatten_1_1/stack/0Const*
dtype0*
valueB :
џџџџџџџџџ*
_output_shapes
: 
z
flatten_1_1/stackPackflatten_1_1/stack/0flatten_1_1/Prod*
N*

axis *
T0*
_output_shapes
:

flatten_1_1/ReshapeReshapemax_pooling1d_2_1/Squeezeflatten_1_1/stack*0
_output_shapes
:џџџџџџџџџџџџџџџџџџ*
Tshape0*
T0
o
dense_1_1/random_uniform/shapeConst*
dtype0*
valueB"      *
_output_shapes
:
a
dense_1_1/random_uniform/minConst*
dtype0*
valueB
 *.љdН*
_output_shapes
: 
a
dense_1_1/random_uniform/maxConst*
dtype0*
valueB
 *.љd=*
_output_shapes
: 
­
&dense_1_1/random_uniform/RandomUniformRandomUniformdense_1_1/random_uniform/shape*
dtype0*
seed2Дгz*
seedБџх)*
T0* 
_output_shapes
:


dense_1_1/random_uniform/subSubdense_1_1/random_uniform/maxdense_1_1/random_uniform/min*
T0*
_output_shapes
: 

dense_1_1/random_uniform/mulMul&dense_1_1/random_uniform/RandomUniformdense_1_1/random_uniform/sub*
T0* 
_output_shapes
:


dense_1_1/random_uniformAdddense_1_1/random_uniform/muldense_1_1/random_uniform/min*
T0* 
_output_shapes
:


dense_1_1/kernel
VariableV2*
dtype0*
shape:
*
	container *
shared_name * 
_output_shapes
:

Ц
dense_1_1/kernel/AssignAssigndense_1_1/kerneldense_1_1/random_uniform*
validate_shape(*#
_class
loc:@dense_1_1/kernel*
use_locking(*
T0* 
_output_shapes
:


dense_1_1/kernel/readIdentitydense_1_1/kernel*#
_class
loc:@dense_1_1/kernel*
T0* 
_output_shapes
:

^
dense_1_1/ConstConst*
dtype0*
valueB*    *
_output_shapes	
:
|
dense_1_1/bias
VariableV2*
dtype0*
shape:*
	container *
shared_name *
_output_shapes	
:
В
dense_1_1/bias/AssignAssigndense_1_1/biasdense_1_1/Const*
validate_shape(*!
_class
loc:@dense_1_1/bias*
use_locking(*
T0*
_output_shapes	
:
x
dense_1_1/bias/readIdentitydense_1_1/bias*!
_class
loc:@dense_1_1/bias*
T0*
_output_shapes	
:

dense_1_1/MatMulMatMulflatten_1_1/Reshapedense_1_1/kernel/read*
transpose_b( *
transpose_a( *
T0*(
_output_shapes
:џџџџџџџџџ

dense_1_1/BiasAddBiasAdddense_1_1/MatMuldense_1_1/bias/read*(
_output_shapes
:џџџџџџџџџ*
data_formatNHWC*
T0
\
dense_1_1/ReluReludense_1_1/BiasAdd*
T0*(
_output_shapes
:џџџџџџџџџ
|
+char_cnn_predictions_1/random_uniform/shapeConst*
dtype0*
valueB"   y   *
_output_shapes
:
n
)char_cnn_predictions_1/random_uniform/minConst*
dtype0*
valueB
 *ЄєО*
_output_shapes
: 
n
)char_cnn_predictions_1/random_uniform/maxConst*
dtype0*
valueB
 *Єє>*
_output_shapes
: 
Ч
3char_cnn_predictions_1/random_uniform/RandomUniformRandomUniform+char_cnn_predictions_1/random_uniform/shape*
dtype0*
seed2Уля*
seedБџх)*
T0*
_output_shapes
:	y
Ї
)char_cnn_predictions_1/random_uniform/subSub)char_cnn_predictions_1/random_uniform/max)char_cnn_predictions_1/random_uniform/min*
T0*
_output_shapes
: 
К
)char_cnn_predictions_1/random_uniform/mulMul3char_cnn_predictions_1/random_uniform/RandomUniform)char_cnn_predictions_1/random_uniform/sub*
T0*
_output_shapes
:	y
Ќ
%char_cnn_predictions_1/random_uniformAdd)char_cnn_predictions_1/random_uniform/mul)char_cnn_predictions_1/random_uniform/min*
T0*
_output_shapes
:	y

char_cnn_predictions_1/kernel
VariableV2*
dtype0*
shape:	y*
	container *
shared_name *
_output_shapes
:	y
љ
$char_cnn_predictions_1/kernel/AssignAssignchar_cnn_predictions_1/kernel%char_cnn_predictions_1/random_uniform*
validate_shape(*0
_class&
$"loc:@char_cnn_predictions_1/kernel*
use_locking(*
T0*
_output_shapes
:	y
Љ
"char_cnn_predictions_1/kernel/readIdentitychar_cnn_predictions_1/kernel*0
_class&
$"loc:@char_cnn_predictions_1/kernel*
T0*
_output_shapes
:	y
i
char_cnn_predictions_1/ConstConst*
dtype0*
valueBy*    *
_output_shapes
:y

char_cnn_predictions_1/bias
VariableV2*
dtype0*
shape:y*
	container *
shared_name *
_output_shapes
:y
х
"char_cnn_predictions_1/bias/AssignAssignchar_cnn_predictions_1/biaschar_cnn_predictions_1/Const*
validate_shape(*.
_class$
" loc:@char_cnn_predictions_1/bias*
use_locking(*
T0*
_output_shapes
:y

 char_cnn_predictions_1/bias/readIdentitychar_cnn_predictions_1/bias*.
_class$
" loc:@char_cnn_predictions_1/bias*
T0*
_output_shapes
:y
Г
char_cnn_predictions_1/MatMulMatMuldense_1_1/Relu"char_cnn_predictions_1/kernel/read*
transpose_b( *
transpose_a( *
T0*'
_output_shapes
:џџџџџџџџџy
Г
char_cnn_predictions_1/BiasAddBiasAddchar_cnn_predictions_1/MatMul char_cnn_predictions_1/bias/read*'
_output_shapes
:џџџџџџџџџy*
data_formatNHWC*
T0
{
char_cnn_predictions_1/SoftmaxSoftmaxchar_cnn_predictions_1/BiasAdd*
T0*'
_output_shapes
:џџџџџџџџџy
h
Placeholder_8Placeholder*
dtype0*
shape:`*#
_output_shapes
:`
Б
Assign_8Assignconv1d_1_1/kernelPlaceholder_8*
validate_shape(*$
_class
loc:@conv1d_1_1/kernel*
use_locking( *
T0*#
_output_shapes
:`
X
Placeholder_9Placeholder*
dtype0*
shape:*
_output_shapes	
:
Ѕ
Assign_9Assignconv1d_1_1/biasPlaceholder_9*
validate_shape(*"
_class
loc:@conv1d_1_1/bias*
use_locking( *
T0*
_output_shapes	
:
k
Placeholder_10Placeholder*
dtype0*
shape:*$
_output_shapes
:
Д
	Assign_10Assignconv1d_2_1/kernelPlaceholder_10*
validate_shape(*$
_class
loc:@conv1d_2_1/kernel*
use_locking( *
T0*$
_output_shapes
:
Y
Placeholder_11Placeholder*
dtype0*
shape:*
_output_shapes	
:
Ї
	Assign_11Assignconv1d_2_1/biasPlaceholder_11*
validate_shape(*"
_class
loc:@conv1d_2_1/bias*
use_locking( *
T0*
_output_shapes	
:
c
Placeholder_12Placeholder*
dtype0*
shape:
* 
_output_shapes
:

Ў
	Assign_12Assigndense_1_1/kernelPlaceholder_12*
validate_shape(*#
_class
loc:@dense_1_1/kernel*
use_locking( *
T0* 
_output_shapes
:

Y
Placeholder_13Placeholder*
dtype0*
shape:*
_output_shapes	
:
Ѕ
	Assign_13Assigndense_1_1/biasPlaceholder_13*
validate_shape(*!
_class
loc:@dense_1_1/bias*
use_locking( *
T0*
_output_shapes	
:
a
Placeholder_14Placeholder*
dtype0*
shape:	y*
_output_shapes
:	y
Ч
	Assign_14Assignchar_cnn_predictions_1/kernelPlaceholder_14*
validate_shape(*0
_class&
$"loc:@char_cnn_predictions_1/kernel*
use_locking( *
T0*
_output_shapes
:	y
W
Placeholder_15Placeholder*
dtype0*
shape:y*
_output_shapes
:y
О
	Assign_15Assignchar_cnn_predictions_1/biasPlaceholder_15*
validate_shape(*.
_class$
" loc:@char_cnn_predictions_1/bias*
use_locking( *
T0*
_output_shapes
:y

IsVariableInitialized_20IsVariableInitializedconv1d_1_1/kernel*
dtype0*$
_class
loc:@conv1d_1_1/kernel*
_output_shapes
: 

IsVariableInitialized_21IsVariableInitializedconv1d_1_1/bias*
dtype0*"
_class
loc:@conv1d_1_1/bias*
_output_shapes
: 

IsVariableInitialized_22IsVariableInitializedconv1d_2_1/kernel*
dtype0*$
_class
loc:@conv1d_2_1/kernel*
_output_shapes
: 

IsVariableInitialized_23IsVariableInitializedconv1d_2_1/bias*
dtype0*"
_class
loc:@conv1d_2_1/bias*
_output_shapes
: 

IsVariableInitialized_24IsVariableInitializeddense_1_1/kernel*
dtype0*#
_class
loc:@dense_1_1/kernel*
_output_shapes
: 

IsVariableInitialized_25IsVariableInitializeddense_1_1/bias*
dtype0*!
_class
loc:@dense_1_1/bias*
_output_shapes
: 
Ї
IsVariableInitialized_26IsVariableInitializedchar_cnn_predictions_1/kernel*
dtype0*0
_class&
$"loc:@char_cnn_predictions_1/kernel*
_output_shapes
: 
Ѓ
IsVariableInitialized_27IsVariableInitializedchar_cnn_predictions_1/bias*
dtype0*.
_class$
" loc:@char_cnn_predictions_1/bias*
_output_shapes
: 
є
init_2NoOp^conv1d_1_1/kernel/Assign^conv1d_1_1/bias/Assign^conv1d_2_1/kernel/Assign^conv1d_2_1/bias/Assign^dense_1_1/kernel/Assign^dense_1_1/bias/Assign%^char_cnn_predictions_1/kernel/Assign#^char_cnn_predictions_1/bias/Assign

init_all_tablesNoOp
(
legacy_init_opNoOp^init_all_tables
P

save/ConstConst*
dtype0*
valueB Bmodel*
_output_shapes
: 

save/StringJoin/inputs_1Const*
dtype0*<
value3B1 B+_temp_1fd986b27ca34a6a883acb29be83f41d/part*
_output_shapes
: 
u
save/StringJoin
StringJoin
save/Constsave/StringJoin/inputs_1*
_output_shapes
: *
	separator *
N
Q
save/num_shardsConst*
dtype0*
value	B :*
_output_shapes
: 
\
save/ShardedFilename/shardConst*
dtype0*
value	B : *
_output_shapes
: 
}
save/ShardedFilenameShardedFilenamesave/StringJoinsave/ShardedFilename/shardsave/num_shards*
_output_shapes
: 
Р
save/SaveV2/tensor_namesConst*
dtype0*ѓ
valueщBцBRMSprop/decayBRMSprop/iterationsB
RMSprop/lrBRMSprop/rhoBchar_cnn_predictions/biasBchar_cnn_predictions/kernelBchar_cnn_predictions_1/biasBchar_cnn_predictions_1/kernelBconv1d_1/biasBconv1d_1/kernelBconv1d_1_1/biasBconv1d_1_1/kernelBconv1d_2/biasBconv1d_2/kernelBconv1d_2_1/biasBconv1d_2_1/kernelBdense_1/biasBdense_1/kernelBdense_1_1/biasBdense_1_1/kernelBtraining/RMSprop/VariableBtraining/RMSprop/Variable_1Btraining/RMSprop/Variable_2Btraining/RMSprop/Variable_3Btraining/RMSprop/Variable_4Btraining/RMSprop/Variable_5Btraining/RMSprop/Variable_6Btraining/RMSprop/Variable_7*
_output_shapes
:

save/SaveV2/shape_and_slicesConst*
dtype0*K
valueBB@B B B B B B B B B B B B B B B B B B B B B B B B B B B B *
_output_shapes
:
э
save/SaveV2SaveV2save/ShardedFilenamesave/SaveV2/tensor_namessave/SaveV2/shape_and_slicesRMSprop/decayRMSprop/iterations
RMSprop/lrRMSprop/rhochar_cnn_predictions/biaschar_cnn_predictions/kernelchar_cnn_predictions_1/biaschar_cnn_predictions_1/kernelconv1d_1/biasconv1d_1/kernelconv1d_1_1/biasconv1d_1_1/kernelconv1d_2/biasconv1d_2/kernelconv1d_2_1/biasconv1d_2_1/kerneldense_1/biasdense_1/kerneldense_1_1/biasdense_1_1/kerneltraining/RMSprop/Variabletraining/RMSprop/Variable_1training/RMSprop/Variable_2training/RMSprop/Variable_3training/RMSprop/Variable_4training/RMSprop/Variable_5training/RMSprop/Variable_6training/RMSprop/Variable_7**
dtypes 
2	

save/control_dependencyIdentitysave/ShardedFilename^save/SaveV2*'
_class
loc:@save/ShardedFilename*
T0*
_output_shapes
: 

+save/MergeV2Checkpoints/checkpoint_prefixesPacksave/ShardedFilename^save/control_dependency*
N*

axis *
T0*
_output_shapes
:
}
save/MergeV2CheckpointsMergeV2Checkpoints+save/MergeV2Checkpoints/checkpoint_prefixes
save/Const*
delete_old_dirs(
z
save/IdentityIdentity
save/Const^save/control_dependency^save/MergeV2Checkpoints*
T0*
_output_shapes
: 
q
save/RestoreV2/tensor_namesConst*
dtype0*"
valueBBRMSprop/decay*
_output_shapes
:
h
save/RestoreV2/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:

save/RestoreV2	RestoreV2
save/Constsave/RestoreV2/tensor_namessave/RestoreV2/shape_and_slices*
dtypes
2*
_output_shapes
:
 
save/AssignAssignRMSprop/decaysave/RestoreV2*
validate_shape(* 
_class
loc:@RMSprop/decay*
use_locking(*
T0*
_output_shapes
: 
x
save/RestoreV2_1/tensor_namesConst*
dtype0*'
valueBBRMSprop/iterations*
_output_shapes
:
j
!save/RestoreV2_1/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:

save/RestoreV2_1	RestoreV2
save/Constsave/RestoreV2_1/tensor_names!save/RestoreV2_1/shape_and_slices*
dtypes
2	*
_output_shapes
:
Ў
save/Assign_1AssignRMSprop/iterationssave/RestoreV2_1*
validate_shape(*%
_class
loc:@RMSprop/iterations*
use_locking(*
T0	*
_output_shapes
: 
p
save/RestoreV2_2/tensor_namesConst*
dtype0*
valueBB
RMSprop/lr*
_output_shapes
:
j
!save/RestoreV2_2/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:

save/RestoreV2_2	RestoreV2
save/Constsave/RestoreV2_2/tensor_names!save/RestoreV2_2/shape_and_slices*
dtypes
2*
_output_shapes
:

save/Assign_2Assign
RMSprop/lrsave/RestoreV2_2*
validate_shape(*
_class
loc:@RMSprop/lr*
use_locking(*
T0*
_output_shapes
: 
q
save/RestoreV2_3/tensor_namesConst*
dtype0* 
valueBBRMSprop/rho*
_output_shapes
:
j
!save/RestoreV2_3/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:

save/RestoreV2_3	RestoreV2
save/Constsave/RestoreV2_3/tensor_names!save/RestoreV2_3/shape_and_slices*
dtypes
2*
_output_shapes
:
 
save/Assign_3AssignRMSprop/rhosave/RestoreV2_3*
validate_shape(*
_class
loc:@RMSprop/rho*
use_locking(*
T0*
_output_shapes
: 

save/RestoreV2_4/tensor_namesConst*
dtype0*.
value%B#Bchar_cnn_predictions/bias*
_output_shapes
:
j
!save/RestoreV2_4/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:

save/RestoreV2_4	RestoreV2
save/Constsave/RestoreV2_4/tensor_names!save/RestoreV2_4/shape_and_slices*
dtypes
2*
_output_shapes
:
Р
save/Assign_4Assignchar_cnn_predictions/biassave/RestoreV2_4*
validate_shape(*,
_class"
 loc:@char_cnn_predictions/bias*
use_locking(*
T0*
_output_shapes
:y

save/RestoreV2_5/tensor_namesConst*
dtype0*0
value'B%Bchar_cnn_predictions/kernel*
_output_shapes
:
j
!save/RestoreV2_5/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:

save/RestoreV2_5	RestoreV2
save/Constsave/RestoreV2_5/tensor_names!save/RestoreV2_5/shape_and_slices*
dtypes
2*
_output_shapes
:
Щ
save/Assign_5Assignchar_cnn_predictions/kernelsave/RestoreV2_5*
validate_shape(*.
_class$
" loc:@char_cnn_predictions/kernel*
use_locking(*
T0*
_output_shapes
:	y

save/RestoreV2_6/tensor_namesConst*
dtype0*0
value'B%Bchar_cnn_predictions_1/bias*
_output_shapes
:
j
!save/RestoreV2_6/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:

save/RestoreV2_6	RestoreV2
save/Constsave/RestoreV2_6/tensor_names!save/RestoreV2_6/shape_and_slices*
dtypes
2*
_output_shapes
:
Ф
save/Assign_6Assignchar_cnn_predictions_1/biassave/RestoreV2_6*
validate_shape(*.
_class$
" loc:@char_cnn_predictions_1/bias*
use_locking(*
T0*
_output_shapes
:y

save/RestoreV2_7/tensor_namesConst*
dtype0*2
value)B'Bchar_cnn_predictions_1/kernel*
_output_shapes
:
j
!save/RestoreV2_7/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:

save/RestoreV2_7	RestoreV2
save/Constsave/RestoreV2_7/tensor_names!save/RestoreV2_7/shape_and_slices*
dtypes
2*
_output_shapes
:
Э
save/Assign_7Assignchar_cnn_predictions_1/kernelsave/RestoreV2_7*
validate_shape(*0
_class&
$"loc:@char_cnn_predictions_1/kernel*
use_locking(*
T0*
_output_shapes
:	y
s
save/RestoreV2_8/tensor_namesConst*
dtype0*"
valueBBconv1d_1/bias*
_output_shapes
:
j
!save/RestoreV2_8/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:

save/RestoreV2_8	RestoreV2
save/Constsave/RestoreV2_8/tensor_names!save/RestoreV2_8/shape_and_slices*
dtypes
2*
_output_shapes
:
Љ
save/Assign_8Assignconv1d_1/biassave/RestoreV2_8*
validate_shape(* 
_class
loc:@conv1d_1/bias*
use_locking(*
T0*
_output_shapes	
:
u
save/RestoreV2_9/tensor_namesConst*
dtype0*$
valueBBconv1d_1/kernel*
_output_shapes
:
j
!save/RestoreV2_9/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:

save/RestoreV2_9	RestoreV2
save/Constsave/RestoreV2_9/tensor_names!save/RestoreV2_9/shape_and_slices*
dtypes
2*
_output_shapes
:
Е
save/Assign_9Assignconv1d_1/kernelsave/RestoreV2_9*
validate_shape(*"
_class
loc:@conv1d_1/kernel*
use_locking(*
T0*#
_output_shapes
:`
v
save/RestoreV2_10/tensor_namesConst*
dtype0*$
valueBBconv1d_1_1/bias*
_output_shapes
:
k
"save/RestoreV2_10/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:

save/RestoreV2_10	RestoreV2
save/Constsave/RestoreV2_10/tensor_names"save/RestoreV2_10/shape_and_slices*
dtypes
2*
_output_shapes
:
Џ
save/Assign_10Assignconv1d_1_1/biassave/RestoreV2_10*
validate_shape(*"
_class
loc:@conv1d_1_1/bias*
use_locking(*
T0*
_output_shapes	
:
x
save/RestoreV2_11/tensor_namesConst*
dtype0*&
valueBBconv1d_1_1/kernel*
_output_shapes
:
k
"save/RestoreV2_11/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:

save/RestoreV2_11	RestoreV2
save/Constsave/RestoreV2_11/tensor_names"save/RestoreV2_11/shape_and_slices*
dtypes
2*
_output_shapes
:
Л
save/Assign_11Assignconv1d_1_1/kernelsave/RestoreV2_11*
validate_shape(*$
_class
loc:@conv1d_1_1/kernel*
use_locking(*
T0*#
_output_shapes
:`
t
save/RestoreV2_12/tensor_namesConst*
dtype0*"
valueBBconv1d_2/bias*
_output_shapes
:
k
"save/RestoreV2_12/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:

save/RestoreV2_12	RestoreV2
save/Constsave/RestoreV2_12/tensor_names"save/RestoreV2_12/shape_and_slices*
dtypes
2*
_output_shapes
:
Ћ
save/Assign_12Assignconv1d_2/biassave/RestoreV2_12*
validate_shape(* 
_class
loc:@conv1d_2/bias*
use_locking(*
T0*
_output_shapes	
:
v
save/RestoreV2_13/tensor_namesConst*
dtype0*$
valueBBconv1d_2/kernel*
_output_shapes
:
k
"save/RestoreV2_13/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:

save/RestoreV2_13	RestoreV2
save/Constsave/RestoreV2_13/tensor_names"save/RestoreV2_13/shape_and_slices*
dtypes
2*
_output_shapes
:
И
save/Assign_13Assignconv1d_2/kernelsave/RestoreV2_13*
validate_shape(*"
_class
loc:@conv1d_2/kernel*
use_locking(*
T0*$
_output_shapes
:
v
save/RestoreV2_14/tensor_namesConst*
dtype0*$
valueBBconv1d_2_1/bias*
_output_shapes
:
k
"save/RestoreV2_14/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:

save/RestoreV2_14	RestoreV2
save/Constsave/RestoreV2_14/tensor_names"save/RestoreV2_14/shape_and_slices*
dtypes
2*
_output_shapes
:
Џ
save/Assign_14Assignconv1d_2_1/biassave/RestoreV2_14*
validate_shape(*"
_class
loc:@conv1d_2_1/bias*
use_locking(*
T0*
_output_shapes	
:
x
save/RestoreV2_15/tensor_namesConst*
dtype0*&
valueBBconv1d_2_1/kernel*
_output_shapes
:
k
"save/RestoreV2_15/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:

save/RestoreV2_15	RestoreV2
save/Constsave/RestoreV2_15/tensor_names"save/RestoreV2_15/shape_and_slices*
dtypes
2*
_output_shapes
:
М
save/Assign_15Assignconv1d_2_1/kernelsave/RestoreV2_15*
validate_shape(*$
_class
loc:@conv1d_2_1/kernel*
use_locking(*
T0*$
_output_shapes
:
s
save/RestoreV2_16/tensor_namesConst*
dtype0*!
valueBBdense_1/bias*
_output_shapes
:
k
"save/RestoreV2_16/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:

save/RestoreV2_16	RestoreV2
save/Constsave/RestoreV2_16/tensor_names"save/RestoreV2_16/shape_and_slices*
dtypes
2*
_output_shapes
:
Љ
save/Assign_16Assigndense_1/biassave/RestoreV2_16*
validate_shape(*
_class
loc:@dense_1/bias*
use_locking(*
T0*
_output_shapes	
:
u
save/RestoreV2_17/tensor_namesConst*
dtype0*#
valueBBdense_1/kernel*
_output_shapes
:
k
"save/RestoreV2_17/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:

save/RestoreV2_17	RestoreV2
save/Constsave/RestoreV2_17/tensor_names"save/RestoreV2_17/shape_and_slices*
dtypes
2*
_output_shapes
:
В
save/Assign_17Assigndense_1/kernelsave/RestoreV2_17*
validate_shape(*!
_class
loc:@dense_1/kernel*
use_locking(*
T0* 
_output_shapes
:

u
save/RestoreV2_18/tensor_namesConst*
dtype0*#
valueBBdense_1_1/bias*
_output_shapes
:
k
"save/RestoreV2_18/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:

save/RestoreV2_18	RestoreV2
save/Constsave/RestoreV2_18/tensor_names"save/RestoreV2_18/shape_and_slices*
dtypes
2*
_output_shapes
:
­
save/Assign_18Assigndense_1_1/biassave/RestoreV2_18*
validate_shape(*!
_class
loc:@dense_1_1/bias*
use_locking(*
T0*
_output_shapes	
:
w
save/RestoreV2_19/tensor_namesConst*
dtype0*%
valueBBdense_1_1/kernel*
_output_shapes
:
k
"save/RestoreV2_19/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:

save/RestoreV2_19	RestoreV2
save/Constsave/RestoreV2_19/tensor_names"save/RestoreV2_19/shape_and_slices*
dtypes
2*
_output_shapes
:
Ж
save/Assign_19Assigndense_1_1/kernelsave/RestoreV2_19*
validate_shape(*#
_class
loc:@dense_1_1/kernel*
use_locking(*
T0* 
_output_shapes
:


save/RestoreV2_20/tensor_namesConst*
dtype0*.
value%B#Btraining/RMSprop/Variable*
_output_shapes
:
k
"save/RestoreV2_20/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:

save/RestoreV2_20	RestoreV2
save/Constsave/RestoreV2_20/tensor_names"save/RestoreV2_20/shape_and_slices*
dtypes
2*
_output_shapes
:
Ы
save/Assign_20Assigntraining/RMSprop/Variablesave/RestoreV2_20*
validate_shape(*,
_class"
 loc:@training/RMSprop/Variable*
use_locking(*
T0*#
_output_shapes
:`

save/RestoreV2_21/tensor_namesConst*
dtype0*0
value'B%Btraining/RMSprop/Variable_1*
_output_shapes
:
k
"save/RestoreV2_21/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:

save/RestoreV2_21	RestoreV2
save/Constsave/RestoreV2_21/tensor_names"save/RestoreV2_21/shape_and_slices*
dtypes
2*
_output_shapes
:
Ч
save/Assign_21Assigntraining/RMSprop/Variable_1save/RestoreV2_21*
validate_shape(*.
_class$
" loc:@training/RMSprop/Variable_1*
use_locking(*
T0*
_output_shapes	
:

save/RestoreV2_22/tensor_namesConst*
dtype0*0
value'B%Btraining/RMSprop/Variable_2*
_output_shapes
:
k
"save/RestoreV2_22/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:

save/RestoreV2_22	RestoreV2
save/Constsave/RestoreV2_22/tensor_names"save/RestoreV2_22/shape_and_slices*
dtypes
2*
_output_shapes
:
а
save/Assign_22Assigntraining/RMSprop/Variable_2save/RestoreV2_22*
validate_shape(*.
_class$
" loc:@training/RMSprop/Variable_2*
use_locking(*
T0*$
_output_shapes
:

save/RestoreV2_23/tensor_namesConst*
dtype0*0
value'B%Btraining/RMSprop/Variable_3*
_output_shapes
:
k
"save/RestoreV2_23/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:

save/RestoreV2_23	RestoreV2
save/Constsave/RestoreV2_23/tensor_names"save/RestoreV2_23/shape_and_slices*
dtypes
2*
_output_shapes
:
Ч
save/Assign_23Assigntraining/RMSprop/Variable_3save/RestoreV2_23*
validate_shape(*.
_class$
" loc:@training/RMSprop/Variable_3*
use_locking(*
T0*
_output_shapes	
:

save/RestoreV2_24/tensor_namesConst*
dtype0*0
value'B%Btraining/RMSprop/Variable_4*
_output_shapes
:
k
"save/RestoreV2_24/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:

save/RestoreV2_24	RestoreV2
save/Constsave/RestoreV2_24/tensor_names"save/RestoreV2_24/shape_and_slices*
dtypes
2*
_output_shapes
:
Ь
save/Assign_24Assigntraining/RMSprop/Variable_4save/RestoreV2_24*
validate_shape(*.
_class$
" loc:@training/RMSprop/Variable_4*
use_locking(*
T0* 
_output_shapes
:


save/RestoreV2_25/tensor_namesConst*
dtype0*0
value'B%Btraining/RMSprop/Variable_5*
_output_shapes
:
k
"save/RestoreV2_25/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:

save/RestoreV2_25	RestoreV2
save/Constsave/RestoreV2_25/tensor_names"save/RestoreV2_25/shape_and_slices*
dtypes
2*
_output_shapes
:
Ч
save/Assign_25Assigntraining/RMSprop/Variable_5save/RestoreV2_25*
validate_shape(*.
_class$
" loc:@training/RMSprop/Variable_5*
use_locking(*
T0*
_output_shapes	
:

save/RestoreV2_26/tensor_namesConst*
dtype0*0
value'B%Btraining/RMSprop/Variable_6*
_output_shapes
:
k
"save/RestoreV2_26/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:

save/RestoreV2_26	RestoreV2
save/Constsave/RestoreV2_26/tensor_names"save/RestoreV2_26/shape_and_slices*
dtypes
2*
_output_shapes
:
Ы
save/Assign_26Assigntraining/RMSprop/Variable_6save/RestoreV2_26*
validate_shape(*.
_class$
" loc:@training/RMSprop/Variable_6*
use_locking(*
T0*
_output_shapes
:	y

save/RestoreV2_27/tensor_namesConst*
dtype0*0
value'B%Btraining/RMSprop/Variable_7*
_output_shapes
:
k
"save/RestoreV2_27/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:

save/RestoreV2_27	RestoreV2
save/Constsave/RestoreV2_27/tensor_names"save/RestoreV2_27/shape_and_slices*
dtypes
2*
_output_shapes
:
Ц
save/Assign_27Assigntraining/RMSprop/Variable_7save/RestoreV2_27*
validate_shape(*.
_class$
" loc:@training/RMSprop/Variable_7*
use_locking(*
T0*
_output_shapes
:y
ъ
save/restore_shardNoOp^save/Assign^save/Assign_1^save/Assign_2^save/Assign_3^save/Assign_4^save/Assign_5^save/Assign_6^save/Assign_7^save/Assign_8^save/Assign_9^save/Assign_10^save/Assign_11^save/Assign_12^save/Assign_13^save/Assign_14^save/Assign_15^save/Assign_16^save/Assign_17^save/Assign_18^save/Assign_19^save/Assign_20^save/Assign_21^save/Assign_22^save/Assign_23^save/Assign_24^save/Assign_25^save/Assign_26^save/Assign_27
-
save/restore_allNoOp^save/restore_shard"<
save/Const:0save/Identity:0save/restore_all (5 @F8"Ћ
	variables
^
conv1d_1/kernel:0conv1d_1/kernel/Assignconv1d_1/kernel/read:02conv1d_1/random_uniform:0
O
conv1d_1/bias:0conv1d_1/bias/Assignconv1d_1/bias/read:02conv1d_1/Const:0
^
conv1d_2/kernel:0conv1d_2/kernel/Assignconv1d_2/kernel/read:02conv1d_2/random_uniform:0
O
conv1d_2/bias:0conv1d_2/bias/Assignconv1d_2/bias/read:02conv1d_2/Const:0
Z
dense_1/kernel:0dense_1/kernel/Assigndense_1/kernel/read:02dense_1/random_uniform:0
K
dense_1/bias:0dense_1/bias/Assigndense_1/bias/read:02dense_1/Const:0

char_cnn_predictions/kernel:0"char_cnn_predictions/kernel/Assign"char_cnn_predictions/kernel/read:02%char_cnn_predictions/random_uniform:0

char_cnn_predictions/bias:0 char_cnn_predictions/bias/Assign char_cnn_predictions/bias/read:02char_cnn_predictions/Const:0
P
RMSprop/lr:0RMSprop/lr/AssignRMSprop/lr/read:02RMSprop/lr/initial_value:0
T
RMSprop/rho:0RMSprop/rho/AssignRMSprop/rho/read:02RMSprop/rho/initial_value:0
\
RMSprop/decay:0RMSprop/decay/AssignRMSprop/decay/read:02RMSprop/decay/initial_value:0
p
RMSprop/iterations:0RMSprop/iterations/AssignRMSprop/iterations/read:02"RMSprop/iterations/initial_value:0
{
training/RMSprop/Variable:0 training/RMSprop/Variable/Assign training/RMSprop/Variable/read:02training/RMSprop/Const:0

training/RMSprop/Variable_1:0"training/RMSprop/Variable_1/Assign"training/RMSprop/Variable_1/read:02training/RMSprop/Const_1:0

training/RMSprop/Variable_2:0"training/RMSprop/Variable_2/Assign"training/RMSprop/Variable_2/read:02training/RMSprop/Const_2:0

training/RMSprop/Variable_3:0"training/RMSprop/Variable_3/Assign"training/RMSprop/Variable_3/read:02training/RMSprop/Const_3:0

training/RMSprop/Variable_4:0"training/RMSprop/Variable_4/Assign"training/RMSprop/Variable_4/read:02training/RMSprop/Const_4:0

training/RMSprop/Variable_5:0"training/RMSprop/Variable_5/Assign"training/RMSprop/Variable_5/read:02training/RMSprop/Const_5:0

training/RMSprop/Variable_6:0"training/RMSprop/Variable_6/Assign"training/RMSprop/Variable_6/read:02training/RMSprop/Const_6:0

training/RMSprop/Variable_7:0"training/RMSprop/Variable_7/Assign"training/RMSprop/Variable_7/read:02training/RMSprop/Const_7:0
f
conv1d_1_1/kernel:0conv1d_1_1/kernel/Assignconv1d_1_1/kernel/read:02conv1d_1_1/random_uniform:0
W
conv1d_1_1/bias:0conv1d_1_1/bias/Assignconv1d_1_1/bias/read:02conv1d_1_1/Const:0
f
conv1d_2_1/kernel:0conv1d_2_1/kernel/Assignconv1d_2_1/kernel/read:02conv1d_2_1/random_uniform:0
W
conv1d_2_1/bias:0conv1d_2_1/bias/Assignconv1d_2_1/bias/read:02conv1d_2_1/Const:0
b
dense_1_1/kernel:0dense_1_1/kernel/Assigndense_1_1/kernel/read:02dense_1_1/random_uniform:0
S
dense_1_1/bias:0dense_1_1/bias/Assigndense_1_1/bias/read:02dense_1_1/Const:0

char_cnn_predictions_1/kernel:0$char_cnn_predictions_1/kernel/Assign$char_cnn_predictions_1/kernel/read:02'char_cnn_predictions_1/random_uniform:0

char_cnn_predictions_1/bias:0"char_cnn_predictions_1/bias/Assign"char_cnn_predictions_1/bias/read:02char_cnn_predictions_1/Const:0"$
legacy_init_op

legacy_init_op"Е
trainable_variables
^
conv1d_1/kernel:0conv1d_1/kernel/Assignconv1d_1/kernel/read:02conv1d_1/random_uniform:0
O
conv1d_1/bias:0conv1d_1/bias/Assignconv1d_1/bias/read:02conv1d_1/Const:0
^
conv1d_2/kernel:0conv1d_2/kernel/Assignconv1d_2/kernel/read:02conv1d_2/random_uniform:0
O
conv1d_2/bias:0conv1d_2/bias/Assignconv1d_2/bias/read:02conv1d_2/Const:0
Z
dense_1/kernel:0dense_1/kernel/Assigndense_1/kernel/read:02dense_1/random_uniform:0
K
dense_1/bias:0dense_1/bias/Assigndense_1/bias/read:02dense_1/Const:0

char_cnn_predictions/kernel:0"char_cnn_predictions/kernel/Assign"char_cnn_predictions/kernel/read:02%char_cnn_predictions/random_uniform:0

char_cnn_predictions/bias:0 char_cnn_predictions/bias/Assign char_cnn_predictions/bias/read:02char_cnn_predictions/Const:0
P
RMSprop/lr:0RMSprop/lr/AssignRMSprop/lr/read:02RMSprop/lr/initial_value:0
T
RMSprop/rho:0RMSprop/rho/AssignRMSprop/rho/read:02RMSprop/rho/initial_value:0
\
RMSprop/decay:0RMSprop/decay/AssignRMSprop/decay/read:02RMSprop/decay/initial_value:0
p
RMSprop/iterations:0RMSprop/iterations/AssignRMSprop/iterations/read:02"RMSprop/iterations/initial_value:0
{
training/RMSprop/Variable:0 training/RMSprop/Variable/Assign training/RMSprop/Variable/read:02training/RMSprop/Const:0

training/RMSprop/Variable_1:0"training/RMSprop/Variable_1/Assign"training/RMSprop/Variable_1/read:02training/RMSprop/Const_1:0

training/RMSprop/Variable_2:0"training/RMSprop/Variable_2/Assign"training/RMSprop/Variable_2/read:02training/RMSprop/Const_2:0

training/RMSprop/Variable_3:0"training/RMSprop/Variable_3/Assign"training/RMSprop/Variable_3/read:02training/RMSprop/Const_3:0

training/RMSprop/Variable_4:0"training/RMSprop/Variable_4/Assign"training/RMSprop/Variable_4/read:02training/RMSprop/Const_4:0

training/RMSprop/Variable_5:0"training/RMSprop/Variable_5/Assign"training/RMSprop/Variable_5/read:02training/RMSprop/Const_5:0

training/RMSprop/Variable_6:0"training/RMSprop/Variable_6/Assign"training/RMSprop/Variable_6/read:02training/RMSprop/Const_6:0

training/RMSprop/Variable_7:0"training/RMSprop/Variable_7/Assign"training/RMSprop/Variable_7/read:02training/RMSprop/Const_7:0
f
conv1d_1_1/kernel:0conv1d_1_1/kernel/Assignconv1d_1_1/kernel/read:02conv1d_1_1/random_uniform:0
W
conv1d_1_1/bias:0conv1d_1_1/bias/Assignconv1d_1_1/bias/read:02conv1d_1_1/Const:0
f
conv1d_2_1/kernel:0conv1d_2_1/kernel/Assignconv1d_2_1/kernel/read:02conv1d_2_1/random_uniform:0
W
conv1d_2_1/bias:0conv1d_2_1/bias/Assignconv1d_2_1/bias/read:02conv1d_2_1/Const:0
b
dense_1_1/kernel:0dense_1_1/kernel/Assigndense_1_1/kernel/read:02dense_1_1/random_uniform:0
S
dense_1_1/bias:0dense_1_1/bias/Assigndense_1_1/bias/read:02dense_1_1/Const:0

char_cnn_predictions_1/kernel:0$char_cnn_predictions_1/kernel/Assign$char_cnn_predictions_1/kernel/read:02'char_cnn_predictions_1/random_uniform:0

char_cnn_predictions_1/bias:0"char_cnn_predictions_1/bias/Assign"char_cnn_predictions_1/bias/read:02char_cnn_predictions_1/Const:0*Њ
emoji_suggest
7
input.
char_cnn_input_1:0џџџџџџџџџ`A
output7
 char_cnn_predictions_1/Softmax:0џџџџџџџџџytensorflow/serving/predict