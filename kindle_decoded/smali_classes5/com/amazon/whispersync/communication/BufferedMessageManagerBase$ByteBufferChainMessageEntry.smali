.class public Lcom/amazon/whispersync/communication/BufferedMessageManagerBase$ByteBufferChainMessageEntry;
.super Lcom/amazon/whispersync/communication/BufferedMessageManagerBase$MessageEntry;
.source "BufferedMessageManagerBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/whispersync/communication/BufferedMessageManagerBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "ByteBufferChainMessageEntry"
.end annotation


# instance fields
.field protected mFragmentCount:I

.field protected mLastFragmentArrivalTimeInMillis:J


# direct methods
.method public constructor <init>(Lcom/amazon/whispersync/communication/ByteBufferChainMessageImpl;II)V
    .locals 0

    .line 156
    invoke-direct {p0, p1, p2, p3}, Lcom/amazon/whispersync/communication/BufferedMessageManagerBase$MessageEntry;-><init>(Lamazon/whispersync/communication/Message;II)V

    const/4 p1, 0x1

    .line 157
    iput p1, p0, Lcom/amazon/whispersync/communication/BufferedMessageManagerBase$ByteBufferChainMessageEntry;->mFragmentCount:I

    .line 158
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/amazon/whispersync/communication/BufferedMessageManagerBase$ByteBufferChainMessageEntry;->mLastFragmentArrivalTimeInMillis:J

    return-void
.end method


# virtual methods
.method public appendFragment(Lamazon/whispersync/communication/Message;)V
    .locals 2

    .line 172
    iget-object v0, p0, Lcom/amazon/whispersync/communication/BufferedMessageManagerBase$MessageEntry;->mMessage:Lamazon/whispersync/communication/Message;

    check-cast v0, Lcom/amazon/whispersync/communication/ByteBufferChainMessageImpl;

    invoke-virtual {v0, p1}, Lcom/amazon/whispersync/communication/ByteBufferChainMessageImpl;->appendPayload(Lamazon/whispersync/communication/Message;)V

    .line 173
    iget p1, p0, Lcom/amazon/whispersync/communication/BufferedMessageManagerBase$ByteBufferChainMessageEntry;->mFragmentCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/amazon/whispersync/communication/BufferedMessageManagerBase$ByteBufferChainMessageEntry;->mFragmentCount:I

    .line 174
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/amazon/whispersync/communication/BufferedMessageManagerBase$ByteBufferChainMessageEntry;->mLastFragmentArrivalTimeInMillis:J

    return-void
.end method

.method public getLastFragmentArrivalTimeInMillis()J
    .locals 2

    .line 182
    iget-wide v0, p0, Lcom/amazon/whispersync/communication/BufferedMessageManagerBase$ByteBufferChainMessageEntry;->mLastFragmentArrivalTimeInMillis:J

    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    const/16 v0, 0xc

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "message"

    aput-object v2, v0, v1

    .line 191
    iget-object v1, p0, Lcom/amazon/whispersync/communication/BufferedMessageManagerBase$MessageEntry;->mMessage:Lamazon/whispersync/communication/Message;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const/4 v1, 0x2

    const-string v2, "messageId"

    aput-object v2, v0, v1

    iget v1, p0, Lcom/amazon/whispersync/communication/BufferedMessageManagerBase$MessageEntry;->mMessageId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const/4 v1, 0x4

    const-string v2, "message size"

    aput-object v2, v0, v1

    iget-object v1, p0, Lcom/amazon/whispersync/communication/BufferedMessageManagerBase$MessageEntry;->mMessage:Lamazon/whispersync/communication/Message;

    invoke-interface {v1}, Lamazon/whispersync/communication/Message;->getPayloadSize()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    const/4 v1, 0x6

    const-string v2, "channel"

    aput-object v2, v0, v1

    iget v1, p0, Lcom/amazon/whispersync/communication/BufferedMessageManagerBase$MessageEntry;->mChannel:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    const-string v1, "NO_CHANNEL_SPECIFIED"

    goto :goto_0

    :cond_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    :goto_0
    const/4 v2, 0x7

    aput-object v1, v0, v2

    const/16 v1, 0x8

    const-string v2, "fragmentCount"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    iget v2, p0, Lcom/amazon/whispersync/communication/BufferedMessageManagerBase$ByteBufferChainMessageEntry;->mFragmentCount:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "lastFragmentArrivalTimeMillis"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    iget-wide v2, p0, Lcom/amazon/whispersync/communication/BufferedMessageManagerBase$ByteBufferChainMessageEntry;->mLastFragmentArrivalTimeInMillis:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    const-string v1, "MessageEntry"

    const-string v2, "message details"

    invoke-static {v1, v2, v0}, Lcom/amazon/whispersync/dp/logger/DPFormattedMessage;->toDPFormat(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
