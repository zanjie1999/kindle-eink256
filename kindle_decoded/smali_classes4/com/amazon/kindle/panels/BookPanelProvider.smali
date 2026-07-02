.class public Lcom/amazon/kindle/panels/BookPanelProvider;
.super Lcom/amazon/kindle/panels/BasePanelProvider;
.source "BookPanelProvider.java"


# static fields
.field private static final CUSTOM_SCROLL_DURATION:I = 0x2bc

.field private static final CUSTOM_SCROLL_DURATION_MIN:I = 0xc8

.field private static final TAG:Ljava/lang/String;

.field private static final TAPS_FOR_SHOWING_FORMAT_EASTER_EGG:I = 0x7


# instance fields
.field private adapter:Lcom/amazon/kindle/panels/LinearTOCTreeViewAdapter;

.field private falkorCustomPanelItem:Lcom/amazon/kindle/panels/IPanelCustomItem;

.field private falkorCustomView:Landroid/view/View;

.field private isTOCItemAdded:Z

.field private volatile isTOCTitleHeaderAdded:Z

.field private volatile populateLater:Z

.field private tapCountForEasterEgg:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 51
    const-class v0, Lcom/amazon/kindle/panels/BookPanelProvider;

    invoke-static {v0}, Lcom/amazon/kindle/log/Log;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kindle/panels/BookPanelProvider;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/amazon/kindle/panels/PanelProviderState;)V
    .locals 0

    .line 54
    invoke-direct {p0, p1}, Lcom/amazon/kindle/panels/BasePanelProvider;-><init>(Lcom/amazon/kindle/panels/PanelProviderState;)V

    const/4 p1, 0x0

    .line 63
    iput p1, p0, Lcom/amazon/kindle/panels/BookPanelProvider;->tapCountForEasterEgg:I

    .line 71
    iput-boolean p1, p0, Lcom/amazon/kindle/panels/BookPanelProvider;->populateLater:Z

    .line 76
    iput-boolean p1, p0, Lcom/amazon/kindle/panels/BookPanelProvider;->isTOCTitleHeaderAdded:Z

    .line 82
    iput-boolean p1, p0, Lcom/amazon/kindle/panels/BookPanelProvider;->isTOCItemAdded:Z

    return-void
.end method

.method static synthetic access$000(Lcom/amazon/kindle/panels/BookPanelProvider;)I
    .locals 0

    .line 49
    iget p0, p0, Lcom/amazon/kindle/panels/BookPanelProvider;->tapCountForEasterEgg:I

    return p0
.end method

.method static synthetic access$002(Lcom/amazon/kindle/panels/BookPanelProvider;I)I
    .locals 0

    .line 49
    iput p1, p0, Lcom/amazon/kindle/panels/BookPanelProvider;->tapCountForEasterEgg:I

    return p1
.end method

.method static synthetic access$008(Lcom/amazon/kindle/panels/BookPanelProvider;)I
    .locals 2

    .line 49
    iget v0, p0, Lcom/amazon/kindle/panels/BookPanelProvider;->tapCountForEasterEgg:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/amazon/kindle/panels/BookPanelProvider;->tapCountForEasterEgg:I

    return v0
.end method

.method static synthetic access$101(Lcom/amazon/kindle/panels/BookPanelProvider;)Lcom/amazon/android/docviewer/KindleDocViewer;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/amazon/kindle/panels/BasePanelProvider;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    return-object p0
.end method

.method static synthetic access$200()Ljava/lang/String;
    .locals 1

    .line 49
    sget-object v0, Lcom/amazon/kindle/panels/BookPanelProvider;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private addTOCCover()V
    .locals 2

    .line 454
    iget-object v0, p0, Lcom/amazon/kindle/panels/BasePanelProvider;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    if-nez v0, :cond_0

    return-void

    .line 457
    :cond_0
    invoke-virtual {p0}, Lcom/amazon/kindle/panels/BookPanelProvider;->getTOCAdapter()Lcom/amazon/kindle/panels/LinearTOCTreeViewAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/kindle/panels/LinearTOCTreeViewAdapter;->getTree()Lcom/amazon/android/docviewer/TreeTOCItem$Tree;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kindle/panels/BasePanelProvider;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    invoke-virtual {v0, v1}, Lcom/amazon/android/docviewer/TreeTOCItem$Tree;->addTOCCover(Lcom/amazon/android/docviewer/KindleDocViewer;)Lcom/amazon/android/docviewer/TreeTOCItem;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 459
    iget-object v1, p0, Lcom/amazon/kindle/panels/BasePanelProvider;->coverOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/amazon/android/docviewer/TreeTOCItem;->setClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    return-void
.end method

