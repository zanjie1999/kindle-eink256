.class Lcom/facebook/internal/UrlRedirectCache;
.super Ljava/lang/Object;
.source "UrlRedirectCache.java"


# static fields
.field private static final REDIRECT_CONTENT_TAG:Ljava/lang/String;

.field static final TAG:Ljava/lang/String; = "UrlRedirectCache"

.field private static volatile urlRedirectCache:Lcom/facebook/internal/FileLruCache;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 32
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/facebook/internal/UrlRedirectCache;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_Redirect"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/internal/UrlRedirectCache;->REDIRECT_CONTENT_TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static cacheUriRedirect(Landroid/content/Context;Ljava/net/URI;Ljava/net/URI;)V
    .locals 2

    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    .line 91
    :try_start_0
    invoke-static {p0}, Lcom/facebook/internal/UrlRedirectCache;->getCache(Landroid/content/Context;)Lcom/facebook/internal/FileLruCache;

    move-result-object p0

    .line 92
    invoke-virtual {p1}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object p1

    sget-object v1, Lcom/facebook/internal/UrlRedirectCache;->REDIRECT_CONTENT_TAG:Ljava/lang/String;

    invoke-virtual {p0, p1, v1}, Lcom/facebook/internal/FileLruCache;->openPutStream(Ljava/lang/String;Ljava/lang/String;)Ljava/io/OutputStream;

    move-result-object v0

    .line 93
    invoke-virtual {p2}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/io/OutputStream;->write([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 97
    invoke-static {v0}, Lcom/facebook/internal/Utility;->closeQuietly(Ljava/io/Closeable;)V

    throw p0

    :catch_0
    :goto_0
    invoke-static {v0}, Lcom/facebook/internal/Utility;->closeQuietly(Ljava/io/Closeable;)V

    :cond_1
    :goto_1
    return-void
.end method

.method static clearCache(Landroid/content/Context;)V
    .locals 5

    .line 103
    :try_start_0
    invoke-static {p0}, Lcom/facebook/internal/UrlRedirectCache;->getCache(Landroid/content/Context;)Lcom/facebook/internal/FileLruCache;

    move-result-object p0

    invoke-virtual {p0}, Lcom/facebook/internal/FileLruCache;->clearCache()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 105
    sget-object v0, Lcom/facebook/LoggingBehavior;->CACHE:Lcom/facebook/LoggingBehavior;

    const/4 v1, 0x5

    sget-object v2, Lcom/facebook/internal/UrlRedirectCache;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "clearCache failed "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, v1, v2, p0}, Lcom/facebook/internal/Logger;->log(Lcom/facebook/LoggingBehavior;ILjava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method static declared-synchronized getCache(Landroid/content/Context;)Lcom/facebook/internal/FileLruCache;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-class v0, Lcom/facebook/internal/UrlRedirectCache;

    monitor-enter v0

    .line 37
    :try_start_0
    sget-object v1, Lcom/facebook/internal/UrlRedirectCache;->urlRedirectCache:Lcom/facebook/internal/FileLruCache;

    if-nez v1, :cond_0

    .line 38
    new-instance v1, Lcom/facebook/internal/FileLruCache;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    sget-object v2, Lcom/facebook/internal/UrlRedirectCache;->TAG:Ljava/lang/String;

    new-instance v3, Lcom/facebook/internal/FileLruCache$Limits;

    invoke-direct {v3}, Lcom/facebook/internal/FileLruCache$Limits;-><init>()V

    invoke-direct {v1, p0, v2, v3}, Lcom/facebook/internal/FileLruCache;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/facebook/internal/FileLruCache$Limits;)V

    sput-object v1, Lcom/facebook/internal/UrlRedirectCache;->urlRedirectCache:Lcom/facebook/internal/FileLruCache;

    .line 40
    :cond_0
    sget-object p0, Lcom/facebook/internal/UrlRedirectCache;->urlRedirectCache:Lcom/facebook/internal/FileLruCache;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method static getRedirectedUri(Landroid/content/Context;Ljava/net/URI;)Ljava/net/URI;
    .locals 8

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 48
    :cond_0
    invoke-virtual {p1}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object p1

    .line 52
    :try_start_0
    invoke-static {p0}, Lcom/facebook/internal/UrlRedirectCache;->getCache(Landroid/content/Context;)Lcom/facebook/internal/FileLruCache;

    move-result-object p0
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    const/4 v1, 0x0

    move-object v3, v0

    const/4 v2, 0x0

    .line 54
    :goto_0
    :try_start_1
    sget-object v4, Lcom/facebook/internal/UrlRedirectCache;->REDIRECT_CONTENT_TAG:Ljava/lang/String;

    invoke-virtual {p0, p1, v4}, Lcom/facebook/internal/FileLruCache;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v4

    if-eqz v4, :cond_2

    const/4 v2, 0x1

    .line 58
    new-instance p1, Ljava/io/InputStreamReader;

    invoke-direct {p1, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catch Ljava/net/URISyntaxException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const/16 v3, 0x80

    :try_start_2
    new-array v4, v3, [C

    .line 61
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 62
    :goto_1
    invoke-virtual {p1, v4, v1, v3}, Ljava/io/InputStreamReader;->read([CII)I

    move-result v6

    if-lez v6, :cond_1

    .line 63
    invoke-virtual {v5, v4, v1, v6}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 65
    :cond_1
    invoke-static {p1}, Lcom/facebook/internal/Utility;->closeQuietly(Ljava/io/Closeable;)V

    .line 68
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3
    :try_end_2
    .catch Ljava/net/URISyntaxException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v7, v3

    move-object v3, p1

    move-object p1, v7

    goto :goto_0

    :catchall_0
    move-exception p0

    move-object v0, p1

    goto :goto_2

    :catch_0
    move-object v3, p1

    goto :goto_3

    :cond_2
    if-eqz v2, :cond_3

    .line 72
    :try_start_3
    new-instance p0, Ljava/net/URI;

    invoke-direct {p0, p1}, Ljava/net/URI;-><init>(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/net/URISyntaxException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 78
    invoke-static {v3}, Lcom/facebook/internal/Utility;->closeQuietly(Ljava/io/Closeable;)V

    return-object p0

    :catchall_1
    move-exception p0

    move-object v0, v3

    goto :goto_2

    :catchall_2
    move-exception p0

    :goto_2
    invoke-static {v0}, Lcom/facebook/internal/Utility;->closeQuietly(Ljava/io/Closeable;)V

    throw p0

    :catch_1
    move-object v3, v0

    :catch_2
    :cond_3
    :goto_3
    invoke-static {v3}, Lcom/facebook/internal/Utility;->closeQuietly(Ljava/io/Closeable;)V

    return-object v0
.end method
