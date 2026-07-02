.class public abstract Lcom/amazon/org/codehaus/jackson/map/ser/impl/PropertySerializerMap;
.super Ljava/lang/Object;
.source "PropertySerializerMap.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/org/codehaus/jackson/map/ser/impl/PropertySerializerMap$Multi;,
        Lcom/amazon/org/codehaus/jackson/map/ser/impl/PropertySerializerMap$Double;,
        Lcom/amazon/org/codehaus/jackson/map/ser/impl/PropertySerializerMap$Single;,
        Lcom/amazon/org/codehaus/jackson/map/ser/impl/PropertySerializerMap$Empty;,
        Lcom/amazon/org/codehaus/jackson/map/ser/impl/PropertySerializerMap$TypeAndSerializer;,
        Lcom/amazon/org/codehaus/jackson/map/ser/impl/PropertySerializerMap$SerializerAndMapResult;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static emptyMap()Lcom/amazon/org/codehaus/jackson/map/ser/impl/PropertySerializerMap;
    .locals 1

    .line 54
    sget-object v0, Lcom/amazon/org/codehaus/jackson/map/ser/impl/PropertySerializerMap$Empty;->instance:Lcom/amazon/org/codehaus/jackson/map/ser/impl/PropertySerializerMap$Empty;

    return-object v0
.end method


# virtual methods
.method public final findAndAddSerializer(Lcom/amazon/org/codehaus/jackson/type/JavaType;Lcom/amazon/org/codehaus/jackson/map/SerializerProvider;Lcom/amazon/org/codehaus/jackson/map/BeanProperty;)Lcom/amazon/org/codehaus/jackson/map/ser/impl/PropertySerializerMap$SerializerAndMapResult;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/org/codehaus/jackson/map/JsonMappingException;
        }
    .end annotation

    .line 47
    invoke-virtual {p2, p1, p3}, Lcom/amazon/org/codehaus/jackson/map/SerializerProvider;->findValueSerializer(Lcom/amazon/org/codehaus/jackson/type/JavaType;Lcom/amazon/org/codehaus/jackson/map/BeanProperty;)Lcom/amazon/org/codehaus/jackson/map/JsonSerializer;

    move-result-object p2

    .line 48
    new-instance p3, Lcom/amazon/org/codehaus/jackson/map/ser/impl/PropertySerializerMap$SerializerAndMapResult;

    invoke-virtual {p1}, Lcom/amazon/org/codehaus/jackson/type/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/amazon/org/codehaus/jackson/map/ser/impl/PropertySerializerMap;->newWith(Ljava/lang/Class;Lcom/amazon/org/codehaus/jackson/map/JsonSerializer;)Lcom/amazon/org/codehaus/jackson/map/ser/impl/PropertySerializerMap;

    move-result-object p1

    invoke-direct {p3, p2, p1}, Lcom/amazon/org/codehaus/jackson/map/ser/impl/PropertySerializerMap$SerializerAndMapResult;-><init>(Lcom/amazon/org/codehaus/jackson/map/JsonSerializer;Lcom/amazon/org/codehaus/jackson/map/ser/impl/PropertySerializerMap;)V

    return-object p3
.end method

.method public final findAndAddSerializer(Ljava/lang/Class;Lcom/amazon/org/codehaus/jackson/map/SerializerProvider;Lcom/amazon/org/codehaus/jackson/map/BeanProperty;)Lcom/amazon/org/codehaus/jackson/map/ser/impl/PropertySerializerMap$SerializerAndMapResult;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/amazon/org/codehaus/jackson/map/SerializerProvider;",
            "Lcom/amazon/org/codehaus/jackson/map/BeanProperty;",
            ")",
            "Lcom/amazon/org/codehaus/jackson/map/ser/impl/PropertySerializerMap$SerializerAndMapResult;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/org/codehaus/jackson/map/JsonMappingException;
        }
    .end annotation

    .line 39
    invoke-virtual {p2, p1, p3}, Lcom/amazon/org/codehaus/jackson/map/SerializerProvider;->findValueSerializer(Ljava/lang/Class;Lcom/amazon/org/codehaus/jackson/map/BeanProperty;)Lcom/amazon/org/codehaus/jackson/map/JsonSerializer;

    move-result-object p2

    .line 40
    new-instance p3, Lcom/amazon/org/codehaus/jackson/map/ser/impl/PropertySerializerMap$SerializerAndMapResult;

    invoke-virtual {p0, p1, p2}, Lcom/amazon/org/codehaus/jackson/map/ser/impl/PropertySerializerMap;->newWith(Ljava/lang/Class;Lcom/amazon/org/codehaus/jackson/map/JsonSerializer;)Lcom/amazon/org/codehaus/jackson/map/ser/impl/PropertySerializerMap;

    move-result-object p1

    invoke-direct {p3, p2, p1}, Lcom/amazon/org/codehaus/jackson/map/ser/impl/PropertySerializerMap$SerializerAndMapResult;-><init>(Lcom/amazon/org/codehaus/jackson/map/JsonSerializer;Lcom/amazon/org/codehaus/jackson/map/ser/impl/PropertySerializerMap;)V

    return-object p3
.end method

.method public abstract newWith(Ljava/lang/Class;Lcom/amazon/org/codehaus/jackson/map/JsonSerializer;)Lcom/amazon/org/codehaus/jackson/map/ser/impl/PropertySerializerMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/amazon/org/codehaus/jackson/map/JsonSerializer<",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/amazon/org/codehaus/jackson/map/ser/impl/PropertySerializerMap;"
        }
    .end annotation
.end method

.method public abstract serializerFor(Ljava/lang/Class;)Lcom/amazon/org/codehaus/jackson/map/JsonSerializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lcom/amazon/org/codehaus/jackson/map/JsonSerializer<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end method
