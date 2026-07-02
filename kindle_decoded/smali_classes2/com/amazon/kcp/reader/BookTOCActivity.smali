.class public Lcom/amazon/kcp/reader/BookTOCActivity;
.super Lcom/amazon/kcp/redding/ReddingActivity;
.source "BookTOCActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kcp/reader/BookTOCActivity$TOCDataSourcePollRunnable;,
        Lcom/amazon/kcp/reader/BookTOCActivity$TOCArrayAdapter;
    }
.end annotation


# static fields
.field private static final POLL_INTERVAL:I = 0x1f4

.field private static final TAG:Ljava/lang/String;

.field private static final TOC_ITEM_INDENT_PIX:I = 0x1e


# instance fields
.field private m_document:Lcom/amazon/android/docviewer/KindleDoc;

.field private final m_handler:Landroid/os/Handler;

.field private m_inflater:Landroid/view/LayoutInflater;

.field private final m_positionToTextViewMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Landroid/widget/TextView;",
            ">;"
        }
    .end annotation
.end field

.field private m_tocListAdapter:Lcom/amazon/kcp/reader/BookTOCActivity$TOCArrayAdapter;

.field private m_tocListView:Landroid/widget/ListView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 36
    const-class v0, Lcom/amazon/kcp/reader/BookTOCActivity;

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kcp/reader/BookTOCActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 35
    invoke-direct {p0}, Lcom/amazon/kcp/redding/ReddingActivity;-><init>()V

    .line 41
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/amazon/kcp/reader/BookTOCActivity;->m_handler:Landroid/os/Handler;

    .line 42
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/amazon/kcp/reader/BookTOCActivity;->m_positionToTextViewMap:Ljava/util/Map;

    return-void
.end method

.method static synthetic access$100(Lcom/amazon/kcp/reader/BookTOCActivity;)Lcom/amazon/kcp/reader/BookTOCActivity$TOCArrayAdapter;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/amazon/kcp/reader/BookTOCActivity;->m_tocListAdapter:Lcom/amazon/kcp/reader/BookTOCActivity$TOCArrayAdapter;

    return-object p0
.end method

.method static synthetic access$200()Ljava/lang/String;
    .locals 1

    .line 35
    sget-object v0, Lcom/amazon/kcp/reader/BookTOCActivity;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/amazon/kcp/reader/BookTOCActivity;)Ljava/util/Map;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/amazon/kcp/reader/BookTOCActivity;->m_positionToTextViewMap:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic access$400(Lcom/amazon/kcp/reader/BookTOCActivity;)Lcom/amazon/android/docviewer/KindleDoc;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/amazon/kcp/reader/BookTOCActivity;->m_document:Lcom/amazon/android/docviewer/KindleDoc;

    return-object p0
.end method

.method static synthetic access$500(Lcom/amazon/kcp/reader/BookTOCActivity;)Landroid/os/Handler;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/amazon/kcp/reader/BookTOCActivity;->m_handler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$600(Lcom/amazon/kcp/reader/BookTOCActivity;Lcom/amazon/kcp/reader/BookTOCActivity$TOCArrayAdapter;Lcom/amazon/android/docviewer/IBookHierarchicalTOC;Ljava/util/List;I)V
    .locals 0

    .line 35
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/amazon/kcp/reader/BookTOCActivity;->setIndentForTOCITems(Lcom/amazon/kcp/reader/BookTOCActivity$TOCArrayAdapter;Lcom/amazon/android/docviewer/IBookHierarchicalTOC;Ljava/util/List;I)V

    return-void
.end method

.method static synthetic access$700(Lcom/amazon/kcp/reader/BookTOCActivity;Lcom/amazon/android/docviewer/IBookHierarchicalTOC;)V
    .locals 0

    .line 35
    invoke-direct {p0, p1}, Lcom/amazon/kcp/reader/BookTOCActivity;->setListViewListener(Lcom/amazon/android/docviewer/IBookHierarchicalTOC;)V

    return-void
