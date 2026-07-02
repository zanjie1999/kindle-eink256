.class public Lcom/amazon/kindle/contentprovider/FileSystemInfoContentProvider;
.super Lcom/amazon/kindle/contentprovider/AbstractContentProvider;
.source "FileSystemInfoContentProvider.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kindle/contentprovider/FileSystemInfoContentProvider$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nFileSystemInfoContentProvider.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FileSystemInfoContentProvider.kt\ncom/amazon/kindle/contentprovider/FileSystemInfoContentProvider\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 FileSystemInfoContentProvider.kt\ncom/amazon/kindle/contentprovider/FileSystemInfoContentProviderKt\n*L\n1#1,172:1\n734#2:173\n825#2,2:174\n167#3,5:176\n*E\n*S KotlinDebug\n*F\n+ 1 FileSystemInfoContentProvider.kt\ncom/amazon/kindle/contentprovider/FileSystemInfoContentProvider\n*L\n148#1:173\n148#1,2:174\n161#1,5:176\n*E\n"
.end annotation


# static fields
.field private static final BOOKS:Ljava/lang/String; = "books"

.field private static final COLUMNS:[Ljava/lang/String;

.field public static final Companion:Lcom/amazon/kindle/contentprovider/FileSystemInfoContentProvider$Companion;

.field private static final DOCS:Ljava/lang/String; = "docs"

.field private static final EXTERNAL:Ljava/lang/String; = "removablestorage"

.field public static final EXTERNAL_BOOKS:I = 0x0

.field public static final EXTERNAL_DOCS:I = 0x4

.field public static final EXTERNAL_NEWSSTAND:I = 0x2

.field private static final FILE_INFO_REQUEST_EVENT:Ljava/lang/String; = "fileSystemInfoRequestLatency"

.field private static final INTERNAL:Ljava/lang/String; = "internalstorage"

.field public static final INTERNAL_BOOKS:I = 0x1

.field public static final INTERNAL_DOCS:I = 0x5

.field public static final INTERNAL_NEWSSTAND:I = 0x3

.field private static final METRIC_ERROR:Ljava/lang/String; = "fileSystemInfoError"

.field private static final METRIC_KEY:Ljava/lang/String; = "fileSystemInfoKey"

.field private static final METRIC_SUCCESS:Ljava/lang/String; = "fileSystemInfoSuccess"

.field private static final NEWSSTAND:Ljava/lang/String; = "newsstand"

.field private static final NO_LIMIT:I = -0x1

.field private static final SIZE:Ljava/lang/String; = "filesize"

.field private static final SLASH:Ljava/lang/String; = "/"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final libraryService:Lcom/amazon/kindle/content/ILibraryService;

.field private matcher:Landroid/content/UriMatcher;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/amazon/kindle/contentprovider/FileSystemInfoContentProvider$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/amazon/kindle/contentprovider/FileSystemInfoContentProvider$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/amazon/kindle/contentprovider/FileSystemInfoContentProvider;->Companion:Lcom/amazon/kindle/contentprovider/FileSystemInfoContentProvider$Companion;

    .line 26
    const-class v0, Lcom/amazon/kindle/contentprovider/FileSystemInfoContentProvider;

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Utils.getTag(FileSystemI\u2026tentProvider::class.java)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v0, Lcom/amazon/kindle/contentprovider/FileSystemInfoContentProvider;->TAG:Ljava/lang/String;

    const-string v0, "fileSize"

    const-string v1, "count"

    .line 44
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kindle/contentprovider/FileSystemInfoContentProvider;->COLUMNS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/amazon/kindle/content/ILibraryService;)V
    .locals 3

    const-string v0, "libraryService"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    invoke-direct {p0}, Lcom/amazon/kindle/contentprovider/AbstractContentProvider;-><init>()V

    iput-object p1, p0, Lcom/amazon/kindle/contentprovider/FileSystemInfoContentProvider;->libraryService:Lcom/amazon/kindle/content/ILibraryService;

    .line 23
    new-instance p1, Landroid/content/UriMatcher;

    const/4 v0, -0x1

    invoke-direct {p1, v0}, Landroid/content/UriMatcher;-><init>(I)V

    iput-object p1, p0, Lcom/amazon/kindle/contentprovider/FileSystemInfoContentProvider;->matcher:Landroid/content/UriMatcher;

    const-string v0, "com.amazon.kindle.bookmetadataprovider"

    const-string v1, "/filesize/books/removablestorage"

    const/4 v2, 0x0

    .line 53
    invoke-virtual {p1, v0, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 54
    iget-object p1, p0, Lcom/amazon/kindle/contentprovider/FileSystemInfoContentProvider;->matcher:Landroid/content/UriMatcher;

    const-string v1, "/filesize/books/internalstorage"

    const/4 v2, 0x1

    invoke-virtual {p1, v0, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 55
    iget-object p1, p0, Lcom/amazon/kindle/contentprovider/FileSystemInfoContentProvider;->matcher:Landroid/content/UriMatcher;

    const-string v1, "/filesize/newsstand/removablestorage"

    const/4 v2, 0x2

    invoke-virtual {p1, v0, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 56
    iget-object p1, p0, Lcom/amazon/kindle/contentprovider/FileSystemInfoContentProvider;->matcher:Landroid/content/UriMatcher;

    const-string v1, "/filesize/newsstand/internalstorage"

    const/4 v2, 0x3

    invoke-virtual {p1, v0, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 57
    iget-object p1, p0, Lcom/amazon/kindle/contentprovider/FileSystemInfoContentProvider;->matcher:Landroid/content/UriMatcher;

    const-string v1, "/filesize/docs/removablestorage"

    const/4 v2, 0x4

    invoke-virtual {p1, v0, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 58
    iget-object p1, p0, Lcom/amazon/kindle/contentprovider/FileSystemInfoContentProvider;->matcher:Landroid/content/UriMatcher;

    const-string v1, "/filesize/docs/internalstorage"

    const/4 v2, 0x5

    invoke-virtual {p1, v0, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public final buildFilterFromQuery$LibraryModule_release(Landroid/net/Uri;)Lcom/amazon/kcp/library/LibraryContentFilter;
    .locals 4

    .line 99
    invoke-virtual {p0, p1}, Lcom/amazon/kindle/contentprovider/FileSystemInfoContentProvider;->internalMatch$LibraryModule_release(Landroid/net/Uri;)I

    move-result p1

    const/4 v0, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_5

    if-eq p1, v1, :cond_4

    if-eq p1, v0, :cond_3

    const/4 v0, 0x3

    if-eq p1, v0, :cond_2

    const/4 v0, 0x4

    if-eq p1, v0, :cond_1

    const/4 v0, 0x5

    if-eq p1, v0, :cond_0

    .line 126
    sget-object p1, Lcom/amazon/kindle/contentprovider/FileSystemInfoContentProvider;->TAG:Ljava/lang/String;

    const-string v0, "did not find match"

    invoke-static {p1, v0}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    goto :goto_0

    .line 119
    :cond_0
    sget-object p1, Lcom/amazon/kindle/contentprovider/FileSystemInfoContentProvider;->TAG:Ljava/lang/String;

    const-string v0, "building query for internal docs size"

    invoke-static {p1, v0}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    sget-object p1, Lcom/amazon/kcp/library/LibraryContentFilter;->DOCS_FILTER:Lcom/amazon/kcp/library/LibraryContentFilter;

    goto :goto_0

    .line 123
    :cond_1
    sget-object p1, Lcom/amazon/kindle/contentprovider/FileSystemInfoContentProvider;->TAG:Ljava/lang/String;

    const-string v0, "building query for external docs size"

    invoke-static {p1, v0}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    sget-object p1, Lcom/amazon/kcp/library/LibraryContentFilter;->DOCS_FILTER:Lcom/amazon/kcp/library/LibraryContentFilter;

    goto :goto_0

    .line 111
    :cond_2
    sget-object p1, Lcom/amazon/kindle/contentprovider/FileSystemInfoContentProvider;->TAG:Ljava/lang/String;

    const-string v0, "building query for internal newsstand size"

    invoke-static {p1, v0}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    sget-object p1, Lcom/amazon/kcp/library/LibraryContentFilter;->NEWSSTAND_FILTER:Lcom/amazon/kcp/library/LibraryContentFilter;

    goto :goto_0

    .line 115
    :cond_3
    sget-object p1, Lcom/amazon/kindle/contentprovider/FileSystemInfoContentProvider;->TAG:Ljava/lang/String;

    const-string v0, "building query for external newsstand size"

    invoke-static {p1, v0}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    sget-object p1, Lcom/amazon/kcp/library/LibraryContentFilter;->NEWSSTAND_FILTER:Lcom/amazon/kcp/library/LibraryContentFilter;

    goto :goto_0

    .line 101
    :cond_4
    sget-object p1, Lcom/amazon/kindle/contentprovider/FileSystemInfoContentProvider;->TAG:Ljava/lang/String;

    const-string v3, "building query for internal books"

    invoke-static {p1, v3}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V

    new-array p1, v0, [Lcom/amazon/kcp/library/LibraryContentFilter;

    .line 102
    sget-object v0, Lcom/amazon/kcp/library/LibraryContentFilter;->BOOKS_FILTER:Lcom/amazon/kcp/library/LibraryContentFilter;

    aput-object v0, p1, v2

    .line 103
    sget-object v0, Lcom/amazon/kcp/library/LibraryContentFilter;->SAMPLES_FILTER:Lcom/amazon/kcp/library/LibraryContentFilter;

    aput-object v0, p1, v1

    .line 102
    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    .line 103
    sget-object v0, Lcom/amazon/kcp/library/LibraryFilterConstraintCombiner$CombinationType;->OR:Lcom/amazon/kcp/library/LibraryFilterConstraintCombiner$CombinationType;

    .line 102
    invoke-static {p1, v0, v2}, Lcom/amazon/kcp/library/LibraryFilterConstraintCombiner;->combine(Ljava/util/List;Lcom/amazon/kcp/library/LibraryFilterConstraintCombiner$CombinationType;Z)Lcom/amazon/kcp/library/LibraryContentFilter;

    move-result-object p1

    goto :goto_0

    .line 106
    :cond_5
    sget-object p1, Lcom/amazon/kindle/contentprovider/FileSystemInfoContentProvider;->TAG:Ljava/lang/String;

    const-string v3, "building query for external books size"

    invoke-static {p1, v3}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V

    new-array p1, v0, [Lcom/amazon/kcp/library/LibraryContentFilter;

    .line 107
    sget-object v0, Lcom/amazon/kcp/library/LibraryContentFilter;->BOOKS_FILTER:Lcom/amazon/kcp/library/LibraryContentFilter;

    aput-object v0, p1, v2

    .line 108
    sget-object v0, Lcom/amazon/kcp/library/LibraryContentFilter;->SAMPLES_FILTER:Lcom/amazon/kcp/library/LibraryContentFilter;

    aput-object v0, p1, v1

    .line 107
    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    .line 108
    sget-object v0, Lcom/amazon/kcp/library/LibraryFilterConstraintCombiner$CombinationType;->OR:Lcom/amazon/kcp/library/LibraryFilterConstraintCombiner$CombinationType;

    .line 107
    invoke-static {p1, v0, v2}, Lcom/amazon/kcp/library/LibraryFilterConstraintCombiner;->combine(Ljava/util/List;Lcom/amazon/kcp/library/LibraryFilterConstraintCombiner$CombinationType;Z)Lcom/amazon/kcp/library/LibraryContentFilter;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public final buildRowForResults$LibraryModule_release(Ljava/util/List;Z)[Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/amazon/kcp/library/ILibraryDisplayItem;",
            ">;Z)[",
            "Ljava/lang/Object;"
        }
    .end annotation

    const-string v0, "books"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 173
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 174
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Lcom/amazon/kcp/library/ILibraryDisplayItem;

    .line 149
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v4

    const-string v5, "Utils.getFactory()"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v4}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getFileSystem()Lcom/amazon/kindle/io/IFileConnectionFactory;

    move-result-object v4

    const-string v5, "Utils.getFactory().fileSystem"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v4}, Lcom/amazon/kindle/io/IFileConnectionFactory;->getPathDescriptor()Lcom/amazon/kindle/io/IPathDescriptor;

    move-result-object v4

    .line 150
    invoke-interface {v3}, Lcom/amazon/kcp/library/ICoverCacheable;->getBookID()Lcom/amazon/kindle/model/content/IBookID;

    move-result-object v5

    const-string v6, "it.bookID"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v5}, Lcom/amazon/kindle/model/content/IBookID;->getType()Lcom/amazon/kcp/library/models/BookType;

    move-result-object v5

    const-string v6, "it.bookID.type"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v5}, Lcom/amazon/kcp/library/models/BookType;->isDocument()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 151
    invoke-interface {v4, v2}, Lcom/amazon/kindle/io/IPathDescriptor;->getDocumentPath(Z)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 153
    :cond_1
    invoke-interface {v3}, Lcom/amazon/kcp/library/ICoverCacheable;->getBookID()Lcom/amazon/kindle/model/content/IBookID;

    move-result-object v2

    invoke-interface {v4, v2}, Lcom/amazon/kindle/io/IPathDescriptor;->getBookPath(Lcom/amazon/kindle/model/content/IBookID;)Ljava/lang/String;

    move-result-object v2

    :goto_1
    if-eqz p2, :cond_2

    .line 156
    invoke-interface {v4, v2}, Lcom/amazon/kindle/io/IPathDescriptor;->isPathInExternalSDCard(Ljava/lang/String;)Z

    move-result v2

    goto :goto_2

    .line 158
    :cond_2
    invoke-interface {v4, v2}, Lcom/amazon/kindle/io/IPathDescriptor;->isPathInExternalPrimaryStorage(Ljava/lang/String;)Z

    move-result v2

    :goto_2
    if-eqz v2, :cond_0

    .line 155
    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    const-wide/16 p1, 0x0

    .line 177
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 178
    check-cast v3, Lcom/amazon/kcp/library/ILibraryDisplayItem;

    .line 161
    invoke-interface {v3}, Lcom/amazon/kcp/library/ILibraryDisplayItem;->getSize()J

    move-result-wide v3

    add-long/2addr p1, v3

    goto :goto_3

    :cond_4
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    .line 162
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    aput-object p1, v1, v2

    const/4 p1, 0x1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v1, p1

    return-object v1
.end method

.method public final combineContentWithDownloadFilter$LibraryModule_release(Lcom/amazon/kcp/library/LibraryContentFilter;)Lcom/amazon/kcp/library/LibraryContentFilter;
    .locals 3

    const-string v0, "contentFilter"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/amazon/kcp/library/LibraryContentFilter;

    .line 144
    sget-object v1, Lcom/amazon/kcp/library/LibraryContentFilter;->NON_GROUP_DOWNLOADED_FILTER:Lcom/amazon/kcp/library/LibraryContentFilter;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v1, 0x1

    aput-object p1, v0, v1

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    .line 145
    sget-object v0, Lcom/amazon/kcp/library/LibraryFilterConstraintCombiner$CombinationType;->AND:Lcom/amazon/kcp/library/LibraryFilterConstraintCombiner$CombinationType;

    .line 144
    invoke-static {p1, v0, v2}, Lcom/amazon/kcp/library/LibraryFilterConstraintCombiner;->combine(Ljava/util/List;Lcom/amazon/kcp/library/LibraryFilterConstraintCombiner$CombinationType;Z)Lcom/amazon/kcp/library/LibraryContentFilter;

    move-result-object p1

    return-object p1
.end method

.method public final getBookList$LibraryModule_release(Lcom/amazon/kcp/library/LibraryContentFilter;)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kcp/library/LibraryContentFilter;",
            ")",
            "Ljava/util/List<",
            "Lcom/amazon/kcp/library/ILibraryDisplayItem;",
            ">;"
        }
    .end annotation

    const-string v0, "downloadedContentFilter"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 139
    iget-object v1, p0, Lcom/amazon/kindle/contentprovider/FileSystemInfoContentProvider;->libraryService:Lcom/amazon/kindle/content/ILibraryService;

    .line 140
    sget-object v2, Lcom/amazon/kindle/krx/library/LibraryGroupType;->DEVICE:Lcom/amazon/kindle/krx/library/LibraryGroupType;

    sget-object v4, Lcom/amazon/kcp/library/LibrarySortType;->SORT_TYPE_RECENT:Lcom/amazon/kcp/library/LibrarySortType;

    const/4 v5, -0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v3, p1

    .line 139
    invoke-static/range {v1 .. v7}, Lcom/amazon/kcp/library/LibraryCursorFactory;->loadLibraryItemsWithoutCachingResult(Lcom/amazon/kindle/content/ILibraryService;Lcom/amazon/kindle/krx/library/LibraryGroupType;Lcom/amazon/kcp/library/LibraryContentFilter;Lcom/amazon/kcp/library/LibrarySortType;ILjava/lang/String;Lcom/amazon/kcp/library/ILibraryItemQuery;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public final internalMatch$LibraryModule_release(Landroid/net/Uri;)I
    .locals 1

    .line 134
    iget-object v0, p0, Lcom/amazon/kindle/contentprovider/FileSystemInfoContentProvider;->matcher:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result p1

    return p1
.end method

.method public matches(Landroid/net/Uri;)Z
    .locals 1

    .line 136
    iget-object v0, p0, Lcom/amazon/kindle/contentprovider/FileSystemInfoContentProvider;->matcher:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result p1

    if-gez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x5

    if-lt v0, p1, :cond_1

    const/4 p1, 0x1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    :goto_1
    return p1
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 4

    const-string/jumbo p2, "uri"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 67
    new-instance p2, Landroid/database/MatrixCursor;

    sget-object p3, Lcom/amazon/kindle/contentprovider/FileSystemInfoContentProvider;->COLUMNS:[Ljava/lang/String;

    invoke-direct {p2, p3}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 68
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object p3

    const/4 p4, 0x2

    const/4 p5, 0x0

    const/4 v0, 0x0

    if-eqz p3, :cond_0

    const-string v1, "removablestorage"

    invoke-static {p3, v1, p5, p4, v0}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result p3

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    .line 69
    :goto_0
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    const-string v2, "internalstorage"

    invoke-static {v1, v2, p5, p4, v0}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result p5

    :cond_1
    const-string p4, "fileSystemInfoError"

    if-nez p3, :cond_2

    if-nez p5, :cond_2

    .line 71
    sget-object p1, Lcom/amazon/kindle/contentprovider/FileSystemInfoContentProvider;->TAG:Ljava/lang/String;

    const-string p2, "Query does not contain internal or external flag"

    invoke-static {p1, p2}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object p1

    sget-object p2, Lcom/amazon/kindle/contentprovider/FileSystemInfoContentProvider;->TAG:Ljava/lang/String;

    invoke-virtual {p1, p2, p4}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 75
    :cond_2
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object p5

    const-string v1, "fileSystemInfoKey"

    invoke-virtual {p5, v1}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->startMetricTimer(Ljava/lang/String;)V

    .line 76
    invoke-virtual {p0, p1}, Lcom/amazon/kindle/contentprovider/FileSystemInfoContentProvider;->buildFilterFromQuery$LibraryModule_release(Landroid/net/Uri;)Lcom/amazon/kcp/library/LibraryContentFilter;

    move-result-object p1

    if-nez p1, :cond_3

    .line 78
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object p1

    sget-object p2, Lcom/amazon/kindle/contentprovider/FileSystemInfoContentProvider;->TAG:Ljava/lang/String;

    invoke-virtual {p1, p2, p4}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 81
    :cond_3
    invoke-virtual {p0, p1}, Lcom/amazon/kindle/contentprovider/FileSystemInfoContentProvider;->combineContentWithDownloadFilter$LibraryModule_release(Lcom/amazon/kcp/library/LibraryContentFilter;)Lcom/amazon/kcp/library/LibraryContentFilter;

    move-result-object p1

    if-nez p1, :cond_4

    .line 83
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object p1

    sget-object p2, Lcom/amazon/kindle/contentprovider/FileSystemInfoContentProvider;->TAG:Ljava/lang/String;

    invoke-virtual {p1, p2, p4}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 86
    :cond_4
    invoke-virtual {p0, p1}, Lcom/amazon/kindle/contentprovider/FileSystemInfoContentProvider;->getBookList$LibraryModule_release(Lcom/amazon/kcp/library/LibraryContentFilter;)Ljava/util/List;

    move-result-object p1

    .line 87
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object p5

    sget-object v2, Lcom/amazon/kindle/contentprovider/FileSystemInfoContentProvider;->TAG:Ljava/lang/String;

    const-string v3, "fileSystemInfoRequestLatency"

    invoke-virtual {p5, v2, v3, v1}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->stopMetricTimer(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_6

    .line 88
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p5

    if-eqz p5, :cond_5

    goto :goto_1

    .line 92
    :cond_5
    invoke-virtual {p0, p1, p3}, Lcom/amazon/kindle/contentprovider/FileSystemInfoContentProvider;->buildRowForResults$LibraryModule_release(Ljava/util/List;Z)[Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 93
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object p1

    sget-object p3, Lcom/amazon/kindle/contentprovider/FileSystemInfoContentProvider;->TAG:Ljava/lang/String;

    const-string p4, "fileSystemInfoSuccess"

    invoke-virtual {p1, p3, p4}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;)V

    return-object p2

    .line 89
    :cond_6
    :goto_1
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object p1

    sget-object p2, Lcom/amazon/kindle/contentprovider/FileSystemInfoContentProvider;->TAG:Ljava/lang/String;

    invoke-virtual {p1, p2, p4}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method
