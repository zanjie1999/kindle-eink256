.class Lcom/facebook/internal/ImageResponseCache;
.super Ljava/lang/Object;
.source "ImageResponseCache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/internal/ImageResponseCache$BufferedHttpInputStream;
    }
.end annotation


# static fields
.field static final TAG:Ljava/lang/String; = "ImageResponseCache"

.field private static volatile imageCache:Lcom/facebook/internal/FileLruCache;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static clearCache(Landroid/content/Context;)V
    .locals 5

    .line 102
    :try_start_0
    invoke-static {p0}, Lcom/facebook/internal/ImageResponseCache;->getCache(Landroid/content/Context;)Lcom/facebook/internal/FileLruCache;

    move-result-object p0

    invoke-virtual {p0}, Lcom/facebook/internal/FileLruCache;->clearCache()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 104
    sget-object v0, Lcom/facebook/LoggingBehavior;->CACHE:Lcom/facebook/LoggingBehavior;

    const/4 v1, 0x5

    sget-object v2, Lcom/facebook/internal/ImageResponseCache;->TAG:Ljava/lang/String;

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

    const-class v0, Lcom/facebook/internal/ImageResponseCache;

    monitor-enter v0

    .line 37
    :try_start_0
    sget-object v1, Lcom/facebook/internal/ImageResponseCache;->imageCache:Lcom/facebook/internal/FileLruCache;

    if-nez v1, :cond_0

    .line 38
    new-instance v1, Lcom/facebook/internal/FileLruCache;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    sget-object v2, Lcom/facebook/internal/ImageResponseCache;->TAG:Ljava/lang/String;

    new-instance v3, Lcom/facebook/internal/FileLruCache$Limits;

    invoke-direct {v3}, Lcom/facebook/internal/FileLruCache$Limits;-><init>()V

    invoke-direct {v1, p0, v2, v3}, Lcom/facebook/internal/FileLruCache;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/facebook/internal/FileLruCache$Limits;)V

    sput-object v1, Lcom/facebook/internal/ImageResponseCache;->imageCache:Lcom/facebook/internal/FileLruCache;

    .line 40
    :cond_0
    sget-object p0, Lcom/facebook/internal/ImageResponseCache;->imageCache:Lcom/facebook/internal/FileLruCache;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method static getCachedImageStream(Ljava/net/URI;Landroid/content/Context;)Ljava/io/InputStream;
    .locals 2

    if-eqz p0, :cond_0

    .line 48
    invoke-static {p0}, Lcom/facebook/internal/ImageResponseCache;->isCDNURL(Ljava/net/URI;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 50
    :try_start_0
    invoke-static {p1}, Lcom/facebook/internal/ImageResponseCache;->getCache(Landroid/content/Context;)Lcom/facebook/internal/FileLruCache;

    move-result-object p1

    .line 51
    invoke-virtual {p0}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/facebook/internal/FileLruCache;->get(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 53
    sget-object p1, Lcom/facebook/LoggingBehavior;->CACHE:Lcom/facebook/LoggingBehavior;

    const/4 v0, 0x5

    sget-object v1, Lcom/facebook/internal/ImageResponseCache;->TAG:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, v0, v1, p0}, Lcom/facebook/internal/Logger;->log(Lcom/facebook/LoggingBehavior;ILjava/lang/String;Ljava/lang/String;)V

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method static interceptAndCacheImageStream(Landroid/content/Context;Ljava/net/HttpURLConnection;)Ljava/io/InputStream;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 63
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v0

    const/16 v1, 0xc8

    if-ne v0, v1, :cond_0

    .line 64
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getURL()Ljava/net/URL;

    move-result-object v0

    .line 65
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    .line 67
    :try_start_0
    invoke-virtual {v0}, Ljava/net/URL;->toURI()Ljava/net/URI;

    move-result-object v2

    invoke-static {v2}, Lcom/facebook/internal/ImageResponseCache;->isCDNURL(Ljava/net/URI;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 68
    invoke-static {p0}, Lcom/facebook/internal/ImageResponseCache;->getCache(Landroid/content/Context;)Lcom/facebook/internal/FileLruCache;

    move-result-object p0

    .line 71
    invoke-virtual {v0}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Lcom/facebook/internal/ImageResponseCache$BufferedHttpInputStream;

    invoke-direct {v2, v1, p1}, Lcom/facebook/internal/ImageResponseCache$BufferedHttpInputStream;-><init>(Ljava/io/InputStream;Ljava/net/HttpURLConnection;)V

    invoke-virtual {p0, v0, v2}, Lcom/facebook/internal/FileLruCache;->interceptAndPut(Ljava/lang/String;Ljava/io/InputStream;)Ljava/io/InputStream;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, p0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :catch_0
    :cond_1
    :goto_0
    return-object v1
.end method

.method private static isCDNURL(Ljava/net/URI;)Z
    .locals 2

    if-eqz p0, :cond_1

    .line 86
    invoke-virtual {p0}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object p0

    const-string v0, "fbcdn.net"

    .line 88
    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const-string v0, "fbcdn"

    .line 92
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "akamaihd.net"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    return v1

    :cond_1
    const/4 p0, 0x0

    return p0
.end method
