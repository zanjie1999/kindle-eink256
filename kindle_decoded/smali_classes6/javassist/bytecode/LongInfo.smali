.class Ljavassist/bytecode/LongInfo;
.super Ljavassist/bytecode/ConstInfo;
.source "ConstPool.java"


# instance fields
.field value:J


# direct methods
.method public constructor <init>(Ljava/io/DataInputStream;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2040
    invoke-direct {p0, p2}, Ljavassist/bytecode/ConstInfo;-><init>(I)V

    .line 2041
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide p1

    iput-wide p1, p0, Ljavassist/bytecode/LongInfo;->value:J

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .line 2049
    instance-of v0, p1, Ljavassist/bytecode/LongInfo;

    if-eqz v0, :cond_0

    check-cast p1, Ljavassist/bytecode/LongInfo;

    iget-wide v0, p1, Ljavassist/bytecode/LongInfo;->value:J

    iget-wide v2, p0, Ljavassist/bytecode/LongInfo;->value:J

    cmp-long p1, v0, v2

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public hashCode()I
    .locals 4

    .line 2045
    iget-wide v0, p0, Ljavassist/bytecode/LongInfo;->value:J

    const/16 v2, 0x20

    ushr-long v2, v0, v2

    xor-long/2addr v0, v2

    long-to-int v1, v0

    return v1
.end method

.method public print(Ljava/io/PrintWriter;)V
    .locals 2

    const-string v0, "Long "

    .line 2071
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2072
    iget-wide v0, p0, Ljavassist/bytecode/LongInfo;->value:J

    invoke-virtual {p1, v0, v1}, Ljava/io/PrintWriter;->println(J)V

    return-void
.end method
