.class public Lcom/amazon/org/codehaus/jackson/map/deser/BeanDeserializerBuilder;
.super Ljava/lang/Object;
.source "BeanDeserializerBuilder.java"


# instance fields
.field protected _anySetter:Lcom/amazon/org/codehaus/jackson/map/deser/SettableAnyProperty;

.field protected _backRefProperties:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/amazon/org/codehaus/jackson/map/deser/SettableBeanProperty;",
            ">;"
        }
    .end annotation
.end field

.field protected final _beanDesc:Lcom/amazon/org/codehaus/jackson/map/introspect/BasicBeanDescription;

.field protected _ignorableProps:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected _ignoreAllUnknown:Z

.field protected _injectables:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amazon/org/codehaus/jackson/map/deser/impl/ValueInjector;",
            ">;"
        }
    .end annotation
.end field

.field protected final _properties:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/amazon/org/codehaus/jackson/map/deser/SettableBeanProperty;",
            ">;"
        }
    .end annotation
.end field

.field protected _valueInstantiator:Lcom/amazon/org/codehaus/jackson/map/deser/ValueInstantiator;


# direct methods
.method protected constructor <init>(Lcom/amazon/org/codehaus/jackson/map/deser/BeanDeserializerBuilder;)V
    .locals 2

    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/deser/BeanDeserializerBuilder;->_properties:Ljava/util/HashMap;

    .line 101
    iget-object v1, p1, Lcom/amazon/org/codehaus/jackson/map/deser/BeanDeserializerBuilder;->_beanDesc:Lcom/amazon/org/codehaus/jackson/map/introspect/BasicBeanDescription;

    iput-object v1, p0, Lcom/amazon/org/codehaus/jackson/map/deser/BeanDeserializerBuilder;->_beanDesc:Lcom/amazon/org/codehaus/jackson/map/introspect/BasicBeanDescription;

    .line 102
    iget-object v1, p1, Lcom/amazon/org/codehaus/jackson/map/deser/BeanDeserializerBuilder;->_anySetter:Lcom/amazon/org/codehaus/jackson/map/deser/SettableAnyProperty;

    iput-object v1, p0, Lcom/amazon/org/codehaus/jackson/map/deser/BeanDeserializerBuilder;->_anySetter:Lcom/amazon/org/codehaus/jackson/map/deser/SettableAnyProperty;

    .line 103
    iget-boolean v1, p1, Lcom/amazon/org/codehaus/jackson/map/deser/BeanDeserializerBuilder;->_ignoreAllUnknown:Z

    iput-boolean v1, p0, Lcom/amazon/org/codehaus/jackson/map/deser/BeanDeserializerBuilder;->_ignoreAllUnknown:Z

    .line 106
    iget-object v1, p1, Lcom/amazon/org/codehaus/jackson/map/deser/BeanDeserializerBuilder;->_properties:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 107
    iget-object v0, p1, Lcom/amazon/org/codehaus/jackson/map/deser/BeanDeserializerBuilder;->_backRefProperties:Ljava/util/HashMap;

    invoke-static {v0}, Lcom/amazon/org/codehaus/jackson/map/deser/BeanDeserializerBuilder;->_copy(Ljava/util/HashMap;)Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/deser/BeanDeserializerBuilder;->_backRefProperties:Ljava/util/HashMap;

    .line 109
    iget-object v0, p1, Lcom/amazon/org/codehaus/jackson/map/deser/BeanDeserializerBuilder;->_ignorableProps:Ljava/util/HashSet;

    iput-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/deser/BeanDeserializerBuilder;->_ignorableProps:Ljava/util/HashSet;

    .line 110
    iget-object p1, p1, Lcom/amazon/org/codehaus/jackson/map/deser/BeanDeserializerBuilder;->_valueInstantiator:Lcom/amazon/org/codehaus/jackson/map/deser/ValueInstantiator;

    iput-object p1, p0, Lcom/amazon/org/codehaus/jackson/map/deser/BeanDeserializerBuilder;->_valueInstantiator:Lcom/amazon/org/codehaus/jackson/map/deser/ValueInstantiator;

    return-void
.end method

.method public constructor <init>(Lcom/amazon/org/codehaus/jackson/map/introspect/BasicBeanDescription;)V
    .locals 1

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/deser/BeanDeserializerBuilder;->_properties:Ljava/util/HashMap;

    .line 90
    iput-object p1, p0, Lcom/amazon/org/codehaus/jackson/map/deser/BeanDeserializerBuilder;->_beanDesc:Lcom/amazon/org/codehaus/jackson/map/introspect/BasicBeanDescription;

    return-void
.end method

.method private static _copy(Ljava/util/HashMap;)Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/amazon/org/codehaus/jackson/map/deser/SettableBeanProperty;",
            ">;)",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/amazon/org/codehaus/jackson/map/deser/SettableBeanProperty;",
            ">;"
        }
    .end annotation

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 118
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, p0}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    return-object v0
.end method


