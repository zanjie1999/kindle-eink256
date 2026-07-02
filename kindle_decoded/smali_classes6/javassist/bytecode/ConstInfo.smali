.class abstract Ljavassist/bytecode/ConstInfo;
.super Ljava/lang/Object;
.source "ConstPool.java"


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 1469
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract print(Ljava/io/PrintWriter;)V
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1487
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 1488
    new-instance v1, Ljava/io/PrintWriter;

    invoke-direct {v1, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;)V

    .line 1489
    invoke-virtual {p0, v1}, Ljavassist/bytecode/ConstInfo;->print(Ljava/io/PrintWriter;)V

    .line 1490
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
