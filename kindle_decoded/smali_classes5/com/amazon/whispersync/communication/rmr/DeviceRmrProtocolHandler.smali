.class public Lcom/amazon/whispersync/communication/rmr/DeviceRmrProtocolHandler;
.super Lcom/amazon/whispersync/communication/rmr/RmrProtocolHandler;


# instance fields
.field private final mRmrMessageRouter:Lcom/amazon/whispersync/communication/rmr/RmrMessageRouter;


# direct methods
.method public constructor <init>(Lcom/amazon/whispersync/communication/rmr/RmrMessageRouter;Lcom/amazon/whispersync/dp/framework/StreamCodec;)V
    .locals 0

    invoke-direct {p0, p2}, Lcom/amazon/whispersync/communication/rmr/RmrProtocolHandler;-><init>(Lcom/amazon/whispersync/dp/framework/StreamCodec;)V

    iput-object p1, p0, Lcom/amazon/whispersync/communication/rmr/DeviceRmrProtocolHandler;->mRmrMessageRouter:Lcom/amazon/whispersync/communication/rmr/RmrMessageRouter;

    return-void
.end method


# virtual methods
.method protected handleRmrMessage(Lamazon/whispersync/communication/identity/EndpointIdentity;Ljava/lang/String;ILamazon/whispersync/communication/Message;I)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lamazon/whispersync/communication/CommunicationBaseException;
        }
    .end annotation

    const-string v0, "RQS"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v1, p0, Lcom/amazon/whispersync/communication/rmr/DeviceRmrProtocolHandler;->mRmrMessageRouter:Lcom/amazon/whispersync/communication/rmr/RmrMessageRouter;

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    move v6, p5

    invoke-interface/range {v1 .. v6}, Lcom/amazon/whispersync/communication/rmr/RmrMessageRouter;->routeRmrMessage(Lamazon/whispersync/communication/identity/EndpointIdentity;Ljava/lang/String;ILamazon/whispersync/communication/Message;I)V

    return-void

    :cond_0
    new-instance p1, Lcom/amazon/whispersync/communication/ProtocolException;

    const-string p2, "Unexpected RMR request on the device"

    invoke-direct {p1, p2}, Lcom/amazon/whispersync/communication/ProtocolException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
