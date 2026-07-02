.class final Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/AutoDiscoveryPresenter$DeviceDiscoveryIdentity;
.super Ljava/lang/Object;
.source "AutoDiscoveryPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/AutoDiscoveryPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "DeviceDiscoveryIdentity"
.end annotation


# instance fields
.field private final authenticatedEcdhe:Z

.field private final canProceed:Z

.field private final deviceIdentity:Ljava/lang/String;

.field private final productIndex:Ljava/lang/String;

.field private final unauthenticatedEcdhe:Z


# direct methods
.method private constructor <init>(Lcom/amazon/whisperjoin/common/sharedtypes/devices/WhisperJoinPeripheralDeviceDetails;Z)V
    .locals 1

    .line 497
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 498
    invoke-virtual {p1}, Lcom/amazon/whisperjoin/common/sharedtypes/devices/WhisperJoinPeripheralDeviceDetails;->getProductIndex()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/AutoDiscoveryPresenter$DeviceDiscoveryIdentity;->productIndex:Ljava/lang/String;

    .line 499
    invoke-virtual {p1}, Lcom/amazon/whisperjoin/common/sharedtypes/devices/WhisperJoinPeripheralDeviceDetails;->getDeviceIdentity()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/AutoDiscoveryPresenter$DeviceDiscoveryIdentity;->deviceIdentity:Ljava/lang/String;

    .line 500
    invoke-virtual {p1}, Lcom/amazon/whisperjoin/common/sharedtypes/devices/WhisperJoinPeripheralDeviceDetails;->getSupportsUnauthenticatedEcdhe()Z

    move-result v0

    iput-boolean v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/AutoDiscoveryPresenter$DeviceDiscoveryIdentity;->unauthenticatedEcdhe:Z

    .line 501
    invoke-virtual {p1}, Lcom/amazon/whisperjoin/common/sharedtypes/devices/WhisperJoinPeripheralDeviceDetails;->getSupportsAuthenticatedEcdhe()Z

    move-result p1

    iput-boolean p1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/AutoDiscoveryPresenter$DeviceDiscoveryIdentity;->authenticatedEcdhe:Z

    .line 502
    iput-boolean p2, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/AutoDiscoveryPresenter$DeviceDiscoveryIdentity;->canProceed:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/amazon/whisperjoin/common/sharedtypes/devices/WhisperJoinPeripheralDeviceDetails;ZLcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/AutoDiscoveryPresenter$1;)V
    .locals 0

    .line 488
    invoke-direct {p0, p1, p2}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/AutoDiscoveryPresenter$DeviceDiscoveryIdentity;-><init>(Lcom/amazon/whisperjoin/common/sharedtypes/devices/WhisperJoinPeripheralDeviceDetails;Z)V

    return-void
.end method

.method static synthetic access$1000(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/AutoDiscoveryPresenter$DeviceDiscoveryIdentity;)Z
    .locals 0

    .line 488
    iget-boolean p0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/AutoDiscoveryPresenter$DeviceDiscoveryIdentity;->authenticatedEcdhe:Z

    return p0
.end method

.method static synthetic access$1100(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/AutoDiscoveryPresenter$DeviceDiscoveryIdentity;)Z
    .locals 0

    .line 488
    iget-boolean p0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/AutoDiscoveryPresenter$DeviceDiscoveryIdentity;->unauthenticatedEcdhe:Z

    return p0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 507
    const-class v1, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/AutoDiscoveryPresenter$DeviceDiscoveryIdentity;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_0

    goto :goto_0

    .line 510
    :cond_0
    check-cast p1, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/AutoDiscoveryPresenter$DeviceDiscoveryIdentity;

    .line 511
    iget-object v1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/AutoDiscoveryPresenter$DeviceDiscoveryIdentity;->productIndex:Ljava/lang/String;

    iget-object v2, p1, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/AutoDiscoveryPresenter$DeviceDiscoveryIdentity;->productIndex:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/AutoDiscoveryPresenter$DeviceDiscoveryIdentity;->deviceIdentity:Ljava/lang/String;

    iget-object v2, p1, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/AutoDiscoveryPresenter$DeviceDiscoveryIdentity;->deviceIdentity:Ljava/lang/String;

    .line 512
    invoke-static {v1, v2}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/AutoDiscoveryPresenter$DeviceDiscoveryIdentity;->unauthenticatedEcdhe:Z

    .line 513
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iget-boolean v2, p1, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/AutoDiscoveryPresenter$DeviceDiscoveryIdentity;->unauthenticatedEcdhe:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/AutoDiscoveryPresenter$DeviceDiscoveryIdentity;->authenticatedEcdhe:Z

    .line 514
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iget-boolean v2, p1, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/AutoDiscoveryPresenter$DeviceDiscoveryIdentity;->authenticatedEcdhe:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/AutoDiscoveryPresenter$DeviceDiscoveryIdentity;->canProceed:Z

    .line 515
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iget-boolean p1, p1, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/AutoDiscoveryPresenter$DeviceDiscoveryIdentity;->canProceed:Z

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    :cond_1
    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    .line 520
    iget-object v1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/AutoDiscoveryPresenter$DeviceDiscoveryIdentity;->productIndex:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/AutoDiscoveryPresenter$DeviceDiscoveryIdentity;->deviceIdentity:Ljava/lang/String;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-boolean v1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/AutoDiscoveryPresenter$DeviceDiscoveryIdentity;->unauthenticatedEcdhe:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-boolean v1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/AutoDiscoveryPresenter$DeviceDiscoveryIdentity;->authenticatedEcdhe:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-boolean v1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/AutoDiscoveryPresenter$DeviceDiscoveryIdentity;->canProceed:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/google/common/base/Objects;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
