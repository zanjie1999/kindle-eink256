.class public Lcom/amazon/whisperjoin/provisionerSDK/devices/BasicPeripheralDevice;
.super Ljava/lang/Object;
.source "BasicPeripheralDevice.java"

# interfaces
.implements Lcom/amazon/whisperjoin/common/sharedtypes/devices/interfaces/PeripheralDevice;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final UNENCRYPTED_OPERATIONS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/amazon/whisperbridge/constants/Command;",
            ">;"
        }
    .end annotation
.end field

.field protected final mDeviceDetails:Lcom/amazon/whisperjoin/common/sharedtypes/devices/WhisperJoinPeripheralDeviceDetails;

.field private final mDeviceEventHandler:Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/events/EventHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/events/EventHandler<",
            "Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/events/DeviceEvent;",
            ">;"
        }
    .end annotation
.end field

.field private final mDeviceRadioTransportHelper:Lcom/amazon/whisperjoin/provisionerSDK/devices/helpers/DeviceRadioTransportHelper;

.field private final mEncodingHelper:Lcom/amazon/whisperjoin/common/sharedtypes/utility/EncodingHelpers;

.field private mEncryptionProvider:Lcom/amazon/whisperjoin/common/sharedtypes/cryptography/EncryptionProvider;

.field protected final mExecutorService:Ljava/util/concurrent/ExecutorService;

.field private final mMaximumMessageSize:I

.field private mProvisionableEventManager:Lcom/amazon/whisperjoin/provisionerSDK/devices/ProvisionableEventManager;

.field protected mSerializer:Lcom/amazon/whisperjoin/common/sharedtypes/utility/Serializer;

