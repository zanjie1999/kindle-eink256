.class public abstract Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/BeanSerializerModifier;
.super Ljava/lang/Object;
.source "BeanSerializerModifier.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public changeProperties(Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializationConfig;Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/BasicBeanDescription;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializationConfig;",
            "Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/BasicBeanDescription;",
            "Ljava/util/List<",
            "Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/BeanPropertyWriter;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/BeanPropertyWriter;",
            ">;"
        }
    .end annotation

    return-object p3
.end method

.method public modifySerializer(Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializationConfig;Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/BasicBeanDescription;Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonSerializer;)Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonSerializer;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializationConfig;",
            "Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/BasicBeanDescription;",
            "Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonSerializer<",
            "*>;)",
            "Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonSerializer<",
            "*>;"
        }
    .end annotation

    return-object p3
.end method

.method public orderProperties(Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializationConfig;Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/BasicBeanDescription;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializationConfig;",
            "Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/BasicBeanDescription;",
            "Ljava/util/List<",
            "Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/BeanPropertyWriter;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/BeanPropertyWriter;",
            ">;"
        }
    .end annotation

    return-object p3
.end method

.method public updateBuilder(Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializationConfig;Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/BasicBeanDescription;Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/BeanSerializerBuilder;)Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/BeanSerializerBuilder;
    .locals 0

    return-object p3
.end method
