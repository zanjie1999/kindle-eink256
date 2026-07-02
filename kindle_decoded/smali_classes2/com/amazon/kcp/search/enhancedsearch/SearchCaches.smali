.class Lcom/amazon/kcp/search/enhancedsearch/SearchCaches;
.super Ljava/lang/Object;
.source "ReaderSearchActivity.java"


# static fields
.field private static INSTANCE:Lcom/amazon/kcp/search/enhancedsearch/SearchCaches;


# instance fields
.field private final caches:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/amazon/kcp/search/enhancedsearch/CachedData;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1327
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1328
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/amazon/kcp/search/enhancedsearch/SearchCaches;->caches:Ljava/util/HashMap;

    return-void
.end method

.method static clearCaches()V
    .locals 1

    .line 1348
    invoke-static {}, Lcom/amazon/kcp/search/enhancedsearch/SearchCaches;->getInstance()Lcom/amazon/kcp/search/enhancedsearch/SearchCaches;

    move-result-object v0

    iget-object v0, v0, Lcom/amazon/kcp/search/enhancedsearch/SearchCaches;->caches:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    return-void
.end method

.method static getCacheWithKey(Ljava/lang/String;)Lcom/amazon/kcp/search/enhancedsearch/CachedData;
    .locals 3

    .line 1362
    invoke-static {}, Lcom/amazon/kcp/search/enhancedsearch/SearchCaches;->getInstance()Lcom/amazon/kcp/search/enhancedsearch/SearchCaches;

    move-result-object v0

    .line 1363
    iget-object v1, v0, Lcom/amazon/kcp/search/enhancedsearch/SearchCaches;->caches:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    .line 1364
    iget-object v1, v0, Lcom/amazon/kcp/search/enhancedsearch/SearchCaches;->caches:Ljava/util/HashMap;

    new-instance v2, Lcom/amazon/kcp/search/enhancedsearch/CachedData;

    invoke-direct {v2}, Lcom/amazon/kcp/search/enhancedsearch/CachedData;-><init>()V

    invoke-virtual {v1, p0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1366
    :cond_0
    iget-object v0, v0, Lcom/amazon/kcp/search/enhancedsearch/SearchCaches;->caches:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/amazon/kcp/search/enhancedsearch/CachedData;

    return-object p0
.end method

.method private static getInstance()Lcom/amazon/kcp/search/enhancedsearch/SearchCaches;
    .locals 1

    .line 1338
    sget-object v0, Lcom/amazon/kcp/search/enhancedsearch/SearchCaches;->INSTANCE:Lcom/amazon/kcp/search/enhancedsearch/SearchCaches;

    if-nez v0, :cond_0

    .line 1339
    new-instance v0, Lcom/amazon/kcp/search/enhancedsearch/SearchCaches;

    invoke-direct {v0}, Lcom/amazon/kcp/search/enhancedsearch/SearchCaches;-><init>()V

    sput-object v0, Lcom/amazon/kcp/search/enhancedsearch/SearchCaches;->INSTANCE:Lcom/amazon/kcp/search/enhancedsearch/SearchCaches;

    .line 1341
    :cond_0
    sget-object v0, Lcom/amazon/kcp/search/enhancedsearch/SearchCaches;->INSTANCE:Lcom/amazon/kcp/search/enhancedsearch/SearchCaches;

    return-object v0
.end method