.method private addTOCGotoBeginning()V
    .locals 2

    .line 469
    invoke-static {}, Lcom/amazon/kcp/debug/NeutronUtilManager;->getInstance()Lcom/amazon/kcp/debug/INeutronUtil;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/debug/INeutronUtil;->isNeutronPhase1EnabledInReader()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 470
    iget-object v0, p0, Lcom/amazon/kindle/panels/BasePanelProvider;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    invoke-interface {v0}, Lcom/amazon/android/docviewer/KindleDocViewer;->getBookInfo()Lcom/amazon/kindle/model/content/ILocalBookItem;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/model/content/ILocalBookInfo;->isFalkorEpisode()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 475
    :cond_0
    invoke-virtual {p0}, Lcom/amazon/kindle/panels/BookPanelProvider;->getTOCAdapter()Lcom/amazon/kindle/panels/LinearTOCTreeViewAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/kindle/panels/LinearTOCTreeViewAdapter;->getTree()Lcom/amazon/android/docviewer/TreeTOCItem$Tree;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kindle/panels/BasePanelProvider;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    invoke-virtual {v0, v1}, Lcom/amazon/android/docviewer/TreeTOCItem$Tree;->addTOCGoToBeginning(Lcom/amazon/android/docviewer/KindleDocViewer;)Lcom/amazon/android/docviewer/TreeTOCItem;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 477
    invoke-static {}, Lcom/amazon/android/tableofcontents/TableOfContentsUtil;->getBeginningEntryOnClickListener()Landroid/view/View$OnClickListener;

    move-result-object v1

    .line 478
    invoke-virtual {v0, v1}, Lcom/amazon/android/docviewer/TreeTOCItem;->setClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    return-void
.end method

.method private addTOCHeader()V
    .locals 5

    .line 401
    invoke-static {}, Lcom/amazon/kcp/debug/NeutronUtilManager;->getInstance()Lcom/amazon/kcp/debug/INeutronUtil;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/debug/INeutronUtil;->isNeutronPhase1EnabledInReader()Z

    move-result v0

    if-eqz v0, :cond_0

    sget v0, Lcom/amazon/kindle/krl/R$string;->newtron_toc_subhead_title:I

    goto :goto_0

    :cond_0
    sget v0, Lcom/amazon/kindle/krl/R$string;->toc_subhead_title:I

    .line 403
    :goto_0
    iget-object v1, p0, Lcom/amazon/kindle/panels/BasePanelProvider;->activity:Lcom/amazon/kcp/reader/ReaderActivity;

    invoke-virtual {v1}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 404
    iget-object v1, p0, Lcom/amazon/kindle/panels/BasePanelProvider;->activity:Lcom/amazon/kcp/reader/ReaderActivity;

    invoke-static {v1, v0}, Lcom/amazon/kindle/panels/NavPanelViewFactory;->inflateReaderNavPanelSubhead(Landroid/content/Context;Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 405
    sget v1, Lcom/amazon/kindle/krl/R$id;->reader_drawer_toc_subhead:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setId(I)V

    .line 407
    invoke-static {}, Lcom/amazon/kcp/debug/NeutronUtilManager;->getInstance()Lcom/amazon/kcp/debug/INeutronUtil;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kcp/debug/INeutronUtil;->isNeutronPhase1EnabledInReader()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    .line 408
    iget-object v1, p0, Lcom/amazon/kindle/panels/BasePanelProvider;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    invoke-interface {v1}, Lcom/amazon/android/docviewer/KindleDocViewer;->getBookInfo()Lcom/amazon/kindle/model/content/ILocalBookItem;

    move-result-object v1

    invoke-static {v1}, Lcom/amazon/kindle/utils/RTLUtils;->shouldDisplayTextViewOrBookmarkAsRTL(Lcom/amazon/kindle/model/content/ILocalBookItem;)Z

    move-result v1

    .line 410
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutDirection(I)V

    if-ne v1, v2, :cond_1

    const/4 v1, 0x4

    goto :goto_1

    :cond_1
    const/4 v1, 0x3

    .line 413
    :goto_1
    invoke-virtual {v0, v1}, Landroid/view/View;->setTextDirection(I)V

    .line 416
    :cond_2
    iget-object v1, p0, Lcom/amazon/kindle/panels/BasePanelProvider;->navPanelTOCListView:Landroid/widget/ListView;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v1, v0, v3, v4}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 417
    iput-boolean v2, p0, Lcom/amazon/kindle/panels/BookPanelProvider;->isTOCTitleHeaderAdded:Z

    return-void
.end method

