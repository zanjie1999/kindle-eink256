.class public final Lcom/amazon/kindle/krx/ui/ReaderUIManager_Factory;
.super Ljava/lang/Object;
.source "ReaderUIManager_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/amazon/kindle/krx/ui/ReaderUIManager;",
        ">;"
    }
.end annotation


# instance fields
.field private final brightnessManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/amazon/kindle/brightness/IBrightnessManager;",
            ">;"
        }
    .end annotation
.end field

.field private final hushpuppyUpsellDetectorProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/amazon/kcp/reader/ui/HushpuppyUpsellDetector;",
            ">;"
        }
    .end annotation
.end field

.field private final markedPositionManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/amazon/kindle/positionmarker/IMarkedPositionManager;",
            ">;"
        }
    .end annotation
.end field

.field private final menuControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/amazon/android/menu/CustomActionMenuController;",
            ">;"
        }
    .end annotation
.end field

.field private final panelControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/amazon/kindle/panels/IPanelController;",
            ">;"
        }
    .end annotation
.end field

.field private final playSelectionButtonRegistryProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/amazon/kindle/krx/ui/PlaySelectionButtonRegistry;",
            ">;"
        }
    .end annotation
.end field

.field private final pubSubMessageServiceProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/amazon/kindle/krx/events/IPubSubEventsManager;",
            ">;"
        }
    .end annotation
.end field

.field private final readerControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/amazon/kcp/reader/IReaderController;",
            ">;"
        }
    .end annotation
.end field

.field private final readerLayoutCustomizerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/amazon/kcp/reader/IReaderLayoutCustomizer;",
            ">;"
        }
    .end annotation
.end field

.field private final sdkProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/amazon/kindle/krx/KindleReaderSDK;",
            ">;"
        }
    .end annotation
.end field

.field private final selectionButtonControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/amazon/kcp/reader/ui/buttons/DefaultCustomSelectionButtonsController;",
            ">;"
        }
    .end annotation
.end field

.field private final settingsControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/amazon/kcp/application/UserSettingsController;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/amazon/kcp/reader/IReaderController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/amazon/android/menu/CustomActionMenuController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/amazon/kcp/reader/ui/buttons/DefaultCustomSelectionButtonsController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/amazon/kcp/application/UserSettingsController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/amazon/kindle/krx/KindleReaderSDK;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/amazon/kindle/krx/ui/PlaySelectionButtonRegistry;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/amazon/kindle/krx/events/IPubSubEventsManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/amazon/kcp/reader/ui/HushpuppyUpsellDetector;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/amazon/kindle/panels/IPanelController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/amazon/kindle/brightness/IBrightnessManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/amazon/kindle/positionmarker/IMarkedPositionManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/amazon/kcp/reader/IReaderLayoutCustomizer;",
            ">;)V"
        }
    .end annotation

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput-object p1, p0, Lcom/amazon/kindle/krx/ui/ReaderUIManager_Factory;->readerControllerProvider:Ljavax/inject/Provider;

    .line 59
    iput-object p2, p0, Lcom/amazon/kindle/krx/ui/ReaderUIManager_Factory;->menuControllerProvider:Ljavax/inject/Provider;

    .line 60
    iput-object p3, p0, Lcom/amazon/kindle/krx/ui/ReaderUIManager_Factory;->selectionButtonControllerProvider:Ljavax/inject/Provider;

    .line 61
    iput-object p4, p0, Lcom/amazon/kindle/krx/ui/ReaderUIManager_Factory;->settingsControllerProvider:Ljavax/inject/Provider;

    .line 62
    iput-object p5, p0, Lcom/amazon/kindle/krx/ui/ReaderUIManager_Factory;->sdkProvider:Ljavax/inject/Provider;

    .line 63
    iput-object p6, p0, Lcom/amazon/kindle/krx/ui/ReaderUIManager_Factory;->playSelectionButtonRegistryProvider:Ljavax/inject/Provider;

    .line 64
    iput-object p7, p0, Lcom/amazon/kindle/krx/ui/ReaderUIManager_Factory;->pubSubMessageServiceProvider:Ljavax/inject/Provider;

    .line 65
    iput-object p8, p0, Lcom/amazon/kindle/krx/ui/ReaderUIManager_Factory;->hushpuppyUpsellDetectorProvider:Ljavax/inject/Provider;

    .line 66
    iput-object p9, p0, Lcom/amazon/kindle/krx/ui/ReaderUIManager_Factory;->panelControllerProvider:Ljavax/inject/Provider;

    .line 67
    iput-object p10, p0, Lcom/amazon/kindle/krx/ui/ReaderUIManager_Factory;->brightnessManagerProvider:Ljavax/inject/Provider;

    .line 68
    iput-object p11, p0, Lcom/amazon/kindle/krx/ui/ReaderUIManager_Factory;->markedPositionManagerProvider:Ljavax/inject/Provider;

    .line 69
    iput-object p12, p0, Lcom/amazon/kindle/krx/ui/ReaderUIManager_Factory;->readerLayoutCustomizerProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/amazon/kindle/krx/ui/ReaderUIManager_Factory;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/amazon/kcp/reader/IReaderController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/amazon/android/menu/CustomActionMenuController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/amazon/kcp/reader/ui/buttons/DefaultCustomSelectionButtonsController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/amazon/kcp/application/UserSettingsController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/amazon/kindle/krx/KindleReaderSDK;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/amazon/kindle/krx/ui/PlaySelectionButtonRegistry;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/amazon/kindle/krx/events/IPubSubEventsManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/amazon/kcp/reader/ui/HushpuppyUpsellDetector;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/amazon/kindle/panels/IPanelController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/amazon/kindle/brightness/IBrightnessManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/amazon/kindle/positionmarker/IMarkedPositionManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/amazon/kcp/reader/IReaderLayoutCustomizer;",
            ">;)",
            "Lcom/amazon/kindle/krx/ui/ReaderUIManager_Factory;"
        }
    .end annotation

    .line 130
    new-instance v13, Lcom/amazon/kindle/krx/ui/ReaderUIManager_Factory;

    move-object v0, v13

    move-object v1, p0

    move-object v2, p1

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

    invoke-direct/range {v0 .. v12}, Lcom/amazon/kindle/krx/ui/ReaderUIManager_Factory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v13
