.class public Lamazon/whispersync/communication/BufferedMessageHandler;
.super Lcom/amazon/whispersync/communication/BufferedMessageManagerBase;
.source "BufferedMessageHandler.java"

# interfaces
.implements Lamazon/whispersync/communication/MessageHandler;


# instance fields
.field private final mDecoratedMessageHandler:Lamazon/whispersync/communication/MessageHandler;


# direct methods
.method public constructor <init>(Lamazon/whispersync/communication/MessageHandler;)V
    .locals 2

    const-wide/32 v0, 0x1b7740

    .line 44
    invoke-direct {p0, p1, v0, v1}, Lamazon/whispersync/communication/BufferedMessageHandler;-><init>(Lamazon/whispersync/communication/MessageHandler;J)V

    return-void
.end method

.method public constructor <init>(Lamazon/whispersync/communication/MessageHandler;J)V
    .locals 0

    .line 49
    invoke-direct {p0, p2, p3}, Lcom/amazon/whispersync/communication/BufferedMessageManagerBase;-><init>(J)V

    .line 50
    iput-object p1, p0, Lamazon/whispersync/communication/BufferedMessageHandler;->mDecoratedMessageHandler:Lamazon/whispersync/communication/MessageHandler;

    return-void
.end method


# virtual methods
.method protected handleCompletedMessage(Lamazon/whispersync/communication/identity/EndpointIdentity;Lcom/amazon/whispersync/communication/BufferedMessageManagerBase$MessageEntry;)V
    .locals 0

    .line 55
    invoke-virtual {p2}, Lcom/amazon/whispersync/communication/BufferedMessageManagerBase$MessageEntry;->getMessage()Lamazon/whispersync/communication/Message;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lamazon/whispersync/communication/BufferedMessageHandler;->onMessage(Lamazon/whispersync/communication/identity/EndpointIdentity;Lamazon/whispersync/communication/Message;)V

    return-void
.end method

.method public onMessage(Lamazon/whispersync/communication/identity/EndpointIdentity;Lamazon/whispersync/communication/Message;)V
    .locals 1

    .line 60
    iget-object v0, p0, Lamazon/whispersync/communication/BufferedMessageHandler;->mDecoratedMessageHandler:Lamazon/whispersync/communication/MessageHandler;

    invoke-interface {v0, p1, p2}, Lamazon/whispersync/communication/MessageHandler;->onMessage(Lamazon/whispersync/communication/identity/EndpointIdentity;Lamazon/whispersync/communication/Message;)V

    return-void
.end method
