.class Lcom/amazon/kcp/library/fragments/CollectionItemsFragmentHandler$3;
.super Lcom/amazon/kindle/library/navigation/ViewTypeMenuBaseListener;
.source "CollectionItemsFragmentHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/library/fragments/CollectionItemsFragmentHandler;->createSortMenuIfNecessary()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/library/fragments/CollectionItemsFragmentHandler;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/library/fragments/CollectionItemsFragmentHandler;Lcom/amazon/kindle/library/navigation/ViewTypeMenuBaseListener$LibraryViewDisplayer;Lcom/amazon/kcp/library/fragments/LibraryFragmentViewOptionsModel;)V
    .locals 0

    .line 239
    iput-object p1, p0, Lcom/amazon/kcp/library/fragments/CollectionItemsFragmentHandler$3;->this$0:Lcom/amazon/kcp/library/fragments/CollectionItemsFragmentHandler;

    invoke-direct {p0, p2, p3}, Lcom/amazon/kindle/library/navigation/ViewTypeMenuBaseListener;-><init>(Lcom/amazon/kindle/library/navigation/ViewTypeMenuBaseListener$LibraryViewDisplayer;Lcom/amazon/kcp/library/fragments/LibraryFragmentViewOptionsModel;)V

    return-void
.end method


# virtual methods
.method public onMenuItemChecked(Ljava/lang/CharSequence;)V
    .locals 0

    return-void
.end method

.method public onMenuItemSelected(Lcom/amazon/kcp/widget/LibraryCheckableItem;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kcp/widget/LibraryCheckableItem<",
            "Lcom/amazon/kindle/library/navigation/RefineLibraryViewType;",
            ">;)V"
        }
    .end annotation

    .line 247
    invoke-virtual {p1}, Lcom/amazon/kcp/widget/LibraryCheckableItem;->getIdentityObject()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/kindle/library/navigation/RefineLibraryViewType;

    .line 248
    invoke-static {p1}, Lcom/amazon/kindle/library/navigation/RefineLibraryViewType;->toLibraryViewType(Lcom/amazon/kindle/library/navigation/RefineLibraryViewType;)Lcom/amazon/kindle/krx/library/LibraryViewType;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 249
    iget-object v0, p0, Lcom/amazon/kcp/library/fragments/CollectionItemsFragmentHandler$3;->this$0:Lcom/amazon/kcp/library/fragments/CollectionItemsFragmentHandler;

    invoke-virtual {v0}, Lcom/amazon/kcp/library/fragments/LibraryFragmentHandler;->getUserSelectedViewType()Lcom/amazon/kindle/krx/library/LibraryViewType;

    move-result-object v0

    if-eq v0, p1, :cond_0

    .line 250
    iget-object v0, p0, Lcom/amazon/kcp/library/fragments/CollectionItemsFragmentHandler$3;->this$0:Lcom/amazon/kcp/library/fragments/CollectionItemsFragmentHandler;

    invoke-virtual {v0, p1}, Lcom/amazon/kcp/library/fragments/LibraryFragmentHandler;->onViewModeSelected(Lcom/amazon/kindle/krx/library/LibraryViewType;)V

    :cond_0
    return-void
.end method
