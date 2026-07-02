.class public Lcom/amazon/kcp/reader/ui/ViewOptionsSpinnerAdapter;
.super Landroid/widget/BaseAdapter;
.source "ViewOptionsSpinnerAdapter.java"


# static fields
.field private static final INVALID_ITEM_ID:I = -0x1


# instance fields
.field data:Lcom/amazon/kcp/reader/ui/ViewOptionData;


# direct methods
.method public constructor <init>(Lcom/amazon/kcp/reader/ui/ViewOptionData;)V
    .locals 0

    .line 15
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/amazon/kcp/reader/ui/ViewOptionsSpinnerAdapter;->data:Lcom/amazon/kcp/reader/ui/ViewOptionData;

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 26
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ViewOptionsSpinnerAdapter;->data:Lcom/amazon/kcp/reader/ui/ViewOptionData;

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/ui/ViewOptionData;->getOptions()[Ljava/lang/String;

    move-result-object v0

    array-length v0, v0

    return v0
.end method

.method public getDropDownView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    .line 21
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ViewOptionsSpinnerAdapter;->data:Lcom/amazon/kcp/reader/ui/ViewOptionData;

    invoke-virtual {v0, p1, p2, p3}, Lcom/amazon/kcp/reader/ui/ViewOptionData;->inflateDropDownView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    .line 31
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ViewOptionsSpinnerAdapter;->data:Lcom/amazon/kcp/reader/ui/ViewOptionData;

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/ui/ViewOptionData;->getOptions()[Ljava/lang/String;

    move-result-object v0

    aget-object p1, v0, p1

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    if-ltz p1, :cond_1

    .line 36
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ViewOptionsSpinnerAdapter;->data:Lcom/amazon/kcp/reader/ui/ViewOptionData;

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/ui/ViewOptionData;->getOptions()[Ljava/lang/String;

    move-result-object v0

    array-length v0, v0

    if-gt v0, p1, :cond_0

    goto :goto_0

    .line 39
    :cond_0
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ViewOptionsSpinnerAdapter;->data:Lcom/amazon/kcp/reader/ui/ViewOptionData;

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/ui/ViewOptionData;->getOptions()[Ljava/lang/String;

    move-result-object v0

    aget-object p1, v0, p1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p1

    int-to-long v0, p1

    return-wide v0

    :cond_1
    :goto_0
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    .line 49
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ViewOptionsSpinnerAdapter;->data:Lcom/amazon/kcp/reader/ui/ViewOptionData;

    invoke-virtual {v0, p1, p2, p3}, Lcom/amazon/kcp/reader/ui/ViewOptionData;->inflateSelectedView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public hasStableIds()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .line 54
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ViewOptionsSpinnerAdapter;->data:Lcom/amazon/kcp/reader/ui/ViewOptionData;

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/ui/ViewOptionData;->getOptions()[Ljava/lang/String;

    move-result-object v0

    array-length v0, v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isEnabled(I)Z
    .locals 1

    .line 59
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ViewOptionsSpinnerAdapter;->data:Lcom/amazon/kcp/reader/ui/ViewOptionData;

    invoke-virtual {v0, p1}, Lcom/amazon/kcp/reader/ui/ViewOptionData;->isItemEnabled(I)Z

    move-result p1

    return p1
.end method
