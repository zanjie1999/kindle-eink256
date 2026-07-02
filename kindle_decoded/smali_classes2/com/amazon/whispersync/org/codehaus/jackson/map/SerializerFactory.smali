.class public abstract Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializerFactory;
.super Ljava/lang/Object;
.source "SerializerFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializerFactory$Config;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract createKeySerializer(Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializationConfig;Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;Lcom/amazon/whispersync/org/codehaus/jackson/map/BeanProperty;)Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonSerializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializationConfig;",
            "Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;",
            "Lcom/amazon/whispersync/org/codehaus/jackson/map/BeanProperty;",
            ")",
            "Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonSerializer<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonMappingException;
        }
    .end annotation
.end method

.method public abstract createSerializer(Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializationConfig;Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;Lcom/amazon/whispersync/org/codehaus/jackson/map/BeanProperty;)Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonSerializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializationConfig;",
            "Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;",
            "Lcom/amazon/whispersync/org/codehaus/jackson/map/BeanProperty;",
            ")",
            "Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonSerializer<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonMappingException;
        }
    .end annotation
.end method

.method public final createSerializer(Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializationConfig;)Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonSerializer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;",
            "Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializationConfig;",
            ")",
            "Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonSerializer<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    .line 176
    :try_start_0
    invoke-virtual {p0, p2, p1, v0}, Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializerFactory;->createSerializer(Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializationConfig;Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;Lcom/amazon/whispersync/org/codehaus/jackson/map/BeanProperty;)Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonSerializer;

    move-result-object p1
    :try_end_0
    .catch Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonMappingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 178
    new-instance p2, Lcom/amazon/whispersync/org/codehaus/jackson/map/RuntimeJsonMappingException;

    invoke-direct {p2, p1}, Lcom/amazon/whispersync/org/codehaus/jackson/map/RuntimeJsonMappingException;-><init>(Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonMappingException;)V

    throw p2
.end method

.method public abstract createTypeSerializer(Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializationConfig;Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;Lcom/amazon/whispersync/org/codehaus/jackson/map/BeanProperty;)Lcom/amazon/whispersync/org/codehaus/jackson/map/TypeSerializer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonMappingException;
        }
    .end annotation
.end method

.method public final createTypeSerializer(Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializationConfig;)Lcom/amazon/whispersync/org/codehaus/jackson/map/TypeSerializer;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    .line 193
    :try_start_0
    invoke-virtual {p0, p2, p1, v0}, Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializerFactory;->createTypeSerializer(Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializationConfig;Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;Lcom/amazon/whispersync/org/codehaus/jackson/map/BeanProperty;)Lcom/amazon/whispersync/org/codehaus/jackson/map/TypeSerializer;

    move-result-object p1
    :try_end_0
    .catch Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonMappingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 195
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method public abstract getConfig()Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializerFactory$Config;
.end method

.method public final withAdditionalKeySerializers(Lcom/amazon/whispersync/org/codehaus/jackson/map/Serializers;)Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializerFactory;
    .locals 1

    .line 97
    invoke-virtual {p0}, Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializerFactory;->getConfig()Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializerFactory$Config;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializerFactory$Config;->withAdditionalKeySerializers(Lcom/amazon/whispersync/org/codehaus/jackson/map/Serializers;)Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializerFactory$Config;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializerFactory;->withConfig(Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializerFactory$Config;)Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializerFactory;

    move-result-object p1

    return-object p1
.end method

.method public final withAdditionalSerializers(Lcom/amazon/whispersync/org/codehaus/jackson/map/Serializers;)Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializerFactory;
    .locals 1

    .line 90
    invoke-virtual {p0}, Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializerFactory;->getConfig()Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializerFactory$Config;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializerFactory$Config;->withAdditionalSerializers(Lcom/amazon/whispersync/org/codehaus/jackson/map/Serializers;)Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializerFactory$Config;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializerFactory;->withConfig(Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializerFactory$Config;)Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializerFactory;

    move-result-object p1

    return-object p1
.end method

.method public abstract withConfig(Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializerFactory$Config;)Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializerFactory;
.end method

.method public final withSerializerModifier(Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/BeanSerializerModifier;)Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializerFactory;
    .locals 1

    .line 110
    invoke-virtual {p0}, Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializerFactory;->getConfig()Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializerFactory$Config;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializerFactory$Config;->withSerializerModifier(Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/BeanSerializerModifier;)Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializerFactory$Config;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializerFactory;->withConfig(Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializerFactory$Config;)Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializerFactory;

    move-result-object p1

    return-object p1
.end method
