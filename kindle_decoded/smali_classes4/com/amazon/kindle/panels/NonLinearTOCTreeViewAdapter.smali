.class public Lcom/amazon/kindle/panels/NonLinearTOCTreeViewAdapter;
.super Lcom/amazon/kindle/panels/TOCTreeViewAdapter;
.source "NonLinearTOCTreeViewAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kindle/panels/NonLinearTOCTreeViewAdapter$cellType;
    }
.end annotation


# instance fields
.field private final tree:Lcom/amazon/android/docviewer/TreeTOCItem$Tree;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/reader/ReaderActivity;)V
    .locals 0

    .line 34
    invoke-direct {p0, p1}, Lcom/amazon/kindle/panels/TOCTreeViewAdapter;-><init>(Lcom/amazon/kcp/reader/ReaderActivity;)V

    .line 35
    new-instance p1, Lcom/amazon/android/docviewer/NonLinearTocTree;

    invoke-direct {p1}, Lcom/amazon/android/docviewer/NonLinearTocTree;-><init>()V

    iput-object p1, p0, Lcom/amazon/kindle/panels/NonLinearTOCTreeViewAdapter;->tree:Lcom/amazon/android/docviewer/TreeTOCItem$Tree;

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 40
    iget-object v0, p0, Lcom/amazon/kindle/panels/NonLinearTOCTreeViewAdapter;->tree:Lcom/amazon/android/docviewer/TreeTOCItem$Tree;

    invoke-virtual {v0}, Lcom/amazon/android/docviewer/TreeTOCItem$Tree;->getVisibleNodes()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    .line 45
    iget-object v0, p0, Lcom/amazon/kindle/panels/NonLinearTOCTreeViewAdapter;->tree:Lcom/amazon/android/docviewer/TreeTOCItem$Tree;

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

.method public getItemViewType(I)I
    .locals 0

    .line 50
    invoke-virtual {p0, p1}, Lcom/amazon/kindle/panels/NonLinearTOCTreeViewAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/android/docviewer/TreeTOCItem;

    .line 51
    invoke-virtual {p1}, Lcom/amazon/android/docviewer/TreeTOCItem;->getLevel()I

    move-result p1

    if-nez p1, :cond_0

    .line 52
    sget-object p1, Lcom/amazon/kindle/panels/NonLinearTOCTreeViewAdapter$cellType;->SECTION_LABEL:Lcom/amazon/kindle/panels/NonLinearTOCTreeViewAdapter$cellType;

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    return p1

    .line 54
    :cond_0
    sget-object p1, Lcom/amazon/kindle/panels/NonLinearTOCTreeViewAdapter$cellType;->ARTICLE:Lcom/amazon/kindle/panels/NonLinearTOCTreeViewAdapter$cellType;

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    return p1
.end method

