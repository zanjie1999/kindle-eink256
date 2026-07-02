.class public Lcom/amazon/whispersync/communication/BufferedMessageManagerBase$MessageEntry;
.super Ljava/lang/Object;
.source "BufferedMessageManagerBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/whispersync/communication/BufferedMessageManagerBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "MessageEntry"
.end annotation


# instance fields
.field protected final mChannel:I

.field protected final mMessage:Lamazon/whispersync/communication/Message;

.field protected final mMessageId:I


# direct methods
.method public constructor <init>(Lamazon/whispersync/communication/Message;II)V
    .locals 0

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    iput-object p1, p0, Lcom/amazon/whispersync/communication/BufferedMessageManagerBase$MessageEntry;->mMessage:Lamazon/whispersync/communication/Message;

    .line 91
    iput p2, p0, Lcom/amazon/whispersync/communication/BufferedMessageManagerBase$MessageEntry;->mMessageId:I

    .line 92
    iput p3, p0, Lcom/amazon/whispersync/communication/BufferedMessageManagerBase$MessageEntry;->mChannel:I

    return-void
.end method


# virtual methods
.method public getChannel()I
    .locals 1

    .line 115
    iget v0, p0, Lcom/amazon/whispersync/communication/BufferedMessageManagerBase$MessageEntry;->mChannel:I

    return v0
.end method

.method public getMessage()Lamazon/whispersync/communication/Message;
    .locals 1

    .line 99
    iget-object v0, p0, Lcom/amazon/whispersync/communication/BufferedMessageManagerBase$MessageEntry;->mMessage:Lamazon/whispersync/communication/Message;

    return-object v0
.end method

.method public getMessageId()I
    .locals 1

    .line 106
    iget v0, p0, Lcom/amazon/whispersync/communication/BufferedMessageManagerBase$MessageEntry;->mMessageId:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "message"

    aput-object v2, v0, v1

    .line 124
    iget-object v1, p0, Lcom/amazon/whispersync/communication/BufferedMessageManagerBase$MessageEntry;->mMessage:Lamazon/whispersync/communication/Message;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const/4 v1, 0x2

    const-string v2, "messageId"

    aput-object v2, v0, v1

    invoke-virtual {p0}, Lcom/amazon/whispersync/communication/BufferedMessageManagerBase$MessageEntry;->getMessageId()I

    move-result v1

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

    const-string v1, "MessageEntry"

    const-string v2, "message details"

    invoke-static {v1, v2, v0}, Lcom/amazon/whispersync/dp/logger/DPFormattedMessage;->toDPFormat(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
