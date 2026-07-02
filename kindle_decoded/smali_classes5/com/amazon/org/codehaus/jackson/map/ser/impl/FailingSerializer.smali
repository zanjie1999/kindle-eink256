.class public final Lcom/amazon/org/codehaus/jackson/map/ser/impl/FailingSerializer;
.super Lcom/amazon/org/codehaus/jackson/map/ser/std/SerializerBase;
.source "FailingSerializer.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/amazon/org/codehaus/jackson/map/ser/std/SerializerBase<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final _msg:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 26
    const-class v0, Ljava/lang/Object;

    invoke-direct {p0, v0}, Lcom/amazon/org/codehaus/jackson/map/ser/std/SerializerBase;-><init>(Ljava/lang/Class;)V

    .line 27
    iput-object p1, p0, Lcom/amazon/org/codehaus/jackson/map/ser/impl/FailingSerializer;->_msg:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getSchema(Lcom/amazon/org/codehaus/jackson/map/SerializerProvider;Ljava/lang/reflect/Type;)Lcom/amazon/org/codehaus/jackson/JsonNode;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/org/codehaus/jackson/map/JsonMappingException;
        }
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method

.method public serialize(Ljava/lang/Object;Lcom/amazon/org/codehaus/jackson/JsonGenerator;Lcom/amazon/org/codehaus/jackson/map/SerializerProvider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/org/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    .line 34
    new-instance p1, Lcom/amazon/org/codehaus/jackson/JsonGenerationException;

    iget-object p2, p0, Lcom/amazon/org/codehaus/jackson/map/ser/impl/FailingSerializer;->_msg:Ljava/lang/String;

    invoke-direct {p1, p2}, Lcom/amazon/org/codehaus/jackson/JsonGenerationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
