.class public Lcom/amazon/kcp/util/ReddingUriMatcher;
.super Ljava/lang/Object;
.source "ReddingUriMatcher.java"


# static fields
.field private static final CAMPAIGN_ITEM_MATCH:I = 0x7

.field private static final CAMPAIGN_LIST_MATCH:I = 0x6

.field private static final ITEM_MATCH:I = 0x1

.field private static final PREVIEW_MATCH:I = 0x4

.field private static final RECENT_LIST_MATCH:I = 0x2

.field private static final TAG:Ljava/lang/String;

.field private static final THUMBNAIL_MATCH:I = 0x3

.field private static final URI_MATCHER:Landroid/content/UriMatcher;


# instance fields
.field private final coverService:Lcom/amazon/kindle/cover/ICoverImageService;

.field private final libraryService:Lcom/amazon/kindle/content/ILibraryService;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 28
    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    sput-object v0, Lcom/amazon/kcp/util/ReddingUriMatcher;->URI_MATCHER:Landroid/content/UriMatcher;

    .line 29
    const-class v0, Lcom/amazon/kcp/util/ReddingUriMatcher;

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kcp/util/ReddingUriMatcher;->TAG:Ljava/lang/String;

    .line 42
    sget-object v0, Lcom/amazon/kcp/util/ReddingUriMatcher;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.amazon.kindle.bookmetadataprovider"

    const-string v2, "item"

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 48
    sget-object v0, Lcom/amazon/kcp/util/ReddingUriMatcher;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v2, "item/*"

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 54
    sget-object v0, Lcom/amazon/kcp/util/ReddingUriMatcher;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v2, "thumbnail/*"

    const/4 v3, 0x3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 60
    sget-object v0, Lcom/amazon/kcp/util/ReddingUriMatcher;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v2, "preview/*"

    const/4 v3, 0x4

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 66
    sget-object v0, Lcom/amazon/kcp/util/ReddingUriMatcher;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v2, "campaign"

    const/4 v3, 0x6

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 72
    sget-object v0, Lcom/amazon/kcp/util/ReddingUriMatcher;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v2, "campaign/*"

    const/4 v3, 0x7

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public constructor <init>(Lcom/amazon/kindle/cover/ICoverImageService;Lcom/amazon/kindle/content/ILibraryService;)V
    .locals 0

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    iput-object p1, p0, Lcom/amazon/kcp/util/ReddingUriMatcher;->coverService:Lcom/amazon/kindle/cover/ICoverImageService;

    .line 81
    iput-object p2, p0, Lcom/amazon/kcp/util/ReddingUriMatcher;->libraryService:Lcom/amazon/kindle/content/ILibraryService;

    return-void
.end method


