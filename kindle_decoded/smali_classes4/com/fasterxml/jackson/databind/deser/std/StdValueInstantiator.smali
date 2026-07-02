.class public Lcom/fasterxml/jackson/databind/deser/std/StdValueInstantiator;
.super Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;
.source "StdValueInstantiator.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation runtime Lcom/fasterxml/jackson/databind/annotation/JacksonStdImpl;
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field protected _arrayDelegateArguments:[Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;

.field protected _arrayDelegateCreator:Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;

.field protected _arrayDelegateType:Lcom/fasterxml/jackson/databind/JavaType;

.field protected _constructorArguments:[Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;

.field protected _defaultCreator:Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;

.field protected _delegateArguments:[Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;

.field protected _delegateCreator:Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;

.field protected _delegateType:Lcom/fasterxml/jackson/databind/JavaType;

.field protected _fromBooleanCreator:Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;

.field protected _fromDoubleCreator:Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;

.field protected _fromIntCreator:Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;

.field protected _fromLongCreator:Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;

.field protected _fromStringCreator:Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;

.field protected _incompleteParameter:Lcom/fasterxml/jackson/databind/introspect/AnnotatedParameter;

.field protected final _valueTypeDesc:Ljava/lang/String;

.field protected _withArgsCreator:Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;


# direct methods
.method public constructor <init>(Lcom/fasterxml/jackson/databind/DeserializationConfig;Lcom/fasterxml/jackson/databind/JavaType;)V
    .locals 0

    .line 76
    invoke-direct {p0}, Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;-><init>()V

    if-nez p2, :cond_0

    const-string p1, "UNKNOWN TYPE"

    goto :goto_0

    .line 77
    :cond_0
    invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/JavaType;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lcom/fasterxml/jackson/databind/deser/std/StdValueInstantiator;->_valueTypeDesc:Ljava/lang/String;

    return-void
.end method

.method private _createUsingDelegate(Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;[Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;Lcom/fasterxml/jackson/databind/DeserializationContext;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_3

    if-nez p2, :cond_0

    .line 486
    :try_start_0
    invoke-virtual {p1, p4}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;->call1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 489
    :cond_0
    array-length v0, p2

    .line 490
    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_2

    .line 492
    aget-object v3, p2, v2

    if-nez v3, :cond_1

    .line 494
    aput-object p4, v1, v2

    goto :goto_1

    .line 496
    :cond_1
    invoke-virtual {v3}, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;->getInjectableValueId()Ljava/lang/Object;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {p3, v4, v3, v5}, Lcom/fasterxml/jackson/databind/DeserializationContext;->findInjectableValue(Ljava/lang/Object;Lcom/fasterxml/jackson/databind/BeanProperty;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v1, v2

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 500
    :cond_2
    invoke-virtual {p1, v1}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;->call([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    :catchall_0
    move-exception p1

    .line 502
    invoke-virtual {p0, p3, p1}, Lcom/fasterxml/jackson/databind/deser/std/StdValueInstantiator;->rewrapCtorProblem(Lcom/fasterxml/jackson/databind/DeserializationContext;Ljava/lang/Throwable;)Lcom/fasterxml/jackson/databind/JsonMappingException;

    move-result-object p1

    throw p1

    .line 481
    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "No delegate constructor for "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/deser/std/StdValueInstantiator;->getValueTypeDesc()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public canCreateFromBoolean()Z
    .locals 1

    .line 192
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/std/StdValueInstantiator;->_fromBooleanCreator:Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;

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

    .line 187
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/std/StdValueInstantiator;->_fromDoubleCreator:Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;

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

    .line 177
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/std/StdValueInstantiator;->_fromIntCreator:Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;

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

    .line 182
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/std/StdValueInstantiator;->_fromLongCreator:Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;

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

    .line 212
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/std/StdValueInstantiator;->_withArgsCreator:Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;

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

    .line 172
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/std/StdValueInstantiator;->_fromStringCreator:Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public canCreateUsingArrayDelegate()Z
    .locals 1

    .line 207
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/std/StdValueInstantiator;->_arrayDelegateType:Lcom/fasterxml/jackson/databind/JavaType;

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

    .line 197
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/std/StdValueInstantiator;->_defaultCreator:Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public canCreateUsingDelegate()Z
    .locals 1

    .line 202
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/std/StdValueInstantiator;->_delegateType:Lcom/fasterxml/jackson/databind/JavaType;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public configureFromArraySettings(Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;Lcom/fasterxml/jackson/databind/JavaType;[Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;)V
    .locals 0

    .line 130
    iput-object p1, p0, Lcom/fasterxml/jackson/databind/deser/std/StdValueInstantiator;->_arrayDelegateCreator:Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;

    .line 131
    iput-object p2, p0, Lcom/fasterxml/jackson/databind/deser/std/StdValueInstantiator;->_arrayDelegateType:Lcom/fasterxml/jackson/databind/JavaType;

    .line 132
    iput-object p3, p0, Lcom/fasterxml/jackson/databind/deser/std/StdValueInstantiator;->_arrayDelegateArguments:[Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;

    return-void
.end method

.method public configureFromBooleanCreator(Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;)V
    .locals 0

    .line 152
    iput-object p1, p0, Lcom/fasterxml/jackson/databind/deser/std/StdValueInstantiator;->_fromBooleanCreator:Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;

    return-void
.end method

.method public configureFromDoubleCreator(Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;)V
    .locals 0

    .line 148
    iput-object p1, p0, Lcom/fasterxml/jackson/databind/deser/std/StdValueInstantiator;->_fromDoubleCreator:Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;

    return-void
.end method

.method public configureFromIntCreator(Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;)V
    .locals 0

    .line 140
    iput-object p1, p0, Lcom/fasterxml/jackson/databind/deser/std/StdValueInstantiator;->_fromIntCreator:Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;

    return-void
.end method

.method public configureFromLongCreator(Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;)V
    .locals 0

    .line 144
    iput-object p1, p0, Lcom/fasterxml/jackson/databind/deser/std/StdValueInstantiator;->_fromLongCreator:Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;

    return-void
.end method

.method public configureFromObjectSettings(Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;Lcom/fasterxml/jackson/databind/JavaType;[Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;[Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;)V
    .locals 0

    .line 117
    iput-object p1, p0, Lcom/fasterxml/jackson/databind/deser/std/StdValueInstantiator;->_defaultCreator:Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;

    .line 118
    iput-object p2, p0, Lcom/fasterxml/jackson/databind/deser/std/StdValueInstantiator;->_delegateCreator:Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;

    .line 119
    iput-object p3, p0, Lcom/fasterxml/jackson/databind/deser/std/StdValueInstantiator;->_delegateType:Lcom/fasterxml/jackson/databind/JavaType;

    .line 120
    iput-object p4, p0, Lcom/fasterxml/jackson/databind/deser/std/StdValueInstantiator;->_delegateArguments:[Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;

    .line 121
    iput-object p5, p0, Lcom/fasterxml/jackson/databind/deser/std/StdValueInstantiator;->_withArgsCreator:Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;

    .line 122
    iput-object p6, p0, Lcom/fasterxml/jackson/databind/deser/std/StdValueInstantiator;->_constructorArguments:[Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;

    return-void
.end method

.method public configureFromStringCreator(Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;)V
    .locals 0

    .line 136
    iput-object p1, p0, Lcom/fasterxml/jackson/databind/deser/std/StdValueInstantiator;->_fromStringCreator:Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;

    return-void
.end method

.method public configureIncompleteParameter(Lcom/fasterxml/jackson/databind/introspect/AnnotatedParameter;)V
    .locals 0

    .line 156
    iput-object p1, p0, Lcom/fasterxml/jackson/databind/deser/std/StdValueInstantiator;->_incompleteParameter:Lcom/fasterxml/jackson/databind/introspect/AnnotatedParameter;

    return-void
.end method

.method public createFromBoolean(Lcom/fasterxml/jackson/databind/DeserializationContext;Z)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 349
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/std/StdValueInstantiator;->_fromBooleanCreator:Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;

    if-eqz v0, :cond_0

    .line 355
    :try_start_0
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;->call1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    :catchall_0
    move-exception p2

    .line 357
    invoke-virtual {p0, p1, p2}, Lcom/fasterxml/jackson/databind/deser/std/StdValueInstantiator;->rewrapCtorProblem(Lcom/fasterxml/jackson/databind/DeserializationContext;Ljava/lang/Throwable;)Lcom/fasterxml/jackson/databind/JsonMappingException;

    move-result-object p1

    throw p1

    :cond_0
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    .line 350
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/deser/std/StdValueInstantiator;->getValueTypeDesc()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    aput-object p2, v0, v1

    const-string p2, "Can not instantiate value of type %s from Boolean value (%s); no single-boolean/Boolean-arg constructor/factory method"

    invoke-virtual {p1, p2, v0}, Lcom/fasterxml/jackson/databind/DeserializationContext;->mappingException(Ljava/lang/String;[Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/JsonMappingException;

    move-result-object p1

    throw p1
.end method

.method public createFromDouble(Lcom/fasterxml/jackson/databind/DeserializationContext;D)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 334
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/std/StdValueInstantiator;->_fromDoubleCreator:Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;

    if-eqz v0, :cond_0

    .line 340
    :try_start_0
    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;->call1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    :catchall_0
    move-exception p2

    .line 342
    invoke-virtual {p0, p1, p2}, Lcom/fasterxml/jackson/databind/deser/std/StdValueInstantiator;->rewrapCtorProblem(Lcom/fasterxml/jackson/databind/DeserializationContext;Ljava/lang/Throwable;)Lcom/fasterxml/jackson/databind/JsonMappingException;

    move-result-object p1

    throw p1

    :cond_0
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    .line 335
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/deser/std/StdValueInstantiator;->getValueTypeDesc()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p2

    aput-object p2, v0, v1

    const-string p2, "Can not instantiate value of type %s from Floating-point number (%s); no one-double/Double-arg constructor/factory method"

    invoke-virtual {p1, p2, v0}, Lcom/fasterxml/jackson/databind/DeserializationContext;->mappingException(Ljava/lang/String;[Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/JsonMappingException;

    move-result-object p1

    throw p1
.end method

.method public createFromInt(Lcom/fasterxml/jackson/databind/DeserializationContext;I)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 302
    :try_start_0
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/std/StdValueInstantiator;->_fromIntCreator:Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;

    if-eqz v0, :cond_0

    .line 303
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/std/StdValueInstantiator;->_fromIntCreator:Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;->call1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 306
    :cond_0
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/std/StdValueInstantiator;->_fromLongCreator:Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;

    if-eqz v0, :cond_1

    .line 307
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/std/StdValueInstantiator;->_fromLongCreator:Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;

    int-to-long v1, p2

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;->call1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    :cond_1
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    .line 312
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/deser/std/StdValueInstantiator;->getValueTypeDesc()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v0, v1

    const-string p2, "Can not instantiate value of type %s from Integral number (%s); no single-int-arg constructor/factory method"

    invoke-virtual {p1, p2, v0}, Lcom/fasterxml/jackson/databind/DeserializationContext;->mappingException(Ljava/lang/String;[Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/JsonMappingException;

    move-result-object p1

    throw p1

    :catchall_0
    move-exception p2

    .line 310
    invoke-virtual {p0, p1, p2}, Lcom/fasterxml/jackson/databind/deser/std/StdValueInstantiator;->rewrapCtorProblem(Lcom/fasterxml/jackson/databind/DeserializationContext;Ljava/lang/Throwable;)Lcom/fasterxml/jackson/databind/JsonMappingException;

    move-result-object p1

    throw p1
.end method

.method public createFromLong(Lcom/fasterxml/jackson/databind/DeserializationContext;J)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 319
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/std/StdValueInstantiator;->_fromLongCreator:Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;

    if-eqz v0, :cond_0

    .line 325
    :try_start_0
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;->call1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    :catchall_0
    move-exception p2

    .line 327
    invoke-virtual {p0, p1, p2}, Lcom/fasterxml/jackson/databind/deser/std/StdValueInstantiator;->rewrapCtorProblem(Lcom/fasterxml/jackson/databind/DeserializationContext;Ljava/lang/Throwable;)Lcom/fasterxml/jackson/databind/JsonMappingException;

    move-result-object p1

    throw p1

    :cond_0
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    .line 320
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/deser/std/StdValueInstantiator;->getValueTypeDesc()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    aput-object p2, v0, v1

    const-string p2, "Can not instantiate value of type %s from Long integral number (%s); no single-long-arg constructor/factory method"

    invoke-virtual {p1, p2, v0}, Lcom/fasterxml/jackson/databind/DeserializationContext;->mappingException(Ljava/lang/String;[Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/JsonMappingException;

    move-result-object p1

    throw p1
.end method

.method public createFromObjectWith(Lcom/fasterxml/jackson/databind/DeserializationContext;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 252
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/std/StdValueInstantiator;->_withArgsCreator:Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;

    if-eqz v0, :cond_0

    .line 256
    :try_start_0
    invoke-virtual {v0, p2}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;->call([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    :catchall_0
    move-exception p2

    .line 258
    invoke-virtual {p0, p1, p2}, Lcom/fasterxml/jackson/databind/deser/std/StdValueInstantiator;->rewrapCtorProblem(Lcom/fasterxml/jackson/databind/DeserializationContext;Ljava/lang/Throwable;)Lcom/fasterxml/jackson/databind/JsonMappingException;

    move-result-object p1

    throw p1

    .line 253
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "No with-args constructor for "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/deser/std/StdValueInstantiator;->getValueTypeDesc()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public createFromString(Lcom/fasterxml/jackson/databind/DeserializationContext;Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 287
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/std/StdValueInstantiator;->_fromStringCreator:Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;

    if-nez v0, :cond_0

    .line 288
    invoke-virtual {p0, p1, p2}, Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;->_createFromStringFallbacks(Lcom/fasterxml/jackson/databind/DeserializationContext;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 291
    :cond_0
    :try_start_0
    invoke-virtual {v0, p2}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;->call1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    :catchall_0
    move-exception p2

    .line 293
    invoke-virtual {p0, p1, p2}, Lcom/fasterxml/jackson/databind/deser/std/StdValueInstantiator;->rewrapCtorProblem(Lcom/fasterxml/jackson/databind/DeserializationContext;Ljava/lang/Throwable;)Lcom/fasterxml/jackson/databind/JsonMappingException;

    move-result-object p1

    throw p1
.end method

.method public createUsingArrayDelegate(Lcom/fasterxml/jackson/databind/DeserializationContext;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 271
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/std/StdValueInstantiator;->_arrayDelegateCreator:Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;

    if-nez v0, :cond_0

    .line 273
    invoke-virtual {p0, p1, p2}, Lcom/fasterxml/jackson/databind/deser/std/StdValueInstantiator;->createUsingDelegate(Lcom/fasterxml/jackson/databind/DeserializationContext;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 275
    :cond_0
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/deser/std/StdValueInstantiator;->_arrayDelegateArguments:[Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/fasterxml/jackson/databind/deser/std/StdValueInstantiator;->_createUsingDelegate(Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;[Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;Lcom/fasterxml/jackson/databind/DeserializationContext;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public createUsingDefault(Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 239
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/std/StdValueInstantiator;->_defaultCreator:Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;

    if-eqz v0, :cond_0

    .line 243
    :try_start_0
    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;->call()Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    :catchall_0
    move-exception v0

    .line 245
    invoke-virtual {p0, p1, v0}, Lcom/fasterxml/jackson/databind/deser/std/StdValueInstantiator;->rewrapCtorProblem(Lcom/fasterxml/jackson/databind/DeserializationContext;Ljava/lang/Throwable;)Lcom/fasterxml/jackson/databind/JsonMappingException;

    move-result-object p1

    throw p1

    .line 240
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "No default constructor for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/deser/std/StdValueInstantiator;->getValueTypeDesc()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public createUsingDelegate(Lcom/fasterxml/jackson/databind/DeserializationContext;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 265
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/std/StdValueInstantiator;->_delegateCreator:Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/deser/std/StdValueInstantiator;->_delegateArguments:[Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/fasterxml/jackson/databind/deser/std/StdValueInstantiator;->_createUsingDelegate(Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;[Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;Lcom/fasterxml/jackson/databind/DeserializationContext;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getArrayDelegateCreator()Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;
    .locals 1

    .line 374
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/std/StdValueInstantiator;->_arrayDelegateCreator:Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;

    return-object v0
.end method

.method public getArrayDelegateType(Lcom/fasterxml/jackson/databind/DeserializationConfig;)Lcom/fasterxml/jackson/databind/JavaType;
    .locals 0

    .line 222
    iget-object p1, p0, Lcom/fasterxml/jackson/databind/deser/std/StdValueInstantiator;->_arrayDelegateType:Lcom/fasterxml/jackson/databind/JavaType;

    return-object p1
.end method

.method public getDefaultCreator()Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;
    .locals 1

    .line 379
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/std/StdValueInstantiator;->_defaultCreator:Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;

    return-object v0
.end method

.method public getDelegateCreator()Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;
    .locals 1

    .line 369
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/std/StdValueInstantiator;->_delegateCreator:Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;

    return-object v0
.end method

.method public getDelegateType(Lcom/fasterxml/jackson/databind/DeserializationConfig;)Lcom/fasterxml/jackson/databind/JavaType;
    .locals 0

    .line 217
    iget-object p1, p0, Lcom/fasterxml/jackson/databind/deser/std/StdValueInstantiator;->_delegateType:Lcom/fasterxml/jackson/databind/JavaType;

    return-object p1
.end method

.method public getFromObjectArguments(Lcom/fasterxml/jackson/databind/DeserializationConfig;)[Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;
    .locals 0

    .line 227
    iget-object p1, p0, Lcom/fasterxml/jackson/databind/deser/std/StdValueInstantiator;->_constructorArguments:[Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;

    return-object p1
.end method

.method public getIncompleteParameter()Lcom/fasterxml/jackson/databind/introspect/AnnotatedParameter;
    .locals 1

    .line 389
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/std/StdValueInstantiator;->_incompleteParameter:Lcom/fasterxml/jackson/databind/introspect/AnnotatedParameter;

    return-object v0
.end method

.method public getValueTypeDesc()Ljava/lang/String;
    .locals 1

    .line 167
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/std/StdValueInstantiator;->_valueTypeDesc:Ljava/lang/String;

    return-object v0
.end method

.method protected rewrapCtorProblem(Lcom/fasterxml/jackson/databind/DeserializationContext;Ljava/lang/Throwable;)Lcom/fasterxml/jackson/databind/JsonMappingException;
    .locals 1

    .line 456
    instance-of v0, p2, Ljava/lang/ExceptionInInitializerError;

    if-nez v0, :cond_0

    instance-of v0, p2, Ljava/lang/reflect/InvocationTargetException;

    if-eqz v0, :cond_1

    .line 459
    :cond_0
    invoke-virtual {p2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_1

    move-object p2, v0

    .line 464
    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/fasterxml/jackson/databind/deser/std/StdValueInstantiator;->wrapAsJsonMappingException(Lcom/fasterxml/jackson/databind/DeserializationContext;Ljava/lang/Throwable;)Lcom/fasterxml/jackson/databind/JsonMappingException;

    move-result-object p1

    return-object p1
.end method

.method protected wrapAsJsonMappingException(Lcom/fasterxml/jackson/databind/DeserializationContext;Ljava/lang/Throwable;)Lcom/fasterxml/jackson/databind/JsonMappingException;
    .locals 3

    .line 440
    instance-of v0, p2, Lcom/fasterxml/jackson/databind/JsonMappingException;

    if-eqz v0, :cond_0

    .line 441
    check-cast p2, Lcom/fasterxml/jackson/databind/JsonMappingException;

    return-object p2

    :cond_0
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    .line 443
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/deser/std/StdValueInstantiator;->getValueTypeDesc()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const-string v1, "Instantiation of %s value failed (%s): %s"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 445
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/DeserializationContext;->getParser()Lcom/fasterxml/jackson/core/JsonParser;

    move-result-object p1

    invoke-static {p1, v0, p2}, Lcom/fasterxml/jackson/databind/JsonMappingException;->from(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;Ljava/lang/Throwable;)Lcom/fasterxml/jackson/databind/JsonMappingException;

    move-result-object p1

    return-object p1
.end method
