.class public Lcom/amazon/falkor/utils/BookGroupUtils;
.super Ljava/lang/Object;
.source "BookGroupUtils.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nBookGroupUtils.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BookGroupUtils.kt\ncom/amazon/falkor/utils/BookGroupUtils\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,118:1\n630#2:119\n703#2,2:120\n228#2,2:122\n228#2,2:124\n630#2:126\n703#2,2:127\n*E\n*S KotlinDebug\n*F\n+ 1 BookGroupUtils.kt\ncom/amazon/falkor/utils/BookGroupUtils\n*L\n56#1:119\n56#1,2:120\n58#1,2:122\n61#1,2:124\n92#1:126\n92#1,2:127\n*E\n"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final getGroupIdForBook(Lcom/amazon/kindle/krx/IKindleReaderSDK;Lcom/amazon/kindle/krx/content/IBook;Lcom/amazon/falkor/models/FalkorEpisode;)Ljava/lang/String;
    .locals 1

    .line 104
    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getLibraryManager()Lcom/amazon/kindle/krx/library/ILibraryManager;

    move-result-object v0

    invoke-interface {v0, p2}, Lcom/amazon/kindle/krx/library/ILibraryManager;->getGroupIdFromItem(Lcom/amazon/kindle/krx/content/IBook;)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p3, :cond_1

    .line 105
    invoke-virtual {p3}, Lcom/amazon/falkor/models/FalkorEpisode;->getStoryAsin()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_1

    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getLibraryManager()Lcom/amazon/kindle/krx/library/ILibraryManager;

    move-result-object p1

    const-string/jumbo p3, "sdk.libraryManager"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p2, p1}, Lcom/amazon/falkor/utils/BookGroupUtils;->getGroupIdFromGroupAsin(Ljava/lang/String;Lcom/amazon/kindle/krx/library/ILibraryManager;)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    :goto_0
    return-object p2
.end method

.method private final getGroupIdFromGroupAsin(Ljava/lang/String;Lcom/amazon/kindle/krx/library/ILibraryManager;)Ljava/lang/String;
    .locals 2

    .line 115
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "urn:collection:1:asin-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/amazon/kindle/krx/library/ILibraryManager;->getGroupIdFromGroupAsin(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "libraryManager.getGroupI\u2026\"$SERIES_ID_PREFIX$asin\")"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method


