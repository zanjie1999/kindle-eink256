.class public Lcom/amazon/org/codehaus/jackson/map/deser/StdDeserializationContext;
.super Lcom/amazon/org/codehaus/jackson/map/DeserializationContext;
.source "StdDeserializationContext.java"


# static fields
.field static final MAX_ERROR_STR_LEN:I = 0x1f4


# instance fields
.field protected _arrayBuilders:Lcom/amazon/org/codehaus/jackson/map/util/ArrayBuilders;

.field protected _dateFormat:Ljava/text/DateFormat;

.field protected final _deserProvider:Lcom/amazon/org/codehaus/jackson/map/DeserializerProvider;

.field protected final _injectableValues:Lcom/amazon/org/codehaus/jackson/map/InjectableValues;

.field protected _objectBuffer:Lcom/amazon/org/codehaus/jackson/map/util/ObjectBuffer;

.field protected _parser:Lcom/amazon/org/codehaus/jackson/JsonParser;


# direct methods
.method public constructor <init>(Lcom/amazon/org/codehaus/jackson/map/DeserializationConfig;Lcom/amazon/org/codehaus/jackson/JsonParser;Lcom/amazon/org/codehaus/jackson/map/DeserializerProvider;Lcom/amazon/org/codehaus/jackson/map/InjectableValues;)V
    .locals 0

    .line 68
    invoke-direct {p0, p1}, Lcom/amazon/org/codehaus/jackson/map/DeserializationContext;-><init>(Lcom/amazon/org/codehaus/jackson/map/DeserializationConfig;)V

    .line 69
    iput-object p2, p0, Lcom/amazon/org/codehaus/jackson/map/deser/StdDeserializationContext;->_parser:Lcom/amazon/org/codehaus/jackson/JsonParser;

    .line 70
    iput-object p3, p0, Lcom/amazon/org/codehaus/jackson/map/deser/StdDeserializationContext;->_deserProvider:Lcom/amazon/org/codehaus/jackson/map/DeserializerProvider;

    .line 71
    iput-object p4, p0, Lcom/amazon/org/codehaus/jackson/map/deser/StdDeserializationContext;->_injectableValues:Lcom/amazon/org/codehaus/jackson/map/InjectableValues;

    return-void
.end method


