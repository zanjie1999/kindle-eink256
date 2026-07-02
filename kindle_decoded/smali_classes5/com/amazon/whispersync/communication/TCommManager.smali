.class public abstract Lcom/amazon/whispersync/communication/TCommManager;
.super Lcom/amazon/whispersync/communication/CommunicationManagerBase;


# static fields
.field private static final log:Lcom/amazon/whispersync/dp/logger/DPLogger;


# instance fields
.field private final mAccountManager:Lcom/amazon/whispersync/communication/authentication/MapAccountManagerWrapper;

.field private final mIdentityResolver:Lamazon/whispersync/communication/identity/IdentityResolver;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/amazon/whispersync/dp/logger/DPLogger;

    const-string v1, "TComm.TCommManager"

    invoke-direct {v0, v1}, Lcom/amazon/whispersync/dp/logger/DPLogger;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/amazon/whispersync/communication/TCommManager;->log:Lcom/amazon/whispersync/dp/logger/DPLogger;

    return-void
.end method

.method public constructor <init>(Lamazon/whispersync/communication/identity/IdentityResolver;Lcom/amazon/whispersync/communication/authentication/MapAccountManagerWrapper;Lcom/amazon/whispersync/client/metrics/MetricsFactory;)V
    .locals 0

    invoke-direct {p0, p3}, Lcom/amazon/whispersync/communication/CommunicationManagerBase;-><init>(Lcom/amazon/whispersync/client/metrics/MetricsFactory;)V

    iput-object p1, p0, Lcom/amazon/whispersync/communication/TCommManager;->mIdentityResolver:Lamazon/whispersync/communication/identity/IdentityResolver;

    iput-object p2, p0, Lcom/amazon/whispersync/communication/TCommManager;->mAccountManager:Lcom/amazon/whispersync/communication/authentication/MapAccountManagerWrapper;

    return-void
.end method


# virtual methods
.method public acquireConnection(Lamazon/whispersync/communication/identity/EndpointIdentity;Lamazon/whispersync/communication/connection/ConnectionPolicy;Lamazon/whispersync/communication/connection/Connection$ConnectionListener;)Lamazon/whispersync/communication/connection/Connection;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lamazon/whispersync/communication/ConnectionAcquisitionFailedException;,
            Lamazon/whispersync/communication/MissingCredentialsException;
        }
    .end annotation

    new-instance v0, Lamazon/whispersync/communication/connection/Policy$Builder;

    invoke-direct {v0}, Lamazon/whispersync/communication/connection/Policy$Builder;-><init>()V

    invoke-virtual {v0, p2}, Lamazon/whispersync/communication/connection/Policy$Builder;->fromConnectionPolicy(Lamazon/whispersync/communication/connection/ConnectionPolicy;)Lamazon/whispersync/communication/connection/Policy;

    move-result-object p2

    invoke-virtual {p0, p1, p2, p3}, Lcom/amazon/whispersync/communication/TCommManager;->acquireConnection(Lamazon/whispersync/communication/identity/EndpointIdentity;Lamazon/whispersync/communication/connection/Policy;Lamazon/whispersync/communication/connection/Connection$ConnectionListener;)Lamazon/whispersync/communication/connection/Connection;

    move-result-object p1

    return-object p1
.end method

