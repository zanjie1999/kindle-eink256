.class public Lcom/amazon/org/codehaus/jackson/map/module/SimpleModule;
.super Lcom/amazon/org/codehaus/jackson/map/Module;
.source "SimpleModule.java"


# instance fields
.field protected _abstractTypes:Lcom/amazon/org/codehaus/jackson/map/module/SimpleAbstractTypeResolver;

.field protected _deserializers:Lcom/amazon/org/codehaus/jackson/map/module/SimpleDeserializers;

.field protected _keyDeserializers:Lcom/amazon/org/codehaus/jackson/map/module/SimpleKeyDeserializers;

.field protected _keySerializers:Lcom/amazon/org/codehaus/jackson/map/module/SimpleSerializers;

.field protected _mixins:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation
.end field

.field protected final _name:Ljava/lang/String;

.field protected _serializers:Lcom/amazon/org/codehaus/jackson/map/module/SimpleSerializers;

.field protected _valueInstantiators:Lcom/amazon/org/codehaus/jackson/map/module/SimpleValueInstantiators;

.field protected final _version:Lcom/amazon/org/codehaus/jackson/Version;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/amazon/org/codehaus/jackson/Version;)V
    .locals 1

    .line 57
    invoke-direct {p0}, Lcom/amazon/org/codehaus/jackson/map/Module;-><init>()V

    const/4 v0, 0x0

    .line 22
    iput-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/module/SimpleModule;->_serializers:Lcom/amazon/org/codehaus/jackson/map/module/SimpleSerializers;

    .line 23
    iput-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/module/SimpleModule;->_deserializers:Lcom/amazon/org/codehaus/jackson/map/module/SimpleDeserializers;

    .line 25
    iput-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/module/SimpleModule;->_keySerializers:Lcom/amazon/org/codehaus/jackson/map/module/SimpleSerializers;

    .line 26
    iput-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/module/SimpleModule;->_keyDeserializers:Lcom/amazon/org/codehaus/jackson/map/module/SimpleKeyDeserializers;

    .line 33
    iput-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/module/SimpleModule;->_abstractTypes:Lcom/amazon/org/codehaus/jackson/map/module/SimpleAbstractTypeResolver;

    .line 40
    iput-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/module/SimpleModule;->_valueInstantiators:Lcom/amazon/org/codehaus/jackson/map/module/SimpleValueInstantiators;

    .line 48
    iput-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/module/SimpleModule;->_mixins:Ljava/util/HashMap;

    .line 58
    iput-object p1, p0, Lcom/amazon/org/codehaus/jackson/map/module/SimpleModule;->_name:Ljava/lang/String;

    .line 59
    iput-object p2, p0, Lcom/amazon/org/codehaus/jackson/map/module/SimpleModule;->_version:Lcom/amazon/org/codehaus/jackson/Version;

    return-void
.end method


# virtual methods
.method public addAbstractTypeMapping(Ljava/lang/Class;Ljava/lang/Class;)Lcom/amazon/org/codehaus/jackson/map/module/SimpleModule;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/lang/Class<",
            "+TT;>;)",
            "Lcom/amazon/org/codehaus/jackson/map/module/SimpleModule;"
        }
    .end annotation

    .line 181
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/module/SimpleModule;->_abstractTypes:Lcom/amazon/org/codehaus/jackson/map/module/SimpleAbstractTypeResolver;

    if-nez v0, :cond_0

    .line 182
    new-instance v0, Lcom/amazon/org/codehaus/jackson/map/module/SimpleAbstractTypeResolver;

    invoke-direct {v0}, Lcom/amazon/org/codehaus/jackson/map/module/SimpleAbstractTypeResolver;-><init>()V

    iput-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/module/SimpleModule;->_abstractTypes:Lcom/amazon/org/codehaus/jackson/map/module/SimpleAbstractTypeResolver;

    .line 185
    :cond_0
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/module/SimpleModule;->_abstractTypes:Lcom/amazon/org/codehaus/jackson/map/module/SimpleAbstractTypeResolver;

    invoke-virtual {v0, p1, p2}, Lcom/amazon/org/codehaus/jackson/map/module/SimpleAbstractTypeResolver;->addMapping(Ljava/lang/Class;Ljava/lang/Class;)Lcom/amazon/org/codehaus/jackson/map/module/SimpleAbstractTypeResolver;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/org/codehaus/jackson/map/module/SimpleModule;->_abstractTypes:Lcom/amazon/org/codehaus/jackson/map/module/SimpleAbstractTypeResolver;

    return-object p0
