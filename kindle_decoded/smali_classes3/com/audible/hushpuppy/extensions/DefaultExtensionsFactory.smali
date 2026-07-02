.class public Lcom/audible/hushpuppy/extensions/DefaultExtensionsFactory;
.super Lcom/audible/hushpuppy/extensions/ExtensionsAbstractFactory;
.source "DefaultExtensionsFactory.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Lde/greenrobot/event/EventBus;)V
    .locals 0

    .line 41
    invoke-direct {p0, p1, p2}, Lcom/audible/hushpuppy/extensions/ExtensionsAbstractFactory;-><init>(Landroid/content/Context;Lde/greenrobot/event/EventBus;)V

    return-void
.end method


# virtual methods
.method public final provideAudibleService(Landroid/content/Context;Lcom/amazon/kindle/krx/IKindleReaderSDK;Lde/greenrobot/event/EventBus;Lcom/audible/hushpuppy/model/read/IHushpuppyModel;Lcom/audible/hushpuppy/service/db/ILegacyHushpuppyStorage;Lcom/audible/hushpuppy/service/db/IHushpuppyStorage;Lcom/audible/hushpuppy/service/network/common/ISampleSyncFileDownloadClient;Lcom/audible/hushpuppy/common/debug/IMobileWeblabHandler;Lcom/audible/hushpuppy/common/debug/AudibleDebugHelper;)Lcom/audible/hushpuppy/controller/audible/service/IAudibleService;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public final provideAudioDownloadHandler(Lcom/amazon/kindle/krx/IKindleReaderSDK;Lcom/audible/hushpuppy/model/read/IHushpuppyModel;Lde/greenrobot/event/EventBus;Lcom/audible/hushpuppy/common/debug/IMobileWeblabHandler;Lcom/audible/hushpuppy/common/debug/AudibleDebugHelper;)Lcom/amazon/kindle/krx/audio/IAudioDownloadHandler;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public final provideAudiobookSwitcher(Lcom/amazon/kindle/krx/IKindleReaderSDK;Lcom/audible/hushpuppy/model/read/IHushpuppyModel;Lcom/audible/hushpuppy/controller/audible/service/IAudibleService;)Lcom/audible/hushpuppy/extensions/switchto/AbstractAudiobookSwitcher;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public final provideAutoDownloadSetting(Lcom/amazon/kindle/krx/IKindleReaderSDK;)Lcom/audible/hushpuppy/extensions/autodownload/AbstractAutoDownloadSetting;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public final provideOwnershipManager(Lcom/amazon/kindle/krx/IKindleReaderSDK;)Lcom/audible/hushpuppy/controller/audible/library/manager/util/owner/IOwnershipManager;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public final providePlatformSetting(Lcom/amazon/kindle/krx/IKindleReaderSDK;)Lcom/audible/hushpuppy/extensions/platform/AbstractPlatformSetting;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public final provideUserRegistrationHandler(Lcom/amazon/kindle/krx/IKindleReaderSDK;Lde/greenrobot/event/EventBus;)Lcom/audible/hushpuppy/extensions/registration/IUserRegistrationHandler;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public final providedRestrictionHandler(Landroid/content/Context;Lcom/amazon/kindle/krx/restriction/IRestrictionHandler;)Lcom/audible/hushpuppy/common/permissions/IHushpuppyRestrictionHandler;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method
