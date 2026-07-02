.class public final Lcom/amazon/rma/rs/encoding/MessageEncoders;
.super Ljava/lang/Object;
.source "MessageEncoders.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create1pAndroidInstance()Lcom/amazon/rma/rs/encoding/MessageEncoder;
    .locals 4

    .line 20
    new-instance v0, Lcom/amazon/rma/rs/encoding/MessageEncoderV3;

    new-instance v1, Lcom/amazon/rma/rs/encoding/TimeDedupedEventHistory;

    const-wide/32 v2, 0x5265c00

    invoke-direct {v1, v2, v3}, Lcom/amazon/rma/rs/encoding/TimeDedupedEventHistory;-><init>(J)V

    sget-object v2, Lcom/amazon/rma/rs/encoding/strings/StringListsV6;->INSTANCE:Lcom/amazon/rma/rs/encoding/strings/StringLists;

    invoke-direct {v0, v1, v2}, Lcom/amazon/rma/rs/encoding/MessageEncoderV3;-><init>(Lcom/amazon/rma/rs/encoding/TimeDedupedEventHistory;Lcom/amazon/rma/rs/encoding/strings/StringLists;)V

    return-object v0
.end method

.method public static create1pAndroidInstance(Lcom/amazon/rma/rs/encoding/IReadingStreamsMessagePublisher;)Lcom/amazon/rma/rs/encoding/MessageEncoder;
    .locals 4

    .line 30
    new-instance v0, Lcom/amazon/rma/rs/encoding/MessageEncoderV4;

    new-instance v1, Lcom/amazon/rma/rs/encoding/TimeDedupedEventHistory;

    const-wide/32 v2, 0x5265c00

    invoke-direct {v1, v2, v3}, Lcom/amazon/rma/rs/encoding/TimeDedupedEventHistory;-><init>(J)V

    sget-object v2, Lcom/amazon/rma/rs/encoding/strings/StringListsV6;->INSTANCE:Lcom/amazon/rma/rs/encoding/strings/StringLists;

    invoke-direct {v0, p0, v1, v2}, Lcom/amazon/rma/rs/encoding/MessageEncoderV4;-><init>(Lcom/amazon/rma/rs/encoding/IReadingStreamsMessagePublisher;Lcom/amazon/rma/rs/encoding/TimeDedupedEventHistory;Lcom/amazon/rma/rs/encoding/strings/StringLists;)V

    return-object v0
.end method

.method public static create3pAndroidInstance()Lcom/amazon/rma/rs/encoding/MessageEncoder;
    .locals 4

    .line 39
    new-instance v0, Lcom/amazon/rma/rs/encoding/MessageEncoderV3;

    new-instance v1, Lcom/amazon/rma/rs/encoding/TimeDedupedEventHistory;

    const-wide/32 v2, 0x5265c00

    invoke-direct {v1, v2, v3}, Lcom/amazon/rma/rs/encoding/TimeDedupedEventHistory;-><init>(J)V

    sget-object v2, Lcom/amazon/rma/rs/encoding/strings/StringListsV8;->INSTANCE:Lcom/amazon/rma/rs/encoding/strings/StringLists;

    invoke-direct {v0, v1, v2}, Lcom/amazon/rma/rs/encoding/MessageEncoderV3;-><init>(Lcom/amazon/rma/rs/encoding/TimeDedupedEventHistory;Lcom/amazon/rma/rs/encoding/strings/StringLists;)V

    return-object v0
.end method

.method public static create3pAndroidInstance(Lcom/amazon/rma/rs/encoding/IReadingStreamsMessagePublisher;)Lcom/amazon/rma/rs/encoding/MessageEncoder;
    .locals 4

    .line 48
    new-instance v0, Lcom/amazon/rma/rs/encoding/MessageEncoderV4;

    new-instance v1, Lcom/amazon/rma/rs/encoding/TimeDedupedEventHistory;

    const-wide/32 v2, 0x5265c00

    invoke-direct {v1, v2, v3}, Lcom/amazon/rma/rs/encoding/TimeDedupedEventHistory;-><init>(J)V

    sget-object v2, Lcom/amazon/rma/rs/encoding/strings/StringListsV8;->INSTANCE:Lcom/amazon/rma/rs/encoding/strings/StringLists;

    invoke-direct {v0, p0, v1, v2}, Lcom/amazon/rma/rs/encoding/MessageEncoderV4;-><init>(Lcom/amazon/rma/rs/encoding/IReadingStreamsMessagePublisher;Lcom/amazon/rma/rs/encoding/TimeDedupedEventHistory;Lcom/amazon/rma/rs/encoding/strings/StringLists;)V

    return-object v0
.end method

.method public static createEInkInstance()Lcom/amazon/rma/rs/encoding/MessageEncoder;
    .locals 4

    .line 56
    new-instance v0, Lcom/amazon/rma/rs/encoding/MessageEncoderV3;

    new-instance v1, Lcom/amazon/rma/rs/encoding/TimeDedupedEventHistory;

    const-wide/32 v2, 0x5265c00

    invoke-direct {v1, v2, v3}, Lcom/amazon/rma/rs/encoding/TimeDedupedEventHistory;-><init>(J)V

    sget-object v2, Lcom/amazon/rma/rs/encoding/strings/StringListsV5;->INSTANCE:Lcom/amazon/rma/rs/encoding/strings/StringLists;

    invoke-direct {v0, v1, v2}, Lcom/amazon/rma/rs/encoding/MessageEncoderV3;-><init>(Lcom/amazon/rma/rs/encoding/TimeDedupedEventHistory;Lcom/amazon/rma/rs/encoding/strings/StringLists;)V

    return-object v0
.end method

.method public static createServerStorageInstance()Lcom/amazon/rma/rs/encoding/ExtendedMessageEncoder;
    .locals 1

    .line 64
    sget-object v0, Lcom/amazon/rma/rs/encoding/strings/StringListsV0;->INSTANCE:Lcom/amazon/rma/rs/encoding/strings/StringLists;

    invoke-static {v0}, Lcom/amazon/rma/rs/encoding/MessageEncoders;->createServerStorageInstance(Lcom/amazon/rma/rs/encoding/strings/StringLists;)Lcom/amazon/rma/rs/encoding/ExtendedMessageEncoder;

    move-result-object v0

    return-object v0
.end method

.method public static createServerStorageInstance(Lcom/amazon/rma/rs/encoding/strings/StringLists;)Lcom/amazon/rma/rs/encoding/ExtendedMessageEncoder;
    .locals 2

    .line 74
    new-instance v0, Lcom/amazon/rma/rs/encoding/MessageEncoderV3;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0}, Lcom/amazon/rma/rs/encoding/MessageEncoderV3;-><init>(Lcom/amazon/rma/rs/encoding/TimeDedupedEventHistory;Lcom/amazon/rma/rs/encoding/strings/StringLists;)V

    return-object v0
.end method
