.class public abstract Lcom/amazon/kindle/panels/BasePanelProvider;
.super Lcom/amazon/kindle/panels/PanelProvider;
.source "BasePanelProvider.java"


# static fields
.field private static final METRICS_NAME_STANDALONE_READER_PANEL_PROVIDER:Ljava/lang/String; = "StandaloneReaderPanelProvider"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field protected final activity:Lcom/amazon/kcp/reader/ReaderActivity;

.field private clickListener:Landroid/view/View$OnClickListener;

.field protected final coverImageLoader:Landroid/os/AsyncTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/AsyncTask<",
            "Landroid/widget/ImageView;",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field protected coverOnClickListener:Landroid/view/View$OnClickListener;

.field protected final doc:Lcom/amazon/android/docviewer/KindleDoc;

.field protected final docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

.field private final fillCover:Landroid/os/AsyncTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/AsyncTask<",
            "Landroid/widget/ImageView;",
            "Ljava/lang/Void;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private hasInitializedItems:Ljava/util/concurrent/atomic/AtomicBoolean;

.field protected final navPanelItemsView:Landroid/view/ViewGroup;

.field protected final navPanelTOCListView:Landroid/widget/ListView;

.field protected final rootView:Landroid/view/ViewGroup;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 56
    const-class v0, Lcom/amazon/kindle/panels/BasePanelProvider;

    invoke-static {v0}, Lcom/amazon/kindle/log/Log;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kindle/panels/BasePanelProvider;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/amazon/kindle/panels/PanelProviderState;)V
    .locals 4

    .line 140
    invoke-direct {p0, p1}, Lcom/amazon/kindle/panels/PanelProvider;-><init>(Lcom/amazon/kindle/panels/PanelProviderState;)V

    .line 67
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/amazon/kindle/panels/BasePanelProvider;->hasInitializedItems:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 70
    new-instance v0, Lcom/amazon/kindle/panels/BasePanelProvider$1;

    invoke-direct {v0, p0}, Lcom/amazon/kindle/panels/BasePanelProvider$1;-><init>(Lcom/amazon/kindle/panels/BasePanelProvider;)V

    iput-object v0, p0, Lcom/amazon/kindle/panels/BasePanelProvider;->clickListener:Landroid/view/View$OnClickListener;

    .line 88
    new-instance v0, Lcom/amazon/kindle/panels/BasePanelProvider$2;

    invoke-direct {v0, p0}, Lcom/amazon/kindle/panels/BasePanelProvider$2;-><init>(Lcom/amazon/kindle/panels/BasePanelProvider;)V

    iput-object v0, p0, Lcom/amazon/kindle/panels/BasePanelProvider;->fillCover:Landroid/os/AsyncTask;

    .line 109
    new-instance v0, Lcom/amazon/kindle/panels/BasePanelProvider$3;

    invoke-direct {v0, p0}, Lcom/amazon/kindle/panels/BasePanelProvider$3;-><init>(Lcom/amazon/kindle/panels/BasePanelProvider;)V

    iput-object v0, p0, Lcom/amazon/kindle/panels/BasePanelProvider;->coverImageLoader:Landroid/os/AsyncTask;

    .line 193
    invoke-static {}, Lcom/amazon/android/tableofcontents/TableOfContentsUtil;->getCoverEntryOnClickListener()Landroid/view/View$OnClickListener;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kindle/panels/BasePanelProvider;->coverOnClickListener:Landroid/view/View$OnClickListener;

    const/4 v0, 0x1

    const-string v2, "ReaderPanelProvider.<init>()"

    .line 141
    invoke-static {v2, v0}, Lcom/amazon/kindle/util/PerfHelper;->LogPerfMarker(Ljava/lang/String;Z)V

    .line 142
    invoke-virtual {p1}, Lcom/amazon/kindle/panels/PanelProviderState;->getActivity()Landroid/app/Activity;

    move-result-object p1

    check-cast p1, Lcom/amazon/kcp/reader/ReaderActivity;

    iput-object p1, p0, Lcom/amazon/kindle/panels/BasePanelProvider;->activity:Lcom/amazon/kcp/reader/ReaderActivity;

    .line 143
    invoke-virtual {p1}, Lcom/amazon/kcp/reader/ReaderActivity;->getDocViewer()Lcom/amazon/android/docviewer/KindleDocViewer;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kindle/panels/BasePanelProvider;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    .line 144
    invoke-interface {p1}, Lcom/amazon/android/docviewer/KindleDocViewer;->getDocument()Lcom/amazon/android/docviewer/KindleDoc;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kindle/panels/BasePanelProvider;->doc:Lcom/amazon/android/docviewer/KindleDoc;

    .line 145
    iget-object p1, p0, Lcom/amazon/kindle/panels/BasePanelProvider;->activity:Lcom/amazon/kcp/reader/ReaderActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p1

    sget v0, Lcom/amazon/kindle/krl/R$layout;->reader_nav_panel_items:I

    const/4 v3, 0x0

    invoke-virtual {p1, v0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iput-object p1, p0, Lcom/amazon/kindle/panels/BasePanelProvider;->rootView:Landroid/view/ViewGroup;

    .line 146
    iget-object p1, p0, Lcom/amazon/kindle/panels/BasePanelProvider;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    invoke-interface {p1}, Lcom/amazon/android/docviewer/KindleDocViewer;->getBookInfo()Lcom/amazon/kindle/model/content/ILocalBookItem;

    move-result-object p1

    .line 147
    invoke-static {}, Lcom/amazon/kcp/debug/NeutronUtilManager;->getInstance()Lcom/amazon/kcp/debug/INeutronUtil;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/debug/INeutronUtil;->isNeutronPhase1EnabledInReader()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_1

    invoke-interface {p1}, Lcom/amazon/kindle/model/content/ILocalBookInfo;->isFalkorEpisode()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 148
    :cond_0
    invoke-virtual {p0}, Lcom/amazon/kindle/panels/BasePanelProvider;->setupHeaderButton()V

    .line 150
    :cond_1
    iget-object p1, p0, Lcom/amazon/kindle/panels/BasePanelProvider;->rootView:Landroid/view/ViewGroup;

    sget v0, Lcom/amazon/kindle/krl/R$id;->reader_nav_panel_content:I

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ListView;

    iput-object p1, p0, Lcom/amazon/kindle/panels/BasePanelProvider;->navPanelTOCListView:Landroid/widget/ListView;

    .line 153
    iget-object p1, p0, Lcom/amazon/kindle/panels/BasePanelProvider;->activity:Lcom/amazon/kcp/reader/ReaderActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p1

    sget v0, Lcom/amazon/kindle/krl/R$layout;->reader_nav_panel_list_header:I

    invoke-virtual {p1, v0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 154
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getKindleReaderSDK()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderManager()Lcom/amazon/kindle/krx/reader/IReaderManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/reader/IReaderManager;->getCurrentBook()Lcom/amazon/kindle/krx/content/IBook;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 155
    invoke-interface {v0}, Lcom/amazon/kindle/krx/content/IBook;->isFalkorEpisode()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {}, Lcom/amazon/kcp/debug/NeutronUtilManager;->getInstance()Lcom/amazon/kcp/debug/INeutronUtil;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/debug/INeutronUtil;->isNeutronPhase1EnabledInReader()Z

    move-result v0

    if-nez v0, :cond_2

    .line 156
    sget v0, Lcom/amazon/kindle/krl/R$id;->reader_nav_panel_book_info_view_stub:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    if-eqz v0, :cond_2

    .line 158
    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    .line 161
    :cond_2
    iget-object v0, p0, Lcom/amazon/kindle/panels/BasePanelProvider;->navPanelTOCListView:Landroid/widget/ListView;

    invoke-virtual {v0, p1, v3, v1}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 163
    invoke-static {}, Lcom/amazon/kcp/debug/NeutronUtilManager;->getInstance()Lcom/amazon/kcp/debug/INeutronUtil;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kcp/debug/INeutronUtil;->isNeutronPhase1EnabledInReader()Z

    move-result p1

    if-nez p1, :cond_3

    .line 165
    iget-object p1, p0, Lcom/amazon/kindle/panels/BasePanelProvider;->rootView:Landroid/view/ViewGroup;

    sget v0, Lcom/amazon/kindle/krl/R$id;->reader_nav_panel_library:I

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/amazon/kindle/panels/BasePanelProvider;->initialize(Landroid/view/View;)V

    .line 169
    :cond_3
    iget-object p1, p0, Lcom/amazon/kindle/panels/BasePanelProvider;->rootView:Landroid/view/ViewGroup;

    sget v0, Lcom/amazon/kindle/krl/R$id;->reader_nav_panel_items:I

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iput-object p1, p0, Lcom/amazon/kindle/panels/BasePanelProvider;->navPanelItemsView:Landroid/view/ViewGroup;

    const/4 p1, 0x0

    .line 170
    :goto_0
    iget-object v0, p0, Lcom/amazon/kindle/panels/BasePanelProvider;->navPanelItemsView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-ge p1, v0, :cond_4

    .line 171
    iget-object v0, p0, Lcom/amazon/kindle/panels/BasePanelProvider;->navPanelItemsView:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/amazon/kindle/panels/BasePanelProvider;->initialize(Landroid/view/View;)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 173
    :cond_4
    iget-object p1, p0, Lcom/amazon/kindle/panels/BasePanelProvider;->navPanelTOCListView:Landroid/widget/ListView;

    invoke-virtual {p0}, Lcom/amazon/kindle/panels/BasePanelProvider;->getTOCAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 177
    iget-object p1, p0, Lcom/amazon/kindle/panels/BasePanelProvider;->navPanelTOCListView:Landroid/widget/ListView;

    new-instance v0, Lcom/amazon/kindle/panels/BasePanelProvider$4;

    invoke-direct {v0, p0}, Lcom/amazon/kindle/panels/BasePanelProvider$4;-><init>(Lcom/amazon/kindle/panels/BasePanelProvider;)V

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 189
    invoke-static {}, Lcom/amazon/kindle/services/events/PubSubMessageService;->getInstance()Lcom/amazon/kindle/krx/events/IPubSubEventsManager;

    move-result-object p1

    invoke-interface {p1, p0}, Lcom/amazon/kindle/krx/events/IPubSubEventsManager;->subscribe(Ljava/lang/Object;)V

    .line 190
    invoke-static {v2, v1}, Lcom/amazon/kindle/util/PerfHelper;->LogPerfMarker(Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic access$000(Lcom/amazon/kindle/panels/BasePanelProvider;Landroid/view/View;)V
    .locals 0

    .line 54
    invoke-direct {p0, p1}, Lcom/amazon/kindle/panels/BasePanelProvider;->handleClick(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$100(Lcom/amazon/kindle/panels/BasePanelProvider;)Landroid/os/AsyncTask;
    .locals 0

    .line 54
    iget-object p0, p0, Lcom/amazon/kindle/panels/BasePanelProvider;->fillCover:Landroid/os/AsyncTask;

    return-object p0
.end method

.method private handleClick(Landroid/view/View;)V
    .locals 1

    .line 78
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    .line 79
    sget v0, Lcom/amazon/kindle/krl/R$id;->reader_nav_panel_library:I

    if-ne p1, v0, :cond_0

    .line 81
    sget-object p1, Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$ContextType;->LEFT_NAVIGATION_MENU:Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$ContextType;

    sget-object v0, Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$ActionType;->CLOSE_BOOK:Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$ActionType;

    invoke-static {p1, v0}, Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics;->recordMetrics(Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$ContextType;Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$ActionType;)V

    .line 84
    iget-object p1, p0, Lcom/amazon/kindle/panels/BasePanelProvider;->activity:Lcom/amazon/kcp/reader/ReaderActivity;

    invoke-virtual {p1}, Lcom/amazon/kcp/reader/ReaderActivity;->handleLeaveBookButton()V

    :cond_0
    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 1

    .line 288
    invoke-static {}, Lcom/amazon/kindle/services/events/PubSubMessageService;->getInstance()Lcom/amazon/kindle/krx/events/IPubSubEventsManager;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/amazon/kindle/krx/events/IPubSubEventsManager;->unsubscribe(Ljava/lang/Object;)V

    return-void
.end method

.method protected abstract eventAction(Lcom/amazon/kindle/krx/events/IEvent;)V
.end method

.method protected abstract getTOCAdapter()Landroid/widget/ListAdapter;
.end method

.method public getView()Landroid/view/View;
    .locals 1

    .line 293
    iget-object v0, p0, Lcom/amazon/kindle/panels/BasePanelProvider;->rootView:Landroid/view/ViewGroup;

    return-object v0
.end method

.method protected initialize(Landroid/view/View;)V
    .locals 2

    .line 244
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 246
    sget v1, Lcom/amazon/kindle/krl/R$id;->reader_nav_panel_content:I

    if-eq v0, v1, :cond_0

    .line 247
    iget-object v0, p0, Lcom/amazon/kindle/panels/BasePanelProvider;->clickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void
.end method

.method public onBookClosed(Lcom/amazon/kcp/reader/ReaderControllerEvent;)V
    .locals 2
    .annotation runtime Lcom/amazon/kindle/krx/events/Subscriber;
    .end annotation

    .line 298
    invoke-virtual {p1}, Lcom/amazon/kcp/reader/ReaderControllerEvent;->getType()Lcom/amazon/kcp/reader/ReaderControllerEvent$EventType;

    move-result-object v0

    sget-object v1, Lcom/amazon/kcp/reader/ReaderControllerEvent$EventType;->BOOK_LIFECYCLE_CLOSED:Lcom/amazon/kcp/reader/ReaderControllerEvent$EventType;

    if-ne v0, v1, :cond_1

    .line 299
    iget-object v0, p0, Lcom/amazon/kindle/panels/BasePanelProvider;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/amazon/android/docviewer/KindleDocViewer;->getBookInfo()Lcom/amazon/kindle/model/content/ILocalBookItem;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 300
    invoke-virtual {p1}, Lcom/amazon/kcp/reader/ReaderControllerEvent;->getBook()Lcom/amazon/kindle/model/content/ILocalBookInfo;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kindle/model/content/ILocalBookInfo;->getBookID()Lcom/amazon/kindle/model/content/IBookID;

    move-result-object p1

    invoke-interface {v0}, Lcom/amazon/kindle/model/content/ILocalBookInfo;->getBookID()Lcom/amazon/kindle/model/content/IBookID;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 301
    invoke-virtual {p0}, Lcom/amazon/kindle/panels/BasePanelProvider;->dispose()V

    :cond_1
    return-void
.end method

.method public onRefreshPanelProviderEvent(Lcom/amazon/kindle/panels/RefreshPanelProviderEvent;)V
    .locals 2
    .annotation runtime Lcom/amazon/kindle/krx/events/Subscriber;
    .end annotation

    .line 233
    invoke-virtual {p1}, Lcom/amazon/kindle/panels/RefreshPanelProviderEvent;->getPanelKey()Lcom/amazon/kindle/krx/ui/panels/PanelKey;

    move-result-object v0

    .line 234
    invoke-static {}, Lcom/amazon/kcp/debug/NeutronUtilManager;->getInstance()Lcom/amazon/kcp/debug/INeutronUtil;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kcp/debug/INeutronUtil;->isNeutronPhase1EnabledInReader()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/amazon/kindle/krx/ui/panels/PanelKey$PanelLocation;->RIGHT:Lcom/amazon/kindle/krx/ui/panels/PanelKey$PanelLocation;

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/amazon/kindle/krx/ui/panels/PanelKey$PanelLocation;->LEFT:Lcom/amazon/kindle/krx/ui/panels/PanelKey$PanelLocation;

    .line 236
    :goto_0
    invoke-virtual {v0}, Lcom/amazon/kindle/krx/ui/panels/PanelKey;->getLocation()Lcom/amazon/kindle/krx/ui/panels/PanelKey$PanelLocation;

    move-result-object v0

    if-ne v0, v1, :cond_1

    .line 237
    invoke-virtual {p0}, Lcom/amazon/kindle/panels/BasePanelProvider;->setupCustomPanelItems()V

    .line 239
    :cond_1
    invoke-virtual {p0, p1}, Lcom/amazon/kindle/panels/BasePanelProvider;->eventAction(Lcom/amazon/kindle/krx/events/IEvent;)V

    return-void
.end method

.method public onTableOfContentsEvent(Lcom/amazon/kcp/reader/TableOfContentsEvent;)V
    .locals 3
    .annotation runtime Lcom/amazon/kindle/krx/events/Subscriber;
    .end annotation

    .line 197
    invoke-virtual {p1}, Lcom/amazon/kcp/reader/TableOfContentsEvent;->getDocViewer()Lcom/amazon/android/docviewer/KindleDocViewer;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/amazon/kcp/reader/TableOfContentsEvent;->getDocViewer()Lcom/amazon/android/docviewer/KindleDocViewer;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kindle/panels/BasePanelProvider;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    if-eq v0, v1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 207
    iget-object v1, p0, Lcom/amazon/kindle/panels/BasePanelProvider;->hasInitializedItems:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v1

    if-nez v1, :cond_2

    .line 208
    invoke-static {}, Lcom/amazon/kcp/debug/NeutronUtilManager;->getInstance()Lcom/amazon/kcp/debug/INeutronUtil;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/debug/INeutronUtil;->isNeutronPhase1EnabledInReader()Z

    move-result v0

    if-nez v0, :cond_1

    .line 209
    invoke-virtual {p0}, Lcom/amazon/kindle/panels/BasePanelProvider;->setupBookInfo()V

    .line 211
    :cond_1
    invoke-virtual {p0}, Lcom/amazon/kindle/panels/BasePanelProvider;->setupTOC()V

    .line 212
    invoke-virtual {p0}, Lcom/amazon/kindle/panels/BasePanelProvider;->setupCustomPanelItems()V

    const/4 v0, 0x1

    .line 216
    :cond_2
    invoke-virtual {p1}, Lcom/amazon/kcp/reader/TableOfContentsEvent;->getType()Lcom/amazon/kcp/reader/TableOfContentsEvent$Type;

    move-result-object v1

    sget-object v2, Lcom/amazon/kcp/reader/TableOfContentsEvent$Type;->OPENING:Lcom/amazon/kcp/reader/TableOfContentsEvent$Type;

    if-eq v1, v2, :cond_3

    invoke-virtual {p1}, Lcom/amazon/kcp/reader/TableOfContentsEvent;->getType()Lcom/amazon/kcp/reader/TableOfContentsEvent$Type;

    move-result-object v1

    sget-object v2, Lcom/amazon/kcp/reader/TableOfContentsEvent$Type;->REFRESHED:Lcom/amazon/kcp/reader/TableOfContentsEvent$Type;

    if-ne v1, v2, :cond_5

    .line 217
    :cond_3
    invoke-virtual {p0}, Lcom/amazon/kindle/panels/BasePanelProvider;->setupTOC()V

    .line 218
    invoke-virtual {p0}, Lcom/amazon/kindle/panels/BasePanelProvider;->updateCurrentReadChapter()V

    if-nez v0, :cond_4

    .line 221
    invoke-virtual {p0}, Lcom/amazon/kindle/panels/BasePanelProvider;->setupCustomPanelItems()V

    .line 223
    :cond_4
    invoke-virtual {p0, p1}, Lcom/amazon/kindle/panels/BasePanelProvider;->eventAction(Lcom/amazon/kindle/krx/events/IEvent;)V

    .line 226
    :cond_5
    invoke-virtual {p1}, Lcom/amazon/kcp/reader/TableOfContentsEvent;->getType()Lcom/amazon/kcp/reader/TableOfContentsEvent$Type;

    move-result-object v0

    sget-object v1, Lcom/amazon/kcp/reader/TableOfContentsEvent$Type;->OPENED:Lcom/amazon/kcp/reader/TableOfContentsEvent$Type;

    if-ne v0, v1, :cond_6

    .line 227
    invoke-virtual {p0, p1}, Lcom/amazon/kindle/panels/BasePanelProvider;->eventAction(Lcom/amazon/kindle/krx/events/IEvent;)V

    :cond_6
    return-void
.end method

.method protected returnToLibrary()V
    .locals 3

    .line 310
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v0

    const-string v1, "StandaloneReaderPanelProvider"

    const-string v2, "BookExitViaLeftNav"

    invoke-virtual {v0, v1, v2}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;)V

    .line 311
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kindle/panels/BasePanelProvider;->activity:Lcom/amazon/kcp/reader/ReaderActivity;

    invoke-interface {v0, v1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->returnToLibrary(Lcom/amazon/kcp/reader/ReaderActivity;)V

    return-void
.end method

.method protected abstract setupBookInfo()V
.end method

.method protected abstract setupCustomPanelItems()V
.end method

.method protected abstract setupHeaderButton()V
.end method

.method protected abstract setupTOC()V
.end method

.method protected abstract updateCurrentReadChapter()V
.end method
