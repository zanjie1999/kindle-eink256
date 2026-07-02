.class public Lcom/amazon/kindle/modules/KRF4ContentModule;
.super Ljava/lang/Object;
.source "KRF4ContentModule.java"

# interfaces
.implements Lcom/amazon/kindle/config/Module;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kindle/modules/KRF4ContentModule$BookDeletionHandler;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private bookDeletionHandler:Lcom/amazon/kindle/modules/KRF4ContentModule$BookDeletionHandler;

.field private cacheDir:Ljava/io/File;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 57
    const-class v0, Lcom/amazon/kindle/modules/KRF4ContentModule;

    invoke-static {v0}, Lcom/amazon/kindle/log/Log;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kindle/modules/KRF4ContentModule;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 58
    iput-object v0, p0, Lcom/amazon/kindle/modules/KRF4ContentModule;->bookDeletionHandler:Lcom/amazon/kindle/modules/KRF4ContentModule$BookDeletionHandler;

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 55
    sget-object v0, Lcom/amazon/kindle/modules/KRF4ContentModule;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 55
    invoke-static {p0, p1, p2}, Lcom/amazon/kindle/modules/KRF4ContentModule;->deleteFilesMatching(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static deleteFilesMatching(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 183
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Wanting to delete thumbnails for "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 184
    new-instance p2, Lcom/amazon/kindle/modules/KRF4ContentModule$2;

    invoke-direct {p2, p0, p1}, Lcom/amazon/kindle/modules/KRF4ContentModule$2;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 192
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Preparing to delete "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length p2, p0

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " thumbnails"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 193
    array-length p1, p0

    const/4 p2, 0x0

    :goto_0
    if-ge p2, p1, :cond_0

    aget-object v0, p0, p2

    .line 194
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public getDependentModules()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    const-string v0, "krf4"

    return-object v0
.end method

.method protected getSupportedExtension()Ljava/util/Collection;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, ".prc"

    const-string v1, ".pdb"

    const-string v2, ".azw"

    const-string v3, ".azw1"

    const-string v4, ".mobi"

    const-string v5, ".tpz"

    const-string v6, ".azw3"

    .line 111
    filled-new-array/range {v0 .. v6}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public initialize(Landroid/content/Context;)V
    .locals 8

    .line 63
    invoke-static {}, Lcom/amazon/kindle/content/loader/LocalContentFactory;->getInstance()Lcom/amazon/kindle/content/loader/ILocalContentFactory;

    move-result-object v0

    .line 64
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v1

    .line 65
    invoke-interface {v1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getReaderController()Lcom/amazon/kcp/reader/IReaderController;

    move-result-object v2

    .line 66
    invoke-interface {v1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getFileSystem()Lcom/amazon/kindle/io/IFileConnectionFactory;

    move-result-object v3

    .line 67
    invoke-interface {v1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getLocalStorage()Lcom/amazon/kcp/application/ILocalStorage;

    move-result-object v1

    .line 69
    new-instance v4, Lcom/amazon/kcp/library/models/BookFileEnumerator;

    invoke-direct {v4, v3}, Lcom/amazon/kcp/library/models/BookFileEnumerator;-><init>(Lcom/amazon/kindle/io/IFileConnectionFactory;)V

    .line 72
    invoke-virtual {p0}, Lcom/amazon/kindle/modules/KRF4ContentModule;->getSupportedExtension()Ljava/util/Collection;

    move-result-object v5

    invoke-static {v5}, Lcom/amazon/kindle/content/loader/MobiContentLoader;->addSupportedExtensions(Ljava/util/Collection;)V

    .line 73
    new-instance v5, Lcom/amazon/kindle/content/loader/MobiContentLoader;

    new-instance v6, Lcom/amazon/kcp/library/models/internal/LibraryCachedKRFBookBuilder;

    const/4 v7, 0x0

    invoke-direct {v6, v3, v7, v1}, Lcom/amazon/kcp/library/models/internal/LibraryCachedKRFBookBuilder;-><init>(Lcom/amazon/kindle/io/IFileConnectionFactory;Lcom/amazon/system/security/Security;Lcom/amazon/kcp/application/ILocalStorage;)V

    invoke-direct {v5, v6, v4}, Lcom/amazon/kindle/content/loader/MobiContentLoader;-><init>(Lcom/amazon/kcp/library/models/internal/ILibraryCachedBookBuilder;Lcom/amazon/kcp/library/models/BookFileEnumerator;)V

    invoke-interface {v0, v5}, Lcom/amazon/kindle/content/loader/ILocalContentFactory;->register(Lcom/amazon/kindle/content/loader/IContentLoader;)V

    .line 80
    new-instance v5, Lcom/amazon/kindle/content/loader/PdfContentLoader;

    new-instance v6, Lcom/amazon/kcp/library/models/internal/LibraryCachedPDFBookBuilder;

    invoke-direct {v6, v3, v1}, Lcom/amazon/kcp/library/models/internal/LibraryCachedPDFBookBuilder;-><init>(Lcom/amazon/kindle/io/IFileConnectionFactory;Lcom/amazon/kcp/application/ILocalStorage;)V

    invoke-direct {v5, v6, v4}, Lcom/amazon/kindle/content/loader/PdfContentLoader;-><init>(Lcom/amazon/kcp/library/models/internal/ILibraryCachedBookBuilder;Lcom/amazon/kcp/library/models/BookFileEnumerator;)V

    invoke-interface {v0, v5}, Lcom/amazon/kindle/content/loader/ILocalContentFactory;->register(Lcom/amazon/kindle/content/loader/IContentLoader;)V

    .line 83
    new-instance v5, Lcom/amazon/kcp/application/PDFActivityFactory;

    invoke-direct {v5}, Lcom/amazon/kcp/application/PDFActivityFactory;-><init>()V

    invoke-interface {v2, v5}, Lcom/amazon/kcp/reader/IReaderController;->registerActivityFactory(Lcom/amazon/kcp/application/ActivityFactory;)V

    const-string v5, ".mop"

    const-string v6, ".azw4"

    .line 86
    filled-new-array {v5, v6}, [Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-static {v5}, Lcom/amazon/kindle/content/loader/MopContentLoader;->addSupportedExtensions(Ljava/util/Collection;)V

    .line 88
    new-instance v5, Lcom/amazon/kindle/content/loader/MopContentLoader;

    new-instance v6, Lcom/amazon/kcp/library/models/internal/LibraryCachedMOPBookBuilder;

    invoke-direct {v6, v3, v7, v1}, Lcom/amazon/kcp/library/models/internal/LibraryCachedMOPBookBuilder;-><init>(Lcom/amazon/kindle/io/IFileConnectionFactory;Lcom/amazon/system/security/Security;Lcom/amazon/kcp/application/ILocalStorage;)V

    invoke-direct {v5, v6, v4}, Lcom/amazon/kindle/content/loader/MopContentLoader;-><init>(Lcom/amazon/kcp/library/models/internal/ILibraryCachedBookBuilder;Lcom/amazon/kcp/library/models/BookFileEnumerator;)V

    invoke-interface {v0, v5}, Lcom/amazon/kindle/content/loader/ILocalContentFactory;->register(Lcom/amazon/kindle/content/loader/IContentLoader;)V

    .line 91
    new-instance v0, Lcom/amazon/kcp/application/MopActivityFactory;

    invoke-direct {v0}, Lcom/amazon/kcp/application/MopActivityFactory;-><init>()V

    invoke-interface {v2, v0}, Lcom/amazon/kcp/reader/IReaderController;->registerActivityFactory(Lcom/amazon/kcp/application/ActivityFactory;)V

    .line 93
    new-instance v0, Lcom/amazon/kindle/modules/KRF4ContentModule$BookDeletionHandler;

    invoke-virtual {p1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/amazon/kindle/modules/KRF4ContentModule$BookDeletionHandler;-><init>(Ljava/io/File;)V

    iput-object v0, p0, Lcom/amazon/kindle/modules/KRF4ContentModule;->bookDeletionHandler:Lcom/amazon/kindle/modules/KRF4ContentModule$BookDeletionHandler;

    .line 95
    invoke-static {p1}, Lcom/amazon/kcp/reader/ui/BookLayoutFactory;->getInstance(Landroid/content/Context;)Lcom/amazon/kcp/reader/ui/BookLayoutFactory;

    move-result-object v0

    new-instance v1, Lcom/amazon/kindle/modules/KRF4ContentModule$1;

    invoke-direct {v1, p0}, Lcom/amazon/kindle/modules/KRF4ContentModule$1;-><init>(Lcom/amazon/kindle/modules/KRF4ContentModule;)V

    invoke-virtual {v0, v1}, Lcom/amazon/kcp/reader/ui/BookLayoutFactory;->addLayoutProvider(Lcom/amazon/kcp/reader/ui/IBookLayoutProvider;)V

    .line 104
    invoke-static {}, Lcom/amazon/kcp/reader/ui/ThumbnailScrubberLayoutDecorator;->instance()Lcom/amazon/kcp/reader/ui/ThumbnailScrubberLayoutDecorator;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/amazon/kcp/reader/ui/ThumbnailScrubberLayoutDecorator;->register(Landroid/content/Context;)V

    .line 105
    invoke-virtual {p1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kindle/modules/KRF4ContentModule;->cacheDir:Ljava/io/File;

    .line 106
    invoke-static {}, Lcom/amazon/kindle/services/events/PubSubMessageService;->getInstance()Lcom/amazon/kindle/krx/events/IPubSubEventsManager;

    move-result-object p1

    invoke-interface {p1, p0}, Lcom/amazon/kindle/krx/events/IPubSubEventsManager;->subscribe(Ljava/lang/Object;)V

    return-void
.end method

.method public onContentDelete(Lcom/amazon/kindle/content/ContentDelete;)V
    .locals 3
    .annotation runtime Lcom/amazon/kindle/krx/events/Subscriber;
        topic = "CONTENT_DELETE"
    .end annotation

    .line 170
    invoke-virtual {p1}, Lcom/amazon/kindle/content/ContentDelete;->getBookIds()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, ">"

    .line 171
    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 172
    array-length v1, v0

    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    .line 173
    sget-object v0, Lcom/amazon/kindle/modules/KRF4ContentModule;->TAG:Ljava/lang/String;

    const-string v1, "Book ID is not composed of three \'>\'-separated parts, declining to delete thumbnails"

    invoke-static {v0, v1}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    .line 175
    aget-object v0, v0, v1

    .line 176
    invoke-static {v0}, Lcom/amazon/kcp/reader/ui/AbstractImageCache;->createThumbnailCachePrefixFromFilename(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 177
    iget-object v1, p0, Lcom/amazon/kindle/modules/KRF4ContentModule;->cacheDir:Ljava/io/File;

    const-string v2, "_bitmap.jpg"

    invoke-static {v1, v0, v2}, Lcom/amazon/kindle/modules/KRF4ContentModule;->deleteFilesMatching(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    return-void
.end method
