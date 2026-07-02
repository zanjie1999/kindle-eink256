.class public Lcom/amazon/whispersync/communication/devicetodevice/AndroidDeviceToDeviceCommunicationManager;
.super Ljava/lang/Object;


# static fields
.field private static final D2D_RELAY_SERVICE:Ljava/lang/String; = "D2DRelayService"

.field private static final log:Lcom/amazon/whispersync/dp/logger/DPLogger;


# instance fields
.field private final mContext:Landroid/content/Context;

.field protected final mServiceConnection:Lcom/amazon/whispersync/communication/AndroidTCommServiceConnection;

.field private final mThisApplication:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/amazon/whispersync/dp/logger/DPLogger;

    const-string v1, "TComm.AndroidDeviceToDeviceCommunicationManager"

    invoke-direct {v0, v1}, Lcom/amazon/whispersync/dp/logger/DPLogger;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/amazon/whispersync/communication/devicetodevice/AndroidDeviceToDeviceCommunicationManager;->log:Lcom/amazon/whispersync/dp/logger/DPLogger;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/amazon/whispersync/client/metrics/MetricsFactory;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p2, :cond_0

    iput-object p2, p0, Lcom/amazon/whispersync/communication/devicetodevice/AndroidDeviceToDeviceCommunicationManager;->mThisApplication:Ljava/lang/String;

    iput-object p1, p0, Lcom/amazon/whispersync/communication/devicetodevice/AndroidDeviceToDeviceCommunicationManager;->mContext:Landroid/content/Context;

    new-instance p2, Lcom/amazon/whispersync/communication/AndroidTCommServiceConnection;

    invoke-direct {p2, p1}, Lcom/amazon/whispersync/communication/AndroidTCommServiceConnection;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/amazon/whispersync/communication/devicetodevice/AndroidDeviceToDeviceCommunicationManager;->mServiceConnection:Lcom/amazon/whispersync/communication/AndroidTCommServiceConnection;

    invoke-virtual {p2}, Lcom/amazon/whispersync/communication/AndroidTCommServiceConnection;->bindTCommService()V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "applicationIdentifier must not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public acquireConnection(Lamazon/whispersync/communication/identity/DeviceIdentity;Ljava/lang/String;)Lamazon/whispersync/communication/connection/Connection;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public close()V
    .locals 1

    iget-object v0, p0, Lcom/amazon/whispersync/communication/devicetodevice/AndroidDeviceToDeviceCommunicationManager;->mServiceConnection:Lcom/amazon/whispersync/communication/AndroidTCommServiceConnection;

    invoke-virtual {v0}, Lcom/amazon/whispersync/communication/AndroidTCommServiceConnection;->unbindTCommService()V

    return-void
.end method

.method public deregisterMessageHandler()V
    .locals 0

    return-void
.end method

.method protected getService()Lcom/amazon/whispersync/communication/ICommunicationService;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lamazon/whispersync/communication/TCommServiceDownException;
        }
    .end annotation

    iget-object v0, p0, Lcom/amazon/whispersync/communication/devicetodevice/AndroidDeviceToDeviceCommunicationManager;->mServiceConnection:Lcom/amazon/whispersync/communication/AndroidTCommServiceConnection;

    invoke-virtual {v0}, Lcom/amazon/whispersync/communication/AndroidTCommServiceConnection;->waitForService()V

    iget-object v0, p0, Lcom/amazon/whispersync/communication/devicetodevice/AndroidDeviceToDeviceCommunicationManager;->mServiceConnection:Lcom/amazon/whispersync/communication/AndroidTCommServiceConnection;

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

.method public initializeD2DCommunication()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lamazon/whispersync/communication/ConnectionAcquisitionFailedException;
        }
    .end annotation

    iget-object v0, p0, Lcom/amazon/whispersync/communication/devicetodevice/AndroidDeviceToDeviceCommunicationManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lamazon/whispersync/communication/CommunicationFactory;->getCommunicationManager(Landroid/content/Context;)Lamazon/whispersync/communication/CommunicationManager;

    move-result-object v0

    new-instance v1, Lamazon/whispersync/communication/connection/Policy$Builder;

    invoke-direct {v1}, Lamazon/whispersync/communication/connection/Policy$Builder;-><init>()V

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lamazon/whispersync/communication/connection/Policy$Builder;->setIsClearText(Z)Lamazon/whispersync/communication/connection/Policy$Builder;

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Lamazon/whispersync/communication/connection/Policy$Builder;->setIsLowLatencyNecessary(Z)Lamazon/whispersync/communication/connection/Policy$Builder;

    invoke-virtual {v1, v2}, Lamazon/whispersync/communication/connection/Policy$Builder;->setIsRequestResponseOnly(Z)Lamazon/whispersync/communication/connection/Policy$Builder;

    invoke-virtual {v1}, Lamazon/whispersync/communication/connection/Policy$Builder;->build()Lamazon/whispersync/communication/connection/Policy;

    move-result-object v1

    :try_start_0
    const-string v2, "D2DRelayService"

    invoke-static {v2}, Lamazon/whispersync/communication/identity/EndpointIdentityFactory;->createServiceIdentity(Ljava/lang/String;)Lamazon/whispersync/communication/identity/ServiceIdentity;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v0, v2, v1, v3}, Lamazon/whispersync/communication/CommunicationManager;->acquireConnection(Lamazon/whispersync/communication/identity/EndpointIdentity;Lamazon/whispersync/communication/connection/Policy;Lamazon/whispersync/communication/connection/Connection$ConnectionListener;)Lamazon/whispersync/communication/connection/Connection;
    :try_end_0
    .catch Lamazon/whispersync/communication/CommunicationBaseException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Lamazon/whispersync/communication/ConnectionAcquisitionFailedException;

    invoke-direct {v1, v0}, Lamazon/whispersync/communication/ConnectionAcquisitionFailedException;-><init>(Ljava/lang/Exception;)V

    throw v1
