.class public Lcom/amazon/org/codehaus/jackson/map/deser/impl/UnwrappedPropertyHandler;
.super Ljava/lang/Object;
.source "UnwrappedPropertyHandler.java"


# instance fields
.field protected final _properties:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/amazon/org/codehaus/jackson/map/deser/SettableBeanProperty;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/deser/impl/UnwrappedPropertyHandler;->_properties:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public addProperty(Lcom/amazon/org/codehaus/jackson/map/deser/SettableBeanProperty;)V
    .locals 1

    .line 26
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/deser/impl/UnwrappedPropertyHandler;->_properties:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public processUnwrapped(Lcom/amazon/org/codehaus/jackson/JsonParser;Lcom/amazon/org/codehaus/jackson/map/DeserializationContext;Ljava/lang/Object;Lcom/amazon/org/codehaus/jackson/util/TokenBuffer;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/org/codehaus/jackson/JsonProcessingException;
        }
    .end annotation

    .line 33
    iget-object p1, p0, Lcom/amazon/org/codehaus/jackson/map/deser/impl/UnwrappedPropertyHandler;->_properties:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_0

    .line 34
    iget-object v1, p0, Lcom/amazon/org/codehaus/jackson/map/deser/impl/UnwrappedPropertyHandler;->_properties:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/org/codehaus/jackson/map/deser/SettableBeanProperty;

    .line 35
    invoke-virtual {p4}, Lcom/amazon/org/codehaus/jackson/util/TokenBuffer;->asParser()Lcom/amazon/org/codehaus/jackson/JsonParser;

    move-result-object v2

    .line 36
    invoke-virtual {v2}, Lcom/amazon/org/codehaus/jackson/JsonParser;->nextToken()Lcom/amazon/org/codehaus/jackson/JsonToken;

    .line 37
    invoke-virtual {v1, v2, p2, p3}, Lcom/amazon/org/codehaus/jackson/map/deser/SettableBeanProperty;->deserializeAndSet(Lcom/amazon/org/codehaus/jackson/JsonParser;Lcom/amazon/org/codehaus/jackson/map/DeserializationContext;Ljava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object p3
.end method
