.class public Lcom/amazon/org/codehaus/jackson/map/ser/impl/UnwrappingBeanSerializer;
.super Lcom/amazon/org/codehaus/jackson/map/ser/std/BeanSerializerBase;
.source "UnwrappingBeanSerializer.java"


# direct methods
.method public constructor <init>(Lcom/amazon/org/codehaus/jackson/map/ser/std/BeanSerializerBase;)V
    .locals 0

    .line 25
    invoke-direct {p0, p1}, Lcom/amazon/org/codehaus/jackson/map/ser/std/BeanSerializerBase;-><init>(Lcom/amazon/org/codehaus/jackson/map/ser/std/BeanSerializerBase;)V

    return-void
.end method


# virtual methods
.method public isUnwrappingSerializer()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final serialize(Ljava/lang/Object;Lcom/amazon/org/codehaus/jackson/JsonGenerator;Lcom/amazon/org/codehaus/jackson/map/SerializerProvider;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/org/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    .line 60
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/ser/std/BeanSerializerBase;->_propertyFilterId:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 61
    invoke-virtual {p0, p1, p2, p3}, Lcom/amazon/org/codehaus/jackson/map/ser/std/BeanSerializerBase;->serializeFieldsFiltered(Ljava/lang/Object;Lcom/amazon/org/codehaus/jackson/JsonGenerator;Lcom/amazon/org/codehaus/jackson/map/SerializerProvider;)V

    goto :goto_0

    .line 63
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/amazon/org/codehaus/jackson/map/ser/std/BeanSerializerBase;->serializeFields(Ljava/lang/Object;Lcom/amazon/org/codehaus/jackson/JsonGenerator;Lcom/amazon/org/codehaus/jackson/map/SerializerProvider;)V

    :goto_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 74
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UnwrappingBeanSerializer for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazon/org/codehaus/jackson/map/ser/std/SerializerBase;->handledType()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public unwrappingSerializer()Lcom/amazon/org/codehaus/jackson/map/JsonSerializer;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/amazon/org/codehaus/jackson/map/JsonSerializer<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    return-object p0
.end method
