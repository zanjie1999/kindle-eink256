.class public final Lcom/amazon/kcp/library/PeriodicalContentMetadataDisplayItem$Companion;
.super Ljava/lang/Object;
.source "PeriodicalContentMetadataDisplayItem.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/library/PeriodicalContentMetadataDisplayItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 19
    invoke-direct {p0}, Lcom/amazon/kcp/library/PeriodicalContentMetadataDisplayItem$Companion;-><init>()V

    return-void
.end method

.method private final queryCount(Lcom/amazon/kindle/content/ILibraryService;Lcom/amazon/kindle/content/filter/SQLQueryFilter;)I
    .locals 2

    .line 21
    invoke-interface {p2}, Lcom/amazon/kindle/content/filter/SQLQueryFilter;->getWhereClause()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2}, Lcom/amazon/kindle/content/filter/SQLQueryFilter;->getSelectionArgs()[Ljava/lang/String;

    move-result-object p2

    const-string v1, "KindleContent"

    invoke-interface {p1, v1, v0, p2}, Lcom/amazon/kindle/content/ILibraryService;->queryNumberEntries(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)J

    move-result-wide p1

    long-to-int p2, p1

    return p2
.end method


# virtual methods
.method public final newDisplayItem(Ljava/lang/String;Lcom/amazon/kindle/content/ILibraryService;Lcom/amazon/kcp/integrator/PeriodicalArguments;)Lcom/amazon/kcp/library/ILibraryDisplayItem;
    .locals 14

    move-object v7, p1

    move-object/from16 v8, p2

    const-string v0, "libraryService"

    invoke-static {v8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "periodicalArguments"

    move-object/from16 v9, p3

    invoke-static {v9, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    if-eqz v7, :cond_1

    .line 25
    invoke-static {p1}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    const/4 v10, 0x0

    if-eqz v1, :cond_2

    return-object v10

    .line 29
    :cond_2
    invoke-virtual/range {p3 .. p3}, Lcom/amazon/kcp/integrator/PeriodicalArguments;->getLocalOnly()Z

    move-result v1

    if-nez v1, :cond_4

    invoke-virtual/range {p3 .. p3}, Lcom/amazon/kcp/integrator/PeriodicalArguments;->getReadState()Lcom/amazon/kindle/krx/content/IBook$ReadState;

    move-result-object v1

    if-eqz v1, :cond_3

    goto :goto_2

    :cond_3
    move-object v0, v10

    goto :goto_3

    .line 32
    :cond_4
    :goto_2
    new-instance v1, Lcom/amazon/kcp/library/PeriodicalContentFilter;

    invoke-virtual/range {p3 .. p3}, Lcom/amazon/kcp/integrator/PeriodicalArguments;->getReadState()Lcom/amazon/kindle/krx/content/IBook$ReadState;

    move-result-object v2

    invoke-virtual/range {p3 .. p3}, Lcom/amazon/kcp/integrator/PeriodicalArguments;->getLocalOnly()Z

    move-result v3

    invoke-direct {v1, p1, v2, v3, v0}, Lcom/amazon/kcp/library/PeriodicalContentFilter;-><init>(Ljava/lang/String;Lcom/amazon/kindle/krx/content/IBook$ReadState;ZI)V

    invoke-interface {v8, v10, v1}, Lcom/amazon/kindle/content/ILibraryService;->getBookIds(Ljava/lang/String;Lcom/amazon/kindle/content/filter/SQLQueryFilter;)Ljava/util/Collection;

    move-result-object v0

    const-string v1, "libraryService.getBookId\u2026calOnly, limitToOneItem))"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/lang/Iterable;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :goto_3
    const-string v11, "libraryService.getBookId\u2026ontentFilter(parentAsin))"

    if-nez v0, :cond_5

    .line 38
    new-instance v0, Lcom/amazon/kcp/library/RecentPeriodicalContentFilter;

    invoke-direct {v0, p1}, Lcom/amazon/kcp/library/RecentPeriodicalContentFilter;-><init>(Ljava/lang/String;)V

    invoke-interface {v8, v10, v0}, Lcom/amazon/kindle/content/ILibraryService;->getBookIds(Ljava/lang/String;Lcom/amazon/kindle/content/filter/SQLQueryFilter;)Ljava/util/Collection;

    move-result-object v0

    invoke-static {v0, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/lang/Iterable;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :cond_5
    if-nez v0, :cond_6

    .line 45
    new-instance v12, Lcom/amazon/kcp/library/PeriodicalContentFilter;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0xe

    const/4 v6, 0x0

    move-object v0, v12

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lcom/amazon/kcp/library/PeriodicalContentFilter;-><init>(Ljava/lang/String;Lcom/amazon/kindle/krx/content/IBook$ReadState;ZIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-interface {v8, v10, v12}, Lcom/amazon/kindle/content/ILibraryService;->getBookIds(Ljava/lang/String;Lcom/amazon/kindle/content/filter/SQLQueryFilter;)Ljava/util/Collection;

    move-result-object v0

    invoke-static {v0, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/lang/Iterable;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 48
    :cond_6
    invoke-interface {v8, v0, v10}, Lcom/amazon/kindle/content/ILibraryService;->getContentMetadata(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/kindle/content/ContentMetadata;

    move-result-object v11

    if-eqz v11, :cond_8

    .line 50
    sget-object v10, Lcom/amazon/kcp/library/PeriodicalContentMetadataDisplayItem;->Companion:Lcom/amazon/kcp/library/PeriodicalContentMetadataDisplayItem$Companion;

    new-instance v12, Lcom/amazon/kcp/library/PeriodicalContentFilter;

    invoke-virtual/range {p3 .. p3}, Lcom/amazon/kcp/integrator/PeriodicalArguments;->getReadState()Lcom/amazon/kindle/krx/content/IBook$ReadState;

    move-result-object v2

    invoke-virtual/range {p3 .. p3}, Lcom/amazon/kcp/integrator/PeriodicalArguments;->getLocalOnly()Z

    move-result v3

    const/4 v4, 0x0

    const/16 v5, 0x8

    const/4 v6, 0x0

    move-object v0, v12

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lcom/amazon/kcp/library/PeriodicalContentFilter;-><init>(Ljava/lang/String;Lcom/amazon/kindle/krx/content/IBook$ReadState;ZIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-direct {v10, v8, v12}, Lcom/amazon/kcp/library/PeriodicalContentMetadataDisplayItem$Companion;->queryCount(Lcom/amazon/kindle/content/ILibraryService;Lcom/amazon/kindle/content/filter/SQLQueryFilter;)I

    move-result v10

    .line 52
    sget-object v12, Lcom/amazon/kcp/library/PeriodicalContentMetadataDisplayItem;->Companion:Lcom/amazon/kcp/library/PeriodicalContentMetadataDisplayItem$Companion;

    new-instance v13, Lcom/amazon/kcp/library/PeriodicalContentFilter;

    sget-object v2, Lcom/amazon/kindle/krx/content/IBook$ReadState;->UNREAD:Lcom/amazon/kindle/krx/content/IBook$ReadState;

    invoke-virtual/range {p3 .. p3}, Lcom/amazon/kcp/integrator/PeriodicalArguments;->getLocalOnly()Z

    move-result v3

    move-object v0, v13

    invoke-direct/range {v0 .. v6}, Lcom/amazon/kcp/library/PeriodicalContentFilter;-><init>(Ljava/lang/String;Lcom/amazon/kindle/krx/content/IBook$ReadState;ZIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-direct {v12, v8, v13}, Lcom/amazon/kcp/library/PeriodicalContentMetadataDisplayItem$Companion;->queryCount(Lcom/amazon/kindle/content/ILibraryService;Lcom/amazon/kindle/content/filter/SQLQueryFilter;)I

    move-result v0

    if-lez v0, :cond_7

    .line 54
    sget-object v0, Lcom/amazon/kindle/krx/content/IBook$ReadState;->UNREAD:Lcom/amazon/kindle/krx/content/IBook$ReadState;

    goto :goto_4

    .line 55
    :cond_7
    sget-object v0, Lcom/amazon/kindle/krx/content/IBook$ReadState;->READ:Lcom/amazon/kindle/krx/content/IBook$ReadState;

    :goto_4
    move-object v3, v0

    .line 57
    new-instance v6, Lcom/amazon/kcp/library/PeriodicalContentMetadataDisplayItem;

    const-string v0, "displayMetadata"

    invoke-static {v11, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v0, v6

    move-object v1, v11

    move v2, v10

    move-object/from16 v4, p3

    move-object/from16 v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/amazon/kcp/library/PeriodicalContentMetadataDisplayItem;-><init>(Lcom/amazon/kindle/content/ContentMetadata;ILcom/amazon/kindle/krx/content/IBook$ReadState;Lcom/amazon/kcp/integrator/PeriodicalArguments;Lcom/amazon/kindle/content/ILibraryService;)V

    move-object v10, v6

    :cond_8
    return-object v10
.end method
