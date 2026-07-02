.class Lcom/amazon/kindle/panels/GoToItemPanelProvider$GoToPanelRow;
.super Ljava/lang/Object;
.source "GoToItemPanelProvider.java"

# interfaces
.implements Lcom/amazon/kindle/krx/ui/panels/IPanelRow;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kindle/panels/GoToItemPanelProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "GoToPanelRow"
.end annotation


# instance fields
.field afterCloseTask:Ljava/lang/Runnable;

.field private sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;


# direct methods
.method constructor <init>(Lcom/amazon/kindle/krx/IKindleReaderSDK;)V
    .locals 1

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 59
    iput-object v0, p0, Lcom/amazon/kindle/panels/GoToItemPanelProvider$GoToPanelRow;->afterCloseTask:Ljava/lang/Runnable;

    .line 62
    iput-object p1, p0, Lcom/amazon/kindle/panels/GoToItemPanelProvider$GoToPanelRow;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    return-void
.end method

.method static synthetic access$000(Lcom/amazon/kindle/panels/GoToItemPanelProvider$GoToPanelRow;)Lcom/amazon/kindle/krx/IKindleReaderSDK;
    .locals 0

    .line 57
    iget-object p0, p0, Lcom/amazon/kindle/panels/GoToItemPanelProvider$GoToPanelRow;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

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

    const/4 v0, 0x0

    return-object v0
.end method

.method public getPanelStatus()Lcom/amazon/kindle/krx/ui/ComponentStatus;
    .locals 1

    .line 102
    iget-object v0, p0, Lcom/amazon/kindle/panels/GoToItemPanelProvider$GoToPanelRow;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderManager()Lcom/amazon/kindle/krx/reader/IReaderManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 104
    invoke-interface {v0}, Lcom/amazon/kindle/krx/reader/IReaderManager;->getCurrentBook()Lcom/amazon/kindle/krx/content/IBook;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 105
    invoke-interface {v0}, Lcom/amazon/kindle/krx/content/IBook;->isFalkorEpisode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 106
    sget-object v0, Lcom/amazon/kindle/krx/ui/ComponentStatus;->GONE:Lcom/amazon/kindle/krx/ui/ComponentStatus;

    return-object v0

    .line 109
    :cond_0
    sget-object v0, Lcom/amazon/kindle/krx/ui/ComponentStatus;->ENABLED:Lcom/amazon/kindle/krx/ui/ComponentStatus;

    return-object v0
.end method

.method public getPanelTheme()Lcom/amazon/kindle/krx/ui/panels/PanelTheme;
    .locals 1

    .line 134
    sget-object v0, Lcom/amazon/kindle/krx/ui/panels/PanelTheme;->DEFAULT:Lcom/amazon/kindle/krx/ui/panels/PanelTheme;

    return-object v0
.end method

.method public getTextComponent()Lcom/amazon/kindle/krx/ui/panels/ITextPanelComponent;
    .locals 1

    .line 114
    new-instance v0, Lcom/amazon/kindle/panels/GoToItemPanelProvider$GoToPanelRow$2;

    invoke-direct {v0, p0}, Lcom/amazon/kindle/panels/GoToItemPanelProvider$GoToPanelRow$2;-><init>(Lcom/amazon/kindle/panels/GoToItemPanelProvider$GoToPanelRow;)V

    return-object v0
.end method

.method public onClick()V
    .locals 3

    .line 68
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getReaderController()Lcom/amazon/kcp/reader/IReaderController;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/reader/IReaderController;->getDocViewer()Lcom/amazon/android/docviewer/KindleDocViewer;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 69
    invoke-interface {v0}, Lcom/amazon/android/docviewer/KindleDocViewer;->getBookInfo()Lcom/amazon/kindle/model/content/ILocalBookItem;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Lcom/amazon/android/docviewer/KindleDocViewer;->getBookInfo()Lcom/amazon/kindle/model/content/ILocalBookItem;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kindle/model/content/ILocalBookInfo;->isTextbook()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Lcom/amazon/android/docviewer/KindleDocViewer;->getPageLabelProvider()Lcom/amazon/android/docviewer/IPageLabelProvider;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_1

    .line 72
    :cond_0
    new-instance v1, Lcom/amazon/kindle/panels/GoToItemPanelProvider$GoToPanelRow$1;

    invoke-direct {v1, p0, v0}, Lcom/amazon/kindle/panels/GoToItemPanelProvider$GoToPanelRow$1;-><init>(Lcom/amazon/kindle/panels/GoToItemPanelProvider$GoToPanelRow;Lcom/amazon/android/docviewer/KindleDocViewer;)V

    iput-object v1, p0, Lcom/amazon/kindle/panels/GoToItemPanelProvider$GoToPanelRow;->afterCloseTask:Ljava/lang/Runnable;

    .line 88
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getPanelController()Lcom/amazon/kindle/panels/IPanelController;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 90
    sget-object v1, Lcom/amazon/kindle/panels/PanelLocation;->LEFT:Lcom/amazon/kindle/panels/PanelLocation;

    iget-object v2, p0, Lcom/amazon/kindle/panels/GoToItemPanelProvider$GoToPanelRow;->afterCloseTask:Ljava/lang/Runnable;

    invoke-interface {v0, v1, v2}, Lcom/amazon/kindle/panels/IPanelController;->closePanel(Lcom/amazon/kindle/panels/PanelLocation;Ljava/lang/Runnable;)V

    goto :goto_0

    .line 93
    :cond_1
    iget-object v0, p0, Lcom/amazon/kindle/panels/GoToItemPanelProvider$GoToPanelRow;->afterCloseTask:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 96
    :goto_0
    sget-object v0, Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$ContextType;->LEFT_NAVIGATION_MENU:Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$ContextType;

    sget-object v1, Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$ActionType;->OPEN_GOTO:Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$ActionType;

    invoke-static {v0, v1}, Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics;->recordMetrics(Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$ContextType;Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$ActionType;)V

    :cond_2
    :goto_1
    return-void
.end method
