.class public final Lcom/audible/hushpuppy/view/player/provider/LibraryPersistentPlayerProvider_MembersInjector;
.super Ljava/lang/Object;
.source "LibraryPersistentPlayerProvider_MembersInjector.java"

# interfaces
.implements Ldagger/MembersInjector;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/MembersInjector<",
        "Lcom/audible/hushpuppy/view/player/provider/LibraryPersistentPlayerProvider;",
        ">;"
    }
.end annotation


# instance fields
.field private final audibleDebugHelperProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/audible/hushpuppy/common/debug/AudibleDebugHelper;",
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

.field private final eventBusProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lde/greenrobot/event/EventBus;",
            ">;"
        }
    .end annotation
.end field

.field private final hushpuppyModelProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/audible/hushpuppy/model/read/IHushpuppyModel;",
            ">;"
        }
    .end annotation
.end field

.field private final kindleReaderSdkProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/amazon/kindle/krx/IKindleReaderSDK;",
            ">;"
        }
    .end annotation
.end field

.field private final platformSettingProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/audible/hushpuppy/extensions/platform/AbstractPlatformSetting;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static injectAudibleDebugHelper(Lcom/audible/hushpuppy/view/player/provider/LibraryPersistentPlayerProvider;Lcom/audible/hushpuppy/common/debug/AudibleDebugHelper;)V
    .locals 0

    .line 94
    iput-object p1, p0, Lcom/audible/hushpuppy/view/player/provider/LibraryPersistentPlayerProvider;->audibleDebugHelper:Lcom/audible/hushpuppy/common/debug/AudibleDebugHelper;

    return-void
.end method

.method public static injectAudibleService(Lcom/audible/hushpuppy/view/player/provider/LibraryPersistentPlayerProvider;Lcom/audible/hushpuppy/controller/audible/service/IAudibleService;)V
    .locals 0

    .line 84
    iput-object p1, p0, Lcom/audible/hushpuppy/view/player/provider/LibraryPersistentPlayerProvider;->audibleService:Lcom/audible/hushpuppy/controller/audible/service/IAudibleService;

    return-void
.end method

.method public static injectEventBus(Lcom/audible/hushpuppy/view/player/provider/LibraryPersistentPlayerProvider;Lde/greenrobot/event/EventBus;)V
    .locals 0

    .line 74
    iput-object p1, p0, Lcom/audible/hushpuppy/view/player/provider/LibraryPersistentPlayerProvider;->eventBus:Lde/greenrobot/event/EventBus;

    return-void
.end method

.method public static injectHushpuppyModel(Lcom/audible/hushpuppy/view/player/provider/LibraryPersistentPlayerProvider;Lcom/audible/hushpuppy/model/read/IHushpuppyModel;)V
    .locals 0

    .line 70
    iput-object p1, p0, Lcom/audible/hushpuppy/view/player/provider/LibraryPersistentPlayerProvider;->hushpuppyModel:Lcom/audible/hushpuppy/model/read/IHushpuppyModel;

    return-void
.end method

.method public static injectKindleReaderSdk(Lcom/audible/hushpuppy/view/player/provider/LibraryPersistentPlayerProvider;Lcom/amazon/kindle/krx/IKindleReaderSDK;)V
    .locals 0

    .line 79
    iput-object p1, p0, Lcom/audible/hushpuppy/view/player/provider/LibraryPersistentPlayerProvider;->kindleReaderSdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    return-void
.end method

.method public static injectPlatformSetting(Lcom/audible/hushpuppy/view/player/provider/LibraryPersistentPlayerProvider;Lcom/audible/hushpuppy/extensions/platform/AbstractPlatformSetting;)V
    .locals 0

    .line 89
    iput-object p1, p0, Lcom/audible/hushpuppy/view/player/provider/LibraryPersistentPlayerProvider;->platformSetting:Lcom/audible/hushpuppy/extensions/platform/AbstractPlatformSetting;

    return-void
.end method
