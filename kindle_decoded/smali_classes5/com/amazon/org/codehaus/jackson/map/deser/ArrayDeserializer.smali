.class public Lcom/amazon/org/codehaus/jackson/map/deser/ArrayDeserializer;
.super Lcom/amazon/org/codehaus/jackson/map/deser/std/ObjectArrayDeserializer;
.source "ArrayDeserializer.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method public constructor <init>(Lcom/amazon/org/codehaus/jackson/map/type/ArrayType;Lcom/amazon/org/codehaus/jackson/map/JsonDeserializer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/org/codehaus/jackson/map/type/ArrayType;",
            "Lcom/amazon/org/codehaus/jackson/map/JsonDeserializer<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    .line 19
    invoke-direct {p0, p1, p2, v0}, Lcom/amazon/org/codehaus/jackson/map/deser/ArrayDeserializer;-><init>(Lcom/amazon/org/codehaus/jackson/map/type/ArrayType;Lcom/amazon/org/codehaus/jackson/map/JsonDeserializer;Lcom/amazon/org/codehaus/jackson/map/TypeDeserializer;)V

    return-void
.end method

.method public constructor <init>(Lcom/amazon/org/codehaus/jackson/map/type/ArrayType;Lcom/amazon/org/codehaus/jackson/map/JsonDeserializer;Lcom/amazon/org/codehaus/jackson/map/TypeDeserializer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/org/codehaus/jackson/map/type/ArrayType;",
            "Lcom/amazon/org/codehaus/jackson/map/JsonDeserializer<",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/amazon/org/codehaus/jackson/map/TypeDeserializer;",
            ")V"
        }
    .end annotation

    .line 25
    invoke-direct {p0, p1, p2, p3}, Lcom/amazon/org/codehaus/jackson/map/deser/std/ObjectArrayDeserializer;-><init>(Lcom/amazon/org/codehaus/jackson/map/type/ArrayType;Lcom/amazon/org/codehaus/jackson/map/JsonDeserializer;Lcom/amazon/org/codehaus/jackson/map/TypeDeserializer;)V

    return-void
.end method
