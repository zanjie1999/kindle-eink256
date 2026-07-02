.class public Lcom/amazon/kindle/com/amazonaws/http/JsonResponseHandler;
.super Ljava/lang/Object;
.source "JsonResponseHandler.java"

# interfaces
.implements Lcom/amazon/kindle/com/amazonaws/http/HttpResponseHandler;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/amazon/kindle/com/amazonaws/http/HttpResponseHandler<",
        "Lcom/amazon/kindle/com/amazonaws/AmazonWebServiceResponse<",
        "TT;>;>;"
    }
.end annotation


# static fields
.field private static final log:Lcom/amazon/kindle/com/amazonaws/logging/Log;


# instance fields
.field public needsConnectionLeftOpen:Z

.field private responseUnmarshaller:Lcom/amazon/kindle/com/amazonaws/transform/Unmarshaller;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/amazon/kindle/com/amazonaws/transform/Unmarshaller<",
            "TT;",
            "Lcom/amazon/kindle/com/amazonaws/transform/JsonUnmarshallerContext;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "com.amazon.kindle.com.amazonaws.request"

    .line 53
    invoke-static {v0}, Lcom/amazon/kindle/com/amazonaws/logging/LogFactory;->getLog(Ljava/lang/String;)Lcom/amazon/kindle/com/amazonaws/logging/Log;

    move-result-object v0

    sput-object v0, Lcom/amazon/kindle/com/amazonaws/http/JsonResponseHandler;->log:Lcom/amazon/kindle/com/amazonaws/logging/Log;

    return-void
.end method

.method public constructor <init>(Lcom/amazon/kindle/com/amazonaws/transform/Unmarshaller;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kindle/com/amazonaws/transform/Unmarshaller<",
            "TT;",
            "Lcom/amazon/kindle/com/amazonaws/transform/JsonUnmarshallerContext;",
            ">;)V"
        }
    .end annotation

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 56
    iput-boolean v0, p0, Lcom/amazon/kindle/com/amazonaws/http/JsonResponseHandler;->needsConnectionLeftOpen:Z

    .line 68
    iput-object p1, p0, Lcom/amazon/kindle/com/amazonaws/http/JsonResponseHandler;->responseUnmarshaller:Lcom/amazon/kindle/com/amazonaws/transform/Unmarshaller;

    if-nez p1, :cond_0

    .line 77
    new-instance p1, Lcom/amazon/kindle/com/amazonaws/transform/VoidJsonUnmarshaller;

    invoke-direct {p1}, Lcom/amazon/kindle/com/amazonaws/transform/VoidJsonUnmarshaller;-><init>()V

    iput-object p1, p0, Lcom/amazon/kindle/com/amazonaws/http/JsonResponseHandler;->responseUnmarshaller:Lcom/amazon/kindle/com/amazonaws/transform/Unmarshaller;

    :cond_0
    return-void
.end method


