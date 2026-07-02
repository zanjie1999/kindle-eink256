.class final Lcom/amazon/kindle/com/amazonaws/util/json/GsonFactory$GsonReader;
.super Ljava/lang/Object;
.source "GsonFactory.java"

# interfaces
.implements Lcom/amazon/kindle/com/amazonaws/util/json/AwsJsonReader;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kindle/com/amazonaws/util/json/GsonFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "GsonReader"
.end annotation


# instance fields
.field private final reader:Lcom/google/gson/stream/JsonReader;


# direct methods
.method public constructor <init>(Ljava/io/Reader;)V
    .locals 1

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    new-instance v0, Lcom/google/gson/stream/JsonReader;

    invoke-direct {v0, p1}, Lcom/google/gson/stream/JsonReader;-><init>(Ljava/io/Reader;)V

    iput-object v0, p0, Lcom/amazon/kindle/com/amazonaws/util/json/GsonFactory$GsonReader;->reader:Lcom/google/gson/stream/JsonReader;

    return-void
.end method


# virtual methods
.method public beginArray()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 55
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/util/json/GsonFactory$GsonReader;->reader:Lcom/google/gson/stream/JsonReader;

    invoke-virtual {v0}, Lcom/google/gson/stream/JsonReader;->beginArray()V

    return-void
.end method

.method public beginObject()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 65
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/util/json/GsonFactory$GsonReader;->reader:Lcom/google/gson/stream/JsonReader;

    invoke-virtual {v0}, Lcom/google/gson/stream/JsonReader;->beginObject()V

    return-void
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 119
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/util/json/GsonFactory$GsonReader;->reader:Lcom/google/gson/stream/JsonReader;

    invoke-virtual {v0}, Lcom/google/gson/stream/JsonReader;->close()V

    return-void
.end method

.method public endArray()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 60
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/util/json/GsonFactory$GsonReader;->reader:Lcom/google/gson/stream/JsonReader;

    invoke-virtual {v0}, Lcom/google/gson/stream/JsonReader;->endArray()V

    return-void
.end method

.method public endObject()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 70
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/util/json/GsonFactory$GsonReader;->reader:Lcom/google/gson/stream/JsonReader;

    invoke-virtual {v0}, Lcom/google/gson/stream/JsonReader;->endObject()V

    return-void
.end method

.method public hasNext()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 82
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/util/json/GsonFactory$GsonReader;->reader:Lcom/google/gson/stream/JsonReader;

    invoke-virtual {v0}, Lcom/google/gson/stream/JsonReader;->hasNext()Z

    move-result v0

    return v0
.end method

.method public isContainer()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 75
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/util/json/GsonFactory$GsonReader;->reader:Lcom/google/gson/stream/JsonReader;

    invoke-virtual {v0}, Lcom/google/gson/stream/JsonReader;->peek()Lcom/google/gson/stream/JsonToken;

    move-result-object v0

    .line 76
    sget-object v1, Lcom/google/gson/stream/JsonToken;->BEGIN_ARRAY:Lcom/google/gson/stream/JsonToken;

    invoke-virtual {v1, v0}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    sget-object v1, Lcom/google/gson/stream/JsonToken;->BEGIN_OBJECT:Lcom/google/gson/stream/JsonToken;

    .line 77
    invoke-virtual {v1, v0}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public nextName()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 87
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/util/json/GsonFactory$GsonReader;->reader:Lcom/google/gson/stream/JsonReader;

    invoke-virtual {v0}, Lcom/google/gson/stream/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public nextString()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 92
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/util/json/GsonFactory$GsonReader;->reader:Lcom/google/gson/stream/JsonReader;

    invoke-virtual {v0}, Lcom/google/gson/stream/JsonReader;->peek()Lcom/google/gson/stream/JsonToken;

    move-result-object v0

    .line 93
    sget-object v1, Lcom/google/gson/stream/JsonToken;->NULL:Lcom/google/gson/stream/JsonToken;

    invoke-virtual {v1, v0}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 94
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/util/json/GsonFactory$GsonReader;->reader:Lcom/google/gson/stream/JsonReader;

    invoke-virtual {v0}, Lcom/google/gson/stream/JsonReader;->nextNull()V

    const/4 v0, 0x0

    return-object v0

    .line 97
    :cond_0
    sget-object v1, Lcom/google/gson/stream/JsonToken;->BOOLEAN:Lcom/google/gson/stream/JsonToken;

    invoke-virtual {v1, v0}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 98
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/util/json/GsonFactory$GsonReader;->reader:Lcom/google/gson/stream/JsonReader;

    invoke-virtual {v0}, Lcom/google/gson/stream/JsonReader;->nextBoolean()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "true"

    goto :goto_0

    :cond_1
    const-string v0, "false"

    :goto_0
    return-object v0

    .line 100
    :cond_2
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/util/json/GsonFactory$GsonReader;->reader:Lcom/google/gson/stream/JsonReader;

    invoke-virtual {v0}, Lcom/google/gson/stream/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public peek()Lcom/amazon/kindle/com/amazonaws/util/json/AwsJsonToken;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 111
    :try_start_0
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/util/json/GsonFactory$GsonReader;->reader:Lcom/google/gson/stream/JsonReader;

    invoke-virtual {v0}, Lcom/google/gson/stream/JsonReader;->peek()Lcom/google/gson/stream/JsonToken;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/kindle/com/amazonaws/util/json/GsonFactory;->access$000(Lcom/google/gson/stream/JsonToken;)Lcom/amazon/kindle/com/amazonaws/util/json/AwsJsonToken;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public skipValue()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 105
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/util/json/GsonFactory$GsonReader;->reader:Lcom/google/gson/stream/JsonReader;

    invoke-virtual {v0}, Lcom/google/gson/stream/JsonReader;->skipValue()V

    return-void
.end method
