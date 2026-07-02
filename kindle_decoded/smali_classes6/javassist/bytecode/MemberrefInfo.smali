.class abstract Ljavassist/bytecode/MemberrefInfo;
.super Ljavassist/bytecode/ConstInfo;
.source "ConstPool.java"


# instance fields
.field classIndex:I

.field nameAndTypeIndex:I


# direct methods
.method public constructor <init>(Ljava/io/DataInputStream;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1744
    invoke-direct {p0, p2}, Ljavassist/bytecode/ConstInfo;-><init>(I)V

    .line 1745
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result p2

    iput p2, p0, Ljavassist/bytecode/MemberrefInfo;->classIndex:I

    .line 1746
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result p1

    iput p1, p0, Ljavassist/bytecode/MemberrefInfo;->nameAndTypeIndex:I

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 1754
    instance-of v0, p1, Ljavassist/bytecode/MemberrefInfo;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1755
    check-cast p1, Ljavassist/bytecode/MemberrefInfo;

    .line 1756
    iget v0, p1, Ljavassist/bytecode/MemberrefInfo;->classIndex:I

    iget v2, p0, Ljavassist/bytecode/MemberrefInfo;->classIndex:I

    if-ne v0, v2, :cond_0

    iget v0, p1, Ljavassist/bytecode/MemberrefInfo;->nameAndTypeIndex:I

    iget v2, p0, Ljavassist/bytecode/MemberrefInfo;->nameAndTypeIndex:I

    if-ne v0, v2, :cond_0

    .line 1758
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    if-ne p1, v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public abstract getTagName()Ljava/lang/String;
.end method

.method public hashCode()I
    .locals 2

    .line 1750
    iget v0, p0, Ljavassist/bytecode/MemberrefInfo;->classIndex:I

    shl-int/lit8 v0, v0, 0x10

    iget v1, p0, Ljavassist/bytecode/MemberrefInfo;->nameAndTypeIndex:I

    xor-int/2addr v0, v1

    return v0
.end method

.method public print(Ljava/io/PrintWriter;)V
    .locals 2

    .line 1784
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljavassist/bytecode/MemberrefInfo;->getTagName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " #"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1785
    iget v0, p0, Ljavassist/bytecode/MemberrefInfo;->classIndex:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string v0, ", name&type #"

    .line 1786
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1787
    iget v0, p0, Ljavassist/bytecode/MemberrefInfo;->nameAndTypeIndex:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    return-void
.end method
