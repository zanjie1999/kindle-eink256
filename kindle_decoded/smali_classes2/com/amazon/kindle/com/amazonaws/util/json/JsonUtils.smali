.class public Lcom/amazon/kindle/com/amazonaws/util/json/JsonUtils;
.super Ljava/lang/Object;
.source "JsonUtils.java"


# static fields
.field private static volatile factory:Lcom/amazon/kindle/com/amazonaws/util/json/AwsJsonFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 34
    new-instance v0, Lcom/amazon/kindle/com/amazonaws/util/json/GsonFactory;

    invoke-direct {v0}, Lcom/amazon/kindle/com/amazonaws/util/json/GsonFactory;-><init>()V

    sput-object v0, Lcom/amazon/kindle/com/amazonaws/util/json/JsonUtils;->factory:Lcom/amazon/kindle/com/amazonaws/util/json/AwsJsonFactory;

    return-void
.end method

.method public static getJsonReader(Ljava/io/Reader;)Lcom/amazon/kindle/com/amazonaws/util/json/AwsJsonReader;
    .locals 1

    .line 99
    sget-object v0, Lcom/amazon/kindle/com/amazonaws/util/json/JsonUtils;->factory:Lcom/amazon/kindle/com/amazonaws/util/json/AwsJsonFactory;

    if-eqz v0, :cond_0

    .line 102
    sget-object v0, Lcom/amazon/kindle/com/amazonaws/util/json/JsonUtils;->factory:Lcom/amazon/kindle/com/amazonaws/util/json/AwsJsonFactory;

    invoke-interface {v0, p0}, Lcom/amazon/kindle/com/amazonaws/util/json/AwsJsonFactory;->getJsonReader(Ljava/io/Reader;)Lcom/amazon/kindle/com/amazonaws/util/json/AwsJsonReader;

    move-result-object p0

    return-object p0

    .line 100
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Json engine is unavailable."

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static getJsonWriter(Ljava/io/Writer;)Lcom/amazon/kindle/com/amazonaws/util/json/AwsJsonWriter;
    .locals 1

    .line 113
    sget-object v0, Lcom/amazon/kindle/com/amazonaws/util/json/JsonUtils;->factory:Lcom/amazon/kindle/com/amazonaws/util/json/AwsJsonFactory;

    if-eqz v0, :cond_0

    .line 116
    sget-object v0, Lcom/amazon/kindle/com/amazonaws/util/json/JsonUtils;->factory:Lcom/amazon/kindle/com/amazonaws/util/json/AwsJsonFactory;

    invoke-interface {v0, p0}, Lcom/amazon/kindle/com/amazonaws/util/json/AwsJsonFactory;->getJsonWriter(Ljava/io/Writer;)Lcom/amazon/kindle/com/amazonaws/util/json/AwsJsonWriter;

    move-result-object p0

    return-object p0

    .line 114
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Json engine is unavailable."

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static jsonToMap(Ljava/io/Reader;)Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/Reader;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 128
    invoke-static {p0}, Lcom/amazon/kindle/com/amazonaws/util/json/JsonUtils;->getJsonReader(Ljava/io/Reader;)Lcom/amazon/kindle/com/amazonaws/util/json/AwsJsonReader;

    move-result-object p0

    .line 131
    :try_start_0
    invoke-interface {p0}, Lcom/amazon/kindle/com/amazonaws/util/json/AwsJsonReader;->peek()Lcom/amazon/kindle/com/amazonaws/util/json/AwsJsonToken;

    move-result-object v0

    if-nez v0, :cond_0

    .line 132
    sget-object p0, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    return-object p0

    .line 135
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 136
    invoke-interface {p0}, Lcom/amazon/kindle/com/amazonaws/util/json/AwsJsonReader;->beginObject()V

    .line 137
    :goto_0
    invoke-interface {p0}, Lcom/amazon/kindle/com/amazonaws/util/json/AwsJsonReader;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 138
    invoke-interface {p0}, Lcom/amazon/kindle/com/amazonaws/util/json/AwsJsonReader;->nextName()Ljava/lang/String;

    move-result-object v1

    .line 139
    invoke-interface {p0}, Lcom/amazon/kindle/com/amazonaws/util/json/AwsJsonReader;->isContainer()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 141
    invoke-interface {p0}, Lcom/amazon/kindle/com/amazonaws/util/json/AwsJsonReader;->skipValue()V

    goto :goto_0

    .line 143
    :cond_1
    invoke-interface {p0}, Lcom/amazon/kindle/com/amazonaws/util/json/AwsJsonReader;->nextString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 146
    :cond_2
    invoke-interface {p0}, Lcom/amazon/kindle/com/amazonaws/util/json/AwsJsonReader;->endObject()V

    .line 147
    invoke-interface {p0}, Lcom/amazon/kindle/com/amazonaws/util/json/AwsJsonReader;->close()V

    .line 149
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 151
    new-instance v0, Lcom/amazon/kindle/com/amazonaws/AmazonClientException;

    const-string v1, "Unable to parse JSON String."

    invoke-direct {v0, v1, p0}, Lcom/amazon/kindle/com/amazonaws/AmazonClientException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static jsonToMap(Ljava/lang/String;)Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    if-eqz p0, :cond_1

    .line 164
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 167
    :cond_0
    new-instance v0, Ljava/io/StringReader;

    invoke-direct {v0, p0}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/amazon/kindle/com/amazonaws/util/json/JsonUtils;->jsonToMap(Ljava/io/Reader;)Ljava/util/Map;

    move-result-object p0

    return-object p0

    .line 165
    :cond_1
    :goto_0
    sget-object p0, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    return-object p0
.end method
