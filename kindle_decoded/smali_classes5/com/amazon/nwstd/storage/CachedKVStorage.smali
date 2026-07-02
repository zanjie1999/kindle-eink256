.class public Lcom/amazon/nwstd/storage/CachedKVStorage;
.super Lcom/amazon/nwstd/storage/KVStorage;
.source "CachedKVStorage.java"


# static fields
.field private static final STORAGE_FILE:Ljava/lang/String; = "NWSTD_KV.cache"

.field private static sCachedKVStorageMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/content/Context;",
            "Lcom/amazon/nwstd/storage/CachedKVStorage;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 24
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/amazon/nwstd/storage/CachedKVStorage;->sCachedKVStorageMap:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 46
    invoke-direct {p0}, Lcom/amazon/nwstd/storage/KVStorage;-><init>()V

    .line 47
    new-instance v0, Ljava/io/File;

    invoke-virtual {p1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object p1

    const-string v1, "NWSTD_KV.cache"

    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/amazon/nwstd/storage/KVStorage;->init(Ljava/io/File;)V

    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/amazon/nwstd/storage/CachedKVStorage;
    .locals 2

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 32
    :goto_0
    invoke-static {v0}, Lcom/amazon/nwstd/utils/Assertion;->Assert(Z)V

    .line 34
    sget-object v0, Lcom/amazon/nwstd/storage/CachedKVStorage;->sCachedKVStorageMap:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/nwstd/storage/CachedKVStorage;

    if-nez v0, :cond_1

    .line 36
    new-instance v0, Lcom/amazon/nwstd/storage/CachedKVStorage;

    invoke-direct {v0, p0}, Lcom/amazon/nwstd/storage/CachedKVStorage;-><init>(Landroid/content/Context;)V

    .line 37
    sget-object v1, Lcom/amazon/nwstd/storage/CachedKVStorage;->sCachedKVStorageMap:Ljava/util/Map;

    invoke-interface {v1, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object v0
.end method
