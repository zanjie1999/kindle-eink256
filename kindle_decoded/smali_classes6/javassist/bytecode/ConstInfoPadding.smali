.class Ljavassist/bytecode/ConstInfoPadding;
.super Ljavassist/bytecode/ConstInfo;
.source "ConstPool.java"


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 1498
    invoke-direct {p0, p1}, Ljavassist/bytecode/ConstInfo;-><init>(I)V

    return-void
.end method


# virtual methods
.method public print(Ljava/io/PrintWriter;)V
    .locals 1

    const-string v0, "padding"

    .line 1515
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method
