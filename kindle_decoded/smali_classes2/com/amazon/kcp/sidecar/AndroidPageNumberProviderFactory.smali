.class public Lcom/amazon/kcp/sidecar/AndroidPageNumberProviderFactory;
.super Ljava/lang/Object;
.source "AndroidPageNumberProviderFactory.java"

# interfaces
.implements Lcom/amazon/kcp/sidecar/pagenumbers/pagesidecar/IPageNumberProviderFactory;


# static fields
.field public static final DEFAULT_PAGE_NUMBER_PROVIDER:Lcom/amazon/kindle/sidecar/pagenumbers/IPageNumberProvider;

.field private static final TAG:Ljava/lang/String;

.field private static cacheLock:Ljava/lang/Object;

.field private static cachedPageNumberProvider:Lcom/amazon/kindle/sidecar/pagenumbers/IPageNumberProvider;

.field private static cachedSidecarBookPath:Ljava/lang/String;

.field private static cachedSidecarLastModificationTime:Ljava/util/Date;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 15
    const-class v0, Lcom/amazon/kcp/sidecar/AndroidPageNumberProviderFactory;

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kcp/sidecar/AndroidPageNumberProviderFactory;->TAG:Ljava/lang/String;

    .line 17
    new-instance v0, Lcom/amazon/kcp/sidecar/pagenumbers/pagesidecar/BookNotFoundPageNumberProvider;

    invoke-direct {v0}, Lcom/amazon/kcp/sidecar/pagenumbers/pagesidecar/BookNotFoundPageNumberProvider;-><init>()V

    sput-object v0, Lcom/amazon/kcp/sidecar/AndroidPageNumberProviderFactory;->DEFAULT_PAGE_NUMBER_PROVIDER:Lcom/amazon/kindle/sidecar/pagenumbers/IPageNumberProvider;

    .line 19
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/amazon/kcp/sidecar/AndroidPageNumberProviderFactory;->cacheLock:Ljava/lang/Object;

    const-string v0, ""

    .line 20
    sput-object v0, Lcom/amazon/kcp/sidecar/AndroidPageNumberProviderFactory;->cachedSidecarBookPath:Ljava/lang/String;

    const/4 v0, 0x0

    .line 21
    sput-object v0, Lcom/amazon/kcp/sidecar/AndroidPageNumberProviderFactory;->cachedPageNumberProvider:Lcom/amazon/kindle/sidecar/pagenumbers/IPageNumberProvider;

    .line 22
    sput-object v0, Lcom/amazon/kcp/sidecar/AndroidPageNumberProviderFactory;->cachedSidecarLastModificationTime:Ljava/util/Date;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getSidecarFile(Ljava/lang/String;)Ljava/io/File;
    .locals 1

    .line 98
    invoke-static {p0}, Lcom/amazon/kcp/util/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object p0, v0

    :goto_0
    return-object p0
.end method

.method private isRequestForCachedProvider(Ljava/lang/String;)Z
    .locals 4

    .line 81
    invoke-static {p1}, Lcom/amazon/kcp/sidecar/AndroidPageNumberProviderFactory;->getSidecarFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 82
    sget-object v1, Lcom/amazon/kcp/sidecar/AndroidPageNumberProviderFactory;->cachedPageNumberProvider:Lcom/amazon/kindle/sidecar/pagenumbers/IPageNumberProvider;

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    sget-object v1, Lcom/amazon/kcp/sidecar/AndroidPageNumberProviderFactory;->cachedSidecarBookPath:Ljava/lang/String;

    .line 83
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 84
    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    move-result-wide v0

    sget-object p1, Lcom/amazon/kcp/sidecar/AndroidPageNumberProviderFactory;->cachedSidecarLastModificationTime:Ljava/util/Date;

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    cmp-long p1, v0, v2

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private loadProvider(Ljava/lang/String;)Lcom/amazon/kindle/sidecar/pagenumbers/IPageNumberProvider;
    .locals 5

    .line 63
    sget-object v0, Lcom/amazon/kcp/sidecar/AndroidPageNumberProviderFactory;->DEFAULT_PAGE_NUMBER_PROVIDER:Lcom/amazon/kindle/sidecar/pagenumbers/IPageNumberProvider;

    .line 65
    :try_start_0
    invoke-static {p1}, Lcom/amazon/kcp/util/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 66
    invoke-static {p1}, Lcom/amazon/kcp/sidecar/AndroidPageNumberProviderFactory;->getSidecarFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    .line 67
    :cond_0
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    .line 68
    :goto_0
    new-instance v2, Lcom/amazon/kcp/sidecar/pagenumbers/pagesidecar/SidecarPageNumberProvider;

    invoke-direct {v2, v1}, Lcom/amazon/kcp/sidecar/pagenumbers/pagesidecar/SidecarPageNumberProvider;-><init>(Ljava/lang/String;)V

    .line 69
    invoke-virtual {v2}, Lcom/amazon/kcp/sidecar/pagenumbers/pagesidecar/SidecarPageNumberProvider;->isPageNumberingSupported()Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p1, :cond_1

    move-object v0, v2

    goto :goto_1

    :catch_0
    move-exception v1

    .line 74
    sget-object v2, Lcom/amazon/kcp/sidecar/AndroidPageNumberProviderFactory;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unexpected error loading page number sidecar for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1, v1}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    :goto_1
    return-object v0
