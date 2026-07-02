.class Ljavassist/bytecode/MethodrefInfo;
.super Ljavassist/bytecode/MemberrefInfo;
.source "ConstPool.java"


# direct methods
.method public constructor <init>(Ljava/io/DataInputStream;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1833
    invoke-direct {p0, p1, p2}, Ljavassist/bytecode/MemberrefInfo;-><init>(Ljava/io/DataInputStream;I)V

    return-void
.end method


# virtual methods
.method public getTagName()Ljava/lang/String;
    .locals 1

    const-string v0, "Method"

    return-object v0
.end method
