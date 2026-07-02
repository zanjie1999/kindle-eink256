.class public Lcom/amazon/nwstd/toc/TOCListAdapter;
.super Landroid/widget/BaseAdapter;
.source "TOCListAdapter.java"


# instance fields
.field private final mTOCListController:Lcom/amazon/nwstd/toc/TOCListController;


# direct methods
.method public constructor <init>(Lcom/amazon/nwstd/toc/TOCListController;)V
    .locals 0

    .line 27
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/amazon/nwstd/toc/TOCListAdapter;->mTOCListController:Lcom/amazon/nwstd/toc/TOCListController;

    return-void
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getCount()I
    .locals 1

    .line 33
    iget-object v0, p0, Lcom/amazon/nwstd/toc/TOCListAdapter;->mTOCListController:Lcom/amazon/nwstd/toc/TOCListController;

    invoke-virtual {v0}, Lcom/amazon/nwstd/toc/TOCListController;->getCount()I

    move-result v0

    return v0
.end method

.method public getItem(I)Lcom/amazon/android/docviewer/ITOCItem;
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/amazon/nwstd/toc/TOCListAdapter;->mTOCListController:Lcom/amazon/nwstd/toc/TOCListController;

    invoke-virtual {v0, p1}, Lcom/amazon/nwstd/toc/TOCListController;->getItem(I)Lcom/amazon/android/docviewer/ITOCItem;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 0

    .line 14
    invoke-virtual {p0, p1}, Lcom/amazon/nwstd/toc/TOCListAdapter;->getItem(I)Lcom/amazon/android/docviewer/ITOCItem;

    move-result-object p1

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 1

    .line 59
    iget-object v0, p0, Lcom/amazon/nwstd/toc/TOCListAdapter;->mTOCListController:Lcom/amazon/nwstd/toc/TOCListController;

    invoke-virtual {v0, p1}, Lcom/amazon/nwstd/toc/TOCListController;->getItemViewType(I)I

    move-result p1

    return p1
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    .line 65
    check-cast p3, Landroid/widget/ListView;

    invoke-virtual {p3}, Landroid/widget/ListView;->getCheckedItemPosition()I

    move-result v0

    .line 66
    invoke-virtual {p3}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result p3

    const/4 v1, 0x1

    if-ne p3, v1, :cond_0

    add-int/lit8 v0, v0, -0x1

    .line 70
    :cond_0
    iget-object p3, p0, Lcom/amazon/nwstd/toc/TOCListAdapter;->mTOCListController:Lcom/amazon/nwstd/toc/TOCListController;

    invoke-virtual {p3, p1, p2, v0}, Lcom/amazon/nwstd/toc/TOCListController;->getView(ILandroid/view/View;I)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public getViewTypeCount()I
    .locals 1

    .line 54
    iget-object v0, p0, Lcom/amazon/nwstd/toc/TOCListAdapter;->mTOCListController:Lcom/amazon/nwstd/toc/TOCListController;

    invoke-virtual {v0}, Lcom/amazon/nwstd/toc/TOCListController;->getViewTypeCount()I

    move-result v0

    return v0
.end method

.method public isEnabled(I)Z
    .locals 1

    .line 75
    iget-object v0, p0, Lcom/amazon/nwstd/toc/TOCListAdapter;->mTOCListController:Lcom/amazon/nwstd/toc/TOCListController;

    invoke-virtual {p0, p1}, Lcom/amazon/nwstd/toc/TOCListAdapter;->getItem(I)Lcom/amazon/android/docviewer/ITOCItem;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/amazon/nwstd/toc/TOCListController;->isArticleItem(Lcom/amazon/android/docviewer/ITOCItem;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 p1, 0x1

    return p1
.end method
