.class Lcom/amazon/kcp/library/fragments/FilterFragmentHandler$1;
.super Ljava/lang/Object;
.source "FilterFragmentHandler.java"

# interfaces
.implements Lcom/amazon/kcp/library/LibraryFilterStateManager$ILibraryFilterStateChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/library/fragments/FilterFragmentHandler;->createLibraryFilterStateChangedListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/library/fragments/FilterFragmentHandler;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/library/fragments/FilterFragmentHandler;)V
    .locals 0

    .line 222
    iput-object p1, p0, Lcom/amazon/kcp/library/fragments/FilterFragmentHandler$1;->this$0:Lcom/amazon/kcp/library/fragments/FilterFragmentHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLibraryFilterStateChanged(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Lcom/amazon/kcp/library/LibraryFilterItem;",
            ">;>;)V"
        }
    .end annotation

    .line 225
    iget-object v0, p0, Lcom/amazon/kcp/library/fragments/FilterFragmentHandler$1;->this$0:Lcom/amazon/kcp/library/fragments/FilterFragmentHandler;

    invoke-static {v0, p1}, Lcom/amazon/kcp/library/fragments/FilterFragmentHandler;->access$000(Lcom/amazon/kcp/library/fragments/FilterFragmentHandler;Ljava/util/List;)V

    .line 226
    iget-object p1, p0, Lcom/amazon/kcp/library/fragments/FilterFragmentHandler$1;->this$0:Lcom/amazon/kcp/library/fragments/FilterFragmentHandler;

    invoke-virtual {p1}, Lcom/amazon/kcp/library/fragments/LibraryFragmentHandler;->updateFilterAndSort()V

    .line 227
    iget-object p1, p0, Lcom/amazon/kcp/library/fragments/FilterFragmentHandler$1;->this$0:Lcom/amazon/kcp/library/fragments/FilterFragmentHandler;

    invoke-virtual {p1}, Lcom/amazon/kcp/library/fragments/LibraryFragmentHandler;->getUserSelectedViewType()Lcom/amazon/kindle/krx/library/LibraryViewType;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 229
    iget-object v0, p0, Lcom/amazon/kcp/library/fragments/FilterFragmentHandler$1;->this$0:Lcom/amazon/kcp/library/fragments/FilterFragmentHandler;

    invoke-virtual {v0, p1}, Lcom/amazon/kcp/library/fragments/LibraryFragmentHandler;->scrollToBeginning(Lcom/amazon/kindle/krx/library/LibraryViewType;)V

    :cond_0
    return-void
.end method
