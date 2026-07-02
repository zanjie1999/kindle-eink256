.class Lcom/amazon/kindle/panels/SyncItemPanelProvider$SyncPanelRow;
.super Ljava/lang/Object;
.source "SyncItemPanelProvider.java"

# interfaces
.implements Lcom/amazon/kindle/krx/ui/panels/IPanelRow;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kindle/panels/SyncItemPanelProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SyncPanelRow"
.end annotation


# instance fields
.field afterCloseTask:Ljava/lang/Runnable;

.field private sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;


# direct methods
.method constructor <init>(Lcom/amazon/kindle/krx/IKindleReaderSDK;)V
    .locals 1

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 66
    iput-object v0, p0, Lcom/amazon/kindle/panels/SyncItemPanelProvider$SyncPanelRow;->afterCloseTask:Ljava/lang/Runnable;

    .line 69
    iput-object p1, p0, Lcom/amazon/kindle/panels/SyncItemPanelProvider$SyncPanelRow;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    return-void
.end method

.method static synthetic access$000(Lcom/amazon/kindle/panels/SyncItemPanelProvider$SyncPanelRow;)Lcom/amazon/kindle/krx/IKindleReaderSDK;
    .locals 0

    .line 64
    iget-object p0, p0, Lcom/amazon/kindle/panels/SyncItemPanelProvider$SyncPanelRow;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    return-object p0
.end method


# virtual methods
.method public getChildRows()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/amazon/kindle/krx/ui/panels/IPanelRow;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public getIconComponent()Lcom/amazon/kindle/krx/ui/panels/IIconPanelComponent;
    .locals 1

    .line 149
    new-instance v0, Lcom/amazon/kindle/panels/SyncItemPanelProvider$SyncPanelRow$3;

    invoke-direct {v0, p0}, Lcom/amazon/kindle/panels/SyncItemPanelProvider$SyncPanelRow$3;-><init>(Lcom/amazon/kindle/panels/SyncItemPanelProvider$SyncPanelRow;)V

    return-object v0
.end method

