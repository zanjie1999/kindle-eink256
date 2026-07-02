.class public abstract Lcom/amazon/org/codehaus/jackson/ObjectCodec;
.super Ljava/lang/Object;
.source "ObjectCodec.java"


# direct methods
.method protected constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract createArrayNode()Lcom/amazon/org/codehaus/jackson/JsonNode;
.end method

.method public abstract createObjectNode()Lcom/amazon/org/codehaus/jackson/JsonNode;
.end method

.method public abstract readTree(Lcom/amazon/org/codehaus/jackson/JsonParser;)Lcom/amazon/org/codehaus/jackson/JsonNode;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/org/codehaus/jackson/JsonProcessingException;
        }
    .end annotation
.end method

.method public abstract readValue(Lcom/amazon/org/codehaus/jackson/JsonParser;Lcom/amazon/org/codehaus/jackson/type/JavaType;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/amazon/org/codehaus/jackson/JsonParser;",
            "Lcom/amazon/org/codehaus/jackson/type/JavaType;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/org/codehaus/jackson/JsonProcessingException;
        }
    .end annotation
.end method

.method public abstract readValue(Lcom/amazon/org/codehaus/jackson/JsonParser;Lcom/amazon/org/codehaus/jackson/type/TypeReference;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/amazon/org/codehaus/jackson/JsonParser;",
            "Lcom/amazon/org/codehaus/jackson/type/TypeReference<",
            "*>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/org/codehaus/jackson/JsonProcessingException;
        }
    .end annotation
.end method

.method public abstract readValue(Lcom/amazon/org/codehaus/jackson/JsonParser;Ljava/lang/Class;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/amazon/org/codehaus/jackson/JsonParser;",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/org/codehaus/jackson/JsonProcessingException;
        }
    .end annotation
.end method

.method public abstract readValues(Lcom/amazon/org/codehaus/jackson/JsonParser;Lcom/amazon/org/codehaus/jackson/type/JavaType;)Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/amazon/org/codehaus/jackson/JsonParser;",
            "Lcom/amazon/org/codehaus/jackson/type/JavaType;",
            ")",
            "Ljava/util/Iterator<",
            "TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/org/codehaus/jackson/JsonProcessingException;
        }
    .end annotation
.end method

.method public abstract readValues(Lcom/amazon/org/codehaus/jackson/JsonParser;Lcom/amazon/org/codehaus/jackson/type/TypeReference;)Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/amazon/org/codehaus/jackson/JsonParser;",
            "Lcom/amazon/org/codehaus/jackson/type/TypeReference<",
            "*>;)",
            "Ljava/util/Iterator<",
            "TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/org/codehaus/jackson/JsonProcessingException;
        }
    .end annotation
.end method

.method public abstract readValues(Lcom/amazon/org/codehaus/jackson/JsonParser;Ljava/lang/Class;)Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/amazon/org/codehaus/jackson/JsonParser;",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Ljava/util/Iterator<",
            "TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/org/codehaus/jackson/JsonProcessingException;
        }
    .end annotation
.end method

.method public abstract treeAsTokens(Lcom/amazon/org/codehaus/jackson/JsonNode;)Lcom/amazon/org/codehaus/jackson/JsonParser;
.end method

.method public abstract treeToValue(Lcom/amazon/org/codehaus/jackson/JsonNode;Ljava/lang/Class;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/amazon/org/codehaus/jackson/JsonNode;",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/org/codehaus/jackson/JsonProcessingException;
        }
    .end annotation
.end method

.method public abstract writeTree(Lcom/amazon/org/codehaus/jackson/JsonGenerator;Lcom/amazon/org/codehaus/jackson/JsonNode;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/org/codehaus/jackson/JsonProcessingException;
        }
    .end annotation
.end method

.method public abstract writeValue(Lcom/amazon/org/codehaus/jackson/JsonGenerator;Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/org/codehaus/jackson/JsonProcessingException;
        }
    .end annotation
.end method
