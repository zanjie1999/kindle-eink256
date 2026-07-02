.class Ljavassist/bytecode/NameAndTypeInfo;
.super Ljavassist/bytecode/ConstInfo;
.source "ConstPool.java"


# instance fields
.field memberName:I

.field typeDescriptor:I


# direct methods
.method public constructor <init>(Ljava/io/DataInputStream;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1649
    invoke-direct {p0, p2}, Ljavassist/bytecode/ConstInfo;-><init>(I)V

    .line 1650
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result p2

    iput p2, p0, Ljavassist/bytecode/NameAndTypeInfo;->memberName:I

    .line 1651
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result p1

    iput p1, p0, Ljavassist/bytecode/NameAndTypeInfo;->typeDescriptor:I

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 1660
    instance-of v0, p1, Ljavassist/bytecode/NameAndTypeInfo;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1661
    check-cast p1, Ljavassist/bytecode/NameAndTypeInfo;

    .line 1662
    iget v0, p1, Ljavassist/bytecode/NameAndTypeInfo;->memberName:I

    iget v2, p0, Ljavassist/bytecode/NameAndTypeInfo;->memberName:I

    if-ne v0, v2, :cond_0

    iget p1, p1, Ljavassist/bytecode/NameAndTypeInfo;->typeDescriptor:I

    iget v0, p0, Ljavassist/bytecode/NameAndTypeInfo;->typeDescriptor:I

    if-ne p1, v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public hashCode()I
    .locals 2

    .line 1655
    iget v0, p0, Ljavassist/bytecode/NameAndTypeInfo;->memberName:I

    shl-int/lit8 v0, v0, 0x10

    iget v1, p0, Ljavassist/bytecode/NameAndTypeInfo;->typeDescriptor:I

    xor-int/2addr v0, v1

    return v0
.end method

.method public print(Ljava/io/PrintWriter;)V
    .locals 1

    const-string v0, "NameAndType #"

    .line 1722
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1723
    iget v0, p0, Ljavassist/bytecode/NameAndTypeInfo;->memberName:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string v0, ", type #"

    .line 1724
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1725
    iget v0, p0, Ljavassist/bytecode/NameAndTypeInfo;->typeDescriptor:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    return-void
.end method
