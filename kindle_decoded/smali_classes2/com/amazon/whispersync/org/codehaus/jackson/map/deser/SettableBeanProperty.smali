.class public abstract Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/SettableBeanProperty;
.super Ljava/lang/Object;
.source "SettableBeanProperty.java"

# interfaces
.implements Lcom/amazon/whispersync/org/codehaus/jackson/map/BeanProperty;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/SettableBeanProperty$NullProvider;,
        Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/SettableBeanProperty$InnerClassProperty;,
        Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/SettableBeanProperty$ManagedReferenceProperty;,
        Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/SettableBeanProperty$FieldProperty;,
        Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/SettableBeanProperty$SetterlessProperty;,
        Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/SettableBeanProperty$MethodProperty;
    }
.end annotation


# instance fields
.field protected final _contextAnnotations:Lcom/amazon/whispersync/org/codehaus/jackson/map/util/Annotations;

.field protected _managedReferenceName:Ljava/lang/String;

.field protected _nullProvider:Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/SettableBeanProperty$NullProvider;

.field protected final _propName:Ljava/lang/String;

.field protected _propertyIndex:I

.field protected final _type:Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;

.field protected _valueDeserializer:Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonDeserializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonDeserializer<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field protected _valueTypeDeserializer:Lcom/amazon/whispersync/org/codehaus/jackson/map/TypeDeserializer;


# direct methods
.method protected constructor <init>(Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/SettableBeanProperty;)V
    .locals 1

    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 81
    iput v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/SettableBeanProperty;->_propertyIndex:I

    .line 113
    iget-object v0, p1, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/SettableBeanProperty;->_propName:Ljava/lang/String;

    iput-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/SettableBeanProperty;->_propName:Ljava/lang/String;

    .line 114
    iget-object v0, p1, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/SettableBeanProperty;->_type:Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;

    iput-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/SettableBeanProperty;->_type:Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;

    .line 115
    iget-object v0, p1, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/SettableBeanProperty;->_contextAnnotations:Lcom/amazon/whispersync/org/codehaus/jackson/map/util/Annotations;

    iput-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/SettableBeanProperty;->_contextAnnotations:Lcom/amazon/whispersync/org/codehaus/jackson/map/util/Annotations;

    .line 116
    iget-object v0, p1, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/SettableBeanProperty;->_valueDeserializer:Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonDeserializer;

    iput-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/SettableBeanProperty;->_valueDeserializer:Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonDeserializer;

    .line 117
    iget-object v0, p1, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/SettableBeanProperty;->_valueTypeDeserializer:Lcom/amazon/whispersync/org/codehaus/jackson/map/TypeDeserializer;

    iput-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/SettableBeanProperty;->_valueTypeDeserializer:Lcom/amazon/whispersync/org/codehaus/jackson/map/TypeDeserializer;

    .line 118
    iget-object v0, p1, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/SettableBeanProperty;->_nullProvider:Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/SettableBeanProperty$NullProvider;

    iput-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/SettableBeanProperty;->_nullProvider:Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/SettableBeanProperty$NullProvider;

    .line 119
    iget-object v0, p1, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/SettableBeanProperty;->_managedReferenceName:Ljava/lang/String;

    iput-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/SettableBeanProperty;->_managedReferenceName:Ljava/lang/String;

    .line 120
    iget p1, p1, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/SettableBeanProperty;->_propertyIndex:I

    iput p1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/SettableBeanProperty;->_propertyIndex:I

    return-void
.end method

