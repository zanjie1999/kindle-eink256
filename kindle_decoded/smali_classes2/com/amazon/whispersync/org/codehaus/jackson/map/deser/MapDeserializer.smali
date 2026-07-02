.class public Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/MapDeserializer;
.super Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/std/MapDeserializer;
.source "MapDeserializer.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method protected constructor <init>(Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/MapDeserializer;)V
    .locals 0

    .line 42
    invoke-direct {p0, p1}, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/std/MapDeserializer;-><init>(Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/std/MapDeserializer;)V

    return-void
.end method

.method public constructor <init>(Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/ValueInstantiator;Lcom/amazon/whispersync/org/codehaus/jackson/map/KeyDeserializer;Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonDeserializer;Lcom/amazon/whispersync/org/codehaus/jackson/map/TypeDeserializer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;",
            "Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/ValueInstantiator;",
            "Lcom/amazon/whispersync/org/codehaus/jackson/map/KeyDeserializer;",
            "Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonDeserializer<",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/amazon/whispersync/org/codehaus/jackson/map/TypeDeserializer;",
            ")V"
        }
    .end annotation

    .line 32
    invoke-direct/range {p0 .. p5}, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/std/MapDeserializer;-><init>(Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/ValueInstantiator;Lcom/amazon/whispersync/org/codehaus/jackson/map/KeyDeserializer;Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonDeserializer;Lcom/amazon/whispersync/org/codehaus/jackson/map/TypeDeserializer;)V

    return-void
.end method

.method public constructor <init>(Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;Ljava/lang/reflect/Constructor;Lcom/amazon/whispersync/org/codehaus/jackson/map/KeyDeserializer;Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonDeserializer;Lcom/amazon/whispersync/org/codehaus/jackson/map/TypeDeserializer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;",
            "Ljava/lang/reflect/Constructor<",
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;>;",
            "Lcom/amazon/whispersync/org/codehaus/jackson/map/KeyDeserializer;",
            "Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonDeserializer<",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/amazon/whispersync/org/codehaus/jackson/map/TypeDeserializer;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 25
    invoke-direct/range {p0 .. p5}, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/std/MapDeserializer;-><init>(Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;Ljava/lang/reflect/Constructor;Lcom/amazon/whispersync/org/codehaus/jackson/map/KeyDeserializer;Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonDeserializer;Lcom/amazon/whispersync/org/codehaus/jackson/map/TypeDeserializer;)V

    return-void
.end method
