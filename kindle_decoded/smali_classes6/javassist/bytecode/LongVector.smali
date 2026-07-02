.class final Ljavassist/bytecode/LongVector;
.super Ljava/lang/Object;
.source "LongVector.java"


# instance fields
.field private elements:I

.field private objects:[[Ljavassist/bytecode/ConstInfo;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x8

    new-array v0, v0, [[Ljavassist/bytecode/ConstInfo;

    .line 27
    iput-object v0, p0, Ljavassist/bytecode/LongVector;->objects:[[Ljavassist/bytecode/ConstInfo;

    const/4 v0, 0x0

    .line 28
    iput v0, p0, Ljavassist/bytecode/LongVector;->elements:I

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    shr-int/lit8 p1, p1, 0x7

    and-int/lit8 p1, p1, -0x8

    add-int/lit8 p1, p1, 0x8

    .line 33
    new-array p1, p1, [[Ljavassist/bytecode/ConstInfo;

    iput-object p1, p0, Ljavassist/bytecode/LongVector;->objects:[[Ljavassist/bytecode/ConstInfo;

    const/4 p1, 0x0

    .line 34
    iput p1, p0, Ljavassist/bytecode/LongVector;->elements:I

    return-void
.end method


# virtual methods
.method public addElement(Ljavassist/bytecode/ConstInfo;)V
    .locals 6

    .line 49
    iget v0, p0, Ljavassist/bytecode/LongVector;->elements:I

    shr-int/lit8 v1, v0, 0x7

    and-int/lit8 v0, v0, 0x7f

    .line 51
    iget-object v2, p0, Ljavassist/bytecode/LongVector;->objects:[[Ljavassist/bytecode/ConstInfo;

    array-length v3, v2

    if-lt v1, v3, :cond_0

    add-int/lit8 v4, v3, 0x8

    .line 53
    new-array v4, v4, [[Ljavassist/bytecode/ConstInfo;

    const/4 v5, 0x0

    .line 54
    invoke-static {v2, v5, v4, v5, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 55
    iput-object v4, p0, Ljavassist/bytecode/LongVector;->objects:[[Ljavassist/bytecode/ConstInfo;

    .line 58
    :cond_0
    iget-object v2, p0, Ljavassist/bytecode/LongVector;->objects:[[Ljavassist/bytecode/ConstInfo;

    aget-object v3, v2, v1

    if-nez v3, :cond_1

    const/16 v3, 0x80

    new-array v3, v3, [Ljavassist/bytecode/ConstInfo;

    .line 59
    aput-object v3, v2, v1

    .line 61
    :cond_1
    iget-object v2, p0, Ljavassist/bytecode/LongVector;->objects:[[Ljavassist/bytecode/ConstInfo;

    aget-object v1, v2, v1

    aput-object p1, v1, v0

    .line 62
    iget p1, p0, Ljavassist/bytecode/LongVector;->elements:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Ljavassist/bytecode/LongVector;->elements:I

    return-void
.end method

.method public elementAt(I)Ljavassist/bytecode/ConstInfo;
    .locals 2

    if-ltz p1, :cond_1

    .line 42
    iget v0, p0, Ljavassist/bytecode/LongVector;->elements:I

    if-gt v0, p1, :cond_0

    goto :goto_0

    .line 45
    :cond_0
    iget-object v0, p0, Ljavassist/bytecode/LongVector;->objects:[[Ljavassist/bytecode/ConstInfo;

    shr-int/lit8 v1, p1, 0x7

    aget-object v0, v0, v1

    and-int/lit8 p1, p1, 0x7f

    aget-object p1, v0, p1

    return-object p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method
