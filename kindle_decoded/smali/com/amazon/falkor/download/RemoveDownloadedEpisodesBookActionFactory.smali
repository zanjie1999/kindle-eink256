.class public final Lcom/amazon/falkor/download/RemoveDownloadedEpisodesBookActionFactory;
.super Lcom/amazon/kindle/krx/library/BaseLibraryBookActionFactory;
.source "RemoveDownloadEpisodesBookActionsFactory.kt"

# interfaces
.implements Lcom/amazon/kindle/krx/library/LibraryBookActionFactory;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nRemoveDownloadEpisodesBookActionsFactory.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RemoveDownloadEpisodesBookActionsFactory.kt\ncom/amazon/falkor/download/RemoveDownloadedEpisodesBookActionFactory\n*L\n1#1,45:1\n*E\n"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Lcom/amazon/kindle/krx/library/BaseLibraryBookActionFactory;-><init>()V

    return-void
.end method


# virtual methods
.method public createActions(Lcom/amazon/kindle/krx/library/LibraryBookActionContext;)Ljava/util/Collection;
    .locals 5
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

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    invoke-interface {p1}, Lcom/amazon/kindle/krx/library/LibraryBookActionContext;->getBooks()Ljava/util/Collection;

    move-result-object p1

    const-string v0, "context.books"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->singleOrNull(Ljava/lang/Iterable;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/kindle/krx/content/IBook;

    if-eqz p1, :cond_0

    .line 21
    sget-object v0, Lcom/amazon/falkor/KindleReaderSDKReference;->INSTANCE:Lcom/amazon/falkor/KindleReaderSDKReference;

    invoke-virtual {v0}, Lcom/amazon/falkor/KindleReaderSDKReference;->getSdk()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v0

    .line 22
    new-instance v1, Lcom/amazon/falkor/utils/BookGroupUtils;

    invoke-direct {v1}, Lcom/amazon/falkor/utils/BookGroupUtils;-><init>()V

    invoke-interface {p1}, Lcom/amazon/kindle/krx/content/IBook;->getBookId()Ljava/lang/String;

    move-result-object v2

    const-string v3, "book.bookId"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x1

    invoke-virtual {v1, v0, v2, v4}, Lcom/amazon/falkor/utils/BookGroupUtils;->getOwnedEpisodeListForGroupId(Lcom/amazon/kindle/krx/IKindleReaderSDK;Ljava/lang/String;Z)Ljava/util/Collection;

    move-result-object v1

    .line 23
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/lang/Iterable;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/kindle/krx/content/BookGroupItem;

    if-eqz v1, :cond_0

    invoke-interface {v1}, Lcom/amazon/kindle/krx/content/BookGroupItem;->getBook()Lcom/amazon/kindle/krx/content/IBook;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v1}, Lcom/amazon/kindle/krx/content/IBook;->isFalkorEpisode()Z

    move-result v1

    if-ne v1, v4, :cond_0

    .line 24
    new-instance v1, Lcom/amazon/falkor/download/RemoveDownloadedEpisodesBookAction;

    invoke-interface {p1}, Lcom/amazon/kindle/krx/content/IBook;->getBookId()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v1, p1, v0}, Lcom/amazon/falkor/download/RemoveDownloadedEpisodesBookAction;-><init>(Ljava/lang/String;Lcom/amazon/kindle/krx/IKindleReaderSDK;)V

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 27
    :cond_0
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic createActions(Ljava/lang/Object;)Ljava/util/Collection;
    .locals 0

    .line 17
    check-cast p1, Lcom/amazon/kindle/krx/library/LibraryBookActionContext;

    invoke-virtual {p0, p1}, Lcom/amazon/falkor/download/RemoveDownloadedEpisodesBookActionFactory;->createActions(Lcom/amazon/kindle/krx/library/LibraryBookActionContext;)Ljava/util/Collection;

    move-result-object p1

    return-object p1
.end method
