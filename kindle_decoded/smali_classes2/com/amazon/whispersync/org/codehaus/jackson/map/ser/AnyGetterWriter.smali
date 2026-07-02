.class public Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/AnyGetterWriter;
.super Ljava/lang/Object;
.source "AnyGetterWriter.java"


# instance fields
.field protected final _anyGetter:Ljava/lang/reflect/Method;

.field protected final _serializer:Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/std/MapSerializer;


# direct methods
.method public constructor <init>(Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/AnnotatedMethod;Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/std/MapSerializer;)V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    invoke-virtual {p1}, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/AnnotatedMethod;->getAnnotated()Ljava/lang/reflect/Method;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/AnyGetterWriter;->_anyGetter:Ljava/lang/reflect/Method;

    .line 27
    iput-object p2, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/AnyGetterWriter;->_serializer:Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/std/MapSerializer;

    return-void
.end method


# virtual methods
.method public getAndSerialize(Ljava/lang/Object;Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerator;Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializerProvider;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 33
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/AnyGetterWriter;->_anyGetter:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 37
    :cond_0
    instance-of v0, p1, Ljava/util/Map;

    if-eqz v0, :cond_1

    .line 41
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/AnyGetterWriter;->_serializer:Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/std/MapSerializer;

    check-cast p1, Ljava/util/Map;

    invoke-virtual {v0, p1, p2, p3}, Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/std/MapSerializer;->serializeFields(Ljava/util/Map;Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerator;Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializerProvider;)V

    return-void

    .line 38
    :cond_1
    new-instance p2, Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonMappingException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Value returned by \'any-getter\' ("

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/AnyGetterWriter;->_anyGetter:Ljava/lang/reflect/Method;

    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "()) not java.util.Map but "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonMappingException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public resolve(Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializerProvider;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonMappingException;
        }
    .end annotation

    .line 46
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/AnyGetterWriter;->_serializer:Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/std/MapSerializer;

    invoke-virtual {v0, p1}, Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/std/MapSerializer;->resolve(Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializerProvider;)V

    return-void
.end method
