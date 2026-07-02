.class Lcom/amazon/whispersync/org/apache/commons/codec/net/Utils;
.super Ljava/lang/Object;
.source "Utils.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static digit16(B)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/whispersync/org/apache/commons/codec/DecoderException;
        }
    .end annotation

    int-to-char v0, p0

    const/16 v1, 0x10

    .line 43
    invoke-static {v0, v1}, Ljava/lang/Character;->digit(CI)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    .line 45
    :cond_0
    new-instance v0, Lcom/amazon/whispersync/org/apache/commons/codec/DecoderException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid URL encoding: not a valid digit (radix 16): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/amazon/whispersync/org/apache/commons/codec/DecoderException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
