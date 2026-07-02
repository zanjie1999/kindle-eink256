.class public Ljavassist/bytecode/CodeAttribute;
.super Ljavassist/bytecode/AttributeInfo;
.source "CodeAttribute.java"


# instance fields
.field private attributes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljavassist/bytecode/AttributeInfo;",
            ">;"
        }
    .end annotation
.end field

.field private exceptions:Ljavassist/bytecode/ExceptionTable;

.field private maxLocals:I

.field private maxStack:I


# direct methods
.method constructor <init>(Ljavassist/bytecode/ConstPool;ILjava/io/DataInputStream;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 100
    invoke-direct {p0, p1, p2, v0}, Ljavassist/bytecode/AttributeInfo;-><init>(Ljavassist/bytecode/ConstPool;I[B)V

    .line 102
    invoke-virtual {p3}, Ljava/io/DataInputStream;->readInt()I

    .line 104
    invoke-virtual {p3}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result p2

    iput p2, p0, Ljavassist/bytecode/CodeAttribute;->maxStack:I

    .line 105
    invoke-virtual {p3}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result p2

    iput p2, p0, Ljavassist/bytecode/CodeAttribute;->maxLocals:I

    .line 107
    invoke-virtual {p3}, Ljava/io/DataInputStream;->readInt()I

    move-result p2

    .line 108
    new-array p2, p2, [B

    iput-object p2, p0, Ljavassist/bytecode/AttributeInfo;->info:[B

    .line 109
    invoke-virtual {p3, p2}, Ljava/io/DataInputStream;->readFully([B)V

    .line 111
    new-instance p2, Ljavassist/bytecode/ExceptionTable;

    invoke-direct {p2, p1, p3}, Ljavassist/bytecode/ExceptionTable;-><init>(Ljavassist/bytecode/ConstPool;Ljava/io/DataInputStream;)V

    iput-object p2, p0, Ljavassist/bytecode/CodeAttribute;->exceptions:Ljavassist/bytecode/ExceptionTable;

    .line 113
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Ljavassist/bytecode/CodeAttribute;->attributes:Ljava/util/List;

    .line 114
    invoke-virtual {p3}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result p2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p2, :cond_0

    .line 116
    iget-object v1, p0, Ljavassist/bytecode/CodeAttribute;->attributes:Ljava/util/List;

    invoke-static {p1, p3}, Ljavassist/bytecode/AttributeInfo;->read(Ljavassist/bytecode/ConstPool;Ljava/io/DataInputStream;)Ljavassist/bytecode/AttributeInfo;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