.end method

.method public addDeserializer(Ljava/lang/Class;Lcom/amazon/org/codehaus/jackson/map/JsonDeserializer;)Lcom/amazon/org/codehaus/jackson/map/module/SimpleModule;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Lcom/amazon/org/codehaus/jackson/map/JsonDeserializer<",
            "+TT;>;)",
            "Lcom/amazon/org/codehaus/jackson/map/module/SimpleModule;"
        }
    .end annotation

    .line 157
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/module/SimpleModule;->_deserializers:Lcom/amazon/org/codehaus/jackson/map/module/SimpleDeserializers;

    if-nez v0, :cond_0

    .line 158
    new-instance v0, Lcom/amazon/org/codehaus/jackson/map/module/SimpleDeserializers;

    invoke-direct {v0}, Lcom/amazon/org/codehaus/jackson/map/module/SimpleDeserializers;-><init>()V

    iput-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/module/SimpleModule;->_deserializers:Lcom/amazon/org/codehaus/jackson/map/module/SimpleDeserializers;

    .line 160
    :cond_0
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/module/SimpleModule;->_deserializers:Lcom/amazon/org/codehaus/jackson/map/module/SimpleDeserializers;

    invoke-virtual {v0, p1, p2}, Lcom/amazon/org/codehaus/jackson/map/module/SimpleDeserializers;->addDeserializer(Ljava/lang/Class;Lcom/amazon/org/codehaus/jackson/map/JsonDeserializer;)V

    return-object p0
.end method

.method public addKeyDeserializer(Ljava/lang/Class;Lcom/amazon/org/codehaus/jackson/map/KeyDeserializer;)Lcom/amazon/org/codehaus/jackson/map/module/SimpleModule;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/amazon/org/codehaus/jackson/map/KeyDeserializer;",
            ")",
            "Lcom/amazon/org/codehaus/jackson/map/module/SimpleModule;"
        }
    .end annotation

    .line 166
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/module/SimpleModule;->_keyDeserializers:Lcom/amazon/org/codehaus/jackson/map/module/SimpleKeyDeserializers;

    if-nez v0, :cond_0

    .line 167
    new-instance v0, Lcom/amazon/org/codehaus/jackson/map/module/SimpleKeyDeserializers;

    invoke-direct {v0}, Lcom/amazon/org/codehaus/jackson/map/module/SimpleKeyDeserializers;-><init>()V

    iput-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/module/SimpleModule;->_keyDeserializers:Lcom/amazon/org/codehaus/jackson/map/module/SimpleKeyDeserializers;

    .line 169
    :cond_0
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/module/SimpleModule;->_keyDeserializers:Lcom/amazon/org/codehaus/jackson/map/module/SimpleKeyDeserializers;

    invoke-virtual {v0, p1, p2}, Lcom/amazon/org/codehaus/jackson/map/module/SimpleKeyDeserializers;->addDeserializer(Ljava/lang/Class;Lcom/amazon/org/codehaus/jackson/map/KeyDeserializer;)Lcom/amazon/org/codehaus/jackson/map/module/SimpleKeyDeserializers;

    return-object p0
.end method

