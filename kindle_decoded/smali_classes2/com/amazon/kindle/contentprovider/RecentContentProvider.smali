.class public Lcom/amazon/kindle/contentprovider/RecentContentProvider;
.super Lcom/amazon/kindle/contentprovider/AbstractContentProvider;
.source "RecentContentProvider.java"


# static fields
.field private static final RECENT_LIST_MATCH:I = 0x2

.field private static final URI_MATCHER:Landroid/content/UriMatcher;


# instance fields
.field private libraryService:Lcom/amazon/kindle/content/ILibraryService;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 30
    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    sput-object v0, Lcom/amazon/kindle/contentprovider/RecentContentProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    return-void
.end method

.method public constructor <init>(Lcom/amazon/kindle/content/ILibraryService;)V
    .locals 1

    .line 32
    invoke-direct {p0}, Lcom/amazon/kindle/contentprovider/AbstractContentProvider;-><init>()V

    if-eqz p1, :cond_0

    .line 36
    iput-object p1, p0, Lcom/amazon/kindle/contentprovider/RecentContentProvider;->libraryService:Lcom/amazon/kindle/content/ILibraryService;

    return-void

    .line 34
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Library service cannot be null!"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
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

    .line 75
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

    .line 80
    invoke-virtual {p1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 81
    sget-object v1, Lcom/amazon/kindle/contentprovider/RecentContentProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    invoke-virtual {v1, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result p1

    const/4 v1, 0x2

    if-ne p1, v1, :cond_0

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 1

    const-string p2, "limit"

    .line 42
    invoke-virtual {p1, p2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 47
    iget-object p2, p0, Lcom/amazon/kindle/contentprovider/RecentContentProvider;->libraryService:Lcom/amazon/kindle/content/ILibraryService;

    invoke-interface {p2}, Lcom/amazon/kindle/content/ILibraryService;->getUserId()Ljava/lang/String;

    move-result-object p5

    new-instance v0, Lcom/amazon/kindle/contentprovider/RecentContentProvider$1;

    invoke-direct {v0, p0, p3, p4, p1}, Lcom/amazon/kindle/contentprovider/RecentContentProvider$1;-><init>(Lcom/amazon/kindle/contentprovider/RecentContentProvider;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p2, p5, v0}, Lcom/amazon/kindle/content/ILibraryService;->listContent(Ljava/lang/String;Lcom/amazon/kindle/content/filter/SQLQueryFilter;)Ljava/util/Collection;

    move-result-object p1

    const/4 p2, 0x0

    .line 70
    invoke-virtual {p0, p1, p2}, Lcom/amazon/kindle/contentprovider/AbstractContentProvider;->getExternalCursor(Ljava/util/Collection;Z)Landroid/database/Cursor;

    move-result-object p1

    return-object p1
.end method