# virtual methods
.method public addBackReferenceProperty(Ljava/lang/String;Lcom/amazon/org/codehaus/jackson/map/deser/SettableBeanProperty;)V
    .locals 2

    .line 155
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/deser/BeanDeserializerBuilder;->_backRefProperties:Ljava/util/HashMap;

    if-nez v0, :cond_0

    .line 156
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/deser/BeanDeserializerBuilder;->_backRefProperties:Ljava/util/HashMap;

    .line 158
    :cond_0
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/deser/BeanDeserializerBuilder;->_backRefProperties:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 160
    iget-object p1, p0, Lcom/amazon/org/codehaus/jackson/map/deser/BeanDeserializerBuilder;->_properties:Ljava/util/HashMap;

    if-eqz p1, :cond_1

    .line 161
    invoke-virtual {p2}, Lcom/amazon/org/codehaus/jackson/map/deser/SettableBeanProperty;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-void
.end method

.method public addCreatorProperty(Lcom/amazon/org/codehaus/jackson/map/BeanPropertyDefinition;)V
    .locals 0

    return-void
.end method

.method public addIgnorable(Ljava/lang/String;)V
    .locals 1

    .line 185
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/deser/BeanDeserializerBuilder;->_ignorableProps:Ljava/util/HashSet;

    if-nez v0, :cond_0

    .line 186
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/deser/BeanDeserializerBuilder;->_ignorableProps:Ljava/util/HashSet;

    .line 188
    :cond_0
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/deser/BeanDeserializerBuilder;->_ignorableProps:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addInjectable(Ljava/lang/String;Lcom/amazon/org/codehaus/jackson/type/JavaType;Lcom/amazon/org/codehaus/jackson/map/util/Annotations;Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedMember;Ljava/lang/Object;)V
    .locals 8

    .line 172
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/deser/BeanDeserializerBuilder;->_injectables:Ljava/util/List;

    if-nez v0, :cond_0

    .line 173
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/deser/BeanDeserializerBuilder;->_injectables:Ljava/util/List;

    .line 175
    :cond_0
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/deser/BeanDeserializerBuilder;->_injectables:Ljava/util/List;

    new-instance v7, Lcom/amazon/org/codehaus/jackson/map/deser/impl/ValueInjector;

    move-object v1, v7

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v1 .. v6}, Lcom/amazon/org/codehaus/jackson/map/deser/impl/ValueInjector;-><init>(Ljava/lang/String;Lcom/amazon/org/codehaus/jackson/type/JavaType;Lcom/amazon/org/codehaus/jackson/map/util/Annotations;Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedMember;Ljava/lang/Object;)V

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addOrReplaceProperty(Lcom/amazon/org/codehaus/jackson/map/deser/SettableBeanProperty;Z)V
    .locals 1

    .line 132
    iget-object p2, p0, Lcom/amazon/org/codehaus/jackson/map/deser/BeanDeserializerBuilder;->_properties:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/amazon/org/codehaus/jackson/map/deser/SettableBeanProperty;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public addProperty(Lcom/amazon/org/codehaus/jackson/map/deser/SettableBeanProperty;)V
    .locals 3

    .line 142
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/deser/BeanDeserializerBuilder;->_properties:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/amazon/org/codehaus/jackson/map/deser/SettableBeanProperty;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/org/codehaus/jackson/map/deser/SettableBeanProperty;

    if-eqz v0, :cond_1

    if-ne v0, p1, :cond_0

    goto :goto_0

    .line 144
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Duplicate property \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/amazon/org/codehaus/jackson/map/deser/SettableBeanProperty;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\' for "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/amazon/org/codehaus/jackson/map/deser/BeanDeserializerBuilder;->_beanDesc:Lcom/amazon/org/codehaus/jackson/map/introspect/BasicBeanDescription;

    invoke-virtual {p1}, Lcom/amazon/org/codehaus/jackson/map/BeanDescription;->getType()Lcom/amazon/org/codehaus/jackson/type/JavaType;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    return-void
.end method

