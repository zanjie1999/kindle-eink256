.class public Lcom/amazon/xray/ui/util/ListViewUtil;
.super Ljava/lang/Object;
.source "ListViewUtil.java"


# direct methods
.method public static getFirstVisiblePositionOffset(Landroid/widget/ListView;)I
    .locals 1

    const/4 v0, 0x0

    .line 28
    invoke-virtual {p0, v0}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 29
    invoke-virtual {p0}, Landroid/view/View;->getTop()I

    move-result v0

    :cond_0
    return v0
.end method

.method public static setAdapter(Landroid/widget/ListView;Lcom/amazon/xray/ui/adapter/LabeledGroupListAdapter;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 43
    new-instance v0, Lcom/amazon/xray/ui/adapter/LabeledListAdapter;

    invoke-direct {v0, p1}, Lcom/amazon/xray/ui/adapter/LabeledListAdapter;-><init>(Lcom/amazon/xray/ui/adapter/LabeledGroupListAdapter;)V

    .line 44
    invoke-virtual {p0, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 47
    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 49
    invoke-virtual {p0, p1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    :goto_0
    return-void
.end method
