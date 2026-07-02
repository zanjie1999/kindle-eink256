.class public Lcom/amazon/kcp/readingstreams/StandaloneMessageEncoderCreator;
.super Ljava/lang/Object;
.source "StandaloneMessageEncoderCreator.java"

# interfaces
.implements Lcom/amazon/kcp/readingstreams/IMessageEncoderCreator;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createMessageEncoder(Lcom/amazon/rma/rs/encoding/IReadingStreamsMessagePublisher;)Lcom/amazon/rma/rs/encoding/MessageEncoder;
    .locals 0

    .line 16
    invoke-static {p1}, Lcom/amazon/rma/rs/encoding/MessageEncoders;->create3pAndroidInstance(Lcom/amazon/rma/rs/encoding/IReadingStreamsMessagePublisher;)Lcom/amazon/rma/rs/encoding/MessageEncoder;

    move-result-object p1

    return-object p1
.end method
