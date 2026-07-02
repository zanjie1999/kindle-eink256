.class public final Lcom/amazon/kcp/library/LibraryCursorFactoryPeriodicalHelper;
.super Ljava/lang/Object;
.source "LibraryCursorFactoryPeriodicalHelper.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nLibraryCursorFactoryPeriodicalHelper.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LibraryCursorFactoryPeriodicalHelper.kt\ncom/amazon/kcp/library/LibraryCursorFactoryPeriodicalHelper\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 Maps.kt\nkotlin/collections/MapsKt__MapsKt\n*L\n1#1,82:1\n734#2:83\n825#2,2:84\n1445#2:86\n1470#2,3:87\n1473#2,3:97\n1206#2,2:102\n1855#2,24:104\n1209#2:128\n1690#2,3:129\n734#2:132\n825#2,2:133\n1445#2:135\n1470#2,3:136\n1473#2,3:146\n1206#2,4:151\n1819#2,2:155\n355#3,7:90\n436#3:100\n386#3:101\n355#3,7:139\n451#3:149\n397#3:150\n*E\n*S KotlinDebug\n*F\n+ 1 LibraryCursorFactoryPeriodicalHelper.kt\ncom/amazon/kcp/library/LibraryCursorFactoryPeriodicalHelper\n*L\n19#1:83\n19#1,2:84\n20#1:86\n20#1,3:87\n20#1,3:97\n21#1,2:102\n22#1,24:104\n21#1:128\n36#1,3:129\n56#1:132\n56#1,2:133\n58#1:135\n58#1,3:136\n58#1,3:146\n59#1,4:151\n71#1,2:155\n20#1,7:90\n21#1:100\n21#1:101\n58#1,7:139\n59#1:149\n59#1:150\n*E\n"
.end annotation


