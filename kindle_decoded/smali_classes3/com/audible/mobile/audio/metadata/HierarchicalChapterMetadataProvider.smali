.class public final Lcom/audible/mobile/audio/metadata/HierarchicalChapterMetadataProvider;
.super Ljava/lang/Object;
.source "HierarchicalChapterMetadataProvider.kt"

# interfaces
.implements Lcom/audible/mobile/audio/metadata/ChapterMetadataProvider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/audible/mobile/audio/metadata/HierarchicalChapterMetadataProvider$ChapterDbRow;,
        Lcom/audible/mobile/audio/metadata/HierarchicalChapterMetadataProvider$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nHierarchicalChapterMetadataProvider.kt\nKotlin\n*S Kotlin\n*F\n+ 1 HierarchicalChapterMetadataProvider.kt\ncom/audible/mobile/audio/metadata/HierarchicalChapterMetadataProvider\n+ 2 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n+ 3 Maps.kt\nkotlin/collections/MapsKt__MapsKt\n+ 4 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,142:1\n37#2,2:143\n37#2,2:145\n352#3,7:147\n506#3:165\n491#3,6:166\n706#4:154\n783#4,2:155\n1366#4:157\n1435#4,3:158\n1366#4:161\n1435#4,3:162\n*E\n*S KotlinDebug\n*F\n+ 1 HierarchicalChapterMetadataProvider.kt\ncom/audible/mobile/audio/metadata/HierarchicalChapterMetadataProvider\n*L\n38#1,2:143\n49#1,2:145\n61#1,7:147\n102#1:165\n102#1,6:166\n79#1:154\n79#1,2:155\n80#1:157\n80#1,3:158\n101#1:161\n101#1,3:162\n*E\n"
.end annotation


# static fields
.field private static final CHAPTER_PROJECTION:[Ljava/lang/String;

.field private static final CHAPTER_ROW_MAPPER:Lcom/audible/mobile/sqlite/RowMapper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/audible/mobile/sqlite/RowMapper<",
            "Lcom/audible/mobile/audio/metadata/HierarchicalChapterMetadataProvider$ChapterDbRow;",
            ">;"
        }
    .end annotation
.end field

.field private static final CHAPTER_SELECTION_ACR_SUFFIX:Ljava/lang/String; = " AND ACR = ?"

.field private static final CHAPTER_SELECTION_ASIN:Ljava/lang/String; = "ASIN = ?"

.field private static final CHAPTER_SORT_ORDER:Ljava/lang/String; = "START_TIME_MS ASC, GLOBAL_INDEX ASC"


# instance fields
.field private final context:Landroid/content/Context;

