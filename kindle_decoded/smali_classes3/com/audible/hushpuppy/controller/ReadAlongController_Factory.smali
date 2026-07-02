.class public final Lcom/audible/hushpuppy/controller/ReadAlongController_Factory;
.super Ljava/lang/Object;
.source "ReadAlongController_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/audible/hushpuppy/controller/ReadAlongController;",
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

.field private final dialogManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/audible/hushpuppy/common/dialog/DialogManager;",
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

.field private final hushpuppyPerformanceUtilsProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/audible/hushpuppy/common/performance/HushpuppyPerformanceUtils;",
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

.field private final modelProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/audible/hushpuppy/model/read/IReadAlongModel;",
            ">;"
        }
    .end annotation
.end field

.field private final navigationListenerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/audible/hushpuppy/controller/NavigationListener;",
            ">;"
        }
    .end annotation
.end field

.field private final readerManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/amazon/kindle/krx/reader/IReaderManager;",
            ">;"
        }
    .end annotation
.end field

.field private final readerUIManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/amazon/kindle/krx/ui/IReaderUIManager;",
            ">;"
        }
    .end annotation
.end field

.field private final seekControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/audible/hushpuppy/controller/SeekController;",
            ">;"
        }
    .end annotation
.end field

.field private final sleepTimerControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/audible/hushpuppy/controller/ISleepTimerController;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/audible/hushpuppy/model/read/IReadAlongModel;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lde/greenrobot/event/EventBus;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/audible/hushpuppy/model/read/IHushpuppyModel;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/amazon/kindle/krx/reader/IReaderManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/amazon/kindle/krx/ui/IReaderUIManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/audible/hushpuppy/controller/audible/service/IAudibleService;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/audible/hushpuppy/common/dialog/DialogManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/audible/hushpuppy/controller/ISleepTimerController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/audible/hushpuppy/controller/NavigationListener;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/audible/hushpuppy/controller/SeekController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/amazon/kindle/krx/IKindleReaderSDK;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/audible/hushpuppy/common/debug/AudibleDebugHelper;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/audible/hushpuppy/common/performance/HushpuppyPerformanceUtils;",
            ">;)V"
        }
    .end annotation

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput-object p1, p0, Lcom/audible/hushpuppy/controller/ReadAlongController_Factory;->modelProvider:Ljavax/inject/Provider;

    .line 59
    iput-object p2, p0, Lcom/audible/hushpuppy/controller/ReadAlongController_Factory;->eventBusProvider:Ljavax/inject/Provider;

    .line 60
    iput-object p3, p0, Lcom/audible/hushpuppy/controller/ReadAlongController_Factory;->hushpuppyModelProvider:Ljavax/inject/Provider;

    .line 61
    iput-object p4, p0, Lcom/audible/hushpuppy/controller/ReadAlongController_Factory;->readerManagerProvider:Ljavax/inject/Provider;

    .line 62
    iput-object p5, p0, Lcom/audible/hushpuppy/controller/ReadAlongController_Factory;->readerUIManagerProvider:Ljavax/inject/Provider;

    .line 63
    iput-object p6, p0, Lcom/audible/hushpuppy/controller/ReadAlongController_Factory;->audibleServiceProvider:Ljavax/inject/Provider;

    .line 64
    iput-object p7, p0, Lcom/audible/hushpuppy/controller/ReadAlongController_Factory;->dialogManagerProvider:Ljavax/inject/Provider;

    .line 65
    iput-object p8, p0, Lcom/audible/hushpuppy/controller/ReadAlongController_Factory;->sleepTimerControllerProvider:Ljavax/inject/Provider;

    .line 66
    iput-object p9, p0, Lcom/audible/hushpuppy/controller/ReadAlongController_Factory;->navigationListenerProvider:Ljavax/inject/Provider;

    .line 67
    iput-object p10, p0, Lcom/audible/hushpuppy/controller/ReadAlongController_Factory;->seekControllerProvider:Ljavax/inject/Provider;

    .line 68
    iput-object p11, p0, Lcom/audible/hushpuppy/controller/ReadAlongController_Factory;->kindleReaderSDKProvider:Ljavax/inject/Provider;

    .line 69
    iput-object p12, p0, Lcom/audible/hushpuppy/controller/ReadAlongController_Factory;->audibleDebugHelperProvider:Ljavax/inject/Provider;

    .line 70
    iput-object p13, p0, Lcom/audible/hushpuppy/controller/ReadAlongController_Factory;->hushpuppyPerformanceUtilsProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/audible/hushpuppy/controller/ReadAlongController_Factory;
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/audible/hushpuppy/model/read/IReadAlongModel;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lde/greenrobot/event/EventBus;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/audible/hushpuppy/model/read/IHushpuppyModel;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/amazon/kindle/krx/reader/IReaderManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/amazon/kindle/krx/ui/IReaderUIManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/audible/hushpuppy/controller/audible/service/IAudibleService;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/audible/hushpuppy/common/dialog/DialogManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/audible/hushpuppy/controller/ISleepTimerController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/audible/hushpuppy/controller/NavigationListener;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/audible/hushpuppy/controller/SeekController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/amazon/kindle/krx/IKindleReaderSDK;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/audible/hushpuppy/common/debug/AudibleDebugHelper;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/audible/hushpuppy/common/performance/HushpuppyPerformanceUtils;",
            ">;)",
            "Lcom/audible/hushpuppy/controller/ReadAlongController_Factory;"
        }
    .end annotation

    .line 141
    new-instance v14, Lcom/audible/hushpuppy/controller/ReadAlongController_Factory;

    move-object v0, v14

    move-object v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    move-object/from16 v12, p11

    move-object/from16 v13, p12

    invoke-direct/range {v0 .. v13}, Lcom/audible/hushpuppy/controller/ReadAlongController_Factory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v14
