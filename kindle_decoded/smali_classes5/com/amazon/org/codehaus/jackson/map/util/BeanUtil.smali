.class public Lcom/amazon/org/codehaus/jackson/map/util/BeanUtil;
.super Ljava/lang/Object;
.source "BeanUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected static isCglibGetCallbacks(Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedMethod;)Z
    .locals 2

    .line 177
    invoke-virtual {p0}, Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedMethod;->getRawType()Ljava/lang/Class;

    move-result-object p0

    const/4 v0, 0x0

    if-eqz p0, :cond_2

    .line 179
    invoke-virtual {p0}, Ljava/lang/Class;->isArray()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 186
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object p0

    .line 188
    invoke-virtual {p0}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 190
    invoke-virtual {p0}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object p0

    const-string v1, "net.sf.cglib"

    .line 191
    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string/jumbo v1, "org.hibernate.repackage.cglib"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_2

    :cond_1
    const/4 p0, 0x1

    return p0

    :cond_2
    :goto_0
    return v0
.end method

.method protected static isGroovyMetaClassGetter(Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedMethod;)Z
    .locals 2

    .line 219
    invoke-virtual {p0}, Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedMethod;->getRawType()Ljava/lang/Class;

    move-result-object p0

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    .line 220
    invoke-virtual {p0}, Ljava/lang/Class;->isArray()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 223
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 224
    invoke-virtual {p0}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object p0

    const-string v1, "groovy.lang"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    :goto_0
    return v0
.end method

.method protected static isGroovyMetaClassSetter(Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedMethod;)Z
    .locals 2

    const/4 v0, 0x0

    .line 206
    invoke-virtual {p0, v0}, Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedMethod;->getParameterClass(I)Ljava/lang/Class;

    move-result-object p0

    .line 207
    invoke-virtual {p0}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 208
    invoke-virtual {p0}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object p0

    const-string v1, "groovy.lang"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    return v0
.end method

.method protected static manglePropertyName(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .line 239
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_3

    .line 248
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 249
    invoke-static {v3}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v4

    if-ne v3, v4, :cond_1

    goto :goto_1

    :cond_1
    if-nez v1, :cond_2

    .line 254
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 256
    :cond_2
    invoke-virtual {v1, v2, v4}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    if-nez v1, :cond_4

    goto :goto_2

    .line 258
    :cond_4
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_2
    return-object p0
.end method

.method public static okNameForGetter(Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedMethod;)Ljava/lang/String;
    .locals 2

    .line 90
    invoke-virtual {p0}, Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedMethod;->getName()Ljava/lang/String;

    move-result-object v0

    .line 91
    invoke-static {p0, v0}, Lcom/amazon/org/codehaus/jackson/map/util/BeanUtil;->okNameForIsGetter(Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedMethod;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    .line 93
    invoke-static {p0, v0}, Lcom/amazon/org/codehaus/jackson/map/util/BeanUtil;->okNameForRegularGetter(Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedMethod;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_0
    return-object v1
.end method

.method public static okNameForIsGetter(Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedMethod;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, "is"

    .line 127
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 129
    invoke-virtual {p0}, Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedMethod;->getRawType()Ljava/lang/Class;

    move-result-object p0

    .line 130
    const-class v0, Ljava/lang/Boolean;

    if-eq p0, v0, :cond_0

    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-eq p0, v0, :cond_0

    return-object v1

    :cond_0
    const/4 p0, 0x2

    .line 133
    invoke-virtual {p1, p0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/amazon/org/codehaus/jackson/map/util/BeanUtil;->manglePropertyName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    return-object v1
.end method

.method public static okNameForRegularGetter(Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedMethod;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, "get"

    .line 100
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    const-string v0, "getCallbacks"

    .line 108
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 109
    invoke-static {p0}, Lcom/amazon/org/codehaus/jackson/map/util/BeanUtil;->isCglibGetCallbacks(Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedMethod;)Z

    move-result p0

    if-eqz p0, :cond_1

    return-object v1

    :cond_0
    const-string v0, "getMetaClass"

    .line 112
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 116
    invoke-static {p0}, Lcom/amazon/org/codehaus/jackson/map/util/BeanUtil;->isGroovyMetaClassGetter(Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedMethod;)Z

    move-result p0

    if-eqz p0, :cond_1

    return-object v1

    :cond_1
    const/4 p0, 0x3

    .line 120
    invoke-virtual {p1, p0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/amazon/org/codehaus/jackson/map/util/BeanUtil;->manglePropertyName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    return-object v1
.end method

.method public static okNameForSetter(Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedMethod;)Ljava/lang/String;
    .locals 3

    .line 141
    invoke-virtual {p0}, Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedMethod;->getName()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "set"

    .line 142
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    const/4 v1, 0x3

    .line 143
    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/org/codehaus/jackson/map/util/BeanUtil;->manglePropertyName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    return-object v2

    :cond_0
    const-string v1, "metaClass"

    .line 147
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 149
    invoke-static {p0}, Lcom/amazon/org/codehaus/jackson/map/util/BeanUtil;->isGroovyMetaClassSetter(Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedMethod;)Z

    move-result p0

    if-eqz p0, :cond_1

    return-object v2

    :cond_1
    return-object v0

    :cond_2
    return-object v2
.end method
