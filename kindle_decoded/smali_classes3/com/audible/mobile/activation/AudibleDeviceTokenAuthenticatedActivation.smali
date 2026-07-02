.class public Lcom/audible/mobile/activation/AudibleDeviceTokenAuthenticatedActivation;
.super Ljava/lang/Object;
.source "AudibleDeviceTokenAuthenticatedActivation.java"

# interfaces
.implements Lcom/audible/mobile/activation/AudibleDeviceActivation;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/audible/mobile/activation/AudibleDeviceTokenAuthenticatedActivation$ActivationRequestHandler;
    }
.end annotation


# instance fields
.field private final activationDataRepository:Lcom/audible/mobile/activation/ActivationDataRepository;

.field private final controller:Lcom/audible/mobile/activation/network/ActivationController;

.field private final deviceInfoProvider:Lcom/audible/mobile/activation/DeviceInfoProvider;

.field private final requestFactory:Lcom/audible/mobile/activation/network/factory/ActivationRequestFactory;


# direct methods
.method protected constructor <init>(Landroid/content/Context;Lcom/audible/mobile/activation/DeviceInfoProvider;Lcom/audible/mobile/activation/network/ActivationController;Lcom/audible/mobile/activation/ActivationDataRepository;)V
    .locals 0

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput-object p3, p0, Lcom/audible/mobile/activation/AudibleDeviceTokenAuthenticatedActivation;->controller:Lcom/audible/mobile/activation/network/ActivationController;

    .line 54
    new-instance p3, Lcom/audible/mobile/activation/network/factory/ActivationRequestFactory;

    invoke-direct {p3, p1}, Lcom/audible/mobile/activation/network/factory/ActivationRequestFactory;-><init>(Landroid/content/Context;)V

    iput-object p3, p0, Lcom/audible/mobile/activation/AudibleDeviceTokenAuthenticatedActivation;->requestFactory:Lcom/audible/mobile/activation/network/factory/ActivationRequestFactory;

    .line 55
    iput-object p4, p0, Lcom/audible/mobile/activation/AudibleDeviceTokenAuthenticatedActivation;->activationDataRepository:Lcom/audible/mobile/activation/ActivationDataRepository;

    .line 56
    iput-object p2, p0, Lcom/audible/mobile/activation/AudibleDeviceTokenAuthenticatedActivation;->deviceInfoProvider:Lcom/audible/mobile/activation/DeviceInfoProvider;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/audible/mobile/activation/DeviceInfoProvider;Lcom/audible/mobile/downloader/factory/DownloaderFactory;Lcom/audible/mobile/activation/ActivationDataRepository;)V
    .locals 1

    .line 39
    new-instance v0, Lcom/audible/mobile/activation/network/ActivationController;

    invoke-direct {v0, p1, p3}, Lcom/audible/mobile/activation/network/ActivationController;-><init>(Landroid/content/Context;Lcom/audible/mobile/downloader/factory/DownloaderFactory;)V

    invoke-direct {p0, p1, p2, v0, p4}, Lcom/audible/mobile/activation/AudibleDeviceTokenAuthenticatedActivation;-><init>(Landroid/content/Context;Lcom/audible/mobile/activation/DeviceInfoProvider;Lcom/audible/mobile/activation/network/ActivationController;Lcom/audible/mobile/activation/ActivationDataRepository;)V

    return-void
.end method

.method private processRequest(Lcom/audible/mobile/activation/ActivationListener;Lcom/audible/mobile/activation/network/factory/ActivationRequestType;)V
    .locals 4

    .line 97
    new-instance v0, Lcom/audible/mobile/activation/network/factory/ActivationRequestData;

    iget-object v1, p0, Lcom/audible/mobile/activation/AudibleDeviceTokenAuthenticatedActivation;->deviceInfoProvider:Lcom/audible/mobile/activation/DeviceInfoProvider;

    invoke-direct {v0, p2, v1}, Lcom/audible/mobile/activation/network/factory/ActivationRequestData;-><init>(Lcom/audible/mobile/activation/network/factory/ActivationRequestType;Lcom/audible/mobile/activation/DeviceInfoProvider;)V

    .line 98
    iget-object p2, p0, Lcom/audible/mobile/activation/AudibleDeviceTokenAuthenticatedActivation;->controller:Lcom/audible/mobile/activation/network/ActivationController;

    iget-object v1, p0, Lcom/audible/mobile/activation/AudibleDeviceTokenAuthenticatedActivation;->requestFactory:Lcom/audible/mobile/activation/network/factory/ActivationRequestFactory;

    new-instance v2, Lcom/audible/mobile/activation/AudibleDeviceTokenAuthenticatedActivation$ActivationRequestHandler;

    iget-object v3, p0, Lcom/audible/mobile/activation/AudibleDeviceTokenAuthenticatedActivation;->activationDataRepository:Lcom/audible/mobile/activation/ActivationDataRepository;

    invoke-direct {v2, p1, v3}, Lcom/audible/mobile/activation/AudibleDeviceTokenAuthenticatedActivation$ActivationRequestHandler;-><init>(Lcom/audible/mobile/activation/ActivationListener;Lcom/audible/mobile/activation/ActivationDataRepository;)V

    invoke-virtual {v1, v2, v0}, Lcom/audible/mobile/downloader/factory/AbstractDownloadRequestFactory;->newDownloadRequest(Lcom/audible/mobile/downloader/interfaces/DownloadHandler;Lcom/audible/mobile/downloader/factory/DownloadRequestData;)Lcom/audible/mobile/downloader/interfaces/DownloadRequest;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/audible/mobile/downloader/BaseDownloadController;->addRequest(Lcom/audible/mobile/downloader/interfaces/DownloadRequest;)V

    return-void
.end method


# virtual methods
.method public activate(Lcom/audible/mobile/activation/ActivationListener;)V
    .locals 1

    .line 62
    sget-object v0, Lcom/audible/mobile/activation/network/factory/ActivationRequestType;->Activate:Lcom/audible/mobile/activation/network/factory/ActivationRequestType;

    invoke-direct {p0, p1, v0}, Lcom/audible/mobile/activation/AudibleDeviceTokenAuthenticatedActivation;->processRequest(Lcom/audible/mobile/activation/ActivationListener;Lcom/audible/mobile/activation/network/factory/ActivationRequestType;)V

    return-void
.end method

.method public isActivated()Z
    .locals 1

    .line 74
    iget-object v0, p0, Lcom/audible/mobile/activation/AudibleDeviceTokenAuthenticatedActivation;->activationDataRepository:Lcom/audible/mobile/activation/ActivationDataRepository;

    invoke-interface {v0}, Lcom/audible/mobile/activation/ActivationDataRepository;->isActivated()Z

    move-result v0

    return v0
.end method

.method public persistActivationData([B)Z
    .locals 1

    .line 86
    iget-object v0, p0, Lcom/audible/mobile/activation/AudibleDeviceTokenAuthenticatedActivation;->activationDataRepository:Lcom/audible/mobile/activation/ActivationDataRepository;

    invoke-interface {v0, p1}, Lcom/audible/mobile/activation/ActivationDataRepository;->persistActivationData([B)Z

    move-result p1

    return p1
.end method

.method public queryActivationData()[B
    .locals 1

    .line 80
    iget-object v0, p0, Lcom/audible/mobile/activation/AudibleDeviceTokenAuthenticatedActivation;->activationDataRepository:Lcom/audible/mobile/activation/ActivationDataRepository;

    invoke-interface {v0}, Lcom/audible/mobile/activation/ActivationDataRepository;->queryActivationData()[B

    move-result-object v0

    return-object v0
.end method
