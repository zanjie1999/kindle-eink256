.class Lcom/amazon/kcp/library/fragments/CollectionItemsFragmentHandler$2;
.super Ljava/lang/Object;
.source "CollectionItemsFragmentHandler.java"

# interfaces
.implements Lcom/amazon/kindle/library/ui/popup/LibrarySortTypeRadioGroup$SortTypeMenuListener;


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
.method constructor <init>(Lcom/amazon/kcp/library/fragments/CollectionItemsFragmentHandler;)V
    .locals 0

    .line 226
    iput-object p1, p0, Lcom/amazon/kcp/library/fragments/CollectionItemsFragmentHandler$2;->this$0:Lcom/amazon/kcp/library/fragments/CollectionItemsFragmentHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

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
            "Lcom/amazon/kcp/library/LibrarySortType;",
            ">;)V"
        }
    .end annotation

    .line 234
    invoke-virtual {p1}, Lcom/amazon/kcp/widget/LibraryCheckableItem;->getIdentityObject()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/kcp/library/LibrarySortType;

    .line 235
    iget-object v0, p0, Lcom/amazon/kcp/library/fragments/CollectionItemsFragmentHandler$2;->this$0:Lcom/amazon/kcp/library/fragments/CollectionItemsFragmentHandler;

    invoke-virtual {v0, p1}, Lcom/amazon/kcp/library/fragments/LibraryFragmentHandler;->setSortType(Lcom/amazon/kcp/library/LibrarySortType;)V

    return-void
.end method
