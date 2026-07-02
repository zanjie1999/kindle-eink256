.class public abstract Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/std/StaticListSerializerBase;
.super Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/std/SerializerBase;
.source "StaticListSerializerBase.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Ljava/util/Collection<",
        "*>;>",
        "Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/std/SerializerBase<",
        "TT;>;"
    }
.end annotation


# instance fields
.field protected final _property:Lcom/amazon/whispersync/org/codehaus/jackson/map/BeanProperty;


# direct methods
.method protected constructor <init>(Ljava/lang/Class;Lcom/amazon/whispersync/org/codehaus/jackson/map/BeanProperty;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/amazon/whispersync/org/codehaus/jackson/map/BeanProperty;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 27
    invoke-direct {p0, p1, v0}, Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/std/SerializerBase;-><init>(Ljava/lang/Class;Z)V

    .line 28
    iput-object p2, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/std/StaticListSerializerBase;->_property:Lcom/amazon/whispersync/org/codehaus/jackson/map/BeanProperty;

    return-void
.end method


# virtual methods
.method protected abstract contentSchema()Lcom/amazon/whispersync/org/codehaus/jackson/JsonNode;
.end method

.method public getSchema(Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializerProvider;Ljava/lang/reflect/Type;)Lcom/amazon/whispersync/org/codehaus/jackson/JsonNode;
    .locals 1

    const-string p1, "array"

    const/4 p2, 0x1

    .line 34
    invoke-virtual {p0, p1, p2}, Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/std/SerializerBase;->createSchemaNode(Ljava/lang/String;Z)Lcom/amazon/whispersync/org/codehaus/jackson/node/ObjectNode;

    move-result-object p1

    .line 35
    invoke-virtual {p0}, Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/std/StaticListSerializerBase;->contentSchema()Lcom/amazon/whispersync/org/codehaus/jackson/JsonNode;

    move-result-object p2

    const-string v0, "items"

    invoke-virtual {p1, v0, p2}, Lcom/amazon/whispersync/org/codehaus/jackson/node/ObjectNode;->put(Ljava/lang/String;Lcom/amazon/whispersync/org/codehaus/jackson/JsonNode;)Lcom/amazon/whispersync/org/codehaus/jackson/JsonNode;

    return-object p1
.end method
