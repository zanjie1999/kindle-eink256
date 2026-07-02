.class public Lcom/amazon/kindle/library/navigation/SortTypeMenuBaseListener;
.super Ljava/lang/Object;
.source "SortTypeMenuBaseListener.java"

# interfaces
.implements Lcom/amazon/kindle/library/ui/popup/LibrarySortTypeRadioGroup$SortTypeMenuListener;


# instance fields
.field private handler:Lcom/amazon/kcp/library/fragments/ILibraryFragmentHandler;

.field private sortTypeText:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public attachFragmentHandler(Lcom/amazon/kcp/library/fragments/ILibraryFragmentHandler;)V
    .locals 0

    .line 18
    iput-object p1, p0, Lcom/amazon/kindle/library/navigation/SortTypeMenuBaseListener;->handler:Lcom/amazon/kcp/library/fragments/ILibraryFragmentHandler;

    return-void
.end method

.method public onMenuItemChecked(Ljava/lang/CharSequence;)V
    .locals 1

    .line 27
    iget-object v0, p0, Lcom/amazon/kindle/library/navigation/SortTypeMenuBaseListener;->sortTypeText:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 28
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
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

    .line 34
    invoke-virtual {p1}, Lcom/amazon/kcp/widget/LibraryCheckableItem;->getIdentityObject()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/kcp/library/LibrarySortType;

    .line 35
    iget-object v0, p0, Lcom/amazon/kindle/library/navigation/SortTypeMenuBaseListener;->handler:Lcom/amazon/kcp/library/fragments/ILibraryFragmentHandler;

    if-eqz v0, :cond_0

    .line 36
    invoke-interface {v0, p1}, Lcom/amazon/kcp/library/fragments/ILibraryFragmentHandler;->setSortType(Lcom/amazon/kcp/library/LibrarySortType;)V

    :cond_0
    return-void
.end method

.method public setSortTypeText(Landroid/widget/TextView;)V
    .locals 0

    .line 22
    iput-object p1, p0, Lcom/amazon/kindle/library/navigation/SortTypeMenuBaseListener;->sortTypeText:Landroid/widget/TextView;

    return-void
.end method