# virtual methods
.method public final getGroupFromItem(Lcom/amazon/kindle/krx/IKindleReaderSDK;Lcom/amazon/kindle/krx/content/IBook;)Lcom/amazon/kindle/krx/content/BookGroup;
    .locals 2

    const-string/jumbo v0, "sdk"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    if-nez p2, :cond_0

    return-object v0

    .line 40
    :cond_0
    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getLibraryManager()Lcom/amazon/kindle/krx/library/ILibraryManager;

    move-result-object v1

    invoke-interface {v1, p2}, Lcom/amazon/kindle/krx/library/ILibraryManager;->getGroupIdFromItem(Lcom/amazon/kindle/krx/content/IBook;)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 41
    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getLibraryManager()Lcom/amazon/kindle/krx/library/ILibraryManager;

    move-result-object p1

    invoke-interface {p1, p2}, Lcom/amazon/kindle/krx/library/ILibraryManager;->getGroupFromGroupId(Ljava/lang/String;)Lcom/amazon/kindle/krx/content/BookGroup;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method public final getLocalNextItemInGroup(Lcom/amazon/kindle/krx/content/BookGroup;Ljava/lang/String;)Lcom/amazon/kindle/krx/content/BookGroupItem;
    .locals 7

    const/4 v0, 0x0

    if-eqz p1, :cond_9

    if-nez p2, :cond_0

    goto/16 :goto_3

    .line 56
    :cond_0
    invoke-interface {p1}, Lcom/amazon/kindle/krx/content/BookGroup;->getGroupItems()Ljava/util/List;

    move-result-object p1

    .line 119
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 120
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Lcom/amazon/kindle/krx/content/BookGroupItem;

    .line 56
    invoke-interface {v5}, Lcom/amazon/kindle/krx/content/BookGroupItem;->getBook()Lcom/amazon/kindle/krx/content/IBook;

    move-result-object v5

    invoke-interface {v5}, Lcom/amazon/kindle/krx/content/IBook;->getDownloadState()Lcom/amazon/kindle/krx/content/IBook$DownloadState;

    move-result-object v5

    sget-object v6, Lcom/amazon/kindle/krx/content/IBook$DownloadState;->LOCAL:Lcom/amazon/kindle/krx/content/IBook$DownloadState;

    if-ne v5, v6, :cond_2

    const/4 v3, 0x1

    :cond_2
    if-eqz v3, :cond_1

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 122
    :cond_3
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Lcom/amazon/kindle/krx/content/BookGroupItem;

    .line 58
    invoke-interface {v5}, Lcom/amazon/kindle/krx/content/BookGroupItem;->getBook()Lcom/amazon/kindle/krx/content/IBook;

    move-result-object v5

    invoke-interface {v5}, Lcom/amazon/kindle/krx/content/IBook;->getASIN()Ljava/lang/String;

    move-result-object v5

    invoke-static {p2, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    goto :goto_1

    :cond_5
    move-object v2, v0

    .line 123
    :goto_1
    check-cast v2, Lcom/amazon/kindle/krx/content/BookGroupItem;

    if-eqz v2, :cond_9

    .line 124
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_6
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_8

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    move-object v1, p2

    check-cast v1, Lcom/amazon/kindle/krx/content/BookGroupItem;

    .line 61
    invoke-interface {v1}, Lcom/amazon/kindle/krx/content/BookGroupItem;->getPosition()F

    move-result v1

    invoke-interface {v2}, Lcom/amazon/kindle/krx/content/BookGroupItem;->getPosition()F

    move-result v5

    sub-float/2addr v1, v5

    invoke-static {v1}, Lkotlin/math/MathKt;->roundToInt(F)I

    move-result v1

    if-ne v1, v4, :cond_7

    const/4 v1, 0x1

    goto :goto_2

    :cond_7
    const/4 v1, 0x0

    :goto_2
    if-eqz v1, :cond_6

    move-object v0, p2

    .line 125
    :cond_8
    check-cast v0, Lcom/amazon/kindle/krx/content/BookGroupItem;

    :cond_9
    :goto_3
    return-object v0
.end method

.method public getOwnedEpisodeList(Lcom/amazon/kindle/krx/IKindleReaderSDK;Lcom/amazon/kindle/krx/content/IBook;Lcom/amazon/falkor/models/FalkorEpisode;Z)Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kindle/krx/IKindleReaderSDK;",
            "Lcom/amazon/kindle/krx/content/IBook;",
            "Lcom/amazon/falkor/models/FalkorEpisode;",
            "Z)",
            "Ljava/util/Collection<",
            "Lcom/amazon/kindle/krx/content/BookGroupItem;",
            ">;"
        }
    .end annotation

    const-string/jumbo v0, "sdk"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "book"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 74
    invoke-direct {p0, p1, p2, p3}, Lcom/amazon/falkor/utils/BookGroupUtils;->getGroupIdForBook(Lcom/amazon/kindle/krx/IKindleReaderSDK;Lcom/amazon/kindle/krx/content/IBook;Lcom/amazon/falkor/models/FalkorEpisode;)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 76
    invoke-virtual {p0, p1, p2, p4}, Lcom/amazon/falkor/utils/BookGroupUtils;->getOwnedEpisodeListForGroupId(Lcom/amazon/kindle/krx/IKindleReaderSDK;Ljava/lang/String;Z)Ljava/util/Collection;

    move-result-object p1

    return-object p1

    .line 78
    :cond_0
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public getOwnedEpisodeListForGroupId(Lcom/amazon/kindle/krx/IKindleReaderSDK;Ljava/lang/String;Z)Ljava/util/Collection;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kindle/krx/IKindleReaderSDK;",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/Collection<",
            "Lcom/amazon/kindle/krx/content/BookGroupItem;",
            ">;"
        }
    .end annotation

    const-string/jumbo v0, "sdk"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "groupId"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 90
    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getLibraryManager()Lcom/amazon/kindle/krx/library/ILibraryManager;

    move-result-object p1

    invoke-interface {p1, p2}, Lcom/amazon/kindle/krx/library/ILibraryManager;->getGroupFromGroupId(Ljava/lang/String;)Lcom/amazon/kindle/krx/content/BookGroup;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 92
    invoke-interface {p1}, Lcom/amazon/kindle/krx/content/BookGroup;->getGroupItems()Ljava/util/List;

    move-result-object p1

    .line 126
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 127
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/amazon/kindle/krx/content/BookGroupItem;

    if-eqz p3, :cond_2

    .line 94
    invoke-interface {v1}, Lcom/amazon/kindle/krx/content/BookGroupItem;->getBook()Lcom/amazon/kindle/krx/content/IBook;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kindle/krx/content/IBook;->getDownloadState()Lcom/amazon/kindle/krx/content/IBook$DownloadState;

    move-result-object v1

    sget-object v2, Lcom/amazon/kindle/krx/content/IBook$DownloadState;->LOCAL:Lcom/amazon/kindle/krx/content/IBook$DownloadState;

    if-ne v1, v2, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    goto :goto_2

    :cond_2
    :goto_1
    const/4 v1, 0x1

    :goto_2
    if-eqz v1, :cond_0

    invoke-interface {p2, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    return-object p2

    .line 97
    :cond_4
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public final getStoryAsinForEpisode(Lcom/amazon/kindle/krx/content/IBook;Lcom/amazon/kindle/krx/library/ILibraryManager;)Ljava/lang/String;
    .locals 1

    const-string v0, "book"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "libraryManager"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    invoke-interface {p2, p1}, Lcom/amazon/kindle/krx/library/ILibraryManager;->getGroupIdFromItem(Lcom/amazon/kindle/krx/content/IBook;)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 27
    invoke-interface {p2, p1}, Lcom/amazon/kindle/krx/library/ILibraryManager;->parseForAsinFromBookId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    const/16 p2, 0xa

    .line 28
    invoke-static {p1, p2}, Lkotlin/text/StringsKt;->takeLast(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method
