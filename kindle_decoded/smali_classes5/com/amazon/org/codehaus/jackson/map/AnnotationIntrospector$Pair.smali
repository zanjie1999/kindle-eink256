.class public Lcom/amazon/org/codehaus/jackson/map/AnnotationIntrospector$Pair;
.super Lcom/amazon/org/codehaus/jackson/map/AnnotationIntrospector;
.source "AnnotationIntrospector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/org/codehaus/jackson/map/AnnotationIntrospector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Pair"
.end annotation


# instance fields
.field protected final _primary:Lcom/amazon/org/codehaus/jackson/map/AnnotationIntrospector;

.field protected final _secondary:Lcom/amazon/org/codehaus/jackson/map/AnnotationIntrospector;


# direct methods
.method public constructor <init>(Lcom/amazon/org/codehaus/jackson/map/AnnotationIntrospector;Lcom/amazon/org/codehaus/jackson/map/AnnotationIntrospector;)V
    .locals 0

    .line 890
    invoke-direct {p0}, Lcom/amazon/org/codehaus/jackson/map/AnnotationIntrospector;-><init>()V

    .line 891
    iput-object p1, p0, Lcom/amazon/org/codehaus/jackson/map/AnnotationIntrospector$Pair;->_primary:Lcom/amazon/org/codehaus/jackson/map/AnnotationIntrospector;

    .line 892
    iput-object p2, p0, Lcom/amazon/org/codehaus/jackson/map/AnnotationIntrospector$Pair;->_secondary:Lcom/amazon/org/codehaus/jackson/map/AnnotationIntrospector;

    return-void
.end method

.method public static create(Lcom/amazon/org/codehaus/jackson/map/AnnotationIntrospector;Lcom/amazon/org/codehaus/jackson/map/AnnotationIntrospector;)Lcom/amazon/org/codehaus/jackson/map/AnnotationIntrospector;
    .locals 1

    if-nez p0, :cond_0

    return-object p1

    :cond_0
    if-nez p1, :cond_1

    return-object p0

    .line 911
    :cond_1
    new-instance v0, Lcom/amazon/org/codehaus/jackson/map/AnnotationIntrospector$Pair;

    invoke-direct {v0, p0, p1}, Lcom/amazon/org/codehaus/jackson/map/AnnotationIntrospector$Pair;-><init>(Lcom/amazon/org/codehaus/jackson/map/AnnotationIntrospector;Lcom/amazon/org/codehaus/jackson/map/AnnotationIntrospector;)V

    return-object v0
.end method


# virtual methods
.method public allIntrospectors()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lcom/amazon/org/codehaus/jackson/map/AnnotationIntrospector;",
            ">;"
        }
    .end annotation

    .line 916
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0, v0}, Lcom/amazon/org/codehaus/jackson/map/AnnotationIntrospector$Pair;->allIntrospectors(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public allIntrospectors(Ljava/util/Collection;)Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/amazon/org/codehaus/jackson/map/AnnotationIntrospector;",
            ">;)",
            "Ljava/util/Collection<",
            "Lcom/amazon/org/codehaus/jackson/map/AnnotationIntrospector;",
            ">;"
        }
    .end annotation

    .line 922
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/AnnotationIntrospector$Pair;->_primary:Lcom/amazon/org/codehaus/jackson/map/AnnotationIntrospector;

    invoke-virtual {v0, p1}, Lcom/amazon/org/codehaus/jackson/map/AnnotationIntrospector;->allIntrospectors(Ljava/util/Collection;)Ljava/util/Collection;

    .line 923
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/AnnotationIntrospector$Pair;->_secondary:Lcom/amazon/org/codehaus/jackson/map/AnnotationIntrospector;

    invoke-virtual {v0, p1}, Lcom/amazon/org/codehaus/jackson/map/AnnotationIntrospector;->allIntrospectors(Ljava/util/Collection;)Ljava/util/Collection;

    return-object p1
.end method

.method public findAutoDetectVisibility(Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedClass;Lcom/amazon/org/codehaus/jackson/map/introspect/VisibilityChecker;)Lcom/amazon/org/codehaus/jackson/map/introspect/VisibilityChecker;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedClass;",
            "Lcom/amazon/org/codehaus/jackson/map/introspect/VisibilityChecker<",
            "*>;)",
            "Lcom/amazon/org/codehaus/jackson/map/introspect/VisibilityChecker<",
            "*>;"
        }
    .end annotation

    .line 1018
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/AnnotationIntrospector$Pair;->_secondary:Lcom/amazon/org/codehaus/jackson/map/AnnotationIntrospector;

    invoke-virtual {v0, p1, p2}, Lcom/amazon/org/codehaus/jackson/map/AnnotationIntrospector;->findAutoDetectVisibility(Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedClass;Lcom/amazon/org/codehaus/jackson/map/introspect/VisibilityChecker;)Lcom/amazon/org/codehaus/jackson/map/introspect/VisibilityChecker;

    move-result-object p2

    .line 1019
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/AnnotationIntrospector$Pair;->_primary:Lcom/amazon/org/codehaus/jackson/map/AnnotationIntrospector;

    invoke-virtual {v0, p1, p2}, Lcom/amazon/org/codehaus/jackson/map/AnnotationIntrospector;->findAutoDetectVisibility(Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedClass;Lcom/amazon/org/codehaus/jackson/map/introspect/VisibilityChecker;)Lcom/amazon/org/codehaus/jackson/map/introspect/VisibilityChecker;

    move-result-object p1

    return-object p1
.end method

