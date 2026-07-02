.class final Lcom/amazon/kindle/setting/item/sync/SyncItemView$refresh$runnable$1;
.super Ljava/lang/Object;
.source "SyncItemView.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kindle/setting/item/sync/SyncItemView;->refresh()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $localSyncItem:Lcom/amazon/kindle/setting/item/sync/SyncItem;

.field final synthetic $syncStatus:Lcom/amazon/kindle/setting/item/sync/SyncStatus;

.field final synthetic this$0:Lcom/amazon/kindle/setting/item/sync/SyncItemView;


# direct methods
.method constructor <init>(Lcom/amazon/kindle/setting/item/sync/SyncItemView;Lcom/amazon/kindle/setting/item/sync/SyncStatus;Lcom/amazon/kindle/setting/item/sync/SyncItem;)V
    .locals 0

    iput-object p1, p0, Lcom/amazon/kindle/setting/item/sync/SyncItemView$refresh$runnable$1;->this$0:Lcom/amazon/kindle/setting/item/sync/SyncItemView;

    iput-object p2, p0, Lcom/amazon/kindle/setting/item/sync/SyncItemView$refresh$runnable$1;->$syncStatus:Lcom/amazon/kindle/setting/item/sync/SyncStatus;

    iput-object p3, p0, Lcom/amazon/kindle/setting/item/sync/SyncItemView$refresh$runnable$1;->$localSyncItem:Lcom/amazon/kindle/setting/item/sync/SyncItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 85
    iget-object v0, p0, Lcom/amazon/kindle/setting/item/sync/SyncItemView$refresh$runnable$1;->$syncStatus:Lcom/amazon/kindle/setting/item/sync/SyncStatus;

    invoke-virtual {v0}, Lcom/amazon/kindle/setting/item/sync/SyncStatus;->getCode()Lcom/amazon/kindle/setting/item/sync/SyncStatus$Code;

    move-result-object v0

    .line 86
    iget-object v1, p0, Lcom/amazon/kindle/setting/item/sync/SyncItemView$refresh$runnable$1;->$syncStatus:Lcom/amazon/kindle/setting/item/sync/SyncStatus;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/amazon/kindle/setting/item/sync/SyncStatus;->setHasConsumed(Z)V

    .line 88
    iget-object v1, p0, Lcom/amazon/kindle/setting/item/sync/SyncItemView$refresh$runnable$1;->this$0:Lcom/amazon/kindle/setting/item/sync/SyncItemView;

    invoke-virtual {v1}, Lcom/amazon/kindle/setting/item/sync/SyncItemView;->getSyncMenuItem()Landroid/view/View;

    move-result-object v1

    sget-object v3, Lcom/amazon/kindle/setting/item/sync/SyncStatus$Code;->SYNCING:Lcom/amazon/kindle/setting/item/sync/SyncStatus$Code;

    if-eq v0, v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v1, v2}, Landroid/view/View;->setClickable(Z)V

    .line 90
    iget-object v1, p0, Lcom/amazon/kindle/setting/item/sync/SyncItemView$refresh$runnable$1;->this$0:Lcom/amazon/kindle/setting/item/sync/SyncItemView;

    invoke-virtual {v1}, Lcom/amazon/kindle/setting/item/sync/SyncItemView;->getAnimationHelper()Lcom/amazon/kindle/setting/item/sync/SyncAnimationHelper;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1, v0}, Lcom/amazon/kindle/setting/item/sync/SyncAnimationHelper;->showAnimation(Lcom/amazon/kindle/setting/item/sync/SyncStatus$Code;)V

    .line 91
    :cond_1
    iget-object v1, p0, Lcom/amazon/kindle/setting/item/sync/SyncItemView$refresh$runnable$1;->this$0:Lcom/amazon/kindle/setting/item/sync/SyncItemView;

    iget-object v2, p0, Lcom/amazon/kindle/setting/item/sync/SyncItemView$refresh$runnable$1;->$localSyncItem:Lcom/amazon/kindle/setting/item/sync/SyncItem;

    invoke-virtual {v2}, Lcom/amazon/kindle/setting/item/template/PrimaryItem;->getSubTitle()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v0, v2}, Lcom/amazon/kindle/setting/item/sync/SyncItemView;->access$updateSyncStatusMessageView(Lcom/amazon/kindle/setting/item/sync/SyncItemView;Lcom/amazon/kindle/setting/item/sync/SyncStatus$Code;Ljava/lang/String;)V

    return-void
.end method