.end method

.method public notifyRemoteDeviceForD2DCommunication(Lamazon/whispersync/communication/identity/DeviceIdentity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lamazon/whispersync/communication/devicetodevice/NotificationServiceException;,
            Lamazon/whispersync/communication/MissingCredentialsException;
        }
    .end annotation

    iget-object v0, p0, Lcom/amazon/whispersync/communication/devicetodevice/AndroidDeviceToDeviceCommunicationManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lamazon/whispersync/communication/CommunicationFactory;->getSrrManager(Landroid/content/Context;)Lamazon/whispersync/communication/srr/SrrManager;

    move-result-object v0

    const-string v1, "D2DNotificationService"

    invoke-static {v1}, Lamazon/whispersync/communication/identity/EndpointIdentityFactory;->createServiceIdentity(Ljava/lang/String;)Lamazon/whispersync/communication/identity/ServiceIdentity;

    move-result-object v1

    new-instance v2, Lorg/apache/http/client/methods/HttpPost;

    const-string v3, "/makeD2DConnectionRequest"

    invoke-direct {v2, v3}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lamazon/whispersync/communication/identity/DeviceIdentity;->getDeviceType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lamazon/whispersync/communication/identity/DeviceIdentity;->getDeviceSerialNumber()Ljava/lang/String;

    move-result-object p1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "{\"sourceApplication\": \""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/amazon/whispersync/communication/devicetodevice/AndroidDeviceToDeviceCommunicationManager;->mThisApplication:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\", \"targetDevice\":   {\"deviceType\": \""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\", \"deviceSerial\": \""

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\"}, \"targetApplication\": \""

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\", \"extra\": \""

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\"}"

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :try_start_0
    new-instance p2, Lorg/apache/http/entity/StringEntity;

    invoke-direct {p2, p1}, Lorg/apache/http/entity/StringEntity;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_3

    :try_start_1
    new-instance p1, Lamazon/whispersync/communication/srr/SrrRequest$Builder;

    invoke-direct {p1}, Lamazon/whispersync/communication/srr/SrrRequest$Builder;-><init>()V

    invoke-virtual {p1, v2}, Lamazon/whispersync/communication/srr/SrrRequest$Builder;->setRequest(Lorg/apache/http/client/methods/HttpRequestBase;)Lamazon/whispersync/communication/srr/SrrRequest$Builder;

    invoke-virtual {p1, v1}, Lamazon/whispersync/communication/srr/SrrRequest$Builder;->setEndpointIdentity(Lamazon/whispersync/communication/identity/EndpointIdentity;)Lamazon/whispersync/communication/srr/SrrRequest$Builder;

    invoke-virtual {p1}, Lamazon/whispersync/communication/srr/SrrRequest$Builder;->build()Lamazon/whispersync/communication/srr/SrrRequest;

    move-result-object p1
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_2

    :try_start_2
    invoke-interface {v0, p1}, Lamazon/whispersync/communication/srr/SrrManager;->makeRequestSync(Lamazon/whispersync/communication/srr/SrrRequest;)Lorg/apache/http/HttpResponse;
    :try_end_2
    .catch Lamazon/whispersync/communication/TimeoutException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lamazon/whispersync/communication/RequestFailedException; {:try_start_2 .. :try_end_2} :catch_0

    return-void

    :catch_0
    move-exception p1

    new-instance p2, Lamazon/whispersync/communication/devicetodevice/NotificationServiceException;

    invoke-direct {p2, p1}, Lamazon/whispersync/communication/devicetodevice/NotificationServiceException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :catch_1
    move-exception p1

    new-instance p2, Lamazon/whispersync/communication/devicetodevice/NotificationServiceException;

    invoke-direct {p2, p1}, Lamazon/whispersync/communication/devicetodevice/NotificationServiceException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :catch_2
    move-exception p1

    new-instance p2, Lamazon/whispersync/communication/devicetodevice/NotificationServiceException;

    invoke-direct {p2, p1}, Lamazon/whispersync/communication/devicetodevice/NotificationServiceException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :catch_3
    move-exception p1

    new-instance p2, Ljava/lang/IllegalStateException;

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method public registerMessageHandler(Lamazon/whispersync/communication/MessageHandler;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lamazon/whispersync/communication/RegistrationFailedException;
        }
    .end annotation

    return-void
.end method

.method public registerServiceConnectedHandler(Lamazon/whispersync/communication/ServiceConnectedHandler;)V
    .locals 1

    iget-object v0, p0, Lcom/amazon/whispersync/communication/devicetodevice/AndroidDeviceToDeviceCommunicationManager;->mServiceConnection:Lcom/amazon/whispersync/communication/AndroidTCommServiceConnection;

    invoke-virtual {v0, p1}, Lcom/amazon/whispersync/communication/AndroidTCommServiceConnection;->registerServiceConnectedHandler(Lamazon/whispersync/communication/ServiceConnectedHandler;)V

    return-void
.end method

.method public shutdownD2DCommunication()V
    .locals 0

    invoke-virtual {p0}, Lcom/amazon/whispersync/communication/devicetodevice/AndroidDeviceToDeviceCommunicationManager;->close()V

    return-void
.end method
