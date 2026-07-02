.class public Lcom/amazon/kindle/panels/LinearTOCTreeViewAdapter;
.super Lcom/amazon/kindle/panels/TOCTreeViewAdapter;
.source "LinearTOCTreeViewAdapter.java"


# instance fields
.field private final expandCollapseListener:Landroid/view/View$OnClickListener;

.field private final tree:Lcom/amazon/android/docviewer/TreeTOCItem$Tree;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/reader/ReaderActivity;)V
    .locals 0

    .line 19
    invoke-direct {p0, p1}, Lcom/amazon/kindle/panels/TOCTreeViewAdapter;-><init>(Lcom/amazon/kcp/reader/ReaderActivity;)V

    .line 79
    new-instance p1, Lcom/amazon/kindle/panels/LinearTOCTreeViewAdapter$1;

    invoke-direct {p1, p0}, Lcom/amazon/kindle/panels/LinearTOCTreeViewAdapter$1;-><init>(Lcom/amazon/kindle/panels/LinearTOCTreeViewAdapter;)V

    iput-object p1, p0, Lcom/amazon/kindle/panels/LinearTOCTreeViewAdapter;->expandCollapseListener:Landroid/view/View$OnClickListener;

    .line 20
    new-instance p1, Lcom/amazon/android/docviewer/TreeTOCItem$Tree;

    invoke-direct {p1}, Lcom/amazon/android/docviewer/TreeTOCItem$Tree;-><init>()V

    iput-object p1, p0, Lcom/amazon/kindle/panels/LinearTOCTreeViewAdapter;->tree:Lcom/amazon/android/docviewer/TreeTOCItem$Tree;

    return-void
.end method

.method static synthetic access$000(Lcom/amazon/kindle/panels/LinearTOCTreeViewAdapter;I)V
    .locals 0

    .line 14
    invoke-direct {p0, p1}, Lcom/amazon/kindle/panels/LinearTOCTreeViewAdapter;->toggleExpanded(I)V

    return-void
.end method

