.class public Lcom/amazon/whisperjoin/provisionerSDK/devices/helpers/DeviceRadioTransportHelperImpl;
.super Ljava/lang/Object;
.source "DeviceRadioTransportHelperImpl.java"

# interfaces
.implements Lcom/amazon/whisperjoin/provisionerSDK/devices/helpers/DeviceRadioTransportHelper;


# static fields
.field private static final TAG:Ljava/lang/String; = "DeviceRadioTransportHelperImpl"


# instance fields
.field private mDeviceCommandExecutor:Lcom/amazon/whisperjoin/provisionerSDK/devices/DeviceCommandExecutor;

.field private final mDiscoveredRadio:Lcom/amazon/whisperjoin/common/sharedtypes/devices/DiscoveredRadio;

.field private mTransport:Lcom/amazon/whisperbridge/Transport;

.field private final mTransportProvider:Lcom/amazon/whisperjoin/provisionerSDK/devices/helpers/TransportProvider;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/amazon/whisperjoin/common/sharedtypes/devices/DiscoveredRadio;Lcom/amazon/whisperjoin/provisionerSDK/devices/helpers/TransportProvider;)V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    .line 41
    iput-object p1, p0, Lcom/amazon/whisperjoin/provisionerSDK/devices/helpers/DeviceRadioTransportHelperImpl;->mDiscoveredRadio:Lcom/amazon/whisperjoin/common/sharedtypes/devices/DiscoveredRadio;

    .line 42
    iput-object p2, p0, Lcom/amazon/whisperjoin/provisionerSDK/devices/helpers/DeviceRadioTransportHelperImpl;->mTransportProvider:Lcom/amazon/whisperjoin/provisionerSDK/devices/helpers/TransportProvider;

    return-void

    .line 39
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Transport Provider can not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 36
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Selected Radio can not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private initializeTransport()V
    .locals 3

    .line 104
    iget-object v0, p0, Lcom/amazon/whisperjoin/provisionerSDK/devices/helpers/DeviceRadioTransportHelperImpl;->mTransportProvider:Lcom/amazon/whisperjoin/provisionerSDK/devices/helpers/TransportProvider;

    iget-object v1, p0, Lcom/amazon/whisperjoin/provisionerSDK/devices/helpers/DeviceRadioTransportHelperImpl;->mDiscoveredRadio:Lcom/amazon/whisperjoin/common/sharedtypes/devices/DiscoveredRadio;

    invoke-virtual {v1}, Lcom/amazon/whisperjoin/common/sharedtypes/devices/DiscoveredRadio;->getRadio()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/amazon/whisperjoin/provisionerSDK/devices/helpers/TransportProvider;->getTransportForRadio(Ljava/lang/String;)Lcom/amazon/whisperbridge/Transport;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/whisperjoin/provisionerSDK/devices/helpers/DeviceRadioTransportHelperImpl;->mTransport:Lcom/amazon/whisperbridge/Transport;

    .line 105
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/provisionerSDK/devices/helpers/DeviceRadioTransportHelperImpl;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 109
    new-instance v0, Lcom/amazon/whisperjoin/provisionerSDK/devices/DeviceCommandExecutorImpl;

    iget-object v1, p0, Lcom/amazon/whisperjoin/provisionerSDK/devices/helpers/DeviceRadioTransportHelperImpl;->mTransport:Lcom/amazon/whisperbridge/Transport;

    iget-object v2, p0, Lcom/amazon/whisperjoin/provisionerSDK/devices/helpers/DeviceRadioTransportHelperImpl;->mDiscoveredRadio:Lcom/amazon/whisperjoin/common/sharedtypes/devices/DiscoveredRadio;

    invoke-virtual {v2}, Lcom/amazon/whisperjoin/common/sharedtypes/devices/DiscoveredRadio;->getRadioHandle()Ljava/lang/Object;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/amazon/whisperjoin/provisionerSDK/devices/DeviceCommandExecutorImpl;-><init>(Lcom/amazon/whisperbridge/Transport;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/amazon/whisperjoin/provisionerSDK/devices/helpers/DeviceRadioTransportHelperImpl;->mDeviceCommandExecutor:Lcom/amazon/whisperjoin/provisionerSDK/devices/DeviceCommandExecutor;

    return-void

    .line 106
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No transport found for provided radio: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/amazon/whisperjoin/provisionerSDK/devices/helpers/DeviceRadioTransportHelperImpl;->mDiscoveredRadio:Lcom/amazon/whisperjoin/common/sharedtypes/devices/DiscoveredRadio;

    invoke-virtual {v2}, Lcom/amazon/whisperjoin/common/sharedtypes/devices/DiscoveredRadio;->getRadioHandle()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public closeConnection()V
    .locals 3

    .line 71
    :try_start_0
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/provisionerSDK/devices/helpers/DeviceRadioTransportHelperImpl;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 72
    iget-object v0, p0, Lcom/amazon/whisperjoin/provisionerSDK/devices/helpers/DeviceRadioTransportHelperImpl;->mTransport:Lcom/amazon/whisperbridge/Transport;

    iget-object v1, p0, Lcom/amazon/whisperjoin/provisionerSDK/devices/helpers/DeviceRadioTransportHelperImpl;->mDiscoveredRadio:Lcom/amazon/whisperjoin/common/sharedtypes/devices/DiscoveredRadio;

    invoke-virtual {v1}, Lcom/amazon/whisperjoin/common/sharedtypes/devices/DiscoveredRadio;->getRadioHandle()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/amazon/whisperbridge/Transport;->close(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 75
    sget-object v1, Lcom/amazon/whisperjoin/provisionerSDK/devices/helpers/DeviceRadioTransportHelperImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "problem closing connection"

    invoke-static {v1, v2, v0}, Lcom/amazon/whisperjoin/common/sharedtypes/utility/WJLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public getCommandExecutor()Lcom/amazon/whisperjoin/provisionerSDK/devices/DeviceCommandExecutor;
    .locals 2

    .line 82
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/provisionerSDK/devices/helpers/DeviceRadioTransportHelperImpl;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 85
    iget-object v0, p0, Lcom/amazon/whisperjoin/provisionerSDK/devices/helpers/DeviceRadioTransportHelperImpl;->mDeviceCommandExecutor:Lcom/amazon/whisperjoin/provisionerSDK/devices/DeviceCommandExecutor;

    return-object v0

    .line 83
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Command Executor is not initialized, a connection must be opened first"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public isConnected()Z
    .locals 1

    .line 95
    iget-object v0, p0, Lcom/amazon/whisperjoin/provisionerSDK/devices/helpers/DeviceRadioTransportHelperImpl;->mTransport:Lcom/amazon/whisperbridge/Transport;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onProvisioningComplete()Ljava/util/concurrent/Future;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/Future<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 100
    iget-object v0, p0, Lcom/amazon/whisperjoin/provisionerSDK/devices/helpers/DeviceRadioTransportHelperImpl;->mTransport:Lcom/amazon/whisperbridge/Transport;

    iget-object v1, p0, Lcom/amazon/whisperjoin/provisionerSDK/devices/helpers/DeviceRadioTransportHelperImpl;->mDiscoveredRadio:Lcom/amazon/whisperjoin/common/sharedtypes/devices/DiscoveredRadio;

    invoke-virtual {v1}, Lcom/amazon/whisperjoin/common/sharedtypes/devices/DiscoveredRadio;->getRadioHandle()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/amazon/whisperbridge/Transport;->onProvisioningComplete(Ljava/lang/Object;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method public openConnection(Lcom/amazon/whisperjoin/provisionerSDK/devices/handlers/DeviceConnectionStateEventHandler;)Ljava/util/concurrent/Future;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/whisperjoin/provisionerSDK/devices/handlers/DeviceConnectionStateEventHandler;",
            ")",
            "Ljava/util/concurrent/Future<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 47
    invoke-direct {p0}, Lcom/amazon/whisperjoin/provisionerSDK/devices/helpers/DeviceRadioTransportHelperImpl;->initializeTransport()V

    .line 48
    iget-object v0, p0, Lcom/amazon/whisperjoin/provisionerSDK/devices/helpers/DeviceRadioTransportHelperImpl;->mTransport:Lcom/amazon/whisperbridge/Transport;

    iget-object v1, p0, Lcom/amazon/whisperjoin/provisionerSDK/devices/helpers/DeviceRadioTransportHelperImpl;->mDiscoveredRadio:Lcom/amazon/whisperjoin/common/sharedtypes/devices/DiscoveredRadio;

    invoke-virtual {v1}, Lcom/amazon/whisperjoin/common/sharedtypes/devices/DiscoveredRadio;->getRadioHandle()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Lcom/amazon/whisperbridge/Transport;->connect(Ljava/lang/Object;Lcom/amazon/whisperbridge/Transport$DeviceConnectionStateChangedListener;)Ljava/util/concurrent/Future;

    move-result-object p1

    return-object p1
.end method

.method public setEventNotificationCallback(Lcom/amazon/whisperbridge/Transport$ProvisionableEventNotificationCallback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 62
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/provisionerSDK/devices/helpers/DeviceRadioTransportHelperImpl;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 65
    iget-object v0, p0, Lcom/amazon/whisperjoin/provisionerSDK/devices/helpers/DeviceRadioTransportHelperImpl;->mTransport:Lcom/amazon/whisperbridge/Transport;

    iget-object v1, p0, Lcom/amazon/whisperjoin/provisionerSDK/devices/helpers/DeviceRadioTransportHelperImpl;->mDiscoveredRadio:Lcom/amazon/whisperjoin/common/sharedtypes/devices/DiscoveredRadio;

    invoke-virtual {v1}, Lcom/amazon/whisperjoin/common/sharedtypes/devices/DiscoveredRadio;->getRadioHandle()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Lcom/amazon/whisperbridge/Transport;->setProvisionableEventNotificationCallback(Ljava/lang/Object;Lcom/amazon/whisperbridge/Transport$ProvisionableEventNotificationCallback;)V

    return-void

    .line 63
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Transport is not yet initialized, must open connection before setting event notification callback"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public startProvisioning()Ljava/util/concurrent/Future;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/Future<",
            "Lcom/amazon/whisperbridge/ProvisioningStatus;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 54
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/provisionerSDK/devices/helpers/DeviceRadioTransportHelperImpl;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 57
    iget-object v0, p0, Lcom/amazon/whisperjoin/provisionerSDK/devices/helpers/DeviceRadioTransportHelperImpl;->mTransport:Lcom/amazon/whisperbridge/Transport;

    iget-object v1, p0, Lcom/amazon/whisperjoin/provisionerSDK/devices/helpers/DeviceRadioTransportHelperImpl;->mDiscoveredRadio:Lcom/amazon/whisperjoin/common/sharedtypes/devices/DiscoveredRadio;

    invoke-virtual {v1}, Lcom/amazon/whisperjoin/common/sharedtypes/devices/DiscoveredRadio;->getRadioHandle()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/amazon/whisperbridge/Transport;->startProvisioning(Ljava/lang/Object;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0

    .line 55
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Transport is not yet initialized, must open connection before start provisioning"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
