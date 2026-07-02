.class Lcom/amazon/whispersync/communication/MessageHandlerProxy;
.super Lcom/amazon/whispersync/communication/IMessageHandler$Stub;


# static fields
.field private static final log:Lcom/amazon/whispersync/dp/logger/DPLogger;


# instance fields
.field private final mMessageHandler:Lamazon/whispersync/communication/MessageHandler;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/amazon/whispersync/dp/logger/DPLogger;

    const-string v1, "TComm.MessageHandlerProxy"

    invoke-direct {v0, v1}, Lcom/amazon/whispersync/dp/logger/DPLogger;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/amazon/whispersync/communication/MessageHandlerProxy;->log:Lcom/amazon/whispersync/dp/logger/DPLogger;

    return-void
.end method

.method constructor <init>(Lamazon/whispersync/communication/MessageHandler;)V
    .locals 0

    invoke-direct {p0}, Lcom/amazon/whispersync/communication/IMessageHandler$Stub;-><init>()V

    iput-object p1, p0, Lcom/amazon/whispersync/communication/MessageHandlerProxy;->mMessageHandler:Lamazon/whispersync/communication/MessageHandler;

    return-void
.end method


# virtual methods
.method public getClientHandler()Lamazon/whispersync/communication/MessageHandler;
    .locals 1

    iget-object v0, p0, Lcom/amazon/whispersync/communication/MessageHandlerProxy;->mMessageHandler:Lamazon/whispersync/communication/MessageHandler;

    return-object v0
.end method

.method public onMessage(Lcom/amazon/whispersync/communication/ParcelableEndpointIdentity;Lcom/amazon/whispersync/communication/MessageEnvelope;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/amazon/whispersync/communication/MessageHandlerProxy;->mMessageHandler:Lamazon/whispersync/communication/MessageHandler;

    invoke-virtual {p1}, Lcom/amazon/whispersync/communication/ParcelableEndpointIdentity;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lamazon/whispersync/communication/identity/EndpointIdentityFactory;->createFromUrn(Ljava/lang/String;)Lamazon/whispersync/communication/identity/EndpointIdentity;

    move-result-object p1

    invoke-virtual {p2}, Lcom/amazon/whispersync/communication/MessageEnvelope;->toMessage()Lamazon/whispersync/communication/Message;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Lamazon/whispersync/communication/MessageHandler;->onMessage(Lamazon/whispersync/communication/identity/EndpointIdentity;Lamazon/whispersync/communication/Message;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    sget-object p2, Lcom/amazon/whispersync/communication/MessageHandlerProxy;->log:Lcom/amazon/whispersync/dp/logger/DPLogger;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string v1, "onMessage"

    const-string v2, "Exception occurred!"

    invoke-virtual {p2, v1, v2, v0}, Lcom/amazon/whispersync/dp/logger/DPLogger;->warn(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    throw p1
.end method

.method public onMessageFragment(Lcom/amazon/whispersync/communication/ParcelableEndpointIdentity;Lcom/amazon/whispersync/communication/MessageEnvelope;IZ)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    :try_start_0
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "Message fragments not yet implemented"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    sget-object p2, Lcom/amazon/whispersync/communication/MessageHandlerProxy;->log:Lcom/amazon/whispersync/dp/logger/DPLogger;

    const/4 p3, 0x1

    new-array p3, p3, [Ljava/lang/Object;

    const/4 p4, 0x0

    aput-object p1, p3, p4

    const-string p4, "onMessageFragment"

    const-string v0, "Exception occurred!"

    invoke-virtual {p2, p4, v0, p3}, Lcom/amazon/whispersync/dp/logger/DPLogger;->warn(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    throw p1
.end method
