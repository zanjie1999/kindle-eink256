.class public final Lcom/amazon/kindle/content/ContentMetadataCacheFactory;
.super Ljava/lang/Object;
.source "ContentMetadataCacheFactory.java"


# static fields
.field private static instance:Lcom/amazon/kindle/content/IContentMetadataCache;

.field private static supportsCache:Ljava/lang/Boolean;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static final declared-synchronized getContentMetadataCache()Lcom/amazon/kindle/content/IContentMetadataCache;
    .locals 2

    const-class v0, Lcom/amazon/kindle/content/ContentMetadataCacheFactory;

    monitor-enter v0

    .line 16
    :try_start_0
    sget-object v1, Lcom/amazon/kindle/content/ContentMetadataCacheFactory;->instance:Lcom/amazon/kindle/content/IContentMetadataCache;

    if-nez v1, :cond_2

    .line 17
    sget-object v1, Lcom/amazon/kindle/content/ContentMetadataCacheFactory;->supportsCache:Ljava/lang/Boolean;

    if-nez v1, :cond_0

    .line 18
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->supportPreloadBook()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    sput-object v1, Lcom/amazon/kindle/content/ContentMetadataCacheFactory;->supportsCache:Ljava/lang/Boolean;

    .line 20
    :cond_0
    sget-object v1, Lcom/amazon/kindle/content/ContentMetadataCacheFactory;->supportsCache:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 21
    new-instance v1, Lcom/amazon/kindle/content/ContentMetadataCache;

    invoke-direct {v1}, Lcom/amazon/kindle/content/ContentMetadataCache;-><init>()V

    sput-object v1, Lcom/amazon/kindle/content/ContentMetadataCacheFactory;->instance:Lcom/amazon/kindle/content/IContentMetadataCache;

    goto :goto_0

    .line 23
    :cond_1
    new-instance v1, Lcom/amazon/kindle/content/NoopContentMetadataCache;

    invoke-direct {v1}, Lcom/amazon/kindle/content/NoopContentMetadataCache;-><init>()V

    sput-object v1, Lcom/amazon/kindle/content/ContentMetadataCacheFactory;->instance:Lcom/amazon/kindle/content/IContentMetadataCache;

    .line 26
    :cond_2
    :goto_0
    sget-object v1, Lcom/amazon/kindle/content/ContentMetadataCacheFactory;->instance:Lcom/amazon/kindle/content/IContentMetadataCache;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method
