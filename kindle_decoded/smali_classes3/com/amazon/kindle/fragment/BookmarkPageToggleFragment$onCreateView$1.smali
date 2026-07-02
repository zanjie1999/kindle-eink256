.class final Lcom/amazon/kindle/fragment/BookmarkPageToggleFragment$onCreateView$1;
.super Ljava/lang/Object;
.source "BookmarkPageToggleFragment.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kindle/fragment/BookmarkPageToggleFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $view:Landroid/view/View;

.field final synthetic this$0:Lcom/amazon/kindle/fragment/BookmarkPageToggleFragment;


# direct methods
.method constructor <init>(Lcom/amazon/kindle/fragment/BookmarkPageToggleFragment;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/amazon/kindle/fragment/BookmarkPageToggleFragment$onCreateView$1;->this$0:Lcom/amazon/kindle/fragment/BookmarkPageToggleFragment;

    iput-object p2, p0, Lcom/amazon/kindle/fragment/BookmarkPageToggleFragment$onCreateView$1;->$view:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    .line 125
    iget-object p1, p0, Lcom/amazon/kindle/fragment/BookmarkPageToggleFragment$onCreateView$1;->this$0:Lcom/amazon/kindle/fragment/BookmarkPageToggleFragment;

    invoke-static {p1}, Lcom/amazon/kindle/fragment/BookmarkPageToggleFragment;->access$getStateManager$p(Lcom/amazon/kindle/fragment/BookmarkPageToggleFragment;)Lcom/amazon/kindle/fragment/BookmarkPageToggleStateManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/amazon/kindle/fragment/BookmarkPageToggleStateManager;->canInteract()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 126
    iget-object p1, p0, Lcom/amazon/kindle/fragment/BookmarkPageToggleFragment$onCreateView$1;->this$0:Lcom/amazon/kindle/fragment/BookmarkPageToggleFragment;

    invoke-static {p1}, Lcom/amazon/kindle/fragment/BookmarkPageToggleFragment;->access$getAnnotationsManager$p(Lcom/amazon/kindle/fragment/BookmarkPageToggleFragment;)Lcom/amazon/android/docviewer/IDocViewerAnnotationsManager;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 127
    invoke-interface {p1}, Lcom/amazon/android/docviewer/IDocViewerAnnotationsManager;->hasBookmark()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    const-string v1, "Page"

    invoke-static {v0, v1}, Lcom/amazon/kcp/util/fastmetrics/InBookFastMetrics;->reportBookmarkAction(ZLjava/lang/String;)V

    .line 128
    iget-object v0, p0, Lcom/amazon/kindle/fragment/BookmarkPageToggleFragment$onCreateView$1;->this$0:Lcom/amazon/kindle/fragment/BookmarkPageToggleFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    instance-of v2, v0, Lcom/amazon/kcp/reader/ReaderActivity;

    if-nez v2, :cond_0

    const/4 v0, 0x0

    :cond_0
    check-cast v0, Lcom/amazon/kcp/reader/ReaderActivity;

    invoke-interface {p1, v1, v0}, Lcom/amazon/android/docviewer/IDocViewerAnnotationsManager;->toggleBookmark(Ljava/lang/String;Lcom/amazon/kcp/reader/ReaderActivity;)V

    .line 130
    iget-object p1, p0, Lcom/amazon/kindle/fragment/BookmarkPageToggleFragment$onCreateView$1;->$view:Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->performHapticFeedback(I)Z

    :cond_1
    return-void
.end method
