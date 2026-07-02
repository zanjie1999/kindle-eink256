.class public final Lcom/amazon/kcp/integrator/LargeLibrarySeriesIntegratorImpl;
.super Ljava/lang/Object;
.source "LargeLibrarySeriesIntegratorImpl.kt"

# interfaces
.implements Lcom/amazon/kcp/integrator/LargeLibrarySeriesIntegrator;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nLargeLibrarySeriesIntegratorImpl.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LargeLibrarySeriesIntegratorImpl.kt\ncom/amazon/kcp/integrator/LargeLibrarySeriesIntegratorImpl\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,52:1\n256#2,2:53\n1819#2,2:55\n*E\n*S KotlinDebug\n*F\n+ 1 LargeLibrarySeriesIntegratorImpl.kt\ncom/amazon/kcp/integrator/LargeLibrarySeriesIntegratorImpl\n*L\n25#1,2:53\n48#1,2:55\n*E\n"
.end annotation


# instance fields
.field private final itemIdToGroupContents:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/amazon/kindle/content/GroupItemMetadata;",
            ">;>;"
        }
    .end annotation
.end field

.field private final itemIdToGroupId:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/amazon/kcp/integrator/LargeLibrarySeriesIntegratorImpl;->itemIdToGroupId:Ljava/util/HashMap;

    .line 13
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/amazon/kcp/integrator/LargeLibrarySeriesIntegratorImpl;->itemIdToGroupContents:Ljava/util/HashMap;

    return-void
.end method

.method private final mapAndPersistItemIdToParentId(Ljava/lang/String;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "+",
            "Lcom/amazon/kindle/content/GroupItemMetadata;",
            ">;)V"
        }
    .end annotation

    .line 55
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kindle/content/GroupItemMetadata;

    .line 49
    iget-object v1, p0, Lcom/amazon/kcp/integrator/LargeLibrarySeriesIntegratorImpl;->itemIdToGroupId:Ljava/util/HashMap;

    invoke-virtual {v0}, Lcom/amazon/kindle/content/GroupItemMetadata;->getItemId()Lcom/amazon/kindle/model/content/IBookID;

    move-result-object v0

    const-string v2, "it.itemId"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Lcom/amazon/kindle/model/content/IBookID;->getSerializedForm()Ljava/lang/String;

    move-result-object v0

    const-string v2, "it.itemId.serializedForm"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v1, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public final getGroupContents(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/amazon/kindle/content/GroupItemMetadata;",
            ">;"
        }
    .end annotation

    const-string/jumbo v0, "parentId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    iget-object v0, p0, Lcom/amazon/kcp/integrator/LargeLibrarySeriesIntegratorImpl;->itemIdToGroupContents:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 35
    iget-object v0, p0, Lcom/amazon/kcp/integrator/LargeLibrarySeriesIntegratorImpl;->itemIdToGroupContents:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p1

    :goto_0
    return-object p1

    .line 37
    :cond_1
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public final getGroupId(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, "itemId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    iget-object v0, p0, Lcom/amazon/kcp/integrator/LargeLibrarySeriesIntegratorImpl;->itemIdToGroupId:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, ""

    if-eqz v0, :cond_0

    .line 42
    iget-object v0, p0, Lcom/amazon/kcp/integrator/LargeLibrarySeriesIntegratorImpl;->itemIdToGroupId:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    if-eqz p1, :cond_0

    move-object v1, p1

    :cond_0
    return-object v1
.end method

.method public persistGroupMetadata(Lcom/amazon/kindle/content/GroupMetadata;)V
    .locals 4

    const-string v0, "groupMetadata"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    invoke-virtual {p1}, Lcom/amazon/kindle/content/GroupMetadata;->getBookID()Lcom/amazon/kindle/model/content/IBookID;

    move-result-object v0

    const-string v1, "groupMetadata.bookID"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Lcom/amazon/kindle/model/content/IBookID;->getSerializedForm()Ljava/lang/String;

    move-result-object v0

    const-string v1, "groupMetadata.bookID.serializedForm"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    iget-object v1, p0, Lcom/amazon/kcp/integrator/LargeLibrarySeriesIntegratorImpl;->itemIdToGroupContents:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/amazon/kindle/content/GroupMetadata;->getGroupContents()Ljava/util/List;

    move-result-object v2

    const-string v3, "groupMetadata.groupContents"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    invoke-virtual {p1}, Lcom/amazon/kindle/content/GroupMetadata;->getGroupContents()Ljava/util/List;

    move-result-object p1

    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v0, p1}, Lcom/amazon/kcp/integrator/LargeLibrarySeriesIntegratorImpl;->mapAndPersistItemIdToParentId(Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method

.method public updateContentWithSeriesData(Lcom/amazon/kindle/content/ContentMetadata;)V
    .locals 5

    const-string v0, "contentMetadata"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    invoke-virtual {p1}, Lcom/amazon/kindle/content/ContentMetadata;->getBookID()Lcom/amazon/kindle/model/content/IBookID;

    move-result-object v0

    const-string v1, "contentMetadata.bookID"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Lcom/amazon/kindle/model/content/IBookID;->getSerializedForm()Ljava/lang/String;

    move-result-object v0

    const-string v1, "contentMetadata.bookID.serializedForm"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    invoke-virtual {p0, v0}, Lcom/amazon/kcp/integrator/LargeLibrarySeriesIntegratorImpl;->getGroupId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 24
    invoke-static {v1}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_2

    .line 25
    invoke-virtual {p0, v1}, Lcom/amazon/kcp/integrator/LargeLibrarySeriesIntegratorImpl;->getGroupContents(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 53
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lcom/amazon/kindle/content/GroupItemMetadata;

    .line 25
    invoke-virtual {v3}, Lcom/amazon/kindle/content/GroupItemMetadata;->getItemId()Lcom/amazon/kindle/model/content/IBookID;

    move-result-object v3

    const-string v4, "it.itemId"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v3}, Lcom/amazon/kindle/model/content/IBookID;->getSerializedForm()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    check-cast v2, Lcom/amazon/kindle/content/GroupItemMetadata;

    if-eqz v2, :cond_2

    .line 27
    invoke-virtual {v2}, Lcom/amazon/kindle/content/GroupItemMetadata;->getSeriesOrderType()Lcom/amazon/kcp/library/models/SeriesOrderType;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/amazon/kindle/content/ContentMetadata;->setSeriesOrderType(Lcom/amazon/kcp/library/models/SeriesOrderType;)V

    .line 28
    invoke-virtual {v2}, Lcom/amazon/kindle/content/GroupItemMetadata;->getGroupPositionLabel()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/amazon/kindle/content/ContentMetadata;->setGroupItemPosition(Ljava/lang/String;)V

    :cond_2
    return-void
.end method
