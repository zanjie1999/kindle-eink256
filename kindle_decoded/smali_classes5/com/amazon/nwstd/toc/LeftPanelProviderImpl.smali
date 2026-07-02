.class public Lcom/amazon/nwstd/toc/LeftPanelProviderImpl;
.super Lcom/amazon/kindle/panels/PanelProvider;
.source "LeftPanelProviderImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/nwstd/toc/LeftPanelProviderImpl$LeftPanelTOCOpenArticleListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/amazon/kindle/panels/PanelProvider<",
        "Lcom/amazon/kcp/periodicals/PeriodicalReaderActivity;",
        ">;"
    }
.end annotation


# instance fields
.field private final mActivity:Lcom/amazon/kcp/periodicals/PeriodicalReaderActivity;

.field private final mPanelListener:Lcom/amazon/nwstd/toc/TOCPanelListener;

.field private mTocView:Lcom/amazon/nwstd/toc/TOCView;


# direct methods
.method public constructor <init>(Lcom/amazon/kindle/panels/PanelProviderState;)V
    .locals 2

    .line 49
    invoke-direct {p0, p1}, Lcom/amazon/kindle/panels/PanelProvider;-><init>(Lcom/amazon/kindle/panels/PanelProviderState;)V

    .line 50
    invoke-virtual {p1}, Lcom/amazon/kindle/panels/PanelProviderState;->getActivity()Landroid/app/Activity;

    move-result-object p1

    check-cast p1, Lcom/amazon/kcp/periodicals/PeriodicalReaderActivity;

    iput-object p1, p0, Lcom/amazon/nwstd/toc/LeftPanelProviderImpl;->mActivity:Lcom/amazon/kcp/periodicals/PeriodicalReaderActivity;

    .line 51
    invoke-direct {p0}, Lcom/amazon/nwstd/toc/LeftPanelProviderImpl;->createView()V

    .line 52
    new-instance p1, Lcom/amazon/nwstd/toc/TOCPanelListener;

    iget-object v0, p0, Lcom/amazon/nwstd/toc/LeftPanelProviderImpl;->mTocView:Lcom/amazon/nwstd/toc/TOCView;

    iget-object v1, p0, Lcom/amazon/nwstd/toc/LeftPanelProviderImpl;->mActivity:Lcom/amazon/kcp/periodicals/PeriodicalReaderActivity;

    invoke-direct {p1, v0, v1}, Lcom/amazon/nwstd/toc/TOCPanelListener;-><init>(Lcom/amazon/nwstd/toc/TOCView;Lcom/amazon/kcp/periodicals/PeriodicalReaderActivity;)V

    iput-object p1, p0, Lcom/amazon/nwstd/toc/LeftPanelProviderImpl;->mPanelListener:Lcom/amazon/nwstd/toc/TOCPanelListener;

    return-void
.end method

.method static synthetic access$100(Lcom/amazon/nwstd/toc/LeftPanelProviderImpl;)Lcom/amazon/kcp/periodicals/PeriodicalReaderActivity;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/amazon/nwstd/toc/LeftPanelProviderImpl;->mActivity:Lcom/amazon/kcp/periodicals/PeriodicalReaderActivity;

    return-object p0
.end method

.method static synthetic access$200(Lcom/amazon/nwstd/toc/LeftPanelProviderImpl;)Landroid/app/Activity;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/amazon/kindle/panels/PanelProvider;->activity:Landroid/app/Activity;

    return-object p0
.end method

.method static synthetic access$300(Lcom/amazon/nwstd/toc/LeftPanelProviderImpl;)Landroid/app/Activity;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/amazon/kindle/panels/PanelProvider;->activity:Landroid/app/Activity;

    return-object p0
.end method

