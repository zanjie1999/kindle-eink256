.class public final Lcom/amazon/kcp/library/LargeLibraryCounterProviderImpl;
.super Ljava/lang/Object;
.source "LargeLibraryCounterProviderImpl.kt"

# interfaces
.implements Lcom/amazon/kcp/library/LargeLibraryCounterProvider;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final applyDefaultArguments(Lcom/amazon/kindle/callback/ICallback;Lcom/amazon/kcp/library/CounterArguments;Lcom/amazon/kcp/library/CounterArguments;)Lcom/amazon/kcp/library/AbstractUserItemsCounter;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kindle/callback/ICallback<",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/amazon/kcp/library/CounterArguments;",
            "Lcom/amazon/kcp/library/CounterArguments;",
            ")",
            "Lcom/amazon/kcp/library/AbstractUserItemsCounter;"
        }
    .end annotation

    if-eqz p3, :cond_1

    .line 148
    invoke-virtual {p2}, Lcom/amazon/kcp/library/CounterArguments;->getModelContent()Lcom/amazon/kindle/observablemodel/ModelContent;

    move-result-object v0

    .line 149
    invoke-virtual {p3}, Lcom/amazon/kcp/library/CounterArguments;->getModelContent()Lcom/amazon/kindle/observablemodel/ModelContent;

    move-result-object p3

    .line 151
    invoke-virtual {v0}, Lcom/amazon/kindle/observablemodel/ModelContent;->getCategorySet()Ljava/util/Set;

    move-result-object v1

    const-string v2, "counterContent.categorySet"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p3}, Lcom/amazon/kindle/observablemodel/ModelContent;->getCategorySet()Ljava/util/Set;

    move-result-object v2

    const-string v3, "defaultContent.categorySet"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1, v2}, Lkotlin/collections/CollectionsKt;->intersect(Ljava/lang/Iterable;Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/kindle/observablemodel/ModelContent;->modelContentWithCategorySet(Ljava/util/Set;)Lcom/amazon/kindle/observablemodel/ModelContent;

    move-result-object v1

    .line 152
    invoke-virtual {v0}, Lcom/amazon/kindle/observablemodel/ModelContent;->getParentGroup()Lcom/amazon/kindle/observablemodel/ItemID;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 153
    :cond_0
    invoke-virtual {p3}, Lcom/amazon/kindle/observablemodel/ModelContent;->getParentGroup()Lcom/amazon/kindle/observablemodel/ItemID;

    move-result-object v0

    .line 152
    :goto_0
    invoke-virtual {v1, v0}, Lcom/amazon/kindle/observablemodel/ModelContent;->modelContentWithParentGroup(Lcom/amazon/kindle/observablemodel/ItemID;)Lcom/amazon/kindle/observablemodel/ModelContent;

    move-result-object p3

    .line 154
    new-instance v0, Lcom/amazon/kcp/library/LargeLibraryCounter;

    const-string/jumbo v1, "newContent"

    invoke-static {p3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/amazon/kcp/library/CounterArguments;->getModelFilter()Lcom/amazon/kindle/observablemodel/ModelFilter;

    move-result-object p2

    invoke-direct {v0, p1, p3, p2}, Lcom/amazon/kcp/library/LargeLibraryCounter;-><init>(Lcom/amazon/kindle/callback/ICallback;Lcom/amazon/kindle/observablemodel/ModelContent;Lcom/amazon/kindle/observablemodel/ModelFilter;)V

    goto :goto_1

    .line 156
    :cond_1
    new-instance v0, Lcom/amazon/kcp/library/LargeLibraryCounter;

    invoke-virtual {p2}, Lcom/amazon/kcp/library/CounterArguments;->getModelContent()Lcom/amazon/kindle/observablemodel/ModelContent;

    move-result-object p3

    invoke-virtual {p2}, Lcom/amazon/kcp/library/CounterArguments;->getModelFilter()Lcom/amazon/kindle/observablemodel/ModelFilter;

    move-result-object p2

    invoke-direct {v0, p1, p3, p2}, Lcom/amazon/kcp/library/LargeLibraryCounter;-><init>(Lcom/amazon/kindle/callback/ICallback;Lcom/amazon/kindle/observablemodel/ModelContent;Lcom/amazon/kindle/observablemodel/ModelFilter;)V

    :goto_1
    return-object v0
.end method


# virtual methods
.method public allBooksCounter(Lcom/amazon/kindle/callback/ICallback;)Lcom/amazon/kcp/library/AbstractUserItemsCounter;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kindle/callback/ICallback<",
            "Ljava/lang/Integer;",
            ">;)",
            "Lcom/amazon/kcp/library/AbstractUserItemsCounter;"
        }
    .end annotation

    .line 29
    new-instance v0, Lcom/amazon/kcp/library/LargeLibraryCounter;

    const/4 v1, 0x6

    .line 30
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Lkotlin/collections/SetsKt;->setOf(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v2

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Lkotlin/collections/SetsKt;->setOf(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0x8

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Lcom/amazon/kcp/integrator/LargeLibraryUtilsKt;->modelContentWithArguments$default(Ljava/util/Set;Ljava/util/Set;Lcom/amazon/kindle/observablemodel/ItemID;Lcom/amazon/kindle/observablemodel/ModelContent;ILjava/lang/Object;)Lcom/amazon/kindle/observablemodel/ModelContent;

    move-result-object v1

    .line 31
    new-instance v2, Lcom/amazon/kindle/observablemodel/ModelFilter;

    invoke-direct {v2}, Lcom/amazon/kindle/observablemodel/ModelFilter;-><init>()V

    .line 29
    invoke-direct {v0, p1, v1, v2}, Lcom/amazon/kcp/library/LargeLibraryCounter;-><init>(Lcom/amazon/kindle/callback/ICallback;Lcom/amazon/kindle/observablemodel/ModelContent;Lcom/amazon/kindle/observablemodel/ModelFilter;)V

    return-object v0
.end method

.method public allItemsCounter(Lcom/amazon/kindle/callback/ICallback;)Lcom/amazon/kcp/library/AbstractUserItemsCounter;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kindle/callback/ICallback<",
            "Ljava/lang/Integer;",
            ">;)",
            "Lcom/amazon/kcp/library/AbstractUserItemsCounter;"
        }
    .end annotation

    .line 17
    new-instance v0, Lcom/amazon/kcp/library/LargeLibraryCounter;

    .line 18
    sget-object v1, Lcom/amazon/kcp/integrator/BookDataHelper;->INSTANCE:Lcom/amazon/kcp/integrator/BookDataHelper;

    invoke-virtual {v1}, Lcom/amazon/kcp/integrator/BookDataHelper;->getCATEGORIES()Ljava/util/Set;

    move-result-object v2

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Lkotlin/collections/SetsKt;->setOf(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0x8

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Lcom/amazon/kcp/integrator/LargeLibraryUtilsKt;->modelContentWithArguments$default(Ljava/util/Set;Ljava/util/Set;Lcom/amazon/kindle/observablemodel/ItemID;Lcom/amazon/kindle/observablemodel/ModelContent;ILjava/lang/Object;)Lcom/amazon/kindle/observablemodel/ModelContent;

    move-result-object v1

    .line 19
    new-instance v2, Lcom/amazon/kindle/observablemodel/ModelFilter;

    invoke-direct {v2}, Lcom/amazon/kindle/observablemodel/ModelFilter;-><init>()V

    .line 17
    invoke-direct {v0, p1, v1, v2}, Lcom/amazon/kcp/library/LargeLibraryCounter;-><init>(Lcom/amazon/kindle/callback/ICallback;Lcom/amazon/kindle/observablemodel/ModelContent;Lcom/amazon/kindle/observablemodel/ModelFilter;)V

    return-object v0
.end method

.method public audibleCounter(Lcom/amazon/kindle/callback/ICallback;Lcom/amazon/kcp/library/LargeLibraryDefaultArguments;)Lcom/amazon/kcp/library/AbstractUserItemsCounter;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kindle/callback/ICallback<",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/amazon/kcp/library/LargeLibraryDefaultArguments;",
            ")",
            "Lcom/amazon/kcp/library/AbstractUserItemsCounter;"
        }
    .end annotation

    .line 113
    sget-object v0, Lcom/amazon/kcp/integrator/BookDataHelper;->INSTANCE:Lcom/amazon/kcp/integrator/BookDataHelper;

    invoke-virtual {v0}, Lcom/amazon/kcp/integrator/BookDataHelper;->getCATEGORIES()Ljava/util/Set;

    move-result-object v1

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/SetsKt;->setOf(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0x8

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lcom/amazon/kcp/integrator/LargeLibraryUtilsKt;->modelContentWithArguments$default(Ljava/util/Set;Ljava/util/Set;Lcom/amazon/kindle/observablemodel/ItemID;Lcom/amazon/kindle/observablemodel/ModelContent;ILjava/lang/Object;)Lcom/amazon/kindle/observablemodel/ModelContent;

    move-result-object v0

    .line 114
    new-instance v1, Lcom/amazon/kindle/observablemodel/ModelFilter;

    invoke-direct {v1}, Lcom/amazon/kindle/observablemodel/ModelFilter;-><init>()V

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v2}, Lkotlin/collections/SetsKt;->setOf(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/amazon/kindle/observablemodel/ModelFilter;->modelFilterWithAudibleCompanionSet(Ljava/util/Set;)Lcom/amazon/kindle/observablemodel/ModelFilter;

    move-result-object v1

    .line 115
    new-instance v2, Lcom/amazon/kcp/library/CounterArguments;

    const-string/jumbo v3, "modelFilter"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v2, v0, v1}, Lcom/amazon/kcp/library/CounterArguments;-><init>(Lcom/amazon/kindle/observablemodel/ModelContent;Lcom/amazon/kindle/observablemodel/ModelFilter;)V

    check-cast p2, Lcom/amazon/kcp/library/CounterArguments;

    invoke-direct {p0, p1, v2, p2}, Lcom/amazon/kcp/library/LargeLibraryCounterProviderImpl;->applyDefaultArguments(Lcom/amazon/kindle/callback/ICallback;Lcom/amazon/kcp/library/CounterArguments;Lcom/amazon/kcp/library/CounterArguments;)Lcom/amazon/kcp/library/AbstractUserItemsCounter;

    move-result-object p1

    return-object p1
.end method

.method public backIssuesCounter(Lcom/amazon/kindle/callback/ICallback;)Lcom/amazon/kcp/library/AbstractUserItemsCounter;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kindle/callback/ICallback<",
            "Ljava/lang/Integer;",
            ">;)",
            "Lcom/amazon/kcp/library/AbstractUserItemsCounter;"
        }
    .end annotation

    .line 59
    new-instance v0, Lcom/amazon/kcp/library/LargeLibraryCounter;

    .line 60
    sget-object v1, Lcom/amazon/kcp/integrator/BookDataHelper;->INSTANCE:Lcom/amazon/kcp/integrator/BookDataHelper;

    invoke-virtual {v1}, Lcom/amazon/kcp/integrator/BookDataHelper;->getPERIODICALS()Ljava/util/Set;

    move-result-object v2

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Lkotlin/collections/SetsKt;->setOf(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0x8

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Lcom/amazon/kcp/integrator/LargeLibraryUtilsKt;->modelContentWithArguments$default(Ljava/util/Set;Ljava/util/Set;Lcom/amazon/kindle/observablemodel/ItemID;Lcom/amazon/kindle/observablemodel/ModelContent;ILjava/lang/Object;)Lcom/amazon/kindle/observablemodel/ModelContent;

    move-result-object v1

    .line 61
    new-instance v2, Lcom/amazon/kindle/observablemodel/ModelFilter;

    invoke-direct {v2}, Lcom/amazon/kindle/observablemodel/ModelFilter;-><init>()V

    .line 59
    invoke-direct {v0, p1, v1, v2}, Lcom/amazon/kcp/library/LargeLibraryCounter;-><init>(Lcom/amazon/kindle/callback/ICallback;Lcom/amazon/kindle/observablemodel/ModelContent;Lcom/amazon/kindle/observablemodel/ModelFilter;)V

    return-object v0
.end method

.method public backIssuesDetailDefaultArguments(Ljava/lang/String;)Lcom/amazon/kcp/library/CounterArguments;
    .locals 6

    const-string/jumbo v0, "parentAsin"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 138
    new-instance v0, Lcom/amazon/kcp/library/models/internal/AmznBookID;

    sget-object v1, Lcom/amazon/kcp/library/models/BookType;->BT_PERIODICAL_GROUP:Lcom/amazon/kcp/library/models/BookType;

    invoke-direct {v0, p1, v1}, Lcom/amazon/kcp/library/models/internal/AmznBookID;-><init>(Ljava/lang/String;Lcom/amazon/kcp/library/models/BookType;)V

    invoke-virtual {v0}, Lcom/amazon/kcp/library/models/internal/AmznBookID;->getSerializedForm()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/amazon/kindle/observablemodel/ItemID;->periodicalItemWithIdentifier(Ljava/lang/String;)Lcom/amazon/kindle/observablemodel/ItemID;

    move-result-object v2

    .line 139
    new-instance p1, Lcom/amazon/kcp/library/CounterArguments;

    sget-object v0, Lcom/amazon/kcp/integrator/BookDataHelper;->INSTANCE:Lcom/amazon/kcp/integrator/BookDataHelper;

    invoke-virtual {v0}, Lcom/amazon/kcp/integrator/BookDataHelper;->getPERIODICALS()Ljava/util/Set;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Lkotlin/collections/SetsKt;->setOf(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v1

    const/4 v3, 0x0

    const/16 v4, 0x8

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lcom/amazon/kcp/integrator/LargeLibraryUtilsKt;->modelContentWithArguments$default(Ljava/util/Set;Ljava/util/Set;Lcom/amazon/kindle/observablemodel/ItemID;Lcom/amazon/kindle/observablemodel/ModelContent;ILjava/lang/Object;)Lcom/amazon/kindle/observablemodel/ModelContent;

    move-result-object v0

    new-instance v1, Lcom/amazon/kindle/observablemodel/ModelFilter;

    invoke-direct {v1}, Lcom/amazon/kindle/observablemodel/ModelFilter;-><init>()V

    invoke-direct {p1, v0, v1}, Lcom/amazon/kcp/library/CounterArguments;-><init>(Lcom/amazon/kindle/observablemodel/ModelContent;Lcom/amazon/kindle/observablemodel/ModelFilter;)V

    return-object p1
.end method

.method public bridge synthetic backIssuesDetailDefaultArguments(Ljava/lang/String;)Lcom/amazon/kcp/library/LargeLibraryDefaultArguments;
    .locals 0

    .line 14
    invoke-virtual {p0, p1}, Lcom/amazon/kcp/library/LargeLibraryCounterProviderImpl;->backIssuesDetailDefaultArguments(Ljava/lang/String;)Lcom/amazon/kcp/library/CounterArguments;

    move-result-object p1

    return-object p1
.end method

.method public booksCounter(Lcom/amazon/kindle/callback/ICallback;Lcom/amazon/kcp/library/LargeLibraryDefaultArguments;)Lcom/amazon/kcp/library/AbstractUserItemsCounter;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kindle/callback/ICallback<",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/amazon/kcp/library/LargeLibraryDefaultArguments;",
            ")",
            "Lcom/amazon/kcp/library/AbstractUserItemsCounter;"
        }
    .end annotation

    const/4 v0, 0x6

    .line 65
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/SetsKt;->setOf(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v1

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/SetsKt;->setOf(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0x8

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lcom/amazon/kcp/integrator/LargeLibraryUtilsKt;->modelContentWithArguments$default(Ljava/util/Set;Ljava/util/Set;Lcom/amazon/kindle/observablemodel/ItemID;Lcom/amazon/kindle/observablemodel/ModelContent;ILjava/lang/Object;)Lcom/amazon/kindle/observablemodel/ModelContent;

    move-result-object v0

    .line 66
    new-instance v1, Lcom/amazon/kindle/observablemodel/ModelFilter;

    invoke-direct {v1}, Lcom/amazon/kindle/observablemodel/ModelFilter;-><init>()V

    .line 67
    new-instance v2, Lcom/amazon/kcp/library/CounterArguments;

    invoke-direct {v2, v0, v1}, Lcom/amazon/kcp/library/CounterArguments;-><init>(Lcom/amazon/kindle/observablemodel/ModelContent;Lcom/amazon/kindle/observablemodel/ModelFilter;)V

    check-cast p2, Lcom/amazon/kcp/library/CounterArguments;

    invoke-direct {p0, p1, v2, p2}, Lcom/amazon/kcp/library/LargeLibraryCounterProviderImpl;->applyDefaultArguments(Lcom/amazon/kindle/callback/ICallback;Lcom/amazon/kcp/library/CounterArguments;Lcom/amazon/kcp/library/CounterArguments;)Lcom/amazon/kcp/library/AbstractUserItemsCounter;

    move-result-object p1

    return-object p1
.end method

.method public collectionsCounter(Lcom/amazon/kindle/callback/ICallback;)Lcom/amazon/kcp/library/AbstractUserItemsCounter;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kindle/callback/ICallback<",
            "Ljava/lang/Integer;",
            ">;)",
            "Lcom/amazon/kcp/library/AbstractUserItemsCounter;"
        }
    .end annotation

    .line 53
    new-instance v0, Lcom/amazon/kcp/library/LargeLibraryCounter;

    .line 54
    sget-object v1, Lcom/amazon/kcp/integrator/BookDataHelper;->INSTANCE:Lcom/amazon/kcp/integrator/BookDataHelper;

    invoke-virtual {v1}, Lcom/amazon/kcp/integrator/BookDataHelper;->getCATEGORIES()Ljava/util/Set;

    move-result-object v2

    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Lkotlin/collections/SetsKt;->setOf(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0x8

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Lcom/amazon/kcp/integrator/LargeLibraryUtilsKt;->modelContentWithArguments$default(Ljava/util/Set;Ljava/util/Set;Lcom/amazon/kindle/observablemodel/ItemID;Lcom/amazon/kindle/observablemodel/ModelContent;ILjava/lang/Object;)Lcom/amazon/kindle/observablemodel/ModelContent;

    move-result-object v1

    .line 55
    new-instance v2, Lcom/amazon/kindle/observablemodel/ModelFilter;

    invoke-direct {v2}, Lcom/amazon/kindle/observablemodel/ModelFilter;-><init>()V

    .line 53
    invoke-direct {v0, p1, v1, v2}, Lcom/amazon/kcp/library/LargeLibraryCounter;-><init>(Lcom/amazon/kindle/callback/ICallback;Lcom/amazon/kindle/observablemodel/ModelContent;Lcom/amazon/kindle/observablemodel/ModelFilter;)V

    return-object v0
.end method

.method public cuCounter(Lcom/amazon/kindle/callback/ICallback;Lcom/amazon/kcp/library/LargeLibraryDefaultArguments;)Lcom/amazon/kcp/library/AbstractUserItemsCounter;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kindle/callback/ICallback<",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/amazon/kcp/library/LargeLibraryDefaultArguments;",
            ")",
            "Lcom/amazon/kcp/library/AbstractUserItemsCounter;"
        }
    .end annotation

    .line 77
    sget-object v0, Lcom/amazon/kcp/integrator/BookDataHelper;->INSTANCE:Lcom/amazon/kcp/integrator/BookDataHelper;

    invoke-virtual {v0}, Lcom/amazon/kcp/integrator/BookDataHelper;->getCATEGORIES()Ljava/util/Set;

    move-result-object v1

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/SetsKt;->setOf(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0x8

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lcom/amazon/kcp/integrator/LargeLibraryUtilsKt;->modelContentWithArguments$default(Ljava/util/Set;Ljava/util/Set;Lcom/amazon/kindle/observablemodel/ItemID;Lcom/amazon/kindle/observablemodel/ModelContent;ILjava/lang/Object;)Lcom/amazon/kindle/observablemodel/ModelContent;

    move-result-object v0

    .line 78
    new-instance v1, Lcom/amazon/kindle/observablemodel/ModelFilter;

    invoke-direct {v1}, Lcom/amazon/kindle/observablemodel/ModelFilter;-><init>()V

    const/16 v2, 0x9

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v2}, Lkotlin/collections/SetsKt;->setOf(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/amazon/kindle/observablemodel/ModelFilter;->modelFilterWithOwnershipSet(Ljava/util/Set;)Lcom/amazon/kindle/observablemodel/ModelFilter;

    move-result-object v1

    .line 79
    new-instance v2, Lcom/amazon/kcp/library/CounterArguments;

    const-string/jumbo v3, "modelFilter"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v2, v0, v1}, Lcom/amazon/kcp/library/CounterArguments;-><init>(Lcom/amazon/kindle/observablemodel/ModelContent;Lcom/amazon/kindle/observablemodel/ModelFilter;)V

    check-cast p2, Lcom/amazon/kcp/library/CounterArguments;

    invoke-direct {p0, p1, v2, p2}, Lcom/amazon/kcp/library/LargeLibraryCounterProviderImpl;->applyDefaultArguments(Lcom/amazon/kindle/callback/ICallback;Lcom/amazon/kcp/library/CounterArguments;Lcom/amazon/kcp/library/CounterArguments;)Lcom/amazon/kcp/library/AbstractUserItemsCounter;

    move-result-object p1

    return-object p1
.end method

.method public docsCounter(Lcom/amazon/kindle/callback/ICallback;Lcom/amazon/kcp/library/LargeLibraryDefaultArguments;)Lcom/amazon/kcp/library/AbstractUserItemsCounter;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kindle/callback/ICallback<",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/amazon/kcp/library/LargeLibraryDefaultArguments;",
            ")",
            "Lcom/amazon/kcp/library/AbstractUserItemsCounter;"
        }
    .end annotation

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Integer;

    const/4 v1, 0x4

    .line 119
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/16 v1, 0x8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v3, 0x1

    aput-object v1, v0, v3

    const/4 v1, 0x7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v3, 0x2

    aput-object v1, v0, v3

    invoke-static {v0}, Lkotlin/collections/SetsKt;->setOf([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/SetsKt;->setOf(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v8, 0x8

    const/4 v9, 0x0

    invoke-static/range {v4 .. v9}, Lcom/amazon/kcp/integrator/LargeLibraryUtilsKt;->modelContentWithArguments$default(Ljava/util/Set;Ljava/util/Set;Lcom/amazon/kindle/observablemodel/ItemID;Lcom/amazon/kindle/observablemodel/ModelContent;ILjava/lang/Object;)Lcom/amazon/kindle/observablemodel/ModelContent;

    move-result-object v0

    .line 120
    new-instance v1, Lcom/amazon/kindle/observablemodel/ModelFilter;

    invoke-direct {v1}, Lcom/amazon/kindle/observablemodel/ModelFilter;-><init>()V

    .line 121
    new-instance v2, Lcom/amazon/kcp/library/CounterArguments;

    invoke-direct {v2, v0, v1}, Lcom/amazon/kcp/library/CounterArguments;-><init>(Lcom/amazon/kindle/observablemodel/ModelContent;Lcom/amazon/kindle/observablemodel/ModelFilter;)V

    check-cast p2, Lcom/amazon/kcp/library/CounterArguments;

    invoke-direct {p0, p1, v2, p2}, Lcom/amazon/kcp/library/LargeLibraryCounterProviderImpl;->applyDefaultArguments(Lcom/amazon/kindle/callback/ICallback;Lcom/amazon/kcp/library/CounterArguments;Lcom/amazon/kcp/library/CounterArguments;)Lcom/amazon/kcp/library/AbstractUserItemsCounter;

    move-result-object p1

    return-object p1
.end method

.method public falkorCounter(Lcom/amazon/kindle/callback/ICallback;Lcom/amazon/kcp/library/LargeLibraryDefaultArguments;)Lcom/amazon/kcp/library/AbstractUserItemsCounter;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kindle/callback/ICallback<",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/amazon/kcp/library/LargeLibraryDefaultArguments;",
            ")",
            "Lcom/amazon/kcp/library/AbstractUserItemsCounter;"
        }
    .end annotation

    const/16 v0, 0xe

    .line 125
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/SetsKt;->setOf(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v1

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/SetsKt;->setOf(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0x8

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lcom/amazon/kcp/integrator/LargeLibraryUtilsKt;->modelContentWithArguments$default(Ljava/util/Set;Ljava/util/Set;Lcom/amazon/kindle/observablemodel/ItemID;Lcom/amazon/kindle/observablemodel/ModelContent;ILjava/lang/Object;)Lcom/amazon/kindle/observablemodel/ModelContent;

    move-result-object v0

    .line 126
    new-instance v1, Lcom/amazon/kindle/observablemodel/ModelFilter;

    invoke-direct {v1}, Lcom/amazon/kindle/observablemodel/ModelFilter;-><init>()V

    .line 127
    new-instance v2, Lcom/amazon/kcp/library/CounterArguments;

    invoke-direct {v2, v0, v1}, Lcom/amazon/kcp/library/CounterArguments;-><init>(Lcom/amazon/kindle/observablemodel/ModelContent;Lcom/amazon/kindle/observablemodel/ModelFilter;)V

    check-cast p2, Lcom/amazon/kcp/library/CounterArguments;

    invoke-direct {p0, p1, v2, p2}, Lcom/amazon/kcp/library/LargeLibraryCounterProviderImpl;->applyDefaultArguments(Lcom/amazon/kindle/callback/ICallback;Lcom/amazon/kcp/library/CounterArguments;Lcom/amazon/kcp/library/CounterArguments;)Lcom/amazon/kcp/library/AbstractUserItemsCounter;

    move-result-object p1

    return-object p1
.end method

.method public newsstandCounter(Lcom/amazon/kindle/callback/ICallback;)Lcom/amazon/kcp/library/AbstractUserItemsCounter;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kindle/callback/ICallback<",
            "Ljava/lang/Integer;",
            ">;)",
            "Lcom/amazon/kcp/library/AbstractUserItemsCounter;"
        }
    .end annotation

    .line 41
    new-instance v0, Lcom/amazon/kcp/library/LargeLibraryCounter;

    .line 42
    sget-object v1, Lcom/amazon/kcp/integrator/BookDataHelper;->INSTANCE:Lcom/amazon/kcp/integrator/BookDataHelper;

    invoke-virtual {v1}, Lcom/amazon/kcp/integrator/BookDataHelper;->getPERIODICALS()Ljava/util/Set;

    move-result-object v2

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Lkotlin/collections/SetsKt;->setOf(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0x8

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Lcom/amazon/kcp/integrator/LargeLibraryUtilsKt;->modelContentWithArguments$default(Ljava/util/Set;Ljava/util/Set;Lcom/amazon/kindle/observablemodel/ItemID;Lcom/amazon/kindle/observablemodel/ModelContent;ILjava/lang/Object;)Lcom/amazon/kindle/observablemodel/ModelContent;

    move-result-object v1

    .line 43
    new-instance v2, Lcom/amazon/kindle/observablemodel/ModelFilter;

    invoke-direct {v2}, Lcom/amazon/kindle/observablemodel/ModelFilter;-><init>()V

    .line 41
    invoke-direct {v0, p1, v1, v2}, Lcom/amazon/kcp/library/LargeLibraryCounter;-><init>(Lcom/amazon/kindle/callback/ICallback;Lcom/amazon/kindle/observablemodel/ModelContent;Lcom/amazon/kindle/observablemodel/ModelFilter;)V

    return-object v0
.end method

.method public onDeviceBooksCounter(Lcom/amazon/kindle/callback/ICallback;)Lcom/amazon/kcp/library/AbstractUserItemsCounter;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kindle/callback/ICallback<",
            "Ljava/lang/Integer;",
            ">;)",
            "Lcom/amazon/kcp/library/AbstractUserItemsCounter;"
        }
    .end annotation

    .line 35
    new-instance v0, Lcom/amazon/kcp/library/LargeLibraryCounter;

    const/4 v1, 0x6

    .line 36
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Lkotlin/collections/SetsKt;->setOf(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v2

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Lkotlin/collections/SetsKt;->setOf(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0x8

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Lcom/amazon/kcp/integrator/LargeLibraryUtilsKt;->modelContentWithArguments$default(Ljava/util/Set;Ljava/util/Set;Lcom/amazon/kindle/observablemodel/ItemID;Lcom/amazon/kindle/observablemodel/ModelContent;ILjava/lang/Object;)Lcom/amazon/kindle/observablemodel/ModelContent;

    move-result-object v1

    .line 37
    new-instance v2, Lcom/amazon/kindle/observablemodel/ModelFilter;

    invoke-direct {v2}, Lcom/amazon/kindle/observablemodel/ModelFilter;-><init>()V

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v3}, Lkotlin/collections/SetsKt;->setOf(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/amazon/kindle/observablemodel/ModelFilter;->modelFilterWithLocationSet(Ljava/util/Set;)Lcom/amazon/kindle/observablemodel/ModelFilter;

    move-result-object v2

    const-string v3, "ModelFilter().modelFilte\u2026elFilter.LOCATION_LOCAL))"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    invoke-direct {v0, p1, v1, v2}, Lcom/amazon/kcp/library/LargeLibraryCounter;-><init>(Lcom/amazon/kindle/callback/ICallback;Lcom/amazon/kindle/observablemodel/ModelContent;Lcom/amazon/kindle/observablemodel/ModelFilter;)V

    return-object v0
.end method

.method public onDeviceCounter(Lcom/amazon/kindle/callback/ICallback;)Lcom/amazon/kcp/library/AbstractUserItemsCounter;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kindle/callback/ICallback<",
            "Ljava/lang/Integer;",
            ">;)",
            "Lcom/amazon/kcp/library/AbstractUserItemsCounter;"
        }
    .end annotation

    .line 23
    new-instance v0, Lcom/amazon/kcp/library/LargeLibraryCounter;

    .line 24
    sget-object v1, Lcom/amazon/kcp/integrator/BookDataHelper;->INSTANCE:Lcom/amazon/kcp/integrator/BookDataHelper;

    invoke-virtual {v1}, Lcom/amazon/kcp/integrator/BookDataHelper;->getCATEGORIES()Ljava/util/Set;

    move-result-object v2

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Lkotlin/collections/SetsKt;->setOf(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0x8

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Lcom/amazon/kcp/integrator/LargeLibraryUtilsKt;->modelContentWithArguments$default(Ljava/util/Set;Ljava/util/Set;Lcom/amazon/kindle/observablemodel/ItemID;Lcom/amazon/kindle/observablemodel/ModelContent;ILjava/lang/Object;)Lcom/amazon/kindle/observablemodel/ModelContent;

    move-result-object v1

    .line 25
    new-instance v2, Lcom/amazon/kindle/observablemodel/ModelFilter;

    invoke-direct {v2}, Lcom/amazon/kindle/observablemodel/ModelFilter;-><init>()V

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v3}, Lkotlin/collections/SetsKt;->setOf(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/amazon/kindle/observablemodel/ModelFilter;->modelFilterWithLocationSet(Ljava/util/Set;)Lcom/amazon/kindle/observablemodel/ModelFilter;

    move-result-object v2

    const-string v3, "ModelFilter().modelFilte\u2026elFilter.LOCATION_LOCAL))"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    invoke-direct {v0, p1, v1, v2}, Lcom/amazon/kcp/library/LargeLibraryCounter;-><init>(Lcom/amazon/kindle/callback/ICallback;Lcom/amazon/kindle/observablemodel/ModelContent;Lcom/amazon/kindle/observablemodel/ModelFilter;)V

    return-object v0
.end method

.method public onDeviceNewsstandCounter(Lcom/amazon/kindle/callback/ICallback;)Lcom/amazon/kcp/library/AbstractUserItemsCounter;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kindle/callback/ICallback<",
            "Ljava/lang/Integer;",
            ">;)",
            "Lcom/amazon/kcp/library/AbstractUserItemsCounter;"
        }
    .end annotation

    .line 47
    new-instance v0, Lcom/amazon/kcp/library/LargeLibraryCounter;

    .line 48
    sget-object v1, Lcom/amazon/kcp/integrator/BookDataHelper;->INSTANCE:Lcom/amazon/kcp/integrator/BookDataHelper;

    invoke-virtual {v1}, Lcom/amazon/kcp/integrator/BookDataHelper;->getPERIODICALS()Ljava/util/Set;

    move-result-object v2

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Lkotlin/collections/SetsKt;->setOf(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0x8

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Lcom/amazon/kcp/integrator/LargeLibraryUtilsKt;->modelContentWithArguments$default(Ljava/util/Set;Ljava/util/Set;Lcom/amazon/kindle/observablemodel/ItemID;Lcom/amazon/kindle/observablemodel/ModelContent;ILjava/lang/Object;)Lcom/amazon/kindle/observablemodel/ModelContent;

    move-result-object v1

    .line 49
    new-instance v2, Lcom/amazon/kindle/observablemodel/ModelFilter;

    invoke-direct {v2}, Lcom/amazon/kindle/observablemodel/ModelFilter;-><init>()V

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v3}, Lkotlin/collections/SetsKt;->setOf(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/amazon/kindle/observablemodel/ModelFilter;->modelFilterWithLocationSet(Ljava/util/Set;)Lcom/amazon/kindle/observablemodel/ModelFilter;

    move-result-object v2

    const-string v3, "ModelFilter().modelFilte\u2026elFilter.LOCATION_LOCAL))"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 47
    invoke-direct {v0, p1, v1, v2}, Lcom/amazon/kcp/library/LargeLibraryCounter;-><init>(Lcom/amazon/kindle/callback/ICallback;Lcom/amazon/kindle/observablemodel/ModelContent;Lcom/amazon/kindle/observablemodel/ModelFilter;)V

    return-object v0
.end method

.method public ownersLendingCounter(Lcom/amazon/kindle/callback/ICallback;Lcom/amazon/kcp/library/LargeLibraryDefaultArguments;)Lcom/amazon/kcp/library/AbstractUserItemsCounter;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kindle/callback/ICallback<",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/amazon/kcp/library/LargeLibraryDefaultArguments;",
            ")",
            "Lcom/amazon/kcp/library/AbstractUserItemsCounter;"
        }
    .end annotation

    .line 95
    sget-object v0, Lcom/amazon/kcp/integrator/BookDataHelper;->INSTANCE:Lcom/amazon/kcp/integrator/BookDataHelper;

    invoke-virtual {v0}, Lcom/amazon/kcp/integrator/BookDataHelper;->getCATEGORIES()Ljava/util/Set;

    move-result-object v1

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/SetsKt;->setOf(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0x8

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lcom/amazon/kcp/integrator/LargeLibraryUtilsKt;->modelContentWithArguments$default(Ljava/util/Set;Ljava/util/Set;Lcom/amazon/kindle/observablemodel/ItemID;Lcom/amazon/kindle/observablemodel/ModelContent;ILjava/lang/Object;)Lcom/amazon/kindle/observablemodel/ModelContent;

    move-result-object v0

    .line 96
    new-instance v1, Lcom/amazon/kindle/observablemodel/ModelFilter;

    invoke-direct {v1}, Lcom/amazon/kindle/observablemodel/ModelFilter;-><init>()V

    const/4 v2, 0x7

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v2}, Lkotlin/collections/SetsKt;->setOf(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/amazon/kindle/observablemodel/ModelFilter;->modelFilterWithOwnershipSet(Ljava/util/Set;)Lcom/amazon/kindle/observablemodel/ModelFilter;

    move-result-object v1

    .line 97
    new-instance v2, Lcom/amazon/kcp/library/CounterArguments;

    const-string/jumbo v3, "modelFilter"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v2, v0, v1}, Lcom/amazon/kcp/library/CounterArguments;-><init>(Lcom/amazon/kindle/observablemodel/ModelContent;Lcom/amazon/kindle/observablemodel/ModelFilter;)V

    check-cast p2, Lcom/amazon/kcp/library/CounterArguments;

    invoke-direct {p0, p1, v2, p2}, Lcom/amazon/kcp/library/LargeLibraryCounterProviderImpl;->applyDefaultArguments(Lcom/amazon/kindle/callback/ICallback;Lcom/amazon/kcp/library/CounterArguments;Lcom/amazon/kcp/library/CounterArguments;)Lcom/amazon/kcp/library/AbstractUserItemsCounter;

    move-result-object p1

    return-object p1
.end method

.method public personalLendingCounter(Lcom/amazon/kindle/callback/ICallback;Lcom/amazon/kcp/library/LargeLibraryDefaultArguments;)Lcom/amazon/kcp/library/AbstractUserItemsCounter;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kindle/callback/ICallback<",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/amazon/kcp/library/LargeLibraryDefaultArguments;",
            ")",
            "Lcom/amazon/kcp/library/AbstractUserItemsCounter;"
        }
    .end annotation

    .line 89
    sget-object v0, Lcom/amazon/kcp/integrator/BookDataHelper;->INSTANCE:Lcom/amazon/kcp/integrator/BookDataHelper;

    invoke-virtual {v0}, Lcom/amazon/kcp/integrator/BookDataHelper;->getCATEGORIES()Ljava/util/Set;

    move-result-object v1

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/SetsKt;->setOf(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0x8

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lcom/amazon/kcp/integrator/LargeLibraryUtilsKt;->modelContentWithArguments$default(Ljava/util/Set;Ljava/util/Set;Lcom/amazon/kindle/observablemodel/ItemID;Lcom/amazon/kindle/observablemodel/ModelContent;ILjava/lang/Object;)Lcom/amazon/kindle/observablemodel/ModelContent;

    move-result-object v0

    .line 90
    new-instance v1, Lcom/amazon/kindle/observablemodel/ModelFilter;

    invoke-direct {v1}, Lcom/amazon/kindle/observablemodel/ModelFilter;-><init>()V

    const/16 v2, 0x8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v2}, Lkotlin/collections/SetsKt;->setOf(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/amazon/kindle/observablemodel/ModelFilter;->modelFilterWithOwnershipSet(Ljava/util/Set;)Lcom/amazon/kindle/observablemodel/ModelFilter;

    move-result-object v1

    .line 91
    new-instance v2, Lcom/amazon/kcp/library/CounterArguments;

    const-string/jumbo v3, "modelFilter"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v2, v0, v1}, Lcom/amazon/kcp/library/CounterArguments;-><init>(Lcom/amazon/kindle/observablemodel/ModelContent;Lcom/amazon/kindle/observablemodel/ModelFilter;)V

    check-cast p2, Lcom/amazon/kcp/library/CounterArguments;

    invoke-direct {p0, p1, v2, p2}, Lcom/amazon/kcp/library/LargeLibraryCounterProviderImpl;->applyDefaultArguments(Lcom/amazon/kindle/callback/ICallback;Lcom/amazon/kcp/library/CounterArguments;Lcom/amazon/kcp/library/CounterArguments;)Lcom/amazon/kcp/library/AbstractUserItemsCounter;

    move-result-object p1

    return-object p1
.end method

.method public primeKUCounter(Lcom/amazon/kindle/callback/ICallback;Lcom/amazon/kcp/library/LargeLibraryDefaultArguments;)Lcom/amazon/kcp/library/AbstractUserItemsCounter;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kindle/callback/ICallback<",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/amazon/kcp/library/LargeLibraryDefaultArguments;",
            ")",
            "Lcom/amazon/kcp/library/AbstractUserItemsCounter;"
        }
    .end annotation

    .line 71
    sget-object v0, Lcom/amazon/kcp/integrator/BookDataHelper;->INSTANCE:Lcom/amazon/kcp/integrator/BookDataHelper;

    invoke-virtual {v0}, Lcom/amazon/kcp/integrator/BookDataHelper;->getCATEGORIES()Ljava/util/Set;

    move-result-object v1

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v2}, Lkotlin/collections/SetsKt;->setOf(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0x8

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lcom/amazon/kcp/integrator/LargeLibraryUtilsKt;->modelContentWithArguments$default(Ljava/util/Set;Ljava/util/Set;Lcom/amazon/kindle/observablemodel/ItemID;Lcom/amazon/kindle/observablemodel/ModelContent;ILjava/lang/Object;)Lcom/amazon/kindle/observablemodel/ModelContent;

    move-result-object v1

    .line 72
    new-instance v2, Lcom/amazon/kindle/observablemodel/ModelFilter;

    invoke-direct {v2}, Lcom/amazon/kindle/observablemodel/ModelFilter;-><init>()V

    const/4 v3, 0x2

    new-array v4, v3, [Ljava/lang/Integer;

    const/4 v5, 0x3

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v3, 0x1

    aput-object v0, v4, v3

    invoke-static {v4}, Lkotlin/collections/SetsKt;->setOf([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/amazon/kindle/observablemodel/ModelFilter;->modelFilterWithOwnershipSet(Ljava/util/Set;)Lcom/amazon/kindle/observablemodel/ModelFilter;

    move-result-object v0

    .line 73
    new-instance v2, Lcom/amazon/kcp/library/CounterArguments;

    const-string/jumbo v3, "modelFilter"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v2, v1, v0}, Lcom/amazon/kcp/library/CounterArguments;-><init>(Lcom/amazon/kindle/observablemodel/ModelContent;Lcom/amazon/kindle/observablemodel/ModelFilter;)V

    check-cast p2, Lcom/amazon/kcp/library/CounterArguments;

    invoke-direct {p0, p1, v2, p2}, Lcom/amazon/kcp/library/LargeLibraryCounterProviderImpl;->applyDefaultArguments(Lcom/amazon/kindle/callback/ICallback;Lcom/amazon/kcp/library/CounterArguments;Lcom/amazon/kcp/library/CounterArguments;)Lcom/amazon/kcp/library/AbstractUserItemsCounter;

    move-result-object p1

    return-object p1
.end method

.method public publicLibraryLendingCounter(Lcom/amazon/kindle/callback/ICallback;Lcom/amazon/kcp/library/LargeLibraryDefaultArguments;)Lcom/amazon/kcp/library/AbstractUserItemsCounter;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kindle/callback/ICallback<",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/amazon/kcp/library/LargeLibraryDefaultArguments;",
            ")",
            "Lcom/amazon/kcp/library/AbstractUserItemsCounter;"
        }
    .end annotation

    .line 83
    sget-object v0, Lcom/amazon/kcp/integrator/BookDataHelper;->INSTANCE:Lcom/amazon/kcp/integrator/BookDataHelper;

    invoke-virtual {v0}, Lcom/amazon/kcp/integrator/BookDataHelper;->getCATEGORIES()Ljava/util/Set;

    move-result-object v1

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/SetsKt;->setOf(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0x8

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lcom/amazon/kcp/integrator/LargeLibraryUtilsKt;->modelContentWithArguments$default(Ljava/util/Set;Ljava/util/Set;Lcom/amazon/kindle/observablemodel/ItemID;Lcom/amazon/kindle/observablemodel/ModelContent;ILjava/lang/Object;)Lcom/amazon/kindle/observablemodel/ModelContent;

    move-result-object v0

    .line 84
    new-instance v1, Lcom/amazon/kindle/observablemodel/ModelFilter;

    invoke-direct {v1}, Lcom/amazon/kindle/observablemodel/ModelFilter;-><init>()V

    const/4 v2, 0x4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v2}, Lkotlin/collections/SetsKt;->setOf(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/amazon/kindle/observablemodel/ModelFilter;->modelFilterWithOwnershipSet(Ljava/util/Set;)Lcom/amazon/kindle/observablemodel/ModelFilter;

    move-result-object v1

    .line 85
    new-instance v2, Lcom/amazon/kcp/library/CounterArguments;

    const-string/jumbo v3, "modelFilter"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v2, v0, v1}, Lcom/amazon/kcp/library/CounterArguments;-><init>(Lcom/amazon/kindle/observablemodel/ModelContent;Lcom/amazon/kindle/observablemodel/ModelFilter;)V

    check-cast p2, Lcom/amazon/kcp/library/CounterArguments;

    invoke-direct {p0, p1, v2, p2}, Lcom/amazon/kcp/library/LargeLibraryCounterProviderImpl;->applyDefaultArguments(Lcom/amazon/kindle/callback/ICallback;Lcom/amazon/kcp/library/CounterArguments;Lcom/amazon/kcp/library/CounterArguments;)Lcom/amazon/kcp/library/AbstractUserItemsCounter;

    move-result-object p1

    return-object p1
.end method

.method public rentalCounter(Lcom/amazon/kindle/callback/ICallback;Lcom/amazon/kcp/library/LargeLibraryDefaultArguments;)Lcom/amazon/kcp/library/AbstractUserItemsCounter;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kindle/callback/ICallback<",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/amazon/kcp/library/LargeLibraryDefaultArguments;",
            ")",
            "Lcom/amazon/kcp/library/AbstractUserItemsCounter;"
        }
    .end annotation

    .line 101
    sget-object v0, Lcom/amazon/kcp/integrator/BookDataHelper;->INSTANCE:Lcom/amazon/kcp/integrator/BookDataHelper;

    invoke-virtual {v0}, Lcom/amazon/kcp/integrator/BookDataHelper;->getCATEGORIES()Ljava/util/Set;

    move-result-object v1

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/SetsKt;->setOf(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0x8

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lcom/amazon/kcp/integrator/LargeLibraryUtilsKt;->modelContentWithArguments$default(Ljava/util/Set;Ljava/util/Set;Lcom/amazon/kindle/observablemodel/ItemID;Lcom/amazon/kindle/observablemodel/ModelContent;ILjava/lang/Object;)Lcom/amazon/kindle/observablemodel/ModelContent;

    move-result-object v0

    .line 102
    new-instance v1, Lcom/amazon/kindle/observablemodel/ModelFilter;

    invoke-direct {v1}, Lcom/amazon/kindle/observablemodel/ModelFilter;-><init>()V

    const/4 v2, 0x6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v2}, Lkotlin/collections/SetsKt;->setOf(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/amazon/kindle/observablemodel/ModelFilter;->modelFilterWithOwnershipSet(Ljava/util/Set;)Lcom/amazon/kindle/observablemodel/ModelFilter;

    move-result-object v1

    .line 103
    new-instance v2, Lcom/amazon/kcp/library/CounterArguments;

    const-string/jumbo v3, "modelFilter"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v2, v0, v1}, Lcom/amazon/kcp/library/CounterArguments;-><init>(Lcom/amazon/kindle/observablemodel/ModelContent;Lcom/amazon/kindle/observablemodel/ModelFilter;)V

    check-cast p2, Lcom/amazon/kcp/library/CounterArguments;

    invoke-direct {p0, p1, v2, p2}, Lcom/amazon/kcp/library/LargeLibraryCounterProviderImpl;->applyDefaultArguments(Lcom/amazon/kindle/callback/ICallback;Lcom/amazon/kcp/library/CounterArguments;Lcom/amazon/kcp/library/CounterArguments;)Lcom/amazon/kcp/library/AbstractUserItemsCounter;

    move-result-object p1

    return-object p1
.end method

.method public samplesCounter(Lcom/amazon/kindle/callback/ICallback;Lcom/amazon/kcp/library/LargeLibraryDefaultArguments;)Lcom/amazon/kcp/library/AbstractUserItemsCounter;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kindle/callback/ICallback<",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/amazon/kcp/library/LargeLibraryDefaultArguments;",
            ")",
            "Lcom/amazon/kcp/library/AbstractUserItemsCounter;"
        }
    .end annotation

    .line 107
    sget-object v0, Lcom/amazon/kcp/integrator/BookDataHelper;->INSTANCE:Lcom/amazon/kcp/integrator/BookDataHelper;

    invoke-virtual {v0}, Lcom/amazon/kcp/integrator/BookDataHelper;->getCATEGORIES()Ljava/util/Set;

    move-result-object v1

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/SetsKt;->setOf(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0x8

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lcom/amazon/kcp/integrator/LargeLibraryUtilsKt;->modelContentWithArguments$default(Ljava/util/Set;Ljava/util/Set;Lcom/amazon/kindle/observablemodel/ItemID;Lcom/amazon/kindle/observablemodel/ModelContent;ILjava/lang/Object;)Lcom/amazon/kindle/observablemodel/ModelContent;

    move-result-object v0

    .line 108
    new-instance v1, Lcom/amazon/kindle/observablemodel/ModelFilter;

    invoke-direct {v1}, Lcom/amazon/kindle/observablemodel/ModelFilter;-><init>()V

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v2}, Lkotlin/collections/SetsKt;->setOf(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/amazon/kindle/observablemodel/ModelFilter;->modelFilterWithSampleMembershipSet(Ljava/util/Set;)Lcom/amazon/kindle/observablemodel/ModelFilter;

    move-result-object v1

    .line 109
    new-instance v2, Lcom/amazon/kcp/library/CounterArguments;

    const-string/jumbo v3, "modelFilter"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v2, v0, v1}, Lcom/amazon/kcp/library/CounterArguments;-><init>(Lcom/amazon/kindle/observablemodel/ModelContent;Lcom/amazon/kindle/observablemodel/ModelFilter;)V

    check-cast p2, Lcom/amazon/kcp/library/CounterArguments;

    invoke-direct {p0, p1, v2, p2}, Lcom/amazon/kcp/library/LargeLibraryCounterProviderImpl;->applyDefaultArguments(Lcom/amazon/kindle/callback/ICallback;Lcom/amazon/kcp/library/CounterArguments;Lcom/amazon/kcp/library/CounterArguments;)Lcom/amazon/kcp/library/AbstractUserItemsCounter;

    move-result-object p1

    return-object p1
.end method

.method public seriesDetailDefaultArguments(Ljava/lang/String;)Lcom/amazon/kcp/library/CounterArguments;
    .locals 6

    const-string/jumbo v0, "seriesId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 131
    invoke-static {}, Lcom/amazon/kcp/debug/LargeLibraryDebugUtils;->isNarrativesEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 132
    invoke-static {p1}, Lcom/amazon/kindle/observablemodel/ItemID;->narrativeItemWithIdentifier(Ljava/lang/String;)Lcom/amazon/kindle/observablemodel/ItemID;

    move-result-object p1

    goto :goto_0

    .line 133
    :cond_0
    invoke-static {p1}, Lcom/amazon/kindle/observablemodel/ItemID;->seriesItemWithIdentifier(Ljava/lang/String;)Lcom/amazon/kindle/observablemodel/ItemID;

    move-result-object p1

    :goto_0
    move-object v2, p1

    .line 134
    new-instance p1, Lcom/amazon/kcp/library/CounterArguments;

    sget-object v0, Lcom/amazon/kcp/integrator/BookDataHelper;->INSTANCE:Lcom/amazon/kcp/integrator/BookDataHelper;

    invoke-virtual {v0}, Lcom/amazon/kcp/integrator/BookDataHelper;->getCATEGORIES()Ljava/util/Set;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Lkotlin/collections/SetsKt;->setOf(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v1

    const/4 v3, 0x0

    const/16 v4, 0x8

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lcom/amazon/kcp/integrator/LargeLibraryUtilsKt;->modelContentWithArguments$default(Ljava/util/Set;Ljava/util/Set;Lcom/amazon/kindle/observablemodel/ItemID;Lcom/amazon/kindle/observablemodel/ModelContent;ILjava/lang/Object;)Lcom/amazon/kindle/observablemodel/ModelContent;

    move-result-object v0

    new-instance v1, Lcom/amazon/kindle/observablemodel/ModelFilter;

    invoke-direct {v1}, Lcom/amazon/kindle/observablemodel/ModelFilter;-><init>()V

    invoke-direct {p1, v0, v1}, Lcom/amazon/kcp/library/CounterArguments;-><init>(Lcom/amazon/kindle/observablemodel/ModelContent;Lcom/amazon/kindle/observablemodel/ModelFilter;)V

    return-object p1
.end method

.method public bridge synthetic seriesDetailDefaultArguments(Ljava/lang/String;)Lcom/amazon/kcp/library/LargeLibraryDefaultArguments;
    .locals 0

    .line 14
    invoke-virtual {p0, p1}, Lcom/amazon/kcp/library/LargeLibraryCounterProviderImpl;->seriesDetailDefaultArguments(Ljava/lang/String;)Lcom/amazon/kcp/library/CounterArguments;

    move-result-object p1

    return-object p1
.end method
