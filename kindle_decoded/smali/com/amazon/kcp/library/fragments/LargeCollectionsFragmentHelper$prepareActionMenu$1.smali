.class public final Lcom/amazon/kcp/library/fragments/LargeCollectionsFragmentHelper$prepareActionMenu$1;
.super Ljava/lang/Object;
.source "LargeCollectionsFragmentHelper.kt"

# interfaces
.implements Lcom/amazon/kcp/integrator/ILibraryItemsRetrievalListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/library/fragments/LargeCollectionsFragmentHelper;->prepareActionMenu(Landroid/view/Menu;)V
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
.field final synthetic $menu:Landroid/view/Menu;

.field final synthetic this$0:Lcom/amazon/kcp/library/fragments/LargeCollectionsFragmentHelper;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/library/fragments/LargeCollectionsFragmentHelper;Landroid/view/Menu;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/Menu;",
            ")V"
        }
    .end annotation

    .line 88
    iput-object p1, p0, Lcom/amazon/kcp/library/fragments/LargeCollectionsFragmentHelper$prepareActionMenu$1;->this$0:Lcom/amazon/kcp/library/fragments/LargeCollectionsFragmentHelper;

    iput-object p2, p0, Lcom/amazon/kcp/library/fragments/LargeCollectionsFragmentHelper$prepareActionMenu$1;->$menu:Landroid/view/Menu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemsRetrieved(Ljava/util/List;)V
    .locals 5
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

    .line 90
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-eqz p1, :cond_3

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 93
    :goto_0
    iget-object v3, p0, Lcom/amazon/kcp/library/fragments/LargeCollectionsFragmentHelper$prepareActionMenu$1;->$menu:Landroid/view/Menu;

    sget v4, Lcom/amazon/kindle/librarymodule/R$id;->lib_menu_rename:I

    invoke-interface {v3, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    const-string/jumbo v4, "menu.findItem(R.id.lib_menu_rename)"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v3, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    if-ne p1, v1, :cond_1

    const/4 p1, 0x1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    .line 96
    :goto_1
    iget-object v2, p0, Lcom/amazon/kcp/library/fragments/LargeCollectionsFragmentHelper$prepareActionMenu$1;->$menu:Landroid/view/Menu;

    sget v3, Lcom/amazon/kindle/librarymodule/R$id;->lib_menu_download:I

    invoke-interface {v2, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    const-string/jumbo v3, "menu.findItem(R.id.lib_menu_download)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/amazon/kcp/library/fragments/LargeCollectionsFragmentHelper$prepareActionMenu$1;->this$0:Lcom/amazon/kcp/library/fragments/LargeCollectionsFragmentHelper;

    invoke-static {p1}, Lcom/amazon/kcp/library/fragments/LargeCollectionsFragmentHelper;->access$isCollectionDownloadEnabled$p(Lcom/amazon/kcp/library/fragments/LargeCollectionsFragmentHelper;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    :cond_2
    invoke-interface {v2, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 98
    :cond_3
    iget-object p1, p0, Lcom/amazon/kcp/library/fragments/LargeCollectionsFragmentHelper$prepareActionMenu$1;->this$0:Lcom/amazon/kcp/library/fragments/LargeCollectionsFragmentHelper;

    iget-object p1, p1, Lcom/amazon/kcp/library/fragments/LibraryFragmentHelper;->contentHandler:Lcom/amazon/kcp/library/ILibraryContentInteractionHandler;

    iget-object v0, p0, Lcom/amazon/kcp/library/fragments/LargeCollectionsFragmentHelper$prepareActionMenu$1;->$menu:Landroid/view/Menu;

    invoke-interface {p1, v0}, Lcom/amazon/kcp/library/ILibraryContentInteractionHandler;->postProcessActionMenu(Landroid/view/Menu;)V

    return-void
.end method