.method public findCachability(Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedClass;)Ljava/lang/Boolean;
    .locals 1

    .line 944
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/AnnotationIntrospector$Pair;->_primary:Lcom/amazon/org/codehaus/jackson/map/AnnotationIntrospector;

    invoke-virtual {v0, p1}, Lcom/amazon/org/codehaus/jackson/map/AnnotationIntrospector;->findCachability(Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedClass;)Ljava/lang/Boolean;

    move-result-object v0

    if-nez v0, :cond_0

    .line 946
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/AnnotationIntrospector$Pair;->_secondary:Lcom/amazon/org/codehaus/jackson/map/AnnotationIntrospector;

    invoke-virtual {v0, p1}, Lcom/amazon/org/codehaus/jackson/map/AnnotationIntrospector;->findCachability(Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedClass;)Ljava/lang/Boolean;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public findContentDeserializer(Lcom/amazon/org/codehaus/jackson/map/introspect/Annotated;)Ljava/lang/Class;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/org/codehaus/jackson/map/introspect/Annotated;",
            ")",
            "Ljava/lang/Class<",
            "+",
            "Lcom/amazon/org/codehaus/jackson/map/JsonDeserializer<",
            "*>;>;"
        }
    .end annotation

    .line 1353
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/AnnotationIntrospector$Pair;->_primary:Lcom/amazon/org/codehaus/jackson/map/AnnotationIntrospector;

    invoke-virtual {v0, p1}, Lcom/amazon/org/codehaus/jackson/map/AnnotationIntrospector;->findContentDeserializer(Lcom/amazon/org/codehaus/jackson/map/introspect/Annotated;)Ljava/lang/Class;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1354
    const-class v1, Lcom/amazon/org/codehaus/jackson/map/JsonDeserializer$None;

    if-ne v0, v1, :cond_1

    .line 1355
    :cond_0
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/AnnotationIntrospector$Pair;->_secondary:Lcom/amazon/org/codehaus/jackson/map/AnnotationIntrospector;

    invoke-virtual {v0, p1}, Lcom/amazon/org/codehaus/jackson/map/AnnotationIntrospector;->findContentDeserializer(Lcom/amazon/org/codehaus/jackson/map/introspect/Annotated;)Ljava/lang/Class;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method public findContentSerializer(Lcom/amazon/org/codehaus/jackson/map/introspect/Annotated;)Ljava/lang/Class;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/org/codehaus/jackson/map/introspect/Annotated;",
            ")",
            "Ljava/lang/Class<",
            "+",
            "Lcom/amazon/org/codehaus/jackson/map/JsonSerializer<",
            "*>;>;"
        }
    .end annotation

    .line 1166
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/AnnotationIntrospector$Pair;->_primary:Lcom/amazon/org/codehaus/jackson/map/AnnotationIntrospector;

    invoke-virtual {v0, p1}, Lcom/amazon/org/codehaus/jackson/map/AnnotationIntrospector;->findContentSerializer(Lcom/amazon/org/codehaus/jackson/map/introspect/Annotated;)Ljava/lang/Class;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1167
    const-class v1, Lcom/amazon/org/codehaus/jackson/map/JsonSerializer$None;

    if-ne v0, v1, :cond_1

    .line 1168
    :cond_0
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/AnnotationIntrospector$Pair;->_secondary:Lcom/amazon/org/codehaus/jackson/map/AnnotationIntrospector;

    invoke-virtual {v0, p1}, Lcom/amazon/org/codehaus/jackson/map/AnnotationIntrospector;->findContentSerializer(Lcom/amazon/org/codehaus/jackson/map/introspect/Annotated;)Ljava/lang/Class;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method public findDeserializablePropertyName(Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedField;)Ljava/lang/String;
    .locals 2

    .line 1448
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/AnnotationIntrospector$Pair;->_primary:Lcom/amazon/org/codehaus/jackson/map/AnnotationIntrospector;

    invoke-virtual {v0, p1}, Lcom/amazon/org/codehaus/jackson/map/AnnotationIntrospector;->findDeserializablePropertyName(Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedField;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1450
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/AnnotationIntrospector$Pair;->_secondary:Lcom/amazon/org/codehaus/jackson/map/AnnotationIntrospector;

    invoke-virtual {v0, p1}, Lcom/amazon/org/codehaus/jackson/map/AnnotationIntrospector;->findDeserializablePropertyName(Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedField;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1451
    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    .line 1455
    iget-object v1, p0, Lcom/amazon/org/codehaus/jackson/map/AnnotationIntrospector$Pair;->_secondary:Lcom/amazon/org/codehaus/jackson/map/AnnotationIntrospector;

    invoke-virtual {v1, p1}, Lcom/amazon/org/codehaus/jackson/map/AnnotationIntrospector;->findDeserializablePropertyName(Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedField;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    move-object v0, p1

    :cond_1
    :goto_0
    return-object v0
.end method

.method public findDeserializationContentType(Lcom/amazon/org/codehaus/jackson/map/introspect/Annotated;Lcom/amazon/org/codehaus/jackson/type/JavaType;Ljava/lang/String;)Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/org/codehaus/jackson/map/introspect/Annotated;",
            "Lcom/amazon/org/codehaus/jackson/type/JavaType;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 1386
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/AnnotationIntrospector$Pair;->_primary:Lcom/amazon/org/codehaus/jackson/map/AnnotationIntrospector;

    invoke-virtual {v0, p1, p2, p3}, Lcom/amazon/org/codehaus/jackson/map/AnnotationIntrospector;->findDeserializationContentType(Lcom/amazon/org/codehaus/jackson/map/introspect/Annotated;Lcom/amazon/org/codehaus/jackson/type/JavaType;Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1388
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/AnnotationIntrospector$Pair;->_secondary:Lcom/amazon/org/codehaus/jackson/map/AnnotationIntrospector;

    invoke-virtual {v0, p1, p2, p3}, Lcom/amazon/org/codehaus/jackson/map/AnnotationIntrospector;->findDeserializationContentType(Lcom/amazon/org/codehaus/jackson/map/introspect/Annotated;Lcom/amazon/org/codehaus/jackson/type/JavaType;Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public findDeserializationKeyType(Lcom/amazon/org/codehaus/jackson/map/introspect/Annotated;Lcom/amazon/org/codehaus/jackson/type/JavaType;Ljava/lang/String;)Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/org/codehaus/jackson/map/introspect/Annotated;",
            "Lcom/amazon/org/codehaus/jackson/type/JavaType;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 1375
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/AnnotationIntrospector$Pair;->_primary:Lcom/amazon/org/codehaus/jackson/map/AnnotationIntrospector;

    invoke-virtual {v0, p1, p2, p3}, Lcom/amazon/org/codehaus/jackson/map/AnnotationIntrospector;->findDeserializationKeyType(Lcom/amazon/org/codehaus/jackson/map/introspect/Annotated;Lcom/amazon/org/codehaus/jackson/type/JavaType;Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1377
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/AnnotationIntrospector$Pair;->_secondary:Lcom/amazon/org/codehaus/jackson/map/AnnotationIntrospector;

    invoke-virtual {v0, p1, p2, p3}, Lcom/amazon/org/codehaus/jackson/map/AnnotationIntrospector;->findDeserializationKeyType(Lcom/amazon/org/codehaus/jackson/map/introspect/Annotated;Lcom/amazon/org/codehaus/jackson/type/JavaType;Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public findDeserializationType(Lcom/amazon/org/codehaus/jackson/map/introspect/Annotated;Lcom/amazon/org/codehaus/jackson/type/JavaType;Ljava/lang/String;)Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/org/codehaus/jackson/map/introspect/Annotated;",
            "Lcom/amazon/org/codehaus/jackson/type/JavaType;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 1364
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/AnnotationIntrospector$Pair;->_primary:Lcom/amazon/org/codehaus/jackson/map/AnnotationIntrospector;

    invoke-virtual {v0, p1, p2, p3}, Lcom/amazon/org/codehaus/jackson/map/AnnotationIntrospector;->findDeserializationType(Lcom/amazon/org/codehaus/jackson/map/introspect/Annotated;Lcom/amazon/org/codehaus/jackson/type/JavaType;Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1366
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/AnnotationIntrospector$Pair;->_secondary:Lcom/amazon/org/codehaus/jackson/map/AnnotationIntrospector;

    invoke-virtual {v0, p1, p2, p3}, Lcom/amazon/org/codehaus/jackson/map/AnnotationIntrospector;->findDeserializationType(Lcom/amazon/org/codehaus/jackson/map/introspect/Annotated;Lcom/amazon/org/codehaus/jackson/type/JavaType;Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public findDeserializer(Lcom/amazon/org/codehaus/jackson/map/introspect/Annotated;)Ljava/lang/Object;
    .locals 1

    .line 1333
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/AnnotationIntrospector$Pair;->_primary:Lcom/amazon/org/codehaus/jackson/map/AnnotationIntrospector;

    invoke-virtual {v0, p1}, Lcom/amazon/org/codehaus/jackson/map/AnnotationIntrospector;->findDeserializer(Lcom/amazon/org/codehaus/jackson/map/introspect/Annotated;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1335
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/AnnotationIntrospector$Pair;->_secondary:Lcom/amazon/org/codehaus/jackson/map/AnnotationIntrospector;

    invoke-virtual {v0, p1}, Lcom/amazon/org/codehaus/jackson/map/AnnotationIntrospector;->findDeserializer(Lcom/amazon/org/codehaus/jackson/map/introspect/Annotated;)Ljava/lang/Object;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public findEnumValue(Ljava/lang/Enum;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Enum<",
            "*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 1301
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/AnnotationIntrospector$Pair;->_primary:Lcom/amazon/org/codehaus/jackson/map/AnnotationIntrospector;

    invoke-virtual {v0, p1}, Lcom/amazon/org/codehaus/jackson/map/AnnotationIntrospector;->findEnumValue(Ljava/lang/Enum;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1303
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/AnnotationIntrospector$Pair;->_secondary:Lcom/amazon/org/codehaus/jackson/map/AnnotationIntrospector;

    invoke-virtual {v0, p1}, Lcom/amazon/org/codehaus/jackson/map/AnnotationIntrospector;->findEnumValue(Ljava/lang/Enum;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public findFilterId(Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedClass;)Ljava/lang/Object;
    .locals 1

    .line 998
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/AnnotationIntrospector$Pair;->_primary:Lcom/amazon/org/codehaus/jackson/map/AnnotationIntrospector;

    invoke-virtual {v0, p1}, Lcom/amazon/org/codehaus/jackson/map/AnnotationIntrospector;->findFilterId(Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedClass;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1000
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/AnnotationIntrospector$Pair;->_secondary:Lcom/amazon/org/codehaus/jackson/map/AnnotationIntrospector;

    invoke-virtual {v0, p1}, Lcom/amazon/org/codehaus/jackson/map/AnnotationIntrospector;->findFilterId(Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedClass;)Ljava/lang/Object;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public findGettablePropertyName(Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedMethod;)Ljava/lang/String;
    .locals 2

    .line 1277
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/AnnotationIntrospector$Pair;->_primary:Lcom/amazon/org/codehaus/jackson/map/AnnotationIntrospector;

    invoke-virtual {v0, p1}, Lcom/amazon/org/codehaus/jackson/map/AnnotationIntrospector;->findGettablePropertyName(Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedMethod;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1279
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/AnnotationIntrospector$Pair;->_secondary:Lcom/amazon/org/codehaus/jackson/map/AnnotationIntrospector;

    invoke-virtual {v0, p1}, Lcom/amazon/org/codehaus/jackson/map/AnnotationIntrospector;->findGettablePropertyName(Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedMethod;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1280
    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    .line 1284
    iget-object v1, p0, Lcom/amazon/org/codehaus/jackson/map/AnnotationIntrospector$Pair;->_secondary:Lcom/amazon/org/codehaus/jackson/map/AnnotationIntrospector;

    invoke-virtual {v1, p1}, Lcom/amazon/org/codehaus/jackson/map/AnnotationIntrospector;->findGettablePropertyName(Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedMethod;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    move-object v0, p1

    :cond_1
    :goto_0
    return-object v0
.end method

.method public findIgnoreUnknownProperties(Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedClass;)Ljava/lang/Boolean;
    .locals 1

    .line 978
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/AnnotationIntrospector$Pair;->_primary:Lcom/amazon/org/codehaus/jackson/map/AnnotationIntrospector;

    invoke-virtual {v0, p1}, Lcom/amazon/org/codehaus/jackson/map/AnnotationIntrospector;->findIgnoreUnknownProperties(Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedClass;)Ljava/lang/Boolean;

    move-result-object v0

    if-nez v0, :cond_0

    .line 980
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/AnnotationIntrospector$Pair;->_secondary:Lcom/amazon/org/codehaus/jackson/map/AnnotationIntrospector;

    invoke-virtual {v0, p1}, Lcom/amazon/org/codehaus/jackson/map/AnnotationIntrospector;->findIgnoreUnknownProperties(Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedClass;)Ljava/lang/Boolean;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public findInjectableValueId(Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedMember;)Ljava/lang/Object;
    .locals 1

    .line 1109
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/AnnotationIntrospector$Pair;->_primary:Lcom/amazon/org/codehaus/jackson/map/AnnotationIntrospector;

    invoke-virtual {v0, p1}, Lcom/amazon/org/codehaus/jackson/map/AnnotationIntrospector;->findInjectableValueId(Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedMember;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1111
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/AnnotationIntrospector$Pair;->_secondary:Lcom/amazon/org/codehaus/jackson/map/AnnotationIntrospector;

    invoke-virtual {v0, p1}, Lcom/amazon/org/codehaus/jackson/map/AnnotationIntrospector;->findInjectableValueId(Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedMember;)Ljava/lang/Object;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public findKeyDeserializer(Lcom/amazon/org/codehaus/jackson/map/introspect/Annotated;)Ljava/lang/Class;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/org/codehaus/jackson/map/introspect/Annotated;",
            ")",
            "Ljava/lang/Class<",
            "+",
            "Lcom/amazon/org/codehaus/jackson/map/KeyDeserializer;",
            ">;"
        }
    .end annotation

    .line 1343
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/AnnotationIntrospector$Pair;->_primary:Lcom/amazon/org/codehaus/jackson/map/AnnotationIntrospector;

    invoke-virtual {v0, p1}, Lcom/amazon/org/codehaus/jackson/map/AnnotationIntrospector;->findKeyDeserializer(Lcom/amazon/org/codehaus/jackson/map/introspect/Annotated;)Ljava/lang/Class;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1344
    const-class v1, Lcom/amazon/org/codehaus/jackson/map/KeyDeserializer$None;

    if-ne v0, v1, :cond_1

    .line 1345
    :cond_0
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/AnnotationIntrospector$Pair;->_secondary:Lcom/amazon/org/codehaus/jackson/map/AnnotationIntrospector;

    invoke-virtual {v0, p1}, Lcom/amazon/org/codehaus/jackson/map/AnnotationIntrospector;->findKeyDeserializer(Lcom/amazon/org/codehaus/jackson/map/introspect/Annotated;)Ljava/lang/Class;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method public findKeySerializer(Lcom/amazon/org/codehaus/jackson/map/introspect/Annotated;)Ljava/lang/Class;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/org/codehaus/jackson/map/introspect/Annotated;",
            ")",
            "Ljava/lang/Class<",
            "+",
            "Lcom/amazon/org/codehaus/jackson/map/JsonSerializer<",
            "*>;>;"
        }
    .end annotation

    .line 1156
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/AnnotationIntrospector$Pair;->_primary:Lcom/amazon/org/codehaus/jackson/map/AnnotationIntrospector;

    invoke-virtual {v0, p1}, Lcom/amazon/org/codehaus/jackson/map/AnnotationIntrospector;->findKeySerializer(Lcom/amazon/org/codehaus/jackson/map/introspect/Annotated;)Ljava/lang/Class;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1157
    const-class v1, Lcom/amazon/org/codehaus/jackson/map/JsonSerializer$None;

    if-ne v0, v1, :cond_1

    .line 1158
    :cond_0
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/AnnotationIntrospector$Pair;->_secondary:Lcom/amazon/org/codehaus/jackson/map/AnnotationIntrospector;

    invoke-virtual {v0, p1}, Lcom/amazon/org/codehaus/jackson/map/AnnotationIntrospector;->findKeySerializer(Lcom/amazon/org/codehaus/jackson/map/introspect/Annotated;)Ljava/lang/Class;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method public findPropertiesToIgnore(Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedClass;)[Ljava/lang/String;
    .locals 1

    .line 968
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/AnnotationIntrospector$Pair;->_primary:Lcom/amazon/org/codehaus/jackson/map/AnnotationIntrospector;

    invoke-virtual {v0, p1}, Lcom/amazon/org/codehaus/jackson/map/AnnotationIntrospector;->findPropertiesToIgnore(Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedClass;)[Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 970
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/AnnotationIntrospector$Pair;->_secondary:Lcom/amazon/org/codehaus/jackson/map/AnnotationIntrospector;

    invoke-virtual {v0, p1}, Lcom/amazon/org/codehaus/jackson/map/AnnotationIntrospector;->findPropertiesToIgnore(Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedClass;)[Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public findPropertyContentTypeResolver(Lcom/amazon/org/codehaus/jackson/map/MapperConfig;Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedMember;Lcom/amazon/org/codehaus/jackson/type/JavaType;)Lcom/amazon/org/codehaus/jackson/map/jsontype/TypeResolverBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/org/codehaus/jackson/map/MapperConfig<",
            "*>;",
            "Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedMember;",
            "Lcom/amazon/org/codehaus/jackson/type/JavaType;",
            ")",
            "Lcom/amazon/org/codehaus/jackson/map/jsontype/TypeResolverBuilder<",
            "*>;"
        }
    .end annotation

    .line 1054
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/AnnotationIntrospector$Pair;->_primary:Lcom/amazon/org/codehaus/jackson/map/AnnotationIntrospector;

    invoke-virtual {v0, p1, p2, p3}, Lcom/amazon/org/codehaus/jackson/map/AnnotationIntrospector;->findPropertyContentTypeResolver(Lcom/amazon/org/codehaus/jackson/map/MapperConfig;Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedMember;Lcom/amazon/org/codehaus/jackson/type/JavaType;)Lcom/amazon/org/codehaus/jackson/map/jsontype/TypeResolverBuilder;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1056
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/AnnotationIntrospector$Pair;->_secondary:Lcom/amazon/org/codehaus/jackson/map/AnnotationIntrospector;

    invoke-virtual {v0, p1, p2, p3}, Lcom/amazon/org/codehaus/jackson/map/AnnotationIntrospector;->findPropertyContentTypeResolver(Lcom/amazon/org/codehaus/jackson/map/MapperConfig;Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedMember;Lcom/amazon/org/codehaus/jackson/type/JavaType;)Lcom/amazon/org/codehaus/jackson/map/jsontype/TypeResolverBuilder;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public findPropertyNameForParam(Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedParameter;)Ljava/lang/String;
    .locals 1

    .line 1468
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/AnnotationIntrospector$Pair;->_primary:Lcom/amazon/org/codehaus/jackson/map/AnnotationIntrospector;

    invoke-virtual {v0, p1}, Lcom/amazon/org/codehaus/jackson/map/AnnotationIntrospector;->findPropertyNameForParam(Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedParameter;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1470
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/AnnotationIntrospector$Pair;->_secondary:Lcom/amazon/org/codehaus/jackson/map/AnnotationIntrospector;

    invoke-virtual {v0, p1}, Lcom/amazon/org/codehaus/jackson/map/AnnotationIntrospector;->findPropertyNameForParam(Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedParameter;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public findPropertyTypeResolver(Lcom/amazon/org/codehaus/jackson/map/MapperConfig;Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedMember;Lcom/amazon/org/codehaus/jackson/type/JavaType;)Lcom/amazon/org/codehaus/jackson/map/jsontype/TypeResolverBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/org/codehaus/jackson/map/MapperConfig<",
            "*>;",
            "Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedMember;",
            "Lcom/amazon/org/codehaus/jackson/type/JavaType;",
            ")",
            "Lcom/amazon/org/codehaus/jackson/map/jsontype/TypeResolverBuilder<",
            "*>;"
        }
    .end annotation

    .line 1043
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/AnnotationIntrospector$Pair;->_primary:Lcom/amazon/org/codehaus/jackson/map/AnnotationIntrospector;

    invoke-virtual {v0, p1, p2, p3}, Lcom/amazon/org/codehaus/jackson/map/AnnotationIntrospector;->findPropertyTypeResolver(Lcom/amazon/org/codehaus/jackson/map/MapperConfig;Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedMember;Lcom/amazon/org/codehaus/jackson/type/JavaType;)Lcom/amazon/org/codehaus/jackson/map/jsontype/TypeResolverBuilder;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1045
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/AnnotationIntrospector$Pair;->_secondary:Lcom/amazon/org/codehaus/jackson/map/AnnotationIntrospector;

    invoke-virtual {v0, p1, p2, p3}, Lcom/amazon/org/codehaus/jackson/map/AnnotationIntrospector;->findPropertyTypeResolver(Lcom/amazon/org/codehaus/jackson/map/MapperConfig;Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedMember;Lcom/amazon/org/codehaus/jackson/type/JavaType;)Lcom/amazon/org/codehaus/jackson/map/jsontype/TypeResolverBuilder;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public findReferenceType(Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedMember;)Lcom/amazon/org/codehaus/jackson/map/AnnotationIntrospector$ReferenceProperty;
    .locals 1

    .line 1089
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/AnnotationIntrospector$Pair;->_primary:Lcom/amazon/org/codehaus/jackson/map/AnnotationIntrospector;

    invoke-virtual {v0, p1}, Lcom/amazon/org/codehaus/jackson/map/AnnotationIntrospector;->findReferenceType(Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedMember;)Lcom/amazon/org/codehaus/jackson/map/AnnotationIntrospector$ReferenceProperty;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1091
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/AnnotationIntrospector$Pair;->_secondary:Lcom/amazon/org/codehaus/jackson/map/AnnotationIntrospector;

    invoke-virtual {v0, p1}, Lcom/amazon/org/codehaus/jackson/map/AnnotationIntrospector;->findReferenceType(Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedMember;)Lcom/amazon/org/codehaus/jackson/map/AnnotationIntrospector$ReferenceProperty;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public findRootName(Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedClass;)Ljava/lang/String;
    .locals 2

    .line 954
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/AnnotationIntrospector$Pair;->_primary:Lcom/amazon/org/codehaus/jackson/map/AnnotationIntrospector;

    invoke-virtual {v0, p1}, Lcom/amazon/org/codehaus/jackson/map/AnnotationIntrospector;->findRootName(Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedClass;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 956
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/AnnotationIntrospector$Pair;->_secondary:Lcom/amazon/org/codehaus/jackson/map/AnnotationIntrospector;

    invoke-virtual {v0, p1}, Lcom/amazon/org/codehaus/jackson/map/AnnotationIntrospector;->findRootName(Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedClass;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 957
    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1

    return-object v0

    .line 961
    :cond_1
    iget-object v1, p0, Lcom/amazon/org/codehaus/jackson/map/AnnotationIntrospector$Pair;->_secondary:Lcom/amazon/org/codehaus/jackson/map/AnnotationIntrospector;

    invoke-virtual {v1, p1}, Lcom/amazon/org/codehaus/jackson/map/AnnotationIntrospector;->findRootName(Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedClass;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    move-object v0, p1

    :goto_0
    return-object v0
.end method

.method public findSerializablePropertyName(Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedField;)Ljava/lang/String;
    .locals 2

    .line 1313
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/AnnotationIntrospector$Pair;->_primary:Lcom/amazon/org/codehaus/jackson/map/AnnotationIntrospector;

    invoke-virtual {v0, p1}, Lcom/amazon/org/codehaus/jackson/map/AnnotationIntrospector;->findSerializablePropertyName(Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedField;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1315
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/AnnotationIntrospector$Pair;->_secondary:Lcom/amazon/org/codehaus/jackson/map/AnnotationIntrospector;

    invoke-virtual {v0, p1}, Lcom/amazon/org/codehaus/jackson/map/AnnotationIntrospector;->findSerializablePropertyName(Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedField;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1316
    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    .line 1320
    iget-object v1, p0, Lcom/amazon/org/codehaus/jackson/map/AnnotationIntrospector$Pair;->_secondary:Lcom/amazon/org/codehaus/jackson/map/AnnotationIntrospector;

    invoke-virtual {v1, p1}, Lcom/amazon/org/codehaus/jackson/map/AnnotationIntrospector;->findSerializablePropertyName(Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedField;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    move-object v0, p1

    :cond_1
    :goto_0
    return-object v0
.end method

.method public findSerializationContentType(Lcom/amazon/org/codehaus/jackson/map/introspect/Annotated;Lcom/amazon/org/codehaus/jackson/type/JavaType;)Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/org/codehaus/jackson/map/introspect/Annotated;",
            "Lcom/amazon/org/codehaus/jackson/type/JavaType;",
            ")",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 1216
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/AnnotationIntrospector$Pair;->_primary:Lcom/amazon/org/codehaus/jackson/map/AnnotationIntrospector;

    invoke-virtual {v0, p1, p2}, Lcom/amazon/org/codehaus/jackson/map/AnnotationIntrospector;->findSerializationContentType(Lcom/amazon/org/codehaus/jackson/map/introspect/Annotated;Lcom/amazon/org/codehaus/jackson/type/JavaType;)Ljava/lang/Class;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1218
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/AnnotationIntrospector$Pair;->_secondary:Lcom/amazon/org/codehaus/jackson/map/AnnotationIntrospector;

    invoke-virtual {v0, p1, p2}, Lcom/amazon/org/codehaus/jackson/map/AnnotationIntrospector;->findSerializationContentType(Lcom/amazon/org/codehaus/jackson/map/introspect/Annotated;Lcom/amazon/org/codehaus/jackson/type/JavaType;)Ljava/lang/Class;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public findSerializationInclusion(Lcom/amazon/org/codehaus/jackson/map/introspect/Annotated;Lcom/amazon/org/codehaus/jackson/map/annotate/JsonSerialize$Inclusion;)Lcom/amazon/org/codehaus/jackson/map/annotate/JsonSerialize$Inclusion;
    .locals 1

    .line 1188
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/AnnotationIntrospector$Pair;->_secondary:Lcom/amazon/org/codehaus/jackson/map/AnnotationIntrospector;

    invoke-virtual {v0, p1, p2}, Lcom/amazon/org/codehaus/jackson/map/AnnotationIntrospector;->findSerializationInclusion(Lcom/amazon/org/codehaus/jackson/map/introspect/Annotated;Lcom/amazon/org/codehaus/jackson/map/annotate/JsonSerialize$Inclusion;)Lcom/amazon/org/codehaus/jackson/map/annotate/JsonSerialize$Inclusion;

    move-result-object p2

    .line 1189
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/AnnotationIntrospector$Pair;->_primary:Lcom/amazon/org/codehaus/jackson/map/AnnotationIntrospector;

    invoke-virtual {v0, p1, p2}, Lcom/amazon/org/codehaus/jackson/map/AnnotationIntrospector;->findSerializationInclusion(Lcom/amazon/org/codehaus/jackson/map/introspect/Annotated;Lcom/amazon/org/codehaus/jackson/map/annotate/JsonSerialize$Inclusion;)Lcom/amazon/org/codehaus/jackson/map/annotate/JsonSerialize$Inclusion;

    move-result-object p1

    return-object p1
.end method

.method public findSerializationKeyType(Lcom/amazon/org/codehaus/jackson/map/introspect/Annotated;Lcom/amazon/org/codehaus/jackson/type/JavaType;)Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/org/codehaus/jackson/map/introspect/Annotated;",
            "Lcom/amazon/org/codehaus/jackson/type/JavaType;",
            ")",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 1206
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/AnnotationIntrospector$Pair;->_primary:Lcom/amazon/org/codehaus/jackson/map/AnnotationIntrospector;

    invoke-virtual {v0, p1, p2}, Lcom/amazon/org/codehaus/jackson/map/AnnotationIntrospector;->findSerializationKeyType(Lcom/amazon/org/codehaus/jackson/map/introspect/Annotated;Lcom/amazon/org/codehaus/jackson/type/JavaType;)Ljava/lang/Class;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1208
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/AnnotationIntrospector$Pair;->_secondary:Lcom/amazon/org/codehaus/jackson/map/AnnotationIntrospector;

    invoke-virtual {v0, p1, p2}, Lcom/amazon/org/codehaus/jackson/map/AnnotationIntrospector;->findSerializationKeyType(Lcom/amazon/org/codehaus/jackson/map/introspect/Annotated;Lcom/amazon/org/codehaus/jackson/type/JavaType;)Ljava/lang/Class;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public findSerializationPropertyOrder(Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedClass;)[Ljava/lang/String;
    .locals 1

    .line 1251
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/AnnotationIntrospector$Pair;->_primary:Lcom/amazon/org/codehaus/jackson/map/AnnotationIntrospector;

    invoke-virtual {v0, p1}, Lcom/amazon/org/codehaus/jackson/map/AnnotationIntrospector;->findSerializationPropertyOrder(Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedClass;)[Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1253
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/AnnotationIntrospector$Pair;->_secondary:Lcom/amazon/org/codehaus/jackson/map/AnnotationIntrospector;

    invoke-virtual {v0, p1}, Lcom/amazon/org/codehaus/jackson/map/AnnotationIntrospector;->findSerializationPropertyOrder(Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedClass;)[Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public findSerializationSortAlphabetically(Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedClass;)Ljava/lang/Boolean;
    .locals 1

    .line 1265
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/AnnotationIntrospector$Pair;->_primary:Lcom/amazon/org/codehaus/jackson/map/AnnotationIntrospector;

    invoke-virtual {v0, p1}, Lcom/amazon/org/codehaus/jackson/map/AnnotationIntrospector;->findSerializationSortAlphabetically(Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedClass;)Ljava/lang/Boolean;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1267
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/AnnotationIntrospector$Pair;->_secondary:Lcom/amazon/org/codehaus/jackson/map/AnnotationIntrospector;

    invoke-virtual {v0, p1}, Lcom/amazon/org/codehaus/jackson/map/AnnotationIntrospector;->findSerializationSortAlphabetically(Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedClass;)Ljava/lang/Boolean;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public findSerializationType(Lcom/amazon/org/codehaus/jackson/map/introspect/Annotated;)Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/org/codehaus/jackson/map/introspect/Annotated;",
            ")",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 1196
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/AnnotationIntrospector$Pair;->_primary:Lcom/amazon/org/codehaus/jackson/map/AnnotationIntrospector;

    invoke-virtual {v0, p1}, Lcom/amazon/org/codehaus/jackson/map/AnnotationIntrospector;->findSerializationType(Lcom/amazon/org/codehaus/jackson/map/introspect/Annotated;)Ljava/lang/Class;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1198
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/AnnotationIntrospector$Pair;->_secondary:Lcom/amazon/org/codehaus/jackson/map/AnnotationIntrospector;

    invoke-virtual {v0, p1}, Lcom/amazon/org/codehaus/jackson/map/AnnotationIntrospector;->findSerializationType(Lcom/amazon/org/codehaus/jackson/map/introspect/Annotated;)Ljava/lang/Class;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public findSerializationTyping(Lcom/amazon/org/codehaus/jackson/map/introspect/Annotated;)Lcom/amazon/org/codehaus/jackson/map/annotate/JsonSerialize$Typing;
    .locals 1

    .line 1226
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/AnnotationIntrospector$Pair;->_primary:Lcom/amazon/org/codehaus/jackson/map/AnnotationIntrospector;

    invoke-virtual {v0, p1}, Lcom/amazon/org/codehaus/jackson/map/AnnotationIntrospector;->findSerializationTyping(Lcom/amazon/org/codehaus/jackson/map/introspect/Annotated;)Lcom/amazon/org/codehaus/jackson/map/annotate/JsonSerialize$Typing;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1228
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/AnnotationIntrospector$Pair;->_secondary:Lcom/amazon/org/codehaus/jackson/map/AnnotationIntrospector;

    invoke-virtual {v0, p1}, Lcom/amazon/org/codehaus/jackson/map/AnnotationIntrospector;->findSerializationTyping(Lcom/amazon/org/codehaus/jackson/map/introspect/Annotated;)Lcom/amazon/org/codehaus/jackson/map/annotate/JsonSerialize$Typing;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public findSerializationViews(Lcom/amazon/org/codehaus/jackson/map/introspect/Annotated;)[Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/org/codehaus/jackson/map/introspect/Annotated;",
            ")[",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 1240
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/AnnotationIntrospector$Pair;->_primary:Lcom/amazon/org/codehaus/jackson/map/AnnotationIntrospector;

    invoke-virtual {v0, p1}, Lcom/amazon/org/codehaus/jackson/map/AnnotationIntrospector;->findSerializationViews(Lcom/amazon/org/codehaus/jackson/map/introspect/Annotated;)[Ljava/lang/Class;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1242
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/AnnotationIntrospector$Pair;->_secondary:Lcom/amazon/org/codehaus/jackson/map/AnnotationIntrospector;

    invoke-virtual {v0, p1}, Lcom/amazon/org/codehaus/jackson/map/AnnotationIntrospector;->findSerializationViews(Lcom/amazon/org/codehaus/jackson/map/introspect/Annotated;)[Ljava/lang/Class;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public findSerializer(Lcom/amazon/org/codehaus/jackson/map/introspect/Annotated;)Ljava/lang/Object;
    .locals 1

    .line 1146
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/AnnotationIntrospector$Pair;->_primary:Lcom/amazon/org/codehaus/jackson/map/AnnotationIntrospector;

    invoke-virtual {v0, p1}, Lcom/amazon/org/codehaus/jackson/map/AnnotationIntrospector;->findSerializer(Lcom/amazon/org/codehaus/jackson/map/introspect/Annotated;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1148
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/AnnotationIntrospector$Pair;->_secondary:Lcom/amazon/org/codehaus/jackson/map/AnnotationIntrospector;

    invoke-virtual {v0, p1}, Lcom/amazon/org/codehaus/jackson/map/AnnotationIntrospector;->findSerializer(Lcom/amazon/org/codehaus/jackson/map/introspect/Annotated;)Ljava/lang/Object;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public findSettablePropertyName(Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedMethod;)Ljava/lang/String;
    .locals 2

    .line 1410
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/AnnotationIntrospector$Pair;->_primary:Lcom/amazon/org/codehaus/jackson/map/AnnotationIntrospector;

    invoke-virtual {v0, p1}, Lcom/amazon/org/codehaus/jackson/map/AnnotationIntrospector;->findSettablePropertyName(Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedMethod;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1412
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/AnnotationIntrospector$Pair;->_secondary:Lcom/amazon/org/codehaus/jackson/map/AnnotationIntrospector;

    invoke-virtual {v0, p1}, Lcom/amazon/org/codehaus/jackson/map/AnnotationIntrospector;->findSettablePropertyName(Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedMethod;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1413
    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    .line 1417
    iget-object v1, p0, Lcom/amazon/org/codehaus/jackson/map/AnnotationIntrospector$Pair;->_secondary:Lcom/amazon/org/codehaus/jackson/map/AnnotationIntrospector;

    invoke-virtual {v1, p1}, Lcom/amazon/org/codehaus/jackson/map/AnnotationIntrospector;->findSettablePropertyName(Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedMethod;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    move-object v0, p1

    :cond_1
    :goto_0
    return-object v0
.end method

.method public findSubtypes(Lcom/amazon/org/codehaus/jackson/map/introspect/Annotated;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/org/codehaus/jackson/map/introspect/Annotated;",
            ")",
            "Ljava/util/List<",
            "Lcom/amazon/org/codehaus/jackson/map/jsontype/NamedType;",
            ">;"
        }
    .end annotation

    .line 1064
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/AnnotationIntrospector$Pair;->_primary:Lcom/amazon/org/codehaus/jackson/map/AnnotationIntrospector;

    invoke-virtual {v0, p1}, Lcom/amazon/org/codehaus/jackson/map/AnnotationIntrospector;->findSubtypes(Lcom/amazon/org/codehaus/jackson/map/introspect/Annotated;)Ljava/util/List;

    move-result-object v0

    .line 1065
    iget-object v1, p0, Lcom/amazon/org/codehaus/jackson/map/AnnotationIntrospector$Pair;->_secondary:Lcom/amazon/org/codehaus/jackson/map/AnnotationIntrospector;

    invoke-virtual {v1, p1}, Lcom/amazon/org/codehaus/jackson/map/AnnotationIntrospector;->findSubtypes(Lcom/amazon/org/codehaus/jackson/map/introspect/Annotated;)Ljava/util/List;

    move-result-object p1

    if-eqz v0, :cond_3

    .line 1066
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    if-eqz p1, :cond_2

    .line 1067
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    .line 1068
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    add-int/2addr v2, v3

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 1069
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1070
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    return-object v1

    :cond_2
    :goto_0
    return-object v0

    :cond_3
    :goto_1
    return-object p1
.end method

.method public findTypeName(Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedClass;)Ljava/lang/String;
    .locals 2

    .line 1077
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/AnnotationIntrospector$Pair;->_primary:Lcom/amazon/org/codehaus/jackson/map/AnnotationIntrospector;

    invoke-virtual {v0, p1}, Lcom/amazon/org/codehaus/jackson/map/AnnotationIntrospector;->findTypeName(Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedClass;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1078
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    .line 1079
    :cond_0
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/AnnotationIntrospector$Pair;->_secondary:Lcom/amazon/org/codehaus/jackson/map/AnnotationIntrospector;

    invoke-virtual {v0, p1}, Lcom/amazon/org/codehaus/jackson/map/AnnotationIntrospector;->findTypeName(Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedClass;)Ljava/lang/String;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method public findTypeResolver(Lcom/amazon/org/codehaus/jackson/map/MapperConfig;Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedClass;Lcom/amazon/org/codehaus/jackson/type/JavaType;)Lcom/amazon/org/codehaus/jackson/map/jsontype/TypeResolverBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/org/codehaus/jackson/map/MapperConfig<",
            "*>;",
            "Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedClass;",
            "Lcom/amazon/org/codehaus/jackson/type/JavaType;",
            ")",
            "Lcom/amazon/org/codehaus/jackson/map/jsontype/TypeResolverBuilder<",
            "*>;"
        }
    .end annotation

    .line 1032
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/AnnotationIntrospector$Pair;->_primary:Lcom/amazon/org/codehaus/jackson/map/AnnotationIntrospector;

    invoke-virtual {v0, p1, p2, p3}, Lcom/amazon/org/codehaus/jackson/map/AnnotationIntrospector;->findTypeResolver(Lcom/amazon/org/codehaus/jackson/map/MapperConfig;Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedClass;Lcom/amazon/org/codehaus/jackson/type/JavaType;)Lcom/amazon/org/codehaus/jackson/map/jsontype/TypeResolverBuilder;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1034
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/AnnotationIntrospector$Pair;->_secondary:Lcom/amazon/org/codehaus/jackson/map/AnnotationIntrospector;

    invoke-virtual {v0, p1, p2, p3}, Lcom/amazon/org/codehaus/jackson/map/AnnotationIntrospector;->findTypeResolver(Lcom/amazon/org/codehaus/jackson/map/MapperConfig;Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedClass;Lcom/amazon/org/codehaus/jackson/type/JavaType;)Lcom/amazon/org/codehaus/jackson/map/jsontype/TypeResolverBuilder;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public findValueInstantiator(Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedClass;)Ljava/lang/Object;
    .locals 1

    .line 1398
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/AnnotationIntrospector$Pair;->_primary:Lcom/amazon/org/codehaus/jackson/map/AnnotationIntrospector;

    invoke-virtual {v0, p1}, Lcom/amazon/org/codehaus/jackson/map/AnnotationIntrospector;->findValueInstantiator(Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedClass;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1400
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/AnnotationIntrospector$Pair;->_secondary:Lcom/amazon/org/codehaus/jackson/map/AnnotationIntrospector;

    invoke-virtual {v0, p1}, Lcom/amazon/org/codehaus/jackson/map/AnnotationIntrospector;->findValueInstantiator(Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedClass;)Ljava/lang/Object;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public hasAnyGetterAnnotation(Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedMethod;)Z
    .locals 1

    .line 1434
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/AnnotationIntrospector$Pair;->_primary:Lcom/amazon/org/codehaus/jackson/map/AnnotationIntrospector;

    invoke-virtual {v0, p1}, Lcom/amazon/org/codehaus/jackson/map/AnnotationIntrospector;->hasAnyGetterAnnotation(Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedMethod;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/AnnotationIntrospector$Pair;->_secondary:Lcom/amazon/org/codehaus/jackson/map/AnnotationIntrospector;

    invoke-virtual {v0, p1}, Lcom/amazon/org/codehaus/jackson/map/AnnotationIntrospector;->hasAnyGetterAnnotation(Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedMethod;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public hasAnySetterAnnotation(Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedMethod;)Z
    .locals 1

    .line 1428
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/AnnotationIntrospector$Pair;->_primary:Lcom/amazon/org/codehaus/jackson/map/AnnotationIntrospector;

    invoke-virtual {v0, p1}, Lcom/amazon/org/codehaus/jackson/map/AnnotationIntrospector;->hasAnySetterAnnotation(Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedMethod;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/AnnotationIntrospector$Pair;->_secondary:Lcom/amazon/org/codehaus/jackson/map/AnnotationIntrospector;

    invoke-virtual {v0, p1}, Lcom/amazon/org/codehaus/jackson/map/AnnotationIntrospector;->hasAnySetterAnnotation(Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedMethod;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public hasAsValueAnnotation(Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedMethod;)Z
    .locals 1

    .line 1295
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/AnnotationIntrospector$Pair;->_primary:Lcom/amazon/org/codehaus/jackson/map/AnnotationIntrospector;

    invoke-virtual {v0, p1}, Lcom/amazon/org/codehaus/jackson/map/AnnotationIntrospector;->hasAsValueAnnotation(Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedMethod;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/AnnotationIntrospector$Pair;->_secondary:Lcom/amazon/org/codehaus/jackson/map/AnnotationIntrospector;

    invoke-virtual {v0, p1}, Lcom/amazon/org/codehaus/jackson/map/AnnotationIntrospector;->hasAsValueAnnotation(Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedMethod;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public hasCreatorAnnotation(Lcom/amazon/org/codehaus/jackson/map/introspect/Annotated;)Z
    .locals 1

    .line 1440
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/AnnotationIntrospector$Pair;->_primary:Lcom/amazon/org/codehaus/jackson/map/AnnotationIntrospector;

    invoke-virtual {v0, p1}, Lcom/amazon/org/codehaus/jackson/map/AnnotationIntrospector;->hasCreatorAnnotation(Lcom/amazon/org/codehaus/jackson/map/introspect/Annotated;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/AnnotationIntrospector$Pair;->_secondary:Lcom/amazon/org/codehaus/jackson/map/AnnotationIntrospector;

    invoke-virtual {v0, p1}, Lcom/amazon/org/codehaus/jackson/map/AnnotationIntrospector;->hasCreatorAnnotation(Lcom/amazon/org/codehaus/jackson/map/introspect/Annotated;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public hasIgnoreMarker(Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedMember;)Z
    .locals 1

    .line 1118
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/AnnotationIntrospector$Pair;->_primary:Lcom/amazon/org/codehaus/jackson/map/AnnotationIntrospector;

    invoke-virtual {v0, p1}, Lcom/amazon/org/codehaus/jackson/map/AnnotationIntrospector;->hasIgnoreMarker(Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedMember;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/AnnotationIntrospector$Pair;->_secondary:Lcom/amazon/org/codehaus/jackson/map/AnnotationIntrospector;

    invoke-virtual {v0, p1}, Lcom/amazon/org/codehaus/jackson/map/AnnotationIntrospector;->hasIgnoreMarker(Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedMember;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public isHandled(Ljava/lang/annotation/Annotation;)Z
    .locals 1

    .line 932
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/AnnotationIntrospector$Pair;->_primary:Lcom/amazon/org/codehaus/jackson/map/AnnotationIntrospector;

    invoke-virtual {v0, p1}, Lcom/amazon/org/codehaus/jackson/map/AnnotationIntrospector;->isHandled(Ljava/lang/annotation/Annotation;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/AnnotationIntrospector$Pair;->_secondary:Lcom/amazon/org/codehaus/jackson/map/AnnotationIntrospector;

    invoke-virtual {v0, p1}, Lcom/amazon/org/codehaus/jackson/map/AnnotationIntrospector;->isHandled(Ljava/lang/annotation/Annotation;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public isIgnorableConstructor(Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedConstructor;)Z
    .locals 1

    .line 1130
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/AnnotationIntrospector$Pair;->_primary:Lcom/amazon/org/codehaus/jackson/map/AnnotationIntrospector;

    invoke-virtual {v0, p1}, Lcom/amazon/org/codehaus/jackson/map/AnnotationIntrospector;->isIgnorableConstructor(Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedConstructor;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/AnnotationIntrospector$Pair;->_secondary:Lcom/amazon/org/codehaus/jackson/map/AnnotationIntrospector;

    invoke-virtual {v0, p1}, Lcom/amazon/org/codehaus/jackson/map/AnnotationIntrospector;->isIgnorableConstructor(Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedConstructor;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public isIgnorableField(Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedField;)Z
    .locals 1

    .line 1138
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/AnnotationIntrospector$Pair;->_primary:Lcom/amazon/org/codehaus/jackson/map/AnnotationIntrospector;

    invoke-virtual {v0, p1}, Lcom/amazon/org/codehaus/jackson/map/AnnotationIntrospector;->isIgnorableField(Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedField;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/AnnotationIntrospector$Pair;->_secondary:Lcom/amazon/org/codehaus/jackson/map/AnnotationIntrospector;

    invoke-virtual {v0, p1}, Lcom/amazon/org/codehaus/jackson/map/AnnotationIntrospector;->isIgnorableField(Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedField;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public isIgnorableMethod(Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedMethod;)Z
    .locals 1

    .line 1125
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/AnnotationIntrospector$Pair;->_primary:Lcom/amazon/org/codehaus/jackson/map/AnnotationIntrospector;

    invoke-virtual {v0, p1}, Lcom/amazon/org/codehaus/jackson/map/AnnotationIntrospector;->isIgnorableMethod(Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedMethod;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/AnnotationIntrospector$Pair;->_secondary:Lcom/amazon/org/codehaus/jackson/map/AnnotationIntrospector;

    invoke-virtual {v0, p1}, Lcom/amazon/org/codehaus/jackson/map/AnnotationIntrospector;->isIgnorableMethod(Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedMethod;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public isIgnorableType(Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedClass;)Ljava/lang/Boolean;
    .locals 1

    .line 988
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/AnnotationIntrospector$Pair;->_primary:Lcom/amazon/org/codehaus/jackson/map/AnnotationIntrospector;

    invoke-virtual {v0, p1}, Lcom/amazon/org/codehaus/jackson/map/AnnotationIntrospector;->isIgnorableType(Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedClass;)Ljava/lang/Boolean;

    move-result-object v0

    if-nez v0, :cond_0

    .line 990
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/AnnotationIntrospector$Pair;->_secondary:Lcom/amazon/org/codehaus/jackson/map/AnnotationIntrospector;

    invoke-virtual {v0, p1}, Lcom/amazon/org/codehaus/jackson/map/AnnotationIntrospector;->isIgnorableType(Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedClass;)Ljava/lang/Boolean;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public shouldUnwrapProperty(Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedMember;)Ljava/lang/Boolean;
    .locals 1

    .line 1099
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/AnnotationIntrospector$Pair;->_primary:Lcom/amazon/org/codehaus/jackson/map/AnnotationIntrospector;

    invoke-virtual {v0, p1}, Lcom/amazon/org/codehaus/jackson/map/AnnotationIntrospector;->shouldUnwrapProperty(Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedMember;)Ljava/lang/Boolean;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1101
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/AnnotationIntrospector$Pair;->_secondary:Lcom/amazon/org/codehaus/jackson/map/AnnotationIntrospector;

    invoke-virtual {v0, p1}, Lcom/amazon/org/codehaus/jackson/map/AnnotationIntrospector;->shouldUnwrapProperty(Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedMember;)Ljava/lang/Boolean;

    move-result-object v0

    :cond_0
    return-object v0
.end method