.method public getPanelStatus()Lcom/amazon/kindle/krx/ui/ComponentStatus;
    .locals 2

    .line 102
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getUserSettingsController()Lcom/amazon/kcp/application/UserSettingsController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/kcp/application/UserSettingsController;->isAnnotationsSyncEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 103
    sget-object v0, Lcom/amazon/kindle/krx/ui/ComponentStatus;->GONE:Lcom/amazon/kindle/krx/ui/ComponentStatus;

    return-object v0

    .line 105
    :cond_0
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getReaderController()Lcom/amazon/kcp/reader/IReaderController;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/reader/IReaderController;->getDocViewer()Lcom/amazon/android/docviewer/KindleDocViewer;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 106
    invoke-interface {v0}, Lcom/amazon/android/docviewer/KindleDocViewer;->getBookInfo()Lcom/amazon/kindle/model/content/ILocalBookItem;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 107
    invoke-interface {v0}, Lcom/amazon/android/docviewer/KindleDocViewer;->getBookInfo()Lcom/amazon/kindle/model/content/ILocalBookItem;

    move-result-object v0

    .line 108
    iget-object v1, p0, Lcom/amazon/kindle/panels/SyncItemPanelProvider$SyncPanelRow;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderManager()Lcom/amazon/kindle/krx/reader/IReaderManager;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 110
    invoke-interface {v1}, Lcom/amazon/kindle/krx/reader/IReaderManager;->getCurrentBook()Lcom/amazon/kindle/krx/content/IBook;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 111
    invoke-interface {v1}, Lcom/amazon/kindle/krx/content/IBook;->isFalkorEpisode()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 112
    sget-object v0, Lcom/amazon/kindle/krx/ui/ComponentStatus;->GONE:Lcom/amazon/kindle/krx/ui/ComponentStatus;

    return-object v0

    :cond_1
    const/4 v1, 0x0

    .line 115
    invoke-static {v0, v1}, Lcom/amazon/kcp/library/models/BookCapability;->supportsCapability(Lcom/amazon/kindle/model/content/IListableBook;I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 116
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getApplicationCapabilities()Lcom/amazon/kcp/application/AndroidApplicationCapabilities;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/kcp/application/AndroidApplicationCapabilities;->canPerformSync()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    :cond_2
    if-eqz v1, :cond_3

    .line 117
    sget-object v0, Lcom/amazon/kindle/krx/ui/ComponentStatus;->ENABLED:Lcom/amazon/kindle/krx/ui/ComponentStatus;

    goto :goto_0

    :cond_3
    sget-object v0, Lcom/amazon/kindle/krx/ui/ComponentStatus;->GONE:Lcom/amazon/kindle/krx/ui/ComponentStatus;

    :goto_0
    return-object v0

    .line 119
    :cond_4
    sget-object v0, Lcom/amazon/kindle/krx/ui/ComponentStatus;->ENABLED:Lcom/amazon/kindle/krx/ui/ComponentStatus;

    return-object v0
.end method

.method public getPanelTheme()Lcom/amazon/kindle/krx/ui/panels/PanelTheme;
    .locals 1

    .line 144
    sget-object v0, Lcom/amazon/kindle/krx/ui/panels/PanelTheme;->DEFAULT:Lcom/amazon/kindle/krx/ui/panels/PanelTheme;

    return-object v0
.end method

.method public getTextComponent()Lcom/amazon/kindle/krx/ui/panels/ITextPanelComponent;
    .locals 1

    .line 124
    new-instance v0, Lcom/amazon/kindle/panels/SyncItemPanelProvider$SyncPanelRow$2;

    invoke-direct {v0, p0}, Lcom/amazon/kindle/panels/SyncItemPanelProvider$SyncPanelRow$2;-><init>(Lcom/amazon/kindle/panels/SyncItemPanelProvider$SyncPanelRow;)V

    return-object v0
.end method

.method public onClick()V
    .locals 3

    .line 75
    new-instance v0, Lcom/amazon/kindle/panels/SyncItemPanelProvider$SyncPanelRow$1;

    invoke-direct {v0, p0}, Lcom/amazon/kindle/panels/SyncItemPanelProvider$SyncPanelRow$1;-><init>(Lcom/amazon/kindle/panels/SyncItemPanelProvider$SyncPanelRow;)V

    iput-object v0, p0, Lcom/amazon/kindle/panels/SyncItemPanelProvider$SyncPanelRow;->afterCloseTask:Ljava/lang/Runnable;

    .line 85
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v0

    const-string v1, "SyncItemPanelProvider"

    const-string v2, "ReaderSyncButtonPressed"

    invoke-virtual {v0, v1, v2}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    sget-object v0, Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$ContextType;->LEFT_NAVIGATION_MENU:Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$ContextType;

    sget-object v1, Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$ActionType;->SYNC:Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$ActionType;

    invoke-static {v0, v1}, Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics;->recordMetrics(Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$ContextType;Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$ActionType;)V

    .line 91
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    .line 92
    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getPanelController()Lcom/amazon/kindle/panels/IPanelController;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 94
    sget-object v1, Lcom/amazon/kindle/panels/PanelLocation;->LEFT:Lcom/amazon/kindle/panels/PanelLocation;

    iget-object v2, p0, Lcom/amazon/kindle/panels/SyncItemPanelProvider$SyncPanelRow;->afterCloseTask:Ljava/lang/Runnable;

    invoke-interface {v0, v1, v2}, Lcom/amazon/kindle/panels/IPanelController;->closePanel(Lcom/amazon/kindle/panels/PanelLocation;Ljava/lang/Runnable;)V

    goto :goto_0

    .line 96
    :cond_0
    iget-object v0, p0, Lcom/amazon/kindle/panels/SyncItemPanelProvider$SyncPanelRow;->afterCloseTask:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :goto_0
    return-void
.end method
