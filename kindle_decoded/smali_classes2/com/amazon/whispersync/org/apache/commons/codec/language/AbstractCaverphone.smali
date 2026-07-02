.class public abstract Lcom/amazon/whispersync/org/apache/commons/codec/language/AbstractCaverphone;
.super Ljava/lang/Object;
.source "AbstractCaverphone.java"

# interfaces
.implements Lcom/amazon/whispersync/org/apache/commons/codec/StringEncoder;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public encode(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/whispersync/org/apache/commons/codec/EncoderException;
        }
    .end annotation

    .line 57
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 60
    check-cast p1, Ljava/lang/String;

    invoke-interface {p0, p1}, Lcom/amazon/whispersync/org/apache/commons/codec/StringEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 58
    :cond_0
    new-instance p1, Lcom/amazon/whispersync/org/apache/commons/codec/EncoderException;

    const-string v0, "Parameter supplied to Caverphone encode is not of type java.lang.String"

    invoke-direct {p1, v0}, Lcom/amazon/whispersync/org/apache/commons/codec/EncoderException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public isEncodeEqual(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/whispersync/org/apache/commons/codec/EncoderException;
        }
    .end annotation

    .line 76
    invoke-interface {p0, p1}, Lcom/amazon/whispersync/org/apache/commons/codec/StringEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p2}, Lcom/amazon/whispersync/org/apache/commons/codec/StringEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method
