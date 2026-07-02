.class public abstract Lcom/amazon/org/codehaus/jackson/map/deser/std/StdScalarDeserializer;
.super Lcom/amazon/org/codehaus/jackson/map/deser/std/StdDeserializer;
.source "StdScalarDeserializer.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/amazon/org/codehaus/jackson/map/deser/std/StdDeserializer<",
        "TT;>;"
    }
.end annotation


# direct methods
.method protected constructor <init>(Lcom/amazon/org/codehaus/jackson/type/JavaType;)V
    .locals 0

    .line 24
    invoke-direct {p0, p1}, Lcom/amazon/org/codehaus/jackson/map/deser/std/StdDeserializer;-><init>(Lcom/amazon/org/codehaus/jackson/type/JavaType;)V

    return-void
.end method

.method protected constructor <init>(Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 20
    invoke-direct {p0, p1}, Lcom/amazon/org/codehaus/jackson/map/deser/std/StdDeserializer;-><init>(Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public deserializeWithType(Lcom/amazon/org/codehaus/jackson/JsonParser;Lcom/amazon/org/codehaus/jackson/map/DeserializationContext;Lcom/amazon/org/codehaus/jackson/map/TypeDeserializer;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/org/codehaus/jackson/JsonProcessingException;
        }
    .end annotation

    .line 32
    invoke-virtual {p3, p1, p2}, Lcom/amazon/org/codehaus/jackson/map/TypeDeserializer;->deserializeTypedFromScalar(Lcom/amazon/org/codehaus/jackson/JsonParser;Lcom/amazon/org/codehaus/jackson/map/DeserializationContext;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
