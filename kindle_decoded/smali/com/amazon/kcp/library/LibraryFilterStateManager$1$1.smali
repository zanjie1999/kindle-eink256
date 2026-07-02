.class Lcom/amazon/kcp/library/LibraryFilterStateManager$1$1;
.super Ljava/lang/Object;
.source "LibraryFilterStateManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/library/LibraryFilterStateManager$1;->onLibraryFilterItemDeregistered(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/amazon/kcp/library/LibraryFilterStateManager$1;

.field final synthetic val$groupId:Ljava/lang/String;

.field final synthetic val$itemId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/library/LibraryFilterStateManager$1;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 83
    iput-object p1, p0, Lcom/amazon/kcp/library/LibraryFilterStateManager$1$1;->this$1:Lcom/amazon/kcp/library/LibraryFilterStateManager$1;

    iput-object p2, p0, Lcom/amazon/kcp/library/LibraryFilterStateManager$1$1;->val$groupId:Ljava/lang/String;

    iput-object p3, p0, Lcom/amazon/kcp/library/LibraryFilterStateManager$1$1;->val$itemId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 86
    iget-object v0, p0, Lcom/amazon/kcp/library/LibraryFilterStateManager$1$1;->this$1:Lcom/amazon/kcp/library/LibraryFilterStateManager$1;

    iget-object v0, v0, Lcom/amazon/kcp/library/LibraryFilterStateManager$1;->this$0:Lcom/amazon/kcp/library/LibraryFilterStateManager;

    iget-object v1, p0, Lcom/amazon/kcp/library/LibraryFilterStateManager$1$1;->val$groupId:Ljava/lang/String;

    iget-object v2, p0, Lcom/amazon/kcp/library/LibraryFilterStateManager$1$1;->val$itemId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/amazon/kcp/library/LibraryFilterStateManager;->isItemIdSelected(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 87
    iget-object v0, p0, Lcom/amazon/kcp/library/LibraryFilterStateManager$1$1;->this$1:Lcom/amazon/kcp/library/LibraryFilterStateManager$1;

    iget-object v0, v0, Lcom/amazon/kcp/library/LibraryFilterStateManager$1;->this$0:Lcom/amazon/kcp/library/LibraryFilterStateManager;

    iget-object v1, p0, Lcom/amazon/kcp/library/LibraryFilterStateManager$1$1;->val$groupId:Ljava/lang/String;

    iget-object v2, p0, Lcom/amazon/kcp/library/LibraryFilterStateManager$1$1;->val$itemId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/amazon/kcp/library/LibraryFilterStateManager;->toggleItemId(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
