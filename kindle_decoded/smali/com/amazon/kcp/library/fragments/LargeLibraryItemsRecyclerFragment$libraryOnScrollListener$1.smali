.class public final Lcom/amazon/kcp/library/fragments/LargeLibraryItemsRecyclerFragment$libraryOnScrollListener$1;
.super Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;
.source "LargeLibraryItemsRecyclerFragment.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/library/fragments/LargeLibraryItemsRecyclerFragment;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/library/fragments/LargeLibraryItemsRecyclerFragment;

.field private userInitiatedScroll:Z


# direct methods
.method constructor <init>(Lcom/amazon/kcp/library/fragments/LargeLibraryItemsRecyclerFragment;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 74
    iput-object p1, p0, Lcom/amazon/kcp/library/fragments/LargeLibraryItemsRecyclerFragment$libraryOnScrollListener$1;->this$0:Lcom/amazon/kcp/library/fragments/LargeLibraryItemsRecyclerFragment;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V
    .locals 1

    const-string/jumbo v0, "recyclerView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 87
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;->onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V

    .line 88
    iget-object p1, p0, Lcom/amazon/kcp/library/fragments/LargeLibraryItemsRecyclerFragment$libraryOnScrollListener$1;->this$0:Lcom/amazon/kcp/library/fragments/LargeLibraryItemsRecyclerFragment;

    iget-boolean v0, p0, Lcom/amazon/kcp/library/fragments/LargeLibraryItemsRecyclerFragment$libraryOnScrollListener$1;->userInitiatedScroll:Z

    invoke-virtual {p1, v0, p2}, Lcom/amazon/kcp/library/fragments/LargeLibraryItemsRecyclerFragment;->updateScrubberOnScrollStateChanged(ZI)Z

    move-result p1

    iput-boolean p1, p0, Lcom/amazon/kcp/library/fragments/LargeLibraryItemsRecyclerFragment$libraryOnScrollListener$1;->userInitiatedScroll:Z

    return-void
.end method

.method public onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 0

    const-string/jumbo p2, "recyclerView"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 78
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->isTouchExplorationEnabled()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/amazon/kcp/library/fragments/LargeLibraryItemsRecyclerFragment$libraryOnScrollListener$1;->this$0:Lcom/amazon/kcp/library/fragments/LargeLibraryItemsRecyclerFragment;

    .line 79
    invoke-virtual {p1}, Lcom/amazon/kcp/library/fragments/AbstractRecyclerFragment;->getRecyclerView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getScrollState()I

    move-result p1

    if-nez p1, :cond_0

    iget-boolean p1, p0, Lcom/amazon/kcp/library/fragments/LargeLibraryItemsRecyclerFragment$libraryOnScrollListener$1;->userInitiatedScroll:Z

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/amazon/kcp/library/fragments/LargeLibraryItemsRecyclerFragment$libraryOnScrollListener$1;->this$0:Lcom/amazon/kcp/library/fragments/LargeLibraryItemsRecyclerFragment;

    invoke-virtual {p1}, Lcom/amazon/kcp/library/fragments/LargeLibraryItemsRecyclerFragment;->getAzScrubberLetterTouched()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 81
    iget-object p1, p0, Lcom/amazon/kcp/library/fragments/LargeLibraryItemsRecyclerFragment$libraryOnScrollListener$1;->this$0:Lcom/amazon/kcp/library/fragments/LargeLibraryItemsRecyclerFragment;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/amazon/kcp/library/fragments/LargeLibraryItemsRecyclerFragment;->access$azScrubberAccessibilityFocusHandler(Lcom/amazon/kcp/library/fragments/LargeLibraryItemsRecyclerFragment;Z)V

    .line 83
    :cond_0
    iget-object p1, p0, Lcom/amazon/kcp/library/fragments/LargeLibraryItemsRecyclerFragment$libraryOnScrollListener$1;->this$0:Lcom/amazon/kcp/library/fragments/LargeLibraryItemsRecyclerFragment;

    iget-boolean p2, p0, Lcom/amazon/kcp/library/fragments/LargeLibraryItemsRecyclerFragment$libraryOnScrollListener$1;->userInitiatedScroll:Z

    invoke-virtual {p1, p2}, Lcom/amazon/kcp/library/fragments/LargeLibraryItemsRecyclerFragment;->updateScrubberOnScrolled(Z)V

    return-void
.end method
