.class public final Lcom/amazon/org/codehaus/jackson/map/deser/StdDeserializerProvider$WrappedDeserializer;
.super Lcom/amazon/org/codehaus/jackson/map/JsonDeserializer;
.source "StdDeserializerProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/org/codehaus/jackson/map/deser/StdDeserializerProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1c
    name = "WrappedDeserializer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/amazon/org/codehaus/jackson/map/JsonDeserializer<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final _deserializer:Lcom/amazon/org/codehaus/jackson/map/JsonDeserializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/amazon/org/codehaus/jackson/map/JsonDeserializer<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field final _typeDeserializer:Lcom/amazon/org/codehaus/jackson/map/TypeDeserializer;


# direct methods
.method public constructor <init>(Lcom/amazon/org/codehaus/jackson/map/TypeDeserializer;Lcom/amazon/org/codehaus/jackson/map/JsonDeserializer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/org/codehaus/jackson/map/TypeDeserializer;",
            "Lcom/amazon/org/codehaus/jackson/map/JsonDeserializer<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 452
    invoke-direct {p0}, Lcom/amazon/org/codehaus/jackson/map/JsonDeserializer;-><init>()V

    .line 453
    iput-object p1, p0, Lcom/amazon/org/codehaus/jackson/map/deser/StdDeserializerProvider$WrappedDeserializer;->_typeDeserializer:Lcom/amazon/org/codehaus/jackson/map/TypeDeserializer;

    .line 454
    iput-object p2, p0, Lcom/amazon/org/codehaus/jackson/map/deser/StdDeserializerProvider$WrappedDeserializer;->_deserializer:Lcom/amazon/org/codehaus/jackson/map/JsonDeserializer;

    return-void
.end method


# virtual methods
.method public deserialize(Lcom/amazon/org/codehaus/jackson/JsonParser;Lcom/amazon/org/codehaus/jackson/map/DeserializationContext;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/org/codehaus/jackson/JsonProcessingException;
        }
    .end annotation

    .line 461
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/deser/StdDeserializerProvider$WrappedDeserializer;->_deserializer:Lcom/amazon/org/codehaus/jackson/map/JsonDeserializer;

    iget-object v1, p0, Lcom/amazon/org/codehaus/jackson/map/deser/StdDeserializerProvider$WrappedDeserializer;->_typeDeserializer:Lcom/amazon/org/codehaus/jackson/map/TypeDeserializer;

    invoke-virtual {v0, p1, p2, v1}, Lcom/amazon/org/codehaus/jackson/map/JsonDeserializer;->deserializeWithType(Lcom/amazon/org/codehaus/jackson/JsonParser;Lcom/amazon/org/codehaus/jackson/map/DeserializationContext;Lcom/amazon/org/codehaus/jackson/map/TypeDeserializer;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public deserializeWithType(Lcom/amazon/org/codehaus/jackson/JsonParser;Lcom/amazon/org/codehaus/jackson/map/DeserializationContext;Lcom/amazon/org/codehaus/jackson/map/TypeDeserializer;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/org/codehaus/jackson/JsonProcessingException;
        }
    .end annotation

    .line 470
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Type-wrapped deserializer\'s deserializeWithType should never get called"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
