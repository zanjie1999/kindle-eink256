.class public Lcom/amazon/nwstd/toc/TOCPanelListener;
.super Lcom/amazon/kindle/panels/PanelListener;
.source "TOCPanelListener.java"


# static fields
.field private static final POST_DELAY_IN_MILLIS:I = 0xa


# instance fields
.field private final mActivity:Lcom/amazon/kcp/periodicals/PeriodicalReaderActivity;

.field private final mTocView:Lcom/amazon/nwstd/toc/TOCView;


# direct methods
.method public constructor <init>(Lcom/amazon/nwstd/toc/TOCView;Lcom/amazon/kcp/periodicals/PeriodicalReaderActivity;)V
    .locals 0

    .line 30
    invoke-direct {p0}, Lcom/amazon/kindle/panels/PanelListener;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/amazon/nwstd/toc/TOCPanelListener;->mTocView:Lcom/amazon/nwstd/toc/TOCView;

    .line 32
    iput-object p2, p0, Lcom/amazon/nwstd/toc/TOCPanelListener;->mActivity:Lcom/amazon/kcp/periodicals/PeriodicalReaderActivity;

    return-void
.end method

.method static synthetic access$000(Lcom/amazon/nwstd/toc/TOCPanelListener;)Lcom/amazon/kcp/periodicals/PeriodicalReaderActivity;
    .locals 0

    .line 11
    iget-object p0, p0, Lcom/amazon/nwstd/toc/TOCPanelListener;->mActivity:Lcom/amazon/kcp/periodicals/PeriodicalReaderActivity;

    return-object p0
.end method

.method static synthetic access$100(Lcom/amazon/nwstd/toc/TOCPanelListener;)Lcom/amazon/nwstd/toc/TOCView;
    .locals 0

    .line 11
    iget-object p0, p0, Lcom/amazon/nwstd/toc/TOCPanelListener;->mTocView:Lcom/amazon/nwstd/toc/TOCView;

    return-object p0
.end method

.method private highLightCurrentArticle(I)V
    .locals 4

    .line 48
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/amazon/nwstd/toc/TOCPanelListener$1;

    invoke-direct {v1, p0}, Lcom/amazon/nwstd/toc/TOCPanelListener$1;-><init>(Lcom/amazon/nwstd/toc/TOCPanelListener;)V

    int-to-long v2, p1

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method


# virtual methods
.method public onClosed()V
    .locals 1

    .line 85
    iget-object v0, p0, Lcom/amazon/nwstd/toc/TOCPanelListener;->mActivity:Lcom/amazon/kcp/periodicals/PeriodicalReaderActivity;

    if-eqz v0, :cond_0

    .line 86
    invoke-virtual {v0}, Lcom/amazon/kcp/periodicals/PeriodicalReaderActivity;->invalidatCustomActionButtons()V

    :cond_0
    return-void
.end method

.method public onOpened()V
    .locals 1

    const/4 v0, 0x0

    .line 39
    invoke-direct {p0, v0}, Lcom/amazon/nwstd/toc/TOCPanelListener;->highLightCurrentArticle(I)V

    .line 40
    invoke-super {p0}, Lcom/amazon/kindle/panels/PanelListener;->onOpened()V

    .line 41
    sget-object v0, Lcom/amazon/nwstd/performance/trapz/NwstdPerformanceConstants;->OPEN_SIDE_PANEL_LIST_OF_ARTICLES:Lcom/amazon/nwstd/performance/trapz/NwstdPerformanceConstants;

    invoke-static {v0}, Lcom/amazon/nwstd/performance/trapz/PerformanceHelper;->endTrace(Lcom/amazon/nwstd/performance/trapz/NwstdPerformanceConstants;)V

    return-void
.end method

.method public onOpening()V
    .locals 2

    .line 63
    iget-object v0, p0, Lcom/amazon/nwstd/toc/TOCPanelListener;->mActivity:Lcom/amazon/kcp/periodicals/PeriodicalReaderActivity;

    if-eqz v0, :cond_2

    .line 64
    invoke-virtual {v0}, Lcom/amazon/kcp/periodicals/PeriodicalReaderActivity;->invalidatCustomActionButtons()V

    .line 65
    iget-object v0, p0, Lcom/amazon/nwstd/toc/TOCPanelListener;->mActivity:Lcom/amazon/kcp/periodicals/PeriodicalReaderActivity;

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/ReaderActivity;->getReaderLayout()Lcom/amazon/kcp/reader/ui/ReaderLayout;

    move-result-object v0

    check-cast v0, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;

    if-eqz v0, :cond_1

    .line 67
    invoke-virtual {v0}, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->isBookmarkListOpened()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 68
    invoke-virtual {v0}, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->hideBookmarkList()V

    .line 70
    :cond_0
    invoke-virtual {v0}, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->isViewOptionsOpened()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 71
    invoke-virtual {v0}, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->hideViewOptions()V

    .line 75
    :cond_1
    iget-object v0, p0, Lcom/amazon/nwstd/toc/TOCPanelListener;->mActivity:Lcom/amazon/kcp/periodicals/PeriodicalReaderActivity;

    invoke-virtual {v0}, Lcom/amazon/kcp/periodicals/PeriodicalReaderActivity;->updateCustomButtons()V

    .line 77
    :cond_2
    iget-object v0, p0, Lcom/amazon/nwstd/toc/TOCPanelListener;->mTocView:Lcom/amazon/nwstd/toc/TOCView;

    if-eqz v0, :cond_3

    .line 78
    invoke-virtual {v0}, Lcom/amazon/nwstd/toc/TOCView;->onOpening()V

    const/16 v0, 0xa

    .line 79
    invoke-direct {p0, v0}, Lcom/amazon/nwstd/toc/TOCPanelListener;->highLightCurrentArticle(I)V

    :cond_3
    return-void
.end method
