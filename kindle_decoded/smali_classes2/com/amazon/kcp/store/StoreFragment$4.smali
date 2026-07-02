.class Lcom/amazon/kcp/store/StoreFragment$4;
.super Ljava/lang/Object;
.source "StoreFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/store/StoreFragment;->initiateStoreLoad(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/store/StoreFragment;

.field final synthetic val$counter:I


# direct methods
.method constructor <init>(Lcom/amazon/kcp/store/StoreFragment;I)V
    .locals 0

    .line 1142
    iput-object p1, p0, Lcom/amazon/kcp/store/StoreFragment$4;->this$0:Lcom/amazon/kcp/store/StoreFragment;

    iput p2, p0, Lcom/amazon/kcp/store/StoreFragment$4;->val$counter:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1145
    iget-object v0, p0, Lcom/amazon/kcp/store/StoreFragment$4;->this$0:Lcom/amazon/kcp/store/StoreFragment;

    invoke-virtual {v0}, Lcom/amazon/kcp/store/StoreFragment;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 1148
    :cond_0
    iget-object v0, p0, Lcom/amazon/kcp/store/StoreFragment$4;->this$0:Lcom/amazon/kcp/store/StoreFragment;

    invoke-virtual {v0}, Lcom/amazon/kcp/store/StoreFragment;->hasNetworkConnection()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1149
    iget-object v0, p0, Lcom/amazon/kcp/store/StoreFragment$4;->this$0:Lcom/amazon/kcp/store/StoreFragment;

    invoke-virtual {v0}, Lcom/amazon/kcp/store/StoreFragment;->showStore()V

    goto :goto_0

    .line 1151
    :cond_1
    iget-object v0, p0, Lcom/amazon/kcp/store/StoreFragment$4;->this$0:Lcom/amazon/kcp/store/StoreFragment;

    iget v1, p0, Lcom/amazon/kcp/store/StoreFragment$4;->val$counter:I

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lcom/amazon/kcp/store/StoreFragment;->initiateStoreLoad(I)V

    :goto_0
    return-void
.end method
