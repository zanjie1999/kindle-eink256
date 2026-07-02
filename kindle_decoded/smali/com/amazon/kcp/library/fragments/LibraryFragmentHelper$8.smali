.class Lcom/amazon/kcp/library/fragments/LibraryFragmentHelper$8;
.super Ljava/lang/Object;
.source "LibraryFragmentHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/library/fragments/LibraryFragmentHelper;->onReaderControllerEvent(Lcom/amazon/kcp/reader/ReaderControllerEvent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/library/fragments/LibraryFragmentHelper;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/library/fragments/LibraryFragmentHelper;)V
    .locals 0

    .line 602
    iput-object p1, p0, Lcom/amazon/kcp/library/fragments/LibraryFragmentHelper$8;->this$0:Lcom/amazon/kcp/library/fragments/LibraryFragmentHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 605
    iget-object v0, p0, Lcom/amazon/kcp/library/fragments/LibraryFragmentHelper$8;->this$0:Lcom/amazon/kcp/library/fragments/LibraryFragmentHelper;

    iget-object v1, v0, Lcom/amazon/kcp/library/fragments/LibraryFragmentHelper;->sortType:Lcom/amazon/kcp/library/LibrarySortType;

    sget-object v2, Lcom/amazon/kcp/library/LibrarySortType;->SORT_TYPE_RECENT:Lcom/amazon/kcp/library/LibrarySortType;

    if-ne v1, v2, :cond_0

    iget-object v0, v0, Lcom/amazon/kcp/library/fragments/LibraryFragmentHelper;->fragment:Landroidx/fragment/app/Fragment;

    .line 606
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isDetached()Z

    move-result v0

    if-nez v0, :cond_0

    .line 609
    iget-object v0, p0, Lcom/amazon/kcp/library/fragments/LibraryFragmentHelper$8;->this$0:Lcom/amazon/kcp/library/fragments/LibraryFragmentHelper;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/amazon/kcp/library/fragments/LibraryFragmentHelper;->access$802(Lcom/amazon/kcp/library/fragments/LibraryFragmentHelper;I)I

    .line 613
    :cond_0
    iget-object v0, p0, Lcom/amazon/kcp/library/fragments/LibraryFragmentHelper$8;->this$0:Lcom/amazon/kcp/library/fragments/LibraryFragmentHelper;

    invoke-virtual {v0}, Lcom/amazon/kcp/library/fragments/LibraryFragmentHelper;->resetLibraryCursorCache()V

    .line 614
    iget-object v0, p0, Lcom/amazon/kcp/library/fragments/LibraryFragmentHelper$8;->this$0:Lcom/amazon/kcp/library/fragments/LibraryFragmentHelper;

    invoke-virtual {v0}, Lcom/amazon/kcp/library/fragments/LibraryFragmentHelper;->refresh()V

    return-void
.end method
