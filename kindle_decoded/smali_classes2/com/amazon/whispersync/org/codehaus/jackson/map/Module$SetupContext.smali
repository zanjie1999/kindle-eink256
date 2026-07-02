.class public interface abstract Lcom/amazon/whispersync/org/codehaus/jackson/map/Module$SetupContext;
.super Ljava/lang/Object;
.source "Module.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/whispersync/org/codehaus/jackson/map/Module;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "SetupContext"
.end annotation


# virtual methods
.method public abstract addAbstractTypeResolver(Lcom/amazon/whispersync/org/codehaus/jackson/map/AbstractTypeResolver;)V
.end method

.method public abstract addBeanDeserializerModifier(Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/BeanDeserializerModifier;)V
.end method

.method public abstract addBeanSerializerModifier(Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/BeanSerializerModifier;)V
.end method

.method public abstract addDeserializers(Lcom/amazon/whispersync/org/codehaus/jackson/map/Deserializers;)V
.end method

.method public abstract addKeyDeserializers(Lcom/amazon/whispersync/org/codehaus/jackson/map/KeyDeserializers;)V
.end method

.method public abstract addKeySerializers(Lcom/amazon/whispersync/org/codehaus/jackson/map/Serializers;)V
.end method

.method public abstract addSerializers(Lcom/amazon/whispersync/org/codehaus/jackson/map/Serializers;)V
.end method

.method public abstract addTypeModifier(Lcom/amazon/whispersync/org/codehaus/jackson/map/type/TypeModifier;)V
.end method

.method public abstract addValueInstantiators(Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/ValueInstantiators;)V
.end method

.method public abstract appendAnnotationIntrospector(Lcom/amazon/whispersync/org/codehaus/jackson/map/AnnotationIntrospector;)V
.end method

.method public abstract getDeserializationConfig()Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializationConfig;
.end method

.method public abstract getMapperVersion()Lcom/amazon/whispersync/org/codehaus/jackson/Version;
.end method

.method public abstract getSerializationConfig()Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializationConfig;
.end method

.method public abstract insertAnnotationIntrospector(Lcom/amazon/whispersync/org/codehaus/jackson/map/AnnotationIntrospector;)V
.end method

.method public abstract isEnabled(Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerator$Feature;)Z
.end method

.method public abstract isEnabled(Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser$Feature;)Z
.end method

.method public abstract isEnabled(Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializationConfig$Feature;)Z
.end method

.method public abstract isEnabled(Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializationConfig$Feature;)Z
.end method

.method public abstract setMixInAnnotations(Ljava/lang/Class;Ljava/lang/Class;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation
.end method
