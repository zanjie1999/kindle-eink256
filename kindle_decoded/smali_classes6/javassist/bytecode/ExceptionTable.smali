.class public Ljavassist/bytecode/ExceptionTable;
.super Ljava/lang/Object;
.source "ExceptionTable.java"

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field private constPool:Ljavassist/bytecode/ConstPool;

.field private entries:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljavassist/bytecode/ExceptionTableEntry;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljavassist/bytecode/ConstPool;Ljava/io/DataInputStream;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput-object p1, p0, Ljavassist/bytecode/ExceptionTable;->constPool:Ljavassist/bytecode/ConstPool;

    .line 59
    invoke-virtual {p2}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result p1

    .line 60
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p1, :cond_0

    .line 62
    invoke-virtual {p2}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v2

    .line 63
    invoke-virtual {p2}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v3

    .line 64
    invoke-virtual {p2}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v4

    .line 65
    invoke-virtual {p2}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v5

    .line 66
    new-instance v6, Ljavassist/bytecode/ExceptionTableEntry;

    invoke-direct {v6, v2, v3, v4, v5}, Ljavassist/bytecode/ExceptionTableEntry;-><init>(IIII)V

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 69
    :cond_0
    iput-object v0, p0, Ljavassist/bytecode/ExceptionTable;->entries:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 79
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavassist/bytecode/ExceptionTable;

    .line 80
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Ljavassist/bytecode/ExceptionTable;->entries:Ljava/util/List;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v1, v0, Ljavassist/bytecode/ExceptionTable;->entries:Ljava/util/List;

    return-object v0
.end method
