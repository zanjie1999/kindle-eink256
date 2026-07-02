.class public final Lcom/amazon/kcp/library/ui/ReadjustableSelectionListView;
.super Landroid/widget/ListView;
.source "ReadjustableSelectionListView.kt"


# instance fields
.field private previousHeaderCount:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    invoke-direct {p0, p1, p2}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private final getAdjustedCheckedItems(I)Landroid/util/SparseBooleanArray;
    .locals 6

    .line 63
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-virtual {p0}, Landroid/widget/ListView;->getCheckedItemCount()I

    move-result v1

    invoke-direct {v0, v1}, Landroid/util/SparseBooleanArray;-><init>(I)V

    .line 64
    invoke-virtual {p0}, Landroid/widget/ListView;->getCheckedItemPositions()Landroid/util/SparseBooleanArray;

    move-result-object v1

    if-eqz v1, :cond_1

    const/4 v2, 0x0

    .line 65
    invoke-virtual {v1}, Landroid/util/SparseBooleanArray;->size()I

    move-result v3

    :goto_0
    if-ge v2, v3, :cond_1

    .line 66
    invoke-virtual {v1, v2}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v4

    .line 67
    invoke-virtual {v1, v2}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v5

    if-eqz v5, :cond_0

    sub-int/2addr v4, p1

    .line 69
    invoke-virtual {v0, v4, v5}, Landroid/util/SparseBooleanArray;->append(IZ)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private final readjustSelectedItems()V
    .locals 5

    .line 50
    iget v0, p0, Lcom/amazon/kcp/library/ui/ReadjustableSelectionListView;->previousHeaderCount:I

    invoke-virtual {p0}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v1

    if-ne v0, v1, :cond_0

    return-void

    .line 53
    :cond_0
    iget v0, p0, Lcom/amazon/kcp/library/ui/ReadjustableSelectionListView;->previousHeaderCount:I

    invoke-virtual {p0}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v1

    sub-int/2addr v0, v1

    .line 54
    invoke-virtual {p0}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v1

    iput v1, p0, Lcom/amazon/kcp/library/ui/ReadjustableSelectionListView;->previousHeaderCount:I

    .line 55
    invoke-direct {p0, v0}, Lcom/amazon/kcp/library/ui/ReadjustableSelectionListView;->getAdjustedCheckedItems(I)Landroid/util/SparseBooleanArray;

    move-result-object v0

    .line 56
    invoke-virtual {p0}, Landroid/widget/ListView;->clearChoices()V

    const/4 v1, 0x0

    .line 57
    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->size()I

    move-result v2

    :goto_0
    if-ge v1, v2, :cond_1

    .line 58
    invoke-virtual {v0, v1}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v3

    invoke-virtual {v0, v1}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v4

    invoke-virtual {p0, v3, v4}, Landroid/widget/ListView;->setItemChecked(IZ)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V
    .locals 0

    .line 25
    invoke-super {p0, p1, p2, p3}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 26
    invoke-direct {p0}, Lcom/amazon/kcp/library/ui/ReadjustableSelectionListView;->readjustSelectedItems()V

    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 43
    check-cast p1, Landroid/os/Bundle;

    const-string v0, "STATE_SUPER_LIST_VIEW"

    .line 44
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/widget/ListView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    const-string v0, "HEADER_OFFSET"

    .line 45
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/amazon/kcp/library/ui/ReadjustableSelectionListView;->previousHeaderCount:I

    .line 46
    invoke-direct {p0}, Lcom/amazon/kcp/library/ui/ReadjustableSelectionListView;->readjustSelectedItems()V

    return-void

    .line 43
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "null cannot be cast to non-null type android.os.Bundle"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .line 36
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 37
    iget v1, p0, Lcom/amazon/kcp/library/ui/ReadjustableSelectionListView;->previousHeaderCount:I

    const-string v2, "HEADER_OFFSET"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 38
    invoke-super {p0}, Landroid/widget/ListView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    const-string v2, "STATE_SUPER_LIST_VIEW"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    return-object v0
.end method

.method public removeHeaderView(Landroid/view/View;)Z
    .locals 0

    .line 30
    invoke-super {p0, p1}, Landroid/widget/ListView;->removeHeaderView(Landroid/view/View;)Z

    move-result p1

    .line 31
    invoke-direct {p0}, Lcom/amazon/kcp/library/ui/ReadjustableSelectionListView;->readjustSelectedItems()V

    return p1
.end method
