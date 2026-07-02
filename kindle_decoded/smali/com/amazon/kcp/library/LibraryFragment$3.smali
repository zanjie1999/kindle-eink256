.class Lcom/amazon/kcp/library/LibraryFragment$3;
.super Lcom/amazon/kcp/library/SwipeRefreshHelper$ListenerAdapter;
.source "LibraryFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/library/LibraryFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/library/LibraryFragment;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/library/LibraryFragment;)V
    .locals 0

    .line 182
    iput-object p1, p0, Lcom/amazon/kcp/library/LibraryFragment$3;->this$0:Lcom/amazon/kcp/library/LibraryFragment;

    invoke-direct {p0}, Lcom/amazon/kcp/library/SwipeRefreshHelper$ListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onBeforeRefreshStarted()V
    .locals 1

    .line 185
    iget-object v0, p0, Lcom/amazon/kcp/library/LibraryFragment$3;->this$0:Lcom/amazon/kcp/library/LibraryFragment;

    invoke-static {v0}, Lcom/amazon/kcp/library/LibraryFragment;->access$600(Lcom/amazon/kcp/library/LibraryFragment;)Lcom/amazon/kcp/library/fragments/LibraryFragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/kcp/library/fragments/LibraryFragmentManager;->getCurrentFragmentHandler()Lcom/amazon/kcp/library/fragments/ILibraryFragmentHandler;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 187
    invoke-interface {v0}, Lcom/amazon/kcp/library/fragments/ILibraryFragmentHandler;->refresh()V

    :cond_0
    return-void
.end method
