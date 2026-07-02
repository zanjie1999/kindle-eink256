.class Lcom/amazon/kcp/library/LibraryContentInteractionHandler$24;
.super Ljava/lang/Object;
.source "LibraryContentInteractionHandler.java"

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/library/LibraryContentInteractionHandler;->prepareDiscoverableActions(Landroid/view/Menu;Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/library/LibraryContentInteractionHandler;

.field final synthetic val$action:Lcom/amazon/kindle/krx/library/LibraryBookAction;

.field final synthetic val$checkedContent:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/library/LibraryContentInteractionHandler;Lcom/amazon/kindle/krx/library/LibraryBookAction;Ljava/util/List;)V
    .locals 0

    .line 1352
    iput-object p1, p0, Lcom/amazon/kcp/library/LibraryContentInteractionHandler$24;->this$0:Lcom/amazon/kcp/library/LibraryContentInteractionHandler;

    iput-object p2, p0, Lcom/amazon/kcp/library/LibraryContentInteractionHandler$24;->val$action:Lcom/amazon/kindle/krx/library/LibraryBookAction;

    iput-object p3, p0, Lcom/amazon/kcp/library/LibraryContentInteractionHandler$24;->val$checkedContent:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 2

    .line 1355
    iget-object p1, p0, Lcom/amazon/kcp/library/LibraryContentInteractionHandler$24;->val$action:Lcom/amazon/kindle/krx/library/LibraryBookAction;

    invoke-interface {p1}, Lcom/amazon/kindle/krx/action/Action;->execute()V

    .line 1356
    iget-object p1, p0, Lcom/amazon/kcp/library/LibraryContentInteractionHandler$24;->val$action:Lcom/amazon/kindle/krx/library/LibraryBookAction;

    invoke-interface {p1}, Lcom/amazon/kindle/krx/action/Action;->getMetricsTag()Ljava/lang/String;

    move-result-object p1

    .line 1357
    iget-object v0, p0, Lcom/amazon/kcp/library/LibraryContentInteractionHandler$24;->this$0:Lcom/amazon/kcp/library/LibraryContentInteractionHandler;

    const-string v1, "ContextMenuPopulator"

    invoke-virtual {v0, v1, p1}, Lcom/amazon/kcp/library/ContentInteractionHandler;->reportMetric(Ljava/lang/String;Ljava/lang/String;)V

    .line 1358
    iget-object v0, p0, Lcom/amazon/kcp/library/LibraryContentInteractionHandler$24;->this$0:Lcom/amazon/kcp/library/LibraryContentInteractionHandler;

    iget-object v1, p0, Lcom/amazon/kcp/library/LibraryContentInteractionHandler$24;->val$checkedContent:Ljava/util/List;

    invoke-static {v0, p1, v1}, Lcom/amazon/kcp/library/LibraryContentInteractionHandler;->access$600(Lcom/amazon/kcp/library/LibraryContentInteractionHandler;Ljava/lang/String;Ljava/util/List;)V

    .line 1359
    iget-object p1, p0, Lcom/amazon/kcp/library/LibraryContentInteractionHandler$24;->this$0:Lcom/amazon/kcp/library/LibraryContentInteractionHandler;

    invoke-static {p1}, Lcom/amazon/kcp/library/LibraryContentInteractionHandler;->access$700(Lcom/amazon/kcp/library/LibraryContentInteractionHandler;)Landroid/view/ActionMode;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 1360
    iget-object p1, p0, Lcom/amazon/kcp/library/LibraryContentInteractionHandler$24;->this$0:Lcom/amazon/kcp/library/LibraryContentInteractionHandler;

    invoke-static {p1}, Lcom/amazon/kcp/library/LibraryContentInteractionHandler;->access$700(Lcom/amazon/kcp/library/LibraryContentInteractionHandler;)Landroid/view/ActionMode;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ActionMode;->finish()V

    :cond_0
    const/4 p1, 0x1

    return p1
.end method
