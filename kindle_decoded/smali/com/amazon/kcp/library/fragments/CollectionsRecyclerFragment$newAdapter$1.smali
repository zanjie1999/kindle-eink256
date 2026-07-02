.class public final Lcom/amazon/kcp/library/fragments/CollectionsRecyclerFragment$newAdapter$1;
.super Lcom/amazon/kcp/library/FastRecyclerAdapter;
.source "CollectionsRecyclerFragment.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/library/fragments/CollectionsRecyclerFragment;->newAdapter()Lcom/amazon/kcp/library/FastRecyclerAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/amazon/kcp/library/FastRecyclerAdapter<",
        "Lcom/amazon/kindle/collections/dto/ICollection;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/library/fragments/CollectionsRecyclerFragment;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/library/fragments/CollectionsRecyclerFragment;Landroid/app/Activity;Landroid/view/ActionMode$Callback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Landroid/view/ActionMode$Callback;",
            ")V"
        }
    .end annotation

    .line 30
    iput-object p1, p0, Lcom/amazon/kcp/library/fragments/CollectionsRecyclerFragment$newAdapter$1;->this$0:Lcom/amazon/kcp/library/fragments/CollectionsRecyclerFragment;

    invoke-direct {p0, p2, p3}, Lcom/amazon/kcp/library/FastRecyclerAdapter;-><init>(Landroid/app/Activity;Landroid/view/ActionMode$Callback;)V

    return-void
.end method


# virtual methods
.method public bindView(Lcom/amazon/kcp/library/FastRecyclerViewHolder;Landroid/view/View;Landroid/content/Context;ILcom/amazon/kindle/collections/dto/ICollection;)V
    .locals 1

    const-string/jumbo v0, "viewHolder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo p1, "view"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "context"

    invoke-static {p3, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "item"

    invoke-static {p5, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 45
    invoke-static {p5, p2, p4}, Lcom/amazon/kcp/cover/LibraryCoverFactory;->bindCollectionThumbnail(Lcom/amazon/kindle/collections/dto/ICollection;Landroid/view/View;I)Landroid/view/View;

    return-void
.end method

.method public bridge synthetic bindView(Lcom/amazon/kcp/library/FastRecyclerViewHolder;Landroid/view/View;Landroid/content/Context;ILjava/lang/Object;)V
    .locals 0

    .line 30
    check-cast p5, Lcom/amazon/kindle/collections/dto/ICollection;

    invoke-virtual/range {p0 .. p5}, Lcom/amazon/kcp/library/fragments/CollectionsRecyclerFragment$newAdapter$1;->bindView(Lcom/amazon/kcp/library/FastRecyclerViewHolder;Landroid/view/View;Landroid/content/Context;ILcom/amazon/kindle/collections/dto/ICollection;)V

    return-void
.end method

.method public canSelectItem(Lcom/amazon/kindle/collections/dto/ICollection;)Z
    .locals 1

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    .line 57
    invoke-interface {p1}, Lcom/amazon/kindle/collections/dto/ICollection;->isEnabledInMultiSelect()Z

    move-result p1

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public bridge synthetic canSelectItem(Ljava/lang/Object;)Z
    .locals 0

    .line 30
    check-cast p1, Lcom/amazon/kindle/collections/dto/ICollection;

    invoke-virtual {p0, p1}, Lcom/amazon/kcp/library/fragments/CollectionsRecyclerFragment$newAdapter$1;->canSelectItem(Lcom/amazon/kindle/collections/dto/ICollection;)Z

    move-result p1

    return p1
.end method

.method public getItemViewType(I)I
    .locals 1

    .line 39
    invoke-virtual {p0}, Lcom/amazon/kcp/library/FastRecyclerAdapter;->numHeaders()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 40
    invoke-super {p0, p1}, Lcom/amazon/kcp/library/FastRecyclerAdapter;->getItemViewType(I)I

    move-result p1

    goto :goto_0

    .line 41
    :cond_0
    invoke-virtual {p0, p1}, Lcom/amazon/kcp/library/FastRecyclerAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/kindle/collections/dto/ICollection;

    invoke-interface {p1}, Lcom/amazon/kindle/collections/dto/ICollection;->getThumbnailType()Lcom/amazon/kindle/collections/dto/ThumbnailType;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    :goto_0
    return p1
.end method

.method public itemId(Lcom/amazon/kindle/collections/dto/ICollection;)J
    .locals 2

    const-string v0, "item"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 53
    invoke-interface {p1}, Lcom/amazon/kindle/collections/dto/ICollection;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p1

    int-to-long v0, p1

    return-wide v0
.end method

.method public bridge synthetic itemId(Ljava/lang/Object;)J
    .locals 2

    .line 30
    check-cast p1, Lcom/amazon/kindle/collections/dto/ICollection;

    invoke-virtual {p0, p1}, Lcom/amazon/kcp/library/fragments/CollectionsRecyclerFragment$newAdapter$1;->itemId(Lcom/amazon/kindle/collections/dto/ICollection;)J

    move-result-wide v0

    return-wide v0
.end method

.method public newView(Landroid/content/Context;Landroid/view/ViewGroup;I)Landroid/view/View;
    .locals 2

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "parent"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    iget-object p2, p0, Lcom/amazon/kcp/library/fragments/CollectionsRecyclerFragment$newAdapter$1;->this$0:Lcom/amazon/kcp/library/fragments/CollectionsRecyclerFragment;

    invoke-virtual {p2}, Lcom/amazon/kcp/library/fragments/AbstractRecyclerFragment;->getGridItemWidth()I

    move-result p2

    .line 34
    iget-object v0, p0, Lcom/amazon/kcp/library/fragments/CollectionsRecyclerFragment$newAdapter$1;->this$0:Lcom/amazon/kcp/library/fragments/CollectionsRecyclerFragment;

    invoke-virtual {v0}, Lcom/amazon/kcp/library/fragments/AbstractRecyclerFragment;->getGridItemHeight()I

    move-result v0

    .line 35
    invoke-static {}, Lcom/amazon/kindle/collections/dto/ThumbnailType;->values()[Lcom/amazon/kindle/collections/dto/ThumbnailType;

    move-result-object v1

    aget-object p3, v1, p3

    .line 32
    invoke-static {p1, p2, v0, p3}, Lcom/amazon/kcp/cover/LibraryCoverFactory;->newCollectionThumbnail(Landroid/content/Context;IILcom/amazon/kindle/collections/dto/ThumbnailType;)Landroid/view/View;

    move-result-object p1

    const-string p2, "LibraryCoverFactory.newC\u2026lType.values()[viewType])"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public recycleView(Lcom/amazon/kcp/library/FastRecyclerViewHolder;Landroid/view/View;I)V
    .locals 0

    const-string/jumbo p3, "viewHolder"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo p1, "view"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 49
    invoke-static {p2}, Lcom/amazon/kcp/cover/LibraryCoverFactory;->recycleCollectionThumbnail(Landroid/view/View;)V

    return-void
.end method
