.class public final Lcom/audible/hushpuppy/plugin/ApplicationPlugin_MembersInjector;
.super Ljava/lang/Object;
.source "ApplicationPlugin_MembersInjector.java"

# interfaces
.implements Ldagger/MembersInjector;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/MembersInjector<",
        "Lcom/audible/hushpuppy/plugin/ApplicationPlugin;",
        ">;"
    }
.end annotation


# instance fields
.field private final abstractPlatformSettingProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/audible/hushpuppy/extensions/platform/AbstractPlatformSetting;",
            ">;"
        }
    .end annotation
.end field

.field private final applicationActivityLifeCycleControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/audible/hushpuppy/controller/ApplicationActivityLifeCycleController;",
            ">;"
        }
    .end annotation
.end field

.field private final audibleServiceProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/audible/hushpuppy/controller/audible/service/IAudibleService;",
            ">;"
        }
    .end annotation
.end field

.field private final chapterControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/audible/hushpuppy/controller/ChapterController;",
            ">;"
        }
    .end annotation
.end field

.field private final endpointFactoryProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/audible/pfm/endpoint/IEndpointFactory;",
            ">;"
        }
    .end annotation
.end field

.field private final hushpuppyStorageProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/audible/hushpuppy/service/db/LegacyHushpuppyStorage;",
            ">;"
        }
    .end annotation
.end field

.field private final mobileWeblabHandlerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/audible/hushpuppy/common/debug/IMobileWeblabHandler;",
            ">;"
        }
    .end annotation
.end field

.field private final ownershipManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/audible/hushpuppy/controller/audible/library/manager/util/owner/IOwnershipManager;",
            ">;"
        }
    .end annotation
.end field

.field private final playbackMetricsLoggerControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/audible/hushpuppy/controller/PlaybackMetricsLoggerController;",
            ">;"
        }
    .end annotation
.end field

.field private final readerActivityLifecycleControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/audible/hushpuppy/controller/ReaderActivityLifecycleController;",
            ">;"
        }
    .end annotation
.end field

.field private final readerModeChangeListenerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/audible/hushpuppy/controller/ReaderModeChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field private final readerNavigationControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/audible/hushpuppy/controller/ReaderNavigationController;",
            ">;"
        }
    .end annotation
.end field

.field private final samplePlaybackControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/audible/hushpuppy/controller/SamplePlaybackController;",
            ">;"
        }
    .end annotation
.end field

.field private final sharedPreferencesProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/audible/mobile/preferences/PreferenceStore<",
            "Lcom/audible/hushpuppy/common/debug/SharedPreferenceKey;",
            ">;>;"
        }
    .end annotation
.end field

.field private final userRegistrationHandlerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/audible/hushpuppy/extensions/registration/IUserRegistrationHandler;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static injectAbstractPlatformSetting(Lcom/audible/hushpuppy/plugin/ApplicationPlugin;Lcom/audible/hushpuppy/extensions/platform/AbstractPlatformSetting;)V
    .locals 0

    .line 196
    iput-object p1, p0, Lcom/audible/hushpuppy/plugin/ApplicationPlugin;->abstractPlatformSetting:Lcom/audible/hushpuppy/extensions/platform/AbstractPlatformSetting;

    return-void
.end method

.method public static injectApplicationActivityLifeCycleController(Lcom/audible/hushpuppy/plugin/ApplicationPlugin;Lcom/audible/hushpuppy/controller/ApplicationActivityLifeCycleController;)V
    .locals 0

    .line 176
    iput-object p1, p0, Lcom/audible/hushpuppy/plugin/ApplicationPlugin;->applicationActivityLifeCycleController:Lcom/audible/hushpuppy/controller/ApplicationActivityLifeCycleController;

    return-void
.end method

.method public static injectAudibleService(Lcom/audible/hushpuppy/plugin/ApplicationPlugin;Lcom/audible/hushpuppy/controller/audible/service/IAudibleService;)V
    .locals 0

    .line 201
    iput-object p1, p0, Lcom/audible/hushpuppy/plugin/ApplicationPlugin;->audibleService:Lcom/audible/hushpuppy/controller/audible/service/IAudibleService;

    return-void
.end method

.method public static injectChapterController(Lcom/audible/hushpuppy/plugin/ApplicationPlugin;Lcom/audible/hushpuppy/controller/ChapterController;)V
    .locals 0

    .line 181
    iput-object p1, p0, Lcom/audible/hushpuppy/plugin/ApplicationPlugin;->chapterController:Lcom/audible/hushpuppy/controller/ChapterController;

    return-void
.end method

.method public static injectEndpointFactory(Lcom/audible/hushpuppy/plugin/ApplicationPlugin;Lcom/audible/pfm/endpoint/IEndpointFactory;)V
    .locals 0

    .line 149
    iput-object p1, p0, Lcom/audible/hushpuppy/plugin/ApplicationPlugin;->endpointFactory:Lcom/audible/pfm/endpoint/IEndpointFactory;

    return-void
