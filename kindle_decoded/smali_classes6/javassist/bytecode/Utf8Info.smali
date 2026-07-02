.class Ljavassist/bytecode/Utf8Info;
.super Ljavassist/bytecode/ConstInfo;
.source "ConstPool.java"


# instance fields
.field string:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/io/DataInputStream;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2144
    invoke-direct {p0, p2}, Ljavassist/bytecode/ConstInfo;-><init>(I)V

    .line 2145
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Ljavassist/bytecode/Utf8Info;->string:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 2155
    instance-of v0, p1, Ljavassist/bytecode/Utf8Info;

    if-eqz v0, :cond_0

    check-cast p1, Ljavassist/bytecode/Utf8Info;

    iget-object p1, p1, Ljavassist/bytecode/Utf8Info;->string:Ljava/lang/String;

    iget-object v0, p0, Ljavassist/bytecode/Utf8Info;->string:Ljava/lang/String;

    .line 2156
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public hashCode()I
    .locals 1

    .line 2150
    iget-object v0, p0, Ljavassist/bytecode/Utf8Info;->string:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public print(Ljava/io/PrintWriter;)V
    .locals 1

    const-string v0, "UTF8 \""

    .line 2179
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2180
    iget-object v0, p0, Ljavassist/bytecode/Utf8Info;->string:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "\""

    .line 2181
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method