.field private final cursorTemplate:Lcom/audible/mobile/sqlite/CursorTemplate;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    new-instance v0, Lcom/audible/mobile/audio/metadata/HierarchicalChapterMetadataProvider$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/audible/mobile/audio/metadata/HierarchicalChapterMetadataProvider$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    const-string v2, "CHAPTER_ID"

    const-string v3, "PARENT_ID"

    const-string v4, "LEVEL"

    const-string v5, "GLOBAL_INDEX"

    const-string v6, "TITLE"

    const-string v7, "START_TIME_MS"

    const-string v8, "LENGTH_MS"

    .line 112
    filled-new-array/range {v2 .. v8}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/audible/mobile/audio/metadata/HierarchicalChapterMetadataProvider;->CHAPTER_PROJECTION:[Ljava/lang/String;

    .line 117
    sget-object v0, Lcom/audible/mobile/audio/metadata/HierarchicalChapterMetadataProvider$Companion$CHAPTER_ROW_MAPPER$1;->INSTANCE:Lcom/audible/mobile/audio/metadata/HierarchicalChapterMetadataProvider$Companion$CHAPTER_ROW_MAPPER$1;

    sput-object v0, Lcom/audible/mobile/audio/metadata/HierarchicalChapterMetadataProvider;->CHAPTER_ROW_MAPPER:Lcom/audible/mobile/sqlite/RowMapper;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    new-instance v0, Lcom/audible/mobile/sqlite/CursorTemplate;

    invoke-direct {v0}, Lcom/audible/mobile/sqlite/CursorTemplate;-><init>()V

    iput-object v0, p0, Lcom/audible/mobile/audio/metadata/HierarchicalChapterMetadataProvider;->cursorTemplate:Lcom/audible/mobile/sqlite/CursorTemplate;

    .line 17
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/audible/mobile/audio/metadata/HierarchicalChapterMetadataProvider;->context:Landroid/content/Context;

    return-void
.end method

.method private final assembleChapter(ILcom/audible/mobile/audio/metadata/HierarchicalChapterMetadataProvider$ChapterDbRow;Ljava/util/List;Ljava/util/Map;Ljava/util/Map;)Lcom/audible/mobile/audio/metadata/ChapterMetadata;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/audible/mobile/audio/metadata/HierarchicalChapterMetadataProvider$ChapterDbRow;",
            "Ljava/util/List<",
            "Lcom/audible/mobile/audio/metadata/HierarchicalChapterMetadataProvider$ChapterDbRow;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "+",
            "Lcom/audible/mobile/audio/metadata/ChapterMetadata;",
            ">;)",
            "Lcom/audible/mobile/audio/metadata/ChapterMetadata;"
        }
    .end annotation

    if-eqz p3, :cond_1

    .line 161
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {p3, v1}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 162
    invoke-interface {p3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 163
    check-cast v1, Lcom/audible/mobile/audio/metadata/HierarchicalChapterMetadataProvider$ChapterDbRow;

    .line 101
    invoke-virtual {v1}, Lcom/audible/mobile/audio/metadata/HierarchicalChapterMetadataProvider$ChapterDbRow;->getId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->toSet(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object p3

    if-eqz p3, :cond_1

    goto :goto_1

    :cond_1
    invoke-static {}, Lkotlin/collections/SetsKt;->emptySet()Ljava/util/Set;

    move-result-object p3

    .line 165
    :goto_1
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 166
    invoke-interface {p5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p5

    invoke-interface {p5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p5

    :cond_2
    :goto_2
    invoke-interface {p5}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 102
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p3, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 168
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 171
    :cond_3
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p3

    .line 102
    invoke-static {p3}, Lkotlin/collections/CollectionsKt;->sorted(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v7

    .line 103
    new-instance p3, Lcom/audible/mobile/audio/metadata/ImmutableChapterMetadata;

    .line 104
    invoke-virtual {p2}, Lcom/audible/mobile/audio/metadata/HierarchicalChapterMetadataProvider$ChapterDbRow;->getId()I

    move-result p5

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p5

    invoke-interface {p4, p5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/Integer;

    if-eqz p4, :cond_4

    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result p4

    move v2, p4

    goto :goto_3

    :cond_4
    const/4 p4, 0x0

    const/4 v2, 0x0

    .line 105
    :goto_3
    invoke-virtual {p2}, Lcom/audible/mobile/audio/metadata/HierarchicalChapterMetadataProvider$ChapterDbRow;->getIndex()I

    move-result v3

    invoke-virtual {p2}, Lcom/audible/mobile/audio/metadata/HierarchicalChapterMetadataProvider$ChapterDbRow;->getStartTime()I

    move-result v4

    invoke-virtual {p2}, Lcom/audible/mobile/audio/metadata/HierarchicalChapterMetadataProvider$ChapterDbRow;->getLength()I

    move-result v5

    invoke-virtual {p2}, Lcom/audible/mobile/audio/metadata/HierarchicalChapterMetadataProvider$ChapterDbRow;->getTitle()Ljava/lang/String;

    move-result-object v6

    move-object v0, p3

    move v1, p1

    .line 103
    invoke-direct/range {v0 .. v7}, Lcom/audible/mobile/audio/metadata/ImmutableChapterMetadata;-><init>(IIIIILjava/lang/String;Ljava/util/List;)V

    return-object p3
.end method

.method private final getChaptersWithDefaultACR(Lcom/audible/mobile/player/AudioDataSource;)Ljava/util/SortedSet;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/audible/mobile/player/AudioDataSource;",
            ")",
            "Ljava/util/SortedSet<",
            "Lcom/audible/mobile/audio/metadata/ChapterMetadata;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    .line 46
    invoke-virtual {p1}, Lcom/audible/mobile/player/AudioDataSource;->getAsin()Lcom/audible/mobile/domain/Asin;

    move-result-object p1

    const-string v1, "input.asin"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/audible/mobile/domain/Identifier;->getId()Ljava/lang/String;

    move-result-object p1

    const-string v1, "input.asin.id"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 p1, 0x1

    const-string v2, ""

    aput-object v2, v0, p1

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->mutableListOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    .line 47
    iget-object v0, p0, Lcom/audible/mobile/audio/metadata/HierarchicalChapterMetadataProvider;->context:Landroid/content/Context;

    const-string v2, "this.context"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 48
    iget-object v0, p0, Lcom/audible/mobile/audio/metadata/HierarchicalChapterMetadataProvider;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/audible/mobile/catalog/metadata/CatalogMetadataContract$Chapters;->getContentUri(Landroid/content/Context;)Landroid/net/Uri;

    move-result-object v4

    sget-object v5, Lcom/audible/mobile/audio/metadata/HierarchicalChapterMetadataProvider;->CHAPTER_PROJECTION:[Ljava/lang/String;

    new-array v0, v1, [Ljava/lang/String;

    .line 146
    invoke-interface {p1, v0}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    move-object v7, p1

    check-cast v7, [Ljava/lang/String;

    const-string v6, "ASIN = ? AND ACR = ?"

    const-string v8, "START_TIME_MS ASC, GLOBAL_INDEX ASC"

    .line 47
    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    .line 51
    iget-object v0, p0, Lcom/audible/mobile/audio/metadata/HierarchicalChapterMetadataProvider;->cursorTemplate:Lcom/audible/mobile/sqlite/CursorTemplate;

    sget-object v1, Lcom/audible/mobile/audio/metadata/HierarchicalChapterMetadataProvider;->CHAPTER_ROW_MAPPER:Lcom/audible/mobile/sqlite/RowMapper;

    invoke-virtual {v0, p1, v1}, Lcom/audible/mobile/sqlite/CursorTemplate;->queryForList(Landroid/database/Cursor;Lcom/audible/mobile/sqlite/RowMapper;)Ljava/util/List;

    move-result-object p1

    const-string v0, "rows"

    .line 52
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/audible/mobile/audio/metadata/HierarchicalChapterMetadataProvider;->parseRows(Ljava/util/List;)Ljava/util/SortedSet;

    move-result-object p1

    return-object p1

    .line 146
    :cond_0
    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type kotlin.Array<T>"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private final getChaptersWithProvidedACR(Lcom/audible/mobile/player/AudioDataSource;)Ljava/util/SortedSet;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/audible/mobile/player/AudioDataSource;",
            ")",
            "Ljava/util/SortedSet<",
            "Lcom/audible/mobile/audio/metadata/ChapterMetadata;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    .line 31
    invoke-virtual {p1}, Lcom/audible/mobile/player/AudioDataSource;->getAsin()Lcom/audible/mobile/domain/Asin;

    move-result-object v1

    const-string v2, "input.asin"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v1}, Lcom/audible/mobile/domain/Identifier;->getId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "input.asin.id"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->mutableListOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 32
    invoke-virtual {p1}, Lcom/audible/mobile/player/AudioDataSource;->getACR()Lcom/audible/mobile/domain/ACR;

    move-result-object p1

    const-string v1, "ASIN = ?"

    if-eqz p1, :cond_0

    .line 33
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " AND ACR = ?"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "it"

    .line 34
    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/audible/mobile/domain/Identifier;->getId()Ljava/lang/String;

    move-result-object p1

    const-string v3, "it.id"

    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    move-object v7, v1

    .line 36
    iget-object p1, p0, Lcom/audible/mobile/audio/metadata/HierarchicalChapterMetadataProvider;->context:Landroid/content/Context;

    const-string v1, "this.context"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 37
    iget-object p1, p0, Lcom/audible/mobile/audio/metadata/HierarchicalChapterMetadataProvider;->context:Landroid/content/Context;

    invoke-static {p1}, Lcom/audible/mobile/catalog/metadata/CatalogMetadataContract$Chapters;->getContentUri(Landroid/content/Context;)Landroid/net/Uri;

    move-result-object v5

    sget-object v6, Lcom/audible/mobile/audio/metadata/HierarchicalChapterMetadataProvider;->CHAPTER_PROJECTION:[Ljava/lang/String;

    new-array p1, v2, [Ljava/lang/String;

    .line 144
    invoke-interface {v0, p1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_1

    move-object v8, p1

    check-cast v8, [Ljava/lang/String;

    const-string v9, "START_TIME_MS ASC, GLOBAL_INDEX ASC"

    .line 36
    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    .line 40
    iget-object v0, p0, Lcom/audible/mobile/audio/metadata/HierarchicalChapterMetadataProvider;->cursorTemplate:Lcom/audible/mobile/sqlite/CursorTemplate;

    sget-object v1, Lcom/audible/mobile/audio/metadata/HierarchicalChapterMetadataProvider;->CHAPTER_ROW_MAPPER:Lcom/audible/mobile/sqlite/RowMapper;

    invoke-virtual {v0, p1, v1}, Lcom/audible/mobile/sqlite/CursorTemplate;->queryForList(Landroid/database/Cursor;Lcom/audible/mobile/sqlite/RowMapper;)Ljava/util/List;

    move-result-object p1

    const-string v0, "rows"

    .line 41
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/audible/mobile/audio/metadata/HierarchicalChapterMetadataProvider;->parseRows(Ljava/util/List;)Ljava/util/SortedSet;

    move-result-object p1

    return-object p1

    .line 144
    :cond_1
    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type kotlin.Array<T>"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private final parseRows(Ljava/util/List;)Ljava/util/SortedSet;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/audible/mobile/audio/metadata/HierarchicalChapterMetadataProvider$ChapterDbRow;",
            ">;)",
            "Ljava/util/SortedSet<",
            "Lcom/audible/mobile/audio/metadata/ChapterMetadata;",
            ">;"
        }
    .end annotation

    .line 56
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 60
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/high16 v2, -0x80000000

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/audible/mobile/audio/metadata/HierarchicalChapterMetadataProvider$ChapterDbRow;

    .line 61
    invoke-virtual {v3}, Lcom/audible/mobile/audio/metadata/HierarchicalChapterMetadataProvider$ChapterDbRow;->getParentId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 147
    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_0

    .line 61
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 150
    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    :cond_0
    check-cast v5, Ljava/util/List;

    .line 61
    invoke-interface {v5, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 62
    invoke-virtual {v3}, Lcom/audible/mobile/audio/metadata/HierarchicalChapterMetadataProvider$ChapterDbRow;->getLevel()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    goto :goto_0

    .line 66
    :cond_1
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 67
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const/4 v9, 0x0

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v4

    .line 68
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    if-eqz v4, :cond_2

    .line 69
    invoke-static {v4}, Lkotlin/collections/CollectionsKt;->sort(Ljava/util/List;)V

    .line 70
    invoke-interface {v4}, Ljava/util/Collection;->size()I

    move-result v5

    :goto_1
    if-ge v9, v5, :cond_2

    .line 71
    invoke-interface {v4, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/audible/mobile/audio/metadata/HierarchicalChapterMetadataProvider$ChapterDbRow;

    invoke-virtual {v6}, Lcom/audible/mobile/audio/metadata/HierarchicalChapterMetadataProvider$ChapterDbRow;->getId()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v1, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 77
    :cond_3
    invoke-static {}, Lkotlin/collections/MapsKt;->emptyMap()Ljava/util/Map;

    move-result-object v3

    move-object v10, v3

    :goto_2
    if-ltz v2, :cond_8

    .line 154
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 155
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_4
    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    move-object v6, v5

    check-cast v6, Lcom/audible/mobile/audio/metadata/HierarchicalChapterMetadataProvider$ChapterDbRow;

    .line 79
    invoke-virtual {v6}, Lcom/audible/mobile/audio/metadata/HierarchicalChapterMetadataProvider$ChapterDbRow;->getLevel()I

    move-result v6

    if-ne v6, v2, :cond_5

    const/4 v6, 0x1

    goto :goto_4

    :cond_5
    const/4 v6, 0x0

    :goto_4
    if-eqz v6, :cond_4

    invoke-interface {v3, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 157
    :cond_6
    new-instance v11, Ljava/util/ArrayList;

    const/16 v4, 0xa

    invoke-static {v3, v4}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v4

    invoke-direct {v11, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 158
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_5
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 159
    move-object v5, v3

    check-cast v5, Lcom/audible/mobile/audio/metadata/HierarchicalChapterMetadataProvider$ChapterDbRow;

    .line 81
    invoke-virtual {v5}, Lcom/audible/mobile/audio/metadata/HierarchicalChapterMetadataProvider$ChapterDbRow;->getId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    .line 84
    invoke-virtual {v5}, Lcom/audible/mobile/audio/metadata/HierarchicalChapterMetadataProvider$ChapterDbRow;->getId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v6, v3

    check-cast v6, Ljava/util/List;

    move-object v3, p0

    move v4, v2

    move-object v7, v1

    move-object v8, v10

    .line 81
    invoke-direct/range {v3 .. v8}, Lcom/audible/mobile/audio/metadata/HierarchicalChapterMetadataProvider;->assembleChapter(ILcom/audible/mobile/audio/metadata/HierarchicalChapterMetadataProvider$ChapterDbRow;Ljava/util/List;Ljava/util/Map;Ljava/util/Map;)Lcom/audible/mobile/audio/metadata/ChapterMetadata;

    move-result-object v3

    invoke-static {v13, v3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v3

    .line 87
    invoke-interface {v11, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 89
    :cond_7
    invoke-static {v11}, Lkotlin/collections/MapsKt;->toMap(Ljava/lang/Iterable;)Ljava/util/Map;

    move-result-object v10

    add-int/lit8 v2, v2, -0x1

    goto :goto_2

    .line 91
    :cond_8
    invoke-interface {v10}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->toSortedSet(Ljava/lang/Iterable;)Ljava/util/SortedSet;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 14
    check-cast p1, Lcom/audible/mobile/player/AudioDataSource;

    invoke-virtual {p0, p1}, Lcom/audible/mobile/audio/metadata/HierarchicalChapterMetadataProvider;->get(Lcom/audible/mobile/player/AudioDataSource;)Ljava/util/SortedSet;

    move-result-object p1

    return-object p1
.end method

.method public get(Lcom/audible/mobile/player/AudioDataSource;)Ljava/util/SortedSet;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/audible/mobile/player/AudioDataSource;",
            ")",
            "Ljava/util/SortedSet<",
            "Lcom/audible/mobile/audio/metadata/ChapterMetadata;",
            ">;"
        }
    .end annotation

    const-string v0, "input"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    invoke-direct {p0, p1}, Lcom/audible/mobile/audio/metadata/HierarchicalChapterMetadataProvider;->getChaptersWithProvidedACR(Lcom/audible/mobile/player/AudioDataSource;)Ljava/util/SortedSet;

    move-result-object v0

    .line 23
    invoke-interface {v0}, Ljava/util/SortedSet;->isEmpty()Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 24
    invoke-direct {p0, p1}, Lcom/audible/mobile/audio/metadata/HierarchicalChapterMetadataProvider;->getChaptersWithDefaultACR(Lcom/audible/mobile/player/AudioDataSource;)Ljava/util/SortedSet;

    move-result-object v0

    goto :goto_0

    :cond_0
    if-nez v1, :cond_1

    :goto_0
    return-object v0

    .line 25
    :cond_1
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1
.end method
