.class public Lcom/amazon/org/codehaus/jackson/map/deser/std/TokenBufferDeserializer;
.super Lcom/amazon/org/codehaus/jackson/map/deser/std/StdScalarDeserializer;
.source "TokenBufferDeserializer.java"


# annotations
.annotation runtime Lcom/amazon/org/codehaus/jackson/map/annotate/JacksonStdImpl;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/amazon/org/codehaus/jackson/map/deser/std/StdScalarDeserializer<",
        "Lcom/amazon/org/codehaus/jackson/util/TokenBuffer;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 25
    const-class v0, Lcom/amazon/org/codehaus/jackson/util/TokenBuffer;

    invoke-direct {p0, v0}, Lcom/amazon/org/codehaus/jackson/map/deser/std/StdScalarDeserializer;-><init>(Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public deserialize(Lcom/amazon/org/codehaus/jackson/JsonParser;Lcom/amazon/org/codehaus/jackson/map/DeserializationContext;)Lcom/amazon/org/codehaus/jackson/util/TokenBuffer;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/org/codehaus/jackson/JsonProcessingException;
        }
    .end annotation

    .line 31
    new-instance p2, Lcom/amazon/org/codehaus/jackson/util/TokenBuffer;

    invoke-virtual {p1}, Lcom/amazon/org/codehaus/jackson/JsonParser;->getCodec()Lcom/amazon/org/codehaus/jackson/ObjectCodec;

    move-result-object v0

    invoke-direct {p2, v0}, Lcom/amazon/org/codehaus/jackson/util/TokenBuffer;-><init>(Lcom/amazon/org/codehaus/jackson/ObjectCodec;)V

    .line 33
    invoke-virtual {p2, p1}, Lcom/amazon/org/codehaus/jackson/util/TokenBuffer;->copyCurrentStructure(Lcom/amazon/org/codehaus/jackson/JsonParser;)V

    return-object p2
.end method

.method public bridge synthetic deserialize(Lcom/amazon/org/codehaus/jackson/JsonParser;Lcom/amazon/org/codehaus/jackson/map/DeserializationContext;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/org/codehaus/jackson/JsonProcessingException;
        }
    .end annotation

    .line 21
    invoke-virtual {p0, p1, p2}, Lcom/amazon/org/codehaus/jackson/map/deser/std/TokenBufferDeserializer;->deserialize(Lcom/amazon/org/codehaus/jackson/JsonParser;Lcom/amazon/org/codehaus/jackson/map/DeserializationContext;)Lcom/amazon/org/codehaus/jackson/util/TokenBuffer;

    move-result-object p1

    return-object p1
.end method