.end method

.method public static provideInstance(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/audible/hushpuppy/controller/ReadAlongController;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/audible/hushpuppy/model/read/IReadAlongModel;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lde/greenrobot/event/EventBus;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/audible/hushpuppy/model/read/IHushpuppyModel;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/amazon/kindle/krx/reader/IReaderManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/amazon/kindle/krx/ui/IReaderUIManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/audible/hushpuppy/controller/audible/service/IAudibleService;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/audible/hushpuppy/common/dialog/DialogManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/audible/hushpuppy/controller/ISleepTimerController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/audible/hushpuppy/controller/NavigationListener;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/audible/hushpuppy/controller/SeekController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/amazon/kindle/krx/IKindleReaderSDK;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/audible/hushpuppy/common/debug/AudibleDebugHelper;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/audible/hushpuppy/common/performance/HushpuppyPerformanceUtils;",
            ">;)",
            "Lcom/audible/hushpuppy/controller/ReadAlongController;"
        }
    .end annotation

    .line 105
    new-instance v10, Lcom/audible/hushpuppy/controller/ReadAlongController;

    .line 107
    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/audible/hushpuppy/model/read/IReadAlongModel;

    .line 108
    invoke-interface {p1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lde/greenrobot/event/EventBus;

    .line 109
    invoke-interface {p2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/audible/hushpuppy/model/read/IHushpuppyModel;

    .line 110
    invoke-interface {p3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lcom/amazon/kindle/krx/reader/IReaderManager;

    .line 111
    invoke-interface {p4}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lcom/amazon/kindle/krx/ui/IReaderUIManager;

    .line 112
    invoke-interface/range {p5 .. p5}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/audible/hushpuppy/controller/audible/service/IAudibleService;

    .line 113
    invoke-interface/range {p6 .. p6}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Lcom/audible/hushpuppy/common/dialog/DialogManager;

    .line 114
    invoke-interface/range {p7 .. p7}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Lcom/audible/hushpuppy/controller/ISleepTimerController;

    .line 115
    invoke-interface/range {p8 .. p8}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Lcom/audible/hushpuppy/controller/NavigationListener;

    move-object v0, v10

    invoke-direct/range {v0 .. v9}, Lcom/audible/hushpuppy/controller/ReadAlongController;-><init>(Lcom/audible/hushpuppy/model/read/IReadAlongModel;Lde/greenrobot/event/EventBus;Lcom/audible/hushpuppy/model/read/IHushpuppyModel;Lcom/amazon/kindle/krx/reader/IReaderManager;Lcom/amazon/kindle/krx/ui/IReaderUIManager;Lcom/audible/hushpuppy/controller/audible/service/IAudibleService;Lcom/audible/hushpuppy/common/dialog/DialogManager;Lcom/audible/hushpuppy/controller/ISleepTimerController;Lcom/audible/hushpuppy/controller/NavigationListener;)V

    .line 117
    invoke-interface/range {p9 .. p9}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/audible/hushpuppy/controller/SeekController;

    .line 116
    invoke-static {v10, v0}, Lcom/audible/hushpuppy/controller/ReadAlongController_MembersInjector;->injectSeekController(Lcom/audible/hushpuppy/controller/ReadAlongController;Lcom/audible/hushpuppy/controller/SeekController;)V

    .line 119
    invoke-interface/range {p10 .. p10}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kindle/krx/IKindleReaderSDK;

    .line 118
    invoke-static {v10, v0}, Lcom/audible/hushpuppy/controller/ReadAlongController_MembersInjector;->injectKindleReaderSDK(Lcom/audible/hushpuppy/controller/ReadAlongController;Lcom/amazon/kindle/krx/IKindleReaderSDK;)V

    .line 121
    invoke-interface/range {p11 .. p11}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/audible/hushpuppy/common/debug/AudibleDebugHelper;

    .line 120
    invoke-static {v10, v0}, Lcom/audible/hushpuppy/controller/ReadAlongController_MembersInjector;->injectAudibleDebugHelper(Lcom/audible/hushpuppy/controller/ReadAlongController;Lcom/audible/hushpuppy/common/debug/AudibleDebugHelper;)V

    .line 123
    invoke-interface/range {p12 .. p12}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/audible/hushpuppy/common/performance/HushpuppyPerformanceUtils;

    .line 122
    invoke-static {v10, v0}, Lcom/audible/hushpuppy/controller/ReadAlongController_MembersInjector;->injectHushpuppyPerformanceUtils(Lcom/audible/hushpuppy/controller/ReadAlongController;Lcom/audible/hushpuppy/common/performance/HushpuppyPerformanceUtils;)V

    return-object v10
.end method


# virtual methods
.method public get()Lcom/audible/hushpuppy/controller/ReadAlongController;
    .locals 13

    .line 75
    iget-object v0, p0, Lcom/audible/hushpuppy/controller/ReadAlongController_Factory;->modelProvider:Ljavax/inject/Provider;

    iget-object v1, p0, Lcom/audible/hushpuppy/controller/ReadAlongController_Factory;->eventBusProvider:Ljavax/inject/Provider;

    iget-object v2, p0, Lcom/audible/hushpuppy/controller/ReadAlongController_Factory;->hushpuppyModelProvider:Ljavax/inject/Provider;

    iget-object v3, p0, Lcom/audible/hushpuppy/controller/ReadAlongController_Factory;->readerManagerProvider:Ljavax/inject/Provider;

    iget-object v4, p0, Lcom/audible/hushpuppy/controller/ReadAlongController_Factory;->readerUIManagerProvider:Ljavax/inject/Provider;

    iget-object v5, p0, Lcom/audible/hushpuppy/controller/ReadAlongController_Factory;->audibleServiceProvider:Ljavax/inject/Provider;

    iget-object v6, p0, Lcom/audible/hushpuppy/controller/ReadAlongController_Factory;->dialogManagerProvider:Ljavax/inject/Provider;

    iget-object v7, p0, Lcom/audible/hushpuppy/controller/ReadAlongController_Factory;->sleepTimerControllerProvider:Ljavax/inject/Provider;

    iget-object v8, p0, Lcom/audible/hushpuppy/controller/ReadAlongController_Factory;->navigationListenerProvider:Ljavax/inject/Provider;

    iget-object v9, p0, Lcom/audible/hushpuppy/controller/ReadAlongController_Factory;->seekControllerProvider:Ljavax/inject/Provider;

    iget-object v10, p0, Lcom/audible/hushpuppy/controller/ReadAlongController_Factory;->kindleReaderSDKProvider:Ljavax/inject/Provider;

    iget-object v11, p0, Lcom/audible/hushpuppy/controller/ReadAlongController_Factory;->audibleDebugHelperProvider:Ljavax/inject/Provider;

    iget-object v12, p0, Lcom/audible/hushpuppy/controller/ReadAlongController_Factory;->hushpuppyPerformanceUtilsProvider:Ljavax/inject/Provider;

    invoke-static/range {v0 .. v12}, Lcom/audible/hushpuppy/controller/ReadAlongController_Factory;->provideInstance(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/audible/hushpuppy/controller/ReadAlongController;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 17
    invoke-virtual {p0}, Lcom/audible/hushpuppy/controller/ReadAlongController_Factory;->get()Lcom/audible/hushpuppy/controller/ReadAlongController;

    move-result-object v0

    return-object v0
.end method