.method public addKeySerializer(Ljava/lang/Class;Lcom/amazon/org/codehaus/jackson/map/JsonSerializer;)Lcom/amazon/org/codehaus/jackson/map/module/SimpleModule;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "+TT;>;",
            "Lcom/amazon/org/codehaus/jackson/map/JsonSerializer<",
            "TT;>;)",
            "Lcom/amazon/org/codehaus/jackson/map/module/SimpleModule;"
        }
    .end annotation

    .line 148
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/module/SimpleModule;->_keySerializers:Lcom/amazon/org/codehaus/jackson/map/module/SimpleSerializers;

    if-nez v0, :cond_0

    .line 149
    new-instance v0, Lcom/amazon/org/codehaus/jackson/map/module/SimpleSerializers;

    invoke-direct {v0}, Lcom/amazon/org/codehaus/jackson/map/module/SimpleSerializers;-><init>()V

    iput-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/module/SimpleModule;->_keySerializers:Lcom/amazon/org/codehaus/jackson/map/module/SimpleSerializers;

    .line 151
    :cond_0
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/module/SimpleModule;->_keySerializers:Lcom/amazon/org/codehaus/jackson/map/module/SimpleSerializers;

    invoke-virtual {v0, p1, p2}, Lcom/amazon/org/codehaus/jackson/map/module/SimpleSerializers;->addSerializer(Ljava/lang/Class;Lcom/amazon/org/codehaus/jackson/map/JsonSerializer;)V

    return-object p0
.end method

.method public addSerializer(Lcom/amazon/org/codehaus/jackson/map/JsonSerializer;)Lcom/amazon/org/codehaus/jackson/map/module/SimpleModule;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/org/codehaus/jackson/map/JsonSerializer<",
            "*>;)",
            "Lcom/amazon/org/codehaus/jackson/map/module/SimpleModule;"
        }
    .end annotation

    .line 130
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/module/SimpleModule;->_serializers:Lcom/amazon/org/codehaus/jackson/map/module/SimpleSerializers;

    if-nez v0, :cond_0

    .line 131
    new-instance v0, Lcom/amazon/org/codehaus/jackson/map/module/SimpleSerializers;

    invoke-direct {v0}, Lcom/amazon/org/codehaus/jackson/map/module/SimpleSerializers;-><init>()V

    iput-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/module/SimpleModule;->_serializers:Lcom/amazon/org/codehaus/jackson/map/module/SimpleSerializers;

    .line 133
    :cond_0
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/module/SimpleModule;->_serializers:Lcom/amazon/org/codehaus/jackson/map/module/SimpleSerializers;

    invoke-virtual {v0, p1}, Lcom/amazon/org/codehaus/jackson/map/module/SimpleSerializers;->addSerializer(Lcom/amazon/org/codehaus/jackson/map/JsonSerializer;)V

    return-object p0
.end method

.method public addSerializer(Ljava/lang/Class;Lcom/amazon/org/codehaus/jackson/map/JsonSerializer;)Lcom/amazon/org/codehaus/jackson/map/module/SimpleModule;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "+TT;>;",
            "Lcom/amazon/org/codehaus/jackson/map/JsonSerializer<",
            "TT;>;)",
            "Lcom/amazon/org/codehaus/jackson/map/module/SimpleModule;"
        }
    .end annotation

    .line 139
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/module/SimpleModule;->_serializers:Lcom/amazon/org/codehaus/jackson/map/module/SimpleSerializers;

    if-nez v0, :cond_0

    .line 140
    new-instance v0, Lcom/amazon/org/codehaus/jackson/map/module/SimpleSerializers;

    invoke-direct {v0}, Lcom/amazon/org/codehaus/jackson/map/module/SimpleSerializers;-><init>()V

    iput-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/module/SimpleModule;->_serializers:Lcom/amazon/org/codehaus/jackson/map/module/SimpleSerializers;

    .line 142
    :cond_0
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/module/SimpleModule;->_serializers:Lcom/amazon/org/codehaus/jackson/map/module/SimpleSerializers;

    invoke-virtual {v0, p1, p2}, Lcom/amazon/org/codehaus/jackson/map/module/SimpleSerializers;->addSerializer(Ljava/lang/Class;Lcom/amazon/org/codehaus/jackson/map/JsonSerializer;)V

    return-object p0
.end method