# virtual methods
.method protected _calcName(Ljava/lang/Class;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 304
    invoke-virtual {p1}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 305
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/amazon/org/codehaus/jackson/map/deser/StdDeserializationContext;->_calcName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "[]"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 307
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected _desc(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 321
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x1f4

    if-le v0, v1, :cond_0

    .line 322
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "]...["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v2, v1

    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_0
    return-object p1
.end method

.method protected _valueDesc()Ljava/lang/String;
    .locals 1

    .line 313
    :try_start_0
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/deser/StdDeserializationContext;->_parser:Lcom/amazon/org/codehaus/jackson/JsonParser;

    invoke-virtual {v0}, Lcom/amazon/org/codehaus/jackson/JsonParser;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/amazon/org/codehaus/jackson/map/deser/StdDeserializationContext;->_desc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    const-string v0, "[N/A]"

    return-object v0
.end method

.method public constructCalendar(Ljava/util/Date;)Ljava/util/Calendar;
    .locals 1

    .line 168
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 169
    invoke-virtual {v0, p1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    return-object v0
.end method

.method protected determineClassName(Ljava/lang/Object;)Ljava/lang/String;
    .locals 0

    .line 293
    invoke-static {p1}, Lcom/amazon/org/codehaus/jackson/map/util/ClassUtil;->getClassDescription(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public findInjectableValue(Ljava/lang/Object;Lcom/amazon/org/codehaus/jackson/map/BeanProperty;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 100
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/deser/StdDeserializationContext;->_injectableValues:Lcom/amazon/org/codehaus/jackson/map/InjectableValues;

    if-eqz v0, :cond_0

    .line 103
    invoke-virtual {v0, p1, p0, p2, p3}, Lcom/amazon/org/codehaus/jackson/map/InjectableValues;->findInjectableValue(Ljava/lang/Object;Lcom/amazon/org/codehaus/jackson/map/DeserializationContext;Lcom/amazon/org/codehaus/jackson/map/BeanProperty;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 101
    :cond_0
    new-instance p2, Ljava/lang/IllegalStateException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "No \'injectableValues\' configured, can not inject value with id ["

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "]"

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public final getArrayBuilders()Lcom/amazon/org/codehaus/jackson/map/util/ArrayBuilders;
    .locals 1

    .line 139
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/deser/StdDeserializationContext;->_arrayBuilders:Lcom/amazon/org/codehaus/jackson/map/util/ArrayBuilders;

    if-nez v0, :cond_0

    .line 140
    new-instance v0, Lcom/amazon/org/codehaus/jackson/map/util/ArrayBuilders;

    invoke-direct {v0}, Lcom/amazon/org/codehaus/jackson/map/util/ArrayBuilders;-><init>()V

    iput-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/deser/StdDeserializationContext;->_arrayBuilders:Lcom/amazon/org/codehaus/jackson/map/util/ArrayBuilders;

    .line 142
    :cond_0
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/deser/StdDeserializationContext;->_arrayBuilders:Lcom/amazon/org/codehaus/jackson/map/util/ArrayBuilders;

    return-object v0
.end method

.method protected getDateFormat()Ljava/text/DateFormat;
    .locals 1

    .line 284
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/deser/StdDeserializationContext;->_dateFormat:Ljava/text/DateFormat;

    if-nez v0, :cond_0

    .line 286
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/DeserializationContext;->_config:Lcom/amazon/org/codehaus/jackson/map/DeserializationConfig;

    invoke-virtual {v0}, Lcom/amazon/org/codehaus/jackson/map/MapperConfig;->getDateFormat()Ljava/text/DateFormat;

    move-result-object v0

    invoke-virtual {v0}, Ljava/text/DateFormat;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/text/DateFormat;

    iput-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/deser/StdDeserializationContext;->_dateFormat:Ljava/text/DateFormat;

    .line 288
    :cond_0
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/deser/StdDeserializationContext;->_dateFormat:Ljava/text/DateFormat;

    return-object v0
.end method

.method public getDeserializerProvider()Lcom/amazon/org/codehaus/jackson/map/DeserializerProvider;
    .locals 1

    .line 82
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/deser/StdDeserializationContext;->_deserProvider:Lcom/amazon/org/codehaus/jackson/map/DeserializerProvider;

    return-object v0
.end method

.method public getParser()Lcom/amazon/org/codehaus/jackson/JsonParser;
    .locals 1

    .line 94
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/deser/StdDeserializationContext;->_parser:Lcom/amazon/org/codehaus/jackson/JsonParser;

    return-object v0
.end method

.method public handleUnknownProperty(Lcom/amazon/org/codehaus/jackson/JsonParser;Lcom/amazon/org/codehaus/jackson/map/JsonDeserializer;Ljava/lang/Object;Ljava/lang/String;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/org/codehaus/jackson/JsonParser;",
            "Lcom/amazon/org/codehaus/jackson/map/JsonDeserializer<",
            "*>;",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/org/codehaus/jackson/JsonProcessingException;
        }
    .end annotation

    .line 188
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/DeserializationContext;->_config:Lcom/amazon/org/codehaus/jackson/map/DeserializationConfig;

    invoke-virtual {v0}, Lcom/amazon/org/codehaus/jackson/map/DeserializationConfig;->getProblemHandlers()Lcom/amazon/org/codehaus/jackson/map/util/LinkedNode;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 193
    iget-object v1, p0, Lcom/amazon/org/codehaus/jackson/map/deser/StdDeserializationContext;->_parser:Lcom/amazon/org/codehaus/jackson/JsonParser;

    .line 194
    iput-object p1, p0, Lcom/amazon/org/codehaus/jackson/map/deser/StdDeserializationContext;->_parser:Lcom/amazon/org/codehaus/jackson/JsonParser;

    :goto_0
    if-eqz v0, :cond_1

    .line 198
    :try_start_0
    invoke-virtual {v0}, Lcom/amazon/org/codehaus/jackson/map/util/LinkedNode;->value()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/org/codehaus/jackson/map/DeserializationProblemHandler;

    invoke-virtual {p1, p0, p2, p3, p4}, Lcom/amazon/org/codehaus/jackson/map/DeserializationProblemHandler;->handleUnknownProperty(Lcom/amazon/org/codehaus/jackson/map/DeserializationContext;Lcom/amazon/org/codehaus/jackson/map/JsonDeserializer;Ljava/lang/Object;Ljava/lang/String;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 204
    iput-object v1, p0, Lcom/amazon/org/codehaus/jackson/map/deser/StdDeserializationContext;->_parser:Lcom/amazon/org/codehaus/jackson/JsonParser;

    return p1

    .line 201
    :cond_0
    :try_start_1
    invoke-virtual {v0}, Lcom/amazon/org/codehaus/jackson/map/util/LinkedNode;->next()Lcom/amazon/org/codehaus/jackson/map/util/LinkedNode;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 204
    iput-object v1, p0, Lcom/amazon/org/codehaus/jackson/map/deser/StdDeserializationContext;->_parser:Lcom/amazon/org/codehaus/jackson/JsonParser;

    throw p1

    :cond_1
    iput-object v1, p0, Lcom/amazon/org/codehaus/jackson/map/deser/StdDeserializationContext;->_parser:Lcom/amazon/org/codehaus/jackson/JsonParser;

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method public instantiationException(Ljava/lang/Class;Ljava/lang/String;)Lcom/amazon/org/codehaus/jackson/map/JsonMappingException;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            ")",
            "Lcom/amazon/org/codehaus/jackson/map/JsonMappingException;"
        }
    .end annotation

    .line 233
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/deser/StdDeserializationContext;->_parser:Lcom/amazon/org/codehaus/jackson/JsonParser;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can not construct instance of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", problem: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/amazon/org/codehaus/jackson/map/JsonMappingException;->from(Lcom/amazon/org/codehaus/jackson/JsonParser;Ljava/lang/String;)Lcom/amazon/org/codehaus/jackson/map/JsonMappingException;

    move-result-object p1

    return-object p1
.end method

.method public instantiationException(Ljava/lang/Class;Ljava/lang/Throwable;)Lcom/amazon/org/codehaus/jackson/map/JsonMappingException;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Throwable;",
            ")",
            "Lcom/amazon/org/codehaus/jackson/map/JsonMappingException;"
        }
    .end annotation

    .line 225
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/deser/StdDeserializationContext;->_parser:Lcom/amazon/org/codehaus/jackson/JsonParser;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can not construct instance of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", problem: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1, p2}, Lcom/amazon/org/codehaus/jackson/map/JsonMappingException;->from(Lcom/amazon/org/codehaus/jackson/JsonParser;Ljava/lang/String;Ljava/lang/Throwable;)Lcom/amazon/org/codehaus/jackson/map/JsonMappingException;

    move-result-object p1

    return-object p1
.end method

.method public final leaseObjectBuffer()Lcom/amazon/org/codehaus/jackson/map/util/ObjectBuffer;
    .locals 2

    .line 115
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/deser/StdDeserializationContext;->_objectBuffer:Lcom/amazon/org/codehaus/jackson/map/util/ObjectBuffer;

    if-nez v0, :cond_0

    .line 117
    new-instance v0, Lcom/amazon/org/codehaus/jackson/map/util/ObjectBuffer;

    invoke-direct {v0}, Lcom/amazon/org/codehaus/jackson/map/util/ObjectBuffer;-><init>()V

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 119
    iput-object v1, p0, Lcom/amazon/org/codehaus/jackson/map/deser/StdDeserializationContext;->_objectBuffer:Lcom/amazon/org/codehaus/jackson/map/util/ObjectBuffer;

    :goto_0
    return-object v0
.end method

.method public mappingException(Ljava/lang/Class;)Lcom/amazon/org/codehaus/jackson/map/JsonMappingException;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lcom/amazon/org/codehaus/jackson/map/JsonMappingException;"
        }
    .end annotation

    .line 212
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/deser/StdDeserializationContext;->_parser:Lcom/amazon/org/codehaus/jackson/JsonParser;

    invoke-virtual {v0}, Lcom/amazon/org/codehaus/jackson/JsonParser;->getCurrentToken()Lcom/amazon/org/codehaus/jackson/JsonToken;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/amazon/org/codehaus/jackson/map/deser/StdDeserializationContext;->mappingException(Ljava/lang/Class;Lcom/amazon/org/codehaus/jackson/JsonToken;)Lcom/amazon/org/codehaus/jackson/map/JsonMappingException;

    move-result-object p1

    return-object p1
.end method

.method public mappingException(Ljava/lang/Class;Lcom/amazon/org/codehaus/jackson/JsonToken;)Lcom/amazon/org/codehaus/jackson/map/JsonMappingException;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/amazon/org/codehaus/jackson/JsonToken;",
            ")",
            "Lcom/amazon/org/codehaus/jackson/map/JsonMappingException;"
        }
    .end annotation

    .line 218
    invoke-virtual {p0, p1}, Lcom/amazon/org/codehaus/jackson/map/deser/StdDeserializationContext;->_calcName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object p1

    .line 219
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/deser/StdDeserializationContext;->_parser:Lcom/amazon/org/codehaus/jackson/JsonParser;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can not deserialize instance of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " out of "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " token"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/amazon/org/codehaus/jackson/map/JsonMappingException;->from(Lcom/amazon/org/codehaus/jackson/JsonParser;Ljava/lang/String;)Lcom/amazon/org/codehaus/jackson/map/JsonMappingException;

    move-result-object p1

    return-object p1
.end method

.method public parseDate(Ljava/lang/String;)Ljava/util/Date;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 156
    :try_start_0
    invoke-virtual {p0}, Lcom/amazon/org/codehaus/jackson/map/deser/StdDeserializationContext;->getDateFormat()Ljava/text/DateFormat;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p1
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 158
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/text/ParseException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final returnObjectBuffer(Lcom/amazon/org/codehaus/jackson/map/util/ObjectBuffer;)V
    .locals 2

    .line 130
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/deser/StdDeserializationContext;->_objectBuffer:Lcom/amazon/org/codehaus/jackson/map/util/ObjectBuffer;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/amazon/org/codehaus/jackson/map/util/ObjectBuffer;->initialCapacity()I

    move-result v0

    iget-object v1, p0, Lcom/amazon/org/codehaus/jackson/map/deser/StdDeserializationContext;->_objectBuffer:Lcom/amazon/org/codehaus/jackson/map/util/ObjectBuffer;

    invoke-virtual {v1}, Lcom/amazon/org/codehaus/jackson/map/util/ObjectBuffer;->initialCapacity()I

    move-result v1

    if-lt v0, v1, :cond_1

    .line 132
    :cond_0
    iput-object p1, p0, Lcom/amazon/org/codehaus/jackson/map/deser/StdDeserializationContext;->_objectBuffer:Lcom/amazon/org/codehaus/jackson/map/util/ObjectBuffer;

    :cond_1
    return-void
.end method

.method public unknownFieldException(Ljava/lang/Object;Ljava/lang/String;)Lcom/amazon/org/codehaus/jackson/map/JsonMappingException;
    .locals 1

    .line 267
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/deser/StdDeserializationContext;->_parser:Lcom/amazon/org/codehaus/jackson/JsonParser;

    invoke-static {v0, p1, p2}, Lcom/amazon/org/codehaus/jackson/map/exc/UnrecognizedPropertyException;->from(Lcom/amazon/org/codehaus/jackson/JsonParser;Ljava/lang/Object;Ljava/lang/String;)Lcom/amazon/org/codehaus/jackson/map/exc/UnrecognizedPropertyException;

    move-result-object p1

    return-object p1
.end method

.method public unknownTypeException(Lcom/amazon/org/codehaus/jackson/type/JavaType;Ljava/lang/String;)Lcom/amazon/org/codehaus/jackson/map/JsonMappingException;
    .locals 3

    .line 273
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/deser/StdDeserializationContext;->_parser:Lcom/amazon/org/codehaus/jackson/JsonParser;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not resolve type id \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "\' into a subtype of "

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/amazon/org/codehaus/jackson/map/JsonMappingException;->from(Lcom/amazon/org/codehaus/jackson/JsonParser;Ljava/lang/String;)Lcom/amazon/org/codehaus/jackson/map/JsonMappingException;

    move-result-object p1

    return-object p1
.end method

.method public weirdKeyException(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/org/codehaus/jackson/map/JsonMappingException;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/amazon/org/codehaus/jackson/map/JsonMappingException;"
        }
    .end annotation

    .line 255
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/deser/StdDeserializationContext;->_parser:Lcom/amazon/org/codehaus/jackson/JsonParser;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can not construct Map key of type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " from String \""

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Lcom/amazon/org/codehaus/jackson/map/deser/StdDeserializationContext;->_desc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\": "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/amazon/org/codehaus/jackson/map/JsonMappingException;->from(Lcom/amazon/org/codehaus/jackson/JsonParser;Ljava/lang/String;)Lcom/amazon/org/codehaus/jackson/map/JsonMappingException;

    move-result-object p1

    return-object p1
.end method

.method public weirdNumberException(Ljava/lang/Class;Ljava/lang/String;)Lcom/amazon/org/codehaus/jackson/map/JsonMappingException;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            ")",
            "Lcom/amazon/org/codehaus/jackson/map/JsonMappingException;"
        }
    .end annotation

    .line 249
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/deser/StdDeserializationContext;->_parser:Lcom/amazon/org/codehaus/jackson/JsonParser;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can not construct instance of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " from number value ("

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazon/org/codehaus/jackson/map/deser/StdDeserializationContext;->_valueDesc()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "): "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/amazon/org/codehaus/jackson/map/JsonMappingException;->from(Lcom/amazon/org/codehaus/jackson/JsonParser;Ljava/lang/String;)Lcom/amazon/org/codehaus/jackson/map/JsonMappingException;

    move-result-object p1

    return-object p1
.end method

.method public weirdStringException(Ljava/lang/Class;Ljava/lang/String;)Lcom/amazon/org/codehaus/jackson/map/JsonMappingException;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            ")",
            "Lcom/amazon/org/codehaus/jackson/map/JsonMappingException;"
        }
    .end annotation

    .line 243
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/deser/StdDeserializationContext;->_parser:Lcom/amazon/org/codehaus/jackson/JsonParser;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can not construct instance of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " from String value \'"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazon/org/codehaus/jackson/map/deser/StdDeserializationContext;->_valueDesc()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\': "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/amazon/org/codehaus/jackson/map/JsonMappingException;->from(Lcom/amazon/org/codehaus/jackson/JsonParser;Ljava/lang/String;)Lcom/amazon/org/codehaus/jackson/map/JsonMappingException;

    move-result-object p1

    return-object p1
.end method

.method public wrongTokenException(Lcom/amazon/org/codehaus/jackson/JsonParser;Lcom/amazon/org/codehaus/jackson/JsonToken;Ljava/lang/String;)Lcom/amazon/org/codehaus/jackson/map/JsonMappingException;
    .locals 2

    .line 261
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unexpected token ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/amazon/org/codehaus/jackson/JsonParser;->getCurrentToken()Lcom/amazon/org/codehaus/jackson/JsonToken;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "), expected "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, ": "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/amazon/org/codehaus/jackson/map/JsonMappingException;->from(Lcom/amazon/org/codehaus/jackson/JsonParser;Ljava/lang/String;)Lcom/amazon/org/codehaus/jackson/map/JsonMappingException;

    move-result-object p1

    return-object p1
.end method