.field private final mTrustNegotiatorProvider:Lcom/amazon/whisperjoin/provisionerSDK/devices/security/TrustNegotiatorProvider;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 35
    const-class v0, Lcom/amazon/whisperjoin/provisionerSDK/devices/BasicPeripheralDevice;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/whisperjoin/provisionerSDK/devices/BasicPeripheralDevice;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/amazon/whisperjoin/common/sharedtypes/devices/WhisperJoinPeripheralDeviceDetails;Lcom/amazon/whisperjoin/provisionerSDK/configuration/ConnectionConfiguration;Lcom/amazon/whisperjoin/common/sharedtypes/utility/EncodingHelpers;Lcom/amazon/whisperjoin/common/sharedtypes/utility/Serializer;Lcom/amazon/whisperjoin/provisionerSDK/devices/helpers/DeviceRadioTransportHelper;Lcom/amazon/whisperjoin/provisionerSDK/devices/security/TrustNegotiatorProvider;)V
    .locals 4

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    invoke-static {}, Lcom/google/common/collect/ImmutableSet;->builder()Lcom/google/common/collect/ImmutableSet$Builder;

    move-result-object v0

    const/4 v1, 0x5

    new-array v1, v1, [Lcom/amazon/whisperbridge/constants/Command;

    sget-object v2, Lcom/amazon/whisperbridge/constants/Command;->EXCHANGE_ECDHE_KEY:Lcom/amazon/whisperbridge/constants/Command;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    sget-object v2, Lcom/amazon/whisperbridge/constants/Command;->EXCHANGE_AUTHENTICATED_ECDHE_KEY:Lcom/amazon/whisperbridge/constants/Command;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    sget-object v2, Lcom/amazon/whisperbridge/constants/Command;->JPAKE_ROUND1:Lcom/amazon/whisperbridge/constants/Command;

    const/4 v3, 0x2

    aput-object v2, v1, v3

    sget-object v2, Lcom/amazon/whisperbridge/constants/Command;->JPAKE_ROUND2:Lcom/amazon/whisperbridge/constants/Command;

    const/4 v3, 0x3

    aput-object v2, v1, v3

    sget-object v2, Lcom/amazon/whisperbridge/constants/Command;->JPAKE_ROUND3:Lcom/amazon/whisperbridge/constants/Command;

    const/4 v3, 0x4

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableSet$Builder;->add([Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet$Builder;

    move-result-object v0

    .line 60
    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableSet$Builder;->build()Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/whisperjoin/provisionerSDK/devices/BasicPeripheralDevice;->UNENCRYPTED_OPERATIONS:Ljava/util/Set;

    if-eqz p1, :cond_3

    if-eqz p2, :cond_2

    if-eqz p4, :cond_1

    if-nez p3, :cond_0

    .line 80
    new-instance p3, Lcom/amazon/whisperjoin/common/sharedtypes/utility/EncodingHelpers;

    invoke-direct {p3}, Lcom/amazon/whisperjoin/common/sharedtypes/utility/EncodingHelpers;-><init>()V

    .line 83
    :cond_0
    iput-object p3, p0, Lcom/amazon/whisperjoin/provisionerSDK/devices/BasicPeripheralDevice;->mEncodingHelper:Lcom/amazon/whisperjoin/common/sharedtypes/utility/EncodingHelpers;

    .line 84
    iput-object p1, p0, Lcom/amazon/whisperjoin/provisionerSDK/devices/BasicPeripheralDevice;->mDeviceDetails:Lcom/amazon/whisperjoin/common/sharedtypes/devices/WhisperJoinPeripheralDeviceDetails;

    .line 85
    invoke-virtual {p2}, Lcom/amazon/whisperjoin/provisionerSDK/configuration/ConnectionConfiguration;->getExecutorService()Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/whisperjoin/provisionerSDK/devices/BasicPeripheralDevice;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    .line 86
    invoke-virtual {p2}, Lcom/amazon/whisperjoin/provisionerSDK/configuration/ConnectionConfiguration;->getMaximumMessageSize()I

    move-result p1

    iput p1, p0, Lcom/amazon/whisperjoin/provisionerSDK/devices/BasicPeripheralDevice;->mMaximumMessageSize:I

    .line 88
    iput-object p4, p0, Lcom/amazon/whisperjoin/provisionerSDK/devices/BasicPeripheralDevice;->mSerializer:Lcom/amazon/whisperjoin/common/sharedtypes/utility/Serializer;

    .line 89
    iput-object p5, p0, Lcom/amazon/whisperjoin/provisionerSDK/devices/BasicPeripheralDevice;->mDeviceRadioTransportHelper:Lcom/amazon/whisperjoin/provisionerSDK/devices/helpers/DeviceRadioTransportHelper;

    .line 90
    iput-object p6, p0, Lcom/amazon/whisperjoin/provisionerSDK/devices/BasicPeripheralDevice;->mTrustNegotiatorProvider:Lcom/amazon/whisperjoin/provisionerSDK/devices/security/TrustNegotiatorProvider;

    .line 92
    new-instance p1, Lcom/amazon/whisperjoin/provisionerSDK/devices/handlers/ProvisionableDeviceEventDispatcher;

    invoke-virtual {p2}, Lcom/amazon/whisperjoin/provisionerSDK/configuration/ConnectionConfiguration;->getDeviceObservers()Lcom/amazon/whisperjoin/provisionerSDK/utility/Observers;

    move-result-object p2

    iget-object p3, p0, Lcom/amazon/whisperjoin/provisionerSDK/devices/BasicPeripheralDevice;->mDeviceDetails:Lcom/amazon/whisperjoin/common/sharedtypes/devices/WhisperJoinPeripheralDeviceDetails;

    invoke-direct {p1, p2, p3}, Lcom/amazon/whisperjoin/provisionerSDK/devices/handlers/ProvisionableDeviceEventDispatcher;-><init>(Lcom/amazon/whisperjoin/provisionerSDK/utility/Observers;Lcom/amazon/whisperjoin/common/sharedtypes/devices/WhisperJoinPeripheralDeviceDetails;)V

    iput-object p1, p0, Lcom/amazon/whisperjoin/provisionerSDK/devices/BasicPeripheralDevice;->mDeviceEventHandler:Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/events/EventHandler;

    return-void

    .line 76
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p2, "serializer must not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 72
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "connectionConfiguration can not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 69
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "deviceDetails can not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method static synthetic access$000(Lcom/amazon/whisperjoin/provisionerSDK/devices/BasicPeripheralDevice;)Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/events/EventHandler;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/amazon/whisperjoin/provisionerSDK/devices/BasicPeripheralDevice;->mDeviceEventHandler:Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/events/EventHandler;

    return-object p0
.end method

.method static synthetic access$100(Lcom/amazon/whisperjoin/provisionerSDK/devices/BasicPeripheralDevice;)Lcom/amazon/whisperjoin/provisionerSDK/devices/helpers/DeviceRadioTransportHelper;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/amazon/whisperjoin/provisionerSDK/devices/BasicPeripheralDevice;->mDeviceRadioTransportHelper:Lcom/amazon/whisperjoin/provisionerSDK/devices/helpers/DeviceRadioTransportHelper;

    return-object p0
.end method

.method static synthetic access$200(Lcom/amazon/whisperjoin/provisionerSDK/devices/BasicPeripheralDevice;)Lcom/amazon/whisperjoin/provisionerSDK/devices/security/TrustNegotiatorProvider;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/amazon/whisperjoin/provisionerSDK/devices/BasicPeripheralDevice;->mTrustNegotiatorProvider:Lcom/amazon/whisperjoin/provisionerSDK/devices/security/TrustNegotiatorProvider;

    return-object p0
.end method

.method static synthetic access$302(Lcom/amazon/whisperjoin/provisionerSDK/devices/BasicPeripheralDevice;Lcom/amazon/whisperjoin/common/sharedtypes/cryptography/EncryptionProvider;)Lcom/amazon/whisperjoin/common/sharedtypes/cryptography/EncryptionProvider;
    .locals 0

    .line 33
    iput-object p1, p0, Lcom/amazon/whisperjoin/provisionerSDK/devices/BasicPeripheralDevice;->mEncryptionProvider:Lcom/amazon/whisperjoin/common/sharedtypes/cryptography/EncryptionProvider;

    return-object p1
.end method

.method static synthetic access$400(Lcom/amazon/whisperjoin/provisionerSDK/devices/BasicPeripheralDevice;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 33
    invoke-direct {p0}, Lcom/amazon/whisperjoin/provisionerSDK/devices/BasicPeripheralDevice;->enableProvisionableNotifications()V

    return-void
.end method

.method private connectToPeripheral(Ljava/lang/String;Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/configuration/DeviceConnectionConfiguration;)Ljava/util/concurrent/Future;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/configuration/DeviceConnectionConfiguration;",
            ")",
            "Ljava/util/concurrent/Future<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 147
    iget-object v0, p0, Lcom/amazon/whisperjoin/provisionerSDK/devices/BasicPeripheralDevice;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/amazon/whisperjoin/provisionerSDK/devices/BasicPeripheralDevice$1;

    invoke-direct {v1, p0, p2, p1}, Lcom/amazon/whisperjoin/provisionerSDK/devices/BasicPeripheralDevice$1;-><init>(Lcom/amazon/whisperjoin/provisionerSDK/devices/BasicPeripheralDevice;Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/configuration/DeviceConnectionConfiguration;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object p1

    return-object p1
.end method

.method private enableProvisionableNotifications()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 189
    sget-object v0, Lcom/amazon/whisperjoin/provisionerSDK/devices/BasicPeripheralDevice;->TAG:Ljava/lang/String;

    const-string v1, "Enabling Notificaitons"

    invoke-static {v0, v1}, Lcom/amazon/whisperjoin/common/sharedtypes/utility/WJLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    sget-object v0, Lcom/amazon/whisperbridge/constants/Command;->GET_SUPPORTED_NOTIFICATIONS:Lcom/amazon/whisperbridge/constants/Command;

    new-instance v1, Lcom/amazon/whisperjoin/provisionerSDK/devices/BasicPeripheralDevice$3;

    invoke-direct {v1, p0}, Lcom/amazon/whisperjoin/provisionerSDK/devices/BasicPeripheralDevice$3;-><init>(Lcom/amazon/whisperjoin/provisionerSDK/devices/BasicPeripheralDevice;)V

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2, v1}, Lcom/amazon/whisperjoin/provisionerSDK/devices/BasicPeripheralDevice;->executeOperation(Lcom/amazon/whisperbridge/constants/Command;Ljava/lang/Object;Lcom/google/common/reflect/TypeToken;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/provisioning/ProvisionableEventTypeCollection;

    if-nez v0, :cond_0

    .line 193
    sget-object v0, Lcom/amazon/whisperjoin/provisionerSDK/devices/BasicPeripheralDevice;->TAG:Ljava/lang/String;

    const-string v1, "Device not configured to support notifications"

    invoke-static {v0, v1}, Lcom/amazon/whisperjoin/common/sharedtypes/utility/WJLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 196
    :cond_0
    new-instance v1, Lcom/amazon/whisperjoin/provisionerSDK/devices/ProvisionableEventManager;

    invoke-virtual {v0}, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/GenericHashSetCollection;->getSetCollection()Ljava/util/Collection;

    move-result-object v0

    iget-object v2, p0, Lcom/amazon/whisperjoin/provisionerSDK/devices/BasicPeripheralDevice;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    iget-object v3, p0, Lcom/amazon/whisperjoin/provisionerSDK/devices/BasicPeripheralDevice;->mDeviceEventHandler:Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/events/EventHandler;

    invoke-direct {v1, v0, p0, v2, v3}, Lcom/amazon/whisperjoin/provisionerSDK/devices/ProvisionableEventManager;-><init>(Ljava/util/Collection;Lcom/amazon/whisperjoin/common/sharedtypes/devices/interfaces/PeripheralDevice;Ljava/util/concurrent/ExecutorService;Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/events/EventHandler;)V

    iput-object v1, p0, Lcom/amazon/whisperjoin/provisionerSDK/devices/BasicPeripheralDevice;->mProvisionableEventManager:Lcom/amazon/whisperjoin/provisionerSDK/devices/ProvisionableEventManager;

    .line 197
    iget-object v0, p0, Lcom/amazon/whisperjoin/provisionerSDK/devices/BasicPeripheralDevice;->mDeviceRadioTransportHelper:Lcom/amazon/whisperjoin/provisionerSDK/devices/helpers/DeviceRadioTransportHelper;

    invoke-interface {v0, v1}, Lcom/amazon/whisperjoin/provisionerSDK/devices/helpers/DeviceRadioTransportHelper;->setEventNotificationCallback(Lcom/amazon/whisperbridge/Transport$ProvisionableEventNotificationCallback;)V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    .line 250
    iget-object v0, p0, Lcom/amazon/whisperjoin/provisionerSDK/devices/BasicPeripheralDevice;->mDeviceRadioTransportHelper:Lcom/amazon/whisperjoin/provisionerSDK/devices/helpers/DeviceRadioTransportHelper;

    invoke-interface {v0}, Lcom/amazon/whisperjoin/provisionerSDK/devices/helpers/DeviceRadioTransportHelper;->closeConnection()V

    return-void
.end method

.method public completeProvisioning()Ljava/util/concurrent/Future;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/Future<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 214
    iget-object v0, p0, Lcom/amazon/whisperjoin/provisionerSDK/devices/BasicPeripheralDevice;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/amazon/whisperjoin/provisionerSDK/devices/BasicPeripheralDevice$5;

    invoke-direct {v1, p0}, Lcom/amazon/whisperjoin/provisionerSDK/devices/BasicPeripheralDevice$5;-><init>(Lcom/amazon/whisperjoin/provisionerSDK/devices/BasicPeripheralDevice;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method public connectToPeripheral(Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/configuration/DeviceConnectionConfiguration;)Ljava/util/concurrent/Future;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/configuration/DeviceConnectionConfiguration;",
            ")",
            "Ljava/util/concurrent/Future<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 123
    invoke-direct {p0, v0, p1}, Lcom/amazon/whisperjoin/provisionerSDK/devices/BasicPeripheralDevice;->connectToPeripheral(Ljava/lang/String;Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/configuration/DeviceConnectionConfiguration;)Ljava/util/concurrent/Future;

    move-result-object p1

    return-object p1
.end method

.method public executeCommand(Lcom/amazon/whisperbridge/constants/Command;[B)[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 255
    iget-object v0, p0, Lcom/amazon/whisperjoin/provisionerSDK/devices/BasicPeripheralDevice;->mDeviceRadioTransportHelper:Lcom/amazon/whisperjoin/provisionerSDK/devices/helpers/DeviceRadioTransportHelper;

    invoke-interface {v0}, Lcom/amazon/whisperjoin/provisionerSDK/devices/helpers/DeviceRadioTransportHelper;->getCommandExecutor()Lcom/amazon/whisperjoin/provisionerSDK/devices/DeviceCommandExecutor;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/whisperjoin/provisionerSDK/devices/BasicPeripheralDevice;->mEncryptionProvider:Lcom/amazon/whisperjoin/common/sharedtypes/cryptography/EncryptionProvider;

    invoke-virtual {p0, v0, v1, p1, p2}, Lcom/amazon/whisperjoin/provisionerSDK/devices/BasicPeripheralDevice;->executeCommand(Lcom/amazon/whisperjoin/provisionerSDK/devices/DeviceCommandExecutor;Lcom/amazon/whisperjoin/common/sharedtypes/cryptography/EncryptionProvider;Lcom/amazon/whisperbridge/constants/Command;[B)[B

    move-result-object p1

    return-object p1
.end method

.method executeCommand(Lcom/amazon/whisperjoin/provisionerSDK/devices/DeviceCommandExecutor;Lcom/amazon/whisperjoin/common/sharedtypes/cryptography/EncryptionProvider;Lcom/amazon/whisperbridge/constants/Command;[B)[B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 279
    sget-object v0, Lcom/amazon/whisperjoin/provisionerSDK/devices/BasicPeripheralDevice;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Input Data for Command: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p4}, Lcom/amazon/whisperjoin/common/sharedtypes/utility/WJLog;->byteStruct(Ljava/lang/String;Ljava/lang/String;[B)V

    .line 281
    iget-object v0, p0, Lcom/amazon/whisperjoin/provisionerSDK/devices/BasicPeripheralDevice;->UNENCRYPTED_OPERATIONS:Ljava/util/Set;

    invoke-interface {v0, p3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 282
    invoke-interface {p1, p3, p4}, Lcom/amazon/whisperjoin/provisionerSDK/devices/DeviceCommandExecutor;->executeCommand(Lcom/amazon/whisperbridge/constants/Command;[B)[B

    move-result-object p1

    return-object p1

    :cond_0
    if-eqz p4, :cond_1

    .line 286
    invoke-interface {p2, p4}, Lcom/amazon/whisperjoin/common/sharedtypes/cryptography/EncryptionProvider;->encrypt([B)[B

    move-result-object p4

    .line 287
    sget-object v0, Lcom/amazon/whisperjoin/provisionerSDK/devices/BasicPeripheralDevice;->TAG:Ljava/lang/String;

    const-string v1, "Encrypted Input Data: "

    invoke-static {v0, v1, p4}, Lcom/amazon/whisperjoin/common/sharedtypes/utility/WJLog;->byteStruct(Ljava/lang/String;Ljava/lang/String;[B)V

    .line 288
    invoke-interface {p1, p3, p4}, Lcom/amazon/whisperjoin/provisionerSDK/devices/DeviceCommandExecutor;->executeCommand(Lcom/amazon/whisperbridge/constants/Command;[B)[B

    move-result-object p1

    goto :goto_0

    :cond_1
    const/4 p4, 0x0

    .line 290
    invoke-interface {p1, p3, p4}, Lcom/amazon/whisperjoin/provisionerSDK/devices/DeviceCommandExecutor;->executeCommand(Lcom/amazon/whisperbridge/constants/Command;[B)[B

    move-result-object p1

    .line 293
    :goto_0
    sget-object p4, Lcom/amazon/whisperjoin/provisionerSDK/devices/BasicPeripheralDevice;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Encrypted Output Data for Command: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p4, v0, p1}, Lcom/amazon/whisperjoin/common/sharedtypes/utility/WJLog;->byteStruct(Ljava/lang/String;Ljava/lang/String;[B)V

    if-eqz p1, :cond_2

    .line 296
    array-length p4, p1

    if-lez p4, :cond_2

    .line 297
    invoke-interface {p2, p1}, Lcom/amazon/whisperjoin/common/sharedtypes/cryptography/EncryptionProvider;->decrypt([B)[B

    move-result-object p1

    .line 298
    sget-object p2, Lcom/amazon/whisperjoin/provisionerSDK/devices/BasicPeripheralDevice;->TAG:Ljava/lang/String;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Decrypted Output Data for Command: "

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3, p1}, Lcom/amazon/whisperjoin/common/sharedtypes/utility/WJLog;->byteStruct(Ljava/lang/String;Ljava/lang/String;[B)V

    :cond_2
    return-object p1
.end method

.method public executeOperation(Lcom/amazon/whisperbridge/constants/Command;Ljava/lang/Object;Lcom/google/common/reflect/TypeToken;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    .line 267
    iget-object v1, p0, Lcom/amazon/whisperjoin/provisionerSDK/devices/BasicPeripheralDevice;->mSerializer:Lcom/amazon/whisperjoin/common/sharedtypes/utility/Serializer;

    invoke-interface {v1, p2}, Lcom/amazon/whisperjoin/common/sharedtypes/utility/Serializer;->serialize(Ljava/lang/Object;)[B

    move-result-object p2

    goto :goto_0

    :cond_0
    move-object p2, v0

    .line 269
    :goto_0
    invoke-virtual {p0, p1, p2}, Lcom/amazon/whisperjoin/provisionerSDK/devices/BasicPeripheralDevice;->executeCommand(Lcom/amazon/whisperbridge/constants/Command;[B)[B

    move-result-object p1

    if-eqz p3, :cond_1

    .line 271
    iget-object p2, p0, Lcom/amazon/whisperjoin/provisionerSDK/devices/BasicPeripheralDevice;->mSerializer:Lcom/amazon/whisperjoin/common/sharedtypes/utility/Serializer;

    invoke-interface {p2, p1, p3}, Lcom/amazon/whisperjoin/common/sharedtypes/utility/Serializer;->deserialize([BLcom/google/common/reflect/TypeToken;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_1
    return-object v0
.end method

.method public getDeviceDetails()Ljava/util/concurrent/Future;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/Future<",
            "Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/provisioning/DeviceDetailsProtoData;",
            ">;"
        }
    .end annotation

    .line 227
    iget-object v0, p0, Lcom/amazon/whisperjoin/provisionerSDK/devices/BasicPeripheralDevice;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/amazon/whisperjoin/provisionerSDK/devices/BasicPeripheralDevice$6;

    invoke-direct {v1, p0}, Lcom/amazon/whisperjoin/provisionerSDK/devices/BasicPeripheralDevice$6;-><init>(Lcom/amazon/whisperjoin/provisionerSDK/devices/BasicPeripheralDevice;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method public getPeripheralDeviceDetails()Lcom/amazon/whisperjoin/common/sharedtypes/devices/WhisperJoinPeripheralDeviceDetails;
    .locals 1

    .line 99
    iget-object v0, p0, Lcom/amazon/whisperjoin/provisionerSDK/devices/BasicPeripheralDevice;->mDeviceDetails:Lcom/amazon/whisperjoin/common/sharedtypes/devices/WhisperJoinPeripheralDeviceDetails;

    return-object v0
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

    .line 167
    iget-object v0, p0, Lcom/amazon/whisperjoin/provisionerSDK/devices/BasicPeripheralDevice;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/amazon/whisperjoin/provisionerSDK/devices/BasicPeripheralDevice$2;

    invoke-direct {v1, p0}, Lcom/amazon/whisperjoin/provisionerSDK/devices/BasicPeripheralDevice$2;-><init>(Lcom/amazon/whisperjoin/provisionerSDK/devices/BasicPeripheralDevice;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method
