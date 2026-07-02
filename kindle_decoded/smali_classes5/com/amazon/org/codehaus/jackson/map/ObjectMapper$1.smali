.class Lcom/amazon/org/codehaus/jackson/map/ObjectMapper$1;
.super Ljava/lang/Object;
.source "ObjectMapper.java"

# interfaces
.implements Lcom/amazon/org/codehaus/jackson/map/Module$SetupContext;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/org/codehaus/jackson/map/ObjectMapper;->registerModule(Lcom/amazon/org/codehaus/jackson/map/Module;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/org/codehaus/jackson/map/ObjectMapper;

.field final synthetic val$mapper:Lcom/amazon/org/codehaus/jackson/map/ObjectMapper;


# direct methods
.method constructor <init>(Lcom/amazon/org/codehaus/jackson/map/ObjectMapper;Lcom/amazon/org/codehaus/jackson/map/ObjectMapper;)V
    .locals 0

    .line 455
    iput-object p1, p0, Lcom/amazon/org/codehaus/jackson/map/ObjectMapper$1;->this$0:Lcom/amazon/org/codehaus/jackson/map/ObjectMapper;

    iput-object p2, p0, Lcom/amazon/org/codehaus/jackson/map/ObjectMapper$1;->val$mapper:Lcom/amazon/org/codehaus/jackson/map/ObjectMapper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public addAbstractTypeResolver(Lcom/amazon/org/codehaus/jackson/map/AbstractTypeResolver;)V
    .locals 2

    .line 529
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/ObjectMapper$1;->val$mapper:Lcom/amazon/org/codehaus/jackson/map/ObjectMapper;

    iget-object v1, v0, Lcom/amazon/org/codehaus/jackson/map/ObjectMapper;->_deserializerProvider:Lcom/amazon/org/codehaus/jackson/map/DeserializerProvider;

    invoke-virtual {v1, p1}, Lcom/amazon/org/codehaus/jackson/map/DeserializerProvider;->withAbstractTypeResolver(Lcom/amazon/org/codehaus/jackson/map/AbstractTypeResolver;)Lcom/amazon/org/codehaus/jackson/map/DeserializerProvider;

    move-result-object p1

    iput-object p1, v0, Lcom/amazon/org/codehaus/jackson/map/ObjectMapper;->_deserializerProvider:Lcom/amazon/org/codehaus/jackson/map/DeserializerProvider;

    return-void
.end method

.method public addBeanDeserializerModifier(Lcom/amazon/org/codehaus/jackson/map/deser/BeanDeserializerModifier;)V
    .locals 2

    .line 522
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/ObjectMapper$1;->val$mapper:Lcom/amazon/org/codehaus/jackson/map/ObjectMapper;

    iget-object v1, v0, Lcom/amazon/org/codehaus/jackson/map/ObjectMapper;->_deserializerProvider:Lcom/amazon/org/codehaus/jackson/map/DeserializerProvider;

    invoke-virtual {v1, p1}, Lcom/amazon/org/codehaus/jackson/map/DeserializerProvider;->withDeserializerModifier(Lcom/amazon/org/codehaus/jackson/map/deser/BeanDeserializerModifier;)Lcom/amazon/org/codehaus/jackson/map/DeserializerProvider;

    move-result-object p1

    iput-object p1, v0, Lcom/amazon/org/codehaus/jackson/map/ObjectMapper;->_deserializerProvider:Lcom/amazon/org/codehaus/jackson/map/DeserializerProvider;

    return-void
.end method

.method public addBeanSerializerModifier(Lcom/amazon/org/codehaus/jackson/map/ser/BeanSerializerModifier;)V
    .locals 2

    .line 517
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/ObjectMapper$1;->val$mapper:Lcom/amazon/org/codehaus/jackson/map/ObjectMapper;

    iget-object v1, v0, Lcom/amazon/org/codehaus/jackson/map/ObjectMapper;->_serializerFactory:Lcom/amazon/org/codehaus/jackson/map/SerializerFactory;

    invoke-virtual {v1, p1}, Lcom/amazon/org/codehaus/jackson/map/SerializerFactory;->withSerializerModifier(Lcom/amazon/org/codehaus/jackson/map/ser/BeanSerializerModifier;)Lcom/amazon/org/codehaus/jackson/map/SerializerFactory;

    move-result-object p1

    iput-object p1, v0, Lcom/amazon/org/codehaus/jackson/map/ObjectMapper;->_serializerFactory:Lcom/amazon/org/codehaus/jackson/map/SerializerFactory;

    return-void
.end method

.method public addDeserializers(Lcom/amazon/org/codehaus/jackson/map/Deserializers;)V
    .locals 2

    .line 497
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/ObjectMapper$1;->val$mapper:Lcom/amazon/org/codehaus/jackson/map/ObjectMapper;

    iget-object v1, v0, Lcom/amazon/org/codehaus/jackson/map/ObjectMapper;->_deserializerProvider:Lcom/amazon/org/codehaus/jackson/map/DeserializerProvider;

    invoke-virtual {v1, p1}, Lcom/amazon/org/codehaus/jackson/map/DeserializerProvider;->withAdditionalDeserializers(Lcom/amazon/org/codehaus/jackson/map/Deserializers;)Lcom/amazon/org/codehaus/jackson/map/DeserializerProvider;

    move-result-object p1

    iput-object p1, v0, Lcom/amazon/org/codehaus/jackson/map/ObjectMapper;->_deserializerProvider:Lcom/amazon/org/codehaus/jackson/map/DeserializerProvider;

    return-void
.end method

.method public addKeyDeserializers(Lcom/amazon/org/codehaus/jackson/map/KeyDeserializers;)V
    .locals 2

    .line 502
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/ObjectMapper$1;->val$mapper:Lcom/amazon/org/codehaus/jackson/map/ObjectMapper;

    iget-object v1, v0, Lcom/amazon/org/codehaus/jackson/map/ObjectMapper;->_deserializerProvider:Lcom/amazon/org/codehaus/jackson/map/DeserializerProvider;

    invoke-virtual {v1, p1}, Lcom/amazon/org/codehaus/jackson/map/DeserializerProvider;->withAdditionalKeyDeserializers(Lcom/amazon/org/codehaus/jackson/map/KeyDeserializers;)Lcom/amazon/org/codehaus/jackson/map/DeserializerProvider;

    move-result-object p1

    iput-object p1, v0, Lcom/amazon/org/codehaus/jackson/map/ObjectMapper;->_deserializerProvider:Lcom/amazon/org/codehaus/jackson/map/DeserializerProvider;

    return-void
.end method

.method public addKeySerializers(Lcom/amazon/org/codehaus/jackson/map/Serializers;)V
    .locals 2

    .line 512
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/ObjectMapper$1;->val$mapper:Lcom/amazon/org/codehaus/jackson/map/ObjectMapper;

    iget-object v1, v0, Lcom/amazon/org/codehaus/jackson/map/ObjectMapper;->_serializerFactory:Lcom/amazon/org/codehaus/jackson/map/SerializerFactory;

    invoke-virtual {v1, p1}, Lcom/amazon/org/codehaus/jackson/map/SerializerFactory;->withAdditionalKeySerializers(Lcom/amazon/org/codehaus/jackson/map/Serializers;)Lcom/amazon/org/codehaus/jackson/map/SerializerFactory;

    move-result-object p1

    iput-object p1, v0, Lcom/amazon/org/codehaus/jackson/map/ObjectMapper;->_serializerFactory:Lcom/amazon/org/codehaus/jackson/map/SerializerFactory;

    return-void
.end method

.method public addSerializers(Lcom/amazon/org/codehaus/jackson/map/Serializers;)V
    .locals 2

    .line 507
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/ObjectMapper$1;->val$mapper:Lcom/amazon/org/codehaus/jackson/map/ObjectMapper;

    iget-object v1, v0, Lcom/amazon/org/codehaus/jackson/map/ObjectMapper;->_serializerFactory:Lcom/amazon/org/codehaus/jackson/map/SerializerFactory;

    invoke-virtual {v1, p1}, Lcom/amazon/org/codehaus/jackson/map/SerializerFactory;->withAdditionalSerializers(Lcom/amazon/org/codehaus/jackson/map/Serializers;)Lcom/amazon/org/codehaus/jackson/map/SerializerFactory;

    move-result-object p1

    iput-object p1, v0, Lcom/amazon/org/codehaus/jackson/map/ObjectMapper;->_serializerFactory:Lcom/amazon/org/codehaus/jackson/map/SerializerFactory;

    return-void
.end method

.method public addTypeModifier(Lcom/amazon/org/codehaus/jackson/map/type/TypeModifier;)V
    .locals 1

    .line 534
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/ObjectMapper$1;->val$mapper:Lcom/amazon/org/codehaus/jackson/map/ObjectMapper;

    iget-object v0, v0, Lcom/amazon/org/codehaus/jackson/map/ObjectMapper;->_typeFactory:Lcom/amazon/org/codehaus/jackson/map/type/TypeFactory;

    .line 535
    invoke-virtual {v0, p1}, Lcom/amazon/org/codehaus/jackson/map/type/TypeFactory;->withModifier(Lcom/amazon/org/codehaus/jackson/map/type/TypeModifier;)Lcom/amazon/org/codehaus/jackson/map/type/TypeFactory;

    move-result-object p1

    .line 536
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/ObjectMapper$1;->val$mapper:Lcom/amazon/org/codehaus/jackson/map/ObjectMapper;

    invoke-virtual {v0, p1}, Lcom/amazon/org/codehaus/jackson/map/ObjectMapper;->setTypeFactory(Lcom/amazon/org/codehaus/jackson/map/type/TypeFactory;)Lcom/amazon/org/codehaus/jackson/map/ObjectMapper;

    return-void
.end method

.method public addValueInstantiators(Lcom/amazon/org/codehaus/jackson/map/deser/ValueInstantiators;)V
    .locals 2

    .line 541
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/ObjectMapper$1;->val$mapper:Lcom/amazon/org/codehaus/jackson/map/ObjectMapper;

    iget-object v1, v0, Lcom/amazon/org/codehaus/jackson/map/ObjectMapper;->_deserializerProvider:Lcom/amazon/org/codehaus/jackson/map/DeserializerProvider;

    invoke-virtual {v1, p1}, Lcom/amazon/org/codehaus/jackson/map/DeserializerProvider;->withValueInstantiators(Lcom/amazon/org/codehaus/jackson/map/deser/ValueInstantiators;)Lcom/amazon/org/codehaus/jackson/map/DeserializerProvider;

    move-result-object p1

    iput-object p1, v0, Lcom/amazon/org/codehaus/jackson/map/ObjectMapper;->_deserializerProvider:Lcom/amazon/org/codehaus/jackson/map/DeserializerProvider;

    return-void
.end method

.method public appendAnnotationIntrospector(Lcom/amazon/org/codehaus/jackson/map/AnnotationIntrospector;)V
    .locals 2

    .line 552
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/ObjectMapper$1;->val$mapper:Lcom/amazon/org/codehaus/jackson/map/ObjectMapper;

    iget-object v1, v0, Lcom/amazon/org/codehaus/jackson/map/ObjectMapper;->_deserializationConfig:Lcom/amazon/org/codehaus/jackson/map/DeserializationConfig;

    invoke-virtual {v1, p1}, Lcom/amazon/org/codehaus/jackson/map/DeserializationConfig;->withAppendedAnnotationIntrospector(Lcom/amazon/org/codehaus/jackson/map/AnnotationIntrospector;)Lcom/amazon/org/codehaus/jackson/map/DeserializationConfig;

    move-result-object v1

    iput-object v1, v0, Lcom/amazon/org/codehaus/jackson/map/ObjectMapper;->_deserializationConfig:Lcom/amazon/org/codehaus/jackson/map/DeserializationConfig;

    .line 553
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/ObjectMapper$1;->val$mapper:Lcom/amazon/org/codehaus/jackson/map/ObjectMapper;

    iget-object v1, v0, Lcom/amazon/org/codehaus/jackson/map/ObjectMapper;->_serializationConfig:Lcom/amazon/org/codehaus/jackson/map/SerializationConfig;

    invoke-virtual {v1, p1}, Lcom/amazon/org/codehaus/jackson/map/SerializationConfig;->withAppendedAnnotationIntrospector(Lcom/amazon/org/codehaus/jackson/map/AnnotationIntrospector;)Lcom/amazon/org/codehaus/jackson/map/SerializationConfig;

    move-result-object p1

    iput-object p1, v0, Lcom/amazon/org/codehaus/jackson/map/ObjectMapper;->_serializationConfig:Lcom/amazon/org/codehaus/jackson/map/SerializationConfig;

    return-void
.end method

.method public getDeserializationConfig()Lcom/amazon/org/codehaus/jackson/map/DeserializationConfig;
    .locals 1

    .line 465
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/ObjectMapper$1;->val$mapper:Lcom/amazon/org/codehaus/jackson/map/ObjectMapper;

    invoke-virtual {v0}, Lcom/amazon/org/codehaus/jackson/map/ObjectMapper;->getDeserializationConfig()Lcom/amazon/org/codehaus/jackson/map/DeserializationConfig;

    move-result-object v0

    return-object v0
.end method

.method public getMapperVersion()Lcom/amazon/org/codehaus/jackson/Version;
    .locals 1

    .line 460
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/ObjectMapper$1;->this$0:Lcom/amazon/org/codehaus/jackson/map/ObjectMapper;

    invoke-virtual {v0}, Lcom/amazon/org/codehaus/jackson/map/ObjectMapper;->version()Lcom/amazon/org/codehaus/jackson/Version;

    move-result-object v0

    return-object v0
.end method

.method public getSerializationConfig()Lcom/amazon/org/codehaus/jackson/map/SerializationConfig;
    .locals 1

    .line 470
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/ObjectMapper$1;->val$mapper:Lcom/amazon/org/codehaus/jackson/map/ObjectMapper;

    invoke-virtual {v0}, Lcom/amazon/org/codehaus/jackson/map/ObjectMapper;->getSerializationConfig()Lcom/amazon/org/codehaus/jackson/map/SerializationConfig;

    move-result-object v0

    return-object v0
.end method

.method public insertAnnotationIntrospector(Lcom/amazon/org/codehaus/jackson/map/AnnotationIntrospector;)V
    .locals 2

    .line 546
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/ObjectMapper$1;->val$mapper:Lcom/amazon/org/codehaus/jackson/map/ObjectMapper;

    iget-object v1, v0, Lcom/amazon/org/codehaus/jackson/map/ObjectMapper;->_deserializationConfig:Lcom/amazon/org/codehaus/jackson/map/DeserializationConfig;

    invoke-virtual {v1, p1}, Lcom/amazon/org/codehaus/jackson/map/DeserializationConfig;->withInsertedAnnotationIntrospector(Lcom/amazon/org/codehaus/jackson/map/AnnotationIntrospector;)Lcom/amazon/org/codehaus/jackson/map/DeserializationConfig;

    move-result-object v1

    iput-object v1, v0, Lcom/amazon/org/codehaus/jackson/map/ObjectMapper;->_deserializationConfig:Lcom/amazon/org/codehaus/jackson/map/DeserializationConfig;

    .line 547
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/ObjectMapper$1;->val$mapper:Lcom/amazon/org/codehaus/jackson/map/ObjectMapper;

    iget-object v1, v0, Lcom/amazon/org/codehaus/jackson/map/ObjectMapper;->_serializationConfig:Lcom/amazon/org/codehaus/jackson/map/SerializationConfig;

    invoke-virtual {v1, p1}, Lcom/amazon/org/codehaus/jackson/map/SerializationConfig;->withInsertedAnnotationIntrospector(Lcom/amazon/org/codehaus/jackson/map/AnnotationIntrospector;)Lcom/amazon/org/codehaus/jackson/map/SerializationConfig;

    move-result-object p1

    iput-object p1, v0, Lcom/amazon/org/codehaus/jackson/map/ObjectMapper;->_serializationConfig:Lcom/amazon/org/codehaus/jackson/map/SerializationConfig;

    return-void
.end method

.method public isEnabled(Lcom/amazon/org/codehaus/jackson/JsonGenerator$Feature;)Z
    .locals 1

    .line 490
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/ObjectMapper$1;->val$mapper:Lcom/amazon/org/codehaus/jackson/map/ObjectMapper;

    invoke-virtual {v0, p1}, Lcom/amazon/org/codehaus/jackson/map/ObjectMapper;->isEnabled(Lcom/amazon/org/codehaus/jackson/JsonGenerator$Feature;)Z

    move-result p1

    return p1
.end method

.method public isEnabled(Lcom/amazon/org/codehaus/jackson/JsonParser$Feature;)Z
    .locals 1

    .line 485
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/ObjectMapper$1;->val$mapper:Lcom/amazon/org/codehaus/jackson/map/ObjectMapper;

    invoke-virtual {v0, p1}, Lcom/amazon/org/codehaus/jackson/map/ObjectMapper;->isEnabled(Lcom/amazon/org/codehaus/jackson/JsonParser$Feature;)Z

    move-result p1

    return p1
.end method

.method public isEnabled(Lcom/amazon/org/codehaus/jackson/map/DeserializationConfig$Feature;)Z
    .locals 1

    .line 475
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/ObjectMapper$1;->val$mapper:Lcom/amazon/org/codehaus/jackson/map/ObjectMapper;

    invoke-virtual {v0, p1}, Lcom/amazon/org/codehaus/jackson/map/ObjectMapper;->isEnabled(Lcom/amazon/org/codehaus/jackson/map/DeserializationConfig$Feature;)Z

    move-result p1

    return p1
.end method

.method public isEnabled(Lcom/amazon/org/codehaus/jackson/map/SerializationConfig$Feature;)Z
    .locals 1

    .line 480
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/ObjectMapper$1;->val$mapper:Lcom/amazon/org/codehaus/jackson/map/ObjectMapper;

    invoke-virtual {v0, p1}, Lcom/amazon/org/codehaus/jackson/map/ObjectMapper;->isEnabled(Lcom/amazon/org/codehaus/jackson/map/SerializationConfig$Feature;)Z

    move-result p1

    return p1
.end method

.method public setMixInAnnotations(Ljava/lang/Class;Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 558
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/ObjectMapper$1;->val$mapper:Lcom/amazon/org/codehaus/jackson/map/ObjectMapper;

    iget-object v0, v0, Lcom/amazon/org/codehaus/jackson/map/ObjectMapper;->_deserializationConfig:Lcom/amazon/org/codehaus/jackson/map/DeserializationConfig;

    invoke-virtual {v0, p1, p2}, Lcom/amazon/org/codehaus/jackson/map/MapperConfig;->addMixInAnnotations(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 559
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/ObjectMapper$1;->val$mapper:Lcom/amazon/org/codehaus/jackson/map/ObjectMapper;

    iget-object v0, v0, Lcom/amazon/org/codehaus/jackson/map/ObjectMapper;->_serializationConfig:Lcom/amazon/org/codehaus/jackson/map/SerializationConfig;

    invoke-virtual {v0, p1, p2}, Lcom/amazon/org/codehaus/jackson/map/MapperConfig;->addMixInAnnotations(Ljava/lang/Class;Ljava/lang/Class;)V

    return-void
.end method