# static fields
.field public static final INSTANCE:Lcom/amazon/kcp/library/LibraryCursorFactoryPeriodicalHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 10
    new-instance v0, Lcom/amazon/kcp/library/LibraryCursorFactoryPeriodicalHelper;

    invoke-direct {v0}, Lcom/amazon/kcp/library/LibraryCursorFactoryPeriodicalHelper;-><init>()V

    sput-object v0, Lcom/amazon/kcp/library/LibraryCursorFactoryPeriodicalHelper;->INSTANCE:Lcom/amazon/kcp/library/LibraryCursorFactoryPeriodicalHelper;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final createPeriodicalDisplayCoverMetadata(Lcom/amazon/kindle/content/ContentMetadata;Ljava/util/List;)Lcom/amazon/kindle/model/content/IListableBook;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kindle/content/ContentMetadata;",
            "Ljava/util/List<",
            "+",
            "Lcom/amazon/kindle/model/content/IListableBook;",
            ">;)",
            "Lcom/amazon/kindle/model/content/IListableBook;"
        }
    .end annotation

    const-string/jumbo v0, "mostRecentItem"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    invoke-virtual {p0}, Lcom/amazon/kindle/content/ContentMetadata;->clone()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_6

    check-cast v0, Lcom/amazon/kindle/content/ContentMetadata;

    if-nez p1, :cond_0

    return-object v0

    .line 129
    :cond_0
    instance-of v1, p1, Ljava/util/Collection;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    const/4 v2, 0x1

    goto :goto_1

    .line 130
    :cond_2
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/amazon/kindle/model/content/IListableBook;

    .line 37
    instance-of v5, v4, Lcom/amazon/kindle/content/ContentMetadata;

    if-eqz v5, :cond_4

    check-cast v4, Lcom/amazon/kindle/content/ContentMetadata;

    invoke-virtual {v4}, Lcom/amazon/kindle/content/ContentMetadata;->getReadData()Lcom/amazon/kindle/content/ReadData;

    move-result-object v4

    const-string v5, "it.readData"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4}, Lcom/amazon/kindle/content/ReadData;->getReadState()Lcom/amazon/kindle/krx/content/IBook$ReadState;

    move-result-object v4

    sget-object v5, Lcom/amazon/kindle/krx/content/IBook$ReadState;->READ:Lcom/amazon/kindle/krx/content/IBook$ReadState;

    if-ne v4, v5, :cond_4

    const/4 v4, 0x1

    goto :goto_0

    :cond_4
    const/4 v4, 0x0

    :goto_0
    if-nez v4, :cond_3

    .line 39
    :goto_1
    sget-object v1, Lcom/amazon/kcp/library/LibraryCursorFactoryPeriodicalHelper;->INSTANCE:Lcom/amazon/kcp/library/LibraryCursorFactoryPeriodicalHelper;

    invoke-direct {v1, p0, p1}, Lcom/amazon/kcp/library/LibraryCursorFactoryPeriodicalHelper;->getPeriodicalsDisplayOriginType(Lcom/amazon/kindle/content/ContentMetadata;Ljava/util/List;)Ljava/lang/String;

    move-result-object p0

    .line 41
    invoke-virtual {v0}, Lcom/amazon/kindle/content/ContentMetadata;->getReadData()Lcom/amazon/kindle/content/ReadData;

    move-result-object p1

    const-string/jumbo v1, "periodicalDisplayCoverItem.readData"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v2, :cond_5

    sget-object v1, Lcom/amazon/kindle/krx/content/IBook$ReadState;->READ:Lcom/amazon/kindle/krx/content/IBook$ReadState;

    goto :goto_2

    :cond_5
    sget-object v1, Lcom/amazon/kindle/krx/content/IBook$ReadState;->UNREAD:Lcom/amazon/kindle/krx/content/IBook$ReadState;

    :goto_2
    invoke-virtual {p1, v1}, Lcom/amazon/kindle/content/ReadData;->setReadState(Lcom/amazon/kindle/krx/content/IBook$ReadState;)V

    .line 42
    invoke-virtual {v0, p0}, Lcom/amazon/kindle/content/ContentMetadata;->setOriginType(Ljava/lang/String;)V

    return-object v0

    .line 32
    :cond_6
    new-instance p0, Ljava/lang/NullPointerException;

    const-string/jumbo p1, "null cannot be cast to non-null type com.amazon.kindle.content.ContentMetadata"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static final getMostRecentItemMap(Ljava/util/List;)Ljava/util/Map;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/amazon/kindle/model/content/IListableBook;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/amazon/kindle/model/content/IListableBook;",
            ">;"
        }
    .end annotation

    const-string/jumbo v0, "metadataList"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 83
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 84
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/amazon/kindle/model/content/IListableBook;

    .line 19
    invoke-interface {v2}, Lcom/amazon/kindle/model/content/IListableBook;->getBookType()Lcom/amazon/kcp/library/models/BookType;

    move-result-object v3

    const-string v4, "it.bookType"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/amazon/kcp/library/models/BookType;->isPeriodical()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Lcom/amazon/kindle/model/content/IListableBook;->getParentAsin()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/amazon/kcp/util/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    const/4 v2, 0x1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    if-eqz v2, :cond_0

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 86
    :cond_2
    new-instance p0, Ljava/util/LinkedHashMap;

    invoke-direct {p0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 87
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 88
    move-object v2, v1

    check-cast v2, Lcom/amazon/kindle/model/content/IListableBook;

    .line 20
    invoke-interface {v2}, Lcom/amazon/kindle/model/content/IListableBook;->getParentAsin()Ljava/lang/String;

    move-result-object v2

    .line 90
    invoke-interface {p0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_3

    .line 89
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 93
    invoke-interface {p0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    :cond_3
    check-cast v3, Ljava/util/List;

    .line 97
    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 100
    :cond_4
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v1

    invoke-static {v1}, Lkotlin/collections/MapsKt;->mapCapacity(I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/LinkedHashMap;-><init>(I)V

    .line 101
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    .line 102
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_3
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 103
    check-cast v1, Ljava/util/Map$Entry;

    .line 101
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 114
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 115
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_5

    const/4 v1, 0x0

    goto :goto_5

    .line 116
    :cond_5
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 117
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_6

    :goto_4
    move-object v1, v3

    goto :goto_5

    .line 118
    :cond_6
    move-object v4, v3

    check-cast v4, Lcom/amazon/kindle/model/content/IListableBook;

    .line 22
    invoke-interface {v4}, Lcom/amazon/kindle/model/content/IListableBook;->getPublicationDateInMillis()J

    move-result-wide v4

    .line 120
    :cond_7
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    .line 121
    move-object v7, v6

    check-cast v7, Lcom/amazon/kindle/model/content/IListableBook;

    .line 22
    invoke-interface {v7}, Lcom/amazon/kindle/model/content/IListableBook;->getPublicationDateInMillis()J

    move-result-wide v7

    cmp-long v9, v4, v7

    if-gez v9, :cond_8

    move-object v3, v6

    move-wide v4, v7

    .line 126
    :cond_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_7

    goto :goto_4

    .line 104
    :goto_5
    check-cast v1, Lcom/amazon/kindle/model/content/IListableBook;

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :cond_9
    return-object v0
.end method

.method public static final getPeriodicalsByGroupDisplayCoverAsin(Ljava/util/List;Ljava/util/Map;)Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/amazon/kindle/model/content/IListableBook;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Lcom/amazon/kindle/model/content/IListableBook;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/amazon/kindle/model/content/IListableBook;",
            ">;>;"
        }
    .end annotation

    const-string/jumbo v0, "metadataList"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "mostRecentItemByGroup"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 132
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 133
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/amazon/kindle/model/content/IListableBook;

    .line 57
    invoke-interface {v2}, Lcom/amazon/kindle/model/content/IListableBook;->getBookType()Lcom/amazon/kcp/library/models/BookType;

    move-result-object v3

    const-string v4, "it.bookType"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/amazon/kcp/library/models/BookType;->isPeriodical()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 56
    invoke-interface {v2}, Lcom/amazon/kindle/model/content/IListableBook;->getParentAsin()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/amazon/kcp/util/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 57
    invoke-interface {v2}, Lcom/amazon/kindle/model/content/IListableBook;->getParentAsin()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    if-eqz v2, :cond_0

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 135
    :cond_2
    new-instance p0, Ljava/util/LinkedHashMap;

    invoke-direct {p0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 136
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 137
    move-object v2, v1

    check-cast v2, Lcom/amazon/kindle/model/content/IListableBook;

    .line 58
    invoke-interface {v2}, Lcom/amazon/kindle/model/content/IListableBook;->getParentAsin()Ljava/lang/String;

    move-result-object v2

    .line 139
    invoke-interface {p0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_3

    .line 138
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 142
    invoke-interface {p0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    :cond_3
    check-cast v3, Ljava/util/List;

    .line 146
    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 149
    :cond_4
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v1

    invoke-static {v1}, Lkotlin/collections/MapsKt;->mapCapacity(I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/LinkedHashMap;-><init>(I)V

    .line 150
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    .line 151
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_3
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 152
    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string/jumbo v3, "parentAsin"

    .line 60
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, v2}, Lkotlin/collections/MapsKt;->getValue(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazon/kindle/model/content/IListableBook;

    invoke-interface {v2}, Lcom/amazon/kindle/model/content/IListableBook;->getAsin()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "mostRecentItemByGroup.getValue(parentAsin).asin"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 150
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :cond_5
    return-object v0
.end method

.method private final getPeriodicalsDisplayOriginType(Lcom/amazon/kindle/content/ContentMetadata;Ljava/util/List;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kindle/content/ContentMetadata;",
            "Ljava/util/List<",
            "+",
            "Lcom/amazon/kindle/model/content/IListableBook;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 155
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kindle/model/content/IListableBook;

    .line 72
    instance-of v1, v0, Lcom/amazon/kindle/content/ContentMetadata;

    if-eqz v1, :cond_0

    .line 73
    check-cast v0, Lcom/amazon/kindle/content/ContentMetadata;

    invoke-virtual {v0}, Lcom/amazon/kindle/content/ContentMetadata;->getOriginType()Ljava/lang/String;

    move-result-object v0

    .line 74
    invoke-static {v0}, Lcom/amazon/kcp/util/LibraryUtils;->isKUOriginType(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {v0}, Lcom/amazon/kcp/util/LibraryUtils;->isPrimeOriginType(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_1
    return-object v0

    .line 79
    :cond_2
    invoke-virtual {p1}, Lcom/amazon/kindle/content/ContentMetadata;->getOriginType()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