.method public acquireConnection(Lamazon/whispersync/communication/identity/EndpointIdentity;Lamazon/whispersync/communication/connection/Policy;Lamazon/whispersync/communication/connection/Connection$ConnectionListener;)Lamazon/whispersync/communication/connection/Connection;
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lamazon/whispersync/communication/ConnectionAcquisitionFailedException;,
            Lamazon/whispersync/communication/MissingCredentialsException;
        }
    .end annotation

    move-object/from16 v1, p1

    move-object/from16 v0, p2

    move-object/from16 v2, p3

    sget-object v3, Lcom/amazon/whispersync/communication/TCommManager;->log:Lcom/amazon/whispersync/dp/logger/DPLogger;

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    const-string v5, "destination"

    const/4 v6, 0x0

    aput-object v5, v4, v6

    const/4 v7, 0x1

    aput-object v1, v4, v7

    const-string/jumbo v8, "policy"

    const/4 v9, 0x2

    aput-object v8, v4, v9

    const/4 v8, 0x3

    aput-object v0, v4, v8

    const-string v8, "acquireConnection"

    const-string v10, "acquiring connection"

    invoke-virtual {v3, v8, v10, v4}, Lcom/amazon/whispersync/dp/logger/DPLogger;->verbose(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz v0, :cond_5

    if-eqz v1, :cond_4

    invoke-virtual/range {p2 .. p2}, Lamazon/whispersync/communication/connection/Policy;->getReconnectOnFailure()Z

    move-result v3

    if-nez v3, :cond_3

    invoke-virtual/range {p2 .. p2}, Lamazon/whispersync/communication/connection/Policy;->getKeepAlive()Lamazon/whispersync/communication/connection/KeepAlive;

    move-result-object v3

    sget-object v4, Lamazon/whispersync/communication/connection/KeepAlive;->NONE:Lamazon/whispersync/communication/connection/KeepAlive;

    if-ne v3, v4, :cond_2

    :try_start_0
    new-instance v3, Lcom/amazon/whispersync/communication/ConnectionProxy;

    invoke-virtual/range {p2 .. p2}, Lamazon/whispersync/communication/connection/Policy;->isRequestResponseOnly()Z

    move-result v4

    invoke-direct {v3, v4}, Lcom/amazon/whispersync/communication/ConnectionProxy;-><init>(Z)V

    if-eqz v2, :cond_0

    invoke-virtual {v3, v2}, Lcom/amazon/whispersync/communication/ConnectionProxy;->addConnectionListener(Lamazon/whispersync/communication/connection/Connection$ConnectionListener;)V

    :cond_0
    new-instance v2, Lcom/amazon/whispersync/communication/ParcelableStatus;

    invoke-direct {v2}, Lcom/amazon/whispersync/communication/ParcelableStatus;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lcom/amazon/whispersync/communication/TCommManager;->getService()Lcom/amazon/whispersync/communication/ICommunicationService;

    move-result-object v10

    new-instance v11, Lcom/amazon/whispersync/communication/ParcelableEndpointIdentity;

    invoke-direct {v11, v1}, Lcom/amazon/whispersync/communication/ParcelableEndpointIdentity;-><init>(Lamazon/whispersync/communication/identity/EndpointIdentity;)V

    new-instance v12, Lcom/amazon/whispersync/communication/ParcelablePolicy;

    invoke-direct {v12, v0}, Lcom/amazon/whispersync/communication/ParcelablePolicy;-><init>(Lamazon/whispersync/communication/connection/Policy;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lamazon/whispersync/communication/TCommServiceDownException; {:try_start_0 .. :try_end_0} :catch_2

    move-object/from16 v4, p0

    :try_start_1
    iget-object v0, v4, Lcom/amazon/whispersync/communication/TCommManager;->mAccountManager:Lcom/amazon/whispersync/communication/authentication/MapAccountManagerWrapper;

    invoke-interface {v0}, Lcom/amazon/whispersync/communication/authentication/MapAccountManagerWrapper;->getAccount()Ljava/lang/String;

    move-result-object v13

    invoke-static {v3}, Lcom/amazon/whispersync/communication/IConnectionListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/amazon/whispersync/communication/IConnectionListener;

    move-result-object v14

    move-object v15, v2

    invoke-interface/range {v10 .. v15}, Lcom/amazon/whispersync/communication/ICommunicationService;->acquireConnectionEx(Lcom/amazon/whispersync/communication/ParcelableEndpointIdentity;Lcom/amazon/whispersync/communication/ParcelablePolicy;Ljava/lang/String;Lcom/amazon/whispersync/communication/IConnectionListener;Lcom/amazon/whispersync/communication/ParcelableStatus;)Lcom/amazon/whispersync/communication/IConnection;

    move-result-object v0

    invoke-virtual {v2}, Lcom/amazon/whispersync/communication/ParcelableStatus;->getStatusCode()I

    move-result v10

    packed-switch v10, :pswitch_data_0

    new-instance v0, Ljava/lang/RuntimeException;

    goto :goto_0

    :pswitch_0
    new-instance v0, Lamazon/whispersync/communication/SecurePortNotDefinedException;

    invoke-virtual {v2}, Lcom/amazon/whispersync/communication/ParcelableStatus;->getStatusMessage()Ljava/lang/String;

    move-result-object v2

    new-array v3, v9, [Ljava/lang/Object;

    aput-object v5, v3, v6

    aput-object v1, v3, v7

    invoke-static {v8, v2, v3}, Lcom/amazon/whispersync/dp/logger/DPFormattedMessage;->toDPFormat(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lamazon/whispersync/communication/SecurePortNotDefinedException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_1
    new-instance v0, Lamazon/whispersync/communication/WiFiUnavailableException;

    invoke-virtual {v2}, Lcom/amazon/whispersync/communication/ParcelableStatus;->getStatusMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lamazon/whispersync/communication/WiFiUnavailableException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_2
    new-instance v0, Lamazon/whispersync/communication/MissingCredentialsException;

    const-string v2, "No Amazon account on the device"

    invoke-direct {v0, v2}, Lamazon/whispersync/communication/MissingCredentialsException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_3
    new-instance v0, Lamazon/whispersync/communication/ConnectionAcquisitionFailedException;

    invoke-virtual {v2}, Lcom/amazon/whispersync/communication/ParcelableStatus;->getStatusMessage()Ljava/lang/String;

    move-result-object v2

    new-array v3, v9, [Ljava/lang/Object;

    aput-object v5, v3, v6

    aput-object v1, v3, v7

    invoke-static {v8, v2, v3}, Lcom/amazon/whispersync/dp/logger/DPFormattedMessage;->toDPFormat(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lamazon/whispersync/communication/ConnectionAcquisitionFailedException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_4
    if-eqz v0, :cond_1

    invoke-virtual {v3, v0}, Lcom/amazon/whispersync/communication/ConnectionProxy;->setConnectionInterface(Lcom/amazon/whispersync/communication/IConnection;)V

    return-object v3

    :cond_1
    new-instance v0, Lamazon/whispersync/communication/ConnectionAcquisitionFailedException;

    const-string v2, "Null IConnection. This is probably caused by an IPC failure. TComm client and service may not be compatible."

    invoke-direct {v0, v2}, Lamazon/whispersync/communication/ConnectionAcquisitionFailedException;-><init>(Ljava/lang/String;)V

    throw v0

    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Invalid acquireConnectionStatus \'"

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/amazon/whispersync/communication/ParcelableStatus;->getStatusCode()I

    move-result v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "\'."

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lamazon/whispersync/communication/TCommServiceDownException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_2

    :catch_2
    move-exception v0

    move-object/from16 v4, p0

    :goto_1
    sget-object v2, Lcom/amazon/whispersync/communication/TCommManager;->log:Lcom/amazon/whispersync/dp/logger/DPLogger;

    new-array v3, v9, [Ljava/lang/Object;

    aput-object v5, v3, v6

    aput-object v1, v3, v7

    const-string v1, "TComm service is down"

    invoke-virtual {v2, v8, v1, v3}, Lcom/amazon/whispersync/dp/logger/DPLogger;->warn(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v1, Lamazon/whispersync/communication/ConnectionAcquisitionFailedException;

    invoke-direct {v1, v0}, Lamazon/whispersync/communication/ConnectionAcquisitionFailedException;-><init>(Ljava/lang/Exception;)V

    throw v1

    :catch_3
    move-exception v0

    move-object/from16 v4, p0

    :goto_2
    new-instance v1, Lamazon/whispersync/communication/ConnectionAcquisitionFailedException;

    invoke-direct {v1, v0}, Lamazon/whispersync/communication/ConnectionAcquisitionFailedException;-><init>(Ljava/lang/Exception;)V

    throw v1

    :cond_2
    move-object/from16 v4, p0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "keepAlive not yet implemented"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    move-object/from16 v4, p0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "reconnectOnFailure not yet implemented"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    move-object/from16 v4, p0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "destination must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    move-object/from16 v4, p0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Missing policy"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public deregisterMessageHandler(I)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lamazon/whispersync/communication/RegistrationFailedException;
        }
    .end annotation

    const-string v0, "deregisterMessageHandler"

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0}, Lcom/amazon/whispersync/communication/TCommManager;->getService()Lcom/amazon/whispersync/communication/ICommunicationService;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/amazon/whispersync/communication/ICommunicationService;->deregisterMessageHandler(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lamazon/whispersync/communication/TCommServiceDownException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    sget-object v2, Lcom/amazon/whispersync/communication/TCommManager;->log:Lcom/amazon/whispersync/dp/logger/DPLogger;

    new-array v1, v1, [Ljava/lang/Object;

    const-string v3, "TComm service is down"

    invoke-virtual {v2, v0, v3, v1}, Lcom/amazon/whispersync/dp/logger/DPLogger;->warn(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v0, Lamazon/whispersync/communication/RegistrationFailedException;

    invoke-direct {v0, p1}, Lamazon/whispersync/communication/RegistrationFailedException;-><init>(Ljava/lang/Exception;)V

    throw v0

    :catch_1
    sget-object v2, Lcom/amazon/whispersync/communication/TCommManager;->log:Lcom/amazon/whispersync/dp/logger/DPLogger;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "channel"

    aput-object v4, v3, v1

    const/4 v1, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v3, v1

    const-string p1, "error deregistering handler"

    invoke-virtual {v2, v0, p1, v3}, Lcom/amazon/whispersync/dp/logger/DPLogger;->warn(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance p1, Lamazon/whispersync/communication/RegistrationFailedException;

    const-string v0, "Unable to contact service"

    invoke-direct {p1, v0}, Lamazon/whispersync/communication/RegistrationFailedException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getIdentityResolver()Lamazon/whispersync/communication/identity/IdentityResolver;
    .locals 6

    const-string v0, "getIdentityResolver"

    const/4 v1, 0x1

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {p0}, Lcom/amazon/whispersync/communication/TCommManager;->getService()Lcom/amazon/whispersync/communication/ICommunicationService;

    move-result-object v3

    invoke-interface {v3}, Lcom/amazon/whispersync/communication/ICommunicationService;->isInitialized()Z

    move-result v3

    if-nez v3, :cond_0

    sget-object v3, Lcom/amazon/whispersync/communication/TCommManager;->log:Lcom/amazon/whispersync/dp/logger/DPLogger;

    const-string v4, "CommunicationService has not finished initialization"

    new-array v5, v2, [Ljava/lang/Object;

    invoke-virtual {v3, v0, v4, v5}, Lcom/amazon/whispersync/dp/logger/DPLogger;->warn(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/amazon/whispersync/communication/TCommManager;->mIdentityResolver:Lamazon/whispersync/communication/identity/IdentityResolver;
    :try_end_0
    .catch Lamazon/whispersync/communication/TCommServiceDownException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v3

    sget-object v4, Lcom/amazon/whispersync/communication/TCommManager;->log:Lcom/amazon/whispersync/dp/logger/DPLogger;

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v3, v1, v2

    const-string v2, "RemoteException while checking CommunicationService status"

    invoke-virtual {v4, v0, v2, v1}, Lcom/amazon/whispersync/dp/logger/DPLogger;->warn(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :catch_1
    move-exception v3

    sget-object v4, Lcom/amazon/whispersync/communication/TCommManager;->log:Lcom/amazon/whispersync/dp/logger/DPLogger;

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v3, v1, v2

    const-string v2, "TComm service is down"

    invoke-virtual {v4, v0, v2, v1}, Lcom/amazon/whispersync/dp/logger/DPLogger;->warn(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    const/4 v0, 0x0

    :goto_1
    return-object v0
.end method

.method protected abstract getService()Lcom/amazon/whispersync/communication/ICommunicationService;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lamazon/whispersync/communication/TCommServiceDownException;
        }
    .end annotation
.end method

.method public registerMessageHandler(ILamazon/whispersync/communication/MessageHandler;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lamazon/whispersync/communication/RegistrationFailedException;
        }
    .end annotation

    const-string/jumbo v0, "registerMessageHandler"

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0}, Lcom/amazon/whispersync/communication/TCommManager;->getService()Lcom/amazon/whispersync/communication/ICommunicationService;

    move-result-object v2

    new-instance v3, Lcom/amazon/whispersync/communication/MessageHandlerProxy;

    invoke-direct {v3, p2}, Lcom/amazon/whispersync/communication/MessageHandlerProxy;-><init>(Lamazon/whispersync/communication/MessageHandler;)V

    invoke-interface {v2, p1, v3}, Lcom/amazon/whispersync/communication/ICommunicationService;->registerMessageHandler(ILcom/amazon/whispersync/communication/IMessageHandler;)I

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lamazon/whispersync/communication/TCommServiceDownException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p1, :cond_1

    const/16 p2, 0x7d0

    if-ne p1, p2, :cond_0

    new-instance p1, Lamazon/whispersync/communication/DuplicateHandlerException;

    const-string p2, "Cannot register duplicate handler"

    invoke-direct {p1, p2}, Lamazon/whispersync/communication/DuplicateHandlerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_0
    new-instance p1, Lamazon/whispersync/communication/RegistrationFailedException;

    const-string p2, "Internal error during registration"

    invoke-direct {p1, p2}, Lamazon/whispersync/communication/RegistrationFailedException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    return-void

    :catch_0
    move-exception p1

    sget-object p2, Lcom/amazon/whispersync/communication/TCommManager;->log:Lcom/amazon/whispersync/dp/logger/DPLogger;

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "TComm service is down"

    invoke-virtual {p2, v0, v2, v1}, Lcom/amazon/whispersync/dp/logger/DPLogger;->warn(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance p2, Lamazon/whispersync/communication/RegistrationFailedException;

    invoke-direct {p2, p1}, Lamazon/whispersync/communication/RegistrationFailedException;-><init>(Ljava/lang/Exception;)V

    throw p2

    :catch_1
    move-exception p2

    sget-object v2, Lcom/amazon/whispersync/communication/TCommManager;->log:Lcom/amazon/whispersync/dp/logger/DPLogger;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "channel"

    aput-object v4, v3, v1

    const/4 v1, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v3, v1

    const-string p1, "error registering handler"

    invoke-virtual {v2, v0, p1, v3}, Lcom/amazon/whispersync/dp/logger/DPLogger;->warn(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance p1, Lamazon/whispersync/communication/RegistrationFailedException;

    invoke-direct {p1, p2}, Lamazon/whispersync/communication/RegistrationFailedException;-><init>(Ljava/lang/Exception;)V

    throw p1
.end method
