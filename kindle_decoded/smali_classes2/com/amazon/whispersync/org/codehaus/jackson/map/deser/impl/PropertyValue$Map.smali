.class final Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/impl/PropertyValue$Map;
.super Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/impl/PropertyValue;
.source "PropertyValue.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/impl/PropertyValue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Map"
.end annotation


# instance fields
.field final _key:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/impl/PropertyValue;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 104
    invoke-direct {p0, p1, p2}, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/impl/PropertyValue;-><init>(Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/impl/PropertyValue;Ljava/lang/Object;)V

    .line 105
    iput-object p3, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/impl/PropertyValue$Map;->_key:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public assign(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/whispersync/org/codehaus/jackson/JsonProcessingException;
        }
    .end annotation

    .line 113
    check-cast p1, Ljava/util/Map;

    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/impl/PropertyValue$Map;->_key:Ljava/lang/Object;

    iget-object v1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/impl/PropertyValue;->value:Ljava/lang/Object;

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
