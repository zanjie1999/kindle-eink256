.class public Lcom/amazon/whispersync/org/codehaus/jackson/map/jsontype/impl/MinimalClassNameIdResolver;
.super Lcom/amazon/whispersync/org/codehaus/jackson/map/jsontype/impl/ClassNameIdResolver;
.source "MinimalClassNameIdResolver.java"


# instance fields
.field protected final _basePackageName:Ljava/lang/String;

.field protected final _basePackagePrefix:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;Lcom/amazon/whispersync/org/codehaus/jackson/map/type/TypeFactory;)V
    .locals 2

    .line 24
    invoke-direct {p0, p1, p2}, Lcom/amazon/whispersync/org/codehaus/jackson/map/jsontype/impl/ClassNameIdResolver;-><init>(Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;Lcom/amazon/whispersync/org/codehaus/jackson/map/type/TypeFactory;)V

    .line 25
    invoke-virtual {p1}, Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    const/16 p2, 0x2e

    .line 26
    invoke-virtual {p1, p2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result p2

    if-gez p2, :cond_0

    const-string p1, ""

    .line 28
    iput-object p1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/jsontype/impl/MinimalClassNameIdResolver;->_basePackageName:Ljava/lang/String;

    const-string p1, "."

    .line 29
    iput-object p1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/jsontype/impl/MinimalClassNameIdResolver;->_basePackagePrefix:Ljava/lang/String;

    goto :goto_0

    :cond_0
    add-int/lit8 v0, p2, 0x1

    const/4 v1, 0x0

    .line 31
    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/jsontype/impl/MinimalClassNameIdResolver;->_basePackagePrefix:Ljava/lang/String;

    .line 32
    invoke-virtual {p1, v1, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/jsontype/impl/MinimalClassNameIdResolver;->_basePackageName:Ljava/lang/String;

    :goto_0
    return-void
.end method


# virtual methods
.method public getMechanism()Lcom/amazon/whispersync/org/codehaus/jackson/annotate/JsonTypeInfo$Id;
    .locals 1

    .line 37
    sget-object v0, Lcom/amazon/whispersync/org/codehaus/jackson/annotate/JsonTypeInfo$Id;->MINIMAL_CLASS:Lcom/amazon/whispersync/org/codehaus/jackson/annotate/JsonTypeInfo$Id;

    return-object v0
.end method

.method public idFromValue(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    .line 42
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    .line 43
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/jsontype/impl/MinimalClassNameIdResolver;->_basePackagePrefix:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 45
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/jsontype/impl/MinimalClassNameIdResolver;->_basePackagePrefix:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    :cond_0
    return-object p1
.end method

.method public typeFromId(Ljava/lang/String;)Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;
    .locals 3

    const-string v0, "."

    .line 53
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 54
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    iget-object v2, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/jsontype/impl/MinimalClassNameIdResolver;->_basePackageName:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v1, v2

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 55
    iget-object v1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/jsontype/impl/MinimalClassNameIdResolver;->_basePackageName:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    .line 57
    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 60
    :cond_0
    iget-object v1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/jsontype/impl/MinimalClassNameIdResolver;->_basePackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 64
    :cond_1
    invoke-super {p0, p1}, Lcom/amazon/whispersync/org/codehaus/jackson/map/jsontype/impl/ClassNameIdResolver;->typeFromId(Ljava/lang/String;)Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;

    move-result-object p1

    return-object p1
.end method