.method protected constructor <init>(Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/SettableBeanProperty;Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonDeserializer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/SettableBeanProperty;",
            "Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonDeserializer<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 129
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 81
    iput v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/SettableBeanProperty;->_propertyIndex:I

    .line 130
    iget-object v0, p1, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/SettableBeanProperty;->_propName:Ljava/lang/String;

    iput-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/SettableBeanProperty;->_propName:Ljava/lang/String;

    .line 131
    iget-object v0, p1, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/SettableBeanProperty;->_type:Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;

    iput-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/SettableBeanProperty;->_type:Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;

    .line 132
    iget-object v0, p1, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/SettableBeanProperty;->_contextAnnotations:Lcom/amazon/whispersync/org/codehaus/jackson/map/util/Annotations;

    iput-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/SettableBeanProperty;->_contextAnnotations:Lcom/amazon/whispersync/org/codehaus/jackson/map/util/Annotations;

    .line 133
    iget-object v0, p1, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/SettableBeanProperty;->_valueTypeDeserializer:Lcom/amazon/whispersync/org/codehaus/jackson/map/TypeDeserializer;

    iput-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/SettableBeanProperty;->_valueTypeDeserializer:Lcom/amazon/whispersync/org/codehaus/jackson/map/TypeDeserializer;

    .line 134
    iget-object v0, p1, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/SettableBeanProperty;->_managedReferenceName:Ljava/lang/String;

    iput-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/SettableBeanProperty;->_managedReferenceName:Ljava/lang/String;

    .line 135
    iget p1, p1, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/SettableBeanProperty;->_propertyIndex:I

    iput p1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/SettableBeanProperty;->_propertyIndex:I

    .line 137
    iput-object p2, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/SettableBeanProperty;->_valueDeserializer:Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonDeserializer;

    const/4 p1, 0x0

    if-nez p2, :cond_0

    .line 139
    iput-object p1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/SettableBeanProperty;->_nullProvider:Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/SettableBeanProperty$NullProvider;

    goto :goto_1

    .line 141
    :cond_0
    invoke-virtual {p2}, Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonDeserializer;->getNullValue()Ljava/lang/Object;

    move-result-object p2

    if-nez p2, :cond_1

    goto :goto_0

    .line 142
    :cond_1
    new-instance p1, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/SettableBeanProperty$NullProvider;

    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/SettableBeanProperty;->_type:Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;

    invoke-direct {p1, v0, p2}, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/SettableBeanProperty$NullProvider;-><init>(Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;Ljava/lang/Object;)V

    :goto_0
    iput-object p1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/SettableBeanProperty;->_nullProvider:Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/SettableBeanProperty$NullProvider;

    :goto_1
    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;Lcom/amazon/whispersync/org/codehaus/jackson/map/TypeDeserializer;Lcom/amazon/whispersync/org/codehaus/jackson/map/util/Annotations;)V
    .locals 1

    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 81
    iput v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/SettableBeanProperty;->_propertyIndex:I

    if-eqz p1, :cond_1

    .line 96
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 99
    :cond_0
    sget-object v0, Lcom/amazon/whispersync/org/codehaus/jackson/util/InternCache;->instance:Lcom/amazon/whispersync/org/codehaus/jackson/util/InternCache;

    invoke-virtual {v0, p1}, Lcom/amazon/whispersync/org/codehaus/jackson/util/InternCache;->intern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/SettableBeanProperty;->_propName:Ljava/lang/String;

    goto :goto_1

    :cond_1
    :goto_0
    const-string p1, ""

    .line 97
    iput-object p1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/SettableBeanProperty;->_propName:Ljava/lang/String;

    .line 101
    :goto_1
    iput-object p2, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/SettableBeanProperty;->_type:Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;

    .line 102
    iput-object p4, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/SettableBeanProperty;->_contextAnnotations:Lcom/amazon/whispersync/org/codehaus/jackson/map/util/Annotations;

    .line 103
    iput-object p3, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/SettableBeanProperty;->_valueTypeDeserializer:Lcom/amazon/whispersync/org/codehaus/jackson/map/TypeDeserializer;

    return-void
.end method


# virtual methods
.method protected _throwAsIOE(Ljava/lang/Exception;)Ljava/io/IOException;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 334
    instance-of v0, p1, Ljava/io/IOException;

    if-nez v0, :cond_2

    .line 337
    instance-of v0, p1, Ljava/lang/RuntimeException;

    if-nez v0, :cond_1

    .line 342
    :goto_0
    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 343
    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    goto :goto_0

    .line 345
    :cond_0
    new-instance v0, Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonMappingException;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, p1}, Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonMappingException;-><init>(Ljava/lang/String;Lcom/amazon/whispersync/org/codehaus/jackson/JsonLocation;Ljava/lang/Throwable;)V

    throw v0

    .line 338
    :cond_1
    check-cast p1, Ljava/lang/RuntimeException;

    throw p1

    .line 335
    :cond_2
    check-cast p1, Ljava/io/IOException;

    throw p1
