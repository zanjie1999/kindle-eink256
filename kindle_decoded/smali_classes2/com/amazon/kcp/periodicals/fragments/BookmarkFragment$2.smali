.class Lcom/amazon/kcp/periodicals/fragments/BookmarkFragment$2;
.super Ljava/lang/Object;
.source "BookmarkFragment.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/periodicals/fragments/BookmarkFragment;->onActivityCreated(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/periodicals/fragments/BookmarkFragment;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/periodicals/fragments/BookmarkFragment;)V
    .locals 0

    .line 103
    iput-object p1, p0, Lcom/amazon/kcp/periodicals/fragments/BookmarkFragment$2;->this$0:Lcom/amazon/kcp/periodicals/fragments/BookmarkFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3

    .line 106
    iget-object v0, p0, Lcom/amazon/kcp/periodicals/fragments/BookmarkFragment$2;->this$0:Lcom/amazon/kcp/periodicals/fragments/BookmarkFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x1

    if-ne p1, v0, :cond_1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/amazon/kcp/periodicals/fragments/BookmarkFragment$2;->this$0:Lcom/amazon/kcp/periodicals/fragments/BookmarkFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-nez p1, :cond_1

    .line 109
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    float-to-int p1, p1

    .line 110
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p2

    float-to-int p2, p2

    .line 111
    iget-object v0, p0, Lcom/amazon/kcp/periodicals/fragments/BookmarkFragment$2;->this$0:Lcom/amazon/kcp/periodicals/fragments/BookmarkFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledWindowTouchSlop()I

    move-result v0

    .line 112
    iget-object v2, p0, Lcom/amazon/kcp/periodicals/fragments/BookmarkFragment$2;->this$0:Lcom/amazon/kcp/periodicals/fragments/BookmarkFragment;

    iget-object v2, v2, Lcom/amazon/kcp/periodicals/fragments/BookmarkFragment;->mBookmarkListFragment:Lcom/amazon/kcp/periodicals/fragments/BookmarkListFragment;

    invoke-virtual {v2}, Lcom/amazon/kcp/periodicals/fragments/BookmarkListFragment;->getBookmarkListContainer()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v2

    sub-int/2addr v2, v0

    if-lt p1, v2, :cond_0

    iget-object v2, p0, Lcom/amazon/kcp/periodicals/fragments/BookmarkFragment$2;->this$0:Lcom/amazon/kcp/periodicals/fragments/BookmarkFragment;

    iget-object v2, v2, Lcom/amazon/kcp/periodicals/fragments/BookmarkFragment;->mBookmarkListFragment:Lcom/amazon/kcp/periodicals/fragments/BookmarkListFragment;

    .line 113
    invoke-virtual {v2}, Lcom/amazon/kcp/periodicals/fragments/BookmarkListFragment;->getBookmarkListContainer()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result v2

    add-int/2addr v2, v0

    if-gt p1, v2, :cond_0

    iget-object p1, p0, Lcom/amazon/kcp/periodicals/fragments/BookmarkFragment$2;->this$0:Lcom/amazon/kcp/periodicals/fragments/BookmarkFragment;

    iget-object p1, p1, Lcom/amazon/kcp/periodicals/fragments/BookmarkFragment;->mBookmarkListFragment:Lcom/amazon/kcp/periodicals/fragments/BookmarkListFragment;

    .line 114
    invoke-virtual {p1}, Lcom/amazon/kcp/periodicals/fragments/BookmarkListFragment;->getBookmarkListContainer()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result p1

    sub-int/2addr p1, v0

    if-lt p2, p1, :cond_0

    iget-object p1, p0, Lcom/amazon/kcp/periodicals/fragments/BookmarkFragment$2;->this$0:Lcom/amazon/kcp/periodicals/fragments/BookmarkFragment;

    iget-object p1, p1, Lcom/amazon/kcp/periodicals/fragments/BookmarkFragment;->mBookmarkListFragment:Lcom/amazon/kcp/periodicals/fragments/BookmarkListFragment;

    .line 115
    invoke-virtual {p1}, Lcom/amazon/kcp/periodicals/fragments/BookmarkListFragment;->getBookmarkListContainer()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result p1

    add-int/2addr p1, v0

    if-le p2, p1, :cond_1

    .line 117
    :cond_0
    iget-object p1, p0, Lcom/amazon/kcp/periodicals/fragments/BookmarkFragment$2;->this$0:Lcom/amazon/kcp/periodicals/fragments/BookmarkFragment;

    invoke-virtual {p1, v1}, Lcom/amazon/kcp/periodicals/fragments/BookmarkFragment;->hide(Z)Z

    :cond_1
    return v1
.end method
