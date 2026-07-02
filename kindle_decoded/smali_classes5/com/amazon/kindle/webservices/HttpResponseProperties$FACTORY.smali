.class public final Lcom/amazon/kindle/webservices/HttpResponseProperties$FACTORY;
.super Ljava/lang/Object;
.source "HttpResponseProperties.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kindle/webservices/HttpResponseProperties;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "FACTORY"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 67
    invoke-direct {p0}, Lcom/amazon/kindle/webservices/HttpResponseProperties$FACTORY;-><init>()V

    return-void
.end method


# virtual methods
.method public final build(Ljava/net/HttpURLConnection;)Lcom/amazon/kindle/webservices/HttpResponseProperties;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "from"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 79
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_0

    .line 80
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getContentLengthLong()J

    move-result-wide v0

    goto :goto_0

    .line 83
    :cond_0
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v0

    int-to-long v0, v0

    .line 86
    :goto_0
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v2

    const-string v3, "from.headerFields"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v2}, Lcom/amazon/kindle/webservices/okhttp/OkHttpHeadersUtilsKt;->toHeaders(Ljava/util/Map;)Lokhttp3/Headers;

    move-result-object v9

    .line 88
    new-instance v2, Lcom/amazon/kindle/webservices/HttpResponseProperties;

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v5

    const-wide/16 v3, -0x1

    cmp-long v6, v0, v3

    if-eqz v6, :cond_1

    .line 89
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    move-object v6, v0

    .line 90
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getContentType()Ljava/lang/String;

    move-result-object v7

    .line 91
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getContentEncoding()Ljava/lang/String;

    move-result-object v8

    move-object v4, v2

    .line 88
    invoke-direct/range {v4 .. v9}, Lcom/amazon/kindle/webservices/HttpResponseProperties;-><init>(ILjava/lang/Long;Ljava/lang/String;Ljava/lang/String;Lokhttp3/Headers;)V

    return-object v2
.end method
