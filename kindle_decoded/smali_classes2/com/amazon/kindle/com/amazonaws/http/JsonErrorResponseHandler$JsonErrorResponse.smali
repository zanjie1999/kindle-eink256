.class public final Lcom/amazon/kindle/com/amazonaws/http/JsonErrorResponseHandler$JsonErrorResponse;
.super Ljava/lang/Object;
.source "JsonErrorResponseHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kindle/com/amazonaws/http/JsonErrorResponseHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "JsonErrorResponse"
.end annotation


# instance fields
.field private final errorCode:Ljava/lang/String;

.field private final map:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final message:Ljava/lang/String;

.field private final statusCode:I


# direct methods
.method private constructor <init>(ILjava/lang/String;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 120
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 121
    iput p1, p0, Lcom/amazon/kindle/com/amazonaws/http/JsonErrorResponseHandler$JsonErrorResponse;->statusCode:I

    .line 122
    iput-object p2, p0, Lcom/amazon/kindle/com/amazonaws/http/JsonErrorResponseHandler$JsonErrorResponse;->errorCode:Ljava/lang/String;

    .line 123
    iput-object p3, p0, Lcom/amazon/kindle/com/amazonaws/http/JsonErrorResponseHandler$JsonErrorResponse;->map:Ljava/util/Map;

    const-string p1, "message"

    .line 124
    invoke-virtual {p0, p1}, Lcom/amazon/kindle/com/amazonaws/http/JsonErrorResponseHandler$JsonErrorResponse;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kindle/com/amazonaws/http/JsonErrorResponseHandler$JsonErrorResponse;->message:Ljava/lang/String;

    return-void
.end method

.method public static fromResponse(Lcom/amazon/kindle/com/amazonaws/http/HttpResponse;)Lcom/amazon/kindle/com/amazonaws/http/JsonErrorResponseHandler$JsonErrorResponse;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 190
    invoke-virtual {p0}, Lcom/amazon/kindle/com/amazonaws/http/HttpResponse;->getStatusCode()I

    move-result v0

    .line 193
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/InputStreamReader;

    .line 194
    invoke-virtual {p0}, Lcom/amazon/kindle/com/amazonaws/http/HttpResponse;->getContent()Ljava/io/InputStream;

    move-result-object v3

    sget-object v4, Lcom/amazon/kindle/com/amazonaws/util/StringUtils;->UTF8:Ljava/nio/charset/Charset;

    invoke-direct {v2, v3, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 193
    invoke-static {v1}, Lcom/amazon/kindle/com/amazonaws/util/json/JsonUtils;->jsonToMap(Ljava/io/Reader;)Ljava/util/Map;

    move-result-object v1

    .line 201
    invoke-virtual {p0}, Lcom/amazon/kindle/com/amazonaws/http/HttpResponse;->getHeaders()Ljava/util/Map;

    move-result-object p0

    const-string/jumbo v2, "x-amzn-ErrorType"

    invoke-interface {p0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    if-eqz p0, :cond_0

    const/16 v2, 0x3a

    .line 203
    invoke-virtual {p0, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_1

    const/4 v3, 0x0

    .line 205
    invoke-virtual {p0, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const-string v2, "__type"

    .line 207
    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 209
    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    const-string v2, "#"

    .line 210
    invoke-virtual {p0, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    .line 211
    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 214
    :cond_1
    :goto_0
    new-instance v2, Lcom/amazon/kindle/com/amazonaws/http/JsonErrorResponseHandler$JsonErrorResponse;

    invoke-direct {v2, v0, p0, v1}, Lcom/amazon/kindle/com/amazonaws/http/JsonErrorResponseHandler$JsonErrorResponse;-><init>(ILjava/lang/String;Ljava/util/Map;)V

    return-object v2
.end method


# virtual methods
.method public get(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    if-eqz p1, :cond_3

    .line 161
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 168
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/amazon/kindle/com/amazonaws/util/StringUtils;->lowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 169
    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 171
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/amazon/kindle/com/amazonaws/util/StringUtils;->upperCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 172
    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 175
    iget-object v1, p0, Lcom/amazon/kindle/com/amazonaws/http/JsonErrorResponseHandler$JsonErrorResponse;->map:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 176
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/http/JsonErrorResponseHandler$JsonErrorResponse;->map:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    goto :goto_0

    .line 177
    :cond_1
    iget-object p1, p0, Lcom/amazon/kindle/com/amazonaws/http/JsonErrorResponseHandler$JsonErrorResponse;->map:Ljava/util/Map;

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 178
    iget-object p1, p0, Lcom/amazon/kindle/com/amazonaws/http/JsonErrorResponseHandler$JsonErrorResponse;->map:Ljava/util/Map;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    goto :goto_0

    :cond_2
    const-string p1, ""

    :goto_0
    return-object p1

    :cond_3
    :goto_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public getErrorCode()Ljava/lang/String;
    .locals 1

    .line 142
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/http/JsonErrorResponseHandler$JsonErrorResponse;->errorCode:Ljava/lang/String;

    return-object v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    .line 151
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/http/JsonErrorResponseHandler$JsonErrorResponse;->message:Ljava/lang/String;

    return-object v0
.end method
