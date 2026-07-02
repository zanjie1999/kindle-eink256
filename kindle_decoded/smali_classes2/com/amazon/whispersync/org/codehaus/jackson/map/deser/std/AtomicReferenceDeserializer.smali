.class public Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/std/AtomicReferenceDeserializer;
.super Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/std/StdScalarDeserializer;
.source "AtomicReferenceDeserializer.java"

# interfaces
.implements Lcom/amazon/whispersync/org/codehaus/jackson/map/ResolvableDeserializer;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/std/StdScalarDeserializer<",
        "Ljava/util/concurrent/atomic/AtomicReference<",
        "*>;>;",
        "Lcom/amazon/whispersync/org/codehaus/jackson/map/ResolvableDeserializer;"
    }
.end annotation


# instance fields
.field protected final _property:Lcom/amazon/whispersync/org/codehaus/jackson/map/BeanProperty;

.field protected final _referencedType:Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;

.field protected _valueDeserializer:Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonDeserializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonDeserializer<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;Lcom/amazon/whispersync/org/codehaus/jackson/map/BeanProperty;)V
    .locals 1

    .line 29
    const-class v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {p0, v0}, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/std/StdScalarDeserializer;-><init>(Ljava/lang/Class;)V

    .line 30
    iput-object p1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/std/AtomicReferenceDeserializer;->_referencedType:Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;

    .line 31
    iput-object p2, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/std/AtomicReferenceDeserializer;->_property:Lcom/amazon/whispersync/org/codehaus/jackson/map/BeanProperty;

    return-void
.end method


# virtual methods
.method public bridge synthetic deserialize(Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser;Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializationContext;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/whispersync/org/codehaus/jackson/JsonProcessingException;
        }
    .end annotation

    .line 11
    invoke-virtual {p0, p1, p2}, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/std/AtomicReferenceDeserializer;->deserialize(Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser;Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializationContext;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object p1

    return-object p1
.end method

.method public deserialize(Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser;Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializationContext;)Ljava/util/concurrent/atomic/AtomicReference;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser;",
            "Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializationContext;",
            ")",
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/whispersync/org/codehaus/jackson/JsonProcessingException;
        }
    .end annotation

    .line 38
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    iget-object v1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/std/AtomicReferenceDeserializer;->_valueDeserializer:Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonDeserializer;

    invoke-virtual {v1, p1, p2}, Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonDeserializer;->deserialize(Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser;Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializationContext;)Ljava/lang/Object;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public resolve(Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializationConfig;Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializerProvider;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonMappingException;
        }
    .end annotation

    .line 45
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/std/AtomicReferenceDeserializer;->_referencedType:Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;

    iget-object v1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/std/AtomicReferenceDeserializer;->_property:Lcom/amazon/whispersync/org/codehaus/jackson/map/BeanProperty;

    invoke-virtual {p2, p1, v0, v1}, Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializerProvider;->findValueDeserializer(Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializationConfig;Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;Lcom/amazon/whispersync/org/codehaus/jackson/map/BeanProperty;)Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonDeserializer;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/std/AtomicReferenceDeserializer;->_valueDeserializer:Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonDeserializer;

    return-void
.end method