.method public getTree()Lcom/amazon/android/docviewer/TreeTOCItem$Tree;
    .locals 1

    .line 106
    iget-object v0, p0, Lcom/amazon/kindle/panels/NonLinearTOCTreeViewAdapter;->tree:Lcom/amazon/android/docviewer/TreeTOCItem$Tree;

    return-object v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 9

    .line 70
    invoke-virtual {p0, p1}, Lcom/amazon/kindle/panels/NonLinearTOCTreeViewAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/amazon/android/docviewer/TreeTOCItem;

    .line 71
    invoke-virtual {p3}, Lcom/amazon/android/docviewer/TreeTOCItem;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 72
    invoke-virtual {p3}, Lcom/amazon/android/docviewer/TreeTOCItem;->getTOCItem()Lcom/amazon/android/docviewer/ITOCItem;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 76
    invoke-interface {v0}, Lcom/amazon/android/docviewer/ITOCItem;->getThumbnail()Landroid/graphics/Bitmap;

    move-result-object v2

    .line 77
    invoke-interface {v0}, Lcom/amazon/android/docviewer/ITOCItem;->getDescription()Ljava/lang/String;

    move-result-object v0

    move-object v4, v0

    goto :goto_0

    :cond_0
    const-string v0, ""

    move-object v4, v0

    move-object v2, v1

    :goto_0
    if-eqz v2, :cond_1

    .line 82
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v1, p0, Lcom/amazon/kindle/panels/TOCTreeViewAdapter;->activity:Lcom/amazon/kcp/reader/ReaderActivity;

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-direct {v0, v1, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    move-object v5, v0

    goto :goto_1

    :cond_1
    move-object v5, v1

    .line 85
    :goto_1
    invoke-virtual {p3}, Lcom/amazon/android/docviewer/TreeTOCItem;->getTocPosition()I

    move-result p3

    .line 86
    iget v0, p0, Lcom/amazon/kindle/panels/TOCTreeViewAdapter;->currentlyReadPosition:I

    if-ne v0, p3, :cond_2

    const/4 p3, 0x1

    const/4 v8, 0x1

    goto :goto_2

    :cond_2
    const/4 p3, 0x0

    const/4 v8, 0x0

    .line 88
    :goto_2
    invoke-virtual {p0, p1}, Lcom/amazon/kindle/panels/NonLinearTOCTreeViewAdapter;->getItemViewType(I)I

    move-result p3

    .line 89
    sget-object v0, Lcom/amazon/kindle/panels/NonLinearTOCTreeViewAdapter$cellType;->ARTICLE:Lcom/amazon/kindle/panels/NonLinearTOCTreeViewAdapter$cellType;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    if-ne p3, v0, :cond_3

    .line 90
    iget-object v1, p0, Lcom/amazon/kindle/panels/TOCTreeViewAdapter;->activity:Lcom/amazon/kcp/reader/ReaderActivity;

    sget v2, Lcom/amazon/kindle/krl/R$layout;->reader_nav_panel_item_with_thumbnail:I

    iget-object v6, p0, Lcom/amazon/kindle/panels/TOCTreeViewAdapter;->navigateClickListener:Landroid/view/View$OnClickListener;

    move v7, p1

    invoke-static/range {v1 .. v8}, Lcom/amazon/kindle/panels/NavPanelViewFactory;->inflateReaderNavPanelItemWithThumbnail(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Landroid/view/View$OnClickListener;IZ)Landroid/view/View;

    move-result-object p2

    goto :goto_3

    .line 93
    :cond_3
    sget-object v0, Lcom/amazon/kindle/panels/NonLinearTOCTreeViewAdapter$cellType;->SECTION_LABEL:Lcom/amazon/kindle/panels/NonLinearTOCTreeViewAdapter$cellType;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    if-ne p3, v0, :cond_4

    .line 94
    iget-object p2, p0, Lcom/amazon/kindle/panels/TOCTreeViewAdapter;->activity:Lcom/amazon/kcp/reader/ReaderActivity;

    sget p3, Lcom/amazon/kindle/krl/R$layout;->reader_nav_panel_item_section_label:I

    invoke-static {p2, p3, v3}, Lcom/amazon/kindle/panels/NavPanelViewFactory;->inflateReaderNavPanelSectionLabel(Landroid/content/Context;ILjava/lang/String;)Landroid/view/View;

    move-result-object p2

    .line 98
    :cond_4
    :goto_3
    invoke-virtual {p0, p2}, Lcom/amazon/kindle/panels/TOCTreeViewAdapter;->setSafeInsets(Landroid/view/View;)V

    .line 100
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    return-object p2
.end method

.method public getViewTypeCount()I
    .locals 1

    .line 65
    invoke-static {}, Lcom/amazon/kindle/panels/NonLinearTOCTreeViewAdapter$cellType;->values()[Lcom/amazon/kindle/panels/NonLinearTOCTreeViewAdapter$cellType;

    move-result-object v0

    array-length v0, v0

    return v0
.end method

.method protected updateSelectedPosition()V
    .locals 3

    const/4 v0, 0x0

    .line 110
    :goto_0
    invoke-virtual {p0}, Lcom/amazon/kindle/panels/NonLinearTOCTreeViewAdapter;->getCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 111
    invoke-virtual {p0, v0}, Lcom/amazon/kindle/panels/NonLinearTOCTreeViewAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/android/docviewer/TreeTOCItem;

    .line 112
    invoke-virtual {v1}, Lcom/amazon/android/docviewer/TreeTOCItem;->getTocPosition()I

    move-result v1

    .line 113
    iget v2, p0, Lcom/amazon/kindle/panels/TOCTreeViewAdapter;->currentlyReadPosition:I

    if-ne v2, v1, :cond_0

    .line 114
    iput v0, p0, Lcom/amazon/kindle/panels/TOCTreeViewAdapter;->currentSelectedPosition:I

    return-void

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    .line 118
    iput v0, p0, Lcom/amazon/kindle/panels/TOCTreeViewAdapter;->currentSelectedPosition:I

    return-void
.end method
