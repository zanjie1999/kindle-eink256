.class public abstract Lcom/audible/hushpuppy/extensions/ExtensionsAbstractFactory;
.super Ljava/lang/Object;
.source "ExtensionsAbstractFactory.java"


# static fields
.field public static final AUDIBLE_KINDLE_PACKAGE_NAME:Ljava/lang/String; = "com.audible.application.kindle"


# direct methods
.method protected constructor <init>(Landroid/content/Context;Lde/greenrobot/event/EventBus;)V
    .locals 0

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract provideAudibleService(Landroid/content/Context;Lcom/amazon/kindle/krx/IKindleReaderSDK;Lde/greenrobot/event/EventBus;Lcom/audible/hushpuppy/model/read/IHushpuppyModel;Lcom/audible/hushpuppy/service/db/ILegacyHushpuppyStorage;Lcom/audible/hushpuppy/service/db/IHushpuppyStorage;Lcom/audible/hushpuppy/service/network/common/ISampleSyncFileDownloadClient;Lcom/audible/hushpuppy/common/debug/IMobileWeblabHandler;Lcom/audible/hushpuppy/common/debug/AudibleDebugHelper;)Lcom/audible/hushpuppy/controller/audible/service/IAudibleService;
.end method

.method public abstract provideAudioDownloadHandler(Lcom/amazon/kindle/krx/IKindleReaderSDK;Lcom/audible/hushpuppy/model/read/IHushpuppyModel;Lde/greenrobot/event/EventBus;Lcom/audible/hushpuppy/common/debug/IMobileWeblabHandler;Lcom/audible/hushpuppy/common/debug/AudibleDebugHelper;)Lcom/amazon/kindle/krx/audio/IAudioDownloadHandler;
.end method

.method public abstract provideAudiobookSwitcher(Lcom/amazon/kindle/krx/IKindleReaderSDK;Lcom/audible/hushpuppy/model/read/IHushpuppyModel;Lcom/audible/hushpuppy/controller/audible/service/IAudibleService;)Lcom/audible/hushpuppy/extensions/switchto/AbstractAudiobookSwitcher;
.end method

.method public abstract provideAutoDownloadSetting(Lcom/amazon/kindle/krx/IKindleReaderSDK;)Lcom/audible/hushpuppy/extensions/autodownload/AbstractAutoDownloadSetting;
.end method

.method public abstract provideOwnershipManager(Lcom/amazon/kindle/krx/IKindleReaderSDK;)Lcom/audible/hushpuppy/controller/audible/library/manager/util/owner/IOwnershipManager;
.end method

.method public abstract providePlatformSetting(Lcom/amazon/kindle/krx/IKindleReaderSDK;)Lcom/audible/hushpuppy/extensions/platform/AbstractPlatformSetting;
.end method

.method public abstract provideUserRegistrationHandler(Lcom/amazon/kindle/krx/IKindleReaderSDK;Lde/greenrobot/event/EventBus;)Lcom/audible/hushpuppy/extensions/registration/IUserRegistrationHandler;
.end method

.method public abstract providedRestrictionHandler(Landroid/content/Context;Lcom/amazon/kindle/krx/restriction/IRestrictionHandler;)Lcom/audible/hushpuppy/common/permissions/IHushpuppyRestrictionHandler;
.end method
