.class public Lcom/amazon/xray/ui/adapter/LabeledListAdapter;
.super Landroid/widget/BaseAdapter;
.source "LabeledListAdapter.java"

# interfaces
.implements Landroid/widget/SectionIndexer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/xray/ui/adapter/LabeledListAdapter$ForwardingDataSetObserver;
    }
.end annotation


# static fields
.field private static final VIEW_TYPE_COUNT:I = 0x3


# instance fields
.field private adapter:Lcom/amazon/xray/ui/adapter/LabeledGroupListAdapter;

.field private dataSetObserver:Lcom/amazon/xray/ui/adapter/LabeledListAdapter$ForwardingDataSetObserver;


# direct methods
.method public constructor <init>(Lcom/amazon/xray/ui/adapter/LabeledGroupListAdapter;)V
    .locals 2

    .line 34
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 26
    new-instance v0, Lcom/amazon/xray/ui/adapter/LabeledListAdapter$ForwardingDataSetObserver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/amazon/xray/ui/adapter/LabeledListAdapter$ForwardingDataSetObserver;-><init>(Lcom/amazon/xray/ui/adapter/LabeledListAdapter;Lcom/amazon/xray/ui/adapter/LabeledListAdapter$1;)V

    iput-object v0, p0, Lcom/amazon/xray/ui/adapter/LabeledListAdapter;->dataSetObserver:Lcom/amazon/xray/ui/adapter/LabeledListAdapter$ForwardingDataSetObserver;

    if-eqz p1, :cond_0

    .line 36
    invoke-virtual {p1, v0}, Landroid/widget/BaseExpandableListAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 39
    :cond_0
    iput-object p1, p0, Lcom/amazon/xray/ui/adapter/LabeledListAdapter;->adapter:Lcom/amazon/xray/ui/adapter/LabeledGroupListAdapter;

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

    .line 44
    iget-object v0, p0, Lcom/amazon/xray/ui/adapter/LabeledListAdapter;->adapter:Lcom/amazon/xray/ui/adapter/LabeledGroupListAdapter;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget v0, v0, Lcom/amazon/xray/ui/adapter/LabeledGroupListAdapter;->count:I

    :goto_0
    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    .line 49
    iget-object v0, p0, Lcom/amazon/xray/ui/adapter/LabeledListAdapter;->adapter:Lcom/amazon/xray/ui/adapter/LabeledGroupListAdapter;

    invoke-virtual {v0, p1}, Lcom/amazon/xray/ui/adapter/LabeledGroupListAdapter;->isGroup(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 50
    iget-object v0, p0, Lcom/amazon/xray/ui/adapter/LabeledListAdapter;->adapter:Lcom/amazon/xray/ui/adapter/LabeledGroupListAdapter;

    invoke-virtual {v0, p1}, Lcom/amazon/xray/ui/adapter/LabeledGroupListAdapter;->getSectionForPosition(I)I

    move-result p1

    .line 51
    iget-object v0, p0, Lcom/amazon/xray/ui/adapter/LabeledListAdapter;->adapter:Lcom/amazon/xray/ui/adapter/LabeledGroupListAdapter;

    invoke-virtual {v0, p1}, Lcom/amazon/xray/ui/adapter/LabeledGroupListAdapter;->getGroup(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 53
    :cond_0
    iget-object v0, p0, Lcom/amazon/xray/ui/adapter/LabeledListAdapter;->adapter:Lcom/amazon/xray/ui/adapter/LabeledGroupListAdapter;

    invoke-virtual {v0, p1}, Lcom/amazon/xray/ui/adapter/LabeledGroupListAdapter;->getChildItemForPosition(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 3

    .line 81
    iget-object v0, p0, Lcom/amazon/xray/ui/adapter/LabeledListAdapter;->adapter:Lcom/amazon/xray/ui/adapter/LabeledGroupListAdapter;

    invoke-virtual {v0, p1}, Lcom/amazon/xray/ui/adapter/LabeledGroupListAdapter;->isGroup(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 85
    :cond_0
    iget-object v0, p0, Lcom/amazon/xray/ui/adapter/LabeledListAdapter;->adapter:Lcom/amazon/xray/ui/adapter/LabeledGroupListAdapter;

    invoke-virtual {v0, p1}, Lcom/amazon/xray/ui/adapter/LabeledGroupListAdapter;->getSectionForPosition(I)I

    move-result v0

    .line 86
    iget-object v1, p0, Lcom/amazon/xray/ui/adapter/LabeledListAdapter;->adapter:Lcom/amazon/xray/ui/adapter/LabeledGroupListAdapter;

    invoke-virtual {v1, v0}, Lcom/amazon/xray/ui/adapter/LabeledGroupListAdapter;->getPositionForSection(I)I

    move-result v1

    sub-int/2addr p1, v1

    const/4 v1, 0x1

    sub-int/2addr p1, v1

    .line 87
    iget-object v2, p0, Lcom/amazon/xray/ui/adapter/LabeledListAdapter;->adapter:Lcom/amazon/xray/ui/adapter/LabeledGroupListAdapter;

    invoke-virtual {v2, v0, p1}, Lcom/amazon/xray/ui/adapter/LabeledGroupListAdapter;->getChildType(II)I

    move-result p1

    if-ne p1, v1, :cond_1

    return v1

    :cond_1
    const/4 p1, 0x2

    return p1
.end method

.method public getPositionForSection(I)I
    .locals 1

    .line 111
    iget-object v0, p0, Lcom/amazon/xray/ui/adapter/LabeledListAdapter;->adapter:Lcom/amazon/xray/ui/adapter/LabeledGroupListAdapter;

    invoke-virtual {v0, p1}, Lcom/amazon/xray/ui/adapter/LabeledGroupListAdapter;->getPositionForSection(I)I

    move-result p1

    return p1
.end method

.method public getSectionForPosition(I)I
    .locals 1

    .line 116
    iget-object v0, p0, Lcom/amazon/xray/ui/adapter/LabeledListAdapter;->adapter:Lcom/amazon/xray/ui/adapter/LabeledGroupListAdapter;

    invoke-virtual {v0, p1}, Lcom/amazon/xray/ui/adapter/LabeledGroupListAdapter;->getSectionForPosition(I)I

    move-result p1

    return p1
.end method

.method public getSections()[Ljava/lang/Object;
    .locals 1

    .line 106
    iget-object v0, p0, Lcom/amazon/xray/ui/adapter/LabeledListAdapter;->adapter:Lcom/amazon/xray/ui/adapter/LabeledGroupListAdapter;

    invoke-virtual {v0}, Lcom/amazon/xray/ui/adapter/LabeledGroupListAdapter;->getSections()[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7

    .line 64
    iget-object v0, p0, Lcom/amazon/xray/ui/adapter/LabeledListAdapter;->adapter:Lcom/amazon/xray/ui/adapter/LabeledGroupListAdapter;

    invoke-virtual {v0, p1}, Lcom/amazon/xray/ui/adapter/LabeledGroupListAdapter;->getSectionForPosition(I)I

    move-result v2

    .line 65
    iget-object v0, p0, Lcom/amazon/xray/ui/adapter/LabeledListAdapter;->adapter:Lcom/amazon/xray/ui/adapter/LabeledGroupListAdapter;

    invoke-virtual {v0, p1}, Lcom/amazon/xray/ui/adapter/LabeledGroupListAdapter;->isGroup(I)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 66
    iget-object p1, p0, Lcom/amazon/xray/ui/adapter/LabeledListAdapter;->adapter:Lcom/amazon/xray/ui/adapter/LabeledGroupListAdapter;

    invoke-virtual {p1, v2, v1, p2, p3}, Lcom/amazon/xray/ui/adapter/LabeledGroupListAdapter;->getGroupView(IZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    return-object p1

    .line 68
    :cond_0
    iget-object v0, p0, Lcom/amazon/xray/ui/adapter/LabeledListAdapter;->adapter:Lcom/amazon/xray/ui/adapter/LabeledGroupListAdapter;

    invoke-virtual {v0, v2}, Lcom/amazon/xray/ui/adapter/LabeledGroupListAdapter;->getPositionForSection(I)I

    move-result v0

    sub-int/2addr p1, v0

    add-int/lit8 v3, p1, -0x1

    .line 69
    iget-object p1, p0, Lcom/amazon/xray/ui/adapter/LabeledListAdapter;->adapter:Lcom/amazon/xray/ui/adapter/LabeledGroupListAdapter;

    iget v0, p1, Lcom/amazon/xray/ui/adapter/LabeledGroupListAdapter;->count:I

    sub-int/2addr v0, v1

    if-ne v3, v0, :cond_1

    const/4 v4, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    const/4 v4, 0x0

    :goto_0
    move-object v1, p1

    move-object v5, p2

    move-object v6, p3

    invoke-virtual/range {v1 .. v6}, Lcom/amazon/xray/ui/adapter/LabeledGroupListAdapter;->getChildView(IIZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public getViewTypeCount()I
    .locals 1

    const/4 v0, 0x3

    return v0
.end method

.method public isEnabled(I)Z
    .locals 1

    .line 101
    iget-object v0, p0, Lcom/amazon/xray/ui/adapter/LabeledListAdapter;->adapter:Lcom/amazon/xray/ui/adapter/LabeledGroupListAdapter;

    invoke-virtual {v0, p1}, Lcom/amazon/xray/ui/adapter/LabeledGroupListAdapter;->isGroup(I)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method
