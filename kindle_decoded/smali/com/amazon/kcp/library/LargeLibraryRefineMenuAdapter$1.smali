.class Lcom/amazon/kcp/library/LargeLibraryRefineMenuAdapter$1;
.super Ljava/lang/Object;
.source "LargeLibraryRefineMenuAdapter.java"

# interfaces
.implements Lcom/amazon/kindle/observablemodel/LibraryContainerCountListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/library/LargeLibraryRefineMenuAdapter;->setChildViewProperties(IILcom/amazon/kcp/widget/LibraryFilterItemView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/library/LargeLibraryRefineMenuAdapter;

.field final synthetic val$filterItem:Lcom/amazon/kcp/library/LibraryFilterItem;

.field final synthetic val$filterItemView:Lcom/amazon/kcp/widget/LibraryFilterItemView;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/library/LargeLibraryRefineMenuAdapter;Lcom/amazon/kcp/widget/LibraryFilterItemView;Lcom/amazon/kcp/library/LibraryFilterItem;)V
    .locals 0

    .line 88
    iput-object p1, p0, Lcom/amazon/kcp/library/LargeLibraryRefineMenuAdapter$1;->this$0:Lcom/amazon/kcp/library/LargeLibraryRefineMenuAdapter;

    iput-object p2, p0, Lcom/amazon/kcp/library/LargeLibraryRefineMenuAdapter$1;->val$filterItemView:Lcom/amazon/kcp/widget/LibraryFilterItemView;

    iput-object p3, p0, Lcom/amazon/kcp/library/LargeLibraryRefineMenuAdapter$1;->val$filterItem:Lcom/amazon/kcp/library/LibraryFilterItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCountUpdate(Lcom/amazon/kindle/observablemodel/ModelCountUpdate;)V
    .locals 8

    .line 91
    invoke-virtual {p1}, Lcom/amazon/kindle/observablemodel/ModelCountUpdate;->getCount()J

    move-result-wide v0

    .line 92
    iget-object p1, p0, Lcom/amazon/kcp/library/LargeLibraryRefineMenuAdapter$1;->val$filterItemView:Lcom/amazon/kcp/widget/LibraryFilterItemView;

    invoke-virtual {p1, v0, v1}, Lcom/amazon/kcp/widget/LibraryFilterItemView;->setItemCount(J)V

    .line 96
    iget-object p1, p0, Lcom/amazon/kcp/library/LargeLibraryRefineMenuAdapter$1;->val$filterItem:Lcom/amazon/kcp/library/LibraryFilterItem;

    invoke-virtual {p1}, Lcom/amazon/kcp/library/LibraryFilterItem;->getContentDescriptionFormatArgs()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 97
    iget-object p1, p0, Lcom/amazon/kcp/library/LargeLibraryRefineMenuAdapter$1;->this$0:Lcom/amazon/kcp/library/LargeLibraryRefineMenuAdapter;

    iget-object p1, p1, Lcom/amazon/kcp/library/LibraryRefineMenuAdapter;->activity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/amazon/kcp/library/LargeLibraryRefineMenuAdapter$1;->val$filterItem:Lcom/amazon/kcp/library/LibraryFilterItem;

    invoke-virtual {v2}, Lcom/amazon/kcp/library/LibraryFilterItem;->getContentDescriptionResId()I

    move-result v2

    iget-object v3, p0, Lcom/amazon/kcp/library/LargeLibraryRefineMenuAdapter$1;->val$filterItem:Lcom/amazon/kcp/library/LibraryFilterItem;

    .line 98
    invoke-virtual {v3}, Lcom/amazon/kcp/library/LibraryFilterItem;->getContentDescriptionFormatArgs()[Ljava/lang/Object;

    move-result-object v3

    .line 97
    invoke-virtual {p1, v2, v3}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 100
    :cond_0
    iget-object p1, p0, Lcom/amazon/kcp/library/LargeLibraryRefineMenuAdapter$1;->this$0:Lcom/amazon/kcp/library/LargeLibraryRefineMenuAdapter;

    iget-object p1, p1, Lcom/amazon/kcp/library/LibraryRefineMenuAdapter;->activity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/amazon/kcp/library/LargeLibraryRefineMenuAdapter$1;->val$filterItem:Lcom/amazon/kcp/library/LibraryFilterItem;

    invoke-virtual {v2}, Lcom/amazon/kcp/library/LibraryFilterItem;->getContentDescriptionResId()I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 103
    :goto_0
    sget-object v2, Lcom/amazon/kcp/library/LargeLibraryRefineMenuAdapter$2;->$SwitchMap$com$amazon$kcp$library$LibraryFilterItem$FilterViewType:[I

    iget-object v3, p0, Lcom/amazon/kcp/library/LargeLibraryRefineMenuAdapter$1;->val$filterItem:Lcom/amazon/kcp/library/LibraryFilterItem;

    invoke-virtual {v3}, Lcom/amazon/kcp/library/LibraryFilterItem;->getFilterViewType()Lcom/amazon/kcp/library/LibraryFilterItem$FilterViewType;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget v2, v2, v3

    const/4 v3, 0x1

    if-eq v2, v3, :cond_2

    .line 110
    iget-object v2, p0, Lcom/amazon/kcp/library/LargeLibraryRefineMenuAdapter$1;->val$filterItemView:Lcom/amazon/kcp/widget/LibraryFilterItemView;

    iget-object v4, p0, Lcom/amazon/kcp/library/LargeLibraryRefineMenuAdapter$1;->this$0:Lcom/amazon/kcp/library/LargeLibraryRefineMenuAdapter;

    iget-object v4, v4, Lcom/amazon/kcp/library/LibraryRefineMenuAdapter;->activity:Landroid/app/Activity;

    const-wide/16 v5, 0x1

    cmp-long v7, v0, v5

    if-nez v7, :cond_1

    sget v5, Lcom/amazon/kindle/librarymodule/R$string;->item_count_desc_singular:I

    goto :goto_1

    :cond_1
    sget v5, Lcom/amazon/kindle/librarymodule/R$string;->item_count_desc:I

    :goto_1
    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object p1, v6, v7

    .line 113
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    aput-object p1, v6, v3

    .line 110
    invoke-virtual {v4, v5, v6}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Landroid/widget/FrameLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 105
    :cond_2
    iget-object v0, p0, Lcom/amazon/kcp/library/LargeLibraryRefineMenuAdapter$1;->val$filterItemView:Lcom/amazon/kcp/widget/LibraryFilterItemView;

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    :goto_2
    return-void
.end method
