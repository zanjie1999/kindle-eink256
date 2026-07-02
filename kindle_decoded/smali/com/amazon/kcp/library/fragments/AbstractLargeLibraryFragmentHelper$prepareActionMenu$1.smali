.class public final Lcom/amazon/kcp/library/fragments/AbstractLargeLibraryFragmentHelper$prepareActionMenu$1;
.super Ljava/lang/Object;
.source "AbstractLargeLibraryFragmentHelper.kt"

# interfaces
.implements Lcom/amazon/kcp/integrator/ILibraryItemsRetrievalListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/library/fragments/AbstractLargeLibraryFragmentHelper;->prepareActionMenu(Landroid/view/Menu;)V
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
.field final synthetic $menu:Landroid/view/Menu;

.field final synthetic this$0:Lcom/amazon/kcp/library/fragments/AbstractLargeLibraryFragmentHelper;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/library/fragments/AbstractLargeLibraryFragmentHelper;Landroid/view/Menu;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/Menu;",
            ")V"
        }
    .end annotation

    .line 153
    iput-object p1, p0, Lcom/amazon/kcp/library/fragments/AbstractLargeLibraryFragmentHelper$prepareActionMenu$1;->this$0:Lcom/amazon/kcp/library/fragments/AbstractLargeLibraryFragmentHelper;

    iput-object p2, p0, Lcom/amazon/kcp/library/fragments/AbstractLargeLibraryFragmentHelper$prepareActionMenu$1;->$menu:Landroid/view/Menu;

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

    .line 155
    iget-object v0, p0, Lcom/amazon/kcp/library/fragments/AbstractLargeLibraryFragmentHelper$prepareActionMenu$1;->this$0:Lcom/amazon/kcp/library/fragments/AbstractLargeLibraryFragmentHelper;

    iget-object v1, v0, Lcom/amazon/kcp/library/fragments/LibraryFragmentHelper;->contentHandler:Lcom/amazon/kcp/library/ILibraryContentInteractionHandler;

    .line 156
    iget-object v2, p0, Lcom/amazon/kcp/library/fragments/AbstractLargeLibraryFragmentHelper$prepareActionMenu$1;->$menu:Landroid/view/Menu;

    .line 158
    iget-object v3, v0, Lcom/amazon/kcp/library/fragments/LibraryFragmentHelper;->viewType:Lcom/amazon/kindle/krx/library/LibraryView;

    .line 159
    invoke-virtual {v0}, Lcom/amazon/kcp/library/fragments/AbstractLargeLibraryFragmentHelper;->isFirstActionMenuUpdate()Z

    move-result v0

    .line 155
    invoke-interface {v1, v2, p1, v3, v0}, Lcom/amazon/kcp/library/ILibraryContentInteractionHandler;->prepareActionMenu(Landroid/view/Menu;Ljava/util/List;Lcom/amazon/kindle/krx/library/LibraryView;Z)V

    .line 161
    iget-object v0, p0, Lcom/amazon/kcp/library/fragments/AbstractLargeLibraryFragmentHelper$prepareActionMenu$1;->this$0:Lcom/amazon/kcp/library/fragments/AbstractLargeLibraryFragmentHelper;

    iget-object v0, v0, Lcom/amazon/kcp/library/fragments/LibraryFragmentHelper;->contentHandler:Lcom/amazon/kcp/library/ILibraryContentInteractionHandler;

    iget-object v1, p0, Lcom/amazon/kcp/library/fragments/AbstractLargeLibraryFragmentHelper$prepareActionMenu$1;->$menu:Landroid/view/Menu;

    invoke-interface {v0, v1}, Lcom/amazon/kcp/library/ILibraryContentInteractionHandler;->postProcessActionMenu(Landroid/view/Menu;)V

    .line 162
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 163
    iget-object p1, p0, Lcom/amazon/kcp/library/fragments/AbstractLargeLibraryFragmentHelper$prepareActionMenu$1;->this$0:Lcom/amazon/kcp/library/fragments/AbstractLargeLibraryFragmentHelper;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/amazon/kcp/library/fragments/AbstractLargeLibraryFragmentHelper;->setFirstActionMenuUpdate(Z)V

    :cond_0
    return-void
.end method
