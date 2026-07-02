.class public final Lcom/amazon/kcp/goodreads/GoodreadsUpdateShelfWebRequest;
.super Lcom/amazon/kcp/goodreads/BaseGoodreadsShelfWebRequest;
.source "GoodreadsUpdateShelfWebRequest.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kcp/goodreads/GoodreadsUpdateShelfWebRequest$Companion;
    }
.end annotation


# static fields
.field private static final SET_READ_PARAMETER_KEY:Ljava/lang/String; = "set_read_at"

.field private static final SHELF_PARAMETER_KEY:Ljava/lang/String; = "name"

.field private static final UPDATE_LIBRARY_URL_FORMAT:Ljava/lang/String; = "https://kca.amazon.com/kca/library:amzn/%s/book:amzn/%s/shelf"


# instance fields
.field private final customerId:Ljava/lang/String;

.field private final previousShelf:Ljava/lang/String;

.field private final shelf:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/amazon/kcp/goodreads/GoodreadsUpdateShelfWebRequest$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/amazon/kcp/goodreads/GoodreadsUpdateShelfWebRequest$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Collection<",
            "+",
            "Lcom/amazon/kcp/goodreads/IGoodreadsResponseCallback;",
            ">;)V"
        }
    .end annotation

    const-string v0, "customerId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "asin"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "shelf"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "registeredCallbacks"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    invoke-direct {p0, p2, p5}, Lcom/amazon/kcp/goodreads/BaseGoodreadsShelfWebRequest;-><init>(Ljava/lang/String;Ljava/util/Collection;)V

    iput-object p1, p0, Lcom/amazon/kcp/goodreads/GoodreadsUpdateShelfWebRequest;->customerId:Ljava/lang/String;

    iput-object p3, p0, Lcom/amazon/kcp/goodreads/GoodreadsUpdateShelfWebRequest;->shelf:Ljava/lang/String;

    iput-object p4, p0, Lcom/amazon/kcp/goodreads/GoodreadsUpdateShelfWebRequest;->previousShelf:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getHttpVerb()Ljava/lang/String;
    .locals 1

    const-string v0, "PUT"

    return-object v0
.end method

.method public getPostFormData()Ljava/lang/String;
    .locals 7

    .line 28
    new-instance v0, Lorg/json/JSONObject;

    const/4 v1, 0x2

    new-array v1, v1, [Lkotlin/Pair;

    new-instance v2, Lkotlin/Pair;

    iget-object v3, p0, Lcom/amazon/kcp/goodreads/GoodreadsUpdateShelfWebRequest;->shelf:Ljava/lang/String;

    const-string/jumbo v4, "name"

    invoke-direct {v2, v4, v3}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v3, 0x0

    aput-object v2, v1, v3

    new-instance v2, Lkotlin/Pair;

    iget-object v4, p0, Lcom/amazon/kcp/goodreads/GoodreadsUpdateShelfWebRequest;->shelf:Ljava/lang/String;

    const-string/jumbo v5, "read"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/amazon/kcp/goodreads/GoodreadsUpdateShelfWebRequest;->previousShelf:Ljava/lang/String;

    const-string v6, "currently-reading"

    invoke-static {v4, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v3, 0x1

    :cond_0
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const-string/jumbo v4, "set_read_at"

    invoke-direct {v2, v4, v3}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v2, v1, v5

    invoke-static {v1}, Lkotlin/collections/MapsKt;->mapOf([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "JSONObject(mapOf(Pair(SH\u2026TLY_READING))).toString()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 4

    .line 24
    sget-object v0, Lkotlin/jvm/internal/StringCompanionObject;->INSTANCE:Lkotlin/jvm/internal/StringCompanionObject;

    const/4 v0, 0x2

    new-array v1, v0, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/amazon/kcp/goodreads/GoodreadsUpdateShelfWebRequest;->customerId:Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {p0}, Lcom/amazon/kcp/goodreads/BaseGoodreadsShelfWebRequest;->getAsin()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    const-string v1, "https://kca.amazon.com/kca/library:amzn/%s/book:amzn/%s/shelf"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "java.lang.String.format(format, *args)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public requestType()Lcom/amazon/kcp/goodreads/GoodreadsRequestType;
    .locals 1

    .line 32
    sget-object v0, Lcom/amazon/kcp/goodreads/GoodreadsRequestType;->UPDATE_SHELF:Lcom/amazon/kcp/goodreads/GoodreadsRequestType;

    return-object v0
.end method