.end method

.method protected _throwAsIOE(Ljava/lang/Exception;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 315
    instance-of v0, p1, Ljava/lang/IllegalArgumentException;

    if-eqz v0, :cond_2

    if-nez p2, :cond_0

    const-string p2, "[NULL]"

    goto :goto_0

    .line 316
    :cond_0
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    .line 317
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Problem deserializing property \'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/SettableBeanProperty;->getPropertyName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\' (expected type: "

    .line 318
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/SettableBeanProperty;->getType()Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "; actual type: "

    .line 319
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ")"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 320
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_1

    const-string v1, ", problem: "

    .line 322
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_1
    const-string p2, " (no error message provided)"

    .line 324
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 326
    :goto_1
    new-instance p2, Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonMappingException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p2, v0, v1, p1}, Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonMappingException;-><init>(Ljava/lang/String;Lcom/amazon/whispersync/org/codehaus/jackson/JsonLocation;Ljava/lang/Throwable;)V

    throw p2

    .line 328
    :cond_2
    invoke-virtual {p0, p1}, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/SettableBeanProperty;->_throwAsIOE(Ljava/lang/Exception;)Ljava/io/IOException;

    return-void
.end method

.method public assignIndex(I)V
    .locals 3

    .line 172
    iget v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/SettableBeanProperty;->_propertyIndex:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 175
    iput p1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/SettableBeanProperty;->_propertyIndex:I

    return-void

    .line 173
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Property \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/SettableBeanProperty;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\' already had index ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/SettableBeanProperty;->_propertyIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "), trying to assign "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final deserialize(Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser;Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializationContext;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/whispersync/org/codehaus/jackson/JsonProcessingException;
        }
    .end annotation

    .line 292
    invoke-virtual {p1}, Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser;->getCurrentToken()Lcom/amazon/whispersync/org/codehaus/jackson/JsonToken;

    move-result-object v0

    .line 293
    sget-object v1, Lcom/amazon/whispersync/org/codehaus/jackson/JsonToken;->VALUE_NULL:Lcom/amazon/whispersync/org/codehaus/jackson/JsonToken;

    if-ne v0, v1, :cond_1

    .line 294
    iget-object p1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/SettableBeanProperty;->_nullProvider:Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/SettableBeanProperty$NullProvider;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p1, p2}, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/SettableBeanProperty$NullProvider;->nullValue(Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializationContext;)Ljava/lang/Object;

    move-result-object p1

    :goto_0
    return-object p1

    .line 296
    :cond_1
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/SettableBeanProperty;->_valueTypeDeserializer:Lcom/amazon/whispersync/org/codehaus/jackson/map/TypeDeserializer;

    if-eqz v0, :cond_2

    .line 297
    iget-object v1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/SettableBeanProperty;->_valueDeserializer:Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonDeserializer;

    invoke-virtual {v1, p1, p2, v0}, Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonDeserializer;->deserializeWithType(Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser;Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializationContext;Lcom/amazon/whispersync/org/codehaus/jackson/map/TypeDeserializer;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 299
    :cond_2
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/SettableBeanProperty;->_valueDeserializer:Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonDeserializer;

    invoke-virtual {v0, p1, p2}, Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonDeserializer;->deserialize(Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser;Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializationContext;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public abstract deserializeAndSet(Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser;Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializationContext;Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/whispersync/org/codehaus/jackson/JsonProcessingException;
        }
    .end annotation
.end method

.method public abstract getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A::",
            "Ljava/lang/annotation/Annotation;",
            ">(",
            "Ljava/lang/Class<",
            "TA;>;)TA;"
        }
    .end annotation
.end method

.method public getContextAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A::",
            "Ljava/lang/annotation/Annotation;",
            ">(",
            "Ljava/lang/Class<",
            "TA;>;)TA;"
        }
    .end annotation

    .line 198
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/SettableBeanProperty;->_contextAnnotations:Lcom/amazon/whispersync/org/codehaus/jackson/map/util/Annotations;

    invoke-interface {v0, p1}, Lcom/amazon/whispersync/org/codehaus/jackson/map/util/Annotations;->get(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object p1

    return-object p1
.end method

.method protected final getDeclaringClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 208
    invoke-virtual {p0}, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/SettableBeanProperty;->getMember()Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/AnnotatedMember;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/AnnotatedMember;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public getInjectableValueId()Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getManagedReferenceName()Ljava/lang/String;
    .locals 1

    .line 217
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/SettableBeanProperty;->_managedReferenceName:Ljava/lang/String;

    return-object v0
.end method

.method public abstract getMember()Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/AnnotatedMember;
.end method

.method public final getName()Ljava/lang/String;
    .locals 1

    .line 185
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/SettableBeanProperty;->_propName:Ljava/lang/String;

    return-object v0
.end method

.method public getPropertyIndex()I
    .locals 1

    .line 245
    iget v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/SettableBeanProperty;->_propertyIndex:I

    return v0
.end method

.method public getPropertyName()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 215
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/SettableBeanProperty;->_propName:Ljava/lang/String;

    return-object v0
.end method

.method public getProperytIndex()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 251
    invoke-virtual {p0}, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/SettableBeanProperty;->getPropertyIndex()I

    move-result v0

    return v0
.end method

.method public getType()Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;
    .locals 1

    .line 188
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/SettableBeanProperty;->_type:Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;

    return-object v0
.end method

.method public getValueDeserializer()Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonDeserializer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonDeserializer<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 229
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/SettableBeanProperty;->_valueDeserializer:Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonDeserializer;

    return-object v0
.end method

.method public getValueTypeDeserializer()Lcom/amazon/whispersync/org/codehaus/jackson/map/TypeDeserializer;
    .locals 1

    .line 234
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/SettableBeanProperty;->_valueTypeDeserializer:Lcom/amazon/whispersync/org/codehaus/jackson/map/TypeDeserializer;

    return-object v0
.end method

.method public hasValueDeserializer()Z
    .locals 1

    .line 219
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/SettableBeanProperty;->_valueDeserializer:Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonDeserializer;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasValueTypeDeserializer()Z
    .locals 1

    .line 224
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/SettableBeanProperty;->_valueTypeDeserializer:Lcom/amazon/whispersync/org/codehaus/jackson/map/TypeDeserializer;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public abstract set(Ljava/lang/Object;Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public setManagedReferenceName(Ljava/lang/String;)V
    .locals 0

    .line 163
    iput-object p1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/SettableBeanProperty;->_managedReferenceName:Ljava/lang/String;

    return-void
.end method

.method public setValueDeserializer(Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonDeserializer;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonDeserializer<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 149
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/SettableBeanProperty;->_valueDeserializer:Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonDeserializer;

    if-nez v0, :cond_1

    .line 152
    iput-object p1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/SettableBeanProperty;->_valueDeserializer:Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonDeserializer;

    .line 153
    invoke-virtual {p1}, Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonDeserializer;->getNullValue()Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 154
    :cond_0
    new-instance v0, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/SettableBeanProperty$NullProvider;

    iget-object v1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/SettableBeanProperty;->_type:Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;

    invoke-direct {v0, v1, p1}, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/SettableBeanProperty$NullProvider;-><init>(Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;Ljava/lang/Object;)V

    move-object p1, v0

    :goto_0
    iput-object p1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/SettableBeanProperty;->_nullProvider:Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/SettableBeanProperty$NullProvider;

    return-void

    .line 150
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Already had assigned deserializer for property \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/SettableBeanProperty;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\' (class "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/SettableBeanProperty;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 348
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[property \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/SettableBeanProperty;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\']"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public abstract withValueDeserializer(Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonDeserializer;)Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/SettableBeanProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonDeserializer<",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/SettableBeanProperty;"
        }
    .end annotation
.end method
