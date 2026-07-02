.class public final Lcom/amazon/kcp/library/fragments/LargeCollectionsRecyclerFragment$newAdapter$1$bindView$1;
.super Ljava/lang/Object;
.source "LargeCollectionsRecyclerFragment.kt"

# interfaces
.implements Lcom/amazon/kcp/integrator/ILibraryRetrievalListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/library/fragments/LargeCollectionsRecyclerFragment$newAdapter$1;->bindView(Lcom/amazon/kcp/library/FastRecyclerViewHolder;Landroid/view/View;Landroid/content/Context;ILcom/amazon/kindle/observablemodel/ItemID;)V
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
.field final synthetic $position:I

.field final synthetic $view:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/view/View;I)V
    .locals 0

    .line 87
    iput-object p1, p0, Lcom/amazon/kcp/library/fragments/LargeCollectionsRecyclerFragment$newAdapter$1$bindView$1;->$view:Landroid/view/View;

    iput p2, p0, Lcom/amazon/kcp/library/fragments/LargeCollectionsRecyclerFragment$newAdapter$1$bindView$1;->$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onItemRetrieved(Lcom/amazon/kcp/integrator/ILargeLibraryDisplayItem;)V
    .locals 0

    .line 87
    check-cast p1, Lcom/amazon/kindle/collections/dto/ICollection;

    invoke-virtual {p0, p1}, Lcom/amazon/kcp/library/fragments/LargeCollectionsRecyclerFragment$newAdapter$1$bindView$1;->onItemRetrieved(Lcom/amazon/kindle/collections/dto/ICollection;)V

    return-void
.end method

.method public onItemRetrieved(Lcom/amazon/kindle/collections/dto/ICollection;)V
    .locals 2

    const-string v0, "libraryItem"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 89
    iget-object v0, p0, Lcom/amazon/kcp/library/fragments/LargeCollectionsRecyclerFragment$newAdapter$1$bindView$1;->$view:Landroid/view/View;

    iget v1, p0, Lcom/amazon/kcp/library/fragments/LargeCollectionsRecyclerFragment$newAdapter$1$bindView$1;->$position:I

    invoke-static {p1, v0, v1}, Lcom/amazon/kcp/cover/LibraryCoverFactory;->bindCollectionThumbnail(Lcom/amazon/kindle/collections/dto/ICollection;Landroid/view/View;I)Landroid/view/View;

    return-void
.end method
