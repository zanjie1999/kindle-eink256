.class final Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/impl/PropertyValue$Regular;
.super Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/impl/PropertyValue;
.source "PropertyValue.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/impl/PropertyValue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Regular"
.end annotation


# instance fields
.field final _property:Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/SettableBeanProperty;


# direct methods
.method public constructor <init>(Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/impl/PropertyValue;Ljava/lang/Object;Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/SettableBeanProperty;)V
    .locals 0

    .line 52
    invoke-direct {p0, p1, p2}, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/impl/PropertyValue;-><init>(Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/impl/PropertyValue;Ljava/lang/Object;)V

    .line 53
    iput-object p3, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/impl/PropertyValue$Regular;->_property:Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/SettableBeanProperty;

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

    .line 60
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/impl/PropertyValue$Regular;->_property:Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/SettableBeanProperty;

    iget-object v1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/impl/PropertyValue;->value:Ljava/lang/Object;

    invoke-virtual {v0, p1, v1}, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/SettableBeanProperty;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method