.end method

.method public static newReaderUIManager(Lcom/amazon/kcp/reader/IReaderController;Lcom/amazon/android/menu/CustomActionMenuController;Lcom/amazon/kcp/reader/ui/buttons/DefaultCustomSelectionButtonsController;Lcom/amazon/kcp/application/UserSettingsController;Lcom/amazon/kindle/krx/KindleReaderSDK;Ljava/lang/Object;Lcom/amazon/kindle/krx/events/IPubSubEventsManager;Lcom/amazon/kcp/reader/ui/HushpuppyUpsellDetector;Ldagger/Lazy;Ldagger/Lazy;Ldagger/Lazy;Ldagger/Lazy;)Lcom/amazon/kindle/krx/ui/ReaderUIManager;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kcp/reader/IReaderController;",
            "Lcom/amazon/android/menu/CustomActionMenuController;",
            "Lcom/amazon/kcp/reader/ui/buttons/DefaultCustomSelectionButtonsController;",
            "Lcom/amazon/kcp/application/UserSettingsController;",
            "Lcom/amazon/kindle/krx/KindleReaderSDK;",
            "Ljava/lang/Object;",
            "Lcom/amazon/kindle/krx/events/IPubSubEventsManager;",
            "Lcom/amazon/kcp/reader/ui/HushpuppyUpsellDetector;",
            "Ldagger/Lazy<",
            "Lcom/amazon/kindle/panels/IPanelController;",
            ">;",
            "Ldagger/Lazy<",
            "Lcom/amazon/kindle/brightness/IBrightnessManager;",
            ">;",
            "Ldagger/Lazy<",
            "Lcom/amazon/kindle/positionmarker/IMarkedPositionManager;",
            ">;",
            "Ldagger/Lazy<",
            "Lcom/amazon/kcp/reader/IReaderLayoutCustomizer;",
            ">;)",
            "Lcom/amazon/kindle/krx/ui/ReaderUIManager;"
        }
    .end annotation

    .line 158
    new-instance v13, Lcom/amazon/kindle/krx/ui/ReaderUIManager;

    move-object/from16 v6, p5

    check-cast v6, Lcom/amazon/kindle/krx/ui/PlaySelectionButtonRegistry;

    move-object v0, v13

    move-object v1, p0

    move-object v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    move-object/from16 v12, p11

    invoke-direct/range {v0 .. v12}, Lcom/amazon/kindle/krx/ui/ReaderUIManager;-><init>(Lcom/amazon/kcp/reader/IReaderController;Lcom/amazon/android/menu/CustomActionMenuController;Lcom/amazon/kcp/reader/ui/buttons/DefaultCustomSelectionButtonsController;Lcom/amazon/kcp/application/UserSettingsController;Lcom/amazon/kindle/krx/KindleReaderSDK;Lcom/amazon/kindle/krx/ui/PlaySelectionButtonRegistry;Lcom/amazon/kindle/krx/events/IPubSubEventsManager;Lcom/amazon/kcp/reader/ui/HushpuppyUpsellDetector;Ldagger/Lazy;Ldagger/Lazy;Ldagger/Lazy;Ldagger/Lazy;)V

    return-object v13
.end method

