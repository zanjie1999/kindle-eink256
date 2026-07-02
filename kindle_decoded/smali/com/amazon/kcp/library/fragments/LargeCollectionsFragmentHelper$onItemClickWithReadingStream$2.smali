.class public final Lcom/amazon/kcp/library/fragments/LargeCollectionsFragmentHelper$onItemClickWithReadingStream$2;
.super Ljava/lang/Object;
.source "LargeCollectionsFragmentHelper.kt"

# interfaces
.implements Lcom/amazon/kcp/integrator/ILibraryRetrievalListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/library/fragments/LargeCollectionsFragmentHelper;->onItemClickWithReadingStream(Landroid/view/View;Lcom/amazon/kindle/observablemodel/ItemID;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/amazon/kcp/integrator/ILibraryRetrievalListener<",
        "Lcom/amazon/kindle/collections/dto/ICollection;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/library/fragments/LargeCollectionsFragmentHelper;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/library/fragments/LargeCollectionsFragmentHelper;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 135
    iput-object p1, p0, Lcom/amazon/kcp/library/fragments/LargeCollectionsFragmentHelper$onItemClickWithReadingStream$2;->this$0:Lcom/amazon/kcp/library/fragments/LargeCollectionsFragmentHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onItemRetrieved(Lcom/amazon/kcp/integrator/ILargeLibraryDisplayItem;)V
    .locals 0

    .line 135
    check-cast p1, Lcom/amazon/kindle/collections/dto/ICollection;

    invoke-virtual {p0, p1}, Lcom/amazon/kcp/library/fragments/LargeCollectionsFragmentHelper$onItemClickWithReadingStream$2;->onItemRetrieved(Lcom/amazon/kindle/collections/dto/ICollection;)V

    return-void
.end method

.method public onItemRetrieved(Lcom/amazon/kindle/collections/dto/ICollection;)V
    .locals 3

    const-string v0, "libraryItem"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 137
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/amazon/kcp/library/fragments/LargeCollectionsFragmentHelper$onItemClickWithReadingStream$2;->this$0:Lcom/amazon/kcp/library/fragments/LargeCollectionsFragmentHelper;

    iget-object v1, v1, Lcom/amazon/kcp/library/fragments/LibraryFragmentHelper;->fragment:Landroidx/fragment/app/Fragment;

    const-string v2, "fragment"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const-class v2, Lcom/amazon/kcp/library/CollectionItemsActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "Collection"

    .line 138
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 139
    iget-object p1, p0, Lcom/amazon/kcp/library/fragments/LargeCollectionsFragmentHelper$onItemClickWithReadingStream$2;->this$0:Lcom/amazon/kcp/library/fragments/LargeCollectionsFragmentHelper;

    invoke-static {p1}, Lcom/amazon/kcp/library/fragments/LargeCollectionsFragmentHelper;->access$getCollectionFilter$p(Lcom/amazon/kcp/library/fragments/LargeCollectionsFragmentHelper;)Lcom/amazon/kindle/krx/collections/CollectionFilter;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "CollectionFilter"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 140
    iget-object p1, p0, Lcom/amazon/kcp/library/fragments/LargeCollectionsFragmentHelper$onItemClickWithReadingStream$2;->this$0:Lcom/amazon/kcp/library/fragments/LargeCollectionsFragmentHelper;

    iget-object p1, p1, Lcom/amazon/kcp/library/fragments/LibraryFragmentHelper;->fragment:Landroidx/fragment/app/Fragment;

    invoke-virtual {p1, v0}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
