.class public final Lcom/amazon/kcp/library/fragments/LargeCollectionsRecyclerFragment$newAdapter$1;
.super Lcom/amazon/kcp/library/FastRecyclerAdapter;
.source "LargeCollectionsRecyclerFragment.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/library/fragments/LargeCollectionsRecyclerFragment;->newAdapter()Lcom/amazon/kcp/library/FastRecyclerAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/amazon/kcp/library/FastRecyclerAdapter<",
        "Lcom/amazon/kindle/observablemodel/ItemID;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/library/fragments/LargeCollectionsRecyclerFragment;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/library/fragments/LargeCollectionsRecyclerFragment;Landroid/app/Activity;Landroid/view/ActionMode$Callback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Landroid/view/ActionMode$Callback;",
            ")V"
        }
    .end annotation

    .line 68
    iput-object p1, p0, Lcom/amazon/kcp/library/fragments/LargeCollectionsRecyclerFragment$newAdapter$1;->this$0:Lcom/amazon/kcp/library/fragments/LargeCollectionsRecyclerFragment;

    invoke-direct {p0, p2, p3}, Lcom/amazon/kcp/library/FastRecyclerAdapter;-><init>(Landroid/app/Activity;Landroid/view/ActionMode$Callback;)V

    return-void
.end method


