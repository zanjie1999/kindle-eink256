.class public final Lcom/amazon/kcp/library/RecyclerMultiSelectHelper$actionModeCallbackWrapper$1;
.super Ljava/lang/Object;
.source "RecyclerMultiSelectHelper.kt"

# interfaces
.implements Landroid/view/ActionMode$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/library/RecyclerMultiSelectHelper;-><init>(Landroid/app/Activity;Landroid/view/ActionMode$Callback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic $actionModeCallback:Landroid/view/ActionMode$Callback;

.field final synthetic this$0:Lcom/amazon/kcp/library/RecyclerMultiSelectHelper;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/library/RecyclerMultiSelectHelper;Landroid/view/ActionMode$Callback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ActionMode$Callback;",
            ")V"
        }
    .end annotation

    .line 30
    iput-object p1, p0, Lcom/amazon/kcp/library/RecyclerMultiSelectHelper$actionModeCallbackWrapper$1;->this$0:Lcom/amazon/kcp/library/RecyclerMultiSelectHelper;

    iput-object p2, p0, Lcom/amazon/kcp/library/RecyclerMultiSelectHelper$actionModeCallbackWrapper$1;->$actionModeCallback:Landroid/view/ActionMode$Callback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z
    .locals 1

    .line 32
    iget-object v0, p0, Lcom/amazon/kcp/library/RecyclerMultiSelectHelper$actionModeCallbackWrapper$1;->$actionModeCallback:Landroid/view/ActionMode$Callback;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Landroid/view/ActionMode$Callback;->onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/amazon/kcp/library/RecyclerMultiSelectHelper$actionModeCallbackWrapper$1;->$actionModeCallback:Landroid/view/ActionMode$Callback;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Landroid/view/ActionMode$Callback;->onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public onDestroyActionMode(Landroid/view/ActionMode;)V
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/amazon/kcp/library/RecyclerMultiSelectHelper$actionModeCallbackWrapper$1;->$actionModeCallback:Landroid/view/ActionMode$Callback;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Landroid/view/ActionMode$Callback;->onDestroyActionMode(Landroid/view/ActionMode;)V

    .line 45
    :cond_0
    iget-object p1, p0, Lcom/amazon/kcp/library/RecyclerMultiSelectHelper$actionModeCallbackWrapper$1;->this$0:Lcom/amazon/kcp/library/RecyclerMultiSelectHelper;

    invoke-virtual {p1}, Lcom/amazon/kcp/library/RecyclerMultiSelectHelper;->clear()V

    .line 46
    iget-object p1, p0, Lcom/amazon/kcp/library/RecyclerMultiSelectHelper$actionModeCallbackWrapper$1;->this$0:Lcom/amazon/kcp/library/RecyclerMultiSelectHelper;

    invoke-static {p1}, Lcom/amazon/kcp/library/RecyclerMultiSelectHelper;->access$getAdapter$p(Lcom/amazon/kcp/library/RecyclerMultiSelectHelper;)Lcom/amazon/kcp/library/AbstractRecyclerAdapter;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :cond_1
    return-void
.end method

.method public onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 1

    .line 40
    iget-object v0, p0, Lcom/amazon/kcp/library/RecyclerMultiSelectHelper$actionModeCallbackWrapper$1;->$actionModeCallback:Landroid/view/ActionMode$Callback;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Landroid/view/ActionMode$Callback;->onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
