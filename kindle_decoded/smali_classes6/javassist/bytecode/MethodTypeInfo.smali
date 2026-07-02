.class Ljavassist/bytecode/MethodTypeInfo;
.super Ljavassist/bytecode/ConstInfo;
.source "ConstPool.java"


# instance fields
.field descriptor:I


# direct methods
.method public constructor <init>(Ljava/io/DataInputStream;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2258
    invoke-direct {p0, p2}, Ljavassist/bytecode/ConstInfo;-><init>(I)V

    .line 2259
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result p1

    iput p1, p0, Ljavassist/bytecode/MethodTypeInfo;->descriptor:I

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .line 2268
    instance-of v0, p1, Ljavassist/bytecode/MethodTypeInfo;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2269
    check-cast p1, Ljavassist/bytecode/MethodTypeInfo;

    iget p1, p1, Ljavassist/bytecode/MethodTypeInfo;->descriptor:I

    iget v0, p0, Ljavassist/bytecode/MethodTypeInfo;->descriptor:I

    if-ne p1, v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public hashCode()I
    .locals 1

    .line 2263
    iget v0, p0, Ljavassist/bytecode/MethodTypeInfo;->descriptor:I

    return v0
.end method

.method public print(Ljava/io/PrintWriter;)V
    .locals 1

    const-string v0, "MethodType #"

    .line 2325
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2326
    iget v0, p0, Ljavassist/bytecode/MethodTypeInfo;->descriptor:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    return-void
.end method