.method private createView()V
    .locals 7

    .line 77
    iget-object v0, p0, Lcom/amazon/nwstd/toc/LeftPanelProviderImpl;->mActivity:Lcom/amazon/kcp/periodicals/PeriodicalReaderActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    .line 78
    sget v1, Lcom/amazon/kindle/newsstand/core/R$layout;->periodical_toc_layout:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/amazon/nwstd/toc/TOCView;

    iput-object v0, p0, Lcom/amazon/nwstd/toc/LeftPanelProviderImpl;->mTocView:Lcom/amazon/nwstd/toc/TOCView;

    .line 81
    new-instance v0, Lcom/amazon/kcp/periodicals/controllers/PeriodicalContentListController;

    invoke-direct {v0}, Lcom/amazon/kcp/periodicals/controllers/PeriodicalContentListController;-><init>()V

    .line 82
    iget-object v1, p0, Lcom/amazon/nwstd/toc/LeftPanelProviderImpl;->mActivity:Lcom/amazon/kcp/periodicals/PeriodicalReaderActivity;

    invoke-virtual {v1}, Lcom/amazon/kcp/reader/ReaderActivity;->getDocViewer()Lcom/amazon/android/docviewer/KindleDocViewer;

    move-result-object v1

    check-cast v1, Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer;

    .line 83
    iget-object v3, p0, Lcom/amazon/nwstd/toc/LeftPanelProviderImpl;->mActivity:Lcom/amazon/kcp/periodicals/PeriodicalReaderActivity;

    invoke-virtual {v0, v3, v1}, Lcom/amazon/kcp/periodicals/controllers/PeriodicalContentListController;->initialize(Lcom/amazon/kcp/periodicals/PeriodicalReaderActivity;Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer;)V

    .line 86
    iget-object v3, p0, Lcom/amazon/nwstd/toc/LeftPanelProviderImpl;->mActivity:Lcom/amazon/kcp/periodicals/PeriodicalReaderActivity;

    invoke-virtual {v3}, Lcom/amazon/kcp/redding/ReddingActivity;->getAppController()Lcom/amazon/kcp/application/IAndroidApplicationController;

    move-result-object v3

    invoke-interface {v3}, Lcom/amazon/kcp/application/IKindleApplicationController;->getImageFactory()Lcom/amazon/kindle/util/drawing/ImageFactory;

    move-result-object v3

    check-cast v3, Lcom/amazon/android/system/drawing/AndroidImageFactory;

    .line 87
    new-instance v4, Lcom/amazon/nwstd/toc/LeftPanelProviderImpl$LeftPanelTOCOpenArticleListener;

    invoke-direct {v4, p0, v2}, Lcom/amazon/nwstd/toc/LeftPanelProviderImpl$LeftPanelTOCOpenArticleListener;-><init>(Lcom/amazon/nwstd/toc/LeftPanelProviderImpl;Lcom/amazon/nwstd/toc/LeftPanelProviderImpl$1;)V

    .line 88
    iget-object v2, p0, Lcom/amazon/nwstd/toc/LeftPanelProviderImpl;->mTocView:Lcom/amazon/nwstd/toc/TOCView;

    invoke-virtual {v1}, Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer;->getTOC()Lcom/amazon/android/docviewer/IKindleTOC;

    move-result-object v5

    check-cast v5, Lcom/amazon/nwstd/toc/IPeriodicalTOC;

    invoke-virtual {v1}, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->getDocument()Lcom/amazon/android/docviewer/KindleDoc;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/android/docviewer/KindleDoc;->getBookInfo()Lcom/amazon/kindle/model/content/ILocalBookItem;

    move-result-object v1

    const/4 v6, 0x0

    invoke-virtual {v2, v5, v1, v3, v6}, Lcom/amazon/nwstd/toc/TOCView;->initialize(Lcom/amazon/nwstd/toc/IPeriodicalTOC;Lcom/amazon/kindle/model/content/ILocalBookItem;Lcom/amazon/android/system/drawing/AndroidImageFactory;Z)V

    .line 89
    iget-object v1, p0, Lcom/amazon/nwstd/toc/LeftPanelProviderImpl;->mTocView:Lcom/amazon/nwstd/toc/TOCView;

    invoke-virtual {v0}, Lcom/amazon/kcp/periodicals/controllers/PeriodicalContentListController;->getEventHandler()Lcom/amazon/kcp/periodicals/controllers/IPeriodicalTOCItemEvents;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/amazon/nwstd/toc/TOCView;->setEventHandler(Lcom/amazon/kcp/periodicals/controllers/IPeriodicalTOCItemEvents;)V

    .line 90
    iget-object v0, p0, Lcom/amazon/nwstd/toc/LeftPanelProviderImpl;->mTocView:Lcom/amazon/nwstd/toc/TOCView;

    invoke-virtual {v0, v4}, Lcom/amazon/nwstd/toc/TOCView;->setOpenArticleListener(Lcom/amazon/nwstd/toc/TOCListOpenArticleListener;)V

    .line 91
    iget-object v0, p0, Lcom/amazon/nwstd/toc/LeftPanelProviderImpl;->mTocView:Lcom/amazon/nwstd/toc/TOCView;

    new-instance v1, Lcom/amazon/nwstd/toc/LeftPanelProviderImpl$1;

    invoke-direct {v1, p0}, Lcom/amazon/nwstd/toc/LeftPanelProviderImpl$1;-><init>(Lcom/amazon/nwstd/toc/LeftPanelProviderImpl;)V

    invoke-virtual {v0, v1}, Lcom/amazon/nwstd/toc/TOCView;->setTocOverlaysController(Lcom/amazon/nwstd/toc/ITocOverlaysController;)V

    .line 104
    iget-object v0, p0, Lcom/amazon/nwstd/toc/LeftPanelProviderImpl;->mTocView:Lcom/amazon/nwstd/toc/TOCView;

    new-instance v1, Lcom/amazon/nwstd/toc/LeftPanelProviderImpl$2;

    invoke-direct {v1, p0}, Lcom/amazon/nwstd/toc/LeftPanelProviderImpl$2;-><init>(Lcom/amazon/nwstd/toc/LeftPanelProviderImpl;)V

    invoke-virtual {v0, v1}, Lcom/amazon/nwstd/toc/TOCView;->setBackToLibraryCallback(Lcom/amazon/foundation/ICallback;)V

    .line 114
    iget-object v0, p0, Lcom/amazon/nwstd/toc/LeftPanelProviderImpl;->mTocView:Lcom/amazon/nwstd/toc/TOCView;

    new-instance v1, Lcom/amazon/nwstd/toc/LeftPanelProviderImpl$3;

    invoke-direct {v1, p0}, Lcom/amazon/nwstd/toc/LeftPanelProviderImpl$3;-><init>(Lcom/amazon/nwstd/toc/LeftPanelProviderImpl;)V

    invoke-virtual {v0, v1}, Lcom/amazon/nwstd/toc/TOCView;->setSearchCallback(Lcom/amazon/foundation/ICallback;)V

    .line 121
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getPanelController()Lcom/amazon/kindle/panels/IPanelController;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/panels/IPanelController;->getSidePanelLayout()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/drawerlayout/widget/DrawerLayout;

    .line 122
    sget v1, Lcom/amazon/kindle/newsstand/core/R$id;->reader_left_panel:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    if-eqz v1, :cond_0

    .line 124
    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;

    .line 125
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v3, Lcom/amazon/kindle/newsstand/core/R$dimen;->replica_reader_nav_panel_width:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, v2, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 126
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 1

    .line 136
    iget-object v0, p0, Lcom/amazon/nwstd/toc/LeftPanelProviderImpl;->mTocView:Lcom/amazon/nwstd/toc/TOCView;

    if-eqz v0, :cond_0

    .line 137
    invoke-virtual {v0}, Lcom/amazon/nwstd/toc/TOCView;->destroy()V

    const/4 v0, 0x0

    .line 138
    iput-object v0, p0, Lcom/amazon/nwstd/toc/LeftPanelProviderImpl;->mTocView:Lcom/amazon/nwstd/toc/TOCView;

    :cond_0
    return-void
.end method

.method public getListener()Lcom/amazon/kindle/panels/PanelListener;
    .locals 1

    .line 68
    iget-object v0, p0, Lcom/amazon/nwstd/toc/LeftPanelProviderImpl;->mPanelListener:Lcom/amazon/nwstd/toc/TOCPanelListener;

    return-object v0
.end method

.method public getView()Landroid/view/View;
    .locals 1

    .line 60
    iget-object v0, p0, Lcom/amazon/nwstd/toc/LeftPanelProviderImpl;->mTocView:Lcom/amazon/nwstd/toc/TOCView;

    return-object v0
.end method