.end method

.method private setCachedProvider(Ljava/lang/String;Lcom/amazon/kindle/sidecar/pagenumbers/IPageNumberProvider;)V
    .locals 2

    .line 89
    invoke-static {p1}, Lcom/amazon/kcp/sidecar/AndroidPageNumberProviderFactory;->getSidecarFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 91
    sput-object p1, Lcom/amazon/kcp/sidecar/AndroidPageNumberProviderFactory;->cachedSidecarBookPath:Ljava/lang/String;

    .line 92
    sput-object p2, Lcom/amazon/kcp/sidecar/AndroidPageNumberProviderFactory;->cachedPageNumberProvider:Lcom/amazon/kindle/sidecar/pagenumbers/IPageNumberProvider;

    .line 93
    new-instance p1, Ljava/util/Date;

    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    move-result-wide v0

    invoke-direct {p1, v0, v1}, Ljava/util/Date;-><init>(J)V

    sput-object p1, Lcom/amazon/kcp/sidecar/AndroidPageNumberProviderFactory;->cachedSidecarLastModificationTime:Ljava/util/Date;

    :cond_0
    return-void
.end method


# virtual methods
.method public getContentType(Ljava/lang/String;)Lcom/amazon/kcp/library/models/BookType;
    .locals 1

    .line 53
    invoke-direct {p0, p1}, Lcom/amazon/kcp/sidecar/AndroidPageNumberProviderFactory;->loadProvider(Ljava/lang/String;)Lcom/amazon/kindle/sidecar/pagenumbers/IPageNumberProvider;

    move-result-object p1

    .line 55
    instance-of v0, p1, Lcom/amazon/kcp/sidecar/pagenumbers/pagesidecar/SidecarPageNumberProvider;

    if-eqz v0, :cond_0

    .line 56
    check-cast p1, Lcom/amazon/kcp/sidecar/pagenumbers/pagesidecar/SidecarPageNumberProvider;

    .line 57
    invoke-virtual {p1}, Lcom/amazon/kcp/sidecar/pagenumbers/pagesidecar/SidecarPageNumberProvider;->getCdeType()Lcom/amazon/kcp/library/models/BookType;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public locateProvider(Ljava/lang/String;)Lcom/amazon/kindle/sidecar/pagenumbers/IPageNumberProvider;
    .locals 3

    .line 27
    sget-object v0, Lcom/amazon/kcp/sidecar/AndroidPageNumberProviderFactory;->cacheLock:Ljava/lang/Object;

    monitor-enter v0

    .line 28
    :try_start_0
    invoke-direct {p0, p1}, Lcom/amazon/kcp/sidecar/AndroidPageNumberProviderFactory;->isRequestForCachedProvider(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 29
    sget-object p1, Lcom/amazon/kcp/sidecar/AndroidPageNumberProviderFactory;->cachedPageNumberProvider:Lcom/amazon/kindle/sidecar/pagenumbers/IPageNumberProvider;

    goto :goto_0

    .line 31
    :cond_0
    invoke-direct {p0, p1}, Lcom/amazon/kcp/sidecar/AndroidPageNumberProviderFactory;->loadProvider(Ljava/lang/String;)Lcom/amazon/kindle/sidecar/pagenumbers/IPageNumberProvider;

    move-result-object v1

    .line 32
    instance-of v2, v1, Lcom/amazon/kcp/sidecar/pagenumbers/pagesidecar/SidecarPageNumberProvider;

    if-eqz v2, :cond_1

    .line 33
    invoke-direct {p0, p1, v1}, Lcom/amazon/kcp/sidecar/AndroidPageNumberProviderFactory;->setCachedProvider(Ljava/lang/String;Lcom/amazon/kindle/sidecar/pagenumbers/IPageNumberProvider;)V

    :cond_1
    move-object p1, v1

    .line 36
    :goto_0
    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
