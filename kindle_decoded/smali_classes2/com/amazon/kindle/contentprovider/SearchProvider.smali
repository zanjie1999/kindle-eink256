.class public Lcom/amazon/kindle/contentprovider/SearchProvider;
.super Lcom/amazon/kindle/contentprovider/AbstractContentProvider;
.source "SearchProvider.java"


# static fields
.field private static final RECENT_LIST_MATCH:I = 0x2

.field private static final SEARCH_QUERY:Ljava/lang/String; = "( title LIKE ? OR author LIKE ? )"

.field private static final URI_MATCHER:Landroid/content/UriMatcher;


# instance fields
.field private final libraryService:Lcom/amazon/kindle/content/ILibraryService;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 34
    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    sput-object v0, Lcom/amazon/kindle/contentprovider/SearchProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    return-void
.end method

.method public constructor <init>(Lcom/amazon/kindle/content/ILibraryService;)V
    .locals 3

    .line 40
    invoke-direct {p0}, Lcom/amazon/kindle/contentprovider/AbstractContentProvider;-><init>()V

    .line 41
    iput-object p1, p0, Lcom/amazon/kindle/contentprovider/SearchProvider;->libraryService:Lcom/amazon/kindle/content/ILibraryService;

    .line 45
    sget-object p1, Lcom/amazon/kindle/contentprovider/SearchProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v0, "com.amazon.kindle.bookmetadataprovider"

    const-string v1, "item"

    const/4 v2, 0x2

    invoke-virtual {p1, v0, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method protected getFilters()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/amazon/kindle/content/filter/ContentMetadataFilter;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/amazon/kindle/content/filter/ContentMetadataFilter;

    .line 105
    new-instance v1, Lcom/amazon/kindle/content/filter/OwnedContentFilter;

    invoke-direct {v1}, Lcom/amazon/kindle/content/filter/OwnedContentFilter;-><init>()V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    new-instance v1, Lcom/amazon/kindle/content/filter/ExcludeDictionariesFilter;

    invoke-direct {v1}, Lcom/amazon/kindle/content/filter/ExcludeDictionariesFilter;-><init>()V

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public matches(Landroid/net/Uri;)Z
    .locals 2

    const-string v0, "search_query"

    .line 110
    invoke-virtual {p1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 111
    sget-object v1, Lcom/amazon/kindle/contentprovider/SearchProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    invoke-virtual {v1, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result p1

    const/4 v1, 0x2

    if-ne p1, v1, :cond_0

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 6

    .line 52
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 53
    invoke-static {p3}, Lcom/amazon/kcp/util/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_0

    .line 54
    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    :cond_0
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    if-eqz p4, :cond_1

    .line 58
    array-length p2, p4

    if-lez p2, :cond_1

    .line 59
    invoke-static {p4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    invoke-interface {v4, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_1
    const-string p2, "search_query"

    .line 62
    invoke-virtual {p1, p2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 63
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p4

    if-nez p4, :cond_3

    .line 64
    invoke-static {p3}, Lcom/amazon/kcp/util/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result p3

    if-nez p3, :cond_2

    const-string p3, " AND "

    .line 65
    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    const-string p3, "( title LIKE ? OR author LIKE ? )"

    .line 67
    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "%"

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 70
    invoke-interface {v4, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 71
    invoke-interface {v4, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    const-string p2, "limit"

    .line 74
    invoke-virtual {p1, p2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 76
    iget-object p1, p0, Lcom/amazon/kindle/contentprovider/SearchProvider;->libraryService:Lcom/amazon/kindle/content/ILibraryService;

    .line 77
    invoke-interface {p1}, Lcom/amazon/kindle/content/ILibraryService;->getUserId()Ljava/lang/String;

    move-result-object p2

    new-instance p3, Lcom/amazon/kindle/contentprovider/SearchProvider$1;

    move-object v0, p3

    move-object v1, p0

    move-object v2, p5

    invoke-direct/range {v0 .. v5}, Lcom/amazon/kindle/contentprovider/SearchProvider$1;-><init>(Lcom/amazon/kindle/contentprovider/SearchProvider;Ljava/lang/String;Ljava/lang/StringBuilder;Ljava/util/List;Ljava/lang/String;)V

    .line 76
    invoke-interface {p1, p2, p3}, Lcom/amazon/kindle/content/ILibraryService;->listContent(Ljava/lang/String;Lcom/amazon/kindle/content/filter/SQLQueryFilter;)Ljava/util/Collection;

    move-result-object p1

    const/4 p2, 0x0

    .line 100
    invoke-virtual {p0, p1, p2}, Lcom/amazon/kindle/contentprovider/AbstractContentProvider;->getExternalCursor(Ljava/util/Collection;Z)Landroid/database/Cursor;

    move-result-object p1

    return-object p1
.end method