.method public build(Lcom/amazon/org/codehaus/jackson/map/BeanProperty;)Lcom/amazon/org/codehaus/jackson/map/JsonDeserializer;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/org/codehaus/jackson/map/BeanProperty;",
            ")",
            "Lcom/amazon/org/codehaus/jackson/map/JsonDeserializer<",
            "*>;"
        }
    .end annotation

    .line 271
    new-instance v4, Lcom/amazon/org/codehaus/jackson/map/deser/impl/BeanPropertyMap;

    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/deser/BeanDeserializerBuilder;->_properties:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-direct {v4, v0}, Lcom/amazon/org/codehaus/jackson/map/deser/impl/BeanPropertyMap;-><init>(Ljava/util/Collection;)V

    .line 272
    invoke-virtual {v4}, Lcom/amazon/org/codehaus/jackson/map/deser/impl/BeanPropertyMap;->assignIndexes()V

    .line 273
    new-instance v10, Lcom/amazon/org/codehaus/jackson/map/deser/BeanDeserializer;

    iget-object v1, p0, Lcom/amazon/org/codehaus/jackson/map/deser/BeanDeserializerBuilder;->_beanDesc:Lcom/amazon/org/codehaus/jackson/map/introspect/BasicBeanDescription;

    iget-object v3, p0, Lcom/amazon/org/codehaus/jackson/map/deser/BeanDeserializerBuilder;->_valueInstantiator:Lcom/amazon/org/codehaus/jackson/map/deser/ValueInstantiator;

    iget-object v5, p0, Lcom/amazon/org/codehaus/jackson/map/deser/BeanDeserializerBuilder;->_backRefProperties:Ljava/util/HashMap;

    iget-object v6, p0, Lcom/amazon/org/codehaus/jackson/map/deser/BeanDeserializerBuilder;->_ignorableProps:Ljava/util/HashSet;

    iget-boolean v7, p0, Lcom/amazon/org/codehaus/jackson/map/deser/BeanDeserializerBuilder;->_ignoreAllUnknown:Z

    iget-object v8, p0, Lcom/amazon/org/codehaus/jackson/map/deser/BeanDeserializerBuilder;->_anySetter:Lcom/amazon/org/codehaus/jackson/map/deser/SettableAnyProperty;

    iget-object v9, p0, Lcom/amazon/org/codehaus/jackson/map/deser/BeanDeserializerBuilder;->_injectables:Ljava/util/List;

    move-object v0, v10

    move-object v2, p1

    invoke-direct/range {v0 .. v9}, Lcom/amazon/org/codehaus/jackson/map/deser/BeanDeserializer;-><init>(Lcom/amazon/org/codehaus/jackson/map/BeanDescription;Lcom/amazon/org/codehaus/jackson/map/BeanProperty;Lcom/amazon/org/codehaus/jackson/map/deser/ValueInstantiator;Lcom/amazon/org/codehaus/jackson/map/deser/impl/BeanPropertyMap;Ljava/util/Map;Ljava/util/HashSet;ZLcom/amazon/org/codehaus/jackson/map/deser/SettableAnyProperty;Ljava/util/List;)V

    return-object v10
.end method

.method public getProperties()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lcom/amazon/org/codehaus/jackson/map/deser/SettableBeanProperty;",
            ">;"
        }
    .end annotation

    .line 244
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/deser/BeanDeserializerBuilder;->_properties:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public getValueInstantiator()Lcom/amazon/org/codehaus/jackson/map/deser/ValueInstantiator;
    .locals 1

    .line 260
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/deser/BeanDeserializerBuilder;->_valueInstantiator:Lcom/amazon/org/codehaus/jackson/map/deser/ValueInstantiator;

    return-object v0
.end method

.method public hasProperty(Ljava/lang/String;)Z
    .locals 1

    .line 248
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/deser/BeanDeserializerBuilder;->_properties:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public removeProperty(Ljava/lang/String;)Lcom/amazon/org/codehaus/jackson/map/deser/SettableBeanProperty;
    .locals 1

    .line 253
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/deser/BeanDeserializerBuilder;->_properties:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/org/codehaus/jackson/map/deser/SettableBeanProperty;

    return-object p1
.end method

.method public setAnySetter(Lcom/amazon/org/codehaus/jackson/map/deser/SettableAnyProperty;)V
    .locals 1

    .line 210
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/deser/BeanDeserializerBuilder;->_anySetter:Lcom/amazon/org/codehaus/jackson/map/deser/SettableAnyProperty;

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    .line 211
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "_anySetter already set to non-null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 213
    :cond_1
    :goto_0
    iput-object p1, p0, Lcom/amazon/org/codehaus/jackson/map/deser/BeanDeserializerBuilder;->_anySetter:Lcom/amazon/org/codehaus/jackson/map/deser/SettableAnyProperty;

    return-void
.end method

.method public setIgnoreUnknownProperties(Z)V
    .locals 0

    .line 217
    iput-boolean p1, p0, Lcom/amazon/org/codehaus/jackson/map/deser/BeanDeserializerBuilder;->_ignoreAllUnknown:Z

    return-void
.end method

.method public setValueInstantiator(Lcom/amazon/org/codehaus/jackson/map/deser/ValueInstantiator;)V
    .locals 0

    .line 224
    iput-object p1, p0, Lcom/amazon/org/codehaus/jackson/map/deser/BeanDeserializerBuilder;->_valueInstantiator:Lcom/amazon/org/codehaus/jackson/map/deser/ValueInstantiator;

    return-void
.end method
