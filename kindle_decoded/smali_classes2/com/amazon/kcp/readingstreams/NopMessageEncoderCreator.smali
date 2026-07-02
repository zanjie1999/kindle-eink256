.class public Lcom/amazon/kcp/readingstreams/NopMessageEncoderCreator;
.super Ljava/lang/Object;
.source "NopMessageEncoderCreator.java"

# interfaces
.implements Lcom/amazon/kcp/readingstreams/IMessageEncoderCreator;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createMessageEncoder(Lcom/amazon/rma/rs/encoding/IReadingStreamsMessagePublisher;)Lcom/amazon/rma/rs/encoding/MessageEncoder;
    .locals 0

    .line 18
    new-instance p1, Lcom/amazon/kcp/readingstreams/NopMessageEncoderCreator$1;

    invoke-direct {p1, p0}, Lcom/amazon/kcp/readingstreams/NopMessageEncoderCreator$1;-><init>(Lcom/amazon/kcp/readingstreams/NopMessageEncoderCreator;)V

    return-object p1
.end method