.method public addValueInstantiator(Ljava/lang/Class;Lcom/amazon/org/codehaus/jackson/map/deser/ValueInstantiator;)Lcom/amazon/org/codehaus/jackson/map/module/SimpleModule;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/amazon/org/codehaus/jackson/map/deser/ValueInstantiator;",
            ")",
            "Lcom/amazon/org/codehaus/jackson/map/module/SimpleModule;"
        }
    .end annotation

    .line 198
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/module/SimpleModule;->_valueInstantiators:Lcom/amazon/org/codehaus/jackson/map/module/SimpleValueInstantiators;

    if-nez v0, :cond_0

    .line 199
    new-instance v0, Lcom/amazon/org/codehaus/jackson/map/module/SimpleValueInstantiators;

    invoke-direct {v0}, Lcom/amazon/org/codehaus/jackson/map/module/SimpleValueInstantiators;-><init>()V

    iput-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/module/SimpleModule;->_valueInstantiators:Lcom/amazon/org/codehaus/jackson/map/module/SimpleValueInstantiators;

    .line 201
    :cond_0
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/module/SimpleModule;->_valueInstantiators:Lcom/amazon/org/codehaus/jackson/map/module/SimpleValueInstantiators;

    invoke-virtual {v0, p1, p2}, Lcom/amazon/org/codehaus/jackson/map/module/SimpleValueInstantiators;->addValueInstantiator(Ljava/lang/Class;Lcom/amazon/org/codehaus/jackson/map/deser/ValueInstantiator;)Lcom/amazon/org/codehaus/jackson/map/module/SimpleValueInstantiators;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/org/codehaus/jackson/map/module/SimpleModule;->_valueInstantiators:Lcom/amazon/org/codehaus/jackson/map/module/SimpleValueInstantiators;

    return-object p0
.end method

.method public getModuleName()Ljava/lang/String;
    .locals 1

    .line 230
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/module/SimpleModule;->_name:Ljava/lang/String;

    return-object v0
.end method

.method public setAbstractTypes(Lcom/amazon/org/codehaus/jackson/map/module/SimpleAbstractTypeResolver;)V
    .locals 0

    .line 110
    iput-object p1, p0, Lcom/amazon/org/codehaus/jackson/map/module/SimpleModule;->_abstractTypes:Lcom/amazon/org/codehaus/jackson/map/module/SimpleAbstractTypeResolver;

    return-void
.end method

.method public setDeserializers(Lcom/amazon/org/codehaus/jackson/map/module/SimpleDeserializers;)V
    .locals 0

    .line 83
    iput-object p1, p0, Lcom/amazon/org/codehaus/jackson/map/module/SimpleModule;->_deserializers:Lcom/amazon/org/codehaus/jackson/map/module/SimpleDeserializers;

    return-void
.end method

.method public setKeyDeserializers(Lcom/amazon/org/codehaus/jackson/map/module/SimpleKeyDeserializers;)V
    .locals 0

    .line 101
    iput-object p1, p0, Lcom/amazon/org/codehaus/jackson/map/module/SimpleModule;->_keyDeserializers:Lcom/amazon/org/codehaus/jackson/map/module/SimpleKeyDeserializers;

    return-void
.end method

.method public setKeySerializers(Lcom/amazon/org/codehaus/jackson/map/module/SimpleSerializers;)V
    .locals 0

    .line 92
    iput-object p1, p0, Lcom/amazon/org/codehaus/jackson/map/module/SimpleModule;->_keySerializers:Lcom/amazon/org/codehaus/jackson/map/module/SimpleSerializers;

    return-void
.end method

.method public setMixInAnnotation(Ljava/lang/Class;Ljava/lang/Class;)Lcom/amazon/org/codehaus/jackson/map/module/SimpleModule;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Class<",
            "*>;)",
            "Lcom/amazon/org/codehaus/jackson/map/module/SimpleModule;"
        }
    .end annotation

    .line 215
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/module/SimpleModule;->_mixins:Ljava/util/HashMap;

    if-nez v0, :cond_0

    .line 216
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/module/SimpleModule;->_mixins:Ljava/util/HashMap;

    .line 218
    :cond_0
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/module/SimpleModule;->_mixins:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public setSerializers(Lcom/amazon/org/codehaus/jackson/map/module/SimpleSerializers;)V
    .locals 0

    .line 74
    iput-object p1, p0, Lcom/amazon/org/codehaus/jackson/map/module/SimpleModule;->_serializers:Lcom/amazon/org/codehaus/jackson/map/module/SimpleSerializers;

    return-void