.method private addTOCItem()V
    .locals 11

    .line 380
    iget-object v0, p0, Lcom/amazon/kindle/panels/BasePanelProvider;->activity:Lcom/amazon/kcp/reader/ReaderActivity;

    invoke-virtual {v0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/amazon/kindle/krl/R$string;->goto_toc:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 382
    iget-object v2, p0, Lcom/amazon/kindle/panels/BasePanelProvider;->activity:Lcom/amazon/kcp/reader/ReaderActivity;

    new-instance v6, Lcom/amazon/kindle/panels/BookPanelProvider$5;

    invoke-direct {v6, p0}, Lcom/amazon/kindle/panels/BookPanelProvider$5;-><init>(Lcom/amazon/kindle/panels/BookPanelProvider;)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-static/range {v2 .. v10}, Lcom/amazon/kindle/panels/NavPanelViewFactory;->inflateReaderNavPanelItem(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Landroid/view/View$OnClickListener;IZIZ)Landroid/view/View;

    move-result-object v0

    .line 396
    iget-object v1, p0, Lcom/amazon/kindle/panels/BasePanelProvider;->navPanelItemsView:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    const/4 v0, 0x1

    .line 397
    iput-boolean v0, p0, Lcom/amazon/kindle/panels/BookPanelProvider;->isTOCItemAdded:Z

    return-void
.end method

.method private getHeaderLayout(Lcom/amazon/kindle/krx/content/IBook;)Landroid/widget/LinearLayout;
    .locals 4

    .line 112
    iget-object v0, p0, Lcom/amazon/kindle/panels/BasePanelProvider;->activity:Lcom/amazon/kcp/reader/ReaderActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/amazon/kindle/krl/R$layout;->reader_nav_panel_close_book:I

    iget-object v2, p0, Lcom/amazon/kindle/panels/BasePanelProvider;->rootView:Landroid/view/ViewGroup;

    const/4 v3, 0x0

    .line 113
    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 114
    sget v1, Lcom/amazon/kindle/krl/R$id;->close_book_header_text:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    if-nez v1, :cond_0

    return-object v0

    .line 119
    :cond_0
    sget v2, Lcom/amazon/kindle/krl/R$string;->nav_panel_header_close_book:I

    if-eqz p1, :cond_1

    .line 120
    invoke-interface {p1}, Lcom/amazon/kindle/krx/content/IBook;->isFalkorEpisode()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 121
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getFontFactory()Lcom/mobipocket/android/drawing/AndroidFontFactory;

    move-result-object p1

    sget-object v2, Lcom/mobipocket/android/drawing/FontFamily;->EMBER:Lcom/mobipocket/android/drawing/FontFamily;

    invoke-virtual {p1, v2}, Lcom/mobipocket/android/drawing/AndroidFontFactory;->getTypeFace(Lcom/mobipocket/android/drawing/FontFamily;)Landroid/graphics/Typeface;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 122
    sget v2, Lcom/amazon/kindle/krl/R$string;->nav_panel_header_close_story:I

    .line 124
    :cond_1
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    return-object v0
.end method

.method private updateCurrentFalkorEpisode(Lcom/amazon/kindle/panels/IPanelCustomItem;Landroid/view/View;)V
    .locals 2

    .line 295
    iget-object v0, p0, Lcom/amazon/kindle/panels/BasePanelProvider;->navPanelTOCListView:Landroid/widget/ListView;

    new-instance v1, Lcom/amazon/kindle/panels/BookPanelProvider$3;

    invoke-direct {v1, p0, p1, p2}, Lcom/amazon/kindle/panels/BookPanelProvider$3;-><init>(Lcom/amazon/kindle/panels/BookPanelProvider;Lcom/amazon/kindle/panels/IPanelCustomItem;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->post(Ljava/lang/Runnable;)Z

    return-void
.end method


# virtual methods
.method protected eventAction(Lcom/amazon/kindle/krx/events/IEvent;)V
    .locals 2

    .line 353
    instance-of v0, p1, Lcom/amazon/kcp/reader/TableOfContentsEvent;

    if-eqz v0, :cond_1

    .line 354
    check-cast p1, Lcom/amazon/kcp/reader/TableOfContentsEvent;

    invoke-virtual {p1}, Lcom/amazon/kcp/reader/TableOfContentsEvent;->getType()Lcom/amazon/kcp/reader/TableOfContentsEvent$Type;

    move-result-object v0

    sget-object v1, Lcom/amazon/kcp/reader/TableOfContentsEvent$Type;->OPENING:Lcom/amazon/kcp/reader/TableOfContentsEvent$Type;

    if-ne v0, v1, :cond_0

    const/4 p1, 0x0

    .line 360
    iput p1, p0, Lcom/amazon/kindle/panels/BookPanelProvider;->tapCountForEasterEgg:I

    goto :goto_0

    .line 361
    :cond_0
    invoke-virtual {p1}, Lcom/amazon/kcp/reader/TableOfContentsEvent;->getType()Lcom/amazon/kcp/reader/TableOfContentsEvent$Type;

    move-result-object p1

    sget-object v0, Lcom/amazon/kcp/reader/TableOfContentsEvent$Type;->OPENED:Lcom/amazon/kcp/reader/TableOfContentsEvent$Type;

    if-ne p1, v0, :cond_1

    .line 362
    invoke-static {}, Lcom/amazon/kcp/debug/NeutronUtilManager;->getInstance()Lcom/amazon/kcp/debug/INeutronUtil;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kcp/debug/INeutronUtil;->isNeutronPhase1EnabledInReader()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/amazon/kindle/panels/BasePanelProvider;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    .line 363
    invoke-interface {p1}, Lcom/amazon/android/docviewer/KindleDocViewer;->getBookInfo()Lcom/amazon/kindle/model/content/ILocalBookItem;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kindle/model/content/ILocalBookInfo;->isFalkorEpisode()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 364
    iget-object p1, p0, Lcom/amazon/kindle/panels/BookPanelProvider;->falkorCustomPanelItem:Lcom/amazon/kindle/panels/IPanelCustomItem;

    iget-object v0, p0, Lcom/amazon/kindle/panels/BookPanelProvider;->falkorCustomView:Landroid/view/View;

    invoke-direct {p0, p1, v0}, Lcom/amazon/kindle/panels/BookPanelProvider;->updateCurrentFalkorEpisode(Lcom/amazon/kindle/panels/IPanelCustomItem;Landroid/view/View;)V

    :cond_1
    :goto_0
    return-void
.end method

.method protected getCustomPanelButtons(Lcom/amazon/kindle/krx/ui/panels/PanelKey;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kindle/krx/ui/panels/PanelKey;",
            ")",
            "Ljava/util/List<",
            "Lcom/amazon/kindle/panels/IPanelCustomItem;",
            ">;"
        }
    .end annotation

    .line 348
    sget-object p1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object p1
.end method

.method protected bridge synthetic getTOCAdapter()Landroid/widget/ListAdapter;
    .locals 1

    .line 49
    invoke-virtual {p0}, Lcom/amazon/kindle/panels/BookPanelProvider;->getTOCAdapter()Lcom/amazon/kindle/panels/LinearTOCTreeViewAdapter;

    move-result-object v0

    return-object v0
.end method

.method protected getTOCAdapter()Lcom/amazon/kindle/panels/LinearTOCTreeViewAdapter;
    .locals 2

    .line 373
    iget-object v0, p0, Lcom/amazon/kindle/panels/BookPanelProvider;->adapter:Lcom/amazon/kindle/panels/LinearTOCTreeViewAdapter;

    if-nez v0, :cond_0

    .line 374
    new-instance v0, Lcom/amazon/kindle/panels/LinearTOCTreeViewAdapter;

    iget-object v1, p0, Lcom/amazon/kindle/panels/BasePanelProvider;->activity:Lcom/amazon/kcp/reader/ReaderActivity;

    invoke-direct {v0, v1}, Lcom/amazon/kindle/panels/LinearTOCTreeViewAdapter;-><init>(Lcom/amazon/kcp/reader/ReaderActivity;)V

    iput-object v0, p0, Lcom/amazon/kindle/panels/BookPanelProvider;->adapter:Lcom/amazon/kindle/panels/LinearTOCTreeViewAdapter;

    .line 376
    :cond_0
    iget-object v0, p0, Lcom/amazon/kindle/panels/BookPanelProvider;->adapter:Lcom/amazon/kindle/panels/LinearTOCTreeViewAdapter;

    return-object v0
.end method

.method protected setupBookInfo()V
    .locals 7

    .line 131
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getKindleReaderSDK()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 132
    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderManager()Lcom/amazon/kindle/krx/reader/IReaderManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/reader/IReaderManager;->getCurrentBook()Lcom/amazon/kindle/krx/content/IBook;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 133
    invoke-interface {v0}, Lcom/amazon/kindle/krx/content/IBook;->isFalkorEpisode()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    const/4 v0, 0x1

    const-string v1, "BookPanelProvider.setupBookInfo()"

    .line 137
    invoke-static {v1, v0}, Lcom/amazon/kindle/util/PerfHelper;->LogPerfMarker(Ljava/lang/String;Z)V

    .line 138
    iget-object v2, p0, Lcom/amazon/kindle/panels/BasePanelProvider;->rootView:Landroid/view/ViewGroup;

    sget v3, Lcom/amazon/kindle/krl/R$id;->reader_nav_panel_book_title:I

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 139
    iget-object v3, p0, Lcom/amazon/kindle/panels/BasePanelProvider;->rootView:Landroid/view/ViewGroup;

    sget v4, Lcom/amazon/kindle/krl/R$id;->reader_nav_panel_book_author:I

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 140
    iget-object v4, p0, Lcom/amazon/kindle/panels/BasePanelProvider;->rootView:Landroid/view/ViewGroup;

    sget v5, Lcom/amazon/kindle/krl/R$id;->reader_nav_panel_book_cover:I

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageButton;

    if-eqz v4, :cond_2

    .line 142
    new-instance v5, Lcom/amazon/kindle/panels/BookPanelProvider$1;

    invoke-direct {v5, p0}, Lcom/amazon/kindle/panels/BookPanelProvider$1;-><init>(Lcom/amazon/kindle/panels/BookPanelProvider;)V

    invoke-virtual {v4, v5}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 170
    :cond_2
    iget-object v5, p0, Lcom/amazon/kindle/panels/BasePanelProvider;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    invoke-interface {v5}, Lcom/amazon/android/docviewer/KindleDocViewer;->getBookInfo()Lcom/amazon/kindle/model/content/ILocalBookItem;

    move-result-object v5

    .line 171
    invoke-interface {v5}, Lcom/amazon/kindle/model/content/IListableBook;->getTitle()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 172
    invoke-interface {v5}, Lcom/amazon/kindle/model/content/IListableBook;->getAuthor()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 175
    iget-object v2, p0, Lcom/amazon/kindle/panels/BasePanelProvider;->coverImageLoader:Landroid/os/AsyncTask;

    new-array v0, v0, [Landroid/widget/ImageView;

    const/4 v3, 0x0

    aput-object v4, v0, v3

    invoke-virtual {v2, v0}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 176
    invoke-static {v1, v3}, Lcom/amazon/kindle/util/PerfHelper;->LogPerfMarker(Ljava/lang/String;Z)V

    return-void
.end method

.method protected setupCustomPanelItems()V
    .locals 19

    move-object/from16 v0, p0

    const/4 v1, 0x1

    const-string v2, "BookPanelProvider.setupCustomPanelItems()"

    .line 216
    invoke-static {v2, v1}, Lcom/amazon/kindle/util/PerfHelper;->LogPerfMarker(Ljava/lang/String;Z)V

    .line 217
    iget-object v3, v0, Lcom/amazon/kindle/panels/BasePanelProvider;->rootView:Landroid/view/ViewGroup;

    sget v4, Lcom/amazon/kindle/krl/R$id;->reader_nav_panel_custom_items:I

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    if-eqz v3, :cond_0

    .line 219
    invoke-virtual {v3}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 221
    :cond_0
    invoke-static {}, Lcom/amazon/kcp/debug/NeutronUtilManager;->getInstance()Lcom/amazon/kcp/debug/INeutronUtil;

    move-result-object v4

    invoke-interface {v4}, Lcom/amazon/kcp/debug/INeutronUtil;->isNeutronPhase1EnabledInReader()Z

    move-result v4

    if-eqz v4, :cond_1

    sget-object v4, Lcom/amazon/kindle/krx/ui/panels/PanelKey$PanelLocation;->RIGHT:Lcom/amazon/kindle/krx/ui/panels/PanelKey$PanelLocation;

    goto :goto_0

    :cond_1
    sget-object v4, Lcom/amazon/kindle/krx/ui/panels/PanelKey$PanelLocation;->LEFT:Lcom/amazon/kindle/krx/ui/panels/PanelKey$PanelLocation;

    .line 223
    :goto_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v5

    .line 224
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v6

    invoke-interface {v6}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getKindleReaderSDK()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v6

    if-eqz v6, :cond_2

    .line 226
    new-instance v5, Lcom/amazon/kindle/krx/ui/panels/PanelKey;

    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v6

    invoke-interface {v6}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getKindleReaderSDK()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v6

    invoke-interface {v6}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderManager()Lcom/amazon/kindle/krx/reader/IReaderManager;

    move-result-object v6

    invoke-interface {v6}, Lcom/amazon/kindle/krx/reader/IReaderManager;->getCurrentBook()Lcom/amazon/kindle/krx/content/IBook;

    move-result-object v6

    invoke-direct {v5, v6, v4}, Lcom/amazon/kindle/krx/ui/panels/PanelKey;-><init>(Lcom/amazon/kindle/krx/content/IBook;Lcom/amazon/kindle/krx/ui/panels/PanelKey$PanelLocation;)V

    .line 227
    invoke-virtual {v0, v5}, Lcom/amazon/kindle/panels/BookPanelProvider;->getCustomPanelButtons(Lcom/amazon/kindle/krx/ui/panels/PanelKey;)Ljava/util/List;

    move-result-object v5

    .line 231
    :cond_2
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    :cond_3
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/amazon/kindle/panels/IPanelCustomItem;

    .line 232
    invoke-interface {v7}, Lcom/amazon/kindle/panels/IPanelCustomItem;->getVisibility()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 234
    new-instance v13, Lcom/amazon/kindle/panels/BookPanelProvider$2;

    invoke-direct {v13, v0, v7}, Lcom/amazon/kindle/panels/BookPanelProvider$2;-><init>(Lcom/amazon/kindle/panels/BookPanelProvider;Lcom/amazon/kindle/panels/IPanelCustomItem;)V

    .line 267
    invoke-interface {v7}, Lcom/amazon/kindle/panels/IPanelCustomItem;->getCustomView()Landroid/view/View;

    move-result-object v6

    if-eqz v6, :cond_4

    .line 269
    invoke-virtual {v3, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_2

    .line 271
    :cond_4
    iget-object v9, v0, Lcom/amazon/kindle/panels/BasePanelProvider;->activity:Lcom/amazon/kcp/reader/ReaderActivity;

    invoke-interface {v7}, Lcom/amazon/kindle/panels/IPanelCustomItem;->getText()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    invoke-interface {v7}, Lcom/amazon/kindle/panels/IPanelCustomItem;->getRightIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v12

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    invoke-interface {v7}, Lcom/amazon/kindle/panels/IPanelCustomItem;->isHighlighted()Z

    move-result v17

    .line 272
    invoke-interface {v7}, Lcom/amazon/kindle/panels/IPanelCustomItem;->getSecondaryText()Ljava/lang/String;

    move-result-object v18

    .line 271
    invoke-static/range {v9 .. v18}, Lcom/amazon/kindle/panels/NavPanelViewFactory;->inflateReaderNavPanelItem(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Landroid/view/View$OnClickListener;IZIZLjava/lang/String;)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v3, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 276
    :goto_2
    invoke-static {}, Lcom/amazon/kcp/debug/NeutronUtilManager;->getInstance()Lcom/amazon/kcp/debug/INeutronUtil;

    move-result-object v8

    invoke-interface {v8}, Lcom/amazon/kcp/debug/INeutronUtil;->isNeutronPhase1EnabledInReader()Z

    move-result v8

    if-eqz v8, :cond_5

    iget-object v8, v0, Lcom/amazon/kindle/panels/BasePanelProvider;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    .line 277
    invoke-interface {v8}, Lcom/amazon/android/docviewer/KindleDocViewer;->getBookInfo()Lcom/amazon/kindle/model/content/ILocalBookItem;

    move-result-object v8

    invoke-interface {v8}, Lcom/amazon/kindle/model/content/ILocalBookInfo;->isFalkorEpisode()Z

    move-result v8

    if-eqz v8, :cond_5

    .line 279
    iput-object v7, v0, Lcom/amazon/kindle/panels/BookPanelProvider;->falkorCustomPanelItem:Lcom/amazon/kindle/panels/IPanelCustomItem;

    .line 280
    iput-object v6, v0, Lcom/amazon/kindle/panels/BookPanelProvider;->falkorCustomView:Landroid/view/View;

    :cond_5
    const/4 v6, 0x1

    goto :goto_1

    :cond_6
    if-eqz v6, :cond_7

    const/4 v1, 0x0

    goto :goto_3

    :cond_7
    const/16 v1, 0x8

    .line 284
    :goto_3
    invoke-virtual {v3, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 285
    invoke-static {v2, v5}, Lcom/amazon/kindle/util/PerfHelper;->LogPerfMarker(Ljava/lang/String;Z)V

    return-void
.end method

.method protected setupHeaderButton()V
    .locals 3

    .line 97
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getKindleReaderSDK()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 98
    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderManager()Lcom/amazon/kindle/krx/reader/IReaderManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/reader/IReaderManager;->getCurrentBook()Lcom/amazon/kindle/krx/content/IBook;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 99
    :goto_0
    iget-object v1, p0, Lcom/amazon/kindle/panels/BasePanelProvider;->activity:Lcom/amazon/kcp/reader/ReaderActivity;

    invoke-virtual {v1}, Lcom/amazon/kcp/reader/ReaderActivity;->isOriginActivityReaderActivity()Z

    move-result v1

    if-eqz v1, :cond_1

    sget v1, Lcom/amazon/kindle/krl/R$drawable;->ic_back_button:I

    goto :goto_1

    :cond_1
    sget v1, Lcom/amazon/kindle/krl/R$drawable;->ic_leave_book_down_arrow:I

    .line 100
    :goto_1
    iget-object v2, p0, Lcom/amazon/kindle/panels/BasePanelProvider;->activity:Lcom/amazon/kcp/reader/ReaderActivity;

    invoke-static {v2, v1}, Lcom/amazon/android/widget/CommandBarUtils;->getThemedButtonDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 101
    invoke-direct {p0, v0}, Lcom/amazon/kindle/panels/BookPanelProvider;->getHeaderLayout(Lcom/amazon/kindle/krx/content/IBook;)Landroid/widget/LinearLayout;

    move-result-object v0

    .line 102
    sget v2, Lcom/amazon/kindle/krl/R$id;->close_book_header_image:I

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    if-eqz v2, :cond_2

    .line 104
    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 108
    :cond_2
    iget-object v1, p0, Lcom/amazon/kindle/panels/BasePanelProvider;->rootView:Landroid/view/ViewGroup;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    return-void
.end method

.method protected setupTOC()V
    .locals 3

    const-string v0, "BookPanelProvider.setupTOC()"

    const/4 v1, 0x1

    .line 181
    invoke-static {v0, v1}, Lcom/amazon/kindle/util/PerfHelper;->LogPerfMarker(Ljava/lang/String;Z)V

    .line 182
    iget-object v2, p0, Lcom/amazon/kindle/panels/BasePanelProvider;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    invoke-interface {v2}, Lcom/amazon/android/docviewer/KindleDocViewer;->getDocument()Lcom/amazon/android/docviewer/KindleDoc;

    move-result-object v2

    invoke-interface {v2}, Lcom/amazon/android/docviewer/KindleDoc;->getTOC()Lcom/amazon/android/docviewer/IKindleTOC;

    move-result-object v2

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    .line 183
    invoke-virtual {p0, v2}, Lcom/amazon/kindle/panels/BookPanelProvider;->tocLoaded(Lcom/amazon/android/docviewer/BaseKindleDocViewer$TocReadyEvent;)V

    .line 186
    iget-object v2, p0, Lcom/amazon/kindle/panels/BasePanelProvider;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    invoke-interface {v2}, Lcom/amazon/android/docviewer/KindleDocViewer;->getBookInfo()Lcom/amazon/kindle/model/content/ILocalBookItem;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 187
    invoke-interface {v2}, Lcom/amazon/kindle/model/content/ILocalBookInfo;->getMimeType()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/amazon/kindle/download/MimeTypeHelper;->isYellowJerseyPeriodicalsV2MagazineMimeType(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 188
    iput-boolean v1, p0, Lcom/amazon/kindle/panels/BookPanelProvider;->populateLater:Z

    goto :goto_0

    .line 191
    :cond_0
    iput-boolean v1, p0, Lcom/amazon/kindle/panels/BookPanelProvider;->populateLater:Z

    .line 198
    iget-object v1, p0, Lcom/amazon/kindle/panels/BasePanelProvider;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    invoke-interface {v1}, Lcom/amazon/android/docviewer/KindleDocViewer;->getDocument()Lcom/amazon/android/docviewer/KindleDoc;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/android/docviewer/KindleDoc;->hasTOC()Z

    move-result v1

    if-nez v1, :cond_1

    .line 200
    iget-boolean v1, p0, Lcom/amazon/kindle/panels/BookPanelProvider;->isTOCTitleHeaderAdded:Z

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/amazon/kindle/panels/BasePanelProvider;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    invoke-interface {v1}, Lcom/amazon/android/docviewer/KindleDocViewer;->getBookInfo()Lcom/amazon/kindle/model/content/ILocalBookItem;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kindle/model/content/ILocalBookInfo;->isFalkorEpisode()Z

    move-result v1

    if-nez v1, :cond_2

    .line 201
    invoke-direct {p0}, Lcom/amazon/kindle/panels/BookPanelProvider;->addTOCHeader()V

    .line 202
    invoke-direct {p0}, Lcom/amazon/kindle/panels/BookPanelProvider;->addTOCGotoBeginning()V

    .line 203
    invoke-direct {p0}, Lcom/amazon/kindle/panels/BookPanelProvider;->addTOCCover()V

    goto :goto_0

    .line 206
    :cond_1
    iget-boolean v1, p0, Lcom/amazon/kindle/panels/BookPanelProvider;->isTOCItemAdded:Z

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/amazon/kindle/panels/BasePanelProvider;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    invoke-interface {v1}, Lcom/amazon/android/docviewer/KindleDocViewer;->getBookInfo()Lcom/amazon/kindle/model/content/ILocalBookItem;

    move-result-object v1

    invoke-static {v1}, Lcom/amazon/kcp/util/Utils;->isListableBookLocalMOP(Lcom/amazon/kindle/model/content/IListableBook;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 207
    invoke-direct {p0}, Lcom/amazon/kindle/panels/BookPanelProvider;->addTOCItem()V

    .line 208
    invoke-direct {p0}, Lcom/amazon/kindle/panels/BookPanelProvider;->addTOCGotoBeginning()V

    :cond_2
    :goto_0
    const/4 v1, 0x0

    .line 211
    invoke-static {v0, v1}, Lcom/amazon/kindle/util/PerfHelper;->LogPerfMarker(Ljava/lang/String;Z)V

    return-void
.end method

.method public tocLoaded(Lcom/amazon/android/docviewer/BaseKindleDocViewer$TocReadyEvent;)V
    .locals 2
    .annotation runtime Lcom/amazon/kindle/krx/events/Subscriber;
    .end annotation

    if-eqz p1, :cond_0

    .line 427
    iget-boolean v0, p0, Lcom/amazon/kindle/panels/BookPanelProvider;->populateLater:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    .line 431
    invoke-virtual {p1}, Lcom/amazon/android/docviewer/BaseKindleDocViewer$ReadyEvent;->getDocViewer()Lcom/amazon/android/docviewer/KindleDocViewer;

    move-result-object p1

    iget-object v0, p0, Lcom/amazon/kindle/panels/BasePanelProvider;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    if-eq p1, v0, :cond_1

    return-void

    .line 435
    :cond_1
    iget-boolean p1, p0, Lcom/amazon/kindle/panels/BookPanelProvider;->isTOCTitleHeaderAdded:Z

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/amazon/kindle/panels/BasePanelProvider;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    invoke-interface {p1}, Lcom/amazon/android/docviewer/KindleDocViewer;->getDocument()Lcom/amazon/android/docviewer/KindleDoc;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/android/docviewer/KindleDoc;->hasTOC()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 436
    invoke-direct {p0}, Lcom/amazon/kindle/panels/BookPanelProvider;->addTOCHeader()V

    .line 439
    :cond_2
    invoke-virtual {p0}, Lcom/amazon/kindle/panels/BookPanelProvider;->getTOCAdapter()Lcom/amazon/kindle/panels/LinearTOCTreeViewAdapter;

    move-result-object p1

    .line 440
    invoke-virtual {p1}, Lcom/amazon/kindle/panels/LinearTOCTreeViewAdapter;->getTree()Lcom/amazon/android/docviewer/TreeTOCItem$Tree;

    move-result-object v0

    .line 441
    invoke-virtual {v0}, Lcom/amazon/android/docviewer/TreeTOCItem$Tree;->clearTopLevelItemsAndPositionMap()V

    .line 442
    invoke-direct {p0}, Lcom/amazon/kindle/panels/BookPanelProvider;->addTOCGotoBeginning()V

    .line 443
    invoke-direct {p0}, Lcom/amazon/kindle/panels/BookPanelProvider;->addTOCCover()V

    .line 444
    iget-object v1, p0, Lcom/amazon/kindle/panels/BasePanelProvider;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    invoke-virtual {v0, v1}, Lcom/amazon/android/docviewer/TreeTOCItem$Tree;->appendTopLevelItems(Lcom/amazon/android/docviewer/KindleDocViewer;)V

    .line 446
    invoke-virtual {p1}, Lcom/amazon/kindle/panels/TOCTreeViewAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method protected updateCurrentReadChapter()V
    .locals 3

    .line 321
    invoke-virtual {p0}, Lcom/amazon/kindle/panels/BookPanelProvider;->getTOCAdapter()Lcom/amazon/kindle/panels/LinearTOCTreeViewAdapter;

    move-result-object v0

    .line 322
    invoke-virtual {v0}, Lcom/amazon/kindle/panels/LinearTOCTreeViewAdapter;->getTree()Lcom/amazon/android/docviewer/TreeTOCItem$Tree;

    move-result-object v1

    iget-object v2, p0, Lcom/amazon/kindle/panels/BasePanelProvider;->doc:Lcom/amazon/android/docviewer/KindleDoc;

    invoke-interface {v2}, Lcom/amazon/android/docviewer/KindleDoc;->getPageStartPosition()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/amazon/android/docviewer/TreeTOCItem$Tree;->updateCurrentReadChapter(I)Lcom/amazon/android/docviewer/TreeTOCItem;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 324
    invoke-virtual {v1}, Lcom/amazon/android/docviewer/TreeTOCItem;->getTocPosition()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/amazon/kindle/panels/TOCTreeViewAdapter;->setCurrReadPosition(I)V

    .line 325
    invoke-virtual {v1}, Lcom/amazon/android/docviewer/TreeTOCItem;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/kindle/panels/TOCTreeViewAdapter;->setCurrReadTitle(Ljava/lang/String;)V

    .line 326
    invoke-virtual {v0}, Lcom/amazon/kindle/panels/TOCTreeViewAdapter;->notifyDataSetChanged()V

    .line 327
    invoke-static {}, Lcom/amazon/kcp/debug/NeutronUtilManager;->getInstance()Lcom/amazon/kcp/debug/INeutronUtil;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kcp/debug/INeutronUtil;->isNeutronPhase1EnabledInReader()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 328
    iget-object v1, p0, Lcom/amazon/kindle/panels/BasePanelProvider;->navPanelTOCListView:Landroid/widget/ListView;

    new-instance v2, Lcom/amazon/kindle/panels/BookPanelProvider$4;

    invoke-direct {v2, p0, v0}, Lcom/amazon/kindle/panels/BookPanelProvider$4;-><init>(Lcom/amazon/kindle/panels/BookPanelProvider;Lcom/amazon/kindle/panels/TOCTreeViewAdapter;)V

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method