# virtual methods
.method public bindView(Lcom/amazon/kcp/library/FastRecyclerViewHolder;Landroid/view/View;Landroid/content/Context;ILcom/amazon/kindle/observablemodel/ItemID;)V
    .locals 1

    const-string/jumbo v0, "viewHolder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "view"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p3, "item"

    invoke-static {p5, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 86
    iget-object p3, p0, Lcom/amazon/kcp/library/fragments/LargeCollectionsRecyclerFragment$newAdapter$1;->this$0:Lcom/amazon/kcp/library/fragments/LargeCollectionsRecyclerFragment;

    invoke-static {p3}, Lcom/amazon/kcp/library/fragments/LargeCollectionsRecyclerFragment;->access$getAdapterHelper$p(Lcom/amazon/kcp/library/fragments/LargeCollectionsRecyclerFragment;)Lcom/amazon/kcp/library/fragments/LargeLibraryRecyclerAdapterHelper;

    move-result-object p3

    invoke-virtual {p3, p1, p4, p5}, Lcom/amazon/kcp/library/fragments/LargeLibraryRecyclerAdapterHelper;->bindView(Lcom/amazon/kcp/library/FastRecyclerViewHolder;ILcom/amazon/kindle/observablemodel/ItemID;)Z

    .line 87
    iget-object p1, p0, Lcom/amazon/kcp/library/fragments/LargeCollectionsRecyclerFragment$newAdapter$1;->this$0:Lcom/amazon/kcp/library/fragments/LargeCollectionsRecyclerFragment;

    invoke-virtual {p1}, Lcom/amazon/kcp/library/fragments/LibraryRecyclerFragment;->getHelper()Lcom/amazon/kcp/library/fragments/LibraryFragmentHelper;

    move-result-object p1

    if-eqz p1, :cond_0

    check-cast p1, Lcom/amazon/kcp/library/fragments/LargeCollectionsFragmentHelper;

    new-instance p3, Lcom/amazon/kcp/library/fragments/LargeCollectionsRecyclerFragment$newAdapter$1$bindView$1;

    invoke-direct {p3, p2, p4}, Lcom/amazon/kcp/library/fragments/LargeCollectionsRecyclerFragment$newAdapter$1$bindView$1;-><init>(Landroid/view/View;I)V

    invoke-virtual {p1, p5, p3}, Lcom/amazon/kcp/library/fragments/LargeCollectionsFragmentHelper;->retrieveCollection(Lcom/amazon/kindle/observablemodel/ItemID;Lcom/amazon/kcp/integrator/ILibraryRetrievalListener;)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string/jumbo p2, "null cannot be cast to non-null type com.amazon.kcp.library.fragments.LargeCollectionsFragmentHelper"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public bridge synthetic bindView(Lcom/amazon/kcp/library/FastRecyclerViewHolder;Landroid/view/View;Landroid/content/Context;ILjava/lang/Object;)V
    .locals 0

    .line 68
    check-cast p5, Lcom/amazon/kindle/observablemodel/ItemID;

    invoke-virtual/range {p0 .. p5}, Lcom/amazon/kcp/library/fragments/LargeCollectionsRecyclerFragment$newAdapter$1;->bindView(Lcom/amazon/kcp/library/FastRecyclerViewHolder;Landroid/view/View;Landroid/content/Context;ILcom/amazon/kindle/observablemodel/ItemID;)V

    return-void
.end method

.method public canSelectItem(Lcom/amazon/kindle/observablemodel/ItemID;)Z
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 113
    :cond_0
    iget-object v0, p0, Lcom/amazon/kcp/library/fragments/LargeCollectionsRecyclerFragment$newAdapter$1;->this$0:Lcom/amazon/kcp/library/fragments/LargeCollectionsRecyclerFragment;

    invoke-virtual {v0}, Lcom/amazon/kcp/library/fragments/LibraryRecyclerFragment;->getHelper()Lcom/amazon/kcp/library/fragments/LibraryFragmentHelper;

    move-result-object v0

    if-eqz v0, :cond_1

    check-cast v0, Lcom/amazon/kcp/library/fragments/LargeCollectionsFragmentHelper;

    .line 114
    invoke-virtual {v0, p1}, Lcom/amazon/kcp/library/fragments/LargeCollectionsFragmentHelper;->retrieveCollection(Lcom/amazon/kindle/observablemodel/ItemID;)Lcom/amazon/kindle/collections/dto/ICollection;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kindle/collections/dto/ICollection;->isEnabledInMultiSelect()Z

    move-result p1

    return p1

    .line 113
    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string/jumbo v0, "null cannot be cast to non-null type com.amazon.kcp.library.fragments.LargeCollectionsFragmentHelper"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public bridge synthetic canSelectItem(Ljava/lang/Object;)Z
    .locals 0

    .line 68
    check-cast p1, Lcom/amazon/kindle/observablemodel/ItemID;

    invoke-virtual {p0, p1}, Lcom/amazon/kcp/library/fragments/LargeCollectionsRecyclerFragment$newAdapter$1;->canSelectItem(Lcom/amazon/kindle/observablemodel/ItemID;)Z

    move-result p1

    return p1
.end method

.method public getItem(I)Lcom/amazon/kindle/observablemodel/ItemID;
    .locals 1

    .line 108
    iget-object v0, p0, Lcom/amazon/kcp/library/fragments/LargeCollectionsRecyclerFragment$newAdapter$1;->this$0:Lcom/amazon/kcp/library/fragments/LargeCollectionsRecyclerFragment;

    invoke-static {v0}, Lcom/amazon/kcp/library/fragments/LargeCollectionsRecyclerFragment;->access$getAdapterHelper$p(Lcom/amazon/kcp/library/fragments/LargeCollectionsRecyclerFragment;)Lcom/amazon/kcp/library/fragments/LargeLibraryRecyclerAdapterHelper;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/amazon/kcp/library/fragments/LargeLibraryRecyclerAdapterHelper;->getItem(I)Lcom/amazon/kindle/observablemodel/ItemID;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 0

    .line 68
    invoke-virtual {p0, p1}, Lcom/amazon/kcp/library/fragments/LargeCollectionsRecyclerFragment$newAdapter$1;->getItem(I)Lcom/amazon/kindle/observablemodel/ItemID;

    move-result-object p1

    return-object p1
.end method

.method public getItemCount()I
    .locals 1

    .line 104
    iget-object v0, p0, Lcom/amazon/kcp/library/fragments/LargeCollectionsRecyclerFragment$newAdapter$1;->this$0:Lcom/amazon/kcp/library/fragments/LargeCollectionsRecyclerFragment;

    invoke-static {v0}, Lcom/amazon/kcp/library/fragments/LargeCollectionsRecyclerFragment;->access$getAdapterHelper$p(Lcom/amazon/kcp/library/fragments/LargeCollectionsRecyclerFragment;)Lcom/amazon/kcp/library/fragments/LargeLibraryRecyclerAdapterHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/kcp/library/fragments/LargeLibraryRecyclerAdapterHelper;->itemCount()I

    move-result v0

    return v0
.end method

.method public getItemViewType(I)I
    .locals 1

    .line 81
    invoke-virtual {p0}, Lcom/amazon/kcp/library/FastRecyclerAdapter;->numHeaders()I

    move-result v0

    if-ge p1, v0, :cond_0

    invoke-super {p0, p1}, Lcom/amazon/kcp/library/FastRecyclerAdapter;->getItemViewType(I)I

    move-result p1

    goto :goto_0

    .line 82
    :cond_0
    iget-object v0, p0, Lcom/amazon/kcp/library/fragments/LargeCollectionsRecyclerFragment$newAdapter$1;->this$0:Lcom/amazon/kcp/library/fragments/LargeCollectionsRecyclerFragment;

    invoke-virtual {v0}, Lcom/amazon/kcp/library/fragments/LibraryRecyclerFragment;->getHelper()Lcom/amazon/kcp/library/fragments/LibraryFragmentHelper;

    move-result-object v0

    if-eqz v0, :cond_1

    check-cast v0, Lcom/amazon/kcp/library/fragments/LargeCollectionsFragmentHelper;

    invoke-virtual {p0, p1}, Lcom/amazon/kcp/library/fragments/LargeCollectionsRecyclerFragment$newAdapter$1;->getItem(I)Lcom/amazon/kindle/observablemodel/ItemID;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/amazon/kcp/library/fragments/LargeCollectionsFragmentHelper;->retrieveCollection(Lcom/amazon/kindle/observablemodel/ItemID;)Lcom/amazon/kindle/collections/dto/ICollection;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kindle/collections/dto/ICollection;->getThumbnailType()Lcom/amazon/kindle/collections/dto/ThumbnailType;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    :goto_0
    return p1

    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string/jumbo v0, "null cannot be cast to non-null type com.amazon.kcp.library.fragments.LargeCollectionsFragmentHelper"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public itemId(Lcom/amazon/kindle/observablemodel/ItemID;)J
    .locals 2

    const-string v0, "item"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 100
    iget-object v0, p0, Lcom/amazon/kcp/library/fragments/LargeCollectionsRecyclerFragment$newAdapter$1;->this$0:Lcom/amazon/kcp/library/fragments/LargeCollectionsRecyclerFragment;

    invoke-static {v0}, Lcom/amazon/kcp/library/fragments/LargeCollectionsRecyclerFragment;->access$getAdapterHelper$p(Lcom/amazon/kcp/library/fragments/LargeCollectionsRecyclerFragment;)Lcom/amazon/kcp/library/fragments/LargeLibraryRecyclerAdapterHelper;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/amazon/kcp/library/fragments/LargeLibraryRecyclerAdapterHelper;->itemId(Lcom/amazon/kindle/observablemodel/ItemID;)J

    move-result-wide v0

    return-wide v0
.end method

.method public bridge synthetic itemId(Ljava/lang/Object;)J
    .locals 2

    .line 68
    check-cast p1, Lcom/amazon/kindle/observablemodel/ItemID;

    invoke-virtual {p0, p1}, Lcom/amazon/kcp/library/fragments/LargeCollectionsRecyclerFragment$newAdapter$1;->itemId(Lcom/amazon/kindle/observablemodel/ItemID;)J

    move-result-wide v0

    return-wide v0
.end method

.method public newView(Landroid/content/Context;Landroid/view/ViewGroup;I)Landroid/view/View;
    .locals 2

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "parent"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 75
    iget-object p2, p0, Lcom/amazon/kcp/library/fragments/LargeCollectionsRecyclerFragment$newAdapter$1;->this$0:Lcom/amazon/kcp/library/fragments/LargeCollectionsRecyclerFragment;

    invoke-virtual {p2}, Lcom/amazon/kcp/library/fragments/AbstractRecyclerFragment;->getGridItemWidth()I

    move-result p2

    .line 76
    iget-object v0, p0, Lcom/amazon/kcp/library/fragments/LargeCollectionsRecyclerFragment$newAdapter$1;->this$0:Lcom/amazon/kcp/library/fragments/LargeCollectionsRecyclerFragment;

    invoke-virtual {v0}, Lcom/amazon/kcp/library/fragments/AbstractRecyclerFragment;->getGridItemHeight()I

    move-result v0

    .line 77
    invoke-static {}, Lcom/amazon/kindle/collections/dto/ThumbnailType;->values()[Lcom/amazon/kindle/collections/dto/ThumbnailType;

    move-result-object v1

    aget-object p3, v1, p3

    .line 74
    invoke-static {p1, p2, v0, p3}, Lcom/amazon/kcp/cover/LibraryCoverFactory;->newCollectionThumbnail(Landroid/content/Context;IILcom/amazon/kindle/collections/dto/ThumbnailType;)Landroid/view/View;

    move-result-object p1

    const-string p2, "LibraryCoverFactory.newC\u2026lType.values()[viewType])"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 68
    invoke-virtual {p0, p1, p2}, Lcom/amazon/kcp/library/fragments/LargeCollectionsRecyclerFragment$newAdapter$1;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/amazon/kcp/library/FastRecyclerViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/amazon/kcp/library/FastRecyclerViewHolder;
    .locals 1

    const-string/jumbo v0, "parent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 70
    iget-object v0, p0, Lcom/amazon/kcp/library/fragments/LargeCollectionsRecyclerFragment$newAdapter$1;->this$0:Lcom/amazon/kcp/library/fragments/LargeCollectionsRecyclerFragment;

    invoke-static {v0}, Lcom/amazon/kcp/library/fragments/LargeCollectionsRecyclerFragment;->access$getAdapterHelper$p(Lcom/amazon/kcp/library/fragments/LargeCollectionsRecyclerFragment;)Lcom/amazon/kcp/library/fragments/LargeLibraryRecyclerAdapterHelper;

    move-result-object v0

    invoke-virtual {p0, p1, p2}, Lcom/amazon/kcp/library/FastRecyclerAdapter;->createView(Landroid/view/ViewGroup;I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/amazon/kcp/library/fragments/LargeLibraryRecyclerAdapterHelper;->createViewHolder(Landroid/view/View;)Lcom/amazon/kcp/library/fragments/LargeLibraryRecyclerViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public recycleView(Lcom/amazon/kcp/library/FastRecyclerViewHolder;Landroid/view/View;I)V
    .locals 0

    const-string/jumbo p3, "viewHolder"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo p3, "view"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 95
    iget-object p3, p0, Lcom/amazon/kcp/library/fragments/LargeCollectionsRecyclerFragment$newAdapter$1;->this$0:Lcom/amazon/kcp/library/fragments/LargeCollectionsRecyclerFragment;

    invoke-static {p3}, Lcom/amazon/kcp/library/fragments/LargeCollectionsRecyclerFragment;->access$getAdapterHelper$p(Lcom/amazon/kcp/library/fragments/LargeCollectionsRecyclerFragment;)Lcom/amazon/kcp/library/fragments/LargeLibraryRecyclerAdapterHelper;

    move-result-object p3

    invoke-virtual {p3, p1}, Lcom/amazon/kcp/library/fragments/LargeLibraryRecyclerAdapterHelper;->recycleView(Lcom/amazon/kcp/library/FastRecyclerViewHolder;)V

    .line 96
    invoke-static {p2}, Lcom/amazon/kcp/cover/LibraryCoverFactory;->recycleCollectionThumbnail(Landroid/view/View;)V

    return-void
.end method
