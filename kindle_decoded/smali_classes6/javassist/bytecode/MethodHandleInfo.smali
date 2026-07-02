.class Ljavassist/bytecode/MethodHandleInfo;
.super Ljavassist/bytecode/ConstInfo;
.source "ConstPool.java"


# instance fields
.field refIndex:I

.field refKind:I


# direct methods
.method public constructor <init>(Ljava/io/DataInputStream;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2198
    invoke-direct {p0, p2}, Ljavassist/bytecode/ConstInfo;-><init>(I)V

    .line 2199
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readUnsignedByte()I

    move-result p2

    iput p2, p0, Ljavassist/bytecode/MethodHandleInfo;->refKind:I

    .line 2200
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result p1

    iput p1, p0, Ljavassist/bytecode/MethodHandleInfo;->refIndex:I

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 2209
    instance-of v0, p1, Ljavassist/bytecode/MethodHandleInfo;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2210
    check-cast p1, Ljavassist/bytecode/MethodHandleInfo;

    .line 2211
    iget v0, p1, Ljavassist/bytecode/MethodHandleInfo;->refKind:I

    iget v2, p0, Ljavassist/bytecode/MethodHandleInfo;->refKind:I

    if-ne v0, v2, :cond_0

    iget p1, p1, Ljavassist/bytecode/MethodHandleInfo;->refIndex:I

    iget v0, p0, Ljavassist/bytecode/MethodHandleInfo;->refIndex:I

    if-ne p1, v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public hashCode()I
    .locals 2

    .line 2204
    iget v0, p0, Ljavassist/bytecode/MethodHandleInfo;->refKind:I

    shl-int/lit8 v0, v0, 0x10

    iget v1, p0, Ljavassist/bytecode/MethodHandleInfo;->refIndex:I

    xor-int/2addr v0, v1

    return v0
.end method

.method public print(Ljava/io/PrintWriter;)V
    .locals 1

    const-string v0, "MethodHandle #"

    .line 2237
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2238
    iget v0, p0, Ljavassist/bytecode/MethodHandleInfo;->refKind:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string v0, ", index #"

    .line 2239
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2240
    iget v0, p0, Ljavassist/bytecode/MethodHandleInfo;->refIndex:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    return-void
.end method
