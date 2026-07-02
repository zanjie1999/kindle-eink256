.class public final Lcom/amazon/org/codehaus/jackson/map/deser/SettableAnyProperty;
.super Ljava/lang/Object;
.source "SettableAnyProperty.java"


# instance fields
.field protected final _property:Lcom/amazon/org/codehaus/jackson/map/BeanProperty;

.field protected final _setter:Ljava/lang/reflect/Method;

.field protected final _type:Lcom/amazon/org/codehaus/jackson/type/JavaType;

.field protected _valueDeserializer:Lcom/amazon/org/codehaus/jackson/map/JsonDeserializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/amazon/org/codehaus/jackson/map/JsonDeserializer<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/amazon/org/codehaus/jackson/map/BeanProperty;Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedMethod;Lcom/amazon/org/codehaus/jackson/type/JavaType;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    .line 52
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/amazon/org/codehaus/jackson/map/deser/SettableAnyProperty;-><init>(Lcom/amazon/org/codehaus/jackson/map/BeanProperty;Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedMethod;Lcom/amazon/org/codehaus/jackson/type/JavaType;Lcom/amazon/org/codehaus/jackson/map/JsonDeserializer;)V

    return-void
.end method

.method public constructor <init>(Lcom/amazon/org/codehaus/jackson/map/BeanProperty;Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedMethod;Lcom/amazon/org/codehaus/jackson/type/JavaType;Lcom/amazon/org/codehaus/jackson/map/JsonDeserializer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/org/codehaus/jackson/map/BeanProperty;",
            "Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedMethod;",
            "Lcom/amazon/org/codehaus/jackson/type/JavaType;",
            "Lcom/amazon/org/codehaus/jackson/map/JsonDeserializer<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 57
    invoke-virtual {p2}, Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedMethod;->getAnnotated()Ljava/lang/reflect/Method;

    move-result-object p2

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/amazon/org/codehaus/jackson/map/deser/SettableAnyProperty;-><init>(Lcom/amazon/org/codehaus/jackson/map/BeanProperty;Ljava/lang/reflect/Method;Lcom/amazon/org/codehaus/jackson/type/JavaType;Lcom/amazon/org/codehaus/jackson/map/JsonDeserializer;)V

    return-void
.end method

.method public constructor <init>(Lcom/amazon/org/codehaus/jackson/map/BeanProperty;Ljava/lang/reflect/Method;Lcom/amazon/org/codehaus/jackson/type/JavaType;Lcom/amazon/org/codehaus/jackson/map/JsonDeserializer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/org/codehaus/jackson/map/BeanProperty;",
            "Ljava/lang/reflect/Method;",
            "Lcom/amazon/org/codehaus/jackson/type/JavaType;",
            "Lcom/amazon/org/codehaus/jackson/map/JsonDeserializer<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    iput-object p1, p0, Lcom/amazon/org/codehaus/jackson/map/deser/SettableAnyProperty;->_property:Lcom/amazon/org/codehaus/jackson/map/BeanProperty;

    .line 63
    iput-object p3, p0, Lcom/amazon/org/codehaus/jackson/map/deser/SettableAnyProperty;->_type:Lcom/amazon/org/codehaus/jackson/type/JavaType;

    .line 64
    iput-object p2, p0, Lcom/amazon/org/codehaus/jackson/map/deser/SettableAnyProperty;->_setter:Ljava/lang/reflect/Method;

    .line 65
    iput-object p4, p0, Lcom/amazon/org/codehaus/jackson/map/deser/SettableAnyProperty;->_valueDeserializer:Lcom/amazon/org/codehaus/jackson/map/JsonDeserializer;

    return-void
.end method

.method private getClassName()Ljava/lang/String;
    .locals 1

    .line 174
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/deser/SettableAnyProperty;->_setter:Ljava/lang/reflect/Method;

    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected _throwAsIOE(Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 147
    instance-of v0, p1, Ljava/lang/IllegalArgumentException;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    if-nez p3, :cond_0

    const-string p3, "[NULL]"

    goto :goto_0

    .line 148
    :cond_0
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p3

    .line 149
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Problem deserializing \"any\" property \'"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 150
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\' of class "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/amazon/org/codehaus/jackson/map/deser/SettableAnyProperty;->getClassName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " (expected type: "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/amazon/org/codehaus/jackson/map/deser/SettableAnyProperty;->_type:Lcom/amazon/org/codehaus/jackson/type/JavaType;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, "; actual type: "

    .line 151
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ")"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 152
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_1

    const-string p3, ", problem: "

    .line 154
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_1
    const-string p2, " (no error message provided)"

    .line 156
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 158
    :goto_1
    new-instance p2, Lcom/amazon/org/codehaus/jackson/map/JsonMappingException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3, v1, p1}, Lcom/amazon/org/codehaus/jackson/map/JsonMappingException;-><init>(Ljava/lang/String;Lcom/amazon/org/codehaus/jackson/JsonLocation;Ljava/lang/Throwable;)V

    throw p2

    .line 160
    :cond_2
    instance-of p2, p1, Ljava/io/IOException;

    if-nez p2, :cond_5

    .line 163
    instance-of p2, p1, Ljava/lang/RuntimeException;

    if-nez p2, :cond_4

    .line 168
    :goto_2
    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p2

    if-eqz p2, :cond_3

    .line 169
    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    goto :goto_2

    .line 171
    :cond_3
    new-instance p2, Lcom/amazon/org/codehaus/jackson/map/JsonMappingException;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3, v1, p1}, Lcom/amazon/org/codehaus/jackson/map/JsonMappingException;-><init>(Ljava/lang/String;Lcom/amazon/org/codehaus/jackson/JsonLocation;Ljava/lang/Throwable;)V

    throw p2

    .line 164
    :cond_4
    check-cast p1, Ljava/lang/RuntimeException;

    throw p1

    .line 161
    :cond_5
    check-cast p1, Ljava/io/IOException;

    throw p1
.end method

.method public final deserialize(Lcom/amazon/org/codehaus/jackson/JsonParser;Lcom/amazon/org/codehaus/jackson/map/DeserializationContext;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/org/codehaus/jackson/JsonProcessingException;
        }
    .end annotation

    .line 116
    invoke-virtual {p1}, Lcom/amazon/org/codehaus/jackson/JsonParser;->getCurrentToken()Lcom/amazon/org/codehaus/jackson/JsonToken;

    move-result-object v0

    .line 117
    sget-object v1, Lcom/amazon/org/codehaus/jackson/JsonToken;->VALUE_NULL:Lcom/amazon/org/codehaus/jackson/JsonToken;

    if-ne v0, v1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 120
    :cond_0
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/deser/SettableAnyProperty;->_valueDeserializer:Lcom/amazon/org/codehaus/jackson/map/JsonDeserializer;

    invoke-virtual {v0, p1, p2}, Lcom/amazon/org/codehaus/jackson/map/JsonDeserializer;->deserialize(Lcom/amazon/org/codehaus/jackson/JsonParser;Lcom/amazon/org/codehaus/jackson/map/DeserializationContext;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final deserializeAndSet(Lcom/amazon/org/codehaus/jackson/JsonParser;Lcom/amazon/org/codehaus/jackson/map/DeserializationContext;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/org/codehaus/jackson/JsonProcessingException;
        }
    .end annotation

    .line 110
    invoke-virtual {p0, p1, p2}, Lcom/amazon/org/codehaus/jackson/map/deser/SettableAnyProperty;->deserialize(Lcom/amazon/org/codehaus/jackson/JsonParser;Lcom/amazon/org/codehaus/jackson/map/DeserializationContext;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p3, p4, p1}, Lcom/amazon/org/codehaus/jackson/map/deser/SettableAnyProperty;->set(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public getProperty()Lcom/amazon/org/codehaus/jackson/map/BeanProperty;
    .locals 1

    .line 90
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/deser/SettableAnyProperty;->_property:Lcom/amazon/org/codehaus/jackson/map/BeanProperty;

    return-object v0
.end method

.method public getType()Lcom/amazon/org/codehaus/jackson/type/JavaType;
    .locals 1

    .line 94
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/deser/SettableAnyProperty;->_type:Lcom/amazon/org/codehaus/jackson/type/JavaType;

    return-object v0
.end method

.method public hasValueDeserializer()Z
    .locals 1

    .line 92
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/deser/SettableAnyProperty;->_valueDeserializer:Lcom/amazon/org/codehaus/jackson/map/JsonDeserializer;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final set(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 127
    :try_start_0
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/deser/SettableAnyProperty;->_setter:Ljava/lang/reflect/Method;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    const/4 v2, 0x1

    aput-object p3, v1, v2

    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 129
    invoke-virtual {p0, p1, p2, p3}, Lcom/amazon/org/codehaus/jackson/map/deser/SettableAnyProperty;->_throwAsIOE(Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public setValueDeserializer(Lcom/amazon/org/codehaus/jackson/map/JsonDeserializer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/org/codehaus/jackson/map/JsonDeserializer<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 78
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/deser/SettableAnyProperty;->_valueDeserializer:Lcom/amazon/org/codehaus/jackson/map/JsonDeserializer;

    if-nez v0, :cond_0

    .line 81
    iput-object p1, p0, Lcom/amazon/org/codehaus/jackson/map/deser/SettableAnyProperty;->_valueDeserializer:Lcom/amazon/org/codehaus/jackson/map/JsonDeserializer;

    return-void

    .line 79
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Already had assigned deserializer for SettableAnyProperty"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 176
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[any property on class "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/amazon/org/codehaus/jackson/map/deser/SettableAnyProperty;->getClassName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public withValueDeserializer(Lcom/amazon/org/codehaus/jackson/map/JsonDeserializer;)Lcom/amazon/org/codehaus/jackson/map/deser/SettableAnyProperty;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/org/codehaus/jackson/map/JsonDeserializer<",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/amazon/org/codehaus/jackson/map/deser/SettableAnyProperty;"
        }
    .end annotation

    .line 69
    new-instance v0, Lcom/amazon/org/codehaus/jackson/map/deser/SettableAnyProperty;

    iget-object v1, p0, Lcom/amazon/org/codehaus/jackson/map/deser/SettableAnyProperty;->_property:Lcom/amazon/org/codehaus/jackson/map/BeanProperty;

    iget-object v2, p0, Lcom/amazon/org/codehaus/jackson/map/deser/SettableAnyProperty;->_setter:Ljava/lang/reflect/Method;

    iget-object v3, p0, Lcom/amazon/org/codehaus/jackson/map/deser/SettableAnyProperty;->_type:Lcom/amazon/org/codehaus/jackson/type/JavaType;

    invoke-direct {v0, v1, v2, v3, p1}, Lcom/amazon/org/codehaus/jackson/map/deser/SettableAnyProperty;-><init>(Lcom/amazon/org/codehaus/jackson/map/BeanProperty;Ljava/lang/reflect/Method;Lcom/amazon/org/codehaus/jackson/type/JavaType;Lcom/amazon/org/codehaus/jackson/map/JsonDeserializer;)V

    return-object v0
.end method