# virtual methods
.method public matchForContentProvider(Landroid/net/Uri;)Landroid/content/ContentProvider;
    .locals 3

    .line 93
    const-class v0, Lcom/amazon/kindle/contentprovider/ILibraryContentProviderProvider;

    invoke-static {v0}, Lcom/amazon/discovery/UniqueDiscovery;->of(Ljava/lang/Class;)Lcom/amazon/discovery/UniqueDiscovery;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/discovery/UniqueDiscovery;->value()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kindle/contentprovider/ILibraryContentProviderProvider;

    if-eqz v0, :cond_1

    .line 95
    iget-object v1, p0, Lcom/amazon/kcp/util/ReddingUriMatcher;->libraryService:Lcom/amazon/kindle/content/ILibraryService;

    invoke-interface {v0, v1}, Lcom/amazon/kindle/contentprovider/ILibraryContentProviderProvider;->getContentProviders(Lcom/amazon/kindle/content/ILibraryService;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/kindle/contentprovider/AbstractContentProvider;

    .line 96
    invoke-virtual {v1, p1}, Lcom/amazon/kindle/contentprovider/AbstractContentProvider;->matches(Landroid/net/Uri;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    .line 101
    :cond_1
    sget-object v0, Lcom/amazon/kcp/util/ReddingUriMatcher;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ReddingUriMatcher can\'t find provider for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/amazon/kindle/log/Log;->warn(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public matchForCoverLocation(Landroid/net/Uri;)Ljava/lang/String;
    .locals 4

    .line 148
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 149
    iget-object v2, p0, Lcom/amazon/kcp/util/ReddingUriMatcher;->libraryService:Lcom/amazon/kindle/content/ILibraryService;

    invoke-interface {v2}, Lcom/amazon/kindle/content/ILibraryService;->getUserId()Ljava/lang/String;

    move-result-object v2

    .line 150
    iget-object v3, p0, Lcom/amazon/kcp/util/ReddingUriMatcher;->libraryService:Lcom/amazon/kindle/content/ILibraryService;

    invoke-interface {v3, v0, v2}, Lcom/amazon/kindle/content/ILibraryService;->getContentMetadata(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/kindle/content/ContentMetadata;

    move-result-object v2

    if-nez v2, :cond_0

    .line 154
    iget-object v2, p0, Lcom/amazon/kcp/util/ReddingUriMatcher;->libraryService:Lcom/amazon/kindle/content/ILibraryService;

    const-string v3, "CAMPAIGN_MASTER"

    invoke-interface {v2, v0, v3}, Lcom/amazon/kindle/content/ILibraryService;->getContentMetadata(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/kindle/content/ContentMetadata;

    move-result-object v2

    .line 157
    :cond_0
    sget-object v0, Lcom/amazon/kcp/util/ReddingUriMatcher;->URI_MATCHER:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    const/4 v3, 0x3

    if-eq v0, v3, :cond_2

    const/4 v3, 0x4

    if-eq v0, v3, :cond_1

    .line 165
    sget-object v0, Lcom/amazon/kcp/util/ReddingUriMatcher;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ReddingUriMatcher can\'t find a cover location for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 166
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 165
    invoke-static {v0, p1}, Lcom/amazon/kindle/log/Log;->warn(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1

    .line 160
    :cond_1
    iget-object p1, p0, Lcom/amazon/kcp/util/ReddingUriMatcher;->coverService:Lcom/amazon/kindle/cover/ICoverImageService;

    sget-object v0, Lcom/amazon/kindle/cover/ImageSizes$Type;->MEDIUM:Lcom/amazon/kindle/cover/ImageSizes$Type;

    invoke-interface {p1, v2, v0, v1}, Lcom/amazon/kindle/cover/ICoverImageService;->getImage(Lcom/amazon/kindle/model/content/IListableBook;Lcom/amazon/kindle/cover/ImageSizes$Type;Z)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 163
    :cond_2
    iget-object p1, p0, Lcom/amazon/kcp/util/ReddingUriMatcher;->coverService:Lcom/amazon/kindle/cover/ICoverImageService;

    sget-object v0, Lcom/amazon/kindle/cover/ImageSizes$Type;->SMALL:Lcom/amazon/kindle/cover/ImageSizes$Type;

    invoke-interface {p1, v2, v0, v1}, Lcom/amazon/kindle/cover/ICoverImageService;->getImage(Lcom/amazon/kindle/model/content/IListableBook;Lcom/amazon/kindle/cover/ImageSizes$Type;Z)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public matchForType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 3

    .line 113
    sget-object v0, Lcom/amazon/kcp/util/ReddingUriMatcher;->URI_MATCHER:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_4

    const/4 v1, 0x2

    const-string/jumbo v2, "vnd.android.cursor.dir/vnd.amazon.kindlecontent"

    if-eq v0, v1, :cond_3

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    const/4 v1, 0x4

    if-eq v0, v1, :cond_2

    const/4 v1, 0x6

    if-eq v0, v1, :cond_3

    const/4 v1, 0x7

    if-eq v0, v1, :cond_4

    .line 124
    const-class v0, Lcom/amazon/kindle/contentprovider/ILibraryContentProviderProvider;

    invoke-static {v0}, Lcom/amazon/discovery/UniqueDiscovery;->of(Ljava/lang/Class;)Lcom/amazon/discovery/UniqueDiscovery;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/discovery/UniqueDiscovery;->value()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kindle/contentprovider/ILibraryContentProviderProvider;

    if-eqz v0, :cond_1

    .line 126
    iget-object v1, p0, Lcom/amazon/kcp/util/ReddingUriMatcher;->libraryService:Lcom/amazon/kindle/content/ILibraryService;

    invoke-interface {v0, v1}, Lcom/amazon/kindle/contentprovider/ILibraryContentProviderProvider;->getContentProviders(Lcom/amazon/kindle/content/ILibraryService;)Ljava/util/List;

    .line 127
    iget-object v1, p0, Lcom/amazon/kcp/util/ReddingUriMatcher;->libraryService:Lcom/amazon/kindle/content/ILibraryService;

    invoke-interface {v0, v1}, Lcom/amazon/kindle/contentprovider/ILibraryContentProviderProvider;->getContentProviders(Lcom/amazon/kindle/content/ILibraryService;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/kindle/contentprovider/AbstractContentProvider;

    .line 128
    invoke-virtual {v1, p1}, Lcom/amazon/kindle/contentprovider/AbstractContentProvider;->matches(Landroid/net/Uri;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v2

    .line 133
    :cond_1
    sget-object v0, Lcom/amazon/kcp/util/ReddingUriMatcher;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ReddingUriMatcher can\'t a type for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/amazon/kindle/log/Log;->warn(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1

    :cond_2
    const-string p1, "image/png"

    return-object p1

    :cond_3
    return-object v2

    :cond_4
    const-string/jumbo p1, "vnd.android.cursor.item/vnd.amazon.kindlecontent"

    return-object p1
.end method
