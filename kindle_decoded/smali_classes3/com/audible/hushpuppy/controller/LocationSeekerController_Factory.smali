.class public final Lcom/audible/hushpuppy/controller/LocationSeekerController_Factory;
.super Ljava/lang/Object;
.source "LocationSeekerController_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/audible/hushpuppy/controller/LocationSeekerController;",
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

.field private final audiobookSwitcherProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/audible/hushpuppy/extensions/switchto/AbstractAudiobookSwitcher;",
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

.field private final handlerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/audible/hushpuppy/common/system/SingleElementQueueHandler;",
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

.field private final libraryDownloadControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/audible/hushpuppy/controller/LibraryDownloadController;",
            ">;"
        }
    .end annotation
.end field

.field private final metricsReporterProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/audible/android/kcp/metrics/AudiblePlayerMetricsReporter;",
            ">;"
        }
    .end annotation
.end field

.field private final modelProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/audible/hushpuppy/model/read/IHushpuppyModel;",
            ">;"
        }
    .end annotation
.end field

.field private final narrationRateProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/audible/hushpuppy/common/player/NarrationRate;",
            ">;"
        }
    .end annotation
.end field

.field private final readAlongControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/audible/hushpuppy/controller/ReadAlongController;",
            ">;"
        }
    .end annotation
.end field

.field private final readAlongModelProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/audible/hushpuppy/model/read/IReadAlongModel;",
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

.field private final seekControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/audible/hushpuppy/controller/SeekController;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/amazon/kindle/krx/IKindleReaderSDK;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/audible/hushpuppy/model/read/IHushpuppyModel;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lde/greenrobot/event/EventBus;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/audible/hushpuppy/controller/audible/service/IAudibleService;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/audible/hushpuppy/controller/SeekController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/audible/hushpuppy/common/dialog/DialogManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/amazon/kindle/krx/reader/IReaderManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/audible/hushpuppy/common/system/SingleElementQueueHandler;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/audible/hushpuppy/common/player/NarrationRate;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/audible/hushpuppy/controller/ReadAlongController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/audible/hushpuppy/controller/LibraryDownloadController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/audible/hushpuppy/extensions/switchto/AbstractAudiobookSwitcher;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/audible/hushpuppy/model/read/IReadAlongModel;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/audible/hushpuppy/common/debug/AudibleDebugHelper;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/audible/android/kcp/metrics/AudiblePlayerMetricsReporter;",
            ">;)V"
        }
    .end annotation

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    iput-object p1, p0, Lcom/audible/hushpuppy/controller/LocationSeekerController_Factory;->kindleReaderSdkProvider:Ljavax/inject/Provider;

    .line 67
    iput-object p2, p0, Lcom/audible/hushpuppy/controller/LocationSeekerController_Factory;->modelProvider:Ljavax/inject/Provider;

    .line 68
    iput-object p3, p0, Lcom/audible/hushpuppy/controller/LocationSeekerController_Factory;->eventBusProvider:Ljavax/inject/Provider;

    .line 69
    iput-object p4, p0, Lcom/audible/hushpuppy/controller/LocationSeekerController_Factory;->audibleServiceProvider:Ljavax/inject/Provider;

    .line 70
    iput-object p5, p0, Lcom/audible/hushpuppy/controller/LocationSeekerController_Factory;->seekControllerProvider:Ljavax/inject/Provider;

    .line 71
    iput-object p6, p0, Lcom/audible/hushpuppy/controller/LocationSeekerController_Factory;->dialogManagerProvider:Ljavax/inject/Provider;

    .line 72
    iput-object p7, p0, Lcom/audible/hushpuppy/controller/LocationSeekerController_Factory;->readerManagerProvider:Ljavax/inject/Provider;

    .line 73
    iput-object p8, p0, Lcom/audible/hushpuppy/controller/LocationSeekerController_Factory;->handlerProvider:Ljavax/inject/Provider;

    .line 74
    iput-object p9, p0, Lcom/audible/hushpuppy/controller/LocationSeekerController_Factory;->narrationRateProvider:Ljavax/inject/Provider;

    .line 75
    iput-object p10, p0, Lcom/audible/hushpuppy/controller/LocationSeekerController_Factory;->readAlongControllerProvider:Ljavax/inject/Provider;

    .line 76
    iput-object p11, p0, Lcom/audible/hushpuppy/controller/LocationSeekerController_Factory;->libraryDownloadControllerProvider:Ljavax/inject/Provider;

    .line 77
    iput-object p12, p0, Lcom/audible/hushpuppy/controller/LocationSeekerController_Factory;->audiobookSwitcherProvider:Ljavax/inject/Provider;

    .line 78
    iput-object p13, p0, Lcom/audible/hushpuppy/controller/LocationSeekerController_Factory;->readAlongModelProvider:Ljavax/inject/Provider;

    .line 79
    iput-object p14, p0, Lcom/audible/hushpuppy/controller/LocationSeekerController_Factory;->audibleDebugHelperProvider:Ljavax/inject/Provider;

    .line 80
    iput-object p15, p0, Lcom/audible/hushpuppy/controller/LocationSeekerController_Factory;->metricsReporterProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/audible/hushpuppy/controller/LocationSeekerController_Factory;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/amazon/kindle/krx/IKindleReaderSDK;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/audible/hushpuppy/model/read/IHushpuppyModel;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lde/greenrobot/event/EventBus;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/audible/hushpuppy/controller/audible/service/IAudibleService;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/audible/hushpuppy/controller/SeekController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/audible/hushpuppy/common/dialog/DialogManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/amazon/kindle/krx/reader/IReaderManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/audible/hushpuppy/common/system/SingleElementQueueHandler;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/audible/hushpuppy/common/player/NarrationRate;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/audible/hushpuppy/controller/ReadAlongController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/audible/hushpuppy/controller/LibraryDownloadController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/audible/hushpuppy/extensions/switchto/AbstractAudiobookSwitcher;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/audible/hushpuppy/model/read/IReadAlongModel;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/audible/hushpuppy/common/debug/AudibleDebugHelper;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/audible/android/kcp/metrics/AudiblePlayerMetricsReporter;",
            ">;)",
            "Lcom/audible/hushpuppy/controller/LocationSeekerController_Factory;"
        }
    .end annotation

    .line 153
    new-instance v16, Lcom/audible/hushpuppy/controller/LocationSeekerController_Factory;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

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

    move-object/from16 v14, p13

    move-object/from16 v15, p14

    invoke-direct/range {v0 .. v15}, Lcom/audible/hushpuppy/controller/LocationSeekerController_Factory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v16
