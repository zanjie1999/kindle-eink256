.class public final Lcom/amazon/kcp/store/ViewStoryDetailsBookActionFactory;
.super Lcom/amazon/kindle/krx/library/BaseLibraryBookActionFactory;
.source "ViewStoryDetailsBookActionFactory.kt"

# interfaces
.implements Lcom/amazon/kindle/krx/library/LibraryBookActionFactory;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kcp/store/ViewStoryDetailsBookActionFactory$ViewStoryDetailsBookAction;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Lcom/amazon/kindle/krx/library/BaseLibraryBookActionFactory;-><init>()V

    return-void
.end method


# virtual methods
.method public createActions(Lcom/amazon/kindle/krx/library/LibraryBookActionContext;)Ljava/util/Collection;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kindle/krx/library/LibraryBookActionContext;",
            ")",
            "Ljava/util/Collection<",
            "Lcom/amazon/kindle/krx/library/LibraryBookAction;",
            ">;"
        }
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    invoke-interface {p1}, Lcom/amazon/kindle/krx/library/LibraryBookActionContext;->getBooks()Ljava/util/Collection;

    move-result-object v0

    const-string v1, "context.books"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->singleOrNull(Ljava/lang/Iterable;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kindle/krx/content/IBook;

    if-eqz v0, :cond_1

    .line 18
    invoke-interface {v0}, Lcom/amazon/kindle/krx/content/IBook;->isFalkorEpisode()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v1

    const-string v2, "Utils.getFactory()"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getGroupService()Lcom/amazon/kindle/content/IGroupService;

    move-result-object v1

    invoke-interface {v0}, Lcom/amazon/kindle/krx/content/IBook;->getBookId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/amazon/kindle/content/IGroupService;->isGroupFalkorStory(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "Utils.getFactory().group\u2026pFalkorStory(book.bookId)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 19
    :cond_0
    new-instance v1, Lcom/amazon/kcp/store/ViewStoryDetailsBookActionFactory$ViewStoryDetailsBookAction;

    invoke-direct {v1, v0, p1}, Lcom/amazon/kcp/store/ViewStoryDetailsBookActionFactory$ViewStoryDetailsBookAction;-><init>(Lcom/amazon/kindle/krx/content/IBook;Lcom/amazon/kindle/krx/library/LibraryBookActionContext;)V

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    goto :goto_0

    .line 21
    :cond_1
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public bridge synthetic createActions(Ljava/lang/Object;)Ljava/util/Collection;
    .locals 0

    .line 14
    check-cast p1, Lcom/amazon/kindle/krx/library/LibraryBookActionContext;

    invoke-virtual {p0, p1}, Lcom/amazon/kcp/store/ViewStoryDetailsBookActionFactory;->createActions(Lcom/amazon/kindle/krx/library/LibraryBookActionContext;)Ljava/util/Collection;

    move-result-object p1

    return-object p1
.end method
