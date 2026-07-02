.class public Lcom/amazon/whispersync/org/apache/commons/codec/language/Caverphone;
.super Ljava/lang/Object;
.source "Caverphone.java"

# interfaces
.implements Lcom/amazon/whispersync/org/apache/commons/codec/StringEncoder;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private final encoder:Lcom/amazon/whispersync/org/apache/commons/codec/language/Caverphone2;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    new-instance v0, Lcom/amazon/whispersync/org/apache/commons/codec/language/Caverphone2;

    invoke-direct {v0}, Lcom/amazon/whispersync/org/apache/commons/codec/language/Caverphone2;-><init>()V

    iput-object v0, p0, Lcom/amazon/whispersync/org/apache/commons/codec/language/Caverphone;->encoder:Lcom/amazon/whispersync/org/apache/commons/codec/language/Caverphone2;

    return-void
.end method


# virtual methods
.method public caverphone(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 58
    iget-object v0, p0, Lcom/amazon/whispersync/org/apache/commons/codec/language/Caverphone;->encoder:Lcom/amazon/whispersync/org/apache/commons/codec/language/Caverphone2;

    invoke-virtual {v0, p1}, Lcom/amazon/whispersync/org/apache/commons/codec/language/Caverphone2;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public encode(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/whispersync/org/apache/commons/codec/EncoderException;
        }
    .end annotation

    .line 74
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 77
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/amazon/whispersync/org/apache/commons/codec/language/Caverphone;->caverphone(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 75
    :cond_0
    new-instance p1, Lcom/amazon/whispersync/org/apache/commons/codec/EncoderException;

    const-string v0, "Parameter supplied to Caverphone encode is not of type java.lang.String"

    invoke-direct {p1, v0}, Lcom/amazon/whispersync/org/apache/commons/codec/EncoderException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public encode(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 89
    invoke-virtual {p0, p1}, Lcom/amazon/whispersync/org/apache/commons/codec/language/Caverphone;->caverphone(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public isCaverphoneEqual(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    .line 102
    invoke-virtual {p0, p1}, Lcom/amazon/whispersync/org/apache/commons/codec/language/Caverphone;->caverphone(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p2}, Lcom/amazon/whispersync/org/apache/commons/codec/language/Caverphone;->caverphone(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method
