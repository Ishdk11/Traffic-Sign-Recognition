??
??
B
AssignVariableOp
resource
value"dtype"
dtypetype?
~
BiasAdd

value"T	
bias"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
8
Const
output"dtype"
valuetensor"
dtypetype
?
Conv2D

input"T
filter"T
output"T"
Ttype:	
2"
strides	list(int)"
use_cudnn_on_gpubool(",
paddingstring:
SAMEVALIDEXPLICIT""
explicit_paddings	list(int)
 "-
data_formatstringNHWC:
NHWCNCHW" 
	dilations	list(int)

?
FusedBatchNormV3
x"T

scale"U
offset"U	
mean"U
variance"U
y"T

batch_mean"U
batch_variance"U
reserve_space_1"U
reserve_space_2"U
reserve_space_3"U"
Ttype:
2"
Utype:
2"
epsilonfloat%??8"&
exponential_avg_factorfloat%  ??";
data_formatstringNHWC:
NHWCNCHWNDHWCNCDHW"
is_trainingbool(
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
?
MaxPool

input"T
output"T"
Ttype0:
2	"
ksize	list(int)(0"
strides	list(int)(0",
paddingstring:
SAMEVALIDEXPLICIT""
explicit_paddings	list(int)
 ":
data_formatstringNHWC:
NHWCNCHWNCHW_VECT_C
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
executor_typestring ?
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
?
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 ?"serve*2.5.02v2.5.0-0-ga4dfb8d1a718??
|
Conv0/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameConv0/kernel
u
 Conv0/kernel/Read/ReadVariableOpReadVariableOpConv0/kernel*&
_output_shapes
: *
dtype0
l

Conv0/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name
Conv0/bias
e
Conv0/bias/Read/ReadVariableOpReadVariableOp
Conv0/bias*
_output_shapes
: *
dtype0
?
BatchNormalization0/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape: **
shared_nameBatchNormalization0/gamma
?
-BatchNormalization0/gamma/Read/ReadVariableOpReadVariableOpBatchNormalization0/gamma*
_output_shapes
: *
dtype0
?
BatchNormalization0/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape: *)
shared_nameBatchNormalization0/beta
?
,BatchNormalization0/beta/Read/ReadVariableOpReadVariableOpBatchNormalization0/beta*
_output_shapes
: *
dtype0
?
BatchNormalization0/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape: *0
shared_name!BatchNormalization0/moving_mean
?
3BatchNormalization0/moving_mean/Read/ReadVariableOpReadVariableOpBatchNormalization0/moving_mean*
_output_shapes
: *
dtype0
?
#BatchNormalization0/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape: *4
shared_name%#BatchNormalization0/moving_variance
?
7BatchNormalization0/moving_variance/Read/ReadVariableOpReadVariableOp#BatchNormalization0/moving_variance*
_output_shapes
: *
dtype0
|
Conv1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:  *
shared_nameConv1/kernel
u
 Conv1/kernel/Read/ReadVariableOpReadVariableOpConv1/kernel*&
_output_shapes
:  *
dtype0
l

Conv1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name
Conv1/bias
e
Conv1/bias/Read/ReadVariableOpReadVariableOp
Conv1/bias*
_output_shapes
: *
dtype0
|
Conv2/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape: @*
shared_nameConv2/kernel
u
 Conv2/kernel/Read/ReadVariableOpReadVariableOpConv2/kernel*&
_output_shapes
: @*
dtype0
l

Conv2/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*
shared_name
Conv2/bias
e
Conv2/bias/Read/ReadVariableOpReadVariableOp
Conv2/bias*
_output_shapes
:@*
dtype0
?
BatchNormalization1/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:@**
shared_nameBatchNormalization1/gamma
?
-BatchNormalization1/gamma/Read/ReadVariableOpReadVariableOpBatchNormalization1/gamma*
_output_shapes
:@*
dtype0
?
BatchNormalization1/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*)
shared_nameBatchNormalization1/beta
?
,BatchNormalization1/beta/Read/ReadVariableOpReadVariableOpBatchNormalization1/beta*
_output_shapes
:@*
dtype0
?
BatchNormalization1/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*0
shared_name!BatchNormalization1/moving_mean
?
3BatchNormalization1/moving_mean/Read/ReadVariableOpReadVariableOpBatchNormalization1/moving_mean*
_output_shapes
:@*
dtype0
?
#BatchNormalization1/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*4
shared_name%#BatchNormalization1/moving_variance
?
7BatchNormalization1/moving_variance/Read/ReadVariableOpReadVariableOp#BatchNormalization1/moving_variance*
_output_shapes
:@*
dtype0
|
Conv3/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@@*
shared_nameConv3/kernel
u
 Conv3/kernel/Read/ReadVariableOpReadVariableOpConv3/kernel*&
_output_shapes
:@@*
dtype0
l

Conv3/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*
shared_name
Conv3/bias
e
Conv3/bias/Read/ReadVariableOpReadVariableOp
Conv3/bias*
_output_shapes
:@*
dtype0
x
Dense0/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??*
shared_nameDense0/kernel
q
!Dense0/kernel/Read/ReadVariableOpReadVariableOpDense0/kernel* 
_output_shapes
:
??*
dtype0
o
Dense0/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*
shared_nameDense0/bias
h
Dense0/bias/Read/ReadVariableOpReadVariableOpDense0/bias*
_output_shapes	
:?*
dtype0
w
Output/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?+*
shared_nameOutput/kernel
p
!Output/kernel/Read/ReadVariableOpReadVariableOpOutput/kernel*
_output_shapes
:	?+*
dtype0
n
Output/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:+*
shared_nameOutput/bias
g
Output/bias/Read/ReadVariableOpReadVariableOpOutput/bias*
_output_shapes
:+*
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
Adam/Conv0/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *$
shared_nameAdam/Conv0/kernel/m
?
'Adam/Conv0/kernel/m/Read/ReadVariableOpReadVariableOpAdam/Conv0/kernel/m*&
_output_shapes
: *
dtype0
z
Adam/Conv0/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *"
shared_nameAdam/Conv0/bias/m
s
%Adam/Conv0/bias/m/Read/ReadVariableOpReadVariableOpAdam/Conv0/bias/m*
_output_shapes
: *
dtype0
?
 Adam/BatchNormalization0/gamma/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *1
shared_name" Adam/BatchNormalization0/gamma/m
?
4Adam/BatchNormalization0/gamma/m/Read/ReadVariableOpReadVariableOp Adam/BatchNormalization0/gamma/m*
_output_shapes
: *
dtype0
?
Adam/BatchNormalization0/beta/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *0
shared_name!Adam/BatchNormalization0/beta/m
?
3Adam/BatchNormalization0/beta/m/Read/ReadVariableOpReadVariableOpAdam/BatchNormalization0/beta/m*
_output_shapes
: *
dtype0
?
Adam/Conv1/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:  *$
shared_nameAdam/Conv1/kernel/m
?
'Adam/Conv1/kernel/m/Read/ReadVariableOpReadVariableOpAdam/Conv1/kernel/m*&
_output_shapes
:  *
dtype0
z
Adam/Conv1/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *"
shared_nameAdam/Conv1/bias/m
s
%Adam/Conv1/bias/m/Read/ReadVariableOpReadVariableOpAdam/Conv1/bias/m*
_output_shapes
: *
dtype0
?
Adam/Conv2/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: @*$
shared_nameAdam/Conv2/kernel/m
?
'Adam/Conv2/kernel/m/Read/ReadVariableOpReadVariableOpAdam/Conv2/kernel/m*&
_output_shapes
: @*
dtype0
z
Adam/Conv2/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*"
shared_nameAdam/Conv2/bias/m
s
%Adam/Conv2/bias/m/Read/ReadVariableOpReadVariableOpAdam/Conv2/bias/m*
_output_shapes
:@*
dtype0
?
 Adam/BatchNormalization1/gamma/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*1
shared_name" Adam/BatchNormalization1/gamma/m
?
4Adam/BatchNormalization1/gamma/m/Read/ReadVariableOpReadVariableOp Adam/BatchNormalization1/gamma/m*
_output_shapes
:@*
dtype0
?
Adam/BatchNormalization1/beta/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*0
shared_name!Adam/BatchNormalization1/beta/m
?
3Adam/BatchNormalization1/beta/m/Read/ReadVariableOpReadVariableOpAdam/BatchNormalization1/beta/m*
_output_shapes
:@*
dtype0
?
Adam/Conv3/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@@*$
shared_nameAdam/Conv3/kernel/m
?
'Adam/Conv3/kernel/m/Read/ReadVariableOpReadVariableOpAdam/Conv3/kernel/m*&
_output_shapes
:@@*
dtype0
z
Adam/Conv3/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*"
shared_nameAdam/Conv3/bias/m
s
%Adam/Conv3/bias/m/Read/ReadVariableOpReadVariableOpAdam/Conv3/bias/m*
_output_shapes
:@*
dtype0
?
Adam/Dense0/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??*%
shared_nameAdam/Dense0/kernel/m

(Adam/Dense0/kernel/m/Read/ReadVariableOpReadVariableOpAdam/Dense0/kernel/m* 
_output_shapes
:
??*
dtype0
}
Adam/Dense0/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*#
shared_nameAdam/Dense0/bias/m
v
&Adam/Dense0/bias/m/Read/ReadVariableOpReadVariableOpAdam/Dense0/bias/m*
_output_shapes	
:?*
dtype0
?
Adam/Output/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?+*%
shared_nameAdam/Output/kernel/m
~
(Adam/Output/kernel/m/Read/ReadVariableOpReadVariableOpAdam/Output/kernel/m*
_output_shapes
:	?+*
dtype0
|
Adam/Output/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:+*#
shared_nameAdam/Output/bias/m
u
&Adam/Output/bias/m/Read/ReadVariableOpReadVariableOpAdam/Output/bias/m*
_output_shapes
:+*
dtype0
?
Adam/Conv0/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *$
shared_nameAdam/Conv0/kernel/v
?
'Adam/Conv0/kernel/v/Read/ReadVariableOpReadVariableOpAdam/Conv0/kernel/v*&
_output_shapes
: *
dtype0
z
Adam/Conv0/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *"
shared_nameAdam/Conv0/bias/v
s
%Adam/Conv0/bias/v/Read/ReadVariableOpReadVariableOpAdam/Conv0/bias/v*
_output_shapes
: *
dtype0
?
 Adam/BatchNormalization0/gamma/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *1
shared_name" Adam/BatchNormalization0/gamma/v
?
4Adam/BatchNormalization0/gamma/v/Read/ReadVariableOpReadVariableOp Adam/BatchNormalization0/gamma/v*
_output_shapes
: *
dtype0
?
Adam/BatchNormalization0/beta/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *0
shared_name!Adam/BatchNormalization0/beta/v
?
3Adam/BatchNormalization0/beta/v/Read/ReadVariableOpReadVariableOpAdam/BatchNormalization0/beta/v*
_output_shapes
: *
dtype0
?
Adam/Conv1/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:  *$
shared_nameAdam/Conv1/kernel/v
?
'Adam/Conv1/kernel/v/Read/ReadVariableOpReadVariableOpAdam/Conv1/kernel/v*&
_output_shapes
:  *
dtype0
z
Adam/Conv1/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *"
shared_nameAdam/Conv1/bias/v
s
%Adam/Conv1/bias/v/Read/ReadVariableOpReadVariableOpAdam/Conv1/bias/v*
_output_shapes
: *
dtype0
?
Adam/Conv2/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: @*$
shared_nameAdam/Conv2/kernel/v
?
'Adam/Conv2/kernel/v/Read/ReadVariableOpReadVariableOpAdam/Conv2/kernel/v*&
_output_shapes
: @*
dtype0
z
Adam/Conv2/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*"
shared_nameAdam/Conv2/bias/v
s
%Adam/Conv2/bias/v/Read/ReadVariableOpReadVariableOpAdam/Conv2/bias/v*
_output_shapes
:@*
dtype0
?
 Adam/BatchNormalization1/gamma/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*1
shared_name" Adam/BatchNormalization1/gamma/v
?
4Adam/BatchNormalization1/gamma/v/Read/ReadVariableOpReadVariableOp Adam/BatchNormalization1/gamma/v*
_output_shapes
:@*
dtype0
?
Adam/BatchNormalization1/beta/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*0
shared_name!Adam/BatchNormalization1/beta/v
?
3Adam/BatchNormalization1/beta/v/Read/ReadVariableOpReadVariableOpAdam/BatchNormalization1/beta/v*
_output_shapes
:@*
dtype0
?
Adam/Conv3/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@@*$
shared_nameAdam/Conv3/kernel/v
?
'Adam/Conv3/kernel/v/Read/ReadVariableOpReadVariableOpAdam/Conv3/kernel/v*&
_output_shapes
:@@*
dtype0
z
Adam/Conv3/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*"
shared_nameAdam/Conv3/bias/v
s
%Adam/Conv3/bias/v/Read/ReadVariableOpReadVariableOpAdam/Conv3/bias/v*
_output_shapes
:@*
dtype0
?
Adam/Dense0/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??*%
shared_nameAdam/Dense0/kernel/v

(Adam/Dense0/kernel/v/Read/ReadVariableOpReadVariableOpAdam/Dense0/kernel/v* 
_output_shapes
:
??*
dtype0
}
Adam/Dense0/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*#
shared_nameAdam/Dense0/bias/v
v
&Adam/Dense0/bias/v/Read/ReadVariableOpReadVariableOpAdam/Dense0/bias/v*
_output_shapes	
:?*
dtype0
?
Adam/Output/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?+*%
shared_nameAdam/Output/kernel/v
~
(Adam/Output/kernel/v/Read/ReadVariableOpReadVariableOpAdam/Output/kernel/v*
_output_shapes
:	?+*
dtype0
|
Adam/Output/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:+*#
shared_nameAdam/Output/bias/v
u
&Adam/Output/bias/v/Read/ReadVariableOpReadVariableOpAdam/Output/bias/v*
_output_shapes
:+*
dtype0

NoOpNoOp
?`
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*?`
value?`B?` B?`
?
layer-0
layer_with_weights-0
layer-1
layer_with_weights-1
layer-2
layer_with_weights-2
layer-3
layer-4
layer_with_weights-3
layer-5
layer_with_weights-4
layer-6
layer_with_weights-5
layer-7
	layer-8

layer-9
layer-10
layer_with_weights-6
layer-11
layer_with_weights-7
layer-12
	optimizer
trainable_variables
	variables
regularization_losses
	keras_api

signatures
 
h

kernel
bias
trainable_variables
regularization_losses
	variables
	keras_api
?
axis
	gamma
beta
moving_mean
moving_variance
trainable_variables
 regularization_losses
!	variables
"	keras_api
h

#kernel
$bias
%trainable_variables
&regularization_losses
'	variables
(	keras_api
R
)trainable_variables
*regularization_losses
+	variables
,	keras_api
h

-kernel
.bias
/trainable_variables
0regularization_losses
1	variables
2	keras_api
?
3axis
	4gamma
5beta
6moving_mean
7moving_variance
8trainable_variables
9regularization_losses
:	variables
;	keras_api
h

<kernel
=bias
>trainable_variables
?regularization_losses
@	variables
A	keras_api
R
Btrainable_variables
Cregularization_losses
D	variables
E	keras_api
R
Ftrainable_variables
Gregularization_losses
H	variables
I	keras_api
R
Jtrainable_variables
Kregularization_losses
L	variables
M	keras_api
h

Nkernel
Obias
Ptrainable_variables
Qregularization_losses
R	variables
S	keras_api
h

Tkernel
Ubias
Vtrainable_variables
Wregularization_losses
X	variables
Y	keras_api
?
Ziter

[beta_1

\beta_2
	]decay
^learning_ratem?m?m?m?#m?$m?-m?.m?4m?5m?<m?=m?Nm?Om?Tm?Um?v?v?v?v?#v?$v?-v?.v?4v?5v?<v?=v?Nv?Ov?Tv?Uv?
v
0
1
2
3
#4
$5
-6
.7
48
59
<10
=11
N12
O13
T14
U15
?
0
1
2
3
4
5
#6
$7
-8
.9
410
511
612
713
<14
=15
N16
O17
T18
U19
 
?
trainable_variables
	variables
regularization_losses
_non_trainable_variables
`layer_metrics
ametrics
blayer_regularization_losses

clayers
 
XV
VARIABLE_VALUEConv0/kernel6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUE
TR
VARIABLE_VALUE
Conv0/bias4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUE

0
1
 

0
1
?
trainable_variables
regularization_losses
	variables
dnon_trainable_variables
elayer_metrics
fmetrics
glayer_regularization_losses

hlayers
 
db
VARIABLE_VALUEBatchNormalization0/gamma5layer_with_weights-1/gamma/.ATTRIBUTES/VARIABLE_VALUE
b`
VARIABLE_VALUEBatchNormalization0/beta4layer_with_weights-1/beta/.ATTRIBUTES/VARIABLE_VALUE
pn
VARIABLE_VALUEBatchNormalization0/moving_mean;layer_with_weights-1/moving_mean/.ATTRIBUTES/VARIABLE_VALUE
xv
VARIABLE_VALUE#BatchNormalization0/moving_variance?layer_with_weights-1/moving_variance/.ATTRIBUTES/VARIABLE_VALUE

0
1
 

0
1
2
3
?
trainable_variables
 regularization_losses
!	variables
inon_trainable_variables
jlayer_metrics
kmetrics
llayer_regularization_losses

mlayers
XV
VARIABLE_VALUEConv1/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE
TR
VARIABLE_VALUE
Conv1/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE

#0
$1
 

#0
$1
?
%trainable_variables
&regularization_losses
'	variables
nnon_trainable_variables
olayer_metrics
pmetrics
qlayer_regularization_losses

rlayers
 
 
 
?
)trainable_variables
*regularization_losses
+	variables
snon_trainable_variables
tlayer_metrics
umetrics
vlayer_regularization_losses

wlayers
XV
VARIABLE_VALUEConv2/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE
TR
VARIABLE_VALUE
Conv2/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE

-0
.1
 

-0
.1
?
/trainable_variables
0regularization_losses
1	variables
xnon_trainable_variables
ylayer_metrics
zmetrics
{layer_regularization_losses

|layers
 
db
VARIABLE_VALUEBatchNormalization1/gamma5layer_with_weights-4/gamma/.ATTRIBUTES/VARIABLE_VALUE
b`
VARIABLE_VALUEBatchNormalization1/beta4layer_with_weights-4/beta/.ATTRIBUTES/VARIABLE_VALUE
pn
VARIABLE_VALUEBatchNormalization1/moving_mean;layer_with_weights-4/moving_mean/.ATTRIBUTES/VARIABLE_VALUE
xv
VARIABLE_VALUE#BatchNormalization1/moving_variance?layer_with_weights-4/moving_variance/.ATTRIBUTES/VARIABLE_VALUE

40
51
 

40
51
62
73
?
8trainable_variables
9regularization_losses
:	variables
}non_trainable_variables
~layer_metrics
metrics
 ?layer_regularization_losses
?layers
XV
VARIABLE_VALUEConv3/kernel6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUE
TR
VARIABLE_VALUE
Conv3/bias4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUE

<0
=1
 

<0
=1
?
>trainable_variables
?regularization_losses
@	variables
?non_trainable_variables
?layer_metrics
?metrics
 ?layer_regularization_losses
?layers
 
 
 
?
Btrainable_variables
Cregularization_losses
D	variables
?non_trainable_variables
?layer_metrics
?metrics
 ?layer_regularization_losses
?layers
 
 
 
?
Ftrainable_variables
Gregularization_losses
H	variables
?non_trainable_variables
?layer_metrics
?metrics
 ?layer_regularization_losses
?layers
 
 
 
?
Jtrainable_variables
Kregularization_losses
L	variables
?non_trainable_variables
?layer_metrics
?metrics
 ?layer_regularization_losses
?layers
YW
VARIABLE_VALUEDense0/kernel6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUE
US
VARIABLE_VALUEDense0/bias4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUE

N0
O1
 

N0
O1
?
Ptrainable_variables
Qregularization_losses
R	variables
?non_trainable_variables
?layer_metrics
?metrics
 ?layer_regularization_losses
?layers
YW
VARIABLE_VALUEOutput/kernel6layer_with_weights-7/kernel/.ATTRIBUTES/VARIABLE_VALUE
US
VARIABLE_VALUEOutput/bias4layer_with_weights-7/bias/.ATTRIBUTES/VARIABLE_VALUE

T0
U1
 

T0
U1
?
Vtrainable_variables
Wregularization_losses
X	variables
?non_trainable_variables
?layer_metrics
?metrics
 ?layer_regularization_losses
?layers
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

0
1
62
73
 

?0
?1
 
^
0
1
2
3
4
5
6
7
	8

9
10
11
12
 
 
 
 
 

0
1
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

60
71
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
8

?total

?count
?	variables
?	keras_api
I

?total

?count
?
_fn_kwargs
?	variables
?	keras_api
OM
VARIABLE_VALUEtotal4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE
OM
VARIABLE_VALUEcount4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE

?0
?1

?	variables
QO
VARIABLE_VALUEtotal_14keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUE
QO
VARIABLE_VALUEcount_14keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUE
 

?0
?1

?	variables
{y
VARIABLE_VALUEAdam/Conv0/kernel/mRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
wu
VARIABLE_VALUEAdam/Conv0/bias/mPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE Adam/BatchNormalization0/gamma/mQlayer_with_weights-1/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUEAdam/BatchNormalization0/beta/mPlayer_with_weights-1/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/Conv1/kernel/mRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
wu
VARIABLE_VALUEAdam/Conv1/bias/mPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/Conv2/kernel/mRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
wu
VARIABLE_VALUEAdam/Conv2/bias/mPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE Adam/BatchNormalization1/gamma/mQlayer_with_weights-4/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUEAdam/BatchNormalization1/beta/mPlayer_with_weights-4/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/Conv3/kernel/mRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
wu
VARIABLE_VALUEAdam/Conv3/bias/mPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUEAdam/Dense0/kernel/mRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
xv
VARIABLE_VALUEAdam/Dense0/bias/mPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUEAdam/Output/kernel/mRlayer_with_weights-7/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
xv
VARIABLE_VALUEAdam/Output/bias/mPlayer_with_weights-7/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/Conv0/kernel/vRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
wu
VARIABLE_VALUEAdam/Conv0/bias/vPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE Adam/BatchNormalization0/gamma/vQlayer_with_weights-1/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUEAdam/BatchNormalization0/beta/vPlayer_with_weights-1/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/Conv1/kernel/vRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
wu
VARIABLE_VALUEAdam/Conv1/bias/vPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/Conv2/kernel/vRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
wu
VARIABLE_VALUEAdam/Conv2/bias/vPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE Adam/BatchNormalization1/gamma/vQlayer_with_weights-4/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUEAdam/BatchNormalization1/beta/vPlayer_with_weights-4/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/Conv3/kernel/vRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
wu
VARIABLE_VALUEAdam/Conv3/bias/vPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUEAdam/Dense0/kernel/vRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
xv
VARIABLE_VALUEAdam/Dense0/bias/vPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUEAdam/Output/kernel/vRlayer_with_weights-7/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
xv
VARIABLE_VALUEAdam/Output/bias/vPlayer_with_weights-7/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
?
serving_default_input_layerPlaceholder*/
_output_shapes
:?????????*
dtype0*$
shape:?????????
?
StatefulPartitionedCallStatefulPartitionedCallserving_default_input_layerConv0/kernel
Conv0/biasBatchNormalization0/gammaBatchNormalization0/betaBatchNormalization0/moving_mean#BatchNormalization0/moving_varianceConv1/kernel
Conv1/biasConv2/kernel
Conv2/biasBatchNormalization1/gammaBatchNormalization1/betaBatchNormalization1/moving_mean#BatchNormalization1/moving_varianceConv3/kernel
Conv3/biasDense0/kernelDense0/biasOutput/kernelOutput/bias* 
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????+*6
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8? *,
f'R%
#__inference_signature_wrapper_17727
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
?
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename Conv0/kernel/Read/ReadVariableOpConv0/bias/Read/ReadVariableOp-BatchNormalization0/gamma/Read/ReadVariableOp,BatchNormalization0/beta/Read/ReadVariableOp3BatchNormalization0/moving_mean/Read/ReadVariableOp7BatchNormalization0/moving_variance/Read/ReadVariableOp Conv1/kernel/Read/ReadVariableOpConv1/bias/Read/ReadVariableOp Conv2/kernel/Read/ReadVariableOpConv2/bias/Read/ReadVariableOp-BatchNormalization1/gamma/Read/ReadVariableOp,BatchNormalization1/beta/Read/ReadVariableOp3BatchNormalization1/moving_mean/Read/ReadVariableOp7BatchNormalization1/moving_variance/Read/ReadVariableOp Conv3/kernel/Read/ReadVariableOpConv3/bias/Read/ReadVariableOp!Dense0/kernel/Read/ReadVariableOpDense0/bias/Read/ReadVariableOp!Output/kernel/Read/ReadVariableOpOutput/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOptotal_1/Read/ReadVariableOpcount_1/Read/ReadVariableOp'Adam/Conv0/kernel/m/Read/ReadVariableOp%Adam/Conv0/bias/m/Read/ReadVariableOp4Adam/BatchNormalization0/gamma/m/Read/ReadVariableOp3Adam/BatchNormalization0/beta/m/Read/ReadVariableOp'Adam/Conv1/kernel/m/Read/ReadVariableOp%Adam/Conv1/bias/m/Read/ReadVariableOp'Adam/Conv2/kernel/m/Read/ReadVariableOp%Adam/Conv2/bias/m/Read/ReadVariableOp4Adam/BatchNormalization1/gamma/m/Read/ReadVariableOp3Adam/BatchNormalization1/beta/m/Read/ReadVariableOp'Adam/Conv3/kernel/m/Read/ReadVariableOp%Adam/Conv3/bias/m/Read/ReadVariableOp(Adam/Dense0/kernel/m/Read/ReadVariableOp&Adam/Dense0/bias/m/Read/ReadVariableOp(Adam/Output/kernel/m/Read/ReadVariableOp&Adam/Output/bias/m/Read/ReadVariableOp'Adam/Conv0/kernel/v/Read/ReadVariableOp%Adam/Conv0/bias/v/Read/ReadVariableOp4Adam/BatchNormalization0/gamma/v/Read/ReadVariableOp3Adam/BatchNormalization0/beta/v/Read/ReadVariableOp'Adam/Conv1/kernel/v/Read/ReadVariableOp%Adam/Conv1/bias/v/Read/ReadVariableOp'Adam/Conv2/kernel/v/Read/ReadVariableOp%Adam/Conv2/bias/v/Read/ReadVariableOp4Adam/BatchNormalization1/gamma/v/Read/ReadVariableOp3Adam/BatchNormalization1/beta/v/Read/ReadVariableOp'Adam/Conv3/kernel/v/Read/ReadVariableOp%Adam/Conv3/bias/v/Read/ReadVariableOp(Adam/Dense0/kernel/v/Read/ReadVariableOp&Adam/Dense0/bias/v/Read/ReadVariableOp(Adam/Output/kernel/v/Read/ReadVariableOp&Adam/Output/bias/v/Read/ReadVariableOpConst*J
TinC
A2?	*
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
GPU 2J 8? *'
f"R 
__inference__traced_save_18594
?
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenameConv0/kernel
Conv0/biasBatchNormalization0/gammaBatchNormalization0/betaBatchNormalization0/moving_mean#BatchNormalization0/moving_varianceConv1/kernel
Conv1/biasConv2/kernel
Conv2/biasBatchNormalization1/gammaBatchNormalization1/betaBatchNormalization1/moving_mean#BatchNormalization1/moving_varianceConv3/kernel
Conv3/biasDense0/kernelDense0/biasOutput/kernelOutput/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratetotalcounttotal_1count_1Adam/Conv0/kernel/mAdam/Conv0/bias/m Adam/BatchNormalization0/gamma/mAdam/BatchNormalization0/beta/mAdam/Conv1/kernel/mAdam/Conv1/bias/mAdam/Conv2/kernel/mAdam/Conv2/bias/m Adam/BatchNormalization1/gamma/mAdam/BatchNormalization1/beta/mAdam/Conv3/kernel/mAdam/Conv3/bias/mAdam/Dense0/kernel/mAdam/Dense0/bias/mAdam/Output/kernel/mAdam/Output/bias/mAdam/Conv0/kernel/vAdam/Conv0/bias/v Adam/BatchNormalization0/gamma/vAdam/BatchNormalization0/beta/vAdam/Conv1/kernel/vAdam/Conv1/bias/vAdam/Conv2/kernel/vAdam/Conv2/bias/v Adam/BatchNormalization1/gamma/vAdam/BatchNormalization1/beta/vAdam/Conv3/kernel/vAdam/Conv3/bias/vAdam/Dense0/kernel/vAdam/Dense0/bias/vAdam/Output/kernel/vAdam/Output/bias/v*I
TinB
@2>*
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
GPU 2J 8? **
f%R#
!__inference__traced_restore_18787??
?
?
$__inference_Test_layer_call_fn_17194
input_layer!
unknown: 
	unknown_0: 
	unknown_1: 
	unknown_2: 
	unknown_3: 
	unknown_4: #
	unknown_5:  
	unknown_6: #
	unknown_7: @
	unknown_8:@
	unknown_9:@

unknown_10:@

unknown_11:@

unknown_12:@$

unknown_13:@@

unknown_14:@

unknown_15:
??

unknown_16:	?

unknown_17:	?+

unknown_18:+
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinput_layerunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18* 
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????+*6
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8? *H
fCRA
?__inference_Test_layer_call_and_return_conditional_losses_171512
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????+2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*V
_input_shapesE
C:?????????: : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:\ X
/
_output_shapes
:?????????
%
_user_specified_nameinput_layer
?
?
N__inference_BatchNormalization0_layer_call_and_return_conditional_losses_17011

inputs%
readvariableop_resource: '
readvariableop_1_resource: 6
(fusedbatchnormv3_readvariableop_resource: 8
*fusedbatchnormv3_readvariableop_1_resource: 
identity??FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
: *
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
: *
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:????????? : : : : :*
epsilon%o?:*
is_training( 2
FusedBatchNormV3?
IdentityIdentityFusedBatchNormV3:y:0 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*/
_output_shapes
:????????? 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:????????? : : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:W S
/
_output_shapes
:????????? 
 
_user_specified_nameinputs
?
?
N__inference_BatchNormalization1_layer_call_and_return_conditional_losses_18254

inputs%
readvariableop_resource:@'
readvariableop_1_resource:@6
(fusedbatchnormv3_readvariableop_resource:@8
*fusedbatchnormv3_readvariableop_1_resource:@
identity??AssignNewValue?AssignNewValue_1?FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:@*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:@*
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+???????????????????????????@:@:@:@:@:*
epsilon%o?:*
exponential_avg_factor%
?#<2
FusedBatchNormV3?
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype02
AssignNewValue?
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype02
AssignNewValue_1?
IdentityIdentityFusedBatchNormV3:y:0^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*A
_output_shapes/
-:+???????????????????????????@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+???????????????????????????@: : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+???????????????????????????@
 
_user_specified_nameinputs
?

?
A__inference_Dense0_layer_call_and_return_conditional_losses_18368

inputs2
matmul_readvariableop_resource:
??.
biasadd_readvariableop_resource:	?
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2	
BiasAddY
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:??????????2
Relu?
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
N__inference_BatchNormalization0_layer_call_and_return_conditional_losses_16716

inputs%
readvariableop_resource: '
readvariableop_1_resource: 6
(fusedbatchnormv3_readvariableop_resource: 8
*fusedbatchnormv3_readvariableop_1_resource: 
identity??FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
: *
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
: *
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+??????????????????????????? : : : : :*
epsilon%o?:*
is_training( 2
FusedBatchNormV3?
IdentityIdentityFusedBatchNormV3:y:0 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*A
_output_shapes/
-:+??????????????????????????? 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+??????????????????????????? : : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+??????????????????????????? 
 
_user_specified_nameinputs
?
?
#__inference_signature_wrapper_17727
input_layer!
unknown: 
	unknown_0: 
	unknown_1: 
	unknown_2: 
	unknown_3: 
	unknown_4: #
	unknown_5:  
	unknown_6: #
	unknown_7: @
	unknown_8:@
	unknown_9:@

unknown_10:@

unknown_11:@

unknown_12:@$

unknown_13:@@

unknown_14:@

unknown_15:
??

unknown_16:	?

unknown_17:	?+

unknown_18:+
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinput_layerunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18* 
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????+*6
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8? *)
f$R"
 __inference__wrapped_model_166942
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????+2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*V
_input_shapesE
C:?????????: : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:\ X
/
_output_shapes
:?????????
%
_user_specified_nameinput_layer
?
?
%__inference_Conv1_layer_call_fn_18135

inputs!
unknown:  
	unknown_0: 
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:????????? *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *I
fDRB
@__inference_Conv1_layer_call_and_return_conditional_losses_170322
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*/
_output_shapes
:????????? 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:????????? : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:????????? 
 
_user_specified_nameinputs
?
?
N__inference_BatchNormalization0_layer_call_and_return_conditional_losses_16760

inputs%
readvariableop_resource: '
readvariableop_1_resource: 6
(fusedbatchnormv3_readvariableop_resource: 8
*fusedbatchnormv3_readvariableop_1_resource: 
identity??AssignNewValue?AssignNewValue_1?FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
: *
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
: *
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+??????????????????????????? : : : : :*
epsilon%o?:*
exponential_avg_factor%
?#<2
FusedBatchNormV3?
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype02
AssignNewValue?
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype02
AssignNewValue_1?
IdentityIdentityFusedBatchNormV3:y:0^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*A
_output_shapes/
-:+??????????????????????????? 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+??????????????????????????? : : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+??????????????????????????? 
 
_user_specified_nameinputs
?
?
%__inference_Conv2_layer_call_fn_18155

inputs!
unknown: @
	unknown_0:@
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *I
fDRB
@__inference_Conv2_layer_call_and_return_conditional_losses_170502
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*/
_output_shapes
:?????????@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:????????? : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:????????? 
 
_user_specified_nameinputs
?{
?
?__inference_Test_layer_call_and_return_conditional_losses_17982

inputs>
$conv0_conv2d_readvariableop_resource: 3
%conv0_biasadd_readvariableop_resource: 9
+batchnormalization0_readvariableop_resource: ;
-batchnormalization0_readvariableop_1_resource: J
<batchnormalization0_fusedbatchnormv3_readvariableop_resource: L
>batchnormalization0_fusedbatchnormv3_readvariableop_1_resource: >
$conv1_conv2d_readvariableop_resource:  3
%conv1_biasadd_readvariableop_resource: >
$conv2_conv2d_readvariableop_resource: @3
%conv2_biasadd_readvariableop_resource:@9
+batchnormalization1_readvariableop_resource:@;
-batchnormalization1_readvariableop_1_resource:@J
<batchnormalization1_fusedbatchnormv3_readvariableop_resource:@L
>batchnormalization1_fusedbatchnormv3_readvariableop_1_resource:@>
$conv3_conv2d_readvariableop_resource:@@3
%conv3_biasadd_readvariableop_resource:@9
%dense0_matmul_readvariableop_resource:
??5
&dense0_biasadd_readvariableop_resource:	?8
%output_matmul_readvariableop_resource:	?+4
&output_biasadd_readvariableop_resource:+
identity??"BatchNormalization0/AssignNewValue?$BatchNormalization0/AssignNewValue_1?3BatchNormalization0/FusedBatchNormV3/ReadVariableOp?5BatchNormalization0/FusedBatchNormV3/ReadVariableOp_1?"BatchNormalization0/ReadVariableOp?$BatchNormalization0/ReadVariableOp_1?"BatchNormalization1/AssignNewValue?$BatchNormalization1/AssignNewValue_1?3BatchNormalization1/FusedBatchNormV3/ReadVariableOp?5BatchNormalization1/FusedBatchNormV3/ReadVariableOp_1?"BatchNormalization1/ReadVariableOp?$BatchNormalization1/ReadVariableOp_1?Conv0/BiasAdd/ReadVariableOp?Conv0/Conv2D/ReadVariableOp?Conv1/BiasAdd/ReadVariableOp?Conv1/Conv2D/ReadVariableOp?Conv2/BiasAdd/ReadVariableOp?Conv2/Conv2D/ReadVariableOp?Conv3/BiasAdd/ReadVariableOp?Conv3/Conv2D/ReadVariableOp?Dense0/BiasAdd/ReadVariableOp?Dense0/MatMul/ReadVariableOp?Output/BiasAdd/ReadVariableOp?Output/MatMul/ReadVariableOp?
Conv0/Conv2D/ReadVariableOpReadVariableOp$conv0_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype02
Conv0/Conv2D/ReadVariableOp?
Conv0/Conv2DConv2Dinputs#Conv0/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:????????? *
paddingSAME*
strides
2
Conv0/Conv2D?
Conv0/BiasAdd/ReadVariableOpReadVariableOp%conv0_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02
Conv0/BiasAdd/ReadVariableOp?
Conv0/BiasAddBiasAddConv0/Conv2D:output:0$Conv0/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:????????? 2
Conv0/BiasAddr

Conv0/ReluReluConv0/BiasAdd:output:0*
T0*/
_output_shapes
:????????? 2

Conv0/Relu?
"BatchNormalization0/ReadVariableOpReadVariableOp+batchnormalization0_readvariableop_resource*
_output_shapes
: *
dtype02$
"BatchNormalization0/ReadVariableOp?
$BatchNormalization0/ReadVariableOp_1ReadVariableOp-batchnormalization0_readvariableop_1_resource*
_output_shapes
: *
dtype02&
$BatchNormalization0/ReadVariableOp_1?
3BatchNormalization0/FusedBatchNormV3/ReadVariableOpReadVariableOp<batchnormalization0_fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype025
3BatchNormalization0/FusedBatchNormV3/ReadVariableOp?
5BatchNormalization0/FusedBatchNormV3/ReadVariableOp_1ReadVariableOp>batchnormalization0_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype027
5BatchNormalization0/FusedBatchNormV3/ReadVariableOp_1?
$BatchNormalization0/FusedBatchNormV3FusedBatchNormV3Conv0/Relu:activations:0*BatchNormalization0/ReadVariableOp:value:0,BatchNormalization0/ReadVariableOp_1:value:0;BatchNormalization0/FusedBatchNormV3/ReadVariableOp:value:0=BatchNormalization0/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:????????? : : : : :*
epsilon%o?:*
exponential_avg_factor%
?#<2&
$BatchNormalization0/FusedBatchNormV3?
"BatchNormalization0/AssignNewValueAssignVariableOp<batchnormalization0_fusedbatchnormv3_readvariableop_resource1BatchNormalization0/FusedBatchNormV3:batch_mean:04^BatchNormalization0/FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype02$
"BatchNormalization0/AssignNewValue?
$BatchNormalization0/AssignNewValue_1AssignVariableOp>batchnormalization0_fusedbatchnormv3_readvariableop_1_resource5BatchNormalization0/FusedBatchNormV3:batch_variance:06^BatchNormalization0/FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype02&
$BatchNormalization0/AssignNewValue_1?
Conv1/Conv2D/ReadVariableOpReadVariableOp$conv1_conv2d_readvariableop_resource*&
_output_shapes
:  *
dtype02
Conv1/Conv2D/ReadVariableOp?
Conv1/Conv2DConv2D(BatchNormalization0/FusedBatchNormV3:y:0#Conv1/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:????????? *
paddingSAME*
strides
2
Conv1/Conv2D?
Conv1/BiasAdd/ReadVariableOpReadVariableOp%conv1_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02
Conv1/BiasAdd/ReadVariableOp?
Conv1/BiasAddBiasAddConv1/Conv2D:output:0$Conv1/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:????????? 2
Conv1/BiasAddr

Conv1/ReluReluConv1/BiasAdd:output:0*
T0*/
_output_shapes
:????????? 2

Conv1/Relu?
MaxPool0/MaxPoolMaxPoolConv1/Relu:activations:0*/
_output_shapes
:????????? *
ksize
*
paddingVALID*
strides
2
MaxPool0/MaxPool?
Conv2/Conv2D/ReadVariableOpReadVariableOp$conv2_conv2d_readvariableop_resource*&
_output_shapes
: @*
dtype02
Conv2/Conv2D/ReadVariableOp?
Conv2/Conv2DConv2DMaxPool0/MaxPool:output:0#Conv2/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@*
paddingSAME*
strides
2
Conv2/Conv2D?
Conv2/BiasAdd/ReadVariableOpReadVariableOp%conv2_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
Conv2/BiasAdd/ReadVariableOp?
Conv2/BiasAddBiasAddConv2/Conv2D:output:0$Conv2/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@2
Conv2/BiasAddr

Conv2/ReluReluConv2/BiasAdd:output:0*
T0*/
_output_shapes
:?????????@2

Conv2/Relu?
"BatchNormalization1/ReadVariableOpReadVariableOp+batchnormalization1_readvariableop_resource*
_output_shapes
:@*
dtype02$
"BatchNormalization1/ReadVariableOp?
$BatchNormalization1/ReadVariableOp_1ReadVariableOp-batchnormalization1_readvariableop_1_resource*
_output_shapes
:@*
dtype02&
$BatchNormalization1/ReadVariableOp_1?
3BatchNormalization1/FusedBatchNormV3/ReadVariableOpReadVariableOp<batchnormalization1_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype025
3BatchNormalization1/FusedBatchNormV3/ReadVariableOp?
5BatchNormalization1/FusedBatchNormV3/ReadVariableOp_1ReadVariableOp>batchnormalization1_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype027
5BatchNormalization1/FusedBatchNormV3/ReadVariableOp_1?
$BatchNormalization1/FusedBatchNormV3FusedBatchNormV3Conv2/Relu:activations:0*BatchNormalization1/ReadVariableOp:value:0,BatchNormalization1/ReadVariableOp_1:value:0;BatchNormalization1/FusedBatchNormV3/ReadVariableOp:value:0=BatchNormalization1/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:?????????@:@:@:@:@:*
epsilon%o?:*
exponential_avg_factor%
?#<2&
$BatchNormalization1/FusedBatchNormV3?
"BatchNormalization1/AssignNewValueAssignVariableOp<batchnormalization1_fusedbatchnormv3_readvariableop_resource1BatchNormalization1/FusedBatchNormV3:batch_mean:04^BatchNormalization1/FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype02$
"BatchNormalization1/AssignNewValue?
$BatchNormalization1/AssignNewValue_1AssignVariableOp>batchnormalization1_fusedbatchnormv3_readvariableop_1_resource5BatchNormalization1/FusedBatchNormV3:batch_variance:06^BatchNormalization1/FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype02&
$BatchNormalization1/AssignNewValue_1?
Conv3/Conv2D/ReadVariableOpReadVariableOp$conv3_conv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype02
Conv3/Conv2D/ReadVariableOp?
Conv3/Conv2DConv2D(BatchNormalization1/FusedBatchNormV3:y:0#Conv3/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@*
paddingSAME*
strides
2
Conv3/Conv2D?
Conv3/BiasAdd/ReadVariableOpReadVariableOp%conv3_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
Conv3/BiasAdd/ReadVariableOp?
Conv3/BiasAddBiasAddConv3/Conv2D:output:0$Conv3/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@2
Conv3/BiasAddr

Conv3/ReluReluConv3/BiasAdd:output:0*
T0*/
_output_shapes
:?????????@2

Conv3/Relu?
MaxPool1/MaxPoolMaxPoolConv3/Relu:activations:0*/
_output_shapes
:?????????@*
ksize
*
paddingVALID*
strides
2
MaxPool1/MaxPoolo
Flatten/ConstConst*
_output_shapes
:*
dtype0*
valueB"????@  2
Flatten/Const?
Flatten/ReshapeReshapeMaxPool1/MaxPool:output:0Flatten/Const:output:0*
T0*(
_output_shapes
:??????????2
Flatten/Reshapes
Dropout/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
Dropout/dropout/Const?
Dropout/dropout/MulMulFlatten/Reshape:output:0Dropout/dropout/Const:output:0*
T0*(
_output_shapes
:??????????2
Dropout/dropout/Mulv
Dropout/dropout/ShapeShapeFlatten/Reshape:output:0*
T0*
_output_shapes
:2
Dropout/dropout/Shape?
,Dropout/dropout/random_uniform/RandomUniformRandomUniformDropout/dropout/Shape:output:0*
T0*(
_output_shapes
:??????????*
dtype02.
,Dropout/dropout/random_uniform/RandomUniform?
Dropout/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??L>2 
Dropout/dropout/GreaterEqual/y?
Dropout/dropout/GreaterEqualGreaterEqual5Dropout/dropout/random_uniform/RandomUniform:output:0'Dropout/dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:??????????2
Dropout/dropout/GreaterEqual?
Dropout/dropout/CastCast Dropout/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:??????????2
Dropout/dropout/Cast?
Dropout/dropout/Mul_1MulDropout/dropout/Mul:z:0Dropout/dropout/Cast:y:0*
T0*(
_output_shapes
:??????????2
Dropout/dropout/Mul_1?
Dense0/MatMul/ReadVariableOpReadVariableOp%dense0_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02
Dense0/MatMul/ReadVariableOp?
Dense0/MatMulMatMulDropout/dropout/Mul_1:z:0$Dense0/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
Dense0/MatMul?
Dense0/BiasAdd/ReadVariableOpReadVariableOp&dense0_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02
Dense0/BiasAdd/ReadVariableOp?
Dense0/BiasAddBiasAddDense0/MatMul:product:0%Dense0/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
Dense0/BiasAddn
Dense0/ReluReluDense0/BiasAdd:output:0*
T0*(
_output_shapes
:??????????2
Dense0/Relu?
Output/MatMul/ReadVariableOpReadVariableOp%output_matmul_readvariableop_resource*
_output_shapes
:	?+*
dtype02
Output/MatMul/ReadVariableOp?
Output/MatMulMatMulDense0/Relu:activations:0$Output/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????+2
Output/MatMul?
Output/BiasAdd/ReadVariableOpReadVariableOp&output_biasadd_readvariableop_resource*
_output_shapes
:+*
dtype02
Output/BiasAdd/ReadVariableOp?
Output/BiasAddBiasAddOutput/MatMul:product:0%Output/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????+2
Output/BiasAddv
Output/SoftmaxSoftmaxOutput/BiasAdd:output:0*
T0*'
_output_shapes
:?????????+2
Output/Softmax?
IdentityIdentityOutput/Softmax:softmax:0#^BatchNormalization0/AssignNewValue%^BatchNormalization0/AssignNewValue_14^BatchNormalization0/FusedBatchNormV3/ReadVariableOp6^BatchNormalization0/FusedBatchNormV3/ReadVariableOp_1#^BatchNormalization0/ReadVariableOp%^BatchNormalization0/ReadVariableOp_1#^BatchNormalization1/AssignNewValue%^BatchNormalization1/AssignNewValue_14^BatchNormalization1/FusedBatchNormV3/ReadVariableOp6^BatchNormalization1/FusedBatchNormV3/ReadVariableOp_1#^BatchNormalization1/ReadVariableOp%^BatchNormalization1/ReadVariableOp_1^Conv0/BiasAdd/ReadVariableOp^Conv0/Conv2D/ReadVariableOp^Conv1/BiasAdd/ReadVariableOp^Conv1/Conv2D/ReadVariableOp^Conv2/BiasAdd/ReadVariableOp^Conv2/Conv2D/ReadVariableOp^Conv3/BiasAdd/ReadVariableOp^Conv3/Conv2D/ReadVariableOp^Dense0/BiasAdd/ReadVariableOp^Dense0/MatMul/ReadVariableOp^Output/BiasAdd/ReadVariableOp^Output/MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????+2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*V
_input_shapesE
C:?????????: : : : : : : : : : : : : : : : : : : : 2H
"BatchNormalization0/AssignNewValue"BatchNormalization0/AssignNewValue2L
$BatchNormalization0/AssignNewValue_1$BatchNormalization0/AssignNewValue_12j
3BatchNormalization0/FusedBatchNormV3/ReadVariableOp3BatchNormalization0/FusedBatchNormV3/ReadVariableOp2n
5BatchNormalization0/FusedBatchNormV3/ReadVariableOp_15BatchNormalization0/FusedBatchNormV3/ReadVariableOp_12H
"BatchNormalization0/ReadVariableOp"BatchNormalization0/ReadVariableOp2L
$BatchNormalization0/ReadVariableOp_1$BatchNormalization0/ReadVariableOp_12H
"BatchNormalization1/AssignNewValue"BatchNormalization1/AssignNewValue2L
$BatchNormalization1/AssignNewValue_1$BatchNormalization1/AssignNewValue_12j
3BatchNormalization1/FusedBatchNormV3/ReadVariableOp3BatchNormalization1/FusedBatchNormV3/ReadVariableOp2n
5BatchNormalization1/FusedBatchNormV3/ReadVariableOp_15BatchNormalization1/FusedBatchNormV3/ReadVariableOp_12H
"BatchNormalization1/ReadVariableOp"BatchNormalization1/ReadVariableOp2L
$BatchNormalization1/ReadVariableOp_1$BatchNormalization1/ReadVariableOp_12<
Conv0/BiasAdd/ReadVariableOpConv0/BiasAdd/ReadVariableOp2:
Conv0/Conv2D/ReadVariableOpConv0/Conv2D/ReadVariableOp2<
Conv1/BiasAdd/ReadVariableOpConv1/BiasAdd/ReadVariableOp2:
Conv1/Conv2D/ReadVariableOpConv1/Conv2D/ReadVariableOp2<
Conv2/BiasAdd/ReadVariableOpConv2/BiasAdd/ReadVariableOp2:
Conv2/Conv2D/ReadVariableOpConv2/Conv2D/ReadVariableOp2<
Conv3/BiasAdd/ReadVariableOpConv3/BiasAdd/ReadVariableOp2:
Conv3/Conv2D/ReadVariableOpConv3/Conv2D/ReadVariableOp2>
Dense0/BiasAdd/ReadVariableOpDense0/BiasAdd/ReadVariableOp2<
Dense0/MatMul/ReadVariableOpDense0/MatMul/ReadVariableOp2>
Output/BiasAdd/ReadVariableOpOutput/BiasAdd/ReadVariableOp2<
Output/MatMul/ReadVariableOpOutput/MatMul/ReadVariableOp:W S
/
_output_shapes
:?????????
 
_user_specified_nameinputs
?
D
(__inference_MaxPool1_layer_call_fn_16970

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4????????????????????????????????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_MaxPool1_layer_call_and_return_conditional_losses_169642
PartitionedCall?
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4????????????????????????????????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4????????????????????????????????????:r n
J
_output_shapes8
6:4????????????????????????????????????
 
_user_specified_nameinputs
?
?
@__inference_Conv1_layer_call_and_return_conditional_losses_17032

inputs8
conv2d_readvariableop_resource:  -
biasadd_readvariableop_resource: 
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp?
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:  *
dtype02
Conv2D/ReadVariableOp?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:????????? *
paddingSAME*
strides
2
Conv2D?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:????????? 2	
BiasAdd`
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:????????? 2
Relu?
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*/
_output_shapes
:????????? 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:????????? : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:????????? 
 
_user_specified_nameinputs
?
?
3__inference_BatchNormalization0_layer_call_fn_18054

inputs
unknown: 
	unknown_0: 
	unknown_1: 
	unknown_2: 
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:????????? *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *W
fRRP
N__inference_BatchNormalization0_layer_call_and_return_conditional_losses_173502
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*/
_output_shapes
:????????? 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:????????? : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:????????? 
 
_user_specified_nameinputs
?
?
@__inference_Conv3_layer_call_and_return_conditional_losses_18310

inputs8
conv2d_readvariableop_resource:@@-
biasadd_readvariableop_resource:@
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp?
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype02
Conv2D/ReadVariableOp?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@*
paddingSAME*
strides
2
Conv2D?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@2	
BiasAdd`
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:?????????@2
Relu?
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*/
_output_shapes
:?????????@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:?????????@
 
_user_specified_nameinputs
?

?
A__inference_Output_layer_call_and_return_conditional_losses_17144

inputs1
matmul_readvariableop_resource:	?+-
biasadd_readvariableop_resource:+
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	?+*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????+2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:+*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????+2	
BiasAdda
SoftmaxSoftmaxBiasAdd:output:0*
T0*'
_output_shapes
:?????????+2	
Softmax?
IdentityIdentitySoftmax:softmax:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????+2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?;
?
?__inference_Test_layer_call_and_return_conditional_losses_17674
input_layer%
conv0_17621: 
conv0_17623: '
batchnormalization0_17626: '
batchnormalization0_17628: '
batchnormalization0_17630: '
batchnormalization0_17632: %
conv1_17635:  
conv1_17637: %
conv2_17641: @
conv2_17643:@'
batchnormalization1_17646:@'
batchnormalization1_17648:@'
batchnormalization1_17650:@'
batchnormalization1_17652:@%
conv3_17655:@@
conv3_17657:@ 
dense0_17663:
??
dense0_17665:	?
output_17668:	?+
output_17670:+
identity??+BatchNormalization0/StatefulPartitionedCall?+BatchNormalization1/StatefulPartitionedCall?Conv0/StatefulPartitionedCall?Conv1/StatefulPartitionedCall?Conv2/StatefulPartitionedCall?Conv3/StatefulPartitionedCall?Dense0/StatefulPartitionedCall?Dropout/StatefulPartitionedCall?Output/StatefulPartitionedCall?
Conv0/StatefulPartitionedCallStatefulPartitionedCallinput_layerconv0_17621conv0_17623*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:????????? *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *I
fDRB
@__inference_Conv0_layer_call_and_return_conditional_losses_169882
Conv0/StatefulPartitionedCall?
+BatchNormalization0/StatefulPartitionedCallStatefulPartitionedCall&Conv0/StatefulPartitionedCall:output:0batchnormalization0_17626batchnormalization0_17628batchnormalization0_17630batchnormalization0_17632*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:????????? *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *W
fRRP
N__inference_BatchNormalization0_layer_call_and_return_conditional_losses_173502-
+BatchNormalization0/StatefulPartitionedCall?
Conv1/StatefulPartitionedCallStatefulPartitionedCall4BatchNormalization0/StatefulPartitionedCall:output:0conv1_17635conv1_17637*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:????????? *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *I
fDRB
@__inference_Conv1_layer_call_and_return_conditional_losses_170322
Conv1/StatefulPartitionedCall?
MaxPool0/PartitionedCallPartitionedCall&Conv1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:????????? * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_MaxPool0_layer_call_and_return_conditional_losses_168262
MaxPool0/PartitionedCall?
Conv2/StatefulPartitionedCallStatefulPartitionedCall!MaxPool0/PartitionedCall:output:0conv2_17641conv2_17643*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *I
fDRB
@__inference_Conv2_layer_call_and_return_conditional_losses_170502
Conv2/StatefulPartitionedCall?
+BatchNormalization1/StatefulPartitionedCallStatefulPartitionedCall&Conv2/StatefulPartitionedCall:output:0batchnormalization1_17646batchnormalization1_17648batchnormalization1_17650batchnormalization1_17652*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *W
fRRP
N__inference_BatchNormalization1_layer_call_and_return_conditional_losses_172862-
+BatchNormalization1/StatefulPartitionedCall?
Conv3/StatefulPartitionedCallStatefulPartitionedCall4BatchNormalization1/StatefulPartitionedCall:output:0conv3_17655conv3_17657*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *I
fDRB
@__inference_Conv3_layer_call_and_return_conditional_losses_170942
Conv3/StatefulPartitionedCall?
MaxPool1/PartitionedCallPartitionedCall&Conv3/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_MaxPool1_layer_call_and_return_conditional_losses_169642
MaxPool1/PartitionedCall?
Flatten/PartitionedCallPartitionedCall!MaxPool1/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *K
fFRD
B__inference_Flatten_layer_call_and_return_conditional_losses_171072
Flatten/PartitionedCall?
Dropout/StatefulPartitionedCallStatefulPartitionedCall Flatten/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *K
fFRD
B__inference_Dropout_layer_call_and_return_conditional_losses_172342!
Dropout/StatefulPartitionedCall?
Dense0/StatefulPartitionedCallStatefulPartitionedCall(Dropout/StatefulPartitionedCall:output:0dense0_17663dense0_17665*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *J
fERC
A__inference_Dense0_layer_call_and_return_conditional_losses_171272 
Dense0/StatefulPartitionedCall?
Output/StatefulPartitionedCallStatefulPartitionedCall'Dense0/StatefulPartitionedCall:output:0output_17668output_17670*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????+*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *J
fERC
A__inference_Output_layer_call_and_return_conditional_losses_171442 
Output/StatefulPartitionedCall?
IdentityIdentity'Output/StatefulPartitionedCall:output:0,^BatchNormalization0/StatefulPartitionedCall,^BatchNormalization1/StatefulPartitionedCall^Conv0/StatefulPartitionedCall^Conv1/StatefulPartitionedCall^Conv2/StatefulPartitionedCall^Conv3/StatefulPartitionedCall^Dense0/StatefulPartitionedCall ^Dropout/StatefulPartitionedCall^Output/StatefulPartitionedCall*
T0*'
_output_shapes
:?????????+2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*V
_input_shapesE
C:?????????: : : : : : : : : : : : : : : : : : : : 2Z
+BatchNormalization0/StatefulPartitionedCall+BatchNormalization0/StatefulPartitionedCall2Z
+BatchNormalization1/StatefulPartitionedCall+BatchNormalization1/StatefulPartitionedCall2>
Conv0/StatefulPartitionedCallConv0/StatefulPartitionedCall2>
Conv1/StatefulPartitionedCallConv1/StatefulPartitionedCall2>
Conv2/StatefulPartitionedCallConv2/StatefulPartitionedCall2>
Conv3/StatefulPartitionedCallConv3/StatefulPartitionedCall2@
Dense0/StatefulPartitionedCallDense0/StatefulPartitionedCall2B
Dropout/StatefulPartitionedCallDropout/StatefulPartitionedCall2@
Output/StatefulPartitionedCallOutput/StatefulPartitionedCall:\ X
/
_output_shapes
:?????????
%
_user_specified_nameinput_layer
?
a
B__inference_Dropout_layer_call_and_return_conditional_losses_17234

inputs
identity?c
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
dropout/Constt
dropout/MulMulinputsdropout/Const:output:0*
T0*(
_output_shapes
:??????????2
dropout/MulT
dropout/ShapeShapeinputs*
T0*
_output_shapes
:2
dropout/Shape?
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*(
_output_shapes
:??????????*
dtype02&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??L>2
dropout/GreaterEqual/y?
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:??????????2
dropout/GreaterEqual?
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:??????????2
dropout/Cast{
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*(
_output_shapes
:??????????2
dropout/Mul_1f
IdentityIdentitydropout/Mul_1:z:0*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:??????????:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
&__inference_Dense0_layer_call_fn_18357

inputs
unknown:
??
	unknown_0:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *J
fERC
A__inference_Dense0_layer_call_and_return_conditional_losses_171272
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
N__inference_BatchNormalization1_layer_call_and_return_conditional_losses_16854

inputs%
readvariableop_resource:@'
readvariableop_1_resource:@6
(fusedbatchnormv3_readvariableop_resource:@8
*fusedbatchnormv3_readvariableop_1_resource:@
identity??FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:@*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:@*
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+???????????????????????????@:@:@:@:@:*
epsilon%o?:*
is_training( 2
FusedBatchNormV3?
IdentityIdentityFusedBatchNormV3:y:0 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*A
_output_shapes/
-:+???????????????????????????@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+???????????????????????????@: : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+???????????????????????????@
 
_user_specified_nameinputs
?
C
'__inference_Flatten_layer_call_fn_18315

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *K
fFRD
B__inference_Flatten_layer_call_and_return_conditional_losses_171072
PartitionedCallm
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????@:W S
/
_output_shapes
:?????????@
 
_user_specified_nameinputs
?
?
N__inference_BatchNormalization0_layer_call_and_return_conditional_losses_18090

inputs%
readvariableop_resource: '
readvariableop_1_resource: 6
(fusedbatchnormv3_readvariableop_resource: 8
*fusedbatchnormv3_readvariableop_1_resource: 
identity??AssignNewValue?AssignNewValue_1?FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
: *
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
: *
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+??????????????????????????? : : : : :*
epsilon%o?:*
exponential_avg_factor%
?#<2
FusedBatchNormV3?
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype02
AssignNewValue?
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype02
AssignNewValue_1?
IdentityIdentityFusedBatchNormV3:y:0^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*A
_output_shapes/
-:+??????????????????????????? 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+??????????????????????????? : : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+??????????????????????????? 
 
_user_specified_nameinputs
?d
?
?__inference_Test_layer_call_and_return_conditional_losses_17896

inputs>
$conv0_conv2d_readvariableop_resource: 3
%conv0_biasadd_readvariableop_resource: 9
+batchnormalization0_readvariableop_resource: ;
-batchnormalization0_readvariableop_1_resource: J
<batchnormalization0_fusedbatchnormv3_readvariableop_resource: L
>batchnormalization0_fusedbatchnormv3_readvariableop_1_resource: >
$conv1_conv2d_readvariableop_resource:  3
%conv1_biasadd_readvariableop_resource: >
$conv2_conv2d_readvariableop_resource: @3
%conv2_biasadd_readvariableop_resource:@9
+batchnormalization1_readvariableop_resource:@;
-batchnormalization1_readvariableop_1_resource:@J
<batchnormalization1_fusedbatchnormv3_readvariableop_resource:@L
>batchnormalization1_fusedbatchnormv3_readvariableop_1_resource:@>
$conv3_conv2d_readvariableop_resource:@@3
%conv3_biasadd_readvariableop_resource:@9
%dense0_matmul_readvariableop_resource:
??5
&dense0_biasadd_readvariableop_resource:	?8
%output_matmul_readvariableop_resource:	?+4
&output_biasadd_readvariableop_resource:+
identity??3BatchNormalization0/FusedBatchNormV3/ReadVariableOp?5BatchNormalization0/FusedBatchNormV3/ReadVariableOp_1?"BatchNormalization0/ReadVariableOp?$BatchNormalization0/ReadVariableOp_1?3BatchNormalization1/FusedBatchNormV3/ReadVariableOp?5BatchNormalization1/FusedBatchNormV3/ReadVariableOp_1?"BatchNormalization1/ReadVariableOp?$BatchNormalization1/ReadVariableOp_1?Conv0/BiasAdd/ReadVariableOp?Conv0/Conv2D/ReadVariableOp?Conv1/BiasAdd/ReadVariableOp?Conv1/Conv2D/ReadVariableOp?Conv2/BiasAdd/ReadVariableOp?Conv2/Conv2D/ReadVariableOp?Conv3/BiasAdd/ReadVariableOp?Conv3/Conv2D/ReadVariableOp?Dense0/BiasAdd/ReadVariableOp?Dense0/MatMul/ReadVariableOp?Output/BiasAdd/ReadVariableOp?Output/MatMul/ReadVariableOp?
Conv0/Conv2D/ReadVariableOpReadVariableOp$conv0_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype02
Conv0/Conv2D/ReadVariableOp?
Conv0/Conv2DConv2Dinputs#Conv0/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:????????? *
paddingSAME*
strides
2
Conv0/Conv2D?
Conv0/BiasAdd/ReadVariableOpReadVariableOp%conv0_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02
Conv0/BiasAdd/ReadVariableOp?
Conv0/BiasAddBiasAddConv0/Conv2D:output:0$Conv0/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:????????? 2
Conv0/BiasAddr

Conv0/ReluReluConv0/BiasAdd:output:0*
T0*/
_output_shapes
:????????? 2

Conv0/Relu?
"BatchNormalization0/ReadVariableOpReadVariableOp+batchnormalization0_readvariableop_resource*
_output_shapes
: *
dtype02$
"BatchNormalization0/ReadVariableOp?
$BatchNormalization0/ReadVariableOp_1ReadVariableOp-batchnormalization0_readvariableop_1_resource*
_output_shapes
: *
dtype02&
$BatchNormalization0/ReadVariableOp_1?
3BatchNormalization0/FusedBatchNormV3/ReadVariableOpReadVariableOp<batchnormalization0_fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype025
3BatchNormalization0/FusedBatchNormV3/ReadVariableOp?
5BatchNormalization0/FusedBatchNormV3/ReadVariableOp_1ReadVariableOp>batchnormalization0_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype027
5BatchNormalization0/FusedBatchNormV3/ReadVariableOp_1?
$BatchNormalization0/FusedBatchNormV3FusedBatchNormV3Conv0/Relu:activations:0*BatchNormalization0/ReadVariableOp:value:0,BatchNormalization0/ReadVariableOp_1:value:0;BatchNormalization0/FusedBatchNormV3/ReadVariableOp:value:0=BatchNormalization0/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:????????? : : : : :*
epsilon%o?:*
is_training( 2&
$BatchNormalization0/FusedBatchNormV3?
Conv1/Conv2D/ReadVariableOpReadVariableOp$conv1_conv2d_readvariableop_resource*&
_output_shapes
:  *
dtype02
Conv1/Conv2D/ReadVariableOp?
Conv1/Conv2DConv2D(BatchNormalization0/FusedBatchNormV3:y:0#Conv1/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:????????? *
paddingSAME*
strides
2
Conv1/Conv2D?
Conv1/BiasAdd/ReadVariableOpReadVariableOp%conv1_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02
Conv1/BiasAdd/ReadVariableOp?
Conv1/BiasAddBiasAddConv1/Conv2D:output:0$Conv1/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:????????? 2
Conv1/BiasAddr

Conv1/ReluReluConv1/BiasAdd:output:0*
T0*/
_output_shapes
:????????? 2

Conv1/Relu?
MaxPool0/MaxPoolMaxPoolConv1/Relu:activations:0*/
_output_shapes
:????????? *
ksize
*
paddingVALID*
strides
2
MaxPool0/MaxPool?
Conv2/Conv2D/ReadVariableOpReadVariableOp$conv2_conv2d_readvariableop_resource*&
_output_shapes
: @*
dtype02
Conv2/Conv2D/ReadVariableOp?
Conv2/Conv2DConv2DMaxPool0/MaxPool:output:0#Conv2/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@*
paddingSAME*
strides
2
Conv2/Conv2D?
Conv2/BiasAdd/ReadVariableOpReadVariableOp%conv2_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
Conv2/BiasAdd/ReadVariableOp?
Conv2/BiasAddBiasAddConv2/Conv2D:output:0$Conv2/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@2
Conv2/BiasAddr

Conv2/ReluReluConv2/BiasAdd:output:0*
T0*/
_output_shapes
:?????????@2

Conv2/Relu?
"BatchNormalization1/ReadVariableOpReadVariableOp+batchnormalization1_readvariableop_resource*
_output_shapes
:@*
dtype02$
"BatchNormalization1/ReadVariableOp?
$BatchNormalization1/ReadVariableOp_1ReadVariableOp-batchnormalization1_readvariableop_1_resource*
_output_shapes
:@*
dtype02&
$BatchNormalization1/ReadVariableOp_1?
3BatchNormalization1/FusedBatchNormV3/ReadVariableOpReadVariableOp<batchnormalization1_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype025
3BatchNormalization1/FusedBatchNormV3/ReadVariableOp?
5BatchNormalization1/FusedBatchNormV3/ReadVariableOp_1ReadVariableOp>batchnormalization1_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype027
5BatchNormalization1/FusedBatchNormV3/ReadVariableOp_1?
$BatchNormalization1/FusedBatchNormV3FusedBatchNormV3Conv2/Relu:activations:0*BatchNormalization1/ReadVariableOp:value:0,BatchNormalization1/ReadVariableOp_1:value:0;BatchNormalization1/FusedBatchNormV3/ReadVariableOp:value:0=BatchNormalization1/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:?????????@:@:@:@:@:*
epsilon%o?:*
is_training( 2&
$BatchNormalization1/FusedBatchNormV3?
Conv3/Conv2D/ReadVariableOpReadVariableOp$conv3_conv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype02
Conv3/Conv2D/ReadVariableOp?
Conv3/Conv2DConv2D(BatchNormalization1/FusedBatchNormV3:y:0#Conv3/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@*
paddingSAME*
strides
2
Conv3/Conv2D?
Conv3/BiasAdd/ReadVariableOpReadVariableOp%conv3_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
Conv3/BiasAdd/ReadVariableOp?
Conv3/BiasAddBiasAddConv3/Conv2D:output:0$Conv3/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@2
Conv3/BiasAddr

Conv3/ReluReluConv3/BiasAdd:output:0*
T0*/
_output_shapes
:?????????@2

Conv3/Relu?
MaxPool1/MaxPoolMaxPoolConv3/Relu:activations:0*/
_output_shapes
:?????????@*
ksize
*
paddingVALID*
strides
2
MaxPool1/MaxPoolo
Flatten/ConstConst*
_output_shapes
:*
dtype0*
valueB"????@  2
Flatten/Const?
Flatten/ReshapeReshapeMaxPool1/MaxPool:output:0Flatten/Const:output:0*
T0*(
_output_shapes
:??????????2
Flatten/Reshape}
Dropout/IdentityIdentityFlatten/Reshape:output:0*
T0*(
_output_shapes
:??????????2
Dropout/Identity?
Dense0/MatMul/ReadVariableOpReadVariableOp%dense0_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02
Dense0/MatMul/ReadVariableOp?
Dense0/MatMulMatMulDropout/Identity:output:0$Dense0/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
Dense0/MatMul?
Dense0/BiasAdd/ReadVariableOpReadVariableOp&dense0_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02
Dense0/BiasAdd/ReadVariableOp?
Dense0/BiasAddBiasAddDense0/MatMul:product:0%Dense0/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
Dense0/BiasAddn
Dense0/ReluReluDense0/BiasAdd:output:0*
T0*(
_output_shapes
:??????????2
Dense0/Relu?
Output/MatMul/ReadVariableOpReadVariableOp%output_matmul_readvariableop_resource*
_output_shapes
:	?+*
dtype02
Output/MatMul/ReadVariableOp?
Output/MatMulMatMulDense0/Relu:activations:0$Output/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????+2
Output/MatMul?
Output/BiasAdd/ReadVariableOpReadVariableOp&output_biasadd_readvariableop_resource*
_output_shapes
:+*
dtype02
Output/BiasAdd/ReadVariableOp?
Output/BiasAddBiasAddOutput/MatMul:product:0%Output/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????+2
Output/BiasAddv
Output/SoftmaxSoftmaxOutput/BiasAdd:output:0*
T0*'
_output_shapes
:?????????+2
Output/Softmax?
IdentityIdentityOutput/Softmax:softmax:04^BatchNormalization0/FusedBatchNormV3/ReadVariableOp6^BatchNormalization0/FusedBatchNormV3/ReadVariableOp_1#^BatchNormalization0/ReadVariableOp%^BatchNormalization0/ReadVariableOp_14^BatchNormalization1/FusedBatchNormV3/ReadVariableOp6^BatchNormalization1/FusedBatchNormV3/ReadVariableOp_1#^BatchNormalization1/ReadVariableOp%^BatchNormalization1/ReadVariableOp_1^Conv0/BiasAdd/ReadVariableOp^Conv0/Conv2D/ReadVariableOp^Conv1/BiasAdd/ReadVariableOp^Conv1/Conv2D/ReadVariableOp^Conv2/BiasAdd/ReadVariableOp^Conv2/Conv2D/ReadVariableOp^Conv3/BiasAdd/ReadVariableOp^Conv3/Conv2D/ReadVariableOp^Dense0/BiasAdd/ReadVariableOp^Dense0/MatMul/ReadVariableOp^Output/BiasAdd/ReadVariableOp^Output/MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????+2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*V
_input_shapesE
C:?????????: : : : : : : : : : : : : : : : : : : : 2j
3BatchNormalization0/FusedBatchNormV3/ReadVariableOp3BatchNormalization0/FusedBatchNormV3/ReadVariableOp2n
5BatchNormalization0/FusedBatchNormV3/ReadVariableOp_15BatchNormalization0/FusedBatchNormV3/ReadVariableOp_12H
"BatchNormalization0/ReadVariableOp"BatchNormalization0/ReadVariableOp2L
$BatchNormalization0/ReadVariableOp_1$BatchNormalization0/ReadVariableOp_12j
3BatchNormalization1/FusedBatchNormV3/ReadVariableOp3BatchNormalization1/FusedBatchNormV3/ReadVariableOp2n
5BatchNormalization1/FusedBatchNormV3/ReadVariableOp_15BatchNormalization1/FusedBatchNormV3/ReadVariableOp_12H
"BatchNormalization1/ReadVariableOp"BatchNormalization1/ReadVariableOp2L
$BatchNormalization1/ReadVariableOp_1$BatchNormalization1/ReadVariableOp_12<
Conv0/BiasAdd/ReadVariableOpConv0/BiasAdd/ReadVariableOp2:
Conv0/Conv2D/ReadVariableOpConv0/Conv2D/ReadVariableOp2<
Conv1/BiasAdd/ReadVariableOpConv1/BiasAdd/ReadVariableOp2:
Conv1/Conv2D/ReadVariableOpConv1/Conv2D/ReadVariableOp2<
Conv2/BiasAdd/ReadVariableOpConv2/BiasAdd/ReadVariableOp2:
Conv2/Conv2D/ReadVariableOpConv2/Conv2D/ReadVariableOp2<
Conv3/BiasAdd/ReadVariableOpConv3/BiasAdd/ReadVariableOp2:
Conv3/Conv2D/ReadVariableOpConv3/Conv2D/ReadVariableOp2>
Dense0/BiasAdd/ReadVariableOpDense0/BiasAdd/ReadVariableOp2<
Dense0/MatMul/ReadVariableOpDense0/MatMul/ReadVariableOp2>
Output/BiasAdd/ReadVariableOpOutput/BiasAdd/ReadVariableOp2<
Output/MatMul/ReadVariableOpOutput/MatMul/ReadVariableOp:W S
/
_output_shapes
:?????????
 
_user_specified_nameinputs
?
D
(__inference_MaxPool0_layer_call_fn_16832

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4????????????????????????????????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_MaxPool0_layer_call_and_return_conditional_losses_168262
PartitionedCall?
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4????????????????????????????????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4????????????????????????????????????:r n
J
_output_shapes8
6:4????????????????????????????????????
 
_user_specified_nameinputs
?
?
$__inference_Test_layer_call_fn_17772

inputs!
unknown: 
	unknown_0: 
	unknown_1: 
	unknown_2: 
	unknown_3: 
	unknown_4: #
	unknown_5:  
	unknown_6: #
	unknown_7: @
	unknown_8:@
	unknown_9:@

unknown_10:@

unknown_11:@

unknown_12:@$

unknown_13:@@

unknown_14:@

unknown_15:
??

unknown_16:	?

unknown_17:	?+

unknown_18:+
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18* 
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????+*6
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8? *H
fCRA
?__inference_Test_layer_call_and_return_conditional_losses_171512
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????+2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*V
_input_shapesE
C:?????????: : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
N__inference_BatchNormalization0_layer_call_and_return_conditional_losses_18072

inputs%
readvariableop_resource: '
readvariableop_1_resource: 6
(fusedbatchnormv3_readvariableop_resource: 8
*fusedbatchnormv3_readvariableop_1_resource: 
identity??FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
: *
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
: *
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+??????????????????????????? : : : : :*
epsilon%o?:*
is_training( 2
FusedBatchNormV3?
IdentityIdentityFusedBatchNormV3:y:0 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*A
_output_shapes/
-:+??????????????????????????? 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+??????????????????????????? : : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+??????????????????????????? 
 
_user_specified_nameinputs
?
`
B__inference_Dropout_layer_call_and_return_conditional_losses_17114

inputs

identity_1[
IdentityIdentityinputs*
T0*(
_output_shapes
:??????????2

Identityj

Identity_1IdentityIdentity:output:0*
T0*(
_output_shapes
:??????????2

Identity_1"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:??????????:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
%__inference_Conv3_layer_call_fn_18299

inputs!
unknown:@@
	unknown_0:@
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *I
fDRB
@__inference_Conv3_layer_call_and_return_conditional_losses_170942
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*/
_output_shapes
:?????????@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????@: : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:?????????@
 
_user_specified_nameinputs
?:
?
?__inference_Test_layer_call_and_return_conditional_losses_17618
input_layer%
conv0_17565: 
conv0_17567: '
batchnormalization0_17570: '
batchnormalization0_17572: '
batchnormalization0_17574: '
batchnormalization0_17576: %
conv1_17579:  
conv1_17581: %
conv2_17585: @
conv2_17587:@'
batchnormalization1_17590:@'
batchnormalization1_17592:@'
batchnormalization1_17594:@'
batchnormalization1_17596:@%
conv3_17599:@@
conv3_17601:@ 
dense0_17607:
??
dense0_17609:	?
output_17612:	?+
output_17614:+
identity??+BatchNormalization0/StatefulPartitionedCall?+BatchNormalization1/StatefulPartitionedCall?Conv0/StatefulPartitionedCall?Conv1/StatefulPartitionedCall?Conv2/StatefulPartitionedCall?Conv3/StatefulPartitionedCall?Dense0/StatefulPartitionedCall?Output/StatefulPartitionedCall?
Conv0/StatefulPartitionedCallStatefulPartitionedCallinput_layerconv0_17565conv0_17567*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:????????? *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *I
fDRB
@__inference_Conv0_layer_call_and_return_conditional_losses_169882
Conv0/StatefulPartitionedCall?
+BatchNormalization0/StatefulPartitionedCallStatefulPartitionedCall&Conv0/StatefulPartitionedCall:output:0batchnormalization0_17570batchnormalization0_17572batchnormalization0_17574batchnormalization0_17576*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:????????? *&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *W
fRRP
N__inference_BatchNormalization0_layer_call_and_return_conditional_losses_170112-
+BatchNormalization0/StatefulPartitionedCall?
Conv1/StatefulPartitionedCallStatefulPartitionedCall4BatchNormalization0/StatefulPartitionedCall:output:0conv1_17579conv1_17581*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:????????? *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *I
fDRB
@__inference_Conv1_layer_call_and_return_conditional_losses_170322
Conv1/StatefulPartitionedCall?
MaxPool0/PartitionedCallPartitionedCall&Conv1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:????????? * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_MaxPool0_layer_call_and_return_conditional_losses_168262
MaxPool0/PartitionedCall?
Conv2/StatefulPartitionedCallStatefulPartitionedCall!MaxPool0/PartitionedCall:output:0conv2_17585conv2_17587*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *I
fDRB
@__inference_Conv2_layer_call_and_return_conditional_losses_170502
Conv2/StatefulPartitionedCall?
+BatchNormalization1/StatefulPartitionedCallStatefulPartitionedCall&Conv2/StatefulPartitionedCall:output:0batchnormalization1_17590batchnormalization1_17592batchnormalization1_17594batchnormalization1_17596*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *W
fRRP
N__inference_BatchNormalization1_layer_call_and_return_conditional_losses_170732-
+BatchNormalization1/StatefulPartitionedCall?
Conv3/StatefulPartitionedCallStatefulPartitionedCall4BatchNormalization1/StatefulPartitionedCall:output:0conv3_17599conv3_17601*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *I
fDRB
@__inference_Conv3_layer_call_and_return_conditional_losses_170942
Conv3/StatefulPartitionedCall?
MaxPool1/PartitionedCallPartitionedCall&Conv3/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_MaxPool1_layer_call_and_return_conditional_losses_169642
MaxPool1/PartitionedCall?
Flatten/PartitionedCallPartitionedCall!MaxPool1/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *K
fFRD
B__inference_Flatten_layer_call_and_return_conditional_losses_171072
Flatten/PartitionedCall?
Dropout/PartitionedCallPartitionedCall Flatten/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *K
fFRD
B__inference_Dropout_layer_call_and_return_conditional_losses_171142
Dropout/PartitionedCall?
Dense0/StatefulPartitionedCallStatefulPartitionedCall Dropout/PartitionedCall:output:0dense0_17607dense0_17609*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *J
fERC
A__inference_Dense0_layer_call_and_return_conditional_losses_171272 
Dense0/StatefulPartitionedCall?
Output/StatefulPartitionedCallStatefulPartitionedCall'Dense0/StatefulPartitionedCall:output:0output_17612output_17614*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????+*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *J
fERC
A__inference_Output_layer_call_and_return_conditional_losses_171442 
Output/StatefulPartitionedCall?
IdentityIdentity'Output/StatefulPartitionedCall:output:0,^BatchNormalization0/StatefulPartitionedCall,^BatchNormalization1/StatefulPartitionedCall^Conv0/StatefulPartitionedCall^Conv1/StatefulPartitionedCall^Conv2/StatefulPartitionedCall^Conv3/StatefulPartitionedCall^Dense0/StatefulPartitionedCall^Output/StatefulPartitionedCall*
T0*'
_output_shapes
:?????????+2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*V
_input_shapesE
C:?????????: : : : : : : : : : : : : : : : : : : : 2Z
+BatchNormalization0/StatefulPartitionedCall+BatchNormalization0/StatefulPartitionedCall2Z
+BatchNormalization1/StatefulPartitionedCall+BatchNormalization1/StatefulPartitionedCall2>
Conv0/StatefulPartitionedCallConv0/StatefulPartitionedCall2>
Conv1/StatefulPartitionedCallConv1/StatefulPartitionedCall2>
Conv2/StatefulPartitionedCallConv2/StatefulPartitionedCall2>
Conv3/StatefulPartitionedCallConv3/StatefulPartitionedCall2@
Dense0/StatefulPartitionedCallDense0/StatefulPartitionedCall2@
Output/StatefulPartitionedCallOutput/StatefulPartitionedCall:\ X
/
_output_shapes
:?????????
%
_user_specified_nameinput_layer
?
C
'__inference_Dropout_layer_call_fn_18326

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *K
fFRD
B__inference_Dropout_layer_call_and_return_conditional_losses_171142
PartitionedCallm
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:??????????:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
N__inference_BatchNormalization1_layer_call_and_return_conditional_losses_17073

inputs%
readvariableop_resource:@'
readvariableop_1_resource:@6
(fusedbatchnormv3_readvariableop_resource:@8
*fusedbatchnormv3_readvariableop_1_resource:@
identity??FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:@*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:@*
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:?????????@:@:@:@:@:*
epsilon%o?:*
is_training( 2
FusedBatchNormV3?
IdentityIdentityFusedBatchNormV3:y:0 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*/
_output_shapes
:?????????@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:?????????@: : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:W S
/
_output_shapes
:?????????@
 
_user_specified_nameinputs
?
?
N__inference_BatchNormalization1_layer_call_and_return_conditional_losses_17286

inputs%
readvariableop_resource:@'
readvariableop_1_resource:@6
(fusedbatchnormv3_readvariableop_resource:@8
*fusedbatchnormv3_readvariableop_1_resource:@
identity??AssignNewValue?AssignNewValue_1?FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:@*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:@*
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:?????????@:@:@:@:@:*
epsilon%o?:*
exponential_avg_factor%
?#<2
FusedBatchNormV3?
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype02
AssignNewValue?
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype02
AssignNewValue_1?
IdentityIdentityFusedBatchNormV3:y:0^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*/
_output_shapes
:?????????@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:?????????@: : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:W S
/
_output_shapes
:?????????@
 
_user_specified_nameinputs
?
?
N__inference_BatchNormalization0_layer_call_and_return_conditional_losses_18126

inputs%
readvariableop_resource: '
readvariableop_1_resource: 6
(fusedbatchnormv3_readvariableop_resource: 8
*fusedbatchnormv3_readvariableop_1_resource: 
identity??AssignNewValue?AssignNewValue_1?FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
: *
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
: *
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:????????? : : : : :*
epsilon%o?:*
exponential_avg_factor%
?#<2
FusedBatchNormV3?
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype02
AssignNewValue?
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype02
AssignNewValue_1?
IdentityIdentityFusedBatchNormV3:y:0^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*/
_output_shapes
:????????? 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:????????? : : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:W S
/
_output_shapes
:????????? 
 
_user_specified_nameinputs
?
?
&__inference_Output_layer_call_fn_18377

inputs
unknown:	?+
	unknown_0:+
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????+*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *J
fERC
A__inference_Output_layer_call_and_return_conditional_losses_171442
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????+2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
3__inference_BatchNormalization0_layer_call_fn_18028

inputs
unknown: 
	unknown_0: 
	unknown_1: 
	unknown_2: 
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+??????????????????????????? *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *W
fRRP
N__inference_BatchNormalization0_layer_call_and_return_conditional_losses_167602
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*A
_output_shapes/
-:+??????????????????????????? 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+??????????????????????????? : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+??????????????????????????? 
 
_user_specified_nameinputs
?
_
C__inference_MaxPool0_layer_call_and_return_conditional_losses_16826

inputs
identity?
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4????????????????????????????????????*
ksize
*
paddingVALID*
strides
2	
MaxPool?
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4????????????????????????????????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4????????????????????????????????????:r n
J
_output_shapes8
6:4????????????????????????????????????
 
_user_specified_nameinputs
?
?
3__inference_BatchNormalization0_layer_call_fn_18041

inputs
unknown: 
	unknown_0: 
	unknown_1: 
	unknown_2: 
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:????????? *&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *W
fRRP
N__inference_BatchNormalization0_layer_call_and_return_conditional_losses_170112
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*/
_output_shapes
:????????? 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:????????? : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:????????? 
 
_user_specified_nameinputs
?
?
@__inference_Conv0_layer_call_and_return_conditional_losses_18002

inputs8
conv2d_readvariableop_resource: -
biasadd_readvariableop_resource: 
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp?
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: *
dtype02
Conv2D/ReadVariableOp?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:????????? *
paddingSAME*
strides
2
Conv2D?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:????????? 2	
BiasAdd`
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:????????? 2
Relu?
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*/
_output_shapes
:????????? 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
N__inference_BatchNormalization0_layer_call_and_return_conditional_losses_18108

inputs%
readvariableop_resource: '
readvariableop_1_resource: 6
(fusedbatchnormv3_readvariableop_resource: 8
*fusedbatchnormv3_readvariableop_1_resource: 
identity??FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
: *
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
: *
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:????????? : : : : :*
epsilon%o?:*
is_training( 2
FusedBatchNormV3?
IdentityIdentityFusedBatchNormV3:y:0 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*/
_output_shapes
:????????? 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:????????? : : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:W S
/
_output_shapes
:????????? 
 
_user_specified_nameinputs
?
`
'__inference_Dropout_layer_call_fn_18331

inputs
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *K
fFRD
B__inference_Dropout_layer_call_and_return_conditional_losses_172342
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:??????????22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
??
?&
!__inference__traced_restore_18787
file_prefix7
assignvariableop_conv0_kernel: +
assignvariableop_1_conv0_bias: :
,assignvariableop_2_batchnormalization0_gamma: 9
+assignvariableop_3_batchnormalization0_beta: @
2assignvariableop_4_batchnormalization0_moving_mean: D
6assignvariableop_5_batchnormalization0_moving_variance: 9
assignvariableop_6_conv1_kernel:  +
assignvariableop_7_conv1_bias: 9
assignvariableop_8_conv2_kernel: @+
assignvariableop_9_conv2_bias:@;
-assignvariableop_10_batchnormalization1_gamma:@:
,assignvariableop_11_batchnormalization1_beta:@A
3assignvariableop_12_batchnormalization1_moving_mean:@E
7assignvariableop_13_batchnormalization1_moving_variance:@:
 assignvariableop_14_conv3_kernel:@@,
assignvariableop_15_conv3_bias:@5
!assignvariableop_16_dense0_kernel:
??.
assignvariableop_17_dense0_bias:	?4
!assignvariableop_18_output_kernel:	?+-
assignvariableop_19_output_bias:+'
assignvariableop_20_adam_iter:	 )
assignvariableop_21_adam_beta_1: )
assignvariableop_22_adam_beta_2: (
assignvariableop_23_adam_decay: 0
&assignvariableop_24_adam_learning_rate: #
assignvariableop_25_total: #
assignvariableop_26_count: %
assignvariableop_27_total_1: %
assignvariableop_28_count_1: A
'assignvariableop_29_adam_conv0_kernel_m: 3
%assignvariableop_30_adam_conv0_bias_m: B
4assignvariableop_31_adam_batchnormalization0_gamma_m: A
3assignvariableop_32_adam_batchnormalization0_beta_m: A
'assignvariableop_33_adam_conv1_kernel_m:  3
%assignvariableop_34_adam_conv1_bias_m: A
'assignvariableop_35_adam_conv2_kernel_m: @3
%assignvariableop_36_adam_conv2_bias_m:@B
4assignvariableop_37_adam_batchnormalization1_gamma_m:@A
3assignvariableop_38_adam_batchnormalization1_beta_m:@A
'assignvariableop_39_adam_conv3_kernel_m:@@3
%assignvariableop_40_adam_conv3_bias_m:@<
(assignvariableop_41_adam_dense0_kernel_m:
??5
&assignvariableop_42_adam_dense0_bias_m:	?;
(assignvariableop_43_adam_output_kernel_m:	?+4
&assignvariableop_44_adam_output_bias_m:+A
'assignvariableop_45_adam_conv0_kernel_v: 3
%assignvariableop_46_adam_conv0_bias_v: B
4assignvariableop_47_adam_batchnormalization0_gamma_v: A
3assignvariableop_48_adam_batchnormalization0_beta_v: A
'assignvariableop_49_adam_conv1_kernel_v:  3
%assignvariableop_50_adam_conv1_bias_v: A
'assignvariableop_51_adam_conv2_kernel_v: @3
%assignvariableop_52_adam_conv2_bias_v:@B
4assignvariableop_53_adam_batchnormalization1_gamma_v:@A
3assignvariableop_54_adam_batchnormalization1_beta_v:@A
'assignvariableop_55_adam_conv3_kernel_v:@@3
%assignvariableop_56_adam_conv3_bias_v:@<
(assignvariableop_57_adam_dense0_kernel_v:
??5
&assignvariableop_58_adam_dense0_bias_v:	?;
(assignvariableop_59_adam_output_kernel_v:	?+4
&assignvariableop_60_adam_output_bias_v:+
identity_62??AssignVariableOp?AssignVariableOp_1?AssignVariableOp_10?AssignVariableOp_11?AssignVariableOp_12?AssignVariableOp_13?AssignVariableOp_14?AssignVariableOp_15?AssignVariableOp_16?AssignVariableOp_17?AssignVariableOp_18?AssignVariableOp_19?AssignVariableOp_2?AssignVariableOp_20?AssignVariableOp_21?AssignVariableOp_22?AssignVariableOp_23?AssignVariableOp_24?AssignVariableOp_25?AssignVariableOp_26?AssignVariableOp_27?AssignVariableOp_28?AssignVariableOp_29?AssignVariableOp_3?AssignVariableOp_30?AssignVariableOp_31?AssignVariableOp_32?AssignVariableOp_33?AssignVariableOp_34?AssignVariableOp_35?AssignVariableOp_36?AssignVariableOp_37?AssignVariableOp_38?AssignVariableOp_39?AssignVariableOp_4?AssignVariableOp_40?AssignVariableOp_41?AssignVariableOp_42?AssignVariableOp_43?AssignVariableOp_44?AssignVariableOp_45?AssignVariableOp_46?AssignVariableOp_47?AssignVariableOp_48?AssignVariableOp_49?AssignVariableOp_5?AssignVariableOp_50?AssignVariableOp_51?AssignVariableOp_52?AssignVariableOp_53?AssignVariableOp_54?AssignVariableOp_55?AssignVariableOp_56?AssignVariableOp_57?AssignVariableOp_58?AssignVariableOp_59?AssignVariableOp_6?AssignVariableOp_60?AssignVariableOp_7?AssignVariableOp_8?AssignVariableOp_9?"
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:>*
dtype0*?!
value?!B?!>B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-1/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-1/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-1/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-4/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-4/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-4/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-7/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-7/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-1/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-4/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-7/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-7/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-1/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-4/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-7/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-7/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
RestoreV2/tensor_names?
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:>*
dtype0*?
value?B?>B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 2
RestoreV2/shape_and_slices?
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*?
_output_shapes?
?::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::*L
dtypesB
@2>	2
	RestoreV2g
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:2

Identity?
AssignVariableOpAssignVariableOpassignvariableop_conv0_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOpk

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:2

Identity_1?
AssignVariableOp_1AssignVariableOpassignvariableop_1_conv0_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_1k

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:2

Identity_2?
AssignVariableOp_2AssignVariableOp,assignvariableop_2_batchnormalization0_gammaIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_2k

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:2

Identity_3?
AssignVariableOp_3AssignVariableOp+assignvariableop_3_batchnormalization0_betaIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_3k

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:2

Identity_4?
AssignVariableOp_4AssignVariableOp2assignvariableop_4_batchnormalization0_moving_meanIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_4k

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:2

Identity_5?
AssignVariableOp_5AssignVariableOp6assignvariableop_5_batchnormalization0_moving_varianceIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_5k

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:2

Identity_6?
AssignVariableOp_6AssignVariableOpassignvariableop_6_conv1_kernelIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_6k

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:2

Identity_7?
AssignVariableOp_7AssignVariableOpassignvariableop_7_conv1_biasIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_7k

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:2

Identity_8?
AssignVariableOp_8AssignVariableOpassignvariableop_8_conv2_kernelIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_8k

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:2

Identity_9?
AssignVariableOp_9AssignVariableOpassignvariableop_9_conv2_biasIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_9n
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:2
Identity_10?
AssignVariableOp_10AssignVariableOp-assignvariableop_10_batchnormalization1_gammaIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_10n
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:2
Identity_11?
AssignVariableOp_11AssignVariableOp,assignvariableop_11_batchnormalization1_betaIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_11n
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:2
Identity_12?
AssignVariableOp_12AssignVariableOp3assignvariableop_12_batchnormalization1_moving_meanIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_12n
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:2
Identity_13?
AssignVariableOp_13AssignVariableOp7assignvariableop_13_batchnormalization1_moving_varianceIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_13n
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:2
Identity_14?
AssignVariableOp_14AssignVariableOp assignvariableop_14_conv3_kernelIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_14n
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:2
Identity_15?
AssignVariableOp_15AssignVariableOpassignvariableop_15_conv3_biasIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_15n
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:2
Identity_16?
AssignVariableOp_16AssignVariableOp!assignvariableop_16_dense0_kernelIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_16n
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:2
Identity_17?
AssignVariableOp_17AssignVariableOpassignvariableop_17_dense0_biasIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_17n
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:2
Identity_18?
AssignVariableOp_18AssignVariableOp!assignvariableop_18_output_kernelIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_18n
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:2
Identity_19?
AssignVariableOp_19AssignVariableOpassignvariableop_19_output_biasIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_19n
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0	*
_output_shapes
:2
Identity_20?
AssignVariableOp_20AssignVariableOpassignvariableop_20_adam_iterIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	2
AssignVariableOp_20n
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:2
Identity_21?
AssignVariableOp_21AssignVariableOpassignvariableop_21_adam_beta_1Identity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_21n
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:2
Identity_22?
AssignVariableOp_22AssignVariableOpassignvariableop_22_adam_beta_2Identity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_22n
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:2
Identity_23?
AssignVariableOp_23AssignVariableOpassignvariableop_23_adam_decayIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_23n
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:2
Identity_24?
AssignVariableOp_24AssignVariableOp&assignvariableop_24_adam_learning_rateIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_24n
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:2
Identity_25?
AssignVariableOp_25AssignVariableOpassignvariableop_25_totalIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_25n
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:2
Identity_26?
AssignVariableOp_26AssignVariableOpassignvariableop_26_countIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_26n
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:2
Identity_27?
AssignVariableOp_27AssignVariableOpassignvariableop_27_total_1Identity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_27n
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:2
Identity_28?
AssignVariableOp_28AssignVariableOpassignvariableop_28_count_1Identity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_28n
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:2
Identity_29?
AssignVariableOp_29AssignVariableOp'assignvariableop_29_adam_conv0_kernel_mIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_29n
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:2
Identity_30?
AssignVariableOp_30AssignVariableOp%assignvariableop_30_adam_conv0_bias_mIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_30n
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:2
Identity_31?
AssignVariableOp_31AssignVariableOp4assignvariableop_31_adam_batchnormalization0_gamma_mIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_31n
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:2
Identity_32?
AssignVariableOp_32AssignVariableOp3assignvariableop_32_adam_batchnormalization0_beta_mIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_32n
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:2
Identity_33?
AssignVariableOp_33AssignVariableOp'assignvariableop_33_adam_conv1_kernel_mIdentity_33:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_33n
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:2
Identity_34?
AssignVariableOp_34AssignVariableOp%assignvariableop_34_adam_conv1_bias_mIdentity_34:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_34n
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:2
Identity_35?
AssignVariableOp_35AssignVariableOp'assignvariableop_35_adam_conv2_kernel_mIdentity_35:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_35n
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:2
Identity_36?
AssignVariableOp_36AssignVariableOp%assignvariableop_36_adam_conv2_bias_mIdentity_36:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_36n
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:2
Identity_37?
AssignVariableOp_37AssignVariableOp4assignvariableop_37_adam_batchnormalization1_gamma_mIdentity_37:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_37n
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:2
Identity_38?
AssignVariableOp_38AssignVariableOp3assignvariableop_38_adam_batchnormalization1_beta_mIdentity_38:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_38n
Identity_39IdentityRestoreV2:tensors:39"/device:CPU:0*
T0*
_output_shapes
:2
Identity_39?
AssignVariableOp_39AssignVariableOp'assignvariableop_39_adam_conv3_kernel_mIdentity_39:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_39n
Identity_40IdentityRestoreV2:tensors:40"/device:CPU:0*
T0*
_output_shapes
:2
Identity_40?
AssignVariableOp_40AssignVariableOp%assignvariableop_40_adam_conv3_bias_mIdentity_40:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_40n
Identity_41IdentityRestoreV2:tensors:41"/device:CPU:0*
T0*
_output_shapes
:2
Identity_41?
AssignVariableOp_41AssignVariableOp(assignvariableop_41_adam_dense0_kernel_mIdentity_41:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_41n
Identity_42IdentityRestoreV2:tensors:42"/device:CPU:0*
T0*
_output_shapes
:2
Identity_42?
AssignVariableOp_42AssignVariableOp&assignvariableop_42_adam_dense0_bias_mIdentity_42:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_42n
Identity_43IdentityRestoreV2:tensors:43"/device:CPU:0*
T0*
_output_shapes
:2
Identity_43?
AssignVariableOp_43AssignVariableOp(assignvariableop_43_adam_output_kernel_mIdentity_43:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_43n
Identity_44IdentityRestoreV2:tensors:44"/device:CPU:0*
T0*
_output_shapes
:2
Identity_44?
AssignVariableOp_44AssignVariableOp&assignvariableop_44_adam_output_bias_mIdentity_44:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_44n
Identity_45IdentityRestoreV2:tensors:45"/device:CPU:0*
T0*
_output_shapes
:2
Identity_45?
AssignVariableOp_45AssignVariableOp'assignvariableop_45_adam_conv0_kernel_vIdentity_45:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_45n
Identity_46IdentityRestoreV2:tensors:46"/device:CPU:0*
T0*
_output_shapes
:2
Identity_46?
AssignVariableOp_46AssignVariableOp%assignvariableop_46_adam_conv0_bias_vIdentity_46:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_46n
Identity_47IdentityRestoreV2:tensors:47"/device:CPU:0*
T0*
_output_shapes
:2
Identity_47?
AssignVariableOp_47AssignVariableOp4assignvariableop_47_adam_batchnormalization0_gamma_vIdentity_47:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_47n
Identity_48IdentityRestoreV2:tensors:48"/device:CPU:0*
T0*
_output_shapes
:2
Identity_48?
AssignVariableOp_48AssignVariableOp3assignvariableop_48_adam_batchnormalization0_beta_vIdentity_48:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_48n
Identity_49IdentityRestoreV2:tensors:49"/device:CPU:0*
T0*
_output_shapes
:2
Identity_49?
AssignVariableOp_49AssignVariableOp'assignvariableop_49_adam_conv1_kernel_vIdentity_49:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_49n
Identity_50IdentityRestoreV2:tensors:50"/device:CPU:0*
T0*
_output_shapes
:2
Identity_50?
AssignVariableOp_50AssignVariableOp%assignvariableop_50_adam_conv1_bias_vIdentity_50:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_50n
Identity_51IdentityRestoreV2:tensors:51"/device:CPU:0*
T0*
_output_shapes
:2
Identity_51?
AssignVariableOp_51AssignVariableOp'assignvariableop_51_adam_conv2_kernel_vIdentity_51:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_51n
Identity_52IdentityRestoreV2:tensors:52"/device:CPU:0*
T0*
_output_shapes
:2
Identity_52?
AssignVariableOp_52AssignVariableOp%assignvariableop_52_adam_conv2_bias_vIdentity_52:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_52n
Identity_53IdentityRestoreV2:tensors:53"/device:CPU:0*
T0*
_output_shapes
:2
Identity_53?
AssignVariableOp_53AssignVariableOp4assignvariableop_53_adam_batchnormalization1_gamma_vIdentity_53:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_53n
Identity_54IdentityRestoreV2:tensors:54"/device:CPU:0*
T0*
_output_shapes
:2
Identity_54?
AssignVariableOp_54AssignVariableOp3assignvariableop_54_adam_batchnormalization1_beta_vIdentity_54:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_54n
Identity_55IdentityRestoreV2:tensors:55"/device:CPU:0*
T0*
_output_shapes
:2
Identity_55?
AssignVariableOp_55AssignVariableOp'assignvariableop_55_adam_conv3_kernel_vIdentity_55:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_55n
Identity_56IdentityRestoreV2:tensors:56"/device:CPU:0*
T0*
_output_shapes
:2
Identity_56?
AssignVariableOp_56AssignVariableOp%assignvariableop_56_adam_conv3_bias_vIdentity_56:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_56n
Identity_57IdentityRestoreV2:tensors:57"/device:CPU:0*
T0*
_output_shapes
:2
Identity_57?
AssignVariableOp_57AssignVariableOp(assignvariableop_57_adam_dense0_kernel_vIdentity_57:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_57n
Identity_58IdentityRestoreV2:tensors:58"/device:CPU:0*
T0*
_output_shapes
:2
Identity_58?
AssignVariableOp_58AssignVariableOp&assignvariableop_58_adam_dense0_bias_vIdentity_58:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_58n
Identity_59IdentityRestoreV2:tensors:59"/device:CPU:0*
T0*
_output_shapes
:2
Identity_59?
AssignVariableOp_59AssignVariableOp(assignvariableop_59_adam_output_kernel_vIdentity_59:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_59n
Identity_60IdentityRestoreV2:tensors:60"/device:CPU:0*
T0*
_output_shapes
:2
Identity_60?
AssignVariableOp_60AssignVariableOp&assignvariableop_60_adam_output_bias_vIdentity_60:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_609
NoOpNoOp"/device:CPU:0*
_output_shapes
 2
NoOp?
Identity_61Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_46^AssignVariableOp_47^AssignVariableOp_48^AssignVariableOp_49^AssignVariableOp_5^AssignVariableOp_50^AssignVariableOp_51^AssignVariableOp_52^AssignVariableOp_53^AssignVariableOp_54^AssignVariableOp_55^AssignVariableOp_56^AssignVariableOp_57^AssignVariableOp_58^AssignVariableOp_59^AssignVariableOp_6^AssignVariableOp_60^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: 2
Identity_61?
Identity_62IdentityIdentity_61:output:0^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_46^AssignVariableOp_47^AssignVariableOp_48^AssignVariableOp_49^AssignVariableOp_5^AssignVariableOp_50^AssignVariableOp_51^AssignVariableOp_52^AssignVariableOp_53^AssignVariableOp_54^AssignVariableOp_55^AssignVariableOp_56^AssignVariableOp_57^AssignVariableOp_58^AssignVariableOp_59^AssignVariableOp_6^AssignVariableOp_60^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*
T0*
_output_shapes
: 2
Identity_62"#
identity_62Identity_62:output:0*?
_input_shapes~
|: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2$
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
AssignVariableOp_26AssignVariableOp_262*
AssignVariableOp_27AssignVariableOp_272*
AssignVariableOp_28AssignVariableOp_282*
AssignVariableOp_29AssignVariableOp_292(
AssignVariableOp_3AssignVariableOp_32*
AssignVariableOp_30AssignVariableOp_302*
AssignVariableOp_31AssignVariableOp_312*
AssignVariableOp_32AssignVariableOp_322*
AssignVariableOp_33AssignVariableOp_332*
AssignVariableOp_34AssignVariableOp_342*
AssignVariableOp_35AssignVariableOp_352*
AssignVariableOp_36AssignVariableOp_362*
AssignVariableOp_37AssignVariableOp_372*
AssignVariableOp_38AssignVariableOp_382*
AssignVariableOp_39AssignVariableOp_392(
AssignVariableOp_4AssignVariableOp_42*
AssignVariableOp_40AssignVariableOp_402*
AssignVariableOp_41AssignVariableOp_412*
AssignVariableOp_42AssignVariableOp_422*
AssignVariableOp_43AssignVariableOp_432*
AssignVariableOp_44AssignVariableOp_442*
AssignVariableOp_45AssignVariableOp_452*
AssignVariableOp_46AssignVariableOp_462*
AssignVariableOp_47AssignVariableOp_472*
AssignVariableOp_48AssignVariableOp_482*
AssignVariableOp_49AssignVariableOp_492(
AssignVariableOp_5AssignVariableOp_52*
AssignVariableOp_50AssignVariableOp_502*
AssignVariableOp_51AssignVariableOp_512*
AssignVariableOp_52AssignVariableOp_522*
AssignVariableOp_53AssignVariableOp_532*
AssignVariableOp_54AssignVariableOp_542*
AssignVariableOp_55AssignVariableOp_552*
AssignVariableOp_56AssignVariableOp_562*
AssignVariableOp_57AssignVariableOp_572*
AssignVariableOp_58AssignVariableOp_582*
AssignVariableOp_59AssignVariableOp_592(
AssignVariableOp_6AssignVariableOp_62*
AssignVariableOp_60AssignVariableOp_602(
AssignVariableOp_7AssignVariableOp_72(
AssignVariableOp_8AssignVariableOp_82(
AssignVariableOp_9AssignVariableOp_9:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
?
?
N__inference_BatchNormalization1_layer_call_and_return_conditional_losses_18236

inputs%
readvariableop_resource:@'
readvariableop_1_resource:@6
(fusedbatchnormv3_readvariableop_resource:@8
*fusedbatchnormv3_readvariableop_1_resource:@
identity??FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:@*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:@*
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+???????????????????????????@:@:@:@:@:*
epsilon%o?:*
is_training( 2
FusedBatchNormV3?
IdentityIdentityFusedBatchNormV3:y:0 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*A
_output_shapes/
-:+???????????????????????????@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+???????????????????????????@: : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+???????????????????????????@
 
_user_specified_nameinputs
?
?
@__inference_Conv2_layer_call_and_return_conditional_losses_18166

inputs8
conv2d_readvariableop_resource: @-
biasadd_readvariableop_resource:@
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp?
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: @*
dtype02
Conv2D/ReadVariableOp?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@*
paddingSAME*
strides
2
Conv2D?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@2	
BiasAdd`
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:?????????@2
Relu?
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*/
_output_shapes
:?????????@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:????????? : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:????????? 
 
_user_specified_nameinputs
?
?
%__inference_Conv0_layer_call_fn_17991

inputs!
unknown: 
	unknown_0: 
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:????????? *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *I
fDRB
@__inference_Conv0_layer_call_and_return_conditional_losses_169882
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*/
_output_shapes
:????????? 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????: : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
3__inference_BatchNormalization0_layer_call_fn_18015

inputs
unknown: 
	unknown_0: 
	unknown_1: 
	unknown_2: 
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+??????????????????????????? *&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *W
fRRP
N__inference_BatchNormalization0_layer_call_and_return_conditional_losses_167162
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*A
_output_shapes/
-:+??????????????????????????? 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+??????????????????????????? : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+??????????????????????????? 
 
_user_specified_nameinputs
?
?
3__inference_BatchNormalization1_layer_call_fn_18192

inputs
unknown:@
	unknown_0:@
	unknown_1:@
	unknown_2:@
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+???????????????????????????@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *W
fRRP
N__inference_BatchNormalization1_layer_call_and_return_conditional_losses_168982
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*A
_output_shapes/
-:+???????????????????????????@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+???????????????????????????@: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+???????????????????????????@
 
_user_specified_nameinputs
?
?
@__inference_Conv3_layer_call_and_return_conditional_losses_17094

inputs8
conv2d_readvariableop_resource:@@-
biasadd_readvariableop_resource:@
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp?
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype02
Conv2D/ReadVariableOp?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@*
paddingSAME*
strides
2
Conv2D?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@2	
BiasAdd`
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:?????????@2
Relu?
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*/
_output_shapes
:?????????@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:?????????@
 
_user_specified_nameinputs
?
?
@__inference_Conv2_layer_call_and_return_conditional_losses_17050

inputs8
conv2d_readvariableop_resource: @-
biasadd_readvariableop_resource:@
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp?
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: @*
dtype02
Conv2D/ReadVariableOp?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@*
paddingSAME*
strides
2
Conv2D?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@2	
BiasAdd`
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:?????????@2
Relu?
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*/
_output_shapes
:?????????@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:????????? : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:????????? 
 
_user_specified_nameinputs
?
?
@__inference_Conv0_layer_call_and_return_conditional_losses_16988

inputs8
conv2d_readvariableop_resource: -
biasadd_readvariableop_resource: 
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp?
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: *
dtype02
Conv2D/ReadVariableOp?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:????????? *
paddingSAME*
strides
2
Conv2D?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:????????? 2	
BiasAdd`
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:????????? 2
Relu?
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*/
_output_shapes
:????????? 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:?????????
 
_user_specified_nameinputs
?
_
C__inference_MaxPool1_layer_call_and_return_conditional_losses_16964

inputs
identity?
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4????????????????????????????????????*
ksize
*
paddingVALID*
strides
2	
MaxPool?
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4????????????????????????????????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4????????????????????????????????????:r n
J
_output_shapes8
6:4????????????????????????????????????
 
_user_specified_nameinputs
?
?
N__inference_BatchNormalization0_layer_call_and_return_conditional_losses_17350

inputs%
readvariableop_resource: '
readvariableop_1_resource: 6
(fusedbatchnormv3_readvariableop_resource: 8
*fusedbatchnormv3_readvariableop_1_resource: 
identity??AssignNewValue?AssignNewValue_1?FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
: *
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
: *
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:????????? : : : : :*
epsilon%o?:*
exponential_avg_factor%
?#<2
FusedBatchNormV3?
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype02
AssignNewValue?
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype02
AssignNewValue_1?
IdentityIdentityFusedBatchNormV3:y:0^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*/
_output_shapes
:????????? 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:????????? : : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:W S
/
_output_shapes
:????????? 
 
_user_specified_nameinputs
?
?
3__inference_BatchNormalization1_layer_call_fn_18179

inputs
unknown:@
	unknown_0:@
	unknown_1:@
	unknown_2:@
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+???????????????????????????@*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *W
fRRP
N__inference_BatchNormalization1_layer_call_and_return_conditional_losses_168542
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*A
_output_shapes/
-:+???????????????????????????@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+???????????????????????????@: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+???????????????????????????@
 
_user_specified_nameinputs
?
?
N__inference_BatchNormalization1_layer_call_and_return_conditional_losses_18272

inputs%
readvariableop_resource:@'
readvariableop_1_resource:@6
(fusedbatchnormv3_readvariableop_resource:@8
*fusedbatchnormv3_readvariableop_1_resource:@
identity??FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:@*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:@*
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:?????????@:@:@:@:@:*
epsilon%o?:*
is_training( 2
FusedBatchNormV3?
IdentityIdentityFusedBatchNormV3:y:0 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*/
_output_shapes
:?????????@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:?????????@: : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:W S
/
_output_shapes
:?????????@
 
_user_specified_nameinputs
?
?
3__inference_BatchNormalization1_layer_call_fn_18205

inputs
unknown:@
	unknown_0:@
	unknown_1:@
	unknown_2:@
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *W
fRRP
N__inference_BatchNormalization1_layer_call_and_return_conditional_losses_170732
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*/
_output_shapes
:?????????@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:?????????@: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:?????????@
 
_user_specified_nameinputs
?
a
B__inference_Dropout_layer_call_and_return_conditional_losses_18348

inputs
identity?c
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
dropout/Constt
dropout/MulMulinputsdropout/Const:output:0*
T0*(
_output_shapes
:??????????2
dropout/MulT
dropout/ShapeShapeinputs*
T0*
_output_shapes
:2
dropout/Shape?
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*(
_output_shapes
:??????????*
dtype02&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??L>2
dropout/GreaterEqual/y?
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:??????????2
dropout/GreaterEqual?
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:??????????2
dropout/Cast{
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*(
_output_shapes
:??????????2
dropout/Mul_1f
IdentityIdentitydropout/Mul_1:z:0*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:??????????:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?

?
A__inference_Output_layer_call_and_return_conditional_losses_18388

inputs1
matmul_readvariableop_resource:	?+-
biasadd_readvariableop_resource:+
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	?+*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????+2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:+*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????+2	
BiasAdda
SoftmaxSoftmaxBiasAdd:output:0*
T0*'
_output_shapes
:?????????+2	
Softmax?
IdentityIdentitySoftmax:softmax:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????+2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
`
B__inference_Dropout_layer_call_and_return_conditional_losses_18336

inputs

identity_1[
IdentityIdentityinputs*
T0*(
_output_shapes
:??????????2

Identityj

Identity_1IdentityIdentity:output:0*
T0*(
_output_shapes
:??????????2

Identity_1"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:??????????:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
^
B__inference_Flatten_layer_call_and_return_conditional_losses_18321

inputs
identity_
ConstConst*
_output_shapes
:*
dtype0*
valueB"????@  2
Consth
ReshapeReshapeinputsConst:output:0*
T0*(
_output_shapes
:??????????2	
Reshapee
IdentityIdentityReshape:output:0*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????@:W S
/
_output_shapes
:?????????@
 
_user_specified_nameinputs
?n
?
 __inference__wrapped_model_16694
input_layerC
)test_conv0_conv2d_readvariableop_resource: 8
*test_conv0_biasadd_readvariableop_resource: >
0test_batchnormalization0_readvariableop_resource: @
2test_batchnormalization0_readvariableop_1_resource: O
Atest_batchnormalization0_fusedbatchnormv3_readvariableop_resource: Q
Ctest_batchnormalization0_fusedbatchnormv3_readvariableop_1_resource: C
)test_conv1_conv2d_readvariableop_resource:  8
*test_conv1_biasadd_readvariableop_resource: C
)test_conv2_conv2d_readvariableop_resource: @8
*test_conv2_biasadd_readvariableop_resource:@>
0test_batchnormalization1_readvariableop_resource:@@
2test_batchnormalization1_readvariableop_1_resource:@O
Atest_batchnormalization1_fusedbatchnormv3_readvariableop_resource:@Q
Ctest_batchnormalization1_fusedbatchnormv3_readvariableop_1_resource:@C
)test_conv3_conv2d_readvariableop_resource:@@8
*test_conv3_biasadd_readvariableop_resource:@>
*test_dense0_matmul_readvariableop_resource:
??:
+test_dense0_biasadd_readvariableop_resource:	?=
*test_output_matmul_readvariableop_resource:	?+9
+test_output_biasadd_readvariableop_resource:+
identity??8Test/BatchNormalization0/FusedBatchNormV3/ReadVariableOp?:Test/BatchNormalization0/FusedBatchNormV3/ReadVariableOp_1?'Test/BatchNormalization0/ReadVariableOp?)Test/BatchNormalization0/ReadVariableOp_1?8Test/BatchNormalization1/FusedBatchNormV3/ReadVariableOp?:Test/BatchNormalization1/FusedBatchNormV3/ReadVariableOp_1?'Test/BatchNormalization1/ReadVariableOp?)Test/BatchNormalization1/ReadVariableOp_1?!Test/Conv0/BiasAdd/ReadVariableOp? Test/Conv0/Conv2D/ReadVariableOp?!Test/Conv1/BiasAdd/ReadVariableOp? Test/Conv1/Conv2D/ReadVariableOp?!Test/Conv2/BiasAdd/ReadVariableOp? Test/Conv2/Conv2D/ReadVariableOp?!Test/Conv3/BiasAdd/ReadVariableOp? Test/Conv3/Conv2D/ReadVariableOp?"Test/Dense0/BiasAdd/ReadVariableOp?!Test/Dense0/MatMul/ReadVariableOp?"Test/Output/BiasAdd/ReadVariableOp?!Test/Output/MatMul/ReadVariableOp?
 Test/Conv0/Conv2D/ReadVariableOpReadVariableOp)test_conv0_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype02"
 Test/Conv0/Conv2D/ReadVariableOp?
Test/Conv0/Conv2DConv2Dinput_layer(Test/Conv0/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:????????? *
paddingSAME*
strides
2
Test/Conv0/Conv2D?
!Test/Conv0/BiasAdd/ReadVariableOpReadVariableOp*test_conv0_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02#
!Test/Conv0/BiasAdd/ReadVariableOp?
Test/Conv0/BiasAddBiasAddTest/Conv0/Conv2D:output:0)Test/Conv0/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:????????? 2
Test/Conv0/BiasAdd?
Test/Conv0/ReluReluTest/Conv0/BiasAdd:output:0*
T0*/
_output_shapes
:????????? 2
Test/Conv0/Relu?
'Test/BatchNormalization0/ReadVariableOpReadVariableOp0test_batchnormalization0_readvariableop_resource*
_output_shapes
: *
dtype02)
'Test/BatchNormalization0/ReadVariableOp?
)Test/BatchNormalization0/ReadVariableOp_1ReadVariableOp2test_batchnormalization0_readvariableop_1_resource*
_output_shapes
: *
dtype02+
)Test/BatchNormalization0/ReadVariableOp_1?
8Test/BatchNormalization0/FusedBatchNormV3/ReadVariableOpReadVariableOpAtest_batchnormalization0_fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype02:
8Test/BatchNormalization0/FusedBatchNormV3/ReadVariableOp?
:Test/BatchNormalization0/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpCtest_batchnormalization0_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype02<
:Test/BatchNormalization0/FusedBatchNormV3/ReadVariableOp_1?
)Test/BatchNormalization0/FusedBatchNormV3FusedBatchNormV3Test/Conv0/Relu:activations:0/Test/BatchNormalization0/ReadVariableOp:value:01Test/BatchNormalization0/ReadVariableOp_1:value:0@Test/BatchNormalization0/FusedBatchNormV3/ReadVariableOp:value:0BTest/BatchNormalization0/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:????????? : : : : :*
epsilon%o?:*
is_training( 2+
)Test/BatchNormalization0/FusedBatchNormV3?
 Test/Conv1/Conv2D/ReadVariableOpReadVariableOp)test_conv1_conv2d_readvariableop_resource*&
_output_shapes
:  *
dtype02"
 Test/Conv1/Conv2D/ReadVariableOp?
Test/Conv1/Conv2DConv2D-Test/BatchNormalization0/FusedBatchNormV3:y:0(Test/Conv1/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:????????? *
paddingSAME*
strides
2
Test/Conv1/Conv2D?
!Test/Conv1/BiasAdd/ReadVariableOpReadVariableOp*test_conv1_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02#
!Test/Conv1/BiasAdd/ReadVariableOp?
Test/Conv1/BiasAddBiasAddTest/Conv1/Conv2D:output:0)Test/Conv1/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:????????? 2
Test/Conv1/BiasAdd?
Test/Conv1/ReluReluTest/Conv1/BiasAdd:output:0*
T0*/
_output_shapes
:????????? 2
Test/Conv1/Relu?
Test/MaxPool0/MaxPoolMaxPoolTest/Conv1/Relu:activations:0*/
_output_shapes
:????????? *
ksize
*
paddingVALID*
strides
2
Test/MaxPool0/MaxPool?
 Test/Conv2/Conv2D/ReadVariableOpReadVariableOp)test_conv2_conv2d_readvariableop_resource*&
_output_shapes
: @*
dtype02"
 Test/Conv2/Conv2D/ReadVariableOp?
Test/Conv2/Conv2DConv2DTest/MaxPool0/MaxPool:output:0(Test/Conv2/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@*
paddingSAME*
strides
2
Test/Conv2/Conv2D?
!Test/Conv2/BiasAdd/ReadVariableOpReadVariableOp*test_conv2_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02#
!Test/Conv2/BiasAdd/ReadVariableOp?
Test/Conv2/BiasAddBiasAddTest/Conv2/Conv2D:output:0)Test/Conv2/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@2
Test/Conv2/BiasAdd?
Test/Conv2/ReluReluTest/Conv2/BiasAdd:output:0*
T0*/
_output_shapes
:?????????@2
Test/Conv2/Relu?
'Test/BatchNormalization1/ReadVariableOpReadVariableOp0test_batchnormalization1_readvariableop_resource*
_output_shapes
:@*
dtype02)
'Test/BatchNormalization1/ReadVariableOp?
)Test/BatchNormalization1/ReadVariableOp_1ReadVariableOp2test_batchnormalization1_readvariableop_1_resource*
_output_shapes
:@*
dtype02+
)Test/BatchNormalization1/ReadVariableOp_1?
8Test/BatchNormalization1/FusedBatchNormV3/ReadVariableOpReadVariableOpAtest_batchnormalization1_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype02:
8Test/BatchNormalization1/FusedBatchNormV3/ReadVariableOp?
:Test/BatchNormalization1/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpCtest_batchnormalization1_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype02<
:Test/BatchNormalization1/FusedBatchNormV3/ReadVariableOp_1?
)Test/BatchNormalization1/FusedBatchNormV3FusedBatchNormV3Test/Conv2/Relu:activations:0/Test/BatchNormalization1/ReadVariableOp:value:01Test/BatchNormalization1/ReadVariableOp_1:value:0@Test/BatchNormalization1/FusedBatchNormV3/ReadVariableOp:value:0BTest/BatchNormalization1/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:?????????@:@:@:@:@:*
epsilon%o?:*
is_training( 2+
)Test/BatchNormalization1/FusedBatchNormV3?
 Test/Conv3/Conv2D/ReadVariableOpReadVariableOp)test_conv3_conv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype02"
 Test/Conv3/Conv2D/ReadVariableOp?
Test/Conv3/Conv2DConv2D-Test/BatchNormalization1/FusedBatchNormV3:y:0(Test/Conv3/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@*
paddingSAME*
strides
2
Test/Conv3/Conv2D?
!Test/Conv3/BiasAdd/ReadVariableOpReadVariableOp*test_conv3_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02#
!Test/Conv3/BiasAdd/ReadVariableOp?
Test/Conv3/BiasAddBiasAddTest/Conv3/Conv2D:output:0)Test/Conv3/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@2
Test/Conv3/BiasAdd?
Test/Conv3/ReluReluTest/Conv3/BiasAdd:output:0*
T0*/
_output_shapes
:?????????@2
Test/Conv3/Relu?
Test/MaxPool1/MaxPoolMaxPoolTest/Conv3/Relu:activations:0*/
_output_shapes
:?????????@*
ksize
*
paddingVALID*
strides
2
Test/MaxPool1/MaxPooly
Test/Flatten/ConstConst*
_output_shapes
:*
dtype0*
valueB"????@  2
Test/Flatten/Const?
Test/Flatten/ReshapeReshapeTest/MaxPool1/MaxPool:output:0Test/Flatten/Const:output:0*
T0*(
_output_shapes
:??????????2
Test/Flatten/Reshape?
Test/Dropout/IdentityIdentityTest/Flatten/Reshape:output:0*
T0*(
_output_shapes
:??????????2
Test/Dropout/Identity?
!Test/Dense0/MatMul/ReadVariableOpReadVariableOp*test_dense0_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02#
!Test/Dense0/MatMul/ReadVariableOp?
Test/Dense0/MatMulMatMulTest/Dropout/Identity:output:0)Test/Dense0/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
Test/Dense0/MatMul?
"Test/Dense0/BiasAdd/ReadVariableOpReadVariableOp+test_dense0_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02$
"Test/Dense0/BiasAdd/ReadVariableOp?
Test/Dense0/BiasAddBiasAddTest/Dense0/MatMul:product:0*Test/Dense0/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
Test/Dense0/BiasAdd}
Test/Dense0/ReluReluTest/Dense0/BiasAdd:output:0*
T0*(
_output_shapes
:??????????2
Test/Dense0/Relu?
!Test/Output/MatMul/ReadVariableOpReadVariableOp*test_output_matmul_readvariableop_resource*
_output_shapes
:	?+*
dtype02#
!Test/Output/MatMul/ReadVariableOp?
Test/Output/MatMulMatMulTest/Dense0/Relu:activations:0)Test/Output/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????+2
Test/Output/MatMul?
"Test/Output/BiasAdd/ReadVariableOpReadVariableOp+test_output_biasadd_readvariableop_resource*
_output_shapes
:+*
dtype02$
"Test/Output/BiasAdd/ReadVariableOp?
Test/Output/BiasAddBiasAddTest/Output/MatMul:product:0*Test/Output/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????+2
Test/Output/BiasAdd?
Test/Output/SoftmaxSoftmaxTest/Output/BiasAdd:output:0*
T0*'
_output_shapes
:?????????+2
Test/Output/Softmax?
IdentityIdentityTest/Output/Softmax:softmax:09^Test/BatchNormalization0/FusedBatchNormV3/ReadVariableOp;^Test/BatchNormalization0/FusedBatchNormV3/ReadVariableOp_1(^Test/BatchNormalization0/ReadVariableOp*^Test/BatchNormalization0/ReadVariableOp_19^Test/BatchNormalization1/FusedBatchNormV3/ReadVariableOp;^Test/BatchNormalization1/FusedBatchNormV3/ReadVariableOp_1(^Test/BatchNormalization1/ReadVariableOp*^Test/BatchNormalization1/ReadVariableOp_1"^Test/Conv0/BiasAdd/ReadVariableOp!^Test/Conv0/Conv2D/ReadVariableOp"^Test/Conv1/BiasAdd/ReadVariableOp!^Test/Conv1/Conv2D/ReadVariableOp"^Test/Conv2/BiasAdd/ReadVariableOp!^Test/Conv2/Conv2D/ReadVariableOp"^Test/Conv3/BiasAdd/ReadVariableOp!^Test/Conv3/Conv2D/ReadVariableOp#^Test/Dense0/BiasAdd/ReadVariableOp"^Test/Dense0/MatMul/ReadVariableOp#^Test/Output/BiasAdd/ReadVariableOp"^Test/Output/MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????+2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*V
_input_shapesE
C:?????????: : : : : : : : : : : : : : : : : : : : 2t
8Test/BatchNormalization0/FusedBatchNormV3/ReadVariableOp8Test/BatchNormalization0/FusedBatchNormV3/ReadVariableOp2x
:Test/BatchNormalization0/FusedBatchNormV3/ReadVariableOp_1:Test/BatchNormalization0/FusedBatchNormV3/ReadVariableOp_12R
'Test/BatchNormalization0/ReadVariableOp'Test/BatchNormalization0/ReadVariableOp2V
)Test/BatchNormalization0/ReadVariableOp_1)Test/BatchNormalization0/ReadVariableOp_12t
8Test/BatchNormalization1/FusedBatchNormV3/ReadVariableOp8Test/BatchNormalization1/FusedBatchNormV3/ReadVariableOp2x
:Test/BatchNormalization1/FusedBatchNormV3/ReadVariableOp_1:Test/BatchNormalization1/FusedBatchNormV3/ReadVariableOp_12R
'Test/BatchNormalization1/ReadVariableOp'Test/BatchNormalization1/ReadVariableOp2V
)Test/BatchNormalization1/ReadVariableOp_1)Test/BatchNormalization1/ReadVariableOp_12F
!Test/Conv0/BiasAdd/ReadVariableOp!Test/Conv0/BiasAdd/ReadVariableOp2D
 Test/Conv0/Conv2D/ReadVariableOp Test/Conv0/Conv2D/ReadVariableOp2F
!Test/Conv1/BiasAdd/ReadVariableOp!Test/Conv1/BiasAdd/ReadVariableOp2D
 Test/Conv1/Conv2D/ReadVariableOp Test/Conv1/Conv2D/ReadVariableOp2F
!Test/Conv2/BiasAdd/ReadVariableOp!Test/Conv2/BiasAdd/ReadVariableOp2D
 Test/Conv2/Conv2D/ReadVariableOp Test/Conv2/Conv2D/ReadVariableOp2F
!Test/Conv3/BiasAdd/ReadVariableOp!Test/Conv3/BiasAdd/ReadVariableOp2D
 Test/Conv3/Conv2D/ReadVariableOp Test/Conv3/Conv2D/ReadVariableOp2H
"Test/Dense0/BiasAdd/ReadVariableOp"Test/Dense0/BiasAdd/ReadVariableOp2F
!Test/Dense0/MatMul/ReadVariableOp!Test/Dense0/MatMul/ReadVariableOp2H
"Test/Output/BiasAdd/ReadVariableOp"Test/Output/BiasAdd/ReadVariableOp2F
!Test/Output/MatMul/ReadVariableOp!Test/Output/MatMul/ReadVariableOp:\ X
/
_output_shapes
:?????????
%
_user_specified_nameinput_layer
?
^
B__inference_Flatten_layer_call_and_return_conditional_losses_17107

inputs
identity_
ConstConst*
_output_shapes
:*
dtype0*
valueB"????@  2
Consth
ReshapeReshapeinputsConst:output:0*
T0*(
_output_shapes
:??????????2	
Reshapee
IdentityIdentityReshape:output:0*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????@:W S
/
_output_shapes
:?????????@
 
_user_specified_nameinputs
?
?
3__inference_BatchNormalization1_layer_call_fn_18218

inputs
unknown:@
	unknown_0:@
	unknown_1:@
	unknown_2:@
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *W
fRRP
N__inference_BatchNormalization1_layer_call_and_return_conditional_losses_172862
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*/
_output_shapes
:?????????@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:?????????@: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:?????????@
 
_user_specified_nameinputs
?
?
$__inference_Test_layer_call_fn_17817

inputs!
unknown: 
	unknown_0: 
	unknown_1: 
	unknown_2: 
	unknown_3: 
	unknown_4: #
	unknown_5:  
	unknown_6: #
	unknown_7: @
	unknown_8:@
	unknown_9:@

unknown_10:@

unknown_11:@

unknown_12:@$

unknown_13:@@

unknown_14:@

unknown_15:
??

unknown_16:	?

unknown_17:	?+

unknown_18:+
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18* 
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????+*2
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8? *H
fCRA
?__inference_Test_layer_call_and_return_conditional_losses_174742
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????+2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*V
_input_shapesE
C:?????????: : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
N__inference_BatchNormalization1_layer_call_and_return_conditional_losses_16898

inputs%
readvariableop_resource:@'
readvariableop_1_resource:@6
(fusedbatchnormv3_readvariableop_resource:@8
*fusedbatchnormv3_readvariableop_1_resource:@
identity??AssignNewValue?AssignNewValue_1?FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:@*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:@*
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+???????????????????????????@:@:@:@:@:*
epsilon%o?:*
exponential_avg_factor%
?#<2
FusedBatchNormV3?
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype02
AssignNewValue?
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype02
AssignNewValue_1?
IdentityIdentityFusedBatchNormV3:y:0^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*A
_output_shapes/
-:+???????????????????????????@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+???????????????????????????@: : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+???????????????????????????@
 
_user_specified_nameinputs
?;
?
?__inference_Test_layer_call_and_return_conditional_losses_17474

inputs%
conv0_17421: 
conv0_17423: '
batchnormalization0_17426: '
batchnormalization0_17428: '
batchnormalization0_17430: '
batchnormalization0_17432: %
conv1_17435:  
conv1_17437: %
conv2_17441: @
conv2_17443:@'
batchnormalization1_17446:@'
batchnormalization1_17448:@'
batchnormalization1_17450:@'
batchnormalization1_17452:@%
conv3_17455:@@
conv3_17457:@ 
dense0_17463:
??
dense0_17465:	?
output_17468:	?+
output_17470:+
identity??+BatchNormalization0/StatefulPartitionedCall?+BatchNormalization1/StatefulPartitionedCall?Conv0/StatefulPartitionedCall?Conv1/StatefulPartitionedCall?Conv2/StatefulPartitionedCall?Conv3/StatefulPartitionedCall?Dense0/StatefulPartitionedCall?Dropout/StatefulPartitionedCall?Output/StatefulPartitionedCall?
Conv0/StatefulPartitionedCallStatefulPartitionedCallinputsconv0_17421conv0_17423*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:????????? *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *I
fDRB
@__inference_Conv0_layer_call_and_return_conditional_losses_169882
Conv0/StatefulPartitionedCall?
+BatchNormalization0/StatefulPartitionedCallStatefulPartitionedCall&Conv0/StatefulPartitionedCall:output:0batchnormalization0_17426batchnormalization0_17428batchnormalization0_17430batchnormalization0_17432*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:????????? *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *W
fRRP
N__inference_BatchNormalization0_layer_call_and_return_conditional_losses_173502-
+BatchNormalization0/StatefulPartitionedCall?
Conv1/StatefulPartitionedCallStatefulPartitionedCall4BatchNormalization0/StatefulPartitionedCall:output:0conv1_17435conv1_17437*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:????????? *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *I
fDRB
@__inference_Conv1_layer_call_and_return_conditional_losses_170322
Conv1/StatefulPartitionedCall?
MaxPool0/PartitionedCallPartitionedCall&Conv1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:????????? * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_MaxPool0_layer_call_and_return_conditional_losses_168262
MaxPool0/PartitionedCall?
Conv2/StatefulPartitionedCallStatefulPartitionedCall!MaxPool0/PartitionedCall:output:0conv2_17441conv2_17443*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *I
fDRB
@__inference_Conv2_layer_call_and_return_conditional_losses_170502
Conv2/StatefulPartitionedCall?
+BatchNormalization1/StatefulPartitionedCallStatefulPartitionedCall&Conv2/StatefulPartitionedCall:output:0batchnormalization1_17446batchnormalization1_17448batchnormalization1_17450batchnormalization1_17452*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *W
fRRP
N__inference_BatchNormalization1_layer_call_and_return_conditional_losses_172862-
+BatchNormalization1/StatefulPartitionedCall?
Conv3/StatefulPartitionedCallStatefulPartitionedCall4BatchNormalization1/StatefulPartitionedCall:output:0conv3_17455conv3_17457*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *I
fDRB
@__inference_Conv3_layer_call_and_return_conditional_losses_170942
Conv3/StatefulPartitionedCall?
MaxPool1/PartitionedCallPartitionedCall&Conv3/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_MaxPool1_layer_call_and_return_conditional_losses_169642
MaxPool1/PartitionedCall?
Flatten/PartitionedCallPartitionedCall!MaxPool1/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *K
fFRD
B__inference_Flatten_layer_call_and_return_conditional_losses_171072
Flatten/PartitionedCall?
Dropout/StatefulPartitionedCallStatefulPartitionedCall Flatten/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *K
fFRD
B__inference_Dropout_layer_call_and_return_conditional_losses_172342!
Dropout/StatefulPartitionedCall?
Dense0/StatefulPartitionedCallStatefulPartitionedCall(Dropout/StatefulPartitionedCall:output:0dense0_17463dense0_17465*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *J
fERC
A__inference_Dense0_layer_call_and_return_conditional_losses_171272 
Dense0/StatefulPartitionedCall?
Output/StatefulPartitionedCallStatefulPartitionedCall'Dense0/StatefulPartitionedCall:output:0output_17468output_17470*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????+*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *J
fERC
A__inference_Output_layer_call_and_return_conditional_losses_171442 
Output/StatefulPartitionedCall?
IdentityIdentity'Output/StatefulPartitionedCall:output:0,^BatchNormalization0/StatefulPartitionedCall,^BatchNormalization1/StatefulPartitionedCall^Conv0/StatefulPartitionedCall^Conv1/StatefulPartitionedCall^Conv2/StatefulPartitionedCall^Conv3/StatefulPartitionedCall^Dense0/StatefulPartitionedCall ^Dropout/StatefulPartitionedCall^Output/StatefulPartitionedCall*
T0*'
_output_shapes
:?????????+2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*V
_input_shapesE
C:?????????: : : : : : : : : : : : : : : : : : : : 2Z
+BatchNormalization0/StatefulPartitionedCall+BatchNormalization0/StatefulPartitionedCall2Z
+BatchNormalization1/StatefulPartitionedCall+BatchNormalization1/StatefulPartitionedCall2>
Conv0/StatefulPartitionedCallConv0/StatefulPartitionedCall2>
Conv1/StatefulPartitionedCallConv1/StatefulPartitionedCall2>
Conv2/StatefulPartitionedCallConv2/StatefulPartitionedCall2>
Conv3/StatefulPartitionedCallConv3/StatefulPartitionedCall2@
Dense0/StatefulPartitionedCallDense0/StatefulPartitionedCall2B
Dropout/StatefulPartitionedCallDropout/StatefulPartitionedCall2@
Output/StatefulPartitionedCallOutput/StatefulPartitionedCall:W S
/
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
@__inference_Conv1_layer_call_and_return_conditional_losses_18146

inputs8
conv2d_readvariableop_resource:  -
biasadd_readvariableop_resource: 
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp?
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:  *
dtype02
Conv2D/ReadVariableOp?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:????????? *
paddingSAME*
strides
2
Conv2D?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:????????? 2	
BiasAdd`
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:????????? 2
Relu?
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*/
_output_shapes
:????????? 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:????????? : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:????????? 
 
_user_specified_nameinputs
?:
?
?__inference_Test_layer_call_and_return_conditional_losses_17151

inputs%
conv0_16989: 
conv0_16991: '
batchnormalization0_17012: '
batchnormalization0_17014: '
batchnormalization0_17016: '
batchnormalization0_17018: %
conv1_17033:  
conv1_17035: %
conv2_17051: @
conv2_17053:@'
batchnormalization1_17074:@'
batchnormalization1_17076:@'
batchnormalization1_17078:@'
batchnormalization1_17080:@%
conv3_17095:@@
conv3_17097:@ 
dense0_17128:
??
dense0_17130:	?
output_17145:	?+
output_17147:+
identity??+BatchNormalization0/StatefulPartitionedCall?+BatchNormalization1/StatefulPartitionedCall?Conv0/StatefulPartitionedCall?Conv1/StatefulPartitionedCall?Conv2/StatefulPartitionedCall?Conv3/StatefulPartitionedCall?Dense0/StatefulPartitionedCall?Output/StatefulPartitionedCall?
Conv0/StatefulPartitionedCallStatefulPartitionedCallinputsconv0_16989conv0_16991*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:????????? *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *I
fDRB
@__inference_Conv0_layer_call_and_return_conditional_losses_169882
Conv0/StatefulPartitionedCall?
+BatchNormalization0/StatefulPartitionedCallStatefulPartitionedCall&Conv0/StatefulPartitionedCall:output:0batchnormalization0_17012batchnormalization0_17014batchnormalization0_17016batchnormalization0_17018*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:????????? *&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *W
fRRP
N__inference_BatchNormalization0_layer_call_and_return_conditional_losses_170112-
+BatchNormalization0/StatefulPartitionedCall?
Conv1/StatefulPartitionedCallStatefulPartitionedCall4BatchNormalization0/StatefulPartitionedCall:output:0conv1_17033conv1_17035*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:????????? *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *I
fDRB
@__inference_Conv1_layer_call_and_return_conditional_losses_170322
Conv1/StatefulPartitionedCall?
MaxPool0/PartitionedCallPartitionedCall&Conv1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:????????? * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_MaxPool0_layer_call_and_return_conditional_losses_168262
MaxPool0/PartitionedCall?
Conv2/StatefulPartitionedCallStatefulPartitionedCall!MaxPool0/PartitionedCall:output:0conv2_17051conv2_17053*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *I
fDRB
@__inference_Conv2_layer_call_and_return_conditional_losses_170502
Conv2/StatefulPartitionedCall?
+BatchNormalization1/StatefulPartitionedCallStatefulPartitionedCall&Conv2/StatefulPartitionedCall:output:0batchnormalization1_17074batchnormalization1_17076batchnormalization1_17078batchnormalization1_17080*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *W
fRRP
N__inference_BatchNormalization1_layer_call_and_return_conditional_losses_170732-
+BatchNormalization1/StatefulPartitionedCall?
Conv3/StatefulPartitionedCallStatefulPartitionedCall4BatchNormalization1/StatefulPartitionedCall:output:0conv3_17095conv3_17097*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *I
fDRB
@__inference_Conv3_layer_call_and_return_conditional_losses_170942
Conv3/StatefulPartitionedCall?
MaxPool1/PartitionedCallPartitionedCall&Conv3/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_MaxPool1_layer_call_and_return_conditional_losses_169642
MaxPool1/PartitionedCall?
Flatten/PartitionedCallPartitionedCall!MaxPool1/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *K
fFRD
B__inference_Flatten_layer_call_and_return_conditional_losses_171072
Flatten/PartitionedCall?
Dropout/PartitionedCallPartitionedCall Flatten/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *K
fFRD
B__inference_Dropout_layer_call_and_return_conditional_losses_171142
Dropout/PartitionedCall?
Dense0/StatefulPartitionedCallStatefulPartitionedCall Dropout/PartitionedCall:output:0dense0_17128dense0_17130*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *J
fERC
A__inference_Dense0_layer_call_and_return_conditional_losses_171272 
Dense0/StatefulPartitionedCall?
Output/StatefulPartitionedCallStatefulPartitionedCall'Dense0/StatefulPartitionedCall:output:0output_17145output_17147*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????+*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *J
fERC
A__inference_Output_layer_call_and_return_conditional_losses_171442 
Output/StatefulPartitionedCall?
IdentityIdentity'Output/StatefulPartitionedCall:output:0,^BatchNormalization0/StatefulPartitionedCall,^BatchNormalization1/StatefulPartitionedCall^Conv0/StatefulPartitionedCall^Conv1/StatefulPartitionedCall^Conv2/StatefulPartitionedCall^Conv3/StatefulPartitionedCall^Dense0/StatefulPartitionedCall^Output/StatefulPartitionedCall*
T0*'
_output_shapes
:?????????+2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*V
_input_shapesE
C:?????????: : : : : : : : : : : : : : : : : : : : 2Z
+BatchNormalization0/StatefulPartitionedCall+BatchNormalization0/StatefulPartitionedCall2Z
+BatchNormalization1/StatefulPartitionedCall+BatchNormalization1/StatefulPartitionedCall2>
Conv0/StatefulPartitionedCallConv0/StatefulPartitionedCall2>
Conv1/StatefulPartitionedCallConv1/StatefulPartitionedCall2>
Conv2/StatefulPartitionedCallConv2/StatefulPartitionedCall2>
Conv3/StatefulPartitionedCallConv3/StatefulPartitionedCall2@
Dense0/StatefulPartitionedCallDense0/StatefulPartitionedCall2@
Output/StatefulPartitionedCallOutput/StatefulPartitionedCall:W S
/
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
$__inference_Test_layer_call_fn_17562
input_layer!
unknown: 
	unknown_0: 
	unknown_1: 
	unknown_2: 
	unknown_3: 
	unknown_4: #
	unknown_5:  
	unknown_6: #
	unknown_7: @
	unknown_8:@
	unknown_9:@

unknown_10:@

unknown_11:@

unknown_12:@$

unknown_13:@@

unknown_14:@

unknown_15:
??

unknown_16:	?

unknown_17:	?+

unknown_18:+
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinput_layerunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18* 
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????+*2
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8? *H
fCRA
?__inference_Test_layer_call_and_return_conditional_losses_174742
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????+2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*V
_input_shapesE
C:?????????: : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:\ X
/
_output_shapes
:?????????
%
_user_specified_nameinput_layer
?

?
A__inference_Dense0_layer_call_and_return_conditional_losses_17127

inputs2
matmul_readvariableop_resource:
??.
biasadd_readvariableop_resource:	?
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2	
BiasAddY
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:??????????2
Relu?
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?y
?
__inference__traced_save_18594
file_prefix+
'savev2_conv0_kernel_read_readvariableop)
%savev2_conv0_bias_read_readvariableop8
4savev2_batchnormalization0_gamma_read_readvariableop7
3savev2_batchnormalization0_beta_read_readvariableop>
:savev2_batchnormalization0_moving_mean_read_readvariableopB
>savev2_batchnormalization0_moving_variance_read_readvariableop+
'savev2_conv1_kernel_read_readvariableop)
%savev2_conv1_bias_read_readvariableop+
'savev2_conv2_kernel_read_readvariableop)
%savev2_conv2_bias_read_readvariableop8
4savev2_batchnormalization1_gamma_read_readvariableop7
3savev2_batchnormalization1_beta_read_readvariableop>
:savev2_batchnormalization1_moving_mean_read_readvariableopB
>savev2_batchnormalization1_moving_variance_read_readvariableop+
'savev2_conv3_kernel_read_readvariableop)
%savev2_conv3_bias_read_readvariableop,
(savev2_dense0_kernel_read_readvariableop*
&savev2_dense0_bias_read_readvariableop,
(savev2_output_kernel_read_readvariableop*
&savev2_output_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop&
"savev2_total_1_read_readvariableop&
"savev2_count_1_read_readvariableop2
.savev2_adam_conv0_kernel_m_read_readvariableop0
,savev2_adam_conv0_bias_m_read_readvariableop?
;savev2_adam_batchnormalization0_gamma_m_read_readvariableop>
:savev2_adam_batchnormalization0_beta_m_read_readvariableop2
.savev2_adam_conv1_kernel_m_read_readvariableop0
,savev2_adam_conv1_bias_m_read_readvariableop2
.savev2_adam_conv2_kernel_m_read_readvariableop0
,savev2_adam_conv2_bias_m_read_readvariableop?
;savev2_adam_batchnormalization1_gamma_m_read_readvariableop>
:savev2_adam_batchnormalization1_beta_m_read_readvariableop2
.savev2_adam_conv3_kernel_m_read_readvariableop0
,savev2_adam_conv3_bias_m_read_readvariableop3
/savev2_adam_dense0_kernel_m_read_readvariableop1
-savev2_adam_dense0_bias_m_read_readvariableop3
/savev2_adam_output_kernel_m_read_readvariableop1
-savev2_adam_output_bias_m_read_readvariableop2
.savev2_adam_conv0_kernel_v_read_readvariableop0
,savev2_adam_conv0_bias_v_read_readvariableop?
;savev2_adam_batchnormalization0_gamma_v_read_readvariableop>
:savev2_adam_batchnormalization0_beta_v_read_readvariableop2
.savev2_adam_conv1_kernel_v_read_readvariableop0
,savev2_adam_conv1_bias_v_read_readvariableop2
.savev2_adam_conv2_kernel_v_read_readvariableop0
,savev2_adam_conv2_bias_v_read_readvariableop?
;savev2_adam_batchnormalization1_gamma_v_read_readvariableop>
:savev2_adam_batchnormalization1_beta_v_read_readvariableop2
.savev2_adam_conv3_kernel_v_read_readvariableop0
,savev2_adam_conv3_bias_v_read_readvariableop3
/savev2_adam_dense0_kernel_v_read_readvariableop1
-savev2_adam_dense0_bias_v_read_readvariableop3
/savev2_adam_output_kernel_v_read_readvariableop1
-savev2_adam_output_bias_v_read_readvariableop
savev2_const

identity_1??MergeV2Checkpoints?
StaticRegexFullMatchStaticRegexFullMatchfile_prefix"/device:CPU:**
_output_shapes
: *
pattern
^s3://.*2
StaticRegexFullMatchc
ConstConst"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B.part2
Constl
Const_1Const"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B
_temp/part2	
Const_1?
SelectSelectStaticRegexFullMatch:output:0Const:output:0Const_1:output:0"/device:CPU:**
T0*
_output_shapes
: 2
Selectt

StringJoin
StringJoinfile_prefixSelect:output:0"/device:CPU:**
N*
_output_shapes
: 2

StringJoinZ

num_shardsConst*
_output_shapes
: *
dtype0*
value	B :2

num_shards
ShardedFilename/shardConst"/device:CPU:0*
_output_shapes
: *
dtype0*
value	B : 2
ShardedFilename/shard?
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: 2
ShardedFilename?"
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:>*
dtype0*?!
value?!B?!>B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-1/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-1/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-1/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-4/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-4/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-4/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-7/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-7/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-1/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-4/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-7/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-7/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-1/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-4/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-7/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-7/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
SaveV2/tensor_names?
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:>*
dtype0*?
value?B?>B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 2
SaveV2/shape_and_slices?
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0'savev2_conv0_kernel_read_readvariableop%savev2_conv0_bias_read_readvariableop4savev2_batchnormalization0_gamma_read_readvariableop3savev2_batchnormalization0_beta_read_readvariableop:savev2_batchnormalization0_moving_mean_read_readvariableop>savev2_batchnormalization0_moving_variance_read_readvariableop'savev2_conv1_kernel_read_readvariableop%savev2_conv1_bias_read_readvariableop'savev2_conv2_kernel_read_readvariableop%savev2_conv2_bias_read_readvariableop4savev2_batchnormalization1_gamma_read_readvariableop3savev2_batchnormalization1_beta_read_readvariableop:savev2_batchnormalization1_moving_mean_read_readvariableop>savev2_batchnormalization1_moving_variance_read_readvariableop'savev2_conv3_kernel_read_readvariableop%savev2_conv3_bias_read_readvariableop(savev2_dense0_kernel_read_readvariableop&savev2_dense0_bias_read_readvariableop(savev2_output_kernel_read_readvariableop&savev2_output_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableop.savev2_adam_conv0_kernel_m_read_readvariableop,savev2_adam_conv0_bias_m_read_readvariableop;savev2_adam_batchnormalization0_gamma_m_read_readvariableop:savev2_adam_batchnormalization0_beta_m_read_readvariableop.savev2_adam_conv1_kernel_m_read_readvariableop,savev2_adam_conv1_bias_m_read_readvariableop.savev2_adam_conv2_kernel_m_read_readvariableop,savev2_adam_conv2_bias_m_read_readvariableop;savev2_adam_batchnormalization1_gamma_m_read_readvariableop:savev2_adam_batchnormalization1_beta_m_read_readvariableop.savev2_adam_conv3_kernel_m_read_readvariableop,savev2_adam_conv3_bias_m_read_readvariableop/savev2_adam_dense0_kernel_m_read_readvariableop-savev2_adam_dense0_bias_m_read_readvariableop/savev2_adam_output_kernel_m_read_readvariableop-savev2_adam_output_bias_m_read_readvariableop.savev2_adam_conv0_kernel_v_read_readvariableop,savev2_adam_conv0_bias_v_read_readvariableop;savev2_adam_batchnormalization0_gamma_v_read_readvariableop:savev2_adam_batchnormalization0_beta_v_read_readvariableop.savev2_adam_conv1_kernel_v_read_readvariableop,savev2_adam_conv1_bias_v_read_readvariableop.savev2_adam_conv2_kernel_v_read_readvariableop,savev2_adam_conv2_bias_v_read_readvariableop;savev2_adam_batchnormalization1_gamma_v_read_readvariableop:savev2_adam_batchnormalization1_beta_v_read_readvariableop.savev2_adam_conv3_kernel_v_read_readvariableop,savev2_adam_conv3_bias_v_read_readvariableop/savev2_adam_dense0_kernel_v_read_readvariableop-savev2_adam_dense0_bias_v_read_readvariableop/savev2_adam_output_kernel_v_read_readvariableop-savev2_adam_output_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *L
dtypesB
@2>	2
SaveV2?
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:2(
&MergeV2Checkpoints/checkpoint_prefixes?
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*
_output_shapes
 2
MergeV2Checkpointsr
IdentityIdentityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: 2

Identitym

Identity_1IdentityIdentity:output:0^MergeV2Checkpoints*
T0*
_output_shapes
: 2

Identity_1"!

identity_1Identity_1:output:0*?
_input_shapes?
?: : : : : : : :  : : @:@:@:@:@:@:@@:@:
??:?:	?+:+: : : : : : : : : : : : : :  : : @:@:@:@:@@:@:
??:?:	?+:+: : : : :  : : @:@:@:@:@@:@:
??:?:	?+:+: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:,(
&
_output_shapes
: : 

_output_shapes
: : 

_output_shapes
: : 

_output_shapes
: : 

_output_shapes
: : 

_output_shapes
: :,(
&
_output_shapes
:  : 

_output_shapes
: :,	(
&
_output_shapes
: @: 


_output_shapes
:@: 

_output_shapes
:@: 

_output_shapes
:@: 

_output_shapes
:@: 

_output_shapes
:@:,(
&
_output_shapes
:@@: 

_output_shapes
:@:&"
 
_output_shapes
:
??:!

_output_shapes	
:?:%!

_output_shapes
:	?+: 

_output_shapes
:+:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :,(
&
_output_shapes
: : 

_output_shapes
: :  

_output_shapes
: : !

_output_shapes
: :,"(
&
_output_shapes
:  : #

_output_shapes
: :,$(
&
_output_shapes
: @: %

_output_shapes
:@: &

_output_shapes
:@: '

_output_shapes
:@:,((
&
_output_shapes
:@@: )

_output_shapes
:@:&*"
 
_output_shapes
:
??:!+

_output_shapes	
:?:%,!

_output_shapes
:	?+: -

_output_shapes
:+:,.(
&
_output_shapes
: : /

_output_shapes
: : 0

_output_shapes
: : 1

_output_shapes
: :,2(
&
_output_shapes
:  : 3

_output_shapes
: :,4(
&
_output_shapes
: @: 5

_output_shapes
:@: 6

_output_shapes
:@: 7

_output_shapes
:@:,8(
&
_output_shapes
:@@: 9

_output_shapes
:@:&:"
 
_output_shapes
:
??:!;

_output_shapes	
:?:%<!

_output_shapes
:	?+: =

_output_shapes
:+:>

_output_shapes
: 
?
?
N__inference_BatchNormalization1_layer_call_and_return_conditional_losses_18290

inputs%
readvariableop_resource:@'
readvariableop_1_resource:@6
(fusedbatchnormv3_readvariableop_resource:@8
*fusedbatchnormv3_readvariableop_1_resource:@
identity??AssignNewValue?AssignNewValue_1?FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:@*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:@*
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:?????????@:@:@:@:@:*
epsilon%o?:*
exponential_avg_factor%
?#<2
FusedBatchNormV3?
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype02
AssignNewValue?
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype02
AssignNewValue_1?
IdentityIdentityFusedBatchNormV3:y:0^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*/
_output_shapes
:?????????@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:?????????@: : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:W S
/
_output_shapes
:?????????@
 
_user_specified_nameinputs"?L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*?
serving_default?
K
input_layer<
serving_default_input_layer:0?????????:
Output0
StatefulPartitionedCall:0?????????+tensorflow/serving/predict:??
?|
layer-0
layer_with_weights-0
layer-1
layer_with_weights-1
layer-2
layer_with_weights-2
layer-3
layer-4
layer_with_weights-3
layer-5
layer_with_weights-4
layer-6
layer_with_weights-5
layer-7
	layer-8

layer-9
layer-10
layer_with_weights-6
layer-11
layer_with_weights-7
layer-12
	optimizer
trainable_variables
	variables
regularization_losses
	keras_api

signatures
?__call__
+?&call_and_return_all_conditional_losses
?_default_save_signature"?w
_tf_keras_network?w{"name": "Test", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "must_restore_from_config": false, "class_name": "Functional", "config": {"name": "Test", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 30, 30, 3]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "input_layer"}, "name": "input_layer", "inbound_nodes": []}, {"class_name": "Conv2D", "config": {"name": "Conv0", "trainable": true, "dtype": "float32", "filters": 32, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "Conv0", "inbound_nodes": [[["input_layer", 0, 0, {}]]]}, {"class_name": "BatchNormalization", "config": {"name": "BatchNormalization0", "trainable": true, "dtype": "float32", "axis": [3], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}}, "moving_variance_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "name": "BatchNormalization0", "inbound_nodes": [[["Conv0", 0, 0, {}]]]}, {"class_name": "Conv2D", "config": {"name": "Conv1", "trainable": true, "dtype": "float32", "filters": 32, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "Conv1", "inbound_nodes": [[["BatchNormalization0", 0, 0, {}]]]}, {"class_name": "MaxPooling2D", "config": {"name": "MaxPool0", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}, "name": "MaxPool0", "inbound_nodes": [[["Conv1", 0, 0, {}]]]}, {"class_name": "Conv2D", "config": {"name": "Conv2", "trainable": true, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "Conv2", "inbound_nodes": [[["MaxPool0", 0, 0, {}]]]}, {"class_name": "BatchNormalization", "config": {"name": "BatchNormalization1", "trainable": true, "dtype": "float32", "axis": [3], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}}, "moving_variance_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "name": "BatchNormalization1", "inbound_nodes": [[["Conv2", 0, 0, {}]]]}, {"class_name": "Conv2D", "config": {"name": "Conv3", "trainable": true, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "Conv3", "inbound_nodes": [[["BatchNormalization1", 0, 0, {}]]]}, {"class_name": "MaxPooling2D", "config": {"name": "MaxPool1", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}, "name": "MaxPool1", "inbound_nodes": [[["Conv3", 0, 0, {}]]]}, {"class_name": "Flatten", "config": {"name": "Flatten", "trainable": true, "dtype": "float32", "data_format": "channels_last"}, "name": "Flatten", "inbound_nodes": [[["MaxPool1", 0, 0, {}]]]}, {"class_name": "Dropout", "config": {"name": "Dropout", "trainable": true, "dtype": "float32", "rate": 0.2, "noise_shape": null, "seed": null}, "name": "Dropout", "inbound_nodes": [[["Flatten", 0, 0, {}]]]}, {"class_name": "Dense", "config": {"name": "Dense0", "trainable": true, "dtype": "float32", "units": 1024, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "Dense0", "inbound_nodes": [[["Dropout", 0, 0, {}]]]}, {"class_name": "Dense", "config": {"name": "Output", "trainable": true, "dtype": "float32", "units": 43, "activation": "softmax", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "Output", "inbound_nodes": [[["Dense0", 0, 0, {}]]]}], "input_layers": [["input_layer", 0, 0]], "output_layers": [["Output", 0, 0]]}, "shared_object_id": 33, "input_spec": [{"class_name": "InputSpec", "config": {"dtype": null, "shape": {"class_name": "__tuple__", "items": [null, 30, 30, 3]}, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {}}}], "build_input_shape": {"class_name": "TensorShape", "items": [null, 30, 30, 3]}, "is_graph_network": true, "save_spec": {"class_name": "TypeSpec", "type_spec": "tf.TensorSpec", "serialized": [{"class_name": "TensorShape", "items": [null, 30, 30, 3]}, "float32", "input_layer"]}, "keras_version": "2.5.0", "backend": "tensorflow", "model_config": {"class_name": "Functional", "config": {"name": "Test", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 30, 30, 3]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "input_layer"}, "name": "input_layer", "inbound_nodes": [], "shared_object_id": 0}, {"class_name": "Conv2D", "config": {"name": "Conv0", "trainable": true, "dtype": "float32", "filters": 32, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 1}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 2}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "Conv0", "inbound_nodes": [[["input_layer", 0, 0, {}]]], "shared_object_id": 3}, {"class_name": "BatchNormalization", "config": {"name": "BatchNormalization0", "trainable": true, "dtype": "float32", "axis": [3], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 4}, "gamma_initializer": {"class_name": "Ones", "config": {}, "shared_object_id": 5}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 6}, "moving_variance_initializer": {"class_name": "Ones", "config": {}, "shared_object_id": 7}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "name": "BatchNormalization0", "inbound_nodes": [[["Conv0", 0, 0, {}]]], "shared_object_id": 8}, {"class_name": "Conv2D", "config": {"name": "Conv1", "trainable": true, "dtype": "float32", "filters": 32, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 9}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 10}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "Conv1", "inbound_nodes": [[["BatchNormalization0", 0, 0, {}]]], "shared_object_id": 11}, {"class_name": "MaxPooling2D", "config": {"name": "MaxPool0", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}, "name": "MaxPool0", "inbound_nodes": [[["Conv1", 0, 0, {}]]], "shared_object_id": 12}, {"class_name": "Conv2D", "config": {"name": "Conv2", "trainable": true, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 13}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 14}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "Conv2", "inbound_nodes": [[["MaxPool0", 0, 0, {}]]], "shared_object_id": 15}, {"class_name": "BatchNormalization", "config": {"name": "BatchNormalization1", "trainable": true, "dtype": "float32", "axis": [3], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 16}, "gamma_initializer": {"class_name": "Ones", "config": {}, "shared_object_id": 17}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 18}, "moving_variance_initializer": {"class_name": "Ones", "config": {}, "shared_object_id": 19}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "name": "BatchNormalization1", "inbound_nodes": [[["Conv2", 0, 0, {}]]], "shared_object_id": 20}, {"class_name": "Conv2D", "config": {"name": "Conv3", "trainable": true, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 21}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 22}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "Conv3", "inbound_nodes": [[["BatchNormalization1", 0, 0, {}]]], "shared_object_id": 23}, {"class_name": "MaxPooling2D", "config": {"name": "MaxPool1", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}, "name": "MaxPool1", "inbound_nodes": [[["Conv3", 0, 0, {}]]], "shared_object_id": 24}, {"class_name": "Flatten", "config": {"name": "Flatten", "trainable": true, "dtype": "float32", "data_format": "channels_last"}, "name": "Flatten", "inbound_nodes": [[["MaxPool1", 0, 0, {}]]], "shared_object_id": 25}, {"class_name": "Dropout", "config": {"name": "Dropout", "trainable": true, "dtype": "float32", "rate": 0.2, "noise_shape": null, "seed": null}, "name": "Dropout", "inbound_nodes": [[["Flatten", 0, 0, {}]]], "shared_object_id": 26}, {"class_name": "Dense", "config": {"name": "Dense0", "trainable": true, "dtype": "float32", "units": 1024, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 27}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 28}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "Dense0", "inbound_nodes": [[["Dropout", 0, 0, {}]]], "shared_object_id": 29}, {"class_name": "Dense", "config": {"name": "Output", "trainable": true, "dtype": "float32", "units": 43, "activation": "softmax", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 30}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 31}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "Output", "inbound_nodes": [[["Dense0", 0, 0, {}]]], "shared_object_id": 32}], "input_layers": [["input_layer", 0, 0]], "output_layers": [["Output", 0, 0]]}}, "training_config": {"loss": "categorical_crossentropy", "metrics": [[{"class_name": "MeanMetricWrapper", "config": {"name": "accuracy", "dtype": "float32", "fn": "categorical_accuracy"}, "shared_object_id": 35}]], "weighted_metrics": null, "loss_weights": null, "optimizer_config": {"class_name": "Adam", "config": {"name": "Adam", "learning_rate": 0.0010000000474974513, "decay": 0.0, "beta_1": 0.8999999761581421, "beta_2": 0.9990000128746033, "epsilon": 1e-07, "amsgrad": false}}}}
?"?
_tf_keras_input_layer?{"class_name": "InputLayer", "name": "input_layer", "dtype": "float32", "sparse": false, "ragged": false, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 30, 30, 3]}, "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 30, 30, 3]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "input_layer"}}
?


kernel
bias
trainable_variables
regularization_losses
	variables
	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?	
_tf_keras_layer?	{"name": "Conv0", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Conv2D", "config": {"name": "Conv0", "trainable": true, "dtype": "float32", "filters": 32, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 1}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 2}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "inbound_nodes": [[["input_layer", 0, 0, {}]]], "shared_object_id": 3, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 3}}, "shared_object_id": 36}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 30, 30, 3]}}
?

axis
	gamma
beta
moving_mean
moving_variance
trainable_variables
 regularization_losses
!	variables
"	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?	
_tf_keras_layer?{"name": "BatchNormalization0", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "BatchNormalization", "config": {"name": "BatchNormalization0", "trainable": true, "dtype": "float32", "axis": [3], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 4}, "gamma_initializer": {"class_name": "Ones", "config": {}, "shared_object_id": 5}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 6}, "moving_variance_initializer": {"class_name": "Ones", "config": {}, "shared_object_id": 7}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "inbound_nodes": [[["Conv0", 0, 0, {}]]], "shared_object_id": 8, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {"3": 32}}, "shared_object_id": 37}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 30, 30, 32]}}
?

#kernel
$bias
%trainable_variables
&regularization_losses
'	variables
(	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?	
_tf_keras_layer?	{"name": "Conv1", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Conv2D", "config": {"name": "Conv1", "trainable": true, "dtype": "float32", "filters": 32, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 9}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 10}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "inbound_nodes": [[["BatchNormalization0", 0, 0, {}]]], "shared_object_id": 11, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 32}}, "shared_object_id": 38}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 30, 30, 32]}}
?
)trainable_variables
*regularization_losses
+	variables
,	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"name": "MaxPool0", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "MaxPooling2D", "config": {"name": "MaxPool0", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}, "inbound_nodes": [[["Conv1", 0, 0, {}]]], "shared_object_id": 12, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {}}, "shared_object_id": 39}}
?


-kernel
.bias
/trainable_variables
0regularization_losses
1	variables
2	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?	
_tf_keras_layer?	{"name": "Conv2", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Conv2D", "config": {"name": "Conv2", "trainable": true, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 13}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 14}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "inbound_nodes": [[["MaxPool0", 0, 0, {}]]], "shared_object_id": 15, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 32}}, "shared_object_id": 40}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 15, 15, 32]}}
?

3axis
	4gamma
5beta
6moving_mean
7moving_variance
8trainable_variables
9regularization_losses
:	variables
;	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?	
_tf_keras_layer?	{"name": "BatchNormalization1", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "BatchNormalization", "config": {"name": "BatchNormalization1", "trainable": true, "dtype": "float32", "axis": [3], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 16}, "gamma_initializer": {"class_name": "Ones", "config": {}, "shared_object_id": 17}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 18}, "moving_variance_initializer": {"class_name": "Ones", "config": {}, "shared_object_id": 19}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "inbound_nodes": [[["Conv2", 0, 0, {}]]], "shared_object_id": 20, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {"3": 64}}, "shared_object_id": 41}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 15, 15, 64]}}
?

<kernel
=bias
>trainable_variables
?regularization_losses
@	variables
A	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?	
_tf_keras_layer?	{"name": "Conv3", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Conv2D", "config": {"name": "Conv3", "trainable": true, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 21}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 22}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "inbound_nodes": [[["BatchNormalization1", 0, 0, {}]]], "shared_object_id": 23, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 64}}, "shared_object_id": 42}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 15, 15, 64]}}
?
Btrainable_variables
Cregularization_losses
D	variables
E	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"name": "MaxPool1", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "MaxPooling2D", "config": {"name": "MaxPool1", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}, "inbound_nodes": [[["Conv3", 0, 0, {}]]], "shared_object_id": 24, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {}}, "shared_object_id": 43}}
?
Ftrainable_variables
Gregularization_losses
H	variables
I	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"name": "Flatten", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Flatten", "config": {"name": "Flatten", "trainable": true, "dtype": "float32", "data_format": "channels_last"}, "inbound_nodes": [[["MaxPool1", 0, 0, {}]]], "shared_object_id": 25, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 1, "axes": {}}, "shared_object_id": 44}}
?
Jtrainable_variables
Kregularization_losses
L	variables
M	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"name": "Dropout", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Dropout", "config": {"name": "Dropout", "trainable": true, "dtype": "float32", "rate": 0.2, "noise_shape": null, "seed": null}, "inbound_nodes": [[["Flatten", 0, 0, {}]]], "shared_object_id": 26}
?	

Nkernel
Obias
Ptrainable_variables
Qregularization_losses
R	variables
S	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"name": "Dense0", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Dense", "config": {"name": "Dense0", "trainable": true, "dtype": "float32", "units": 1024, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 27}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 28}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "inbound_nodes": [[["Dropout", 0, 0, {}]]], "shared_object_id": 29, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 3136}}, "shared_object_id": 45}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 3136]}}
?	

Tkernel
Ubias
Vtrainable_variables
Wregularization_losses
X	variables
Y	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"name": "Output", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Dense", "config": {"name": "Output", "trainable": true, "dtype": "float32", "units": 43, "activation": "softmax", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 30}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 31}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "inbound_nodes": [[["Dense0", 0, 0, {}]]], "shared_object_id": 32, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 1024}}, "shared_object_id": 46}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 1024]}}
?
Ziter

[beta_1

\beta_2
	]decay
^learning_ratem?m?m?m?#m?$m?-m?.m?4m?5m?<m?=m?Nm?Om?Tm?Um?v?v?v?v?#v?$v?-v?.v?4v?5v?<v?=v?Nv?Ov?Tv?Uv?"
	optimizer
?
0
1
2
3
#4
$5
-6
.7
48
59
<10
=11
N12
O13
T14
U15"
trackable_list_wrapper
?
0
1
2
3
4
5
#6
$7
-8
.9
410
511
612
713
<14
=15
N16
O17
T18
U19"
trackable_list_wrapper
 "
trackable_list_wrapper
?
trainable_variables
	variables
regularization_losses
_non_trainable_variables
`layer_metrics
ametrics
blayer_regularization_losses

clayers
?__call__
?_default_save_signature
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
-
?serving_default"
signature_map
&:$ 2Conv0/kernel
: 2
Conv0/bias
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
?
trainable_variables
regularization_losses
	variables
dnon_trainable_variables
elayer_metrics
fmetrics
glayer_regularization_losses

hlayers
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
':% 2BatchNormalization0/gamma
&:$ 2BatchNormalization0/beta
/:-  (2BatchNormalization0/moving_mean
3:1  (2#BatchNormalization0/moving_variance
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
<
0
1
2
3"
trackable_list_wrapper
?
trainable_variables
 regularization_losses
!	variables
inon_trainable_variables
jlayer_metrics
kmetrics
llayer_regularization_losses

mlayers
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
&:$  2Conv1/kernel
: 2
Conv1/bias
.
#0
$1"
trackable_list_wrapper
 "
trackable_list_wrapper
.
#0
$1"
trackable_list_wrapper
?
%trainable_variables
&regularization_losses
'	variables
nnon_trainable_variables
olayer_metrics
pmetrics
qlayer_regularization_losses

rlayers
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
)trainable_variables
*regularization_losses
+	variables
snon_trainable_variables
tlayer_metrics
umetrics
vlayer_regularization_losses

wlayers
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
&:$ @2Conv2/kernel
:@2
Conv2/bias
.
-0
.1"
trackable_list_wrapper
 "
trackable_list_wrapper
.
-0
.1"
trackable_list_wrapper
?
/trainable_variables
0regularization_losses
1	variables
xnon_trainable_variables
ylayer_metrics
zmetrics
{layer_regularization_losses

|layers
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
':%@2BatchNormalization1/gamma
&:$@2BatchNormalization1/beta
/:-@ (2BatchNormalization1/moving_mean
3:1@ (2#BatchNormalization1/moving_variance
.
40
51"
trackable_list_wrapper
 "
trackable_list_wrapper
<
40
51
62
73"
trackable_list_wrapper
?
8trainable_variables
9regularization_losses
:	variables
}non_trainable_variables
~layer_metrics
metrics
 ?layer_regularization_losses
?layers
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
&:$@@2Conv3/kernel
:@2
Conv3/bias
.
<0
=1"
trackable_list_wrapper
 "
trackable_list_wrapper
.
<0
=1"
trackable_list_wrapper
?
>trainable_variables
?regularization_losses
@	variables
?non_trainable_variables
?layer_metrics
?metrics
 ?layer_regularization_losses
?layers
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
Btrainable_variables
Cregularization_losses
D	variables
?non_trainable_variables
?layer_metrics
?metrics
 ?layer_regularization_losses
?layers
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
Ftrainable_variables
Gregularization_losses
H	variables
?non_trainable_variables
?layer_metrics
?metrics
 ?layer_regularization_losses
?layers
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
Jtrainable_variables
Kregularization_losses
L	variables
?non_trainable_variables
?layer_metrics
?metrics
 ?layer_regularization_losses
?layers
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
!:
??2Dense0/kernel
:?2Dense0/bias
.
N0
O1"
trackable_list_wrapper
 "
trackable_list_wrapper
.
N0
O1"
trackable_list_wrapper
?
Ptrainable_variables
Qregularization_losses
R	variables
?non_trainable_variables
?layer_metrics
?metrics
 ?layer_regularization_losses
?layers
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 :	?+2Output/kernel
:+2Output/bias
.
T0
U1"
trackable_list_wrapper
 "
trackable_list_wrapper
.
T0
U1"
trackable_list_wrapper
?
Vtrainable_variables
Wregularization_losses
X	variables
?non_trainable_variables
?layer_metrics
?metrics
 ?layer_regularization_losses
?layers
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
:	 (2	Adam/iter
: (2Adam/beta_1
: (2Adam/beta_2
: (2
Adam/decay
: (2Adam/learning_rate
<
0
1
62
73"
trackable_list_wrapper
 "
trackable_dict_wrapper
0
?0
?1"
trackable_list_wrapper
 "
trackable_list_wrapper
~
0
1
2
3
4
5
6
7
	8

9
10
11
12"
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
.
0
1"
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
.
60
71"
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
?

?total

?count
?	variables
?	keras_api"?
_tf_keras_metric?{"class_name": "Mean", "name": "loss", "dtype": "float32", "config": {"name": "loss", "dtype": "float32"}, "shared_object_id": 47}
?

?total

?count
?
_fn_kwargs
?	variables
?	keras_api"?
_tf_keras_metric?{"class_name": "MeanMetricWrapper", "name": "accuracy", "dtype": "float32", "config": {"name": "accuracy", "dtype": "float32", "fn": "categorical_accuracy"}, "shared_object_id": 35}
:  (2total
:  (2count
0
?0
?1"
trackable_list_wrapper
.
?	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper
0
?0
?1"
trackable_list_wrapper
.
?	variables"
_generic_user_object
+:) 2Adam/Conv0/kernel/m
: 2Adam/Conv0/bias/m
,:* 2 Adam/BatchNormalization0/gamma/m
+:) 2Adam/BatchNormalization0/beta/m
+:)  2Adam/Conv1/kernel/m
: 2Adam/Conv1/bias/m
+:) @2Adam/Conv2/kernel/m
:@2Adam/Conv2/bias/m
,:*@2 Adam/BatchNormalization1/gamma/m
+:)@2Adam/BatchNormalization1/beta/m
+:)@@2Adam/Conv3/kernel/m
:@2Adam/Conv3/bias/m
&:$
??2Adam/Dense0/kernel/m
:?2Adam/Dense0/bias/m
%:#	?+2Adam/Output/kernel/m
:+2Adam/Output/bias/m
+:) 2Adam/Conv0/kernel/v
: 2Adam/Conv0/bias/v
,:* 2 Adam/BatchNormalization0/gamma/v
+:) 2Adam/BatchNormalization0/beta/v
+:)  2Adam/Conv1/kernel/v
: 2Adam/Conv1/bias/v
+:) @2Adam/Conv2/kernel/v
:@2Adam/Conv2/bias/v
,:*@2 Adam/BatchNormalization1/gamma/v
+:)@2Adam/BatchNormalization1/beta/v
+:)@@2Adam/Conv3/kernel/v
:@2Adam/Conv3/bias/v
&:$
??2Adam/Dense0/kernel/v
:?2Adam/Dense0/bias/v
%:#	?+2Adam/Output/kernel/v
:+2Adam/Output/bias/v
?2?
$__inference_Test_layer_call_fn_17194
$__inference_Test_layer_call_fn_17772
$__inference_Test_layer_call_fn_17817
$__inference_Test_layer_call_fn_17562?
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
?__inference_Test_layer_call_and_return_conditional_losses_17896
?__inference_Test_layer_call_and_return_conditional_losses_17982
?__inference_Test_layer_call_and_return_conditional_losses_17618
?__inference_Test_layer_call_and_return_conditional_losses_17674?
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
?2?
 __inference__wrapped_model_16694?
???
FullArgSpec
args? 
varargsjargs
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *2?/
-?*
input_layer?????????
?2?
%__inference_Conv0_layer_call_fn_17991?
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
@__inference_Conv0_layer_call_and_return_conditional_losses_18002?
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
?2?
3__inference_BatchNormalization0_layer_call_fn_18015
3__inference_BatchNormalization0_layer_call_fn_18028
3__inference_BatchNormalization0_layer_call_fn_18041
3__inference_BatchNormalization0_layer_call_fn_18054?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
N__inference_BatchNormalization0_layer_call_and_return_conditional_losses_18072
N__inference_BatchNormalization0_layer_call_and_return_conditional_losses_18090
N__inference_BatchNormalization0_layer_call_and_return_conditional_losses_18108
N__inference_BatchNormalization0_layer_call_and_return_conditional_losses_18126?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
%__inference_Conv1_layer_call_fn_18135?
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
@__inference_Conv1_layer_call_and_return_conditional_losses_18146?
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
?2?
(__inference_MaxPool0_layer_call_fn_16832?
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
annotations? *@?=
;?84????????????????????????????????????
?2?
C__inference_MaxPool0_layer_call_and_return_conditional_losses_16826?
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
annotations? *@?=
;?84????????????????????????????????????
?2?
%__inference_Conv2_layer_call_fn_18155?
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
@__inference_Conv2_layer_call_and_return_conditional_losses_18166?
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
?2?
3__inference_BatchNormalization1_layer_call_fn_18179
3__inference_BatchNormalization1_layer_call_fn_18192
3__inference_BatchNormalization1_layer_call_fn_18205
3__inference_BatchNormalization1_layer_call_fn_18218?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
N__inference_BatchNormalization1_layer_call_and_return_conditional_losses_18236
N__inference_BatchNormalization1_layer_call_and_return_conditional_losses_18254
N__inference_BatchNormalization1_layer_call_and_return_conditional_losses_18272
N__inference_BatchNormalization1_layer_call_and_return_conditional_losses_18290?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
%__inference_Conv3_layer_call_fn_18299?
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
@__inference_Conv3_layer_call_and_return_conditional_losses_18310?
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
?2?
(__inference_MaxPool1_layer_call_fn_16970?
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
annotations? *@?=
;?84????????????????????????????????????
?2?
C__inference_MaxPool1_layer_call_and_return_conditional_losses_16964?
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
annotations? *@?=
;?84????????????????????????????????????
?2?
'__inference_Flatten_layer_call_fn_18315?
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
B__inference_Flatten_layer_call_and_return_conditional_losses_18321?
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
?2?
'__inference_Dropout_layer_call_fn_18326
'__inference_Dropout_layer_call_fn_18331?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
B__inference_Dropout_layer_call_and_return_conditional_losses_18336
B__inference_Dropout_layer_call_and_return_conditional_losses_18348?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
&__inference_Dense0_layer_call_fn_18357?
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
A__inference_Dense0_layer_call_and_return_conditional_losses_18368?
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
&__inference_Output_layer_call_fn_18377?
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
A__inference_Output_layer_call_and_return_conditional_losses_18388?
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
?B?
#__inference_signature_wrapper_17727input_layer"?
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
 ?
N__inference_BatchNormalization0_layer_call_and_return_conditional_losses_18072?M?J
C?@
:?7
inputs+??????????????????????????? 
p 
? "??<
5?2
0+??????????????????????????? 
? ?
N__inference_BatchNormalization0_layer_call_and_return_conditional_losses_18090?M?J
C?@
:?7
inputs+??????????????????????????? 
p
? "??<
5?2
0+??????????????????????????? 
? ?
N__inference_BatchNormalization0_layer_call_and_return_conditional_losses_18108r;?8
1?.
(?%
inputs????????? 
p 
? "-?*
#? 
0????????? 
? ?
N__inference_BatchNormalization0_layer_call_and_return_conditional_losses_18126r;?8
1?.
(?%
inputs????????? 
p
? "-?*
#? 
0????????? 
? ?
3__inference_BatchNormalization0_layer_call_fn_18015?M?J
C?@
:?7
inputs+??????????????????????????? 
p 
? "2?/+??????????????????????????? ?
3__inference_BatchNormalization0_layer_call_fn_18028?M?J
C?@
:?7
inputs+??????????????????????????? 
p
? "2?/+??????????????????????????? ?
3__inference_BatchNormalization0_layer_call_fn_18041e;?8
1?.
(?%
inputs????????? 
p 
? " ?????????? ?
3__inference_BatchNormalization0_layer_call_fn_18054e;?8
1?.
(?%
inputs????????? 
p
? " ?????????? ?
N__inference_BatchNormalization1_layer_call_and_return_conditional_losses_18236?4567M?J
C?@
:?7
inputs+???????????????????????????@
p 
? "??<
5?2
0+???????????????????????????@
? ?
N__inference_BatchNormalization1_layer_call_and_return_conditional_losses_18254?4567M?J
C?@
:?7
inputs+???????????????????????????@
p
? "??<
5?2
0+???????????????????????????@
? ?
N__inference_BatchNormalization1_layer_call_and_return_conditional_losses_18272r4567;?8
1?.
(?%
inputs?????????@
p 
? "-?*
#? 
0?????????@
? ?
N__inference_BatchNormalization1_layer_call_and_return_conditional_losses_18290r4567;?8
1?.
(?%
inputs?????????@
p
? "-?*
#? 
0?????????@
? ?
3__inference_BatchNormalization1_layer_call_fn_18179?4567M?J
C?@
:?7
inputs+???????????????????????????@
p 
? "2?/+???????????????????????????@?
3__inference_BatchNormalization1_layer_call_fn_18192?4567M?J
C?@
:?7
inputs+???????????????????????????@
p
? "2?/+???????????????????????????@?
3__inference_BatchNormalization1_layer_call_fn_18205e4567;?8
1?.
(?%
inputs?????????@
p 
? " ??????????@?
3__inference_BatchNormalization1_layer_call_fn_18218e4567;?8
1?.
(?%
inputs?????????@
p
? " ??????????@?
@__inference_Conv0_layer_call_and_return_conditional_losses_18002l7?4
-?*
(?%
inputs?????????
? "-?*
#? 
0????????? 
? ?
%__inference_Conv0_layer_call_fn_17991_7?4
-?*
(?%
inputs?????????
? " ?????????? ?
@__inference_Conv1_layer_call_and_return_conditional_losses_18146l#$7?4
-?*
(?%
inputs????????? 
? "-?*
#? 
0????????? 
? ?
%__inference_Conv1_layer_call_fn_18135_#$7?4
-?*
(?%
inputs????????? 
? " ?????????? ?
@__inference_Conv2_layer_call_and_return_conditional_losses_18166l-.7?4
-?*
(?%
inputs????????? 
? "-?*
#? 
0?????????@
? ?
%__inference_Conv2_layer_call_fn_18155_-.7?4
-?*
(?%
inputs????????? 
? " ??????????@?
@__inference_Conv3_layer_call_and_return_conditional_losses_18310l<=7?4
-?*
(?%
inputs?????????@
? "-?*
#? 
0?????????@
? ?
%__inference_Conv3_layer_call_fn_18299_<=7?4
-?*
(?%
inputs?????????@
? " ??????????@?
A__inference_Dense0_layer_call_and_return_conditional_losses_18368^NO0?-
&?#
!?
inputs??????????
? "&?#
?
0??????????
? {
&__inference_Dense0_layer_call_fn_18357QNO0?-
&?#
!?
inputs??????????
? "????????????
B__inference_Dropout_layer_call_and_return_conditional_losses_18336^4?1
*?'
!?
inputs??????????
p 
? "&?#
?
0??????????
? ?
B__inference_Dropout_layer_call_and_return_conditional_losses_18348^4?1
*?'
!?
inputs??????????
p
? "&?#
?
0??????????
? |
'__inference_Dropout_layer_call_fn_18326Q4?1
*?'
!?
inputs??????????
p 
? "???????????|
'__inference_Dropout_layer_call_fn_18331Q4?1
*?'
!?
inputs??????????
p
? "????????????
B__inference_Flatten_layer_call_and_return_conditional_losses_18321a7?4
-?*
(?%
inputs?????????@
? "&?#
?
0??????????
? 
'__inference_Flatten_layer_call_fn_18315T7?4
-?*
(?%
inputs?????????@
? "????????????
C__inference_MaxPool0_layer_call_and_return_conditional_losses_16826?R?O
H?E
C?@
inputs4????????????????????????????????????
? "H?E
>?;
04????????????????????????????????????
? ?
(__inference_MaxPool0_layer_call_fn_16832?R?O
H?E
C?@
inputs4????????????????????????????????????
? ";?84?????????????????????????????????????
C__inference_MaxPool1_layer_call_and_return_conditional_losses_16964?R?O
H?E
C?@
inputs4????????????????????????????????????
? "H?E
>?;
04????????????????????????????????????
? ?
(__inference_MaxPool1_layer_call_fn_16970?R?O
H?E
C?@
inputs4????????????????????????????????????
? ";?84?????????????????????????????????????
A__inference_Output_layer_call_and_return_conditional_losses_18388]TU0?-
&?#
!?
inputs??????????
? "%?"
?
0?????????+
? z
&__inference_Output_layer_call_fn_18377PTU0?-
&?#
!?
inputs??????????
? "??????????+?
?__inference_Test_layer_call_and_return_conditional_losses_17618?#$-.4567<=NOTUD?A
:?7
-?*
input_layer?????????
p 

 
? "%?"
?
0?????????+
? ?
?__inference_Test_layer_call_and_return_conditional_losses_17674?#$-.4567<=NOTUD?A
:?7
-?*
input_layer?????????
p

 
? "%?"
?
0?????????+
? ?
?__inference_Test_layer_call_and_return_conditional_losses_17896~#$-.4567<=NOTU??<
5?2
(?%
inputs?????????
p 

 
? "%?"
?
0?????????+
? ?
?__inference_Test_layer_call_and_return_conditional_losses_17982~#$-.4567<=NOTU??<
5?2
(?%
inputs?????????
p

 
? "%?"
?
0?????????+
? ?
$__inference_Test_layer_call_fn_17194v#$-.4567<=NOTUD?A
:?7
-?*
input_layer?????????
p 

 
? "??????????+?
$__inference_Test_layer_call_fn_17562v#$-.4567<=NOTUD?A
:?7
-?*
input_layer?????????
p

 
? "??????????+?
$__inference_Test_layer_call_fn_17772q#$-.4567<=NOTU??<
5?2
(?%
inputs?????????
p 

 
? "??????????+?
$__inference_Test_layer_call_fn_17817q#$-.4567<=NOTU??<
5?2
(?%
inputs?????????
p

 
? "??????????+?
 __inference__wrapped_model_16694?#$-.4567<=NOTU<?9
2?/
-?*
input_layer?????????
? "/?,
*
Output ?
Output?????????+?
#__inference_signature_wrapper_17727?#$-.4567<=NOTUK?H
? 
A?>
<
input_layer-?*
input_layer?????????"/?,
*
Output ?
Output?????????+