.class Lcom/amazon/kindle/nln/BaseNonLinearFragment$2;
.super Ljava/lang/Object;
.source "BaseNonLinearFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kindle/nln/BaseNonLinearFragment;->onMarkedPositionsChanged(Ljava/util/List;Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kindle/nln/BaseNonLinearFragment;

.field final synthetic val$markAdded:Ljava/util/List;

.field final synthetic val$markRemoved:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/amazon/kindle/nln/BaseNonLinearFragment;Ljava/util/List;Ljava/util/List;)V
    .locals 0

    .line 1136
    iput-object p1, p0, Lcom/amazon/kindle/nln/BaseNonLinearFragment$2;->this$0:Lcom/amazon/kindle/nln/BaseNonLinearFragment;

    iput-object p2, p0, Lcom/amazon/kindle/nln/BaseNonLinearFragment$2;->val$markRemoved:Ljava/util/List;

    iput-object p3, p0, Lcom/amazon/kindle/nln/BaseNonLinearFragment$2;->val$markAdded:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1139
    iget-object v0, p0, Lcom/amazon/kindle/nln/BaseNonLinearFragment$2;->this$0:Lcom/amazon/kindle/nln/BaseNonLinearFragment;

    invoke-virtual {v0}, Lcom/amazon/kindle/nln/BaseNonLinearFragment;->getThumbnailManager()Lcom/amazon/kindle/nln/IThumbnailManager;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 1140
    invoke-interface {v0}, Lcom/amazon/kindle/nln/IThumbnailManager;->isDisposed()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_2

    .line 1148
    :cond_0
    iget-object v0, p0, Lcom/amazon/kindle/nln/BaseNonLinearFragment$2;->this$0:Lcom/amazon/kindle/nln/BaseNonLinearFragment;

    iget-object v0, v0, Lcom/amazon/kindle/nln/BaseNonLinearFragment;->mAdapter:Lcom/amazon/kindle/nln/NlnThumbnailAdapter;

    if-nez v0, :cond_1

    return-void

    .line 1154
    :cond_1
    iget-object v1, p0, Lcom/amazon/kindle/nln/BaseNonLinearFragment$2;->val$markRemoved:Ljava/util/List;

    const/4 v2, -0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_3

    .line 1155
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/amazon/kindle/krx/reader/IPosition;

    .line 1156
    invoke-virtual {v0, v4, v3}, Lcom/amazon/kindle/nln/NlnThumbnailAdapter;->getAdapterPositionForKRFPosition(Lcom/amazon/kindle/krx/reader/IPosition;Z)I

    move-result v4

    if-eq v4, v2, :cond_2

    .line 1158
    invoke-virtual {v0, v4}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    goto :goto_0

    .line 1163
    :cond_3
    iget-object v1, p0, Lcom/amazon/kindle/nln/BaseNonLinearFragment$2;->val$markAdded:Ljava/util/List;

    if-eqz v1, :cond_5

    .line 1164
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/amazon/kindle/krx/reader/IPosition;

    .line 1165
    invoke-virtual {v0, v4, v3}, Lcom/amazon/kindle/nln/NlnThumbnailAdapter;->getAdapterPositionForKRFPosition(Lcom/amazon/kindle/krx/reader/IPosition;Z)I

    move-result v4

    if-eq v4, v2, :cond_4

    .line 1167
    invoke-virtual {v0, v4}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    goto :goto_1

    .line 1173
    :cond_5
    iget-object v0, p0, Lcom/amazon/kindle/nln/BaseNonLinearFragment$2;->this$0:Lcom/amazon/kindle/nln/BaseNonLinearFragment;

    iget-object v0, v0, Lcom/amazon/kindle/nln/BaseNonLinearFragment;->breadcrumbManager:Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbManager;

    if-eqz v0, :cond_6

    .line 1174
    invoke-virtual {v0}, Lcom/amazon/kindle/nln/breadcrumb/BreadcrumbManager;->updateBreadcrumbBadges()V

    :cond_6
    :goto_2
    return-void
.end method
