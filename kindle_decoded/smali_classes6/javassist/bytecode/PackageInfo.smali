.class Ljavassist/bytecode/PackageInfo;
.super Ljavassist/bytecode/ConstInfo;
.source "ConstPool.java"


# instance fields
.field name:I


# direct methods
.method public constructor <init>(Ljava/io/DataInputStream;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2523
    invoke-direct {p0, p2}, Ljavassist/bytecode/ConstInfo;-><init>(I)V

    .line 2524
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result p1

    iput p1, p0, Ljavassist/bytecode/PackageInfo;->name:I

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 2532
    instance-of v0, p1, Ljavassist/bytecode/PackageInfo;

    if-eqz v0, :cond_0

    check-cast p1, Ljavassist/bytecode/PackageInfo;

    iget p1, p1, Ljavassist/bytecode/PackageInfo;->name:I

    iget v0, p0, Ljavassist/bytecode/PackageInfo;->name:I

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public hashCode()I
    .locals 1

    .line 2528
    iget v0, p0, Ljavassist/bytecode/PackageInfo;->name:I

    return v0
.end method

.method public print(Ljava/io/PrintWriter;)V
    .locals 1

    const-string v0, "Package #"

    .line 2563
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2564
    iget v0, p0, Ljavassist/bytecode/PackageInfo;->name:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    return-void
.end method
