.class public abstract Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/ValueInstantiator;
.super Ljava/lang/Object;
.source "ValueInstantiator.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public canCreateFromBoolean()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public canCreateFromDouble()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public canCreateFromInt()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public canCreateFromLong()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public canCreateFromObjectWith()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public canCreateFromString()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public canCreateUsingDefault()Z
    .locals 1

    .line 111
    invoke-virtual {p0}, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/ValueInstantiator;->getDefaultCreator()Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/AnnotatedWithParams;

    move-result-object v0

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

    .line 120
    invoke-virtual {p0}, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/ValueInstantiator;->getDelegateType()Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public canInstantiate()Z
    .locals 1

    .line 53
    invoke-virtual {p0}, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/ValueInstantiator;->canCreateUsingDefault()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/ValueInstantiator;->canCreateUsingDelegate()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/ValueInstantiator;->canCreateFromObjectWith()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/ValueInstantiator;->canCreateFromString()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/ValueInstantiator;->canCreateFromInt()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/ValueInstantiator;->canCreateFromLong()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/ValueInstantiator;->canCreateFromDouble()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/ValueInstantiator;->canCreateFromBoolean()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public createFromBoolean(Z)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/whispersync/org/codehaus/jackson/JsonProcessingException;
        }
    .end annotation

    .line 232
    new-instance p1, Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonMappingException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Can not instantiate value of type "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/ValueInstantiator;->getValueTypeDesc()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " from JSON boolean value"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonMappingException;-><init>(Ljava/lang/String;)V

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

    .line 227
    new-instance p1, Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonMappingException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Can not instantiate value of type "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/ValueInstantiator;->getValueTypeDesc()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " from JSON floating-point number"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonMappingException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public createFromInt(I)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/whispersync/org/codehaus/jackson/JsonProcessingException;
        }
    .end annotation

    .line 217
    new-instance p1, Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonMappingException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Can not instantiate value of type "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/ValueInstantiator;->getValueTypeDesc()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " from JSON int number"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonMappingException;-><init>(Ljava/lang/String;)V

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

    .line 222
    new-instance p1, Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonMappingException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Can not instantiate value of type "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/ValueInstantiator;->getValueTypeDesc()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " from JSON long number"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonMappingException;-><init>(Ljava/lang/String;)V

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

    .line 189
    new-instance p1, Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonMappingException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Can not instantiate value of type "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/ValueInstantiator;->getValueTypeDesc()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " with arguments"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonMappingException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public createFromString(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/whispersync/org/codehaus/jackson/JsonProcessingException;
        }
    .end annotation

    .line 212
    new-instance p1, Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonMappingException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Can not instantiate value of type "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/ValueInstantiator;->getValueTypeDesc()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " from JSON String"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonMappingException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public createUsingDefault()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/whispersync/org/codehaus/jackson/JsonProcessingException;
        }
    .end annotation

    .line 175
    new-instance v0, Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonMappingException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can not instantiate value of type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/ValueInstantiator;->getValueTypeDesc()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "; no default creator found"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonMappingException;-><init>(Ljava/lang/String;)V

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

    .line 200
    new-instance p1, Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonMappingException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Can not instantiate value of type "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/ValueInstantiator;->getValueTypeDesc()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " using delegate"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonMappingException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getDefaultCreator()Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/AnnotatedWithParams;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getDelegateCreator()Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/AnnotatedWithParams;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getDelegateType()Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getFromObjectArguments()[Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/SettableBeanProperty;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract getValueTypeDesc()Ljava/lang/String;
.end method

.method public getWithArgsCreator()Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/AnnotatedWithParams;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method