.end method

.method public setValueInstantiators(Lcom/amazon/org/codehaus/jackson/map/module/SimpleValueInstantiators;)V
    .locals 0

    .line 119
    iput-object p1, p0, Lcom/amazon/org/codehaus/jackson/map/module/SimpleModule;->_valueInstantiators:Lcom/amazon/org/codehaus/jackson/map/module/SimpleValueInstantiators;

    return-void
.end method

.method public setupModule(Lcom/amazon/org/codehaus/jackson/map/Module$SetupContext;)V
    .locals 3

    .line 236
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/module/SimpleModule;->_serializers:Lcom/amazon/org/codehaus/jackson/map/module/SimpleSerializers;

    if-eqz v0, :cond_0

    .line 237
    invoke-interface {p1, v0}, Lcom/amazon/org/codehaus/jackson/map/Module$SetupContext;->addSerializers(Lcom/amazon/org/codehaus/jackson/map/Serializers;)V

    .line 239
    :cond_0
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/module/SimpleModule;->_deserializers:Lcom/amazon/org/codehaus/jackson/map/module/SimpleDeserializers;

    if-eqz v0, :cond_1

    .line 240
    invoke-interface {p1, v0}, Lcom/amazon/org/codehaus/jackson/map/Module$SetupContext;->addDeserializers(Lcom/amazon/org/codehaus/jackson/map/Deserializers;)V

    .line 242
    :cond_1
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/module/SimpleModule;->_keySerializers:Lcom/amazon/org/codehaus/jackson/map/module/SimpleSerializers;

    if-eqz v0, :cond_2

    .line 243
    invoke-interface {p1, v0}, Lcom/amazon/org/codehaus/jackson/map/Module$SetupContext;->addKeySerializers(Lcom/amazon/org/codehaus/jackson/map/Serializers;)V

    .line 245
    :cond_2
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/module/SimpleModule;->_keyDeserializers:Lcom/amazon/org/codehaus/jackson/map/module/SimpleKeyDeserializers;

    if-eqz v0, :cond_3

    .line 246
    invoke-interface {p1, v0}, Lcom/amazon/org/codehaus/jackson/map/Module$SetupContext;->addKeyDeserializers(Lcom/amazon/org/codehaus/jackson/map/KeyDeserializers;)V

    .line 248
    :cond_3
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/module/SimpleModule;->_abstractTypes:Lcom/amazon/org/codehaus/jackson/map/module/SimpleAbstractTypeResolver;

    if-eqz v0, :cond_4

    .line 249
    invoke-interface {p1, v0}, Lcom/amazon/org/codehaus/jackson/map/Module$SetupContext;->addAbstractTypeResolver(Lcom/amazon/org/codehaus/jackson/map/AbstractTypeResolver;)V

    .line 251
    :cond_4
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/module/SimpleModule;->_valueInstantiators:Lcom/amazon/org/codehaus/jackson/map/module/SimpleValueInstantiators;

    if-eqz v0, :cond_5

    .line 252
    invoke-interface {p1, v0}, Lcom/amazon/org/codehaus/jackson/map/Module$SetupContext;->addValueInstantiators(Lcom/amazon/org/codehaus/jackson/map/deser/ValueInstantiators;)V

    .line 254
    :cond_5
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/module/SimpleModule;->_mixins:Ljava/util/HashMap;

    if-eqz v0, :cond_6

    .line 255
    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 256
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Class;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Class;

    invoke-interface {p1, v2, v1}, Lcom/amazon/org/codehaus/jackson/map/Module$SetupContext;->setMixInAnnotations(Ljava/lang/Class;Ljava/lang/Class;)V

    goto :goto_0

    :cond_6
    return-void
.end method

.method public version()Lcom/amazon/org/codehaus/jackson/Version;
    .locals 1

    .line 263
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/module/SimpleModule;->_version:Lcom/amazon/org/codehaus/jackson/Version;

    return-object v0
.end method