.method public static provideInstance(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/amazon/kindle/krx/ui/ReaderUIManager;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/amazon/kcp/reader/IReaderController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/amazon/android/menu/CustomActionMenuController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/amazon/kcp/reader/ui/buttons/DefaultCustomSelectionButtonsController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/amazon/kcp/application/UserSettingsController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/amazon/kindle/krx/KindleReaderSDK;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/amazon/kindle/krx/ui/PlaySelectionButtonRegistry;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/amazon/kindle/krx/events/IPubSubEventsManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/amazon/kcp/reader/ui/HushpuppyUpsellDetector;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/amazon/kindle/panels/IPanelController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/amazon/kindle/brightness/IBrightnessManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/amazon/kindle/positionmarker/IMarkedPositionManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/amazon/kcp/reader/IReaderLayoutCustomizer;",
            ">;)",
            "Lcom/amazon/kindle/krx/ui/ReaderUIManager;"
        }
    .end annotation

    .line 102
    new-instance v13, Lcom/amazon/kindle/krx/ui/ReaderUIManager;

    .line 103
    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/amazon/kcp/reader/IReaderController;

    .line 104
    invoke-interface {p1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/amazon/android/menu/CustomActionMenuController;

    .line 105
    invoke-interface/range {p2 .. p2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/amazon/kcp/reader/ui/buttons/DefaultCustomSelectionButtonsController;

    .line 106
    invoke-interface/range {p3 .. p3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lcom/amazon/kcp/application/UserSettingsController;

    .line 107
    invoke-interface/range {p4 .. p4}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lcom/amazon/kindle/krx/KindleReaderSDK;

    .line 108
    invoke-interface/range {p5 .. p5}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/amazon/kindle/krx/ui/PlaySelectionButtonRegistry;

    .line 109
    invoke-interface/range {p6 .. p6}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Lcom/amazon/kindle/krx/events/IPubSubEventsManager;

    .line 110
    invoke-interface/range {p7 .. p7}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Lcom/amazon/kcp/reader/ui/HushpuppyUpsellDetector;

    .line 111
    invoke-static/range {p8 .. p8}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v9

    .line 112
    invoke-static/range {p9 .. p9}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v10

    .line 113
    invoke-static/range {p10 .. p10}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v11

    .line 114
    invoke-static/range {p11 .. p11}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v12

    move-object v0, v13

    invoke-direct/range {v0 .. v12}, Lcom/amazon/kindle/krx/ui/ReaderUIManager;-><init>(Lcom/amazon/kcp/reader/IReaderController;Lcom/amazon/android/menu/CustomActionMenuController;Lcom/amazon/kcp/reader/ui/buttons/DefaultCustomSelectionButtonsController;Lcom/amazon/kcp/application/UserSettingsController;Lcom/amazon/kindle/krx/KindleReaderSDK;Lcom/amazon/kindle/krx/ui/PlaySelectionButtonRegistry;Lcom/amazon/kindle/krx/events/IPubSubEventsManager;Lcom/amazon/kcp/reader/ui/HushpuppyUpsellDetector;Ldagger/Lazy;Ldagger/Lazy;Ldagger/Lazy;Ldagger/Lazy;)V

    return-object v13
.end method


# virtual methods
.method public get()Lcom/amazon/kindle/krx/ui/ReaderUIManager;
    .locals 12

    .line 74
    iget-object v0, p0, Lcom/amazon/kindle/krx/ui/ReaderUIManager_Factory;->readerControllerProvider:Ljavax/inject/Provider;

    iget-object v1, p0, Lcom/amazon/kindle/krx/ui/ReaderUIManager_Factory;->menuControllerProvider:Ljavax/inject/Provider;

    iget-object v2, p0, Lcom/amazon/kindle/krx/ui/ReaderUIManager_Factory;->selectionButtonControllerProvider:Ljavax/inject/Provider;

    iget-object v3, p0, Lcom/amazon/kindle/krx/ui/ReaderUIManager_Factory;->settingsControllerProvider:Ljavax/inject/Provider;

    iget-object v4, p0, Lcom/amazon/kindle/krx/ui/ReaderUIManager_Factory;->sdkProvider:Ljavax/inject/Provider;

    iget-object v5, p0, Lcom/amazon/kindle/krx/ui/ReaderUIManager_Factory;->playSelectionButtonRegistryProvider:Ljavax/inject/Provider;

    iget-object v6, p0, Lcom/amazon/kindle/krx/ui/ReaderUIManager_Factory;->pubSubMessageServiceProvider:Ljavax/inject/Provider;

    iget-object v7, p0, Lcom/amazon/kindle/krx/ui/ReaderUIManager_Factory;->hushpuppyUpsellDetectorProvider:Ljavax/inject/Provider;

    iget-object v8, p0, Lcom/amazon/kindle/krx/ui/ReaderUIManager_Factory;->panelControllerProvider:Ljavax/inject/Provider;

    iget-object v9, p0, Lcom/amazon/kindle/krx/ui/ReaderUIManager_Factory;->brightnessManagerProvider:Ljavax/inject/Provider;

    iget-object v10, p0, Lcom/amazon/kindle/krx/ui/ReaderUIManager_Factory;->markedPositionManagerProvider:Ljavax/inject/Provider;

    iget-object v11, p0, Lcom/amazon/kindle/krx/ui/ReaderUIManager_Factory;->readerLayoutCustomizerProvider:Ljavax/inject/Provider;

    invoke-static/range {v0 .. v11}, Lcom/amazon/kindle/krx/ui/ReaderUIManager_Factory;->provideInstance(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/amazon/kindle/krx/ui/ReaderUIManager;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 20
    invoke-virtual {p0}, Lcom/amazon/kindle/krx/ui/ReaderUIManager_Factory;->get()Lcom/amazon/kindle/krx/ui/ReaderUIManager;

    move-result-object v0

    return-object v0
.end method
