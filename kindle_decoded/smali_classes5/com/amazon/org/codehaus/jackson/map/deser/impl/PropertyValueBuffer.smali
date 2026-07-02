.class public final Lcom/amazon/org/codehaus/jackson/map/deser/impl/PropertyValueBuffer;
.super Ljava/lang/Object;
.source "PropertyValueBuffer.java"


# instance fields
.field private _buffered:Lcom/amazon/org/codehaus/jackson/map/deser/impl/PropertyValue;

.field final _context:Lcom/amazon/org/codehaus/jackson/map/DeserializationContext;

.field final _creatorParameters:[Ljava/lang/Object;

.field private _paramsNeeded:I

.field final _parser:Lcom/amazon/org/codehaus/jackson/JsonParser;


# direct methods
.method public constructor <init>(Lcom/amazon/org/codehaus/jackson/JsonParser;Lcom/amazon/org/codehaus/jackson/map/DeserializationContext;I)V
    .locals 0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Lcom/amazon/org/codehaus/jackson/map/deser/impl/PropertyValueBuffer;->_parser:Lcom/amazon/org/codehaus/jackson/JsonParser;

    .line 43
    iput-object p2, p0, Lcom/amazon/org/codehaus/jackson/map/deser/impl/PropertyValueBuffer;->_context:Lcom/amazon/org/codehaus/jackson/map/DeserializationContext;

    .line 44
    iput p3, p0, Lcom/amazon/org/codehaus/jackson/map/deser/impl/PropertyValueBuffer;->_paramsNeeded:I

    .line 45
    new-array p1, p3, [Ljava/lang/Object;

    iput-object p1, p0, Lcom/amazon/org/codehaus/jackson/map/deser/impl/PropertyValueBuffer;->_creatorParameters:[Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public assignParameter(ILjava/lang/Object;)Z
    .locals 1

    .line 86
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/deser/impl/PropertyValueBuffer;->_creatorParameters:[Ljava/lang/Object;

    aput-object p2, v0, p1

    .line 87
    iget p1, p0, Lcom/amazon/org/codehaus/jackson/map/deser/impl/PropertyValueBuffer;->_paramsNeeded:I

    const/4 p2, 0x1

    sub-int/2addr p1, p2

    iput p1, p0, Lcom/amazon/org/codehaus/jackson/map/deser/impl/PropertyValueBuffer;->_paramsNeeded:I

    if-gtz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    return p2
.end method

.method public bufferAnyProperty(Lcom/amazon/org/codehaus/jackson/map/deser/SettableAnyProperty;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2

    .line 95
    new-instance v0, Lcom/amazon/org/codehaus/jackson/map/deser/impl/PropertyValue$Any;

    iget-object v1, p0, Lcom/amazon/org/codehaus/jackson/map/deser/impl/PropertyValueBuffer;->_buffered:Lcom/amazon/org/codehaus/jackson/map/deser/impl/PropertyValue;

    invoke-direct {v0, v1, p3, p1, p2}, Lcom/amazon/org/codehaus/jackson/map/deser/impl/PropertyValue$Any;-><init>(Lcom/amazon/org/codehaus/jackson/map/deser/impl/PropertyValue;Ljava/lang/Object;Lcom/amazon/org/codehaus/jackson/map/deser/SettableAnyProperty;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/deser/impl/PropertyValueBuffer;->_buffered:Lcom/amazon/org/codehaus/jackson/map/deser/impl/PropertyValue;

    return-void
.end method

.method public bufferMapProperty(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2

    .line 99
    new-instance v0, Lcom/amazon/org/codehaus/jackson/map/deser/impl/PropertyValue$Map;

    iget-object v1, p0, Lcom/amazon/org/codehaus/jackson/map/deser/impl/PropertyValueBuffer;->_buffered:Lcom/amazon/org/codehaus/jackson/map/deser/impl/PropertyValue;

    invoke-direct {v0, v1, p2, p1}, Lcom/amazon/org/codehaus/jackson/map/deser/impl/PropertyValue$Map;-><init>(Lcom/amazon/org/codehaus/jackson/map/deser/impl/PropertyValue;Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/deser/impl/PropertyValueBuffer;->_buffered:Lcom/amazon/org/codehaus/jackson/map/deser/impl/PropertyValue;

    return-void
.end method

.method public bufferProperty(Lcom/amazon/org/codehaus/jackson/map/deser/SettableBeanProperty;Ljava/lang/Object;)V
    .locals 2

    .line 91
    new-instance v0, Lcom/amazon/org/codehaus/jackson/map/deser/impl/PropertyValue$Regular;

    iget-object v1, p0, Lcom/amazon/org/codehaus/jackson/map/deser/impl/PropertyValueBuffer;->_buffered:Lcom/amazon/org/codehaus/jackson/map/deser/impl/PropertyValue;

    invoke-direct {v0, v1, p2, p1}, Lcom/amazon/org/codehaus/jackson/map/deser/impl/PropertyValue$Regular;-><init>(Lcom/amazon/org/codehaus/jackson/map/deser/impl/PropertyValue;Ljava/lang/Object;Lcom/amazon/org/codehaus/jackson/map/deser/SettableBeanProperty;)V

    iput-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/deser/impl/PropertyValueBuffer;->_buffered:Lcom/amazon/org/codehaus/jackson/map/deser/impl/PropertyValue;

    return-void
.end method

.method protected buffered()Lcom/amazon/org/codehaus/jackson/map/deser/impl/PropertyValue;
    .locals 1

    .line 80
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/deser/impl/PropertyValueBuffer;->_buffered:Lcom/amazon/org/codehaus/jackson/map/deser/impl/PropertyValue;

    return-object v0
.end method

.method protected final getParameters([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 4

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    .line 68
    iget-object v1, p0, Lcom/amazon/org/codehaus/jackson/map/deser/impl/PropertyValueBuffer;->_creatorParameters:[Ljava/lang/Object;

    array-length v1, v1

    :goto_0
    if-ge v0, v1, :cond_1

    .line 69
    iget-object v2, p0, Lcom/amazon/org/codehaus/jackson/map/deser/impl/PropertyValueBuffer;->_creatorParameters:[Ljava/lang/Object;

    aget-object v3, v2, v0

    if-nez v3, :cond_0

    .line 70
    aget-object v3, p1, v0

    if-eqz v3, :cond_0

    .line 72
    aput-object v3, v2, v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 77
    :cond_1
    iget-object p1, p0, Lcom/amazon/org/codehaus/jackson/map/deser/impl/PropertyValueBuffer;->_creatorParameters:[Ljava/lang/Object;

    return-object p1
.end method

.method public inject([Lcom/amazon/org/codehaus/jackson/map/deser/SettableBeanProperty;)V
    .locals 7

    .line 50
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 51
    aget-object v2, p1, v1

    if-eqz v2, :cond_0

    .line 54
    iget-object v3, p0, Lcom/amazon/org/codehaus/jackson/map/deser/impl/PropertyValueBuffer;->_creatorParameters:[Ljava/lang/Object;

    iget-object v4, p0, Lcom/amazon/org/codehaus/jackson/map/deser/impl/PropertyValueBuffer;->_context:Lcom/amazon/org/codehaus/jackson/map/DeserializationContext;

    invoke-virtual {v2}, Lcom/amazon/org/codehaus/jackson/map/deser/SettableBeanProperty;->getInjectableValueId()Ljava/lang/Object;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v2, v6}, Lcom/amazon/org/codehaus/jackson/map/DeserializationContext;->findInjectableValue(Ljava/lang/Object;Lcom/amazon/org/codehaus/jackson/map/BeanProperty;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    aput-object v2, v3, v1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
