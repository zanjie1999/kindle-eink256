.class public final Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule_ProvideChapterNavigatorFactory;
.super Ljava/lang/Object;
.source "HushpuppyDaggerModule_ProvideChapterNavigatorFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/audible/hushpuppy/controller/ChapterController;",
        ">;"
    }
.end annotation


# instance fields
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

.field private final kindleReaderSDKProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/amazon/kindle/krx/IKindleReaderSDK;",
            ">;"
        }
    .end annotation
.end field

.field private final metricProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/audible/hushpuppy/common/metric/IMetricLogger;",
            ">;"
        }
    .end annotation
.end field

.field private final module:Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule;


# direct methods
.method public constructor <init>(Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule;",
            "Ljavax/inject/Provider<",
            "Lde/greenrobot/event/EventBus;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/audible/hushpuppy/model/read/IHushpuppyModel;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/audible/hushpuppy/common/metric/IMetricLogger;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/amazon/kindle/krx/IKindleReaderSDK;",
            ">;)V"
        }
    .end annotation

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule_ProvideChapterNavigatorFactory;->module:Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule;

    .line 32
    iput-object p2, p0, Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule_ProvideChapterNavigatorFactory;->eventBusProvider:Ljavax/inject/Provider;

    .line 33
    iput-object p3, p0, Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule_ProvideChapterNavigatorFactory;->hushpuppyModelProvider:Ljavax/inject/Provider;

    .line 34
    iput-object p4, p0, Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule_ProvideChapterNavigatorFactory;->metricProvider:Ljavax/inject/Provider;

    .line 35
    iput-object p5, p0, Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule_ProvideChapterNavigatorFactory;->kindleReaderSDKProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule_ProvideChapterNavigatorFactory;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule;",
            "Ljavax/inject/Provider<",
            "Lde/greenrobot/event/EventBus;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/audible/hushpuppy/model/read/IHushpuppyModel;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/audible/hushpuppy/common/metric/IMetricLogger;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/amazon/kindle/krx/IKindleReaderSDK;",
            ">;)",
            "Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule_ProvideChapterNavigatorFactory;"
        }
    .end annotation

    .line 64
    new-instance v6, Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule_ProvideChapterNavigatorFactory;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule_ProvideChapterNavigatorFactory;-><init>(Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v6
.end method

.method public static provideInstance(Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/audible/hushpuppy/controller/ChapterController;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule;",
            "Ljavax/inject/Provider<",
            "Lde/greenrobot/event/EventBus;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/audible/hushpuppy/model/read/IHushpuppyModel;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/audible/hushpuppy/common/metric/IMetricLogger;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/amazon/kindle/krx/IKindleReaderSDK;",
            ">;)",
            "Lcom/audible/hushpuppy/controller/ChapterController;"
        }
    .end annotation

    .line 52
    invoke-interface {p1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lde/greenrobot/event/EventBus;

    .line 53
    invoke-interface {p2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/audible/hushpuppy/model/read/IHushpuppyModel;

    .line 54
    invoke-interface {p3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/audible/hushpuppy/common/metric/IMetricLogger;

    .line 55
    invoke-interface {p4}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/amazon/kindle/krx/IKindleReaderSDK;

    .line 50
    invoke-static {p0, p1, p2, p3, p4}, Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule_ProvideChapterNavigatorFactory;->proxyProvideChapterNavigator(Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule;Lde/greenrobot/event/EventBus;Lcom/audible/hushpuppy/model/read/IHushpuppyModel;Lcom/audible/hushpuppy/common/metric/IMetricLogger;Lcom/amazon/kindle/krx/IKindleReaderSDK;)Lcom/audible/hushpuppy/controller/ChapterController;

    move-result-object p0

    return-object p0
.end method

.method public static proxyProvideChapterNavigator(Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule;Lde/greenrobot/event/EventBus;Lcom/audible/hushpuppy/model/read/IHushpuppyModel;Lcom/audible/hushpuppy/common/metric/IMetricLogger;Lcom/amazon/kindle/krx/IKindleReaderSDK;)Lcom/audible/hushpuppy/controller/ChapterController;
    .locals 0

    .line 75
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule;->provideChapterNavigator(Lde/greenrobot/event/EventBus;Lcom/audible/hushpuppy/model/read/IHushpuppyModel;Lcom/audible/hushpuppy/common/metric/IMetricLogger;Lcom/amazon/kindle/krx/IKindleReaderSDK;)Lcom/audible/hushpuppy/controller/ChapterController;

    move-result-object p0

    const-string p1, "Cannot return null from a non-@Nullable @Provides method"

    .line 74
    invoke-static {p0, p1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p0, Lcom/audible/hushpuppy/controller/ChapterController;

    return-object p0
.end method


# virtual methods
.method public get()Lcom/audible/hushpuppy/controller/ChapterController;
    .locals 5

    .line 40
    iget-object v0, p0, Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule_ProvideChapterNavigatorFactory;->module:Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule;

    iget-object v1, p0, Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule_ProvideChapterNavigatorFactory;->eventBusProvider:Ljavax/inject/Provider;

    iget-object v2, p0, Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule_ProvideChapterNavigatorFactory;->hushpuppyModelProvider:Ljavax/inject/Provider;

    iget-object v3, p0, Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule_ProvideChapterNavigatorFactory;->metricProvider:Ljavax/inject/Provider;

    iget-object v4, p0, Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule_ProvideChapterNavigatorFactory;->kindleReaderSDKProvider:Ljavax/inject/Provider;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule_ProvideChapterNavigatorFactory;->provideInstance(Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/audible/hushpuppy/controller/ChapterController;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 13
    invoke-virtual {p0}, Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule_ProvideChapterNavigatorFactory;->get()Lcom/audible/hushpuppy/controller/ChapterController;

    move-result-object v0

    return-object v0
.end method
