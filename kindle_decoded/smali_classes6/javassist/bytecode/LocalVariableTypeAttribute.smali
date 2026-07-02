.class public Ljavassist/bytecode/LocalVariableTypeAttribute;
.super Ljavassist/bytecode/LocalVariableAttribute;
.source "LocalVariableTypeAttribute.java"


# direct methods
.method constructor <init>(Ljavassist/bytecode/ConstPool;ILjava/io/DataInputStream;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 45
    invoke-direct {p0, p1, p2, p3}, Ljavassist/bytecode/LocalVariableAttribute;-><init>(Ljavassist/bytecode/ConstPool;ILjava/io/DataInputStream;)V

    return-void
.end method
