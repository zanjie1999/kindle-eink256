.class public final Lcom/amazon/kcp/library/fragments/LargeCollectionsFragmentHelper$actionItemClicked$1;
.super Ljava/lang/Object;
.source "LargeCollectionsFragmentHelper.kt"

# interfaces
.implements Lcom/amazon/kcp/integrator/ILibraryItemsRetrievalListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/library/fragments/LargeCollectionsFragmentHelper;->actionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/amazon/kcp/integrator/ILibraryItemsRetrievalListener<",
        "Lcom/amazon/kindle/collections/dto/ICollection;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic $item:Landroid/view/MenuItem;

.field final synthetic $mode:Landroid/view/ActionMode;

.field final synthetic this$0:Lcom/amazon/kcp/library/fragments/LargeCollectionsFragmentHelper;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/library/fragments/LargeCollectionsFragmentHelper;Landroid/view/ActionMode;Landroid/view/MenuItem;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ActionMode;",
            "Landroid/view/MenuItem;",
            ")V"
        }
    .end annotation

    .line 109
    iput-object p1, p0, Lcom/amazon/kcp/library/fragments/LargeCollectionsFragmentHelper$actionItemClicked$1;->this$0:Lcom/amazon/kcp/library/fragments/LargeCollectionsFragmentHelper;

    iput-object p2, p0, Lcom/amazon/kcp/library/fragments/LargeCollectionsFragmentHelper$actionItemClicked$1;->$mode:Landroid/view/ActionMode;

    iput-object p3, p0, Lcom/amazon/kcp/library/fragments/LargeCollectionsFragmentHelper$actionItemClicked$1;->$item:Landroid/view/MenuItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemsRetrieved(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/amazon/kindle/collections/dto/ICollection;",
            ">;)V"
        }
    .end annotation

    const-string v0, "libraryItems"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 111
    iget-object v0, p0, Lcom/amazon/kcp/library/fragments/LargeCollectionsFragmentHelper$actionItemClicked$1;->this$0:Lcom/amazon/kcp/library/fragments/LargeCollectionsFragmentHelper;

    iget-object v0, v0, Lcom/amazon/kcp/library/fragments/LibraryFragmentHelper;->contentHandler:Lcom/amazon/kcp/library/ILibraryContentInteractionHandler;

    if-eqz v0, :cond_0

    check-cast v0, Lcom/amazon/kcp/library/CollectionsContentInteractionHandler;

    .line 112
    iget-object v1, p0, Lcom/amazon/kcp/library/fragments/LargeCollectionsFragmentHelper$actionItemClicked$1;->$mode:Landroid/view/ActionMode;

    iget-object v2, p0, Lcom/amazon/kcp/library/fragments/LargeCollectionsFragmentHelper$actionItemClicked$1;->$item:Landroid/view/MenuItem;

    .line 111
    invoke-virtual {v0, v1, v2, p1}, Lcom/amazon/kcp/library/CollectionsContentInteractionHandler;->onActionItemSelectedForCollections(Landroid/view/ActionMode;Landroid/view/MenuItem;Ljava/util/List;)Z

    return-void

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string/jumbo v0, "null cannot be cast to non-null type com.amazon.kcp.library.CollectionsContentInteractionHandler"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
