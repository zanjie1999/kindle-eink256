.class public final Lcom/audible/mobile/identity/MAPDeviceDataRepositoryImpl;
.super Ljava/lang/Object;
.source "MAPDeviceDataRepositoryImpl.java"

# interfaces
.implements Lcom/audible/mobile/identity/DeviceDataRepository;


# instance fields
.field private final deviceDataStore:Lcom/amazon/identity/auth/device/api/DeviceDataStore;

.field private final logger:Lorg/slf4j/Logger;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    new-instance v0, Lcom/audible/mobile/logging/PIIAwareLoggerDelegate;

    const-class v1, Lcom/audible/mobile/identity/MAPDeviceDataRepositoryImpl;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/audible/mobile/logging/PIIAwareLoggerDelegate;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/audible/mobile/identity/MAPDeviceDataRepositoryImpl;->logger:Lorg/slf4j/Logger;

    .line 28
    invoke-static {p1}, Lcom/amazon/identity/auth/device/api/DeviceDataStore;->getInstance(Landroid/content/Context;)Lcom/amazon/identity/auth/device/api/DeviceDataStore;

    move-result-object p1

    iput-object p1, p0, Lcom/audible/mobile/identity/MAPDeviceDataRepositoryImpl;->deviceDataStore:Lcom/amazon/identity/auth/device/api/DeviceDataStore;

    return-void
.end method


# virtual methods
.method public getValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 36
    :try_start_0
    iget-object v0, p0, Lcom/audible/mobile/identity/MAPDeviceDataRepositoryImpl;->deviceDataStore:Lcom/amazon/identity/auth/device/api/DeviceDataStore;

    invoke-virtual {v0, p1}, Lcom/amazon/identity/auth/device/api/DeviceDataStore;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Lcom/amazon/identity/auth/device/api/DeviceDataStoreException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception v0

    .line 38
    iget-object v1, p0, Lcom/audible/mobile/identity/MAPDeviceDataRepositoryImpl;->logger:Lorg/slf4j/Logger;

    sget-object v2, Lcom/audible/mobile/logging/PIIAwareLoggerDelegate;->PII_MARKER:Lorg/slf4j/Marker;

    const-string v3, "Exception retrieving attribute {} with stacktrace {}"

    invoke-interface {v1, v2, v3, p1, v0}, Lorg/slf4j/Logger;->error(Lorg/slf4j/Marker;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 p1, 0x0

    return-object p1
.end method
