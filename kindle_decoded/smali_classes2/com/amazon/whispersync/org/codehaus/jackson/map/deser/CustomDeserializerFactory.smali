.class public Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/CustomDeserializerFactory;
.super Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/BeanDeserializerFactory;
.source "CustomDeserializerFactory.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field protected _directClassMappings:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcom/amazon/whispersync/org/codehaus/jackson/map/type/ClassKey;",
            "Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonDeserializer<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field protected _mixInAnnotations:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcom/amazon/whispersync/org/codehaus/jackson/map/type/ClassKey;",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 87
    invoke-direct {p0, v0}, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/CustomDeserializerFactory;-><init>(Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializerFactory$Config;)V

    return-void
.end method

.method protected constructor <init>(Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializerFactory$Config;)V
    .locals 0

    .line 92
    invoke-direct {p0, p1}, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/BeanDeserializerFactory;-><init>(Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializerFactory$Config;)V

    const/4 p1, 0x0

    .line 57
    iput-object p1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/CustomDeserializerFactory;->_directClassMappings:Ljava/util/HashMap;

    return-void
.end method


# virtual methods
.method public addMixInAnnotationMapping(Ljava/lang/Class;Ljava/lang/Class;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 157
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/CustomDeserializerFactory;->_mixInAnnotations:Ljava/util/HashMap;

    if-nez v0, :cond_0

    .line 158
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/CustomDeserializerFactory;->_mixInAnnotations:Ljava/util/HashMap;

    .line 160
    :cond_0
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/CustomDeserializerFactory;->_mixInAnnotations:Ljava/util/HashMap;

    new-instance v1, Lcom/amazon/whispersync/org/codehaus/jackson/map/type/ClassKey;

    invoke-direct {v1, p1}, Lcom/amazon/whispersync/org/codehaus/jackson/map/type/ClassKey;-><init>(Ljava/lang/Class;)V

    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public addSpecificMapping(Ljava/lang/Class;Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonDeserializer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonDeserializer<",
            "+TT;>;)V"
        }
    .end annotation

    .line 132
    new-instance v0, Lcom/amazon/whispersync/org/codehaus/jackson/map/type/ClassKey;

    invoke-direct {v0, p1}, Lcom/amazon/whispersync/org/codehaus/jackson/map/type/ClassKey;-><init>(Ljava/lang/Class;)V

    .line 133
    iget-object p1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/CustomDeserializerFactory;->_directClassMappings:Ljava/util/HashMap;

    if-nez p1, :cond_0

    .line 134
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/CustomDeserializerFactory;->_directClassMappings:Ljava/util/HashMap;

    .line 136
    :cond_0
    iget-object p1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/CustomDeserializerFactory;->_directClassMappings:Ljava/util/HashMap;

    invoke-virtual {p1, v0, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public createArrayDeserializer(Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializationConfig;Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializerProvider;Lcom/amazon/whispersync/org/codehaus/jackson/map/type/ArrayType;Lcom/amazon/whispersync/org/codehaus/jackson/map/BeanProperty;)Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonDeserializer;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializationConfig;",
            "Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializerProvider;",
            "Lcom/amazon/whispersync/org/codehaus/jackson/map/type/ArrayType;",
            "Lcom/amazon/whispersync/org/codehaus/jackson/map/BeanProperty;",
            ")",
            "Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonDeserializer<",
            "*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonMappingException;
        }
    .end annotation

    .line 193
    new-instance v0, Lcom/amazon/whispersync/org/codehaus/jackson/map/type/ClassKey;

    invoke-virtual {p3}, Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/amazon/whispersync/org/codehaus/jackson/map/type/ClassKey;-><init>(Ljava/lang/Class;)V

    .line 194
    iget-object v1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/CustomDeserializerFactory;->_directClassMappings:Ljava/util/HashMap;

    if-eqz v1, :cond_0

    .line 195
    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonDeserializer;

    if-eqz v0, :cond_0

    return-object v0

    .line 200
    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/BasicDeserializerFactory;->createArrayDeserializer(Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializationConfig;Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializerProvider;Lcom/amazon/whispersync/org/codehaus/jackson/map/type/ArrayType;Lcom/amazon/whispersync/org/codehaus/jackson/map/BeanProperty;)Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonDeserializer;

    move-result-object p1

    return-object p1
.end method

.method public createBeanDeserializer(Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializationConfig;Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializerProvider;Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;Lcom/amazon/whispersync/org/codehaus/jackson/map/BeanProperty;)Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonDeserializer;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializationConfig;",
            "Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializerProvider;",
            "Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;",
            "Lcom/amazon/whispersync/org/codehaus/jackson/map/BeanProperty;",
            ")",
            "Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonDeserializer<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonMappingException;
        }
    .end annotation

    .line 174
    invoke-virtual {p3}, Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object v0

    .line 175
    new-instance v1, Lcom/amazon/whispersync/org/codehaus/jackson/map/type/ClassKey;

    invoke-direct {v1, v0}, Lcom/amazon/whispersync/org/codehaus/jackson/map/type/ClassKey;-><init>(Ljava/lang/Class;)V

    .line 178
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/CustomDeserializerFactory;->_directClassMappings:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    .line 179
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonDeserializer;

    if-eqz v0, :cond_0

    return-object v0

    .line 185
    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/BeanDeserializerFactory;->createBeanDeserializer(Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializationConfig;Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializerProvider;Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;Lcom/amazon/whispersync/org/codehaus/jackson/map/BeanProperty;)Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonDeserializer;

    move-result-object p1

    return-object p1
.end method

.method public createEnumDeserializer(Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializationConfig;Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializerProvider;Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;Lcom/amazon/whispersync/org/codehaus/jackson/map/BeanProperty;)Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonDeserializer;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializationConfig;",
            "Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializerProvider;",
            "Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;",
            "Lcom/amazon/whispersync/org/codehaus/jackson/map/BeanProperty;",
            ")",
            "Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonDeserializer<",
            "*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonMappingException;
        }
    .end annotation

    .line 214
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/CustomDeserializerFactory;->_directClassMappings:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    .line 215
    new-instance v0, Lcom/amazon/whispersync/org/codehaus/jackson/map/type/ClassKey;

    invoke-virtual {p3}, Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/amazon/whispersync/org/codehaus/jackson/map/type/ClassKey;-><init>(Ljava/lang/Class;)V

    .line 216
    iget-object v1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/CustomDeserializerFactory;->_directClassMappings:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonDeserializer;

    if-eqz v0, :cond_0

    return-object v0

    .line 221
    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/BasicDeserializerFactory;->createEnumDeserializer(Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializationConfig;Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializerProvider;Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;Lcom/amazon/whispersync/org/codehaus/jackson/map/BeanProperty;)Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonDeserializer;

    move-result-object p1

    return-object p1
.end method

.method public withConfig(Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializerFactory$Config;)Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializerFactory;
    .locals 3

    .line 99
    const-class v0, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/CustomDeserializerFactory;

    if-ne v0, v0, :cond_0

    .line 104
    new-instance v0, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/CustomDeserializerFactory;

    invoke-direct {v0, p1}, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/CustomDeserializerFactory;-><init>(Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializerFactory$Config;)V

    return-object v0

    .line 100
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Subtype of CustomDeserializerFactory ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ") has not properly overridden method \'withAdditionalDeserializers\': can not instantiate subtype with "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "additional deserializer definitions"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
