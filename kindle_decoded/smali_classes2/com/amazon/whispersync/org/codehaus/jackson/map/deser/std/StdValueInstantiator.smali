.class public Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/std/StdValueInstantiator;
.super Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/ValueInstantiator;
.source "StdValueInstantiator.java"


# instance fields
.field protected final _cfgEmptyStringsAsObjects:Z

.field protected _constructorArguments:[Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/impl/CreatorProperty;

.field protected _defaultCreator:Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/AnnotatedWithParams;

.field protected _delegateCreator:Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/AnnotatedWithParams;

.field protected _delegateType:Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;

.field protected _fromBooleanCreator:Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/AnnotatedWithParams;

.field protected _fromDoubleCreator:Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/AnnotatedWithParams;

.field protected _fromIntCreator:Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/AnnotatedWithParams;

.field protected _fromLongCreator:Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/AnnotatedWithParams;

.field protected _fromStringCreator:Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/AnnotatedWithParams;

.field protected final _valueTypeDesc:Ljava/lang/String;

.field protected _withArgsCreator:Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/AnnotatedWithParams;


# direct methods
.method public constructor <init>(Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializationConfig;Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;)V
    .locals 1

    .line 76
    invoke-direct {p0}, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/ValueInstantiator;-><init>()V

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 77
    :cond_0
    sget-object v0, Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializationConfig$Feature;->ACCEPT_EMPTY_STRING_AS_NULL_OBJECT:Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializationConfig$Feature;

    invoke-virtual {p1, v0}, Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializationConfig;->isEnabled(Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializationConfig$Feature;)Z

    move-result p1

    :goto_0
    iput-boolean p1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/std/StdValueInstantiator;->_cfgEmptyStringsAsObjects:Z

    if-nez p2, :cond_1

    const-string p1, "UNKNOWN TYPE"

    goto :goto_1

    .line 79
    :cond_1
    invoke-virtual {p2}, Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_1
    iput-object p1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/std/StdValueInstantiator;->_valueTypeDesc:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializationConfig;Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializationConfig;",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 69
    invoke-direct {p0}, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/ValueInstantiator;-><init>()V

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 70
    :cond_0
    sget-object v0, Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializationConfig$Feature;->ACCEPT_EMPTY_STRING_AS_NULL_OBJECT:Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializationConfig$Feature;

    invoke-virtual {p1, v0}, Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializationConfig;->isEnabled(Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializationConfig$Feature;)Z

    move-result p1

    :goto_0
    iput-boolean p1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/std/StdValueInstantiator;->_cfgEmptyStringsAsObjects:Z

    if-nez p2, :cond_1

    const-string p1, "UNKNOWN TYPE"

    goto :goto_1

    .line 72
    :cond_1
    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    :goto_1
    iput-object p1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/std/StdValueInstantiator;->_valueTypeDesc:Ljava/lang/String;

    return-void
.end method

.method protected constructor <init>(Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/std/StdValueInstantiator;)V
    .locals 1

    .line 87
    invoke-direct {p0}, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/ValueInstantiator;-><init>()V

    .line 88
    iget-boolean v0, p1, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/std/StdValueInstantiator;->_cfgEmptyStringsAsObjects:Z

    iput-boolean v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/std/StdValueInstantiator;->_cfgEmptyStringsAsObjects:Z

    .line 89
    iget-object v0, p1, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/std/StdValueInstantiator;->_valueTypeDesc:Ljava/lang/String;

    iput-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/std/StdValueInstantiator;->_valueTypeDesc:Ljava/lang/String;

    .line 91
    iget-object v0, p1, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/std/StdValueInstantiator;->_defaultCreator:Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/AnnotatedWithParams;

    iput-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/std/StdValueInstantiator;->_defaultCreator:Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/AnnotatedWithParams;

    .line 93
    iget-object v0, p1, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/std/StdValueInstantiator;->_constructorArguments:[Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/impl/CreatorProperty;

    iput-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/std/StdValueInstantiator;->_constructorArguments:[Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/impl/CreatorProperty;

    .line 94
    iget-object v0, p1, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/std/StdValueInstantiator;->_withArgsCreator:Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/AnnotatedWithParams;

    iput-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/std/StdValueInstantiator;->_withArgsCreator:Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/AnnotatedWithParams;

    .line 96
    iget-object v0, p1, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/std/StdValueInstantiator;->_delegateType:Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;

    iput-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/std/StdValueInstantiator;->_delegateType:Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;

    .line 97
    iget-object v0, p1, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/std/StdValueInstantiator;->_delegateCreator:Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/AnnotatedWithParams;

    iput-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/std/StdValueInstantiator;->_delegateCreator:Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/AnnotatedWithParams;

    .line 99
    iget-object v0, p1, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/std/StdValueInstantiator;->_fromStringCreator:Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/AnnotatedWithParams;

    iput-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/std/StdValueInstantiator;->_fromStringCreator:Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/AnnotatedWithParams;

    .line 100
    iget-object v0, p1, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/std/StdValueInstantiator;->_fromIntCreator:Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/AnnotatedWithParams;

    iput-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/std/StdValueInstantiator;->_fromIntCreator:Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/AnnotatedWithParams;

    .line 101
    iget-object v0, p1, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/std/StdValueInstantiator;->_fromLongCreator:Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/AnnotatedWithParams;

    iput-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/std/StdValueInstantiator;->_fromLongCreator:Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/AnnotatedWithParams;

    .line 102
    iget-object v0, p1, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/std/StdValueInstantiator;->_fromDoubleCreator:Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/AnnotatedWithParams;

    iput-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/std/StdValueInstantiator;->_fromDoubleCreator:Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/AnnotatedWithParams;

    .line 103
    iget-object p1, p1, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/std/StdValueInstantiator;->_fromBooleanCreator:Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/AnnotatedWithParams;

    iput-object p1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/std/StdValueInstantiator;->_fromBooleanCreator:Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/AnnotatedWithParams;

    return-void
.end method


# virtual methods
.method protected _createFromStringFallbacks(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/whispersync/org/codehaus/jackson/JsonProcessingException;
        }
    .end annotation

    .line 365
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/std/StdValueInstantiator;->_fromBooleanCreator:Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/AnnotatedWithParams;

    if-eqz v0, :cond_1

    .line 366
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "true"

    .line 367
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p1, 0x1

    .line 368
    invoke-virtual {p0, p1}, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/std/StdValueInstantiator;->createFromBoolean(Z)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_0
    const-string v1, "false"

    .line 370
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p1, 0x0

    .line 371
    invoke-virtual {p0, p1}, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/std/StdValueInstantiator;->createFromBoolean(Z)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 376
    :cond_1
    iget-boolean v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/std/StdValueInstantiator;->_cfgEmptyStringsAsObjects:Z

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-nez p1, :cond_2

    const/4 p1, 0x0

    return-object p1

    .line 379
    :cond_2
    new-instance p1, Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonMappingException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Can not instantiate value of type "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/std/StdValueInstantiator;->getValueTypeDesc()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " from JSON String; no single-String constructor/factory method"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonMappingException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public canCreateFromBoolean()Z
    .locals 1

    .line 175
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/std/StdValueInstantiator;->_fromBooleanCreator:Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/AnnotatedWithParams;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public canCreateFromDouble()Z
    .locals 1

    .line 170
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/std/StdValueInstantiator;->_fromDoubleCreator:Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/AnnotatedWithParams;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public canCreateFromInt()Z
    .locals 1

    .line 160
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/std/StdValueInstantiator;->_fromIntCreator:Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/AnnotatedWithParams;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public canCreateFromLong()Z
    .locals 1

    .line 165
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/std/StdValueInstantiator;->_fromLongCreator:Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/AnnotatedWithParams;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public canCreateFromObjectWith()Z
    .locals 1

    .line 185
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/std/StdValueInstantiator;->_withArgsCreator:Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/AnnotatedWithParams;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public canCreateFromString()Z
    .locals 1

    .line 155
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/std/StdValueInstantiator;->_fromStringCreator:Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/AnnotatedWithParams;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public canCreateUsingDefault()Z
    .locals 1

    .line 180
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/std/StdValueInstantiator;->_defaultCreator:Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/AnnotatedWithParams;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public configureFromBooleanCreator(Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/AnnotatedWithParams;)V
    .locals 0

    .line 139
    iput-object p1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/std/StdValueInstantiator;->_fromBooleanCreator:Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/AnnotatedWithParams;

    return-void
.end method

.method public configureFromDoubleCreator(Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/AnnotatedWithParams;)V
    .locals 0

    .line 135
    iput-object p1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/std/StdValueInstantiator;->_fromDoubleCreator:Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/AnnotatedWithParams;

    return-void
.end method

.method public configureFromIntCreator(Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/AnnotatedWithParams;)V
    .locals 0

    .line 127
    iput-object p1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/std/StdValueInstantiator;->_fromIntCreator:Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/AnnotatedWithParams;

    return-void
.end method

.method public configureFromLongCreator(Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/AnnotatedWithParams;)V
    .locals 0

    .line 131
    iput-object p1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/std/StdValueInstantiator;->_fromLongCreator:Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/AnnotatedWithParams;

    return-void
.end method

.method public configureFromObjectSettings(Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/AnnotatedWithParams;Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/AnnotatedWithParams;Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/AnnotatedWithParams;[Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/impl/CreatorProperty;)V
    .locals 0

    .line 115
    iput-object p1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/std/StdValueInstantiator;->_defaultCreator:Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/AnnotatedWithParams;

    .line 116
    iput-object p2, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/std/StdValueInstantiator;->_delegateCreator:Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/AnnotatedWithParams;

    .line 117
    iput-object p3, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/std/StdValueInstantiator;->_delegateType:Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;

    .line 118
    iput-object p4, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/std/StdValueInstantiator;->_withArgsCreator:Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/AnnotatedWithParams;

    .line 119
    iput-object p5, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/std/StdValueInstantiator;->_constructorArguments:[Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/impl/CreatorProperty;

    return-void
.end method

.method public configureFromStringCreator(Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/AnnotatedWithParams;)V
    .locals 0

    .line 123
    iput-object p1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/std/StdValueInstantiator;->_fromStringCreator:Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/AnnotatedWithParams;

    return-void
.end method

.method public createFromBoolean(Z)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/whispersync/org/codehaus/jackson/JsonProcessingException;
        }
    .end annotation

    .line 322
    :try_start_0
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/std/StdValueInstantiator;->_fromBooleanCreator:Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/AnnotatedWithParams;

    if-eqz v0, :cond_0

    .line 323
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/std/StdValueInstantiator;->_fromBooleanCreator:Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/AnnotatedWithParams;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/AnnotatedWithParams;->call1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    .line 328
    :cond_0
    new-instance p1, Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonMappingException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Can not instantiate value of type "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/std/StdValueInstantiator;->getValueTypeDesc()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " from JSON boolean value; no single-boolean/Boolean-arg constructor/factory method"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonMappingException;-><init>(Ljava/lang/String;)V

    throw p1

    :catch_0
    move-exception p1

    .line 326
    invoke-virtual {p0, p1}, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/std/StdValueInstantiator;->wrapException(Ljava/lang/Throwable;)Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonMappingException;

    move-result-object p1

    throw p1
.end method

.method public createFromDouble(D)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/whispersync/org/codehaus/jackson/JsonProcessingException;
        }
    .end annotation

    .line 308
    :try_start_0
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/std/StdValueInstantiator;->_fromDoubleCreator:Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/AnnotatedWithParams;

    if-eqz v0, :cond_0

    .line 309
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/std/StdValueInstantiator;->_fromDoubleCreator:Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/AnnotatedWithParams;

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/AnnotatedWithParams;->call1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    .line 314
    :cond_0
    new-instance p1, Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonMappingException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Can not instantiate value of type "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/std/StdValueInstantiator;->getValueTypeDesc()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " from JSON floating-point number; no one-double/Double-arg constructor/factory method"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonMappingException;-><init>(Ljava/lang/String;)V

    throw p1

    :catch_0
    move-exception p1

    .line 312
    invoke-virtual {p0, p1}, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/std/StdValueInstantiator;->wrapException(Ljava/lang/Throwable;)Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonMappingException;

    move-result-object p1

    throw p1
.end method

.method public createFromInt(I)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/whispersync/org/codehaus/jackson/JsonProcessingException;
        }
    .end annotation

    .line 276
    :try_start_0
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/std/StdValueInstantiator;->_fromIntCreator:Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/AnnotatedWithParams;

    if-eqz v0, :cond_0

    .line 277
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/std/StdValueInstantiator;->_fromIntCreator:Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/AnnotatedWithParams;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/AnnotatedWithParams;->call1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 280
    :cond_0
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/std/StdValueInstantiator;->_fromLongCreator:Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/AnnotatedWithParams;

    if-eqz v0, :cond_1

    .line 281
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/std/StdValueInstantiator;->_fromLongCreator:Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/AnnotatedWithParams;

    int-to-long v1, p1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/AnnotatedWithParams;->call1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    .line 286
    :cond_1
    new-instance p1, Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonMappingException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Can not instantiate value of type "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/std/StdValueInstantiator;->getValueTypeDesc()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " from JSON integral number; no single-int-arg constructor/factory method"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonMappingException;-><init>(Ljava/lang/String;)V

    throw p1

    :catch_0
    move-exception p1

    .line 284
    invoke-virtual {p0, p1}, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/std/StdValueInstantiator;->wrapException(Ljava/lang/Throwable;)Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonMappingException;

    move-result-object p1

    throw p1
.end method

.method public createFromLong(J)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/whispersync/org/codehaus/jackson/JsonProcessingException;
        }
    .end annotation

    .line 294
    :try_start_0
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/std/StdValueInstantiator;->_fromLongCreator:Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/AnnotatedWithParams;

    if-eqz v0, :cond_0

    .line 295
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/std/StdValueInstantiator;->_fromLongCreator:Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/AnnotatedWithParams;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/AnnotatedWithParams;->call1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    .line 300
    :cond_0
    new-instance p1, Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonMappingException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Can not instantiate value of type "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/std/StdValueInstantiator;->getValueTypeDesc()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " from JSON long integral number; no single-long-arg constructor/factory method"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonMappingException;-><init>(Ljava/lang/String;)V

    throw p1

    :catch_0
    move-exception p1

    .line 298
    invoke-virtual {p0, p1}, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/std/StdValueInstantiator;->wrapException(Ljava/lang/Throwable;)Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonMappingException;

    move-result-object p1

    throw p1
.end method

.method public createFromObjectWith([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/whispersync/org/codehaus/jackson/JsonProcessingException;
        }
    .end annotation

    .line 224
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/std/StdValueInstantiator;->_withArgsCreator:Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/AnnotatedWithParams;

    if-eqz v0, :cond_0

    .line 228
    :try_start_0
    invoke-virtual {v0, p1}, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/AnnotatedWithParams;->call([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/ExceptionInInitializerError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 232
    invoke-virtual {p0, p1}, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/std/StdValueInstantiator;->wrapException(Ljava/lang/Throwable;)Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonMappingException;

    move-result-object p1

    throw p1

    :catch_1
    move-exception p1

    .line 230
    invoke-virtual {p0, p1}, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/std/StdValueInstantiator;->wrapException(Ljava/lang/Throwable;)Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonMappingException;

    move-result-object p1

    throw p1

    .line 225
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "No with-args constructor for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/std/StdValueInstantiator;->getValueTypeDesc()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public createFromString(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/whispersync/org/codehaus/jackson/JsonProcessingException;
        }
    .end annotation

    .line 261
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/std/StdValueInstantiator;->_fromStringCreator:Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/AnnotatedWithParams;

    if-eqz v0, :cond_0

    .line 263
    :try_start_0
    invoke-virtual {v0, p1}, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/AnnotatedWithParams;->call1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 265
    invoke-virtual {p0, p1}, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/std/StdValueInstantiator;->wrapException(Ljava/lang/Throwable;)Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonMappingException;

    move-result-object p1

    throw p1

    .line 268
    :cond_0
    invoke-virtual {p0, p1}, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/std/StdValueInstantiator;->_createFromStringFallbacks(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public createUsingDefault()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/whispersync/org/codehaus/jackson/JsonProcessingException;
        }
    .end annotation

    .line 208
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/std/StdValueInstantiator;->_defaultCreator:Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/AnnotatedWithParams;

    if-eqz v0, :cond_0

    .line 212
    :try_start_0
    invoke-virtual {v0}, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/AnnotatedWithParams;->call()Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/ExceptionInInitializerError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 216
    invoke-virtual {p0, v0}, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/std/StdValueInstantiator;->wrapException(Ljava/lang/Throwable;)Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonMappingException;

    move-result-object v0

    throw v0

    :catch_1
    move-exception v0

    .line 214
    invoke-virtual {p0, v0}, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/std/StdValueInstantiator;->wrapException(Ljava/lang/Throwable;)Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonMappingException;

    move-result-object v0

    throw v0

    .line 209
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No default constructor for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/std/StdValueInstantiator;->getValueTypeDesc()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public createUsingDelegate(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/whispersync/org/codehaus/jackson/JsonProcessingException;
        }
    .end annotation

    .line 240
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/std/StdValueInstantiator;->_delegateCreator:Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/AnnotatedWithParams;

    if-eqz v0, :cond_0

    .line 244
    :try_start_0
    invoke-virtual {v0, p1}, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/AnnotatedWithParams;->call1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/ExceptionInInitializerError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 248
    invoke-virtual {p0, p1}, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/std/StdValueInstantiator;->wrapException(Ljava/lang/Throwable;)Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonMappingException;

    move-result-object p1

    throw p1

    :catch_1
    move-exception p1

    .line 246
    invoke-virtual {p0, p1}, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/std/StdValueInstantiator;->wrapException(Ljava/lang/Throwable;)Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonMappingException;

    move-result-object p1

    throw p1

    .line 241
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "No delegate constructor for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/std/StdValueInstantiator;->getValueTypeDesc()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getDefaultCreator()Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/AnnotatedWithParams;
    .locals 1

    .line 345
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/std/StdValueInstantiator;->_defaultCreator:Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/AnnotatedWithParams;

    return-object v0
.end method

.method public getDelegateCreator()Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/AnnotatedWithParams;
    .locals 1

    .line 340
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/std/StdValueInstantiator;->_delegateCreator:Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/AnnotatedWithParams;

    return-object v0
.end method

.method public getDelegateType()Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;
    .locals 1

    .line 190
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/std/StdValueInstantiator;->_delegateType:Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;

    return-object v0
.end method

.method public getFromObjectArguments()[Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/SettableBeanProperty;
    .locals 1

    .line 195
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/std/StdValueInstantiator;->_constructorArguments:[Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/impl/CreatorProperty;

    return-object v0
.end method

.method public getValueTypeDesc()Ljava/lang/String;
    .locals 1

    .line 150
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/std/StdValueInstantiator;->_valueTypeDesc:Ljava/lang/String;

    return-object v0
.end method

.method public getWithArgsCreator()Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/AnnotatedWithParams;
    .locals 1

    .line 350
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/std/StdValueInstantiator;->_withArgsCreator:Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/AnnotatedWithParams;

    return-object v0
.end method

.method protected wrapException(Ljava/lang/Throwable;)Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonMappingException;
    .locals 3

    .line 385
    :goto_0
    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 386
    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    goto :goto_0

    .line 388
    :cond_0
    new-instance v0, Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonMappingException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Instantiation of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/std/StdValueInstantiator;->getValueTypeDesc()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " value failed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonMappingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v0
.end method
