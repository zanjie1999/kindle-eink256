.class public final Lcom/amazon/kcp/library/releaselicense/api/InvalidDownloadsResponseHandler;
.super Lcom/amazon/kindle/webservices/ResultResponseHandler;
.source "GetInvalidDownloadsWebRequest.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/amazon/kindle/webservices/ResultResponseHandler<",
        "Ljava/util/List<",
        "+",
        "Ljava/lang/String;",
        ">;>;"
    }
.end annotation


# instance fields
.field private final TAG:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 58
    invoke-direct {p0}, Lcom/amazon/kindle/webservices/ResultResponseHandler;-><init>()V

    .line 60
    const-class v0, Lcom/amazon/kcp/library/releaselicense/api/GetInvalidDownloadsWebRequest;

    invoke-static {v0}, Lcom/amazon/kindle/log/Log;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kcp/library/releaselicense/api/InvalidDownloadsResponseHandler;->TAG:Ljava/lang/String;

    return-void
.end method

.method private final parseServerResponse(Lorg/json/JSONObject;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "result"

    .line 76
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 78
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 79
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v2

    :goto_0
    if-ge v1, v2, :cond_0

    .line 80
    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "asinJsonArray.getString(i)"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method


# virtual methods
.method public onInputStream(Ljava/io/InputStream;)V
    .locals 3

    const-string v0, "inputStream"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 64
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    const-string v1, "UTF-8"

    invoke-static {p1, v1}, Lorg/apache/commons/io/IOUtils;->toString(Ljava/io/InputStream;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 65
    invoke-direct {p0, v0}, Lcom/amazon/kcp/library/releaselicense/api/InvalidDownloadsResponseHandler;->parseServerResponse(Lorg/json/JSONObject;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/amazon/kindle/webservices/ResultResponseHandler;->setResult(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 69
    :try_start_1
    iget-object v1, p0, Lcom/amazon/kcp/library/releaselicense/api/InvalidDownloadsResponseHandler;->TAG:Ljava/lang/String;

    const-string v2, "Error while parsing server response"

    invoke-static {v1, v2, v0}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_1
    move-exception v0

    .line 67
    iget-object v1, p0, Lcom/amazon/kcp/library/releaselicense/api/InvalidDownloadsResponseHandler;->TAG:Ljava/lang/String;

    const-string v2, "IOException thrown while converting input-stream of household data to JSONObject"

    invoke-static {v1, v2, v0}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 71
    :goto_0
    invoke-static {p1}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    return-void

    :goto_1
    invoke-static {p1}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    throw v0
.end method