.end method

.method private createTOCAdapter()Lcom/amazon/kcp/reader/BookTOCActivity$TOCArrayAdapter;
    .locals 2

    .line 138
    new-instance v0, Lcom/amazon/kcp/reader/BookTOCActivity$TOCArrayAdapter;

    sget v1, Lcom/amazon/kindle/krl/R$layout;->toc_list_item:I

    invoke-direct {v0, p0, p0, v1}, Lcom/amazon/kcp/reader/BookTOCActivity$TOCArrayAdapter;-><init>(Lcom/amazon/kcp/reader/BookTOCActivity;Landroid/content/Context;I)V

    return-object v0
.end method

.method private displayLoadingMessage()V
    .locals 3

    .line 96
    iget-object v0, p0, Lcom/amazon/kcp/reader/BookTOCActivity;->m_inflater:Landroid/view/LayoutInflater;

    sget v1, Lcom/amazon/kindle/krl/R$layout;->toc_loading_list_item:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 97
    iget-object v1, p0, Lcom/amazon/kcp/reader/BookTOCActivity;->m_positionToTextViewMap:Ljava/util/Map;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    iget-object v0, p0, Lcom/amazon/kcp/reader/BookTOCActivity;->m_tocListAdapter:Lcom/amazon/kcp/reader/BookTOCActivity$TOCArrayAdapter;

    invoke-virtual {v0, v2}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    return-void
.end method

.method private finishActivityWithCancelResult()V
    .locals 2

    const/4 v0, 0x0

    .line 142
    invoke-virtual {p0, v0}, Landroid/app/Activity;->setResult(I)V

    .line 143
    sget v0, Lcom/amazon/kindle/krl/R$anim;->no_anim:I

    sget v1, Lcom/amazon/kindle/krl/R$anim;->slide_fade_to_bottom:I

    invoke-virtual {p0, v0, v1}, Lcom/amazon/kcp/redding/ReddingActivity;->animateAndFinish(II)V

    return-void
.end method