.end method

.method public static injectHushpuppyStorage(Lcom/audible/hushpuppy/plugin/ApplicationPlugin;Lcom/audible/hushpuppy/service/db/LegacyHushpuppyStorage;)V
    .locals 0

    .line 216
    iput-object p1, p0, Lcom/audible/hushpuppy/plugin/ApplicationPlugin;->hushpuppyStorage:Lcom/audible/hushpuppy/service/db/LegacyHushpuppyStorage;

    return-void
.end method

.method public static injectMobileWeblabHandler(Lcom/audible/hushpuppy/plugin/ApplicationPlugin;Lcom/audible/hushpuppy/common/debug/IMobileWeblabHandler;)V
    .locals 0

    .line 211
    iput-object p1, p0, Lcom/audible/hushpuppy/plugin/ApplicationPlugin;->mobileWeblabHandler:Lcom/audible/hushpuppy/common/debug/IMobileWeblabHandler;

    return-void
.end method

.method public static injectOwnershipManager(Lcom/audible/hushpuppy/plugin/ApplicationPlugin;Lcom/audible/hushpuppy/controller/audible/library/manager/util/owner/IOwnershipManager;)V
    .locals 0

    .line 191
    iput-object p1, p0, Lcom/audible/hushpuppy/plugin/ApplicationPlugin;->ownershipManager:Lcom/audible/hushpuppy/controller/audible/library/manager/util/owner/IOwnershipManager;

    return-void
.end method

.method public static injectPlaybackMetricsLoggerController(Lcom/audible/hushpuppy/plugin/ApplicationPlugin;Lcom/audible/hushpuppy/controller/PlaybackMetricsLoggerController;)V
    .locals 0

    .line 170
    iput-object p1, p0, Lcom/audible/hushpuppy/plugin/ApplicationPlugin;->playbackMetricsLoggerController:Lcom/audible/hushpuppy/controller/PlaybackMetricsLoggerController;

    return-void
.end method

.method public static injectReaderActivityLifecycleController(Lcom/audible/hushpuppy/plugin/ApplicationPlugin;Lcom/audible/hushpuppy/controller/ReaderActivityLifecycleController;)V
    .locals 0

    .line 165
    iput-object p1, p0, Lcom/audible/hushpuppy/plugin/ApplicationPlugin;->readerActivityLifecycleController:Lcom/audible/hushpuppy/controller/ReaderActivityLifecycleController;

    return-void
.end method

.method public static injectReaderModeChangeListener(Lcom/audible/hushpuppy/plugin/ApplicationPlugin;Lcom/audible/hushpuppy/controller/ReaderModeChangeListener;)V
    .locals 0

    .line 186
    iput-object p1, p0, Lcom/audible/hushpuppy/plugin/ApplicationPlugin;->readerModeChangeListener:Lcom/audible/hushpuppy/controller/ReaderModeChangeListener;

    return-void
.end method

.method public static injectReaderNavigationController(Lcom/audible/hushpuppy/plugin/ApplicationPlugin;Lcom/audible/hushpuppy/controller/ReaderNavigationController;)V
    .locals 0

    .line 154
    iput-object p1, p0, Lcom/audible/hushpuppy/plugin/ApplicationPlugin;->readerNavigationController:Lcom/audible/hushpuppy/controller/ReaderNavigationController;

    return-void
.end method

.method public static injectSamplePlaybackController(Lcom/audible/hushpuppy/plugin/ApplicationPlugin;Lcom/audible/hushpuppy/controller/SamplePlaybackController;)V
    .locals 0

    .line 159
    iput-object p1, p0, Lcom/audible/hushpuppy/plugin/ApplicationPlugin;->samplePlaybackController:Lcom/audible/hushpuppy/controller/SamplePlaybackController;

    return-void
.end method

.method public static injectSharedPreferences(Lcom/audible/hushpuppy/plugin/ApplicationPlugin;Lcom/audible/mobile/preferences/PreferenceStore;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/audible/hushpuppy/plugin/ApplicationPlugin;",
            "Lcom/audible/mobile/preferences/PreferenceStore<",
            "Lcom/audible/hushpuppy/common/debug/SharedPreferenceKey;",
            ">;)V"
        }
    .end annotation

    .line 221
    iput-object p1, p0, Lcom/audible/hushpuppy/plugin/ApplicationPlugin;->sharedPreferences:Lcom/audible/mobile/preferences/PreferenceStore;

    return-void
.end method

.method public static injectUserRegistrationHandler(Lcom/audible/hushpuppy/plugin/ApplicationPlugin;Lcom/audible/hushpuppy/extensions/registration/IUserRegistrationHandler;)V
    .locals 0

    .line 206
    iput-object p1, p0, Lcom/audible/hushpuppy/plugin/ApplicationPlugin;->userRegistrationHandler:Lcom/audible/hushpuppy/extensions/registration/IUserRegistrationHandler;

    return-void
.end method
