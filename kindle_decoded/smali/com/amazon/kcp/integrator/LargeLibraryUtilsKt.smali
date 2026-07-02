.class public final Lcom/amazon/kcp/integrator/LargeLibraryUtilsKt;
.super Ljava/lang/Object;
.source "LargeLibraryUtils.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nLargeLibraryUtils.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LargeLibraryUtils.kt\ncom/amazon/kcp/integrator/LargeLibraryUtilsKt\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,296:1\n1517#2:297\n1588#2,3:298\n*E\n*S KotlinDebug\n*F\n+ 1 LargeLibraryUtils.kt\ncom/amazon/kcp/integrator/LargeLibraryUtilsKt\n*L\n157#1:297\n157#1,3:298\n*E\n"
.end annotation


# direct methods
.method public static final adapterHelperForSortAndFilter(Lcom/amazon/kcp/library/fragments/ILibraryFragmentHandler;Lcom/amazon/kcp/library/ILibraryFilter;Ljava/util/Set;Lcom/amazon/kcp/library/LibrarySortType;Lcom/amazon/kindle/krx/library/LibraryGroupType;Ljava/util/Set;Lcom/amazon/kindle/observablemodel/ItemID;Ljava/lang/String;)Lcom/amazon/kcp/library/fragments/LargeLibraryRecyclerAdapterHelper;
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kcp/library/fragments/ILibraryFragmentHandler;",
            "Lcom/amazon/kcp/library/ILibraryFilter;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/amazon/kcp/library/LibrarySortType;",
            "Lcom/amazon/kindle/krx/library/LibraryGroupType;",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/amazon/kindle/observablemodel/ItemID;",
            "Ljava/lang/String;",
            ")",
            "Lcom/amazon/kcp/library/fragments/LargeLibraryRecyclerAdapterHelper;"
        }
    .end annotation

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    move-object/from16 v3, p7

    const-string v4, "libraryFilter"

    move-object/from16 v9, p1

    invoke-static {v9, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v4, "selectedFilterIds"

    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v4, "sortType"

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "groupType"

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "grouping"

    move-object/from16 v5, p5

    invoke-static {v5, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "currentUserId"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 104
    invoke-static/range {p2 .. p2}, Lcom/amazon/kcp/integrator/LargeLibraryUtilsKt;->buildOwnershipSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v11

    .line 105
    invoke-static/range {p2 .. p2}, Lcom/amazon/kcp/integrator/LargeLibraryUtilsKt;->buildProgressSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v10

    .line 106
    invoke-static/range {p2 .. p2}, Lcom/amazon/kcp/integrator/LargeLibraryUtilsKt;->buildAudibleSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v13

    .line 107
    invoke-static {v0, v11}, Lcom/amazon/kcp/integrator/LargeLibraryUtilsKt;->buildSampleSet(Ljava/util/Set;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v14

    .line 108
    invoke-static {v0, v14}, Lcom/amazon/kcp/integrator/LargeLibraryUtilsKt;->buildCategorySet(Ljava/util/Set;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v4

    .line 109
    invoke-static {v0, v2}, Lcom/amazon/kcp/integrator/LargeLibraryUtilsKt;->buildLocationSet(Ljava/util/Set;Lcom/amazon/kindle/krx/library/LibraryGroupType;)Ljava/util/Set;

    move-result-object v12

    .line 110
    invoke-static {v0, v3}, Lcom/amazon/kcp/integrator/LargeLibraryUtilsKt;->buildAccountTypeSet(Ljava/util/Set;Ljava/lang/String;)Ljava/util/Set;

    move-result-object v15

    .line 112
    invoke-static {}, Lkotlin/collections/SetsKt;->emptySet()Ljava/util/Set;

    move-result-object v16

    if-eqz p0, :cond_0

    .line 114
    invoke-interface/range {p0 .. p0}, Lcom/amazon/kcp/library/fragments/ILibraryFragmentHandler;->getLibraryContext()Lcom/amazon/kcp/library/LibraryContext;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/amazon/kcp/library/LibraryContext;->getInlineFilterGroupName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    const/16 v17, 0x0

    const/16 v18, 0x80

    const/16 v19, 0x0

    .line 116
    invoke-static/range {v10 .. v19}, Lcom/amazon/kcp/integrator/LargeLibraryUtilsKt;->modelFilterWithArguments$default(Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Lcom/amazon/kindle/observablemodel/ModelFilter;ILjava/lang/Object;)Lcom/amazon/kindle/observablemodel/ModelFilter;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/amazon/kindle/observablemodel/ModelFilter;->modelFilterWithInlineFilterLeafName(Ljava/lang/String;)Lcom/amazon/kindle/observablemodel/ModelFilter;

    move-result-object v0

    .line 117
    new-instance v2, Lcom/amazon/kcp/library/fragments/LargeLibraryRecyclerAdapterHelper;

    .line 118
    invoke-static {}, Lcom/amazon/kcp/integrator/LargeLibraryUtilsKt;->largeLibraryRepository()Lcom/amazon/kcp/integrator/LargeLibraryRepositoryImpl;

    move-result-object v6

    .line 119
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v3

    const-string v7, "Utils.getFactory()"

    invoke-static {v3, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v3}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getAuthenticationManager()Lcom/amazon/kcp/application/IAuthenticationManager;

    move-result-object v3

    const-string v7, "Utils.getFactory().authenticationManager"

    invoke-static {v3, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v3}, Lcom/amazon/kcp/application/IAuthenticationManager;->getAccountInfo()Lcom/amazon/kindle/services/authentication/IAccountInfo;

    move-result-object v3

    const-string v7, "Utils.getFactory().authe\u2026cationManager.accountInfo"

    invoke-static {v3, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v3}, Lcom/amazon/kindle/services/authentication/IAccountInfo;->getId()Ljava/lang/String;

    move-result-object v7

    const-string v3, "Utils.getFactory().authe\u2026ionManager.accountInfo.id"

    invoke-static {v7, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v13, 0x0

    const/16 v14, 0x8

    const/4 v15, 0x0

    move-object v10, v4

    move-object/from16 v11, p5

    move-object/from16 v12, p6

    .line 122
    invoke-static/range {v10 .. v15}, Lcom/amazon/kcp/integrator/LargeLibraryUtilsKt;->modelContentWithArguments$default(Ljava/util/Set;Ljava/util/Set;Lcom/amazon/kindle/observablemodel/ItemID;Lcom/amazon/kindle/observablemodel/ModelContent;ILjava/lang/Object;)Lcom/amazon/kindle/observablemodel/ModelContent;

    move-result-object v10

    const-string/jumbo v3, "modelFilter"

    .line 123
    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v3, p6

    .line 124
    invoke-static {v1, v3}, Lcom/amazon/kcp/integrator/LargeLibraryUtilsKt;->modelSortingForSortType(Lcom/amazon/kcp/library/LibrarySortType;Lcom/amazon/kindle/observablemodel/ItemID;)Lcom/amazon/kindle/observablemodel/ModelSorting;

    move-result-object v12

    move-object v5, v2

    move-object/from16 v8, p0

    move-object/from16 v9, p1

    move-object v11, v0

    .line 117
    invoke-direct/range {v5 .. v12}, Lcom/amazon/kcp/library/fragments/LargeLibraryRecyclerAdapterHelper;-><init>(Lcom/amazon/kcp/integrator/LargeLibraryRepositoryImpl;Ljava/lang/String;Lcom/amazon/kcp/library/fragments/ILibraryFragmentHandler;Lcom/amazon/kcp/library/ILibraryFilter;Lcom/amazon/kindle/observablemodel/ModelContent;Lcom/amazon/kindle/observablemodel/ModelFilter;Lcom/amazon/kindle/observablemodel/ModelSorting;)V

    return-object v2
.end method

.method public static final bookIdToItemId(Lcom/amazon/kindle/model/content/IBookID;)Lcom/amazon/kindle/observablemodel/ItemID;
    .locals 2

    const-string v0, "bookId"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    invoke-interface {p0}, Lcom/amazon/kindle/model/content/IBookID;->getType()Lcom/amazon/kcp/library/models/BookType;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/amazon/kcp/integrator/LargeLibraryUtilsKt$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    .line 37
    :goto_0
    invoke-interface {p0}, Lcom/amazon/kindle/model/content/IBookID;->getSerializedForm()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/amazon/kindle/observablemodel/ItemID;->bookItemWithIdentifier(Ljava/lang/String;)Lcom/amazon/kindle/observablemodel/ItemID;

    move-result-object p0

    const-string v0, "ItemID.bookItemWithIdent\u2026er(bookId.serializedForm)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1

    .line 36
    :cond_1
    sget-object v0, Lcom/amazon/kcp/integrator/NarrativeHelper;->INSTANCE:Lcom/amazon/kcp/integrator/NarrativeHelper;

    invoke-interface {p0}, Lcom/amazon/kindle/model/content/IBookID;->getSerializedForm()Ljava/lang/String;

    move-result-object p0

    const-string v1, "bookId.serializedForm"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Lcom/amazon/kcp/integrator/NarrativeHelper;->narrativeItemWithASINIdentifier(Ljava/lang/String;)Lcom/amazon/kindle/observablemodel/ItemID;

    move-result-object p0

    goto :goto_1

    .line 35
    :cond_2
    invoke-interface {p0}, Lcom/amazon/kindle/model/content/IBookID;->getSerializedForm()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/amazon/kindle/observablemodel/ItemID;->periodicalItemWithIdentifier(Ljava/lang/String;)Lcom/amazon/kindle/observablemodel/ItemID;

    move-result-object p0

    const-string v0, "ItemID.periodicalItemWit\u2026er(bookId.serializedForm)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1

    .line 34
    :cond_3
    invoke-interface {p0}, Lcom/amazon/kindle/model/content/IBookID;->getSerializedForm()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/amazon/kindle/observablemodel/ItemID;->seriesItemWithIdentifier(Ljava/lang/String;)Lcom/amazon/kindle/observablemodel/ItemID;

    move-result-object p0

    const-string v0, "ItemID.seriesItemWithIde\u2026er(bookId.serializedForm)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_1
    return-object p0
.end method

.method public static final buildAccountTypeSet(Ljava/util/Set;Ljava/lang/String;)Ljava/util/Set;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    const-string/jumbo v0, "selectedFilterIds"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "currentUserId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 152
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    .line 154
    invoke-interface {p0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    const/4 v1, 0x1

    if-eqz p1, :cond_0

    .line 155
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 157
    :cond_0
    invoke-static {}, Lcom/amazon/kcp/util/SharedLibraryFilterUtils;->getSharedFilterItems()Ljava/util/List;

    move-result-object p1

    .line 297
    new-instance v2, Ljava/util/ArrayList;

    const/16 v3, 0xa

    invoke-static {p1, v3}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 298
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 299
    check-cast v3, Lcom/amazon/kcp/library/LibraryFilterItem;

    .line 157
    invoke-virtual {v3}, Lcom/amazon/kcp/library/LibraryFilterItem;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-static {v2, p0}, Lkotlin/collections/CollectionsKt;->intersect(Ljava/lang/Iterable;Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result p0

    xor-int/2addr p0, v1

    if-eqz p0, :cond_2

    const/4 p0, 0x2

    .line 158
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_2
    return-object v0
.end method

.method public static final buildAudibleSet(Ljava/util/Set;)Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    const-string/jumbo v0, "selectedFilterIds"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 180
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    const-string v1, "Audible"

    .line 181
    invoke-interface {p0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x2

    .line 182
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_0
    return-object v0
.end method

.method public static final buildCategorySet(Ljava/util/Set;Ljava/util/Set;)Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    const-string/jumbo v0, "selectedFilterIds"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "sampleSet"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 196
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    const/4 v1, 0x2

    .line 197
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 198
    sget-object p0, Lcom/amazon/kcp/integrator/BookDataHelper;->INSTANCE:Lcom/amazon/kcp/integrator/BookDataHelper;

    invoke-virtual {p0}, Lcom/amazon/kcp/integrator/BookDataHelper;->getCATEGORIES()Ljava/util/Set;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_0

    :cond_0
    const-string v1, "Books"

    .line 200
    invoke-interface {p0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x6

    .line 201
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x3

    .line 202
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_1
    const-string v1, "Docs"

    .line 204
    invoke-interface {p0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/16 v1, 0x8

    .line 205
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x7

    .line 206
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x4

    .line 207
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_2
    const-string v1, "Periodicals"

    .line 209
    invoke-interface {p0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v1, 0x9

    .line 210
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const/16 v1, 0xa

    .line 211
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_3
    const-string v1, "Falkor"

    .line 213
    invoke-interface {p0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_4

    const/16 p0, 0xe

    .line 214
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 217
    :cond_4
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_5

    .line 218
    sget-object p0, Lcom/amazon/kcp/integrator/BookDataHelper;->INSTANCE:Lcom/amazon/kcp/integrator/BookDataHelper;

    invoke-virtual {p0}, Lcom/amazon/kcp/integrator/BookDataHelper;->getCATEGORIES()Ljava/util/Set;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    :cond_5
    const/4 p0, 0x1

    .line 220
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {p1, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :goto_0
    return-object v0
.end method

.method public static final buildLocationSet(Ljava/util/Set;Lcom/amazon/kindle/krx/library/LibraryGroupType;)Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/amazon/kindle/krx/library/LibraryGroupType;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    const-string/jumbo v0, "selectedFilterIds"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "Downloaded"

    .line 227
    invoke-interface {p0, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    sget-object p0, Lcom/amazon/kindle/krx/library/LibraryGroupType;->DEVICE:Lcom/amazon/kindle/krx/library/LibraryGroupType;

    if-ne p1, p0, :cond_0

    goto :goto_0

    .line 229
    :cond_0
    new-instance p0, Ljava/util/LinkedHashSet;

    invoke-direct {p0}, Ljava/util/LinkedHashSet;-><init>()V

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    new-array p1, p0, [Ljava/lang/Integer;

    const/4 v0, 0x0

    .line 228
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, p1, v0

    invoke-static {p1}, Lkotlin/collections/SetsKt;->mutableSetOf([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p0

    :goto_1
    return-object p0
.end method

.method public static final buildOwnershipSet(Ljava/util/Set;)Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    const-string/jumbo v0, "selectedFilterIds"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 128
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    const-string v1, "PrimeAndKU"

    .line 129
    invoke-interface {p0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x2

    .line 130
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x3

    .line 131
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_0
    const-string v1, "ComicsUnlimited"

    .line 133
    invoke-interface {p0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v1, 0x9

    .line 134
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_1
    const-string v1, "PublicLibraryLending"

    .line 136
    invoke-interface {p0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x4

    .line 137
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_2
    const-string v1, "PersonalLending"

    .line 139
    invoke-interface {p0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v1, 0x8

    .line 140
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_3
    const-string v1, "KindleOwnersLendingLibrary"

    .line 142
    invoke-interface {p0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 v1, 0x7

    .line 143
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_4
    const-string v1, "Rental"

    .line 145
    invoke-interface {p0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_5

    const/4 p0, 0x6

    .line 146
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_5
    return-object v0
.end method

.method public static final buildProgressSet(Ljava/util/Set;)Ljava/util/Set;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    const-string/jumbo v0, "selectedFilterIds"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 165
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    const-string v1, "Read"

    .line 166
    invoke-interface {p0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p0, 0x3

    .line 167
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    const-string v1, "Unread"

    .line 168
    invoke-interface {p0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x2

    if-eqz v1, :cond_1

    const/4 p0, 0x1

    .line 169
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 170
    invoke-static {}, Lcom/amazon/kcp/debug/InProgressFilterDebugUtils;->isInProgressFilterEnabled()Z

    move-result p0

    if-nez p0, :cond_2

    .line 171
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    const-string v1, "InProgress"

    .line 173
    invoke-interface {p0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    .line 174
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_2
    :goto_0
    return-object v0
.end method

.method public static final buildSampleSet(Ljava/util/Set;Ljava/util/Set;)Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    const-string/jumbo v0, "selectedFilterIds"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "ownerships"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 188
    new-instance p1, Ljava/util/LinkedHashSet;

    invoke-direct {p1}, Ljava/util/LinkedHashSet;-><init>()V

    const-string v0, "Samples"

    .line 189
    invoke-interface {p0, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x2

    .line 190
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {p1, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_0
    return-object p1
.end method

.method public static final itemIdToBookId(Lcom/amazon/kindle/observablemodel/ItemID;)Lcom/amazon/kindle/model/content/IBookID;
    .locals 1

    const-string v0, "itemId"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    invoke-virtual {p0}, Lcom/amazon/kindle/observablemodel/ItemID;->getIdentifier()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/amazon/kindle/util/BookIdUtils;->parse(Ljava/lang/String;)Lcom/amazon/kindle/model/content/IBookID;

    move-result-object p0

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object p0
.end method

.method public static final largeLibraryRepository()Lcom/amazon/kcp/integrator/LargeLibraryRepositoryImpl;
    .locals 2

    .line 25
    const-class v0, Lcom/amazon/kcp/integrator/LargeLibraryRepository;

    invoke-static {v0}, Lcom/amazon/discovery/UniqueDiscovery;->of(Ljava/lang/Class;)Lcom/amazon/discovery/UniqueDiscovery;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/discovery/UniqueDiscovery;->value()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    check-cast v0, Lcom/amazon/kcp/integrator/LargeLibraryRepositoryImpl;

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "null cannot be cast to non-null type com.amazon.kcp.integrator.LargeLibraryRepositoryImpl"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static final modelContentWithArguments(Ljava/util/Set;Ljava/util/Set;Lcom/amazon/kindle/observablemodel/ItemID;Lcom/amazon/kindle/observablemodel/ModelContent;)Lcom/amazon/kindle/observablemodel/ModelContent;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/amazon/kindle/observablemodel/ItemID;",
            "Lcom/amazon/kindle/observablemodel/ModelContent;",
            ")",
            "Lcom/amazon/kindle/observablemodel/ModelContent;"
        }
    .end annotation

    const-string v0, "categories"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "grouping"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "modelContent"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 64
    invoke-virtual {p3, p0}, Lcom/amazon/kindle/observablemodel/ModelContent;->modelContentWithCategorySet(Ljava/util/Set;)Lcom/amazon/kindle/observablemodel/ModelContent;

    move-result-object p0

    .line 65
    invoke-virtual {p0, p1}, Lcom/amazon/kindle/observablemodel/ModelContent;->modelContentWithGroupingSet(Ljava/util/Set;)Lcom/amazon/kindle/observablemodel/ModelContent;

    move-result-object p0

    .line 66
    invoke-virtual {p0, p2}, Lcom/amazon/kindle/observablemodel/ModelContent;->modelContentWithParentGroup(Lcom/amazon/kindle/observablemodel/ItemID;)Lcom/amazon/kindle/observablemodel/ModelContent;

    move-result-object p0

    const-string/jumbo p1, "modelContent\n           \u2026ntWithParentGroup(parent)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public static synthetic modelContentWithArguments$default(Ljava/util/Set;Ljava/util/Set;Lcom/amazon/kindle/observablemodel/ItemID;Lcom/amazon/kindle/observablemodel/ModelContent;ILjava/lang/Object;)Lcom/amazon/kindle/observablemodel/ModelContent;
    .locals 0

    and-int/lit8 p4, p4, 0x8

    if-eqz p4, :cond_0

    .line 62
    new-instance p3, Lcom/amazon/kindle/observablemodel/ModelContent;

    invoke-direct {p3}, Lcom/amazon/kindle/observablemodel/ModelContent;-><init>()V

    :cond_0
    invoke-static {p0, p1, p2, p3}, Lcom/amazon/kcp/integrator/LargeLibraryUtilsKt;->modelContentWithArguments(Ljava/util/Set;Ljava/util/Set;Lcom/amazon/kindle/observablemodel/ItemID;Lcom/amazon/kindle/observablemodel/ModelContent;)Lcom/amazon/kindle/observablemodel/ModelContent;

    move-result-object p0

    return-object p0
.end method

.method public static final modelFilterWithArguments(Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Lcom/amazon/kindle/observablemodel/ModelFilter;)Lcom/amazon/kindle/observablemodel/ModelFilter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/amazon/kindle/observablemodel/ModelFilter;",
            ")",
            "Lcom/amazon/kindle/observablemodel/ModelFilter;"
        }
    .end annotation

    const-string/jumbo v0, "progress"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "ownerships"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "locations"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "audibleCompanions"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "sampleMembership"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "accountType"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "carousel"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "modelFilter"

    invoke-static {p7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50
    invoke-virtual {p7, p0}, Lcom/amazon/kindle/observablemodel/ModelFilter;->modelFilterWithReadingProgressSet(Ljava/util/Set;)Lcom/amazon/kindle/observablemodel/ModelFilter;

    move-result-object p0

    .line 51
    invoke-virtual {p0, p1}, Lcom/amazon/kindle/observablemodel/ModelFilter;->modelFilterWithOwnershipSet(Ljava/util/Set;)Lcom/amazon/kindle/observablemodel/ModelFilter;

    move-result-object p0

    .line 52
    invoke-virtual {p0, p2}, Lcom/amazon/kindle/observablemodel/ModelFilter;->modelFilterWithLocationSet(Ljava/util/Set;)Lcom/amazon/kindle/observablemodel/ModelFilter;

    move-result-object p0

    .line 53
    invoke-virtual {p0, p3}, Lcom/amazon/kindle/observablemodel/ModelFilter;->modelFilterWithAudibleCompanionSet(Ljava/util/Set;)Lcom/amazon/kindle/observablemodel/ModelFilter;

    move-result-object p0

    .line 54
    invoke-virtual {p0, p4}, Lcom/amazon/kindle/observablemodel/ModelFilter;->modelFilterWithSampleMembershipSet(Ljava/util/Set;)Lcom/amazon/kindle/observablemodel/ModelFilter;

    move-result-object p0

    .line 55
    invoke-virtual {p0, p5}, Lcom/amazon/kindle/observablemodel/ModelFilter;->modelFilterWithAccountType(Ljava/util/Set;)Lcom/amazon/kindle/observablemodel/ModelFilter;

    move-result-object p0

    .line 56
    invoke-virtual {p0, p6}, Lcom/amazon/kindle/observablemodel/ModelFilter;->modelFilterWithCarousel(Ljava/util/Set;)Lcom/amazon/kindle/observablemodel/ModelFilter;

    move-result-object p0

    const-string/jumbo p1, "modelFilter\n            \u2026terWithCarousel(carousel)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public static synthetic modelFilterWithArguments$default(Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Lcom/amazon/kindle/observablemodel/ModelFilter;ILjava/lang/Object;)Lcom/amazon/kindle/observablemodel/ModelFilter;
    .locals 9

    move/from16 v0, p8

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_0

    .line 48
    new-instance v0, Lcom/amazon/kindle/observablemodel/ModelFilter;

    invoke-direct {v0}, Lcom/amazon/kindle/observablemodel/ModelFilter;-><init>()V

    move-object v8, v0

    goto :goto_0

    :cond_0
    move-object/from16 v8, p7

    :goto_0
    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-static/range {v1 .. v8}, Lcom/amazon/kcp/integrator/LargeLibraryUtilsKt;->modelFilterWithArguments(Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Lcom/amazon/kindle/observablemodel/ModelFilter;)Lcom/amazon/kindle/observablemodel/ModelFilter;

    move-result-object v0

    return-object v0
.end method

.method public static final modelSortingForSortType(Lcom/amazon/kcp/library/LibrarySortType;Lcom/amazon/kindle/observablemodel/ItemID;)Lcom/amazon/kindle/observablemodel/ModelSorting;
    .locals 11

    const-string/jumbo v0, "sortType"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 233
    sget-object v0, Lcom/amazon/kcp/integrator/LargeLibraryUtilsKt$WhenMappings;->$EnumSwitchMapping$1:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x0

    const/16 v2, 0x20

    const/16 v3, 0x10

    const/4 v4, 0x1

    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x0

    goto :goto_0

    :pswitch_0
    const/16 v0, 0x22

    goto :goto_0

    :pswitch_1
    const/16 v0, 0x20

    goto :goto_0

    :pswitch_2
    const/4 v0, 0x1

    goto :goto_0

    :pswitch_3
    const/16 v0, 0x11

    goto :goto_0

    :pswitch_4
    const/16 v0, 0x10

    :goto_0
    const/4 v5, 0x5

    new-array v6, v5, [Lcom/amazon/kcp/library/LibrarySortType;

    .line 247
    sget-object v7, Lcom/amazon/kcp/library/LibrarySortType;->SORT_TYPE_AUTHOR_REVERSE:Lcom/amazon/kcp/library/LibrarySortType;

    aput-object v7, v6, v1

    .line 248
    sget-object v1, Lcom/amazon/kcp/library/LibrarySortType;->SORT_TYPE_PUBLICATION_DATE_SERIES_REVERSE:Lcom/amazon/kcp/library/LibrarySortType;

    aput-object v1, v6, v4

    .line 249
    sget-object v1, Lcom/amazon/kcp/library/LibrarySortType;->SORT_TYPE_SERIES_ORDER_REVERSE:Lcom/amazon/kcp/library/LibrarySortType;

    const/4 v7, 0x2

    aput-object v1, v6, v7

    .line 250
    sget-object v1, Lcom/amazon/kcp/library/LibrarySortType;->SORT_TYPE_RECENT:Lcom/amazon/kcp/library/LibrarySortType;

    const/4 v8, 0x3

    aput-object v1, v6, v8

    const/4 v1, 0x4

    .line 251
    sget-object v9, Lcom/amazon/kcp/library/LibrarySortType;->SORT_TYPE_PUBLICATION_DATE:Lcom/amazon/kcp/library/LibrarySortType;

    aput-object v9, v6, v1

    .line 246
    invoke-static {v6}, Lkotlin/collections/SetsKt;->setOf([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    .line 257
    new-instance v6, Lcom/amazon/kindle/observablemodel/ModelSorting;

    invoke-direct {v6}, Lcom/amazon/kindle/observablemodel/ModelSorting;-><init>()V

    const-string/jumbo v9, "result.modelSortingByAdd\u2026ngByEnablingSection(true)"

    if-eqz p1, :cond_0

    .line 259
    invoke-virtual {p1}, Lcom/amazon/kindle/observablemodel/ItemID;->getType()I

    move-result p1

    if-ne p1, v5, :cond_0

    .line 261
    new-instance p1, Lcom/amazon/kindle/observablemodel/ModelSortingPair;

    const/16 v5, 0x23

    .line 262
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 263
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    .line 261
    invoke-direct {p1, v5, v10}, Lcom/amazon/kindle/observablemodel/ModelSortingPair;-><init>(Ljava/lang/Integer;Ljava/lang/Integer;)V

    .line 260
    invoke-virtual {v6, p1}, Lcom/amazon/kindle/observablemodel/ModelSorting;->modelSortingByAddingOrder(Lcom/amazon/kindle/observablemodel/ModelSortingPair;)Lcom/amazon/kindle/observablemodel/ModelSorting;

    move-result-object p1

    .line 266
    invoke-virtual {p1, v4}, Lcom/amazon/kindle/observablemodel/ModelSorting;->modelSortingByEnablingSection(Z)Lcom/amazon/kindle/observablemodel/ModelSorting;

    move-result-object v6

    invoke-static {v6, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 269
    :cond_0
    sget-object p1, Lcom/amazon/kcp/integrator/LargeLibraryUtilsKt$WhenMappings;->$EnumSwitchMapping$2:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, p1, p0

    if-eq p0, v4, :cond_2

    if-eq p0, v7, :cond_1

    if-eq p0, v8, :cond_1

    .line 287
    new-instance p0, Lcom/amazon/kindle/observablemodel/ModelSortingPair;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/amazon/kindle/observablemodel/ModelSortingPair;-><init>(Ljava/lang/Integer;Ljava/lang/Integer;)V

    invoke-virtual {v6, p0}, Lcom/amazon/kindle/observablemodel/ModelSorting;->modelSortingByAddingOrder(Lcom/amazon/kindle/observablemodel/ModelSortingPair;)Lcom/amazon/kindle/observablemodel/ModelSorting;

    move-result-object p0

    .line 288
    invoke-virtual {p0, v4}, Lcom/amazon/kindle/observablemodel/ModelSorting;->modelSortingByEnablingSection(Z)Lcom/amazon/kindle/observablemodel/ModelSorting;

    move-result-object p0

    invoke-static {p0, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1

    .line 278
    :cond_1
    new-instance p0, Lcom/amazon/kindle/observablemodel/ModelSortingPair;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/amazon/kindle/observablemodel/ModelSortingPair;-><init>(Ljava/lang/Integer;Ljava/lang/Integer;)V

    invoke-virtual {v6, p0}, Lcom/amazon/kindle/observablemodel/ModelSorting;->modelSortingByAddingOrder(Lcom/amazon/kindle/observablemodel/ModelSortingPair;)Lcom/amazon/kindle/observablemodel/ModelSorting;

    move-result-object p0

    .line 280
    new-instance p1, Lcom/amazon/kindle/observablemodel/ModelSortingPair;

    .line 281
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 282
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 280
    invoke-direct {p1, v0, v1}, Lcom/amazon/kindle/observablemodel/ModelSortingPair;-><init>(Ljava/lang/Integer;Ljava/lang/Integer;)V

    .line 279
    invoke-virtual {p0, p1}, Lcom/amazon/kindle/observablemodel/ModelSorting;->modelSortingByAddingOrder(Lcom/amazon/kindle/observablemodel/ModelSortingPair;)Lcom/amazon/kindle/observablemodel/ModelSorting;

    move-result-object p0

    const-string/jumbo p1, "result\n                .\u2026      )\n                )"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1

    .line 272
    :cond_2
    new-instance p0, Lcom/amazon/kindle/observablemodel/ModelSortingPair;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/amazon/kindle/observablemodel/ModelSortingPair;-><init>(Ljava/lang/Integer;Ljava/lang/Integer;)V

    invoke-virtual {v6, p0}, Lcom/amazon/kindle/observablemodel/ModelSorting;->modelSortingByAddingOrder(Lcom/amazon/kindle/observablemodel/ModelSortingPair;)Lcom/amazon/kindle/observablemodel/ModelSorting;

    move-result-object p0

    .line 273
    new-instance p1, Lcom/amazon/kindle/observablemodel/ModelSortingPair;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Lcom/amazon/kindle/observablemodel/ModelSortingPair;-><init>(Ljava/lang/Integer;Ljava/lang/Integer;)V

    invoke-virtual {p0, p1}, Lcom/amazon/kindle/observablemodel/ModelSorting;->modelSortingByAddingOrder(Lcom/amazon/kindle/observablemodel/ModelSortingPair;)Lcom/amazon/kindle/observablemodel/ModelSorting;

    move-result-object p0

    const-string/jumbo p1, "result\n                .\u2026.ORDER_TITLE, direction))"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_1
    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static final modelSortingWithArguments(IILcom/amazon/kindle/observablemodel/ModelSorting;)Lcom/amazon/kindle/observablemodel/ModelSorting;
    .locals 1

    const-string/jumbo v0, "modelSorting"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 72
    new-instance v0, Lcom/amazon/kindle/observablemodel/ModelSortingPair;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-direct {v0, p0, p1}, Lcom/amazon/kindle/observablemodel/ModelSortingPair;-><init>(Ljava/lang/Integer;Ljava/lang/Integer;)V

    invoke-virtual {p2, v0}, Lcom/amazon/kindle/observablemodel/ModelSorting;->modelSortingByAddingOrder(Lcom/amazon/kindle/observablemodel/ModelSortingPair;)Lcom/amazon/kindle/observablemodel/ModelSorting;

    move-result-object p0

    const-string/jumbo p1, "modelSorting.modelSortin\u2026ngPair(order, direction))"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public static synthetic modelSortingWithArguments$default(IILcom/amazon/kindle/observablemodel/ModelSorting;ILjava/lang/Object;)Lcom/amazon/kindle/observablemodel/ModelSorting;
    .locals 0

    and-int/lit8 p3, p3, 0x4

    if-eqz p3, :cond_0

    .line 71
    new-instance p2, Lcom/amazon/kindle/observablemodel/ModelSorting;

    invoke-direct {p2}, Lcom/amazon/kindle/observablemodel/ModelSorting;-><init>()V

    :cond_0
    invoke-static {p0, p1, p2}, Lcom/amazon/kcp/integrator/LargeLibraryUtilsKt;->modelSortingWithArguments(IILcom/amazon/kindle/observablemodel/ModelSorting;)Lcom/amazon/kindle/observablemodel/ModelSorting;

    move-result-object p0

    return-object p0
.end method

.method public static final setFiltersOnOptionsOwner(Lcom/amazon/kcp/library/fragments/LibraryModelOptionsOwner;Lcom/amazon/kcp/library/ILibraryFilter;Ljava/util/List;Ljava/lang/String;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kcp/library/fragments/LibraryModelOptionsOwner;",
            "Lcom/amazon/kcp/library/ILibraryFilter;",
            "Ljava/util/List<",
            "+",
            "Ljava/util/List<",
            "+",
            "Lcom/amazon/kcp/library/LibraryFilterItem;",
            ">;>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const-string/jumbo v0, "optionsOwner"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "libraryFilter"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "filterSelections"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "currentUserId"

    invoke-static {p3, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 77
    new-instance p1, Ljava/util/LinkedHashSet;

    invoke-direct {p1}, Ljava/util/LinkedHashSet;-><init>()V

    .line 78
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 79
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/kcp/library/LibraryFilterItem;

    .line 80
    invoke-virtual {v1}, Lcom/amazon/kcp/library/LibraryFilterItem;->getId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "filterItem.id"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 81
    invoke-interface {p1, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 86
    :cond_1
    invoke-static {p1}, Lcom/amazon/kcp/integrator/LargeLibraryUtilsKt;->buildOwnershipSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v4

    .line 87
    invoke-static {p1}, Lcom/amazon/kcp/integrator/LargeLibraryUtilsKt;->buildProgressSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v3

    .line 88
    invoke-static {}, Lcom/amazon/kcp/debug/DownloadedFilterDebugUtils;->isDownloadedFilterEnabled()Z

    move-result p2

    if-eqz p2, :cond_2

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/amazon/kcp/integrator/LargeLibraryUtilsKt;->buildLocationSet(Ljava/util/Set;Lcom/amazon/kindle/krx/library/LibraryGroupType;)Ljava/util/Set;

    move-result-object p2

    goto :goto_1

    :cond_2
    invoke-interface {p0}, Lcom/amazon/kcp/library/fragments/LibraryModelOptionsOwner;->getModelFilter()Lcom/amazon/kindle/observablemodel/ModelFilter;

    move-result-object p2

    invoke-virtual {p2}, Lcom/amazon/kindle/observablemodel/ModelFilter;->getLocationSet()Ljava/util/Set;

    move-result-object p2

    :goto_1
    move-object v5, p2

    .line 89
    invoke-static {p1}, Lcom/amazon/kcp/integrator/LargeLibraryUtilsKt;->buildAudibleSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v6

    .line 90
    invoke-static {p1, v4}, Lcom/amazon/kcp/integrator/LargeLibraryUtilsKt;->buildSampleSet(Ljava/util/Set;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v7

    .line 91
    invoke-static {p1, v7}, Lcom/amazon/kcp/integrator/LargeLibraryUtilsKt;->buildCategorySet(Ljava/util/Set;Ljava/util/Set;)Ljava/util/Set;

    move-result-object p2

    .line 92
    invoke-static {p1, p3}, Lcom/amazon/kcp/integrator/LargeLibraryUtilsKt;->buildAccountTypeSet(Ljava/util/Set;Ljava/lang/String;)Ljava/util/Set;

    move-result-object v8

    .line 94
    invoke-static {}, Lkotlin/collections/SetsKt;->emptySet()Ljava/util/Set;

    move-result-object v9

    .line 97
    invoke-interface {p0}, Lcom/amazon/kcp/library/fragments/LibraryModelOptionsOwner;->getModelContent()Lcom/amazon/kindle/observablemodel/ModelContent;

    move-result-object p1

    const-string p3, "locationSet"

    .line 99
    invoke-static {v5, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0}, Lcom/amazon/kcp/library/fragments/LibraryModelOptionsOwner;->getModelFilter()Lcom/amazon/kindle/observablemodel/ModelFilter;

    move-result-object v10

    invoke-static/range {v3 .. v10}, Lcom/amazon/kcp/integrator/LargeLibraryUtilsKt;->modelFilterWithArguments(Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Lcom/amazon/kindle/observablemodel/ModelFilter;)Lcom/amazon/kindle/observablemodel/ModelFilter;

    move-result-object p3

    .line 100
    invoke-virtual {p1}, Lcom/amazon/kindle/observablemodel/ModelContent;->getGroupingSet()Ljava/util/Set;

    move-result-object v0

    const-string/jumbo v1, "modelContent.groupingSet"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/amazon/kindle/observablemodel/ModelContent;->getParentGroup()Lcom/amazon/kindle/observablemodel/ItemID;

    move-result-object v1

    invoke-static {p2, v0, v1, p1}, Lcom/amazon/kcp/integrator/LargeLibraryUtilsKt;->modelContentWithArguments(Ljava/util/Set;Ljava/util/Set;Lcom/amazon/kindle/observablemodel/ItemID;Lcom/amazon/kindle/observablemodel/ModelContent;)Lcom/amazon/kindle/observablemodel/ModelContent;

    move-result-object p1

    .line 98
    invoke-interface {p0, p3, p1}, Lcom/amazon/kcp/library/fragments/LibraryModelOptionsOwner;->setModelFilterAndContent(Lcom/amazon/kindle/observablemodel/ModelFilter;Lcom/amazon/kindle/observablemodel/ModelContent;)V

    return-void
.end method