.method private pollForTOC()V
    .locals 4

    .line 92
    iget-object v0, p0, Lcom/amazon/kcp/reader/BookTOCActivity;->m_handler:Landroid/os/Handler;

    new-instance v1, Lcom/amazon/kcp/reader/BookTOCActivity$TOCDataSourcePollRunnable;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/amazon/kcp/reader/BookTOCActivity$TOCDataSourcePollRunnable;-><init>(Lcom/amazon/kcp/reader/BookTOCActivity;Lcom/amazon/kcp/reader/BookTOCActivity$1;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private setIndentForTOCITems(Lcom/amazon/kcp/reader/BookTOCActivity$TOCArrayAdapter;Lcom/amazon/android/docviewer/IBookHierarchicalTOC;Ljava/util/List;I)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kcp/reader/BookTOCActivity$TOCArrayAdapter;",
            "Lcom/amazon/android/docviewer/IBookHierarchicalTOC;",
            "Ljava/util/List<",
            "+",
            "Lcom/amazon/android/docviewer/ITOCItem;",
            ">;I)V"
        }
    .end annotation

    .line 116
    invoke-static {p3}, Lcom/amazon/kcp/util/Utils;->isNullOrEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 120
    :cond_0
    iget-object v0, p0, Lcom/amazon/kcp/reader/BookTOCActivity;->m_inflater:Landroid/view/LayoutInflater;

    sget v1, Lcom/amazon/kindle/krl/R$layout;->toc_list_item:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 121
    invoke-virtual {v0}, Landroid/widget/TextView;->getPaddingLeft()I

    move-result v1

    .line 122
    invoke-virtual {v0}, Landroid/widget/TextView;->getPaddingTop()I

    move-result v3

    .line 123
    invoke-virtual {v0}, Landroid/widget/TextView;->getPaddingRight()I

    move-result v4

    .line 124
    invoke-virtual {v0}, Landroid/widget/TextView;->getPaddingBottom()I

    move-result v0

    .line 126
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/amazon/android/docviewer/ITOCItem;

    .line 127
    invoke-virtual {p1}, Landroid/widget/ArrayAdapter;->getCount()I

    move-result v6

    .line 128
    iget-object v7, p0, Lcom/amazon/kcp/reader/BookTOCActivity;->m_inflater:Landroid/view/LayoutInflater;

    sget v8, Lcom/amazon/kindle/krl/R$layout;->toc_list_item:I

    invoke-virtual {v7, v8, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    mul-int/lit8 v8, p4, 0x1e

    add-int/2addr v8, v1

    .line 129
    invoke-virtual {v7, v8, v3, v4, v0}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 130
    invoke-interface {v5}, Lcom/amazon/android/docviewer/ITOCItem;->getTitle()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 131
    iget-object v8, p0, Lcom/amazon/kcp/reader/BookTOCActivity;->m_positionToTextViewMap:Ljava/util/Map;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v8, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    invoke-interface {v5}, Lcom/amazon/android/docviewer/ITOCItem;->getPosition()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {p1, v6}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    .line 133
    invoke-interface {p2, v5}, Lcom/amazon/android/docviewer/IBookHierarchicalTOC;->getSubTOCItems(Lcom/amazon/android/docviewer/ITOCItem;)Ljava/util/List;

    move-result-object v5

    add-int/lit8 v6, p4, 0x1

    invoke-direct {p0, p1, p2, v5, v6}, Lcom/amazon/kcp/reader/BookTOCActivity;->setIndentForTOCITems(Lcom/amazon/kcp/reader/BookTOCActivity$TOCArrayAdapter;Lcom/amazon/android/docviewer/IBookHierarchicalTOC;Ljava/util/List;I)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private setListViewListener(Lcom/amazon/android/docviewer/IBookHierarchicalTOC;)V
    .locals 2

    .line 102
    iget-object v0, p0, Lcom/amazon/kcp/reader/BookTOCActivity;->m_tocListView:Landroid/widget/ListView;

    new-instance v1, Lcom/amazon/kcp/reader/BookTOCActivity$1;

    invoke-direct {v1, p0, p1}, Lcom/amazon/kcp/reader/BookTOCActivity$1;-><init>(Lcom/amazon/kcp/reader/BookTOCActivity;Lcom/amazon/android/docviewer/IBookHierarchicalTOC;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 0

    .line 151
    invoke-super {p0}, Lcom/amazon/kcp/redding/ReddingActivity;->onBackPressed()V

    .line 152
    invoke-direct {p0}, Lcom/amazon/kcp/reader/BookTOCActivity;->finishActivityWithCancelResult()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 52
    invoke-super {p0, p1}, Lcom/amazon/kcp/redding/ReddingActivity;->onCreate(Landroid/os/Bundle;)V

    .line 55
    sget p1, Lcom/amazon/kindle/krl/R$anim;->slide_fade_from_bottom:I

    sget v0, Lcom/amazon/kindle/krl/R$anim;->slide_fade_to_bottom:I

    invoke-virtual {p0, p1, v0}, Landroid/app/Activity;->overridePendingTransition(II)V

    .line 56
    sget p1, Lcom/amazon/kindle/krl/R$layout;->book_toc_screen:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(I)V

    .line 57
    sget p1, Lcom/amazon/kindle/krl/R$id;->book_toc_screen:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    const-string v0, "layout_inflater"

    .line 58
    invoke-virtual {p0, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/amazon/kcp/reader/BookTOCActivity;->m_inflater:Landroid/view/LayoutInflater;

    .line 60
    invoke-virtual {p0}, Lcom/amazon/kcp/redding/ReddingActivity;->getAppController()Lcom/amazon/kcp/application/IAndroidApplicationController;

    .line 61
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getReaderController()Lcom/amazon/kcp/reader/IReaderController;

    move-result-object v0

    check-cast v0, Lcom/amazon/kcp/reader/ReaderController;

    invoke-virtual {v0, p0}, Lcom/amazon/kcp/reader/ReaderController;->bindToCurrentBook(Landroid/app/Activity;)Lcom/amazon/android/docviewer/KindleDocViewer;

    move-result-object v0

    .line 62
    invoke-interface {v0}, Lcom/amazon/android/docviewer/KindleDocViewer;->getDocument()Lcom/amazon/android/docviewer/KindleDoc;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kcp/reader/BookTOCActivity;->m_document:Lcom/amazon/android/docviewer/KindleDoc;

    .line 64
    invoke-interface {v0}, Lcom/amazon/android/docviewer/KindleDoc;->hasHierarchicalTOC()Z

    move-result v0

    if-nez v0, :cond_0

    .line 65
    sget-object v0, Lcom/amazon/kcp/reader/BookTOCActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "tried to display a hierarchical TOC for a document that doesn\'t have one"

    invoke-static {v0, v1}, Lcom/amazon/kindle/log/Log;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    invoke-direct {p0}, Lcom/amazon/kcp/reader/BookTOCActivity;->finishActivityWithCancelResult()V

    .line 69
    :cond_0
    sget v0, Lcom/amazon/kindle/krl/R$id;->book_toc_list:I

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ListView;

    iput-object p1, p0, Lcom/amazon/kcp/reader/BookTOCActivity;->m_tocListView:Landroid/widget/ListView;

    if-eqz p1, :cond_2

    .line 72
    invoke-direct {p0}, Lcom/amazon/kcp/reader/BookTOCActivity;->createTOCAdapter()Lcom/amazon/kcp/reader/BookTOCActivity$TOCArrayAdapter;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kcp/reader/BookTOCActivity;->m_tocListAdapter:Lcom/amazon/kcp/reader/BookTOCActivity$TOCArrayAdapter;

    .line 73
    iget-object v0, p0, Lcom/amazon/kcp/reader/BookTOCActivity;->m_tocListView:Landroid/widget/ListView;

    invoke-virtual {v0, p1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 75
    iget-object p1, p0, Lcom/amazon/kcp/reader/BookTOCActivity;->m_document:Lcom/amazon/android/docviewer/KindleDoc;

    invoke-interface {p1}, Lcom/amazon/android/docviewer/KindleDoc;->getTOC()Lcom/amazon/android/docviewer/IKindleTOC;

    move-result-object p1

    check-cast p1, Lcom/amazon/android/docviewer/IBookHierarchicalTOC;

    if-nez p1, :cond_1

    .line 79
    invoke-direct {p0}, Lcom/amazon/kcp/reader/BookTOCActivity;->pollForTOC()V

    .line 80
    invoke-direct {p0}, Lcom/amazon/kcp/reader/BookTOCActivity;->displayLoadingMessage()V

    return-void

    .line 84
    :cond_1
    iget-object v0, p0, Lcom/amazon/kcp/reader/BookTOCActivity;->m_tocListAdapter:Lcom/amazon/kcp/reader/BookTOCActivity$TOCArrayAdapter;

    invoke-interface {p1}, Lcom/amazon/android/docviewer/IKindleTOC;->getTopLevelTOCItems()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {p0, v0, p1, v1, v2}, Lcom/amazon/kcp/reader/BookTOCActivity;->setIndentForTOCITems(Lcom/amazon/kcp/reader/BookTOCActivity$TOCArrayAdapter;Lcom/amazon/android/docviewer/IBookHierarchicalTOC;Ljava/util/List;I)V

    .line 87
    invoke-direct {p0, p1}, Lcom/amazon/kcp/reader/BookTOCActivity;->setListViewListener(Lcom/amazon/android/docviewer/IBookHierarchicalTOC;)V

    :cond_2
    return-void
.end method
