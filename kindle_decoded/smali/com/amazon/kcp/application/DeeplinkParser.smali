.class public final Lcom/amazon/kcp/application/DeeplinkParser;
.super Ljava/lang/Object;
.source "DeeplinkParser.kt"


# static fields
.field private static final ACTION_PATH_INDEX:I = 0x1

.field private static final AMAZON_DOMAIN:Ljava/lang/String; = "www.amazon.com"

.field private static final DOMAIN:Ljava/lang/String; = "read.amazon.com"

.field public static final INSTANCE:Lcom/amazon/kcp/application/DeeplinkParser;

.field private static final KINDLE_VELLA_DOMAIN:Ljava/lang/String; = "kindle-vella.amazon.com"

.field private static final SCHEME:Ljava/lang/String; = "http"

.field private static final SCHEME_HTTPS:Ljava/lang/String; = "https"

.field private static final SUBACTION_PATH_INDEX:I = 0x2

.field private static final TAG:Ljava/lang/String;

.field private static final VALID_ACTIONS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final VALID_CMX_STORE_SUBACTIONS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 21
    new-instance v0, Lcom/amazon/kcp/application/DeeplinkParser;

    invoke-direct {v0}, Lcom/amazon/kcp/application/DeeplinkParser;-><init>()V

    sput-object v0, Lcom/amazon/kcp/application/DeeplinkParser;->INSTANCE:Lcom/amazon/kcp/application/DeeplinkParser;

    .line 22
    const-class v0, Lcom/amazon/kcp/application/DeeplinkParser;

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Utils.getTag(DeeplinkParser::class.java)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v0, Lcom/amazon/kcp/application/DeeplinkParser;->TAG:Ljava/lang/String;

    const-string v0, "home"

    const-string v1, "library"

    const-string/jumbo v2, "store"

    const-string/jumbo v3, "more"

    const-string v4, "kindle-vella"

    .line 146
    filled-new-array {v0, v1, v2, v3, v4}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    sput-object v1, Lcom/amazon/kcp/application/DeeplinkParser;->VALID_ACTIONS:Ljava/util/List;

    const-string v1, "idp"

    const-string/jumbo v2, "sdp"

    const-string/jumbo v3, "new-releases"

    const-string/jumbo v4, "unlimited"

    .line 194
    filled-new-array {v1, v2, v0, v3, v4}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/amazon/kcp/application/DeeplinkParser;->VALID_CMX_STORE_SUBACTIONS:Ljava/util/List;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final isDeeplink(Landroid/net/Uri;)Z
    .locals 4

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 378
    :cond_0
    invoke-virtual {p0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/amazon/kcp/application/DeeplinkParser;->isDeeplinkScheme(Ljava/lang/String;)Z

    move-result v1

    .line 379
    invoke-virtual {p0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/amazon/kcp/application/DeeplinkParser;->isDeeplinkDomain(Ljava/lang/String;)Z

    move-result v2

    .line 380
    invoke-virtual {p0}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object p0

    const-string/jumbo v3, "uri.pathSegments"

    invoke-static {p0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/amazon/kcp/application/DeeplinkParser;->isDeeplinkPrefix(Ljava/util/List;)Z

    move-result p0

    if-eqz v1, :cond_1

    if-eqz v2, :cond_1

    if-eqz p0, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method public static final isDeeplinkCMXStore(Landroid/net/Uri;)Z
    .locals 5

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 408
    :cond_0
    invoke-virtual {p0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/amazon/kcp/application/DeeplinkParser;->isDeeplinkScheme(Ljava/lang/String;)Z

    move-result v1

    .line 409
    invoke-virtual {p0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/amazon/kcp/application/DeeplinkParser;->isDeeplinkStoreDomain(Ljava/lang/String;)Z

    move-result v2

    .line 410
    invoke-virtual {p0}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v3

    const-string/jumbo v4, "uri.pathSegments"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v3}, Lcom/amazon/kcp/application/DeeplinkParser;->isDeeplinkCMXStorePrefixAction(Ljava/util/List;)Z

    move-result v3

    .line 411
    invoke-virtual {p0}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object p0

    invoke-static {p0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/amazon/kcp/application/DeeplinkParser;->isDeeplinkCMXStoreSubAction(Ljava/util/List;)Z

    move-result p0

    if-eqz v1, :cond_1

    if-eqz v2, :cond_1

    if-eqz v3, :cond_1

    if-eqz p0, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method public static final isDeeplinkCMXStorePrefixAction(Ljava/util/List;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    const-string/jumbo v0, "pathSegments"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 349
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 350
    :cond_0
    invoke-static {p0, v1}, Lkotlin/collections/CollectionsKt;->getOrNull(Ljava/util/List;I)Ljava/lang/Object;

    move-result-object v0

    const-string v2, "kindle-dbs"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 351
    invoke-static {p0, v2}, Lkotlin/collections/CollectionsKt;->getOrNull(Ljava/util/List;I)Ljava/lang/Object;

    move-result-object p0

    const-string v0, "comics-store"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public static final isDeeplinkCMXStoreSubAction(Ljava/util/List;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    const-string/jumbo v0, "pathSegments"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 362
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 363
    :cond_0
    sget-object v0, Lcom/amazon/kcp/application/DeeplinkParser;->VALID_CMX_STORE_SUBACTIONS:Ljava/util/List;

    const/4 v1, 0x2

    invoke-static {p0, v1}, Lkotlin/collections/CollectionsKt;->getOrNull(Ljava/util/List;I)Ljava/lang/Object;

    move-result-object p0

    invoke-static {v0, p0}, Lkotlin/collections/CollectionsKt;->contains(Ljava/lang/Iterable;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static final isDeeplinkDomain(Ljava/lang/String;)Z
    .locals 1

    const-string/jumbo v0, "read.amazon.com"

    .line 314
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static final isDeeplinkPrefix(Ljava/util/List;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    const-string/jumbo v0, "pathSegments"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 336
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 337
    :cond_0
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v2, "application"

    invoke-static {v2, v0, v1}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_1

    .line 338
    sget-object v0, Lcom/amazon/kcp/application/DeeplinkSonarUtils;->INSTANCE:Lcom/amazon/kcp/application/DeeplinkSonarUtils;

    invoke-virtual {v0, p0}, Lcom/amazon/kcp/application/DeeplinkSonarUtils;->isSonarDeeplink(Ljava/util/List;)Z

    move-result p0

    if-eqz p0, :cond_2

    :cond_1
    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method public static final isDeeplinkScheme(Ljava/lang/String;)Z
    .locals 2

    const/4 v0, 0x0

    const-string v1, "http"

    .line 292
    invoke-static {v1, p0, v0}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "https"

    invoke-static {v1, p0, v0}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p0

    if-eqz p0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method public static final isDeeplinkStoreDomain(Ljava/lang/String;)Z
    .locals 2

    const-string/jumbo v0, "www.amazon.com"

    const/4 v1, 0x0

    .line 303
    invoke-static {v0, p0, v1}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public static final isVellaDeeplink(Landroid/net/Uri;)Z
    .locals 1

    const-string/jumbo v0, "uri"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 393
    invoke-virtual {p0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/kcp/application/DeeplinkParser;->isDeeplinkScheme(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/amazon/kcp/application/DeeplinkParser;->isVellaDeeplinkDomain(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static final isVellaDeeplinkDomain(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "kindle-vella.amazon.com"

    .line 325
    invoke-static {v0, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static final parseFields(Ljava/util/List;Ljava/util/Map;)Ljava/util/Map;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string/jumbo v0, "pathSegments"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "queryParams"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    new-array v1, v0, [Lkotlin/Pair;

    const-string/jumbo v2, "open"

    const-string v3, "action"

    .line 426
    invoke-static {v3, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v1, v5

    invoke-static {v1}, Lkotlin/collections/MapsKt;->mutableMapOf([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v1

    .line 428
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v4

    if-gt v4, v0, :cond_0

    invoke-interface {p1, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 429
    sget-object p0, Lcom/amazon/kindle/performance/KindlePerformanceConstants;->DEEPLINKING_APP_OPEN:Lcom/amazon/kindle/performance/KindlePerformanceConstants;

    const-string p1, "KindlePerformanceConstants.DEEPLINKING_APP_OPEN"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/amazon/kindle/performance/KindlePerformanceConstants;->getMetricString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v0}, Lcom/amazon/kindle/util/PerfHelper;->LogPerfMarker(Ljava/lang/String;Z)V

    return-object v1

    .line 433
    :cond_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v4

    if-gt v4, v0, :cond_1

    .line 435
    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    const-string p1, "insights"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_5

    .line 436
    invoke-interface {v1, v3, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 439
    :cond_1
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 440
    sget-object v4, Lcom/amazon/kcp/application/DeeplinkParser;->VALID_ACTIONS:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    move-object v2, v0

    :cond_2
    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 441
    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v2, "library"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 442
    sget-object v0, Lcom/amazon/kcp/application/DeeplinkParser;->INSTANCE:Lcom/amazon/kcp/application/DeeplinkParser;

    invoke-direct {v0, p0, p1}, Lcom/amazon/kcp/application/DeeplinkParser;->parseLibraryFields(Ljava/util/List;Ljava/util/Map;)Ljava/util/Map;

    move-result-object p0

    invoke-interface {v1, p0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    goto :goto_0

    .line 443
    :cond_3
    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string/jumbo v2, "store"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 444
    sget-object v0, Lcom/amazon/kcp/application/DeeplinkParser;->INSTANCE:Lcom/amazon/kcp/application/DeeplinkParser;

    invoke-direct {v0, p0, p1}, Lcom/amazon/kcp/application/DeeplinkParser;->parseStoreFields(Ljava/util/List;Ljava/util/Map;)Ljava/util/Map;

    move-result-object p0

    invoke-interface {v1, p0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    goto :goto_0

    .line 445
    :cond_4
    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    const-string v0, "home"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_5

    .line 446
    sget-object p0, Lcom/amazon/kcp/application/DeeplinkParser;->INSTANCE:Lcom/amazon/kcp/application/DeeplinkParser;

    invoke-direct {p0, p1}, Lcom/amazon/kcp/application/DeeplinkParser;->parseHomeFields(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p0

    invoke-interface {v1, p0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    :cond_5
    :goto_0
    return-object v1
.end method

.method private final parseHomeFields(Ljava/util/Map;)Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 510
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    const-string v1, "action"

    .line 512
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string/jumbo v2, "open"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "asin"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-eqz v2, :cond_1

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-nez v2, :cond_1

    .line 513
    sget-object v2, Lcom/amazon/kindle/performance/KindlePerformanceConstants;->DEEPLINKING_BOOK_OPEN:Lcom/amazon/kindle/performance/KindlePerformanceConstants;

    const-string v4, "KindlePerformanceConstants.DEEPLINKING_BOOK_OPEN"

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/amazon/kindle/performance/KindlePerformanceConstants;->getMetricString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v3}, Lcom/amazon/kindle/util/PerfHelper;->LogPerfMarker(Ljava/lang/String;Z)V

    .line 514
    invoke-static {p1, v1}, Lkotlin/collections/MapsKt;->getValue(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object v0
.end method

.method private final parseLibraryFields(Ljava/util/List;Ljava/util/Map;)Ljava/util/Map;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 465
    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    const-string v0, "action"

    .line 467
    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string/jumbo v1, "open"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "asin"

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-nez v1, :cond_1

    .line 468
    sget-object v1, Lcom/amazon/kindle/performance/KindlePerformanceConstants;->DEEPLINKING_BOOK_OPEN:Lcom/amazon/kindle/performance/KindlePerformanceConstants;

    const-string v3, "KindlePerformanceConstants.DEEPLINKING_BOOK_OPEN"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/amazon/kindle/performance/KindlePerformanceConstants;->getMetricString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v2}, Lcom/amazon/kindle/util/PerfHelper;->LogPerfMarker(Ljava/lang/String;Z)V

    .line 469
    invoke-static {p2, v0}, Lkotlin/collections/MapsKt;->getValue(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    invoke-interface {p1, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p1

    :cond_1
    const-string v0, "filter"

    .line 471
    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string/jumbo v2, "sort"

    .line 472
    invoke-interface {p2, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    const-string v3, "all"

    const-string v4, "downloaded"

    .line 474
    filled-new-array {v4, v3}, [Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "title"

    const-string/jumbo v7, "recent"

    const-string v8, "author_reverse"

    const-string v9, "author"

    .line 475
    filled-new-array {v9, v8, v7, v6}, [Ljava/lang/String;

    move-result-object v10

    if-eqz v1, :cond_5

    .line 477
    invoke-static {v5, v1}, Lkotlin/collections/ArraysKt;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 478
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v5

    const v11, 0x179a1

    if-eq v5, v11, :cond_3

    const v3, 0x798ad327

    if-eq v5, v3, :cond_2

    goto :goto_1

    .line 479
    :cond_2
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    sget-object v1, Lcom/amazon/kindle/krx/ui/ILibraryUIManager$LibraryGroup;->DEVICE:Lcom/amazon/kindle/krx/ui/ILibraryUIManager$LibraryGroup;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    .line 480
    :cond_3
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    sget-object v1, Lcom/amazon/kindle/krx/ui/ILibraryUIManager$LibraryGroup;->CLOUD:Lcom/amazon/kindle/krx/ui/ILibraryUIManager$LibraryGroup;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    .line 481
    :cond_4
    :goto_1
    sget-object v1, Lcom/amazon/kindle/krx/ui/ILibraryUIManager$LibraryGroup;->CLOUD:Lcom/amazon/kindle/krx/ui/ILibraryUIManager$LibraryGroup;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    .line 478
    :goto_2
    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    if-eqz p2, :cond_7

    .line 485
    invoke-static {v10, p2}, Lkotlin/collections/ArraysKt;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 486
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    goto :goto_3

    .line 488
    :sswitch_0
    invoke-virtual {p2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_6

    sget-object p2, Lcom/amazon/kcp/library/LibrarySortType;->SORT_TYPE_AUTHOR_REVERSE:Lcom/amazon/kcp/library/LibrarySortType;

    invoke-virtual {p2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p2

    goto :goto_4

    .line 490
    :sswitch_1
    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_6

    sget-object p2, Lcom/amazon/kcp/library/LibrarySortType;->SORT_TYPE_TITLE:Lcom/amazon/kcp/library/LibrarySortType;

    invoke-virtual {p2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p2

    goto :goto_4

    .line 489
    :sswitch_2
    invoke-virtual {p2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_6

    sget-object p2, Lcom/amazon/kcp/library/LibrarySortType;->SORT_TYPE_RECENT:Lcom/amazon/kcp/library/LibrarySortType;

    invoke-virtual {p2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p2

    goto :goto_4

    .line 487
    :sswitch_3
    invoke-virtual {p2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_6

    sget-object p2, Lcom/amazon/kcp/library/LibrarySortType;->SORT_TYPE_AUTHOR:Lcom/amazon/kcp/library/LibrarySortType;

    invoke-virtual {p2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p2

    goto :goto_4

    .line 491
    :cond_6
    :goto_3
    sget-object p2, Lcom/amazon/kcp/library/LibrarySortType;->SORT_TYPE_AUTHOR:Lcom/amazon/kcp/library/LibrarySortType;

    invoke-virtual {p2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p2

    .line 486
    :goto_4
    invoke-interface {p1, v2, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_7
    return-object p1

    nop

    :sswitch_data_0
    .sparse-switch
        -0x53d2de75 -> :sswitch_3
        -0x37b9b9a5 -> :sswitch_2
        0x6942258 -> :sswitch_1
        0x50c2602e -> :sswitch_0
    .end sparse-switch
.end method

.method private final parseQueryParams(Landroid/net/Uri;)Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 595
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 596
    invoke-virtual {p1}, Landroid/net/Uri;->getQueryParameterNames()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 598
    invoke-virtual {p1, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    const-string v4, "deeplinkUri.getQueryParameter(key) ?: continue"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 599
    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private final parseStoreFields(Ljava/util/List;Ljava/util/Map;)Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 454
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 457
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x2

    if-le v1, v2, :cond_1

    .line 456
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    const-string v1, "bookdetails"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "asin"

    .line 457
    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-nez v1, :cond_1

    .line 458
    invoke-static {p2, p1}, Lkotlin/collections/MapsKt;->getValue(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object v0
.end method

.method public static final parseUri(Landroid/net/Uri;)Ljava/util/Map;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p0, :cond_5

    .line 559
    invoke-static {p0}, Lcom/amazon/kcp/application/DeeplinkParser;->isDeeplink(Landroid/net/Uri;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lcom/amazon/kcp/util/FalkorUtils;->isVellaDeeplinkEnabled()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-static {p0}, Lcom/amazon/kcp/application/DeeplinkParser;->isVellaDeeplink(Landroid/net/Uri;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    .line 565
    :cond_0
    sget-object v1, Lcom/amazon/kcp/application/DeeplinkSonarUtils;->INSTANCE:Lcom/amazon/kcp/application/DeeplinkSonarUtils;

    invoke-virtual {p0}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    const-string/jumbo v3, "uri.pathSegments"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/amazon/kcp/application/DeeplinkSonarUtils;->isSonarDeeplink(Ljava/util/List;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 566
    sget-object v2, Lcom/amazon/kcp/application/DeeplinkSonarUtils;->INSTANCE:Lcom/amazon/kcp/application/DeeplinkSonarUtils;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x6

    const/4 v7, 0x0

    move-object v3, p0

    invoke-static/range {v2 .. v7}, Lcom/amazon/kcp/application/DeeplinkSonarUtils;->unwrapDeeplink$default(Lcom/amazon/kcp/application/DeeplinkSonarUtils;Landroid/net/Uri;Landroid/net/Uri;Lcom/amazon/kindle/webservices/IWebRequestManager;ILjava/lang/Object;)Landroid/net/Uri;

    move-result-object v1

    .line 569
    invoke-static {v1}, Lcom/amazon/kcp/application/DeeplinkParser;->isDeeplink(Landroid/net/Uri;)Z

    move-result v2

    if-nez v2, :cond_2

    return-object v0

    :cond_1
    move-object v1, p0

    .line 574
    :cond_2
    invoke-virtual {p0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/amazon/kcp/application/DeeplinkParser;->isVellaDeeplinkDomain(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_3

    .line 575
    sget-object p0, Lcom/amazon/kcp/application/DeeplinkParser;->INSTANCE:Lcom/amazon/kcp/application/DeeplinkParser;

    invoke-direct {p0, v1}, Lcom/amazon/kcp/application/DeeplinkParser;->parseQueryParams(Landroid/net/Uri;)Ljava/util/Map;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/amazon/kcp/application/DeeplinkParser;->parseVellaFields(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p0

    goto :goto_0

    .line 577
    :cond_3
    invoke-virtual {v1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object p0

    const-string v2, "deeplinkUri.pathSegments"

    invoke-static {p0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v2, Lcom/amazon/kcp/application/DeeplinkParser;->INSTANCE:Lcom/amazon/kcp/application/DeeplinkParser;

    invoke-direct {v2, v1}, Lcom/amazon/kcp/application/DeeplinkParser;->parseQueryParams(Landroid/net/Uri;)Ljava/util/Map;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/amazon/kcp/application/DeeplinkParser;->parseFields(Ljava/util/List;Ljava/util/Map;)Ljava/util/Map;

    move-result-object p0

    :goto_0
    const-string v1, "action"

    .line 579
    invoke-interface {p0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return-object v0

    :cond_4
    return-object p0

    :cond_5
    :goto_1
    return-object v0
.end method


# virtual methods
.method public final parseVellaFields(Ljava/util/Map;)Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string/jumbo v0, "queryParams"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 527
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    const-string v1, "action"

    const-string v2, "kindle-vella"

    .line 528
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "asin"

    .line 529
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-eqz v2, :cond_1

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-nez v2, :cond_1

    .line 530
    invoke-static {p1, v1}, Lkotlin/collections/MapsKt;->getValue(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object v0
.end method