.method private toggleExpanded(I)V
    .locals 1

    .line 90
    iget-object v0, p0, Lcom/amazon/kindle/panels/LinearTOCTreeViewAdapter;->tree:Lcom/amazon/android/docviewer/TreeTOCItem$Tree;

    invoke-virtual {v0}, Lcom/amazon/android/docviewer/TreeTOCItem$Tree;->getVisibleNodes()Ljava/util/ArrayList;

    move-result-object v0

    .line 91
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/android/docviewer/TreeTOCItem;

    if-eqz p1, :cond_1

    .line 92
    invoke-virtual {p1}, Lcom/amazon/android/docviewer/TreeTOCItem;->hasChildren()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 95
    :cond_0
    invoke-virtual {p1}, Lcom/amazon/android/docviewer/TreeTOCItem;->isExpanded()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Lcom/amazon/android/docviewer/TreeTOCItem;->setExpanded(Z)V

    .line 96
    invoke-virtual {p0}, Lcom/amazon/kindle/panels/TOCTreeViewAdapter;->notifyDataSetChanged()V

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 25
    iget-object v0, p0, Lcom/amazon/kindle/panels/LinearTOCTreeViewAdapter;->tree:Lcom/amazon/android/docviewer/TreeTOCItem$Tree;

    invoke-virtual {v0}, Lcom/amazon/android/docviewer/TreeTOCItem$Tree;->getVisibleNodes()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    .line 30
    iget-object v0, p0, Lcom/amazon/kindle/panels/LinearTOCTreeViewAdapter;->tree:Lcom/amazon/android/docviewer/TreeTOCItem$Tree;

    invoke-virtual {v0}, Lcom/amazon/android/docviewer/TreeTOCItem$Tree;->getVisibleNodes()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getTree()Lcom/amazon/android/docviewer/TreeTOCItem$Tree;
    .locals 1

    .line 114
    iget-object v0, p0, Lcom/amazon/kindle/panels/LinearTOCTreeViewAdapter;->tree:Lcom/amazon/android/docviewer/TreeTOCItem$Tree;

    return-object v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 11

    .line 50
    invoke-virtual {p0, p1}, Lcom/amazon/kindle/panels/LinearTOCTreeViewAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/amazon/android/docviewer/TreeTOCItem;

    .line 51
    invoke-virtual {p2}, Lcom/amazon/android/docviewer/TreeTOCItem;->getTitle()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p3

    .line 52
    invoke-virtual {p2}, Lcom/amazon/android/docviewer/TreeTOCItem;->getTocPosition()I

    move-result v10

    .line 54
    iget-object v0, p0, Lcom/amazon/kindle/panels/TOCTreeViewAdapter;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    invoke-interface {v0}, Lcom/amazon/android/docviewer/KindleDocViewer;->getBookInfo()Lcom/amazon/kindle/model/content/ILocalBookItem;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/kindle/utils/RTLUtils;->shouldDisplayTextViewOrBookmarkAsRTL(Lcom/amazon/kindle/model/content/ILocalBookItem;)Z

    move-result v9

    .line 57
    iget-object v0, p0, Lcom/amazon/kindle/panels/TOCTreeViewAdapter;->doc:Lcom/amazon/android/docviewer/KindleDoc;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/amazon/android/docviewer/KindleDoc;->getPageLabelProvider()Lcom/amazon/android/docviewer/IPageLabelProvider;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 58
    iget-object v0, p0, Lcom/amazon/kindle/panels/TOCTreeViewAdapter;->doc:Lcom/amazon/android/docviewer/KindleDoc;

    invoke-interface {v0}, Lcom/amazon/android/docviewer/KindleDoc;->getPageLabelProvider()Lcom/amazon/android/docviewer/IPageLabelProvider;

    move-result-object v0

    invoke-interface {v0, v10}, Lcom/amazon/android/docviewer/IPageLabelProvider;->getPageLabelForPosition(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    move-object v2, v0

    .line 61
    invoke-virtual {p2}, Lcom/amazon/android/docviewer/TreeTOCItem;->hasChildren()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 62
    iget-object v0, p0, Lcom/amazon/kindle/panels/TOCTreeViewAdapter;->activity:Lcom/amazon/kcp/reader/ReaderActivity;

    sget v1, Lcom/amazon/kindle/krl/R$layout;->reader_nav_panel_item_with_split:I

    .line 63
    invoke-virtual {p2}, Lcom/amazon/android/docviewer/TreeTOCItem;->isExpanded()Z

    move-result v3

    iget-object v4, p0, Lcom/amazon/kindle/panels/TOCTreeViewAdapter;->navigateClickListener:Landroid/view/View$OnClickListener;

    iget-object v5, p0, Lcom/amazon/kindle/panels/LinearTOCTreeViewAdapter;->expandCollapseListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p2}, Lcom/amazon/android/docviewer/TreeTOCItem;->getLevel()I

    move-result v7

    const/4 v8, 0x1

    move-object v2, p3

    move v6, p1

    .line 62
    invoke-static/range {v0 .. v9}, Lcom/amazon/kindle/panels/NavPanelViewFactory;->inflateReaderNavPanelItemWithSplitPattern(Landroid/content/Context;ILjava/lang/String;ZLandroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;IIZI)Landroid/view/View;

    move-result-object p2

    goto :goto_1

    .line 65
    :cond_1
    iget-object v0, p0, Lcom/amazon/kindle/panels/TOCTreeViewAdapter;->activity:Lcom/amazon/kcp/reader/ReaderActivity;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/amazon/kindle/panels/TOCTreeViewAdapter;->navigateClickListener:Landroid/view/View$OnClickListener;

    .line 66
    invoke-virtual {p2}, Lcom/amazon/android/docviewer/TreeTOCItem;->getLevel()I

    move-result v5

    const/4 v6, 0x1

    const/4 v8, 0x0

    move-object v1, p3

    move v7, v9

    .line 65
    invoke-static/range {v0 .. v8}, Lcom/amazon/kindle/panels/NavPanelViewFactory;->inflateReaderNavPanelItem(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Landroid/view/View$OnClickListener;IZIZ)Landroid/view/View;

    move-result-object p2

    .line 69
    :goto_1
    invoke-virtual {p0, p2}, Lcom/amazon/kindle/panels/TOCTreeViewAdapter;->setSafeInsets(Landroid/view/View;)V

    .line 73
    iget v0, p0, Lcom/amazon/kindle/panels/TOCTreeViewAdapter;->currentlyReadPosition:I

    if-ne v0, v10, :cond_2

    iget-object v0, p0, Lcom/amazon/kindle/panels/TOCTreeViewAdapter;->currentlyReadTitle:Ljava/lang/String;

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_2

    const/4 p3, 0x1

    goto :goto_2

    :cond_2
    const/4 p3, 0x0

    :goto_2
    invoke-virtual {p2, p3}, Landroid/view/View;->setActivated(Z)V

    .line 74
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    return-object p2
.end method

.method protected updateSelectedPosition()V
    .locals 4

    const/4 v0, 0x0

    .line 100
    :goto_0
    invoke-virtual {p0}, Lcom/amazon/kindle/panels/LinearTOCTreeViewAdapter;->getCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 101
    invoke-virtual {p0, v0}, Lcom/amazon/kindle/panels/LinearTOCTreeViewAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/android/docviewer/TreeTOCItem;

    .line 102
    invoke-virtual {v1}, Lcom/amazon/android/docviewer/TreeTOCItem;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 103
    invoke-virtual {v1}, Lcom/amazon/android/docviewer/TreeTOCItem;->getTocPosition()I

    move-result v1

    .line 104
    iget v3, p0, Lcom/amazon/kindle/panels/TOCTreeViewAdapter;->currentlyReadPosition:I

    if-ne v3, v1, :cond_0

    iget-object v1, p0, Lcom/amazon/kindle/panels/TOCTreeViewAdapter;->currentlyReadTitle:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 105
    iput v0, p0, Lcom/amazon/kindle/panels/TOCTreeViewAdapter;->currentSelectedPosition:I

    return-void

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    .line 109
    iput v0, p0, Lcom/amazon/kindle/panels/TOCTreeViewAdapter;->currentSelectedPosition:I

    return-void
.end method
