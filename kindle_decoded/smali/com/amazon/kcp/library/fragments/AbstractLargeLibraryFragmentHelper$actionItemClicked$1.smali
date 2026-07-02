.class public final Lcom/amazon/kcp/library/fragments/AbstractLargeLibraryFragmentHelper$actionItemClicked$1;
.super Ljava/lang/Object;
.source "AbstractLargeLibraryFragmentHelper.kt"

# interfaces
.implements Lcom/amazon/kcp/integrator/ILibraryItemsRetrievalListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/library/fragments/AbstractLargeLibraryFragmentHelper;->actionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/amazon/kcp/integrator/ILibraryItemsRetrievalListener<",
        "Lcom/amazon/kcp/library/ILibraryDisplayItem;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic $item:Landroid/view/MenuItem;

.field final synthetic $mode:Landroid/view/ActionMode;

.field final synthetic this$0:Lcom/amazon/kcp/library/fragments/AbstractLargeLibraryFragmentHelper;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/library/fragments/AbstractLargeLibraryFragmentHelper;Landroid/view/ActionMode;Landroid/view/MenuItem;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ActionMode;",
            "Landroid/view/MenuItem;",
            ")V"
        }
    .end annotation

    .line 174
    iput-object p1, p0, Lcom/amazon/kcp/library/fragments/AbstractLargeLibraryFragmentHelper$actionItemClicked$1;->this$0:Lcom/amazon/kcp/library/fragments/AbstractLargeLibraryFragmentHelper;

    iput-object p2, p0, Lcom/amazon/kcp/library/fragments/AbstractLargeLibraryFragmentHelper$actionItemClicked$1;->$mode:Landroid/view/ActionMode;

    iput-object p3, p0, Lcom/amazon/kcp/library/fragments/AbstractLargeLibraryFragmentHelper$actionItemClicked$1;->$item:Landroid/view/MenuItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemsRetrieved(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/amazon/kcp/library/ILibraryDisplayItem;",
            ">;)V"
        }
    .end annotation

    const-string v0, "libraryItems"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 176
    iget-object v0, p0, Lcom/amazon/kcp/library/fragments/AbstractLargeLibraryFragmentHelper$actionItemClicked$1;->this$0:Lcom/amazon/kcp/library/fragments/AbstractLargeLibraryFragmentHelper;

    iget-object v0, v0, Lcom/amazon/kcp/library/fragments/LibraryFragmentHelper;->handler:Lcom/amazon/kcp/library/fragments/ILibraryFragmentHandler;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/amazon/kcp/library/fragments/ILibraryFragmentHandler;->getTab()Lcom/amazon/kindle/krx/library/LibraryView;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/amazon/kindle/krx/library/LibraryView;->ALL_ITEMS:Lcom/amazon/kindle/krx/library/LibraryView;

    :goto_0
    const-string v1, "handler?.tab ?: LibraryView.ALL_ITEMS"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 177
    iget-object v1, p0, Lcom/amazon/kcp/library/fragments/AbstractLargeLibraryFragmentHelper$actionItemClicked$1;->this$0:Lcom/amazon/kcp/library/fragments/AbstractLargeLibraryFragmentHelper;

    iget-object v1, v1, Lcom/amazon/kcp/library/fragments/LibraryFragmentHelper;->contentHandler:Lcom/amazon/kcp/library/ILibraryContentInteractionHandler;

    iget-object v2, p0, Lcom/amazon/kcp/library/fragments/AbstractLargeLibraryFragmentHelper$actionItemClicked$1;->$mode:Landroid/view/ActionMode;

    iget-object v3, p0, Lcom/amazon/kcp/library/fragments/AbstractLargeLibraryFragmentHelper$actionItemClicked$1;->$item:Landroid/view/MenuItem;

    invoke-interface {v1, v2, v0, v3, p1}, Lcom/amazon/kcp/library/ILibraryContentInteractionHandler;->onActionItemSelected(Landroid/view/ActionMode;Lcom/amazon/kindle/krx/library/LibraryView;Landroid/view/MenuItem;Ljava/util/List;)Z

    return-void
.end method