.end method

.method public static provideInstance(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/audible/hushpuppy/controller/LocationSeekerController;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/amazon/kindle/krx/IKindleReaderSDK;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/audible/hushpuppy/model/read/IHushpuppyModel;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lde/greenrobot/event/EventBus;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/audible/hushpuppy/controller/audible/service/IAudibleService;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/audible/hushpuppy/controller/SeekController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/audible/hushpuppy/common/dialog/DialogManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/amazon/kindle/krx/reader/IReaderManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/audible/hushpuppy/common/system/SingleElementQueueHandler;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/audible/hushpuppy/common/player/NarrationRate;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/audible/hushpuppy/controller/ReadAlongController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/audible/hushpuppy/controller/LibraryDownloadController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/audible/hushpuppy/extensions/switchto/AbstractAudiobookSwitcher;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/audible/hushpuppy/model/read/IReadAlongModel;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/audible/hushpuppy/common/debug/AudibleDebugHelper;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/audible/android/kcp/metrics/AudiblePlayerMetricsReporter;",
            ">;)",
            "Lcom/audible/hushpuppy/controller/LocationSeekerController;"
        }
    .end annotation

    .line 119
    new-instance v16, Lcom/audible/hushpuppy/controller/LocationSeekerController;

    .line 120
    invoke-interface/range {p0 .. p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/amazon/kindle/krx/IKindleReaderSDK;

    .line 121
    invoke-interface/range {p1 .. p1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/audible/hushpuppy/model/read/IHushpuppyModel;

    .line 122
    invoke-interface/range {p2 .. p2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lde/greenrobot/event/EventBus;

    .line 123
    invoke-interface/range {p3 .. p3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lcom/audible/hushpuppy/controller/audible/service/IAudibleService;

    .line 124
    invoke-interface/range {p4 .. p4}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lcom/audible/hushpuppy/controller/SeekController;

    .line 125
    invoke-interface/range {p5 .. p5}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/audible/hushpuppy/common/dialog/DialogManager;

    .line 126
    invoke-interface/range {p6 .. p6}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Lcom/amazon/kindle/krx/reader/IReaderManager;

    .line 127
    invoke-interface/range {p7 .. p7}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Lcom/audible/hushpuppy/common/system/SingleElementQueueHandler;

    .line 128
    invoke-interface/range {p8 .. p8}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Lcom/audible/hushpuppy/common/player/NarrationRate;

    .line 129
    invoke-interface/range {p9 .. p9}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Lcom/audible/hushpuppy/controller/ReadAlongController;

    .line 130
    invoke-interface/range {p10 .. p10}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v11, v0

    check-cast v11, Lcom/audible/hushpuppy/controller/LibraryDownloadController;

    .line 131
    invoke-interface/range {p11 .. p11}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v12, v0

    check-cast v12, Lcom/audible/hushpuppy/extensions/switchto/AbstractAudiobookSwitcher;

    .line 132
    invoke-interface/range {p12 .. p12}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v13, v0

    check-cast v13, Lcom/audible/hushpuppy/model/read/IReadAlongModel;

    .line 133
    invoke-interface/range {p13 .. p13}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v14, v0

    check-cast v14, Lcom/audible/hushpuppy/common/debug/AudibleDebugHelper;

    .line 134
    invoke-interface/range {p14 .. p14}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v15, v0

    check-cast v15, Lcom/audible/android/kcp/metrics/AudiblePlayerMetricsReporter;

    move-object/from16 v0, v16

    invoke-direct/range {v0 .. v15}, Lcom/audible/hushpuppy/controller/LocationSeekerController;-><init>(Lcom/amazon/kindle/krx/IKindleReaderSDK;Lcom/audible/hushpuppy/model/read/IHushpuppyModel;Lde/greenrobot/event/EventBus;Lcom/audible/hushpuppy/controller/audible/service/IAudibleService;Lcom/audible/hushpuppy/controller/SeekController;Lcom/audible/hushpuppy/common/dialog/DialogManager;Lcom/amazon/kindle/krx/reader/IReaderManager;Lcom/audible/hushpuppy/common/system/SingleElementQueueHandler;Lcom/audible/hushpuppy/common/player/NarrationRate;Lcom/audible/hushpuppy/controller/ReadAlongController;Lcom/audible/hushpuppy/controller/LibraryDownloadController;Lcom/audible/hushpuppy/extensions/switchto/AbstractAudiobookSwitcher;Lcom/audible/hushpuppy/model/read/IReadAlongModel;Lcom/audible/hushpuppy/common/debug/AudibleDebugHelper;Lcom/audible/android/kcp/metrics/AudiblePlayerMetricsReporter;)V

    return-object v16
.end method


# virtual methods
.method public get()Lcom/audible/hushpuppy/controller/LocationSeekerController;
    .locals 15

    .line 85
    iget-object v0, p0, Lcom/audible/hushpuppy/controller/LocationSeekerController_Factory;->kindleReaderSdkProvider:Ljavax/inject/Provider;

    iget-object v1, p0, Lcom/audible/hushpuppy/controller/LocationSeekerController_Factory;->modelProvider:Ljavax/inject/Provider;

    iget-object v2, p0, Lcom/audible/hushpuppy/controller/LocationSeekerController_Factory;->eventBusProvider:Ljavax/inject/Provider;

    iget-object v3, p0, Lcom/audible/hushpuppy/controller/LocationSeekerController_Factory;->audibleServiceProvider:Ljavax/inject/Provider;

    iget-object v4, p0, Lcom/audible/hushpuppy/controller/LocationSeekerController_Factory;->seekControllerProvider:Ljavax/inject/Provider;

    iget-object v5, p0, Lcom/audible/hushpuppy/controller/LocationSeekerController_Factory;->dialogManagerProvider:Ljavax/inject/Provider;

    iget-object v6, p0, Lcom/audible/hushpuppy/controller/LocationSeekerController_Factory;->readerManagerProvider:Ljavax/inject/Provider;

    iget-object v7, p0, Lcom/audible/hushpuppy/controller/LocationSeekerController_Factory;->handlerProvider:Ljavax/inject/Provider;

    iget-object v8, p0, Lcom/audible/hushpuppy/controller/LocationSeekerController_Factory;->narrationRateProvider:Ljavax/inject/Provider;

    iget-object v9, p0, Lcom/audible/hushpuppy/controller/LocationSeekerController_Factory;->readAlongControllerProvider:Ljavax/inject/Provider;

    iget-object v10, p0, Lcom/audible/hushpuppy/controller/LocationSeekerController_Factory;->libraryDownloadControllerProvider:Ljavax/inject/Provider;

    iget-object v11, p0, Lcom/audible/hushpuppy/controller/LocationSeekerController_Factory;->audiobookSwitcherProvider:Ljavax/inject/Provider;

    iget-object v12, p0, Lcom/audible/hushpuppy/controller/LocationSeekerController_Factory;->readAlongModelProvider:Ljavax/inject/Provider;

    iget-object v13, p0, Lcom/audible/hushpuppy/controller/LocationSeekerController_Factory;->audibleDebugHelperProvider:Ljavax/inject/Provider;

    iget-object v14, p0, Lcom/audible/hushpuppy/controller/LocationSeekerController_Factory;->metricsReporterProvider:Ljavax/inject/Provider;

    invoke-static/range {v0 .. v14}, Lcom/audible/hushpuppy/controller/LocationSeekerController_Factory;->provideInstance(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/audible/hushpuppy/controller/LocationSeekerController;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 19
    invoke-virtual {p0}, Lcom/audible/hushpuppy/controller/LocationSeekerController_Factory;->get()Lcom/audible/hushpuppy/controller/LocationSeekerController;

    move-result-object v0

    return-object v0
.end method
