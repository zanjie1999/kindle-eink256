.class public Lcom/amazon/whispersync/communication/AndroidTCommManager;
.super Lcom/amazon/whispersync/communication/TCommManager;

# interfaces
.implements Lamazon/whispersync/communication/RemoteCommunicationManager;


# static fields
.field private static final log:Lcom/amazon/whispersync/dp/logger/DPLogger;


# instance fields
.field protected final mServiceConnection:Lcom/amazon/whispersync/communication/AndroidTCommServiceConnection;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/amazon/whispersync/dp/logger/DPLogger;

    const-string v1, "TComm.AndroidTCommManager"

    invoke-direct {v0, v1}, Lcom/amazon/whispersync/dp/logger/DPLogger;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/amazon/whispersync/communication/AndroidTCommManager;->log:Lcom/amazon/whispersync/dp/logger/DPLogger;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/amazon/whispersync/client/metrics/MetricsFactory;)V
    .locals 2

    new-instance v0, Lcom/amazon/whispersync/communication/AndroidIdentityResolver;

    invoke-direct {v0, p1}, Lcom/amazon/whispersync/communication/AndroidIdentityResolver;-><init>(Landroid/content/Context;)V

    new-instance v1, Lcom/amazon/whispersync/communication/authentication/MapAccountManagerWrapperImpl;

    invoke-direct {v1, p1}, Lcom/amazon/whispersync/communication/authentication/MapAccountManagerWrapperImpl;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, v0, v1, p2}, Lcom/amazon/whispersync/communication/TCommManager;-><init>(Lamazon/whispersync/communication/identity/IdentityResolver;Lcom/amazon/whispersync/communication/authentication/MapAccountManagerWrapper;Lcom/amazon/whispersync/client/metrics/MetricsFactory;)V

    new-instance p2, Lcom/amazon/whispersync/communication/AndroidTCommServiceConnection;

    invoke-direct {p2, p1}, Lcom/amazon/whispersync/communication/AndroidTCommServiceConnection;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/amazon/whispersync/communication/AndroidTCommManager;->mServiceConnection:Lcom/amazon/whispersync/communication/AndroidTCommServiceConnection;

    invoke-virtual {p2}, Lcom/amazon/whispersync/communication/AndroidTCommServiceConnection;->bindTCommService()V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    iget-object v0, p0, Lcom/amazon/whispersync/communication/AndroidTCommManager;->mServiceConnection:Lcom/amazon/whispersync/communication/AndroidTCommServiceConnection;

    invoke-virtual {v0}, Lcom/amazon/whispersync/communication/AndroidTCommServiceConnection;->unbindTCommService()V

    return-void
.end method

.method public getGatewayConnectivity()Lamazon/whispersync/communication/GatewayConnectivity;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lamazon/whispersync/communication/TCommServiceDownException;
        }
    .end annotation

    :try_start_0
    new-instance v0, Lcom/amazon/whispersync/communication/GatewayConnectivityImpl;

    invoke-direct {v0}, Lcom/amazon/whispersync/communication/GatewayConnectivityImpl;-><init>()V

    invoke-virtual {p0}, Lcom/amazon/whispersync/communication/AndroidTCommManager;->getService()Lcom/amazon/whispersync/communication/ICommunicationService;

    move-result-object v1

    invoke-static {v0}, Lcom/amazon/whispersync/communication/IConnectionListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/amazon/whispersync/communication/IConnectionListener;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/amazon/whispersync/communication/ICommunicationService;->getGatewayConnectivity(Lcom/amazon/whispersync/communication/IConnectionListener;)Lcom/amazon/whispersync/communication/IGatewayConnectivity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/whispersync/communication/GatewayConnectivityImpl;->setGatewayConnectivityInterface(Lcom/amazon/whispersync/communication/IGatewayConnectivity;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Lamazon/whispersync/communication/TCommServiceDownException;

    invoke-direct {v1, v0}, Lamazon/whispersync/communication/TCommServiceDownException;-><init>(Ljava/lang/Exception;)V

    throw v1
.end method

.method protected getService()Lcom/amazon/whispersync/communication/ICommunicationService;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lamazon/whispersync/communication/TCommServiceDownException;
        }
    .end annotation

    iget-object v0, p0, Lcom/amazon/whispersync/communication/AndroidTCommManager;->mServiceConnection:Lcom/amazon/whispersync/communication/AndroidTCommServiceConnection;

    invoke-virtual {v0}, Lcom/amazon/whispersync/communication/AndroidTCommServiceConnection;->waitForService()V

    iget-object v0, p0, Lcom/amazon/whispersync/communication/AndroidTCommManager;->mServiceConnection:Lcom/amazon/whispersync/communication/AndroidTCommServiceConnection;

    invoke-virtual {v0}, Lcom/amazon/whispersync/communication/AndroidTCommServiceConnection;->getBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/whispersync/communication/ICommunicationService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/amazon/whispersync/communication/ICommunicationService;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Lamazon/whispersync/communication/TCommServiceDownException;

    const-string v1, "acquired null instance of ICommunicationService"

    invoke-direct {v0, v1}, Lamazon/whispersync/communication/TCommServiceDownException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public registerServiceConnectedHandler(Lamazon/whispersync/communication/ServiceConnectedHandler;)V
    .locals 1

    iget-object v0, p0, Lcom/amazon/whispersync/communication/AndroidTCommManager;->mServiceConnection:Lcom/amazon/whispersync/communication/AndroidTCommServiceConnection;

    invoke-virtual {v0, p1}, Lcom/amazon/whispersync/communication/AndroidTCommServiceConnection;->registerServiceConnectedHandler(Lamazon/whispersync/communication/ServiceConnectedHandler;)V

    return-void
.end method
