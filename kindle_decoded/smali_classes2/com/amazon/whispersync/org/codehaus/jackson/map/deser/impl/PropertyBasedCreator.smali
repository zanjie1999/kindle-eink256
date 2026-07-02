.class public final Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/impl/PropertyBasedCreator;
.super Ljava/lang/Object;
.source "PropertyBasedCreator.java"


# instance fields
.field protected _defaultValues:[Ljava/lang/Object;

.field protected final _properties:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/SettableBeanProperty;",
            ">;"
        }
    .end annotation
.end field

.field protected final _propertiesWithInjectables:[Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/SettableBeanProperty;

.field protected final _propertyCount:I

.field protected final _valueInstantiator:Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/ValueInstantiator;


# direct methods
.method public constructor <init>(Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/ValueInstantiator;)V
    .locals 7

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput-object p1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/impl/PropertyBasedCreator;->_valueInstantiator:Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/ValueInstantiator;

    .line 56
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/impl/PropertyBasedCreator;->_properties:Ljava/util/HashMap;

    .line 59
    invoke-virtual {p1}, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/ValueInstantiator;->getFromObjectArguments()[Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/SettableBeanProperty;

    move-result-object p1

    .line 61
    array-length v0, p1

    .line 62
    iput v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/impl/PropertyBasedCreator;->_propertyCount:I

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_4

    .line 64
    aget-object v4, p1, v3

    .line 65
    iget-object v5, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/impl/PropertyBasedCreator;->_properties:Ljava/util/HashMap;

    invoke-virtual {v4}, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/SettableBeanProperty;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    invoke-virtual {v4}, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/SettableBeanProperty;->getType()Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;

    move-result-object v5

    invoke-virtual {v5}, Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;->isPrimitive()Z

    move-result v5

    if-eqz v5, :cond_1

    if-nez v1, :cond_0

    .line 68
    new-array v1, v0, [Ljava/lang/Object;

    .line 70
    :cond_0
    invoke-virtual {v4}, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/SettableBeanProperty;->getType()Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;

    move-result-object v5

    invoke-virtual {v5}, Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object v5

    invoke-static {v5}, Lcom/amazon/whispersync/org/codehaus/jackson/map/util/ClassUtil;->defaultValue(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    aput-object v5, v1, v3

    .line 72
    :cond_1
    invoke-virtual {v4}, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/SettableBeanProperty;->getInjectableValueId()Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_3

    if-nez v2, :cond_2

    .line 75
    new-array v2, v0, [Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/SettableBeanProperty;

    .line 77
    :cond_2
    aput-object v4, v2, v3

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 80
    :cond_4
    iput-object v1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/impl/PropertyBasedCreator;->_defaultValues:[Ljava/lang/Object;

    .line 81
    iput-object v2, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/impl/PropertyBasedCreator;->_propertiesWithInjectables:[Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/SettableBeanProperty;

    return-void
.end method


# virtual methods
.method public assignDeserializer(Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/SettableBeanProperty;Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonDeserializer;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/SettableBeanProperty;",
            "Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonDeserializer<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 93
    invoke-virtual {p1, p2}, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/SettableBeanProperty;->withValueDeserializer(Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonDeserializer;)Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/SettableBeanProperty;

    move-result-object p1

    .line 94
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/impl/PropertyBasedCreator;->_properties:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/SettableBeanProperty;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    invoke-virtual {p2}, Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonDeserializer;->getNullValue()Ljava/lang/Object;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 97
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/impl/PropertyBasedCreator;->_defaultValues:[Ljava/lang/Object;

    if-nez v0, :cond_0

    .line 98
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/impl/PropertyBasedCreator;->_properties:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/impl/PropertyBasedCreator;->_defaultValues:[Ljava/lang/Object;

    .line 100
    :cond_0
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/impl/PropertyBasedCreator;->_defaultValues:[Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/SettableBeanProperty;->getPropertyIndex()I

    move-result p1

    aput-object p2, v0, p1

    :cond_1
    return-void
.end method

.method public build(Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/impl/PropertyValueBuffer;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 118
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/impl/PropertyBasedCreator;->_valueInstantiator:Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/ValueInstantiator;

    iget-object v1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/impl/PropertyBasedCreator;->_defaultValues:[Ljava/lang/Object;

    invoke-virtual {p1, v1}, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/impl/PropertyValueBuffer;->getParameters([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/ValueInstantiator;->createFromObjectWith([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 120
    invoke-virtual {p1}, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/impl/PropertyValueBuffer;->buffered()Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/impl/PropertyValue;

    move-result-object p1

    :goto_0
    if-eqz p1, :cond_0

    .line 121
    invoke-virtual {p1, v0}, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/impl/PropertyValue;->assign(Ljava/lang/Object;)V

    .line 120
    iget-object p1, p1, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/impl/PropertyValue;->next:Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/impl/PropertyValue;

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public findCreatorProperty(Ljava/lang/String;)Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/SettableBeanProperty;
    .locals 1

    .line 89
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/impl/PropertyBasedCreator;->_properties:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/SettableBeanProperty;

    return-object p1
.end method

.method public getCreatorProperties()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/SettableBeanProperty;",
            ">;"
        }
    .end annotation

    .line 85
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/impl/PropertyBasedCreator;->_properties:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public startBuilding(Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser;Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializationContext;)Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/impl/PropertyValueBuffer;
    .locals 2

    .line 109
    new-instance v0, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/impl/PropertyValueBuffer;

    iget v1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/impl/PropertyBasedCreator;->_propertyCount:I

    invoke-direct {v0, p1, p2, v1}, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/impl/PropertyValueBuffer;-><init>(Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser;Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializationContext;I)V

    .line 110
    iget-object p1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/impl/PropertyBasedCreator;->_propertiesWithInjectables:[Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/SettableBeanProperty;

    if-eqz p1, :cond_0

    .line 111
    invoke-virtual {v0, p1}, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/impl/PropertyValueBuffer;->inject([Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/SettableBeanProperty;)V

    :cond_0
    return-object v0
.end method
