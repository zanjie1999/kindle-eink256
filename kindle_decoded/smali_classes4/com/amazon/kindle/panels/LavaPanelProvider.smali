.class public Lcom/amazon/kindle/panels/LavaPanelProvider;
.super Lcom/amazon/kindle/panels/BasePanelProvider;
.source "LavaPanelProvider.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private adapter:Lcom/amazon/kindle/panels/NonLinearTOCTreeViewAdapter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 39
    const-class v0, Lcom/amazon/kindle/panels/LavaPanelProvider;

    invoke-static {v0}, Lcom/amazon/kindle/log/Log;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kindle/panels/LavaPanelProvider;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/amazon/kindle/panels/PanelProviderState;)V
    .locals 0

    .line 46
    invoke-direct {p0, p1}, Lcom/amazon/kindle/panels/BasePanelProvider;-><init>(Lcom/amazon/kindle/panels/PanelProviderState;)V

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 37
    sget-object v0, Lcom/amazon/kindle/panels/LavaPanelProvider;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private addTOCHeader()V
    .locals 4

    .line 176
    iget-object v0, p0, Lcom/amazon/kindle/panels/BasePanelProvider;->activity:Lcom/amazon/kcp/reader/ReaderActivity;

    invoke-virtual {v0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/amazon/kindle/krl/R$string;->toc_subhead_title:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 177
    iget-object v1, p0, Lcom/amazon/kindle/panels/BasePanelProvider;->activity:Lcom/amazon/kcp/reader/ReaderActivity;

    invoke-static {v1, v0}, Lcom/amazon/kindle/panels/NavPanelViewFactory;->inflateReaderNavPanelSubhead(Landroid/content/Context;Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 178
    sget v1, Lcom/amazon/kindle/krl/R$id;->reader_drawer_toc_subhead:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setId(I)V

    .line 179
    iget-object v1, p0, Lcom/amazon/kindle/panels/BasePanelProvider;->navPanelTOCListView:Landroid/widget/ListView;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v2, v3}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    return-void
.end method

.method private addTOCItem(Lcom/amazon/kindle/krx/IKindleReaderSDK;)V
    .locals 11

    .line 183
    iget-object v0, p0, Lcom/amazon/kindle/panels/BasePanelProvider;->activity:Lcom/amazon/kcp/reader/ReaderActivity;

    invoke-virtual {v0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/amazon/kindle/krl/R$string;->goto_toc:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 185
    iget-object v2, p0, Lcom/amazon/kindle/panels/BasePanelProvider;->activity:Lcom/amazon/kcp/reader/ReaderActivity;

    new-instance v6, Lcom/amazon/kindle/panels/LavaPanelProvider$2;

    invoke-direct {v6, p0, p1}, Lcom/amazon/kindle/panels/LavaPanelProvider$2;-><init>(Lcom/amazon/kindle/panels/LavaPanelProvider;Lcom/amazon/kindle/krx/IKindleReaderSDK;)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-static/range {v2 .. v10}, Lcom/amazon/kindle/panels/NavPanelViewFactory;->inflateReaderNavPanelItem(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Landroid/view/View$OnClickListener;IZIZ)Landroid/view/View;

    move-result-object p1

    .line 197
    iget-object v0, p0, Lcom/amazon/kindle/panels/BasePanelProvider;->navPanelItemsView:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void
.end method

.method private getHeaderLayout()Landroid/widget/LinearLayout;
    .locals 4

    .line 64
    iget-object v0, p0, Lcom/amazon/kindle/panels/BasePanelProvider;->activity:Lcom/amazon/kcp/reader/ReaderActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/amazon/kindle/krl/R$layout;->reader_nav_panel_close_lava:I

    iget-object v2, p0, Lcom/amazon/kindle/panels/BasePanelProvider;->rootView:Landroid/view/ViewGroup;

    const/4 v3, 0x0

    .line 65
    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    return-object v0
.end method

.method private static getPublicationString(Lcom/amazon/kindle/model/content/ILocalBookInfo;Landroid/app/Activity;)Ljava/lang/String;
    .locals 3

    :try_start_0
    const-string v0, "yyyy-MM-dd"

    const/4 v1, 0x2

    .line 93
    new-instance v2, Ljava/text/SimpleDateFormat;

    invoke-direct {v2, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 94
    invoke-interface {p0}, Lcom/amazon/kindle/model/content/IListableBook;->getPublicationDate()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p0

    .line 95
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget-object p1, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-static {v1, p1}, Ljava/text/DateFormat;->getDateInstance(ILjava/util/Locale;)Ljava/text/DateFormat;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p0, ""

    :goto_0
    return-object p0
.end method


# virtual methods
.method protected eventAction(Lcom/amazon/kindle/krx/events/IEvent;)V
    .locals 0

    return-void
.end method

.method protected bridge synthetic getTOCAdapter()Landroid/widget/ListAdapter;
    .locals 1

    .line 37
    invoke-virtual {p0}, Lcom/amazon/kindle/panels/LavaPanelProvider;->getTOCAdapter()Lcom/amazon/kindle/panels/NonLinearTOCTreeViewAdapter;

    move-result-object v0

    return-object v0
.end method

.method protected getTOCAdapter()Lcom/amazon/kindle/panels/NonLinearTOCTreeViewAdapter;
    .locals 2

    .line 213
    iget-object v0, p0, Lcom/amazon/kindle/panels/LavaPanelProvider;->adapter:Lcom/amazon/kindle/panels/NonLinearTOCTreeViewAdapter;

    if-nez v0, :cond_0

    .line 214
    new-instance v0, Lcom/amazon/kindle/panels/NonLinearTOCTreeViewAdapter;

    iget-object v1, p0, Lcom/amazon/kindle/panels/BasePanelProvider;->activity:Lcom/amazon/kcp/reader/ReaderActivity;

    invoke-direct {v0, v1}, Lcom/amazon/kindle/panels/NonLinearTOCTreeViewAdapter;-><init>(Lcom/amazon/kcp/reader/ReaderActivity;)V

    iput-object v0, p0, Lcom/amazon/kindle/panels/LavaPanelProvider;->adapter:Lcom/amazon/kindle/panels/NonLinearTOCTreeViewAdapter;

    .line 216
    :cond_0
    iget-object v0, p0, Lcom/amazon/kindle/panels/LavaPanelProvider;->adapter:Lcom/amazon/kindle/panels/NonLinearTOCTreeViewAdapter;

    return-object v0
.end method

.method protected setupBookInfo()V
    .locals 8

    const/4 v0, 0x1

    const-string v1, "LavaPanelProvider.setupBookInfo()"

    .line 71
    invoke-static {v1, v0}, Lcom/amazon/kindle/util/PerfHelper;->LogPerfMarker(Ljava/lang/String;Z)V

    .line 72
    iget-object v2, p0, Lcom/amazon/kindle/panels/BasePanelProvider;->rootView:Landroid/view/ViewGroup;

    sget v3, Lcom/amazon/kindle/krl/R$id;->reader_nav_panel_book_info:I

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 73
    iget-object v3, p0, Lcom/amazon/kindle/panels/BasePanelProvider;->rootView:Landroid/view/ViewGroup;

    sget v4, Lcom/amazon/kindle/krl/R$id;->reader_nav_panel_book_title:I

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 74
    iget-object v4, p0, Lcom/amazon/kindle/panels/BasePanelProvider;->rootView:Landroid/view/ViewGroup;

    sget v5, Lcom/amazon/kindle/krl/R$id;->reader_nav_panel_book_author:I

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 76
    iget-object v5, p0, Lcom/amazon/kindle/panels/BasePanelProvider;->rootView:Landroid/view/ViewGroup;

    sget v6, Lcom/amazon/kindle/krl/R$id;->reader_nav_panel_book_cover:I

    invoke-virtual {v5, v6}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageButton;

    .line 77
    iget-object v6, p0, Lcom/amazon/kindle/panels/BasePanelProvider;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    invoke-interface {v6}, Lcom/amazon/android/docviewer/KindleDocViewer;->getBookInfo()Lcom/amazon/kindle/model/content/ILocalBookItem;

    move-result-object v6

    .line 78
    invoke-interface {v6}, Lcom/amazon/kindle/model/content/IListableBook;->getTitle()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v3, 0x0

    .line 79
    invoke-virtual {v5, v3}, Landroid/widget/ImageButton;->setClickable(Z)V

    .line 80
    iget-object v7, p0, Lcom/amazon/kindle/panels/BasePanelProvider;->activity:Lcom/amazon/kcp/reader/ReaderActivity;

    invoke-static {v6, v7}, Lcom/amazon/kindle/panels/LavaPanelProvider;->getPublicationString(Lcom/amazon/kindle/model/content/ILocalBookInfo;Landroid/app/Activity;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 81
    iget-object v4, p0, Lcom/amazon/kindle/panels/BasePanelProvider;->coverOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 82
    iget-object v2, p0, Lcom/amazon/kindle/panels/BasePanelProvider;->coverImageLoader:Landroid/os/AsyncTask;

    new-array v0, v0, [Landroid/widget/ImageView;

    aput-object v5, v0, v3

    invoke-virtual {v2, v0}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 83
    invoke-static {v1, v3}, Lcom/amazon/kindle/util/PerfHelper;->LogPerfMarker(Ljava/lang/String;Z)V

    return-void
.end method

.method protected setupCustomPanelItems()V
    .locals 0

    return-void
.end method

.method protected setupHeaderButton()V
    .locals 3

    .line 52
    iget-object v0, p0, Lcom/amazon/kindle/panels/BasePanelProvider;->activity:Lcom/amazon/kcp/reader/ReaderActivity;

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/ReaderActivity;->isOriginActivityReaderActivity()Z

    move-result v0

    if-eqz v0, :cond_0

    sget v0, Lcom/amazon/kindle/krl/R$drawable;->ic_back_button:I

    goto :goto_0

    :cond_0
    sget v0, Lcom/amazon/kindle/krl/R$drawable;->ic_leave_book_down_arrow:I

    .line 53
    :goto_0
    iget-object v1, p0, Lcom/amazon/kindle/panels/BasePanelProvider;->activity:Lcom/amazon/kcp/reader/ReaderActivity;

    invoke-static {v1, v0}, Lcom/amazon/android/widget/CommandBarUtils;->getThemedButtonDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 54
    invoke-direct {p0}, Lcom/amazon/kindle/panels/LavaPanelProvider;->getHeaderLayout()Landroid/widget/LinearLayout;

    move-result-object v1

    .line 55
    sget v2, Lcom/amazon/kindle/krl/R$id;->close_book_header_image:I

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    if-eqz v2, :cond_1

    .line 57
    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 60
    :cond_1
    iget-object v0, p0, Lcom/amazon/kindle/panels/BasePanelProvider;->rootView:Landroid/view/ViewGroup;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    return-void
.end method

.method protected setupTOC()V
    .locals 3

    const-string v0, "LavaPanelProvider.setupTOC()"

    const/4 v1, 0x1

    .line 117
    invoke-static {v0, v1}, Lcom/amazon/kindle/util/PerfHelper;->LogPerfMarker(Ljava/lang/String;Z)V

    .line 118
    iget-object v1, p0, Lcom/amazon/kindle/panels/BasePanelProvider;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    invoke-interface {v1}, Lcom/amazon/android/docviewer/KindleDocViewer;->getDocument()Lcom/amazon/android/docviewer/KindleDoc;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/android/docviewer/KindleDoc;->getTOC()Lcom/amazon/android/docviewer/IKindleTOC;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    .line 119
    invoke-virtual {p0, v1}, Lcom/amazon/kindle/panels/LavaPanelProvider;->tocLoaded(Lcom/amazon/android/docviewer/BaseKindleDocViewer$TocReadyEvent;)V

    goto :goto_0

    .line 127
    :cond_0
    iget-object v1, p0, Lcom/amazon/kindle/panels/BasePanelProvider;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    invoke-interface {v1}, Lcom/amazon/android/docviewer/KindleDocViewer;->getDocument()Lcom/amazon/android/docviewer/KindleDoc;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/android/docviewer/KindleDoc;->hasTOC()Z

    move-result v1

    if-nez v1, :cond_1

    .line 128
    invoke-direct {p0}, Lcom/amazon/kindle/panels/LavaPanelProvider;->addTOCHeader()V

    goto :goto_0

    .line 130
    :cond_1
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getKindleReaderSDK()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 131
    iget-object v2, p0, Lcom/amazon/kindle/panels/BasePanelProvider;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    invoke-interface {v2}, Lcom/amazon/android/docviewer/KindleDocViewer;->getBookInfo()Lcom/amazon/kindle/model/content/ILocalBookItem;

    move-result-object v2

    invoke-static {v2}, Lcom/amazon/kcp/util/Utils;->isListableBookLocalMOP(Lcom/amazon/kindle/model/content/IListableBook;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 132
    invoke-direct {p0, v1}, Lcom/amazon/kindle/panels/LavaPanelProvider;->addTOCItem(Lcom/amazon/kindle/krx/IKindleReaderSDK;)V

    :cond_2
    :goto_0
    const/4 v1, 0x0

    .line 136
    invoke-static {v0, v1}, Lcom/amazon/kindle/util/PerfHelper;->LogPerfMarker(Ljava/lang/String;Z)V

    return-void
.end method

.method public tocLoaded(Lcom/amazon/android/docviewer/BaseKindleDocViewer$TocReadyEvent;)V
    .locals 3
    .annotation runtime Lcom/amazon/kindle/krx/events/Subscriber;
    .end annotation

    .line 104
    invoke-virtual {p0}, Lcom/amazon/kindle/panels/LavaPanelProvider;->getTOCAdapter()Lcom/amazon/kindle/panels/NonLinearTOCTreeViewAdapter;

    move-result-object p1

    .line 105
    invoke-virtual {p1}, Lcom/amazon/kindle/panels/NonLinearTOCTreeViewAdapter;->getTree()Lcom/amazon/android/docviewer/TreeTOCItem$Tree;

    move-result-object v0

    .line 106
    invoke-virtual {v0}, Lcom/amazon/android/docviewer/TreeTOCItem$Tree;->clearTopLevelItemsAndPositionMap()V

    .line 107
    iget-object v1, p0, Lcom/amazon/kindle/panels/BasePanelProvider;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    invoke-virtual {v0, v1}, Lcom/amazon/android/docviewer/TreeTOCItem$Tree;->appendTopLevelItems(Lcom/amazon/android/docviewer/KindleDocViewer;)V

    .line 108
    invoke-virtual {v0}, Lcom/amazon/android/docviewer/TreeTOCItem$Tree;->getVisibleNodes()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/android/docviewer/TreeTOCItem;

    const/4 v2, 0x1

    .line 109
    invoke-virtual {v1, v2}, Lcom/amazon/android/docviewer/TreeTOCItem;->setExpanded(Z)V

    goto :goto_0

    .line 111
    :cond_0
    invoke-virtual {p1}, Lcom/amazon/kindle/panels/TOCTreeViewAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method protected updateCurrentReadChapter()V
    .locals 3

    .line 141
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getKindleReaderSDK()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move-object v0, v1

    goto :goto_0

    .line 142
    :cond_0
    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderManager()Lcom/amazon/kindle/krx/reader/IReaderManager;

    move-result-object v0

    :goto_0
    if-nez v0, :cond_1

    move-object v0, v1

    goto :goto_1

    .line 143
    :cond_1
    invoke-interface {v0}, Lcom/amazon/kindle/krx/reader/IReaderManager;->getCurrentBookNavigator()Lcom/amazon/kindle/krx/reader/IBookNavigator;

    move-result-object v0

    :goto_1
    if-nez v0, :cond_2

    return-void

    .line 148
    :cond_2
    invoke-virtual {p0}, Lcom/amazon/kindle/panels/LavaPanelProvider;->getTOCAdapter()Lcom/amazon/kindle/panels/NonLinearTOCTreeViewAdapter;

    move-result-object v2

    .line 149
    invoke-interface {v0}, Lcom/amazon/kindle/krx/reader/IBookNavigator;->getCurrentPageEndPosition()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 152
    invoke-virtual {v2}, Lcom/amazon/kindle/panels/NonLinearTOCTreeViewAdapter;->getTree()Lcom/amazon/android/docviewer/TreeTOCItem$Tree;

    move-result-object v1

    .line 153
    invoke-interface {v0}, Lcom/amazon/kindle/krx/reader/IPosition;->getIntPosition()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/amazon/android/docviewer/TreeTOCItem$Tree;->updateCurrentReadChapter(I)Lcom/amazon/android/docviewer/TreeTOCItem;

    move-result-object v1

    :cond_3
    if-eqz v1, :cond_4

    .line 156
    invoke-virtual {v1}, Lcom/amazon/android/docviewer/TreeTOCItem;->getTocPosition()I

    move-result v0

    invoke-virtual {v2, v0}, Lcom/amazon/kindle/panels/TOCTreeViewAdapter;->setCurrReadPosition(I)V

    .line 157
    invoke-virtual {v1}, Lcom/amazon/android/docviewer/TreeTOCItem;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/amazon/kindle/panels/TOCTreeViewAdapter;->setCurrReadTitle(Ljava/lang/String;)V

    .line 158
    invoke-virtual {v2}, Lcom/amazon/kindle/panels/TOCTreeViewAdapter;->notifyDataSetChanged()V

    .line 159
    invoke-static {}, Lcom/amazon/kcp/debug/NeutronUtilManager;->getInstance()Lcom/amazon/kcp/debug/INeutronUtil;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/debug/INeutronUtil;->isNeutronPhase1EnabledInReader()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 160
    iget-object v0, p0, Lcom/amazon/kindle/panels/BasePanelProvider;->navPanelTOCListView:Landroid/widget/ListView;

    new-instance v1, Lcom/amazon/kindle/panels/LavaPanelProvider$1;

    invoke-direct {v1, p0, v2}, Lcom/amazon/kindle/panels/LavaPanelProvider$1;-><init>(Lcom/amazon/kindle/panels/LavaPanelProvider;Lcom/amazon/kindle/panels/TOCTreeViewAdapter;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->post(Ljava/lang/Runnable;)Z

    :cond_4
    return-void
.end method