# virtual methods
.method public handle(Lcom/amazon/kindle/com/amazonaws/http/HttpResponse;)Lcom/amazon/kindle/com/amazonaws/AmazonWebServiceResponse;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kindle/com/amazonaws/http/HttpResponse;",
            ")",
            "Lcom/amazon/kindle/com/amazonaws/AmazonWebServiceResponse<",
            "TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string v0, "Error closing json parser"

    .line 86
    sget-object v1, Lcom/amazon/kindle/com/amazonaws/http/JsonResponseHandler;->log:Lcom/amazon/kindle/com/amazonaws/logging/Log;

    const-string v2, "Parsing service response JSON"

    invoke-interface {v1, v2}, Lcom/amazon/kindle/com/amazonaws/logging/Log;->trace(Ljava/lang/Object;)V

    .line 88
    invoke-virtual {p1}, Lcom/amazon/kindle/com/amazonaws/http/HttpResponse;->getHeaders()Ljava/util/Map;

    move-result-object v1

    const-string/jumbo v2, "x-amz-crc32"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 93
    invoke-virtual {p1}, Lcom/amazon/kindle/com/amazonaws/http/HttpResponse;->getRawContent()Ljava/io/InputStream;

    move-result-object v2

    if-nez v2, :cond_0

    .line 96
    new-instance v2, Ljava/io/ByteArrayInputStream;

    sget-object v3, Lcom/amazon/kindle/com/amazonaws/util/StringUtils;->UTF8:Ljava/nio/charset/Charset;

    const-string/jumbo v4, "{}"

    invoke-virtual {v4, v3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 99
    :cond_0
    sget-object v3, Lcom/amazon/kindle/com/amazonaws/http/JsonResponseHandler;->log:Lcom/amazon/kindle/com/amazonaws/logging/Log;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CRC32Checksum = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/amazon/kindle/com/amazonaws/logging/Log;->debug(Ljava/lang/Object;)V

    .line 100
    sget-object v3, Lcom/amazon/kindle/com/amazonaws/http/JsonResponseHandler;->log:Lcom/amazon/kindle/com/amazonaws/logging/Log;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "content encoding = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/amazon/kindle/com/amazonaws/http/HttpResponse;->getHeaders()Ljava/util/Map;

    move-result-object v5

    const-string v6, "Content-Encoding"

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/amazon/kindle/com/amazonaws/logging/Log;->debug(Ljava/lang/Object;)V

    if-eqz v1, :cond_2

    .line 103
    new-instance v3, Lcom/amazon/kindle/com/amazonaws/util/CRC32ChecksumCalculatingInputStream;

    invoke-direct {v3, v2}, Lcom/amazon/kindle/com/amazonaws/util/CRC32ChecksumCalculatingInputStream;-><init>(Ljava/io/InputStream;)V

    .line 104
    invoke-virtual {p1}, Lcom/amazon/kindle/com/amazonaws/http/HttpResponse;->getHeaders()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    const-string v4, "gzip"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 105
    new-instance v2, Ljava/util/zip/GZIPInputStream;

    invoke-direct {v2, v3}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    goto :goto_0

    :cond_1
    move-object v2, v3

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    .line 111
    :goto_0
    new-instance v4, Ljava/io/InputStreamReader;

    sget-object v5, Lcom/amazon/kindle/com/amazonaws/util/StringUtils;->UTF8:Ljava/nio/charset/Charset;

    invoke-direct {v4, v2, v5}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    invoke-static {v4}, Lcom/amazon/kindle/com/amazonaws/util/json/JsonUtils;->getJsonReader(Ljava/io/Reader;)Lcom/amazon/kindle/com/amazonaws/util/json/AwsJsonReader;

    move-result-object v2

    .line 115
    :try_start_0
    new-instance v4, Lcom/amazon/kindle/com/amazonaws/AmazonWebServiceResponse;

    invoke-direct {v4}, Lcom/amazon/kindle/com/amazonaws/AmazonWebServiceResponse;-><init>()V

    .line 116
    new-instance v5, Lcom/amazon/kindle/com/amazonaws/transform/JsonUnmarshallerContext;

    invoke-direct {v5, v2, p1}, Lcom/amazon/kindle/com/amazonaws/transform/JsonUnmarshallerContext;-><init>(Lcom/amazon/kindle/com/amazonaws/util/json/AwsJsonReader;Lcom/amazon/kindle/com/amazonaws/http/HttpResponse;)V

    .line 119
    iget-object v6, p0, Lcom/amazon/kindle/com/amazonaws/http/JsonResponseHandler;->responseUnmarshaller:Lcom/amazon/kindle/com/amazonaws/transform/Unmarshaller;

    invoke-interface {v6, v5}, Lcom/amazon/kindle/com/amazonaws/transform/Unmarshaller;->unmarshall(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-eqz v1, :cond_4

    .line 122
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    .line 123
    invoke-virtual {v3}, Lcom/amazon/kindle/com/amazonaws/util/CRC32ChecksumCalculatingInputStream;->getCRC32Checksum()J

    move-result-wide v8

    cmp-long v1, v8, v6

    if-nez v1, :cond_3

    goto :goto_1

    .line 125
    :cond_3
    new-instance p1, Lcom/amazon/kindle/com/amazonaws/internal/CRC32MismatchException;

    const-string v1, "Client calculated crc32 checksum didn\'t match that calculated by server side"

    invoke-direct {p1, v1}, Lcom/amazon/kindle/com/amazonaws/internal/CRC32MismatchException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 130
    :cond_4
    :goto_1
    invoke-virtual {v4, v5}, Lcom/amazon/kindle/com/amazonaws/AmazonWebServiceResponse;->setResult(Ljava/lang/Object;)V

    .line 132
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v3, "AWS_REQUEST_ID"

    .line 134
    invoke-virtual {p1}, Lcom/amazon/kindle/com/amazonaws/http/HttpResponse;->getHeaders()Ljava/util/Map;

    move-result-object p1

    const-string/jumbo v5, "x-amzn-RequestId"

    invoke-interface {p1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 133
    invoke-interface {v1, v3, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    new-instance p1, Lcom/amazon/kindle/com/amazonaws/ResponseMetadata;

    invoke-direct {p1, v1}, Lcom/amazon/kindle/com/amazonaws/ResponseMetadata;-><init>(Ljava/util/Map;)V

    invoke-virtual {v4, p1}, Lcom/amazon/kindle/com/amazonaws/AmazonWebServiceResponse;->setResponseMetadata(Lcom/amazon/kindle/com/amazonaws/ResponseMetadata;)V

    .line 137
    sget-object p1, Lcom/amazon/kindle/com/amazonaws/http/JsonResponseHandler;->log:Lcom/amazon/kindle/com/amazonaws/logging/Log;

    const-string v1, "Done parsing service response"

    invoke-interface {p1, v1}, Lcom/amazon/kindle/com/amazonaws/logging/Log;->trace(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 140
    iget-boolean p1, p0, Lcom/amazon/kindle/com/amazonaws/http/JsonResponseHandler;->needsConnectionLeftOpen:Z

    if-nez p1, :cond_5

    .line 142
    :try_start_1
    invoke-interface {v2}, Lcom/amazon/kindle/com/amazonaws/util/json/AwsJsonReader;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    .line 144
    sget-object v1, Lcom/amazon/kindle/com/amazonaws/http/JsonResponseHandler;->log:Lcom/amazon/kindle/com/amazonaws/logging/Log;

    invoke-interface {v1, v0, p1}, Lcom/amazon/kindle/com/amazonaws/logging/Log;->warn(Ljava/lang/Object;Ljava/lang/Throwable;)V

    :cond_5
    :goto_2
    return-object v4

    :catchall_0
    move-exception p1

    .line 140
    iget-boolean v1, p0, Lcom/amazon/kindle/com/amazonaws/http/JsonResponseHandler;->needsConnectionLeftOpen:Z

    if-nez v1, :cond_6

    .line 142
    :try_start_2
    invoke-interface {v2}, Lcom/amazon/kindle/com/amazonaws/util/json/AwsJsonReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_3

    :catch_1
    move-exception v1

    .line 144
    sget-object v2, Lcom/amazon/kindle/com/amazonaws/http/JsonResponseHandler;->log:Lcom/amazon/kindle/com/amazonaws/logging/Log;

    invoke-interface {v2, v0, v1}, Lcom/amazon/kindle/com/amazonaws/logging/Log;->warn(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 147
    :cond_6
    :goto_3
    throw p1
.end method

.method public bridge synthetic handle(Lcom/amazon/kindle/com/amazonaws/http/HttpResponse;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 47
    invoke-virtual {p0, p1}, Lcom/amazon/kindle/com/amazonaws/http/JsonResponseHandler;->handle(Lcom/amazon/kindle/com/amazonaws/http/HttpResponse;)Lcom/amazon/kindle/com/amazonaws/AmazonWebServiceResponse;

    move-result-object p1

    return-object p1
.end method

.method public needsConnectionLeftOpen()Z
    .locals 1

    .line 170
    iget-boolean v0, p0, Lcom/amazon/kindle/com/amazonaws/http/JsonResponseHandler;->needsConnectionLeftOpen:Z

    return v0
.end method
