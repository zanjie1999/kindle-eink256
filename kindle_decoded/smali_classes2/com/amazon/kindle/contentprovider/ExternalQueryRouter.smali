.class public Lcom/amazon/kindle/contentprovider/ExternalQueryRouter;
.super Lcom/amazon/kindle/contentprovider/AbstractContentProvider;
.source "ExternalQueryRouter.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private matcher:Lcom/amazon/kcp/util/ReddingUriMatcher;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 27
    const-class v0, Lcom/amazon/kindle/contentprovider/ExternalQueryRouter;

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kindle/contentprovider/ExternalQueryRouter;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Lcom/amazon/kindle/contentprovider/AbstractContentProvider;-><init>()V

    return-void
.end method

.method private declared-synchronized getMatcher()Lcom/amazon/kcp/util/ReddingUriMatcher;
    .locals 3

    monitor-enter p0

    .line 48
    :try_start_0
    iget-object v0, p0, Lcom/amazon/kindle/contentprovider/ExternalQueryRouter;->matcher:Lcom/amazon/kcp/util/ReddingUriMatcher;

    if-nez v0, :cond_0

    .line 52
    invoke-static {}, Lcom/amazon/kcp/application/ReddingApplication;->blockOnAppInitialization()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 53
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/kcp/application/KindleObjectFactorySingleton;->getInstance(Landroid/content/Context;)Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    .line 54
    new-instance v1, Lcom/amazon/kcp/util/ReddingUriMatcher;

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getCoverManager()Lcom/amazon/kindle/cover/ICoverImageService;

    move-result-object v2

    .line 55
    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getLibraryService()Lcom/amazon/kindle/content/ILibraryService;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lcom/amazon/kcp/util/ReddingUriMatcher;-><init>(Lcom/amazon/kindle/cover/ICoverImageService;Lcom/amazon/kindle/content/ILibraryService;)V

    iput-object v1, p0, Lcom/amazon/kindle/contentprovider/ExternalQueryRouter;->matcher:Lcom/amazon/kcp/util/ReddingUriMatcher;

    .line 59
    :cond_0
    iget-object v0, p0, Lcom/amazon/kindle/contentprovider/ExternalQueryRouter;->matcher:Lcom/amazon/kcp/util/ReddingUriMatcher;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 1

    .line 86
    invoke-direct {p0}, Lcom/amazon/kindle/contentprovider/ExternalQueryRouter;->getMatcher()Lcom/amazon/kcp/util/ReddingUriMatcher;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 91
    :cond_0
    invoke-virtual {v0, p1}, Lcom/amazon/kcp/util/ReddingUriMatcher;->matchForType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public onCreate()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public openFile(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 96
    invoke-direct {p0}, Lcom/amazon/kindle/contentprovider/ExternalQueryRouter;->getMatcher()Lcom/amazon/kcp/util/ReddingUriMatcher;

    move-result-object p2

    const/4 v0, 0x0

    if-nez p2, :cond_0

    return-object v0

    .line 101
    :cond_0
    invoke-virtual {p2, p1}, Lcom/amazon/kcp/util/ReddingUriMatcher;->matchForCoverLocation(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_1

    return-object v0

    .line 106
    :cond_1
    new-instance p2, Ljava/io/File;

    invoke-direct {p2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/high16 p1, 0x10000000

    invoke-static {p2, p1}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object p1

    return-object p1
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 8

    .line 66
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Uri: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 67
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Projection: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 68
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Selection: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 69
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Selection Args: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p4}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 71
    invoke-direct {p0}, Lcom/amazon/kindle/contentprovider/ExternalQueryRouter;->getMatcher()Lcom/amazon/kcp/util/ReddingUriMatcher;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 76
    :cond_0
    invoke-virtual {v0, p1}, Lcom/amazon/kcp/util/ReddingUriMatcher;->matchForContentProvider(Landroid/net/Uri;)Landroid/content/ContentProvider;

    move-result-object v2

    if-nez v2, :cond_1

    return-object v1

    :cond_1
    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    .line 81
    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentProvider;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    return-object p1
.end method
