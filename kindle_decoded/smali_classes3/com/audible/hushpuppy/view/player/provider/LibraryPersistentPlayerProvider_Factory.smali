.class public final Lcom/audible/hushpuppy/view/player/provider/LibraryPersistentPlayerProvider_Factory;
.super Ljava/lang/Object;
.source "LibraryPersistentPlayerProvider_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
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

.field private final playerViewManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/audible/hushpuppy/view/player/view/manager/PlayerViewManager;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static newLibraryPersistentPlayerProvider(Lcom/audible/hushpuppy/view/player/view/manager/PlayerViewManager;)Lcom/audible/hushpuppy/view/player/provider/LibraryPersistentPlayerProvider;
    .locals 1

    .line 104
    new-instance v0, Lcom/audible/hushpuppy/view/player/provider/LibraryPersistentPlayerProvider;

    invoke-direct {v0, p0}, Lcom/audible/hushpuppy/view/player/provider/LibraryPersistentPlayerProvider;-><init>(Lcom/audible/hushpuppy/view/player/view/manager/PlayerViewManager;)V

    return-object v0
.end method

.method public static provideInstance(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/audible/hushpuppy/view/player/provider/LibraryPersistentPlayerProvider;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/audible/hushpuppy/view/player/view/manager/PlayerViewManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/audible/hushpuppy/model/read/IHushpuppyModel;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lde/greenrobot/event/EventBus;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/amazon/kindle/krx/IKindleReaderSDK;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/audible/hushpuppy/controller/audible/service/IAudibleService;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/audible/hushpuppy/extensions/platform/AbstractPlatformSetting;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/audible/hushpuppy/common/debug/AudibleDebugHelper;",
            ">;)",
            "Lcom/audible/hushpuppy/view/player/provider/LibraryPersistentPlayerProvider;"
        }
    .end annotation

    .line 67
    new-instance v0, Lcom/audible/hushpuppy/view/player/provider/LibraryPersistentPlayerProvider;

    .line 68
    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/audible/hushpuppy/view/player/view/manager/PlayerViewManager;

    invoke-direct {v0, p0}, Lcom/audible/hushpuppy/view/player/provider/LibraryPersistentPlayerProvider;-><init>(Lcom/audible/hushpuppy/view/player/view/manager/PlayerViewManager;)V

    .line 70
    invoke-interface {p1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/audible/hushpuppy/model/read/IHushpuppyModel;

    .line 69
    invoke-static {v0, p0}, Lcom/audible/hushpuppy/view/player/provider/LibraryPersistentPlayerProvider_MembersInjector;->injectHushpuppyModel(Lcom/audible/hushpuppy/view/player/provider/LibraryPersistentPlayerProvider;Lcom/audible/hushpuppy/model/read/IHushpuppyModel;)V

    .line 72
    invoke-interface {p2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lde/greenrobot/event/EventBus;

    .line 71
    invoke-static {v0, p0}, Lcom/audible/hushpuppy/view/player/provider/LibraryPersistentPlayerProvider_MembersInjector;->injectEventBus(Lcom/audible/hushpuppy/view/player/provider/LibraryPersistentPlayerProvider;Lde/greenrobot/event/EventBus;)V

    .line 74
    invoke-interface {p3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/amazon/kindle/krx/IKindleReaderSDK;

    .line 73
    invoke-static {v0, p0}, Lcom/audible/hushpuppy/view/player/provider/LibraryPersistentPlayerProvider_MembersInjector;->injectKindleReaderSdk(Lcom/audible/hushpuppy/view/player/provider/LibraryPersistentPlayerProvider;Lcom/amazon/kindle/krx/IKindleReaderSDK;)V

    .line 76
    invoke-interface {p4}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/audible/hushpuppy/controller/audible/service/IAudibleService;

    .line 75
    invoke-static {v0, p0}, Lcom/audible/hushpuppy/view/player/provider/LibraryPersistentPlayerProvider_MembersInjector;->injectAudibleService(Lcom/audible/hushpuppy/view/player/provider/LibraryPersistentPlayerProvider;Lcom/audible/hushpuppy/controller/audible/service/IAudibleService;)V

    .line 78
    invoke-interface {p5}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/audible/hushpuppy/extensions/platform/AbstractPlatformSetting;

    .line 77
    invoke-static {v0, p0}, Lcom/audible/hushpuppy/view/player/provider/LibraryPersistentPlayerProvider_MembersInjector;->injectPlatformSetting(Lcom/audible/hushpuppy/view/player/provider/LibraryPersistentPlayerProvider;Lcom/audible/hushpuppy/extensions/platform/AbstractPlatformSetting;)V

    .line 80
    invoke-interface {p6}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/audible/hushpuppy/common/debug/AudibleDebugHelper;

    .line 79
    invoke-static {v0, p0}, Lcom/audible/hushpuppy/view/player/provider/LibraryPersistentPlayerProvider_MembersInjector;->injectAudibleDebugHelper(Lcom/audible/hushpuppy/view/player/provider/LibraryPersistentPlayerProvider;Lcom/audible/hushpuppy/common/debug/AudibleDebugHelper;)V

    return-object v0
.end method


# virtual methods
.method public get()Lcom/audible/hushpuppy/view/player/provider/LibraryPersistentPlayerProvider;
    .locals 7

    .line 49
    iget-object v0, p0, Lcom/audible/hushpuppy/view/player/provider/LibraryPersistentPlayerProvider_Factory;->playerViewManagerProvider:Ljavax/inject/Provider;

    iget-object v1, p0, Lcom/audible/hushpuppy/view/player/provider/LibraryPersistentPlayerProvider_Factory;->hushpuppyModelProvider:Ljavax/inject/Provider;

    iget-object v2, p0, Lcom/audible/hushpuppy/view/player/provider/LibraryPersistentPlayerProvider_Factory;->eventBusProvider:Ljavax/inject/Provider;

    iget-object v3, p0, Lcom/audible/hushpuppy/view/player/provider/LibraryPersistentPlayerProvider_Factory;->kindleReaderSdkProvider:Ljavax/inject/Provider;

    iget-object v4, p0, Lcom/audible/hushpuppy/view/player/provider/LibraryPersistentPlayerProvider_Factory;->audibleServiceProvider:Ljavax/inject/Provider;

    iget-object v5, p0, Lcom/audible/hushpuppy/view/player/provider/LibraryPersistentPlayerProvider_Factory;->platformSettingProvider:Ljavax/inject/Provider;

    iget-object v6, p0, Lcom/audible/hushpuppy/view/player/provider/LibraryPersistentPlayerProvider_Factory;->audibleDebugHelperProvider:Ljavax/inject/Provider;

    invoke-static/range {v0 .. v6}, Lcom/audible/hushpuppy/view/player/provider/LibraryPersistentPlayerProvider_Factory;->provideInstance(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/audible/hushpuppy/view/player/provider/LibraryPersistentPlayerProvider;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 14
    invoke-virtual {p0}, Lcom/audible/hushpuppy/view/player/provider/LibraryPersistentPlayerProvider_Factory;->get()Lcom/audible/hushpuppy/view/player/provider/LibraryPersistentPlayerProvider;

    move-result-object v0

    return-object v0
.end method
