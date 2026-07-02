.class public final Lcom/amazon/org/codehaus/jackson/map/type/TypeFactory;
.super Ljava/lang/Object;
.source "TypeFactory.java"


# static fields
.field private static final NO_TYPES:[Lcom/amazon/org/codehaus/jackson/type/JavaType;

.field public static final instance:Lcom/amazon/org/codehaus/jackson/map/type/TypeFactory;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# instance fields
.field protected _cachedArrayListType:Lcom/amazon/org/codehaus/jackson/map/type/HierarchicType;

.field protected _cachedHashMapType:Lcom/amazon/org/codehaus/jackson/map/type/HierarchicType;

.field protected final _modifiers:[Lcom/amazon/org/codehaus/jackson/map/type/TypeModifier;

.field protected final _parser:Lcom/amazon/org/codehaus/jackson/map/type/TypeParser;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 51
    new-instance v0, Lcom/amazon/org/codehaus/jackson/map/type/TypeFactory;

    invoke-direct {v0}, Lcom/amazon/org/codehaus/jackson/map/type/TypeFactory;-><init>()V

    sput-object v0, Lcom/amazon/org/codehaus/jackson/map/type/TypeFactory;->instance:Lcom/amazon/org/codehaus/jackson/map/type/TypeFactory;

    const/4 v0, 0x0

    new-array v0, v0, [Lcom/amazon/org/codehaus/jackson/type/JavaType;

    .line 53
    sput-object v0, Lcom/amazon/org/codehaus/jackson/map/type/TypeFactory;->NO_TYPES:[Lcom/amazon/org/codehaus/jackson/type/JavaType;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    new-instance v0, Lcom/amazon/org/codehaus/jackson/map/type/TypeParser;

    invoke-direct {v0, p0}, Lcom/amazon/org/codehaus/jackson/map/type/TypeParser;-><init>(Lcom/amazon/org/codehaus/jackson/map/type/TypeFactory;)V

    iput-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/type/TypeFactory;->_parser:Lcom/amazon/org/codehaus/jackson/map/type/TypeParser;

    const/4 v0, 0x0

    .line 95
    iput-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/type/TypeFactory;->_modifiers:[Lcom/amazon/org/codehaus/jackson/map/type/TypeModifier;

    return-void
.end method

.method protected constructor <init>(Lcom/amazon/org/codehaus/jackson/map/type/TypeParser;[Lcom/amazon/org/codehaus/jackson/map/type/TypeModifier;)V
    .locals 0

    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 99
    iput-object p1, p0, Lcom/amazon/org/codehaus/jackson/map/type/TypeFactory;->_parser:Lcom/amazon/org/codehaus/jackson/map/type/TypeParser;

    .line 100
    iput-object p2, p0, Lcom/amazon/org/codehaus/jackson/map/type/TypeFactory;->_modifiers:[Lcom/amazon/org/codehaus/jackson/map/type/TypeModifier;

    return-void
.end method

.method private _collectionType(Ljava/lang/Class;)Lcom/amazon/org/codehaus/jackson/type/JavaType;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lcom/amazon/org/codehaus/jackson/type/JavaType;"
        }
    .end annotation

    .line 1009
    const-class v0, Ljava/util/Collection;

    invoke-virtual {p0, p1, v0}, Lcom/amazon/org/codehaus/jackson/map/type/TypeFactory;->findTypeParameters(Ljava/lang/Class;Ljava/lang/Class;)[Lcom/amazon/org/codehaus/jackson/type/JavaType;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1012
    invoke-virtual {p0}, Lcom/amazon/org/codehaus/jackson/map/type/TypeFactory;->_unknownType()Lcom/amazon/org/codehaus/jackson/type/JavaType;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/amazon/org/codehaus/jackson/map/type/CollectionType;->construct(Ljava/lang/Class;Lcom/amazon/org/codehaus/jackson/type/JavaType;)Lcom/amazon/org/codehaus/jackson/map/type/CollectionType;

    move-result-object p1

    return-object p1

    .line 1015
    :cond_0
    array-length v1, v0

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    const/4 v1, 0x0

    .line 1018
    aget-object v0, v0, v1

    invoke-static {p1, v0}, Lcom/amazon/org/codehaus/jackson/map/type/CollectionType;->construct(Ljava/lang/Class;Lcom/amazon/org/codehaus/jackson/type/JavaType;)Lcom/amazon/org/codehaus/jackson/map/type/CollectionType;

    move-result-object p1

    return-object p1

    .line 1016
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Strange Collection type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ": can not determine type parameters"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private _mapType(Ljava/lang/Class;)Lcom/amazon/org/codehaus/jackson/type/JavaType;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lcom/amazon/org/codehaus/jackson/type/JavaType;"
        }
    .end annotation

    .line 995
    const-class v0, Ljava/util/Map;

    invoke-virtual {p0, p1, v0}, Lcom/amazon/org/codehaus/jackson/map/type/TypeFactory;->findTypeParameters(Ljava/lang/Class;Ljava/lang/Class;)[Lcom/amazon/org/codehaus/jackson/type/JavaType;

    move-result-object v0

    if-nez v0, :cond_0

    .line 998
    invoke-virtual {p0}, Lcom/amazon/org/codehaus/jackson/map/type/TypeFactory;->_unknownType()Lcom/amazon/org/codehaus/jackson/type/JavaType;

    move-result-object v0

    invoke-virtual {p0}, Lcom/amazon/org/codehaus/jackson/map/type/TypeFactory;->_unknownType()Lcom/amazon/org/codehaus/jackson/type/JavaType;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/amazon/org/codehaus/jackson/map/type/MapType;->construct(Ljava/lang/Class;Lcom/amazon/org/codehaus/jackson/type/JavaType;Lcom/amazon/org/codehaus/jackson/type/JavaType;)Lcom/amazon/org/codehaus/jackson/map/type/MapType;

    move-result-object p1

    return-object p1

    .line 1001
    :cond_0
    array-length v1, v0

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    const/4 v1, 0x0

    .line 1004
    aget-object v1, v0, v1

    const/4 v2, 0x1

    aget-object v0, v0, v2

    invoke-static {p1, v1, v0}, Lcom/amazon/org/codehaus/jackson/map/type/MapType;->construct(Ljava/lang/Class;Lcom/amazon/org/codehaus/jackson/type/JavaType;Lcom/amazon/org/codehaus/jackson/type/JavaType;)Lcom/amazon/org/codehaus/jackson/map/type/MapType;

    move-result-object p1

    return-object p1

    .line 1002
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Strange Map type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ": can not determine type parameters"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static arrayType(Lcom/amazon/org/codehaus/jackson/type/JavaType;)Lcom/amazon/org/codehaus/jackson/type/JavaType;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 183
    sget-object v0, Lcom/amazon/org/codehaus/jackson/map/type/TypeFactory;->instance:Lcom/amazon/org/codehaus/jackson/map/type/TypeFactory;

    invoke-virtual {v0, p0}, Lcom/amazon/org/codehaus/jackson/map/type/TypeFactory;->constructArrayType(Lcom/amazon/org/codehaus/jackson/type/JavaType;)Lcom/amazon/org/codehaus/jackson/map/type/ArrayType;

    move-result-object p0

    return-object p0
.end method

.method public static arrayType(Ljava/lang/Class;)Lcom/amazon/org/codehaus/jackson/type/JavaType;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lcom/amazon/org/codehaus/jackson/type/JavaType;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 178
    sget-object v0, Lcom/amazon/org/codehaus/jackson/map/type/TypeFactory;->instance:Lcom/amazon/org/codehaus/jackson/map/type/TypeFactory;

    invoke-virtual {v0, p0}, Lcom/amazon/org/codehaus/jackson/map/type/TypeFactory;->constructType(Ljava/lang/reflect/Type;)Lcom/amazon/org/codehaus/jackson/type/JavaType;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/amazon/org/codehaus/jackson/map/type/TypeFactory;->constructArrayType(Lcom/amazon/org/codehaus/jackson/type/JavaType;)Lcom/amazon/org/codehaus/jackson/map/type/ArrayType;

    move-result-object p0

    return-object p0
.end method

.method public static collectionType(Ljava/lang/Class;Lcom/amazon/org/codehaus/jackson/type/JavaType;)Lcom/amazon/org/codehaus/jackson/type/JavaType;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Ljava/util/Collection;",
            ">;",
            "Lcom/amazon/org/codehaus/jackson/type/JavaType;",
            ")",
            "Lcom/amazon/org/codehaus/jackson/type/JavaType;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 193
    sget-object v0, Lcom/amazon/org/codehaus/jackson/map/type/TypeFactory;->instance:Lcom/amazon/org/codehaus/jackson/map/type/TypeFactory;

    invoke-virtual {v0, p0, p1}, Lcom/amazon/org/codehaus/jackson/map/type/TypeFactory;->constructCollectionType(Ljava/lang/Class;Lcom/amazon/org/codehaus/jackson/type/JavaType;)Lcom/amazon/org/codehaus/jackson/map/type/CollectionType;

    move-result-object p0

    return-object p0
.end method

.method public static collectionType(Ljava/lang/Class;Ljava/lang/Class;)Lcom/amazon/org/codehaus/jackson/type/JavaType;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Ljava/util/Collection;",
            ">;",
            "Ljava/lang/Class<",
            "*>;)",
            "Lcom/amazon/org/codehaus/jackson/type/JavaType;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 188
    sget-object v0, Lcom/amazon/org/codehaus/jackson/map/type/TypeFactory;->instance:Lcom/amazon/org/codehaus/jackson/map/type/TypeFactory;

    invoke-virtual {v0, p1}, Lcom/amazon/org/codehaus/jackson/map/type/TypeFactory;->constructType(Ljava/lang/reflect/Type;)Lcom/amazon/org/codehaus/jackson/type/JavaType;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Lcom/amazon/org/codehaus/jackson/map/type/TypeFactory;->constructCollectionType(Ljava/lang/Class;Lcom/amazon/org/codehaus/jackson/type/JavaType;)Lcom/amazon/org/codehaus/jackson/map/type/CollectionType;

    move-result-object p0

    return-object p0
.end method

.method public static defaultInstance()Lcom/amazon/org/codehaus/jackson/map/type/TypeFactory;
    .locals 1

    .line 118
    sget-object v0, Lcom/amazon/org/codehaus/jackson/map/type/TypeFactory;->instance:Lcom/amazon/org/codehaus/jackson/map/type/TypeFactory;

    return-object v0
.end method

.method public static fastSimpleType(Ljava/lang/Class;)Lcom/amazon/org/codehaus/jackson/type/JavaType;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lcom/amazon/org/codehaus/jackson/type/JavaType;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 228
    sget-object v0, Lcom/amazon/org/codehaus/jackson/map/type/TypeFactory;->instance:Lcom/amazon/org/codehaus/jackson/map/type/TypeFactory;

    invoke-virtual {v0, p0}, Lcom/amazon/org/codehaus/jackson/map/type/TypeFactory;->uncheckedSimpleType(Ljava/lang/Class;)Lcom/amazon/org/codehaus/jackson/type/JavaType;

    move-result-object p0

    return-object p0
.end method

.method public static findParameterTypes(Lcom/amazon/org/codehaus/jackson/type/JavaType;Ljava/lang/Class;)[Lcom/amazon/org/codehaus/jackson/type/JavaType;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/org/codehaus/jackson/type/JavaType;",
            "Ljava/lang/Class<",
            "*>;)[",
            "Lcom/amazon/org/codehaus/jackson/type/JavaType;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 243
    sget-object v0, Lcom/amazon/org/codehaus/jackson/map/type/TypeFactory;->instance:Lcom/amazon/org/codehaus/jackson/map/type/TypeFactory;

    invoke-virtual {v0, p0, p1}, Lcom/amazon/org/codehaus/jackson/map/type/TypeFactory;->findTypeParameters(Lcom/amazon/org/codehaus/jackson/type/JavaType;Ljava/lang/Class;)[Lcom/amazon/org/codehaus/jackson/type/JavaType;

    move-result-object p0

    return-object p0
.end method

.method public static findParameterTypes(Ljava/lang/Class;Ljava/lang/Class;)[Lcom/amazon/org/codehaus/jackson/type/JavaType;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Class<",
            "*>;)[",
            "Lcom/amazon/org/codehaus/jackson/type/JavaType;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 233
    sget-object v0, Lcom/amazon/org/codehaus/jackson/map/type/TypeFactory;->instance:Lcom/amazon/org/codehaus/jackson/map/type/TypeFactory;

    invoke-virtual {v0, p0, p1}, Lcom/amazon/org/codehaus/jackson/map/type/TypeFactory;->findTypeParameters(Ljava/lang/Class;Ljava/lang/Class;)[Lcom/amazon/org/codehaus/jackson/type/JavaType;

    move-result-object p0

    return-object p0
.end method

.method public static findParameterTypes(Ljava/lang/Class;Ljava/lang/Class;Lcom/amazon/org/codehaus/jackson/map/type/TypeBindings;)[Lcom/amazon/org/codehaus/jackson/type/JavaType;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/amazon/org/codehaus/jackson/map/type/TypeBindings;",
            ")[",
            "Lcom/amazon/org/codehaus/jackson/type/JavaType;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 238
    sget-object v0, Lcom/amazon/org/codehaus/jackson/map/type/TypeFactory;->instance:Lcom/amazon/org/codehaus/jackson/map/type/TypeFactory;

    invoke-virtual {v0, p0, p1, p2}, Lcom/amazon/org/codehaus/jackson/map/type/TypeFactory;->findTypeParameters(Ljava/lang/Class;Ljava/lang/Class;Lcom/amazon/org/codehaus/jackson/map/type/TypeBindings;)[Lcom/amazon/org/codehaus/jackson/type/JavaType;

    move-result-object p0

    return-object p0
.end method

.method public static fromCanonical(Ljava/lang/String;)Lcom/amazon/org/codehaus/jackson/type/JavaType;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 218
    sget-object v0, Lcom/amazon/org/codehaus/jackson/map/type/TypeFactory;->instance:Lcom/amazon/org/codehaus/jackson/map/type/TypeFactory;

    invoke-virtual {v0, p0}, Lcom/amazon/org/codehaus/jackson/map/type/TypeFactory;->constructFromCanonical(Ljava/lang/String;)Lcom/amazon/org/codehaus/jackson/type/JavaType;

    move-result-object p0

    return-object p0
.end method

.method public static fromClass(Ljava/lang/Class;)Lcom/amazon/org/codehaus/jackson/type/JavaType;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lcom/amazon/org/codehaus/jackson/type/JavaType;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 266
    sget-object v0, Lcom/amazon/org/codehaus/jackson/map/type/TypeFactory;->instance:Lcom/amazon/org/codehaus/jackson/map/type/TypeFactory;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/amazon/org/codehaus/jackson/map/type/TypeFactory;->_fromClass(Ljava/lang/Class;Lcom/amazon/org/codehaus/jackson/map/type/TypeBindings;)Lcom/amazon/org/codehaus/jackson/type/JavaType;

    move-result-object p0

    return-object p0
.end method

.method public static fromType(Ljava/lang/reflect/Type;)Lcom/amazon/org/codehaus/jackson/type/JavaType;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 293
    sget-object v0, Lcom/amazon/org/codehaus/jackson/map/type/TypeFactory;->instance:Lcom/amazon/org/codehaus/jackson/map/type/TypeFactory;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/amazon/org/codehaus/jackson/map/type/TypeFactory;->_constructType(Ljava/lang/reflect/Type;Lcom/amazon/org/codehaus/jackson/map/type/TypeBindings;)Lcom/amazon/org/codehaus/jackson/type/JavaType;

    move-result-object p0

    return-object p0
.end method

.method public static fromTypeReference(Lcom/amazon/org/codehaus/jackson/type/TypeReference;)Lcom/amazon/org/codehaus/jackson/type/JavaType;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/org/codehaus/jackson/type/TypeReference<",
            "*>;)",
            "Lcom/amazon/org/codehaus/jackson/type/JavaType;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 280
    invoke-virtual {p0}, Lcom/amazon/org/codehaus/jackson/type/TypeReference;->getType()Ljava/lang/reflect/Type;

    move-result-object p0

    invoke-static {p0}, Lcom/amazon/org/codehaus/jackson/map/type/TypeFactory;->type(Ljava/lang/reflect/Type;)Lcom/amazon/org/codehaus/jackson/type/JavaType;

    move-result-object p0

    return-object p0
.end method

.method public static mapType(Ljava/lang/Class;Lcom/amazon/org/codehaus/jackson/type/JavaType;Lcom/amazon/org/codehaus/jackson/type/JavaType;)Lcom/amazon/org/codehaus/jackson/type/JavaType;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Ljava/util/Map;",
            ">;",
            "Lcom/amazon/org/codehaus/jackson/type/JavaType;",
            "Lcom/amazon/org/codehaus/jackson/type/JavaType;",
            ")",
            "Lcom/amazon/org/codehaus/jackson/type/JavaType;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 204
    sget-object v0, Lcom/amazon/org/codehaus/jackson/map/type/TypeFactory;->instance:Lcom/amazon/org/codehaus/jackson/map/type/TypeFactory;

    invoke-virtual {v0, p0, p1, p2}, Lcom/amazon/org/codehaus/jackson/map/type/TypeFactory;->constructMapType(Ljava/lang/Class;Lcom/amazon/org/codehaus/jackson/type/JavaType;Lcom/amazon/org/codehaus/jackson/type/JavaType;)Lcom/amazon/org/codehaus/jackson/map/type/MapType;

    move-result-object p0

    return-object p0
.end method

.method public static mapType(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;)Lcom/amazon/org/codehaus/jackson/type/JavaType;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Ljava/util/Map;",
            ">;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Class<",
            "*>;)",
            "Lcom/amazon/org/codehaus/jackson/type/JavaType;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 199
    sget-object v0, Lcom/amazon/org/codehaus/jackson/map/type/TypeFactory;->instance:Lcom/amazon/org/codehaus/jackson/map/type/TypeFactory;

    invoke-static {p1}, Lcom/amazon/org/codehaus/jackson/map/type/TypeFactory;->type(Ljava/lang/reflect/Type;)Lcom/amazon/org/codehaus/jackson/type/JavaType;

    move-result-object p1

    sget-object v1, Lcom/amazon/org/codehaus/jackson/map/type/TypeFactory;->instance:Lcom/amazon/org/codehaus/jackson/map/type/TypeFactory;

    invoke-virtual {v1, p2}, Lcom/amazon/org/codehaus/jackson/map/type/TypeFactory;->constructType(Ljava/lang/reflect/Type;)Lcom/amazon/org/codehaus/jackson/type/JavaType;

    move-result-object p2

    invoke-virtual {v0, p0, p1, p2}, Lcom/amazon/org/codehaus/jackson/map/type/TypeFactory;->constructMapType(Ljava/lang/Class;Lcom/amazon/org/codehaus/jackson/type/JavaType;Lcom/amazon/org/codehaus/jackson/type/JavaType;)Lcom/amazon/org/codehaus/jackson/map/type/MapType;

    move-result-object p0

    return-object p0
.end method

.method public static varargs parametricType(Ljava/lang/Class;[Lcom/amazon/org/codehaus/jackson/type/JavaType;)Lcom/amazon/org/codehaus/jackson/type/JavaType;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;[",
            "Lcom/amazon/org/codehaus/jackson/type/JavaType;",
            ")",
            "Lcom/amazon/org/codehaus/jackson/type/JavaType;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 214
    sget-object v0, Lcom/amazon/org/codehaus/jackson/map/type/TypeFactory;->instance:Lcom/amazon/org/codehaus/jackson/map/type/TypeFactory;

    invoke-virtual {v0, p0, p1}, Lcom/amazon/org/codehaus/jackson/map/type/TypeFactory;->constructParametricType(Ljava/lang/Class;[Lcom/amazon/org/codehaus/jackson/type/JavaType;)Lcom/amazon/org/codehaus/jackson/type/JavaType;

    move-result-object p0

    return-object p0
.end method

.method public static varargs parametricType(Ljava/lang/Class;[Ljava/lang/Class;)Lcom/amazon/org/codehaus/jackson/type/JavaType;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;[",
            "Ljava/lang/Class<",
            "*>;)",
            "Lcom/amazon/org/codehaus/jackson/type/JavaType;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 209
    sget-object v0, Lcom/amazon/org/codehaus/jackson/map/type/TypeFactory;->instance:Lcom/amazon/org/codehaus/jackson/map/type/TypeFactory;

    invoke-virtual {v0, p0, p1}, Lcom/amazon/org/codehaus/jackson/map/type/TypeFactory;->constructParametricType(Ljava/lang/Class;[Ljava/lang/Class;)Lcom/amazon/org/codehaus/jackson/type/JavaType;

    move-result-object p0

    return-object p0
.end method

.method public static rawClass(Ljava/lang/reflect/Type;)Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            ")",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 138
    instance-of v0, p0, Ljava/lang/Class;

    if-eqz v0, :cond_0

    .line 139
    check-cast p0, Ljava/lang/Class;

    return-object p0

    .line 142
    :cond_0
    invoke-static {}, Lcom/amazon/org/codehaus/jackson/map/type/TypeFactory;->defaultInstance()Lcom/amazon/org/codehaus/jackson/map/type/TypeFactory;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/amazon/org/codehaus/jackson/map/type/TypeFactory;->constructType(Ljava/lang/reflect/Type;)Lcom/amazon/org/codehaus/jackson/type/JavaType;

    move-result-object p0

    invoke-virtual {p0}, Lcom/amazon/org/codehaus/jackson/type/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object p0

    return-object p0
.end method

.method public static specialize(Lcom/amazon/org/codehaus/jackson/type/JavaType;Ljava/lang/Class;)Lcom/amazon/org/codehaus/jackson/type/JavaType;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/org/codehaus/jackson/type/JavaType;",
            "Ljava/lang/Class<",
            "*>;)",
            "Lcom/amazon/org/codehaus/jackson/type/JavaType;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 223
    sget-object v0, Lcom/amazon/org/codehaus/jackson/map/type/TypeFactory;->instance:Lcom/amazon/org/codehaus/jackson/map/type/TypeFactory;

    invoke-virtual {v0, p0, p1}, Lcom/amazon/org/codehaus/jackson/map/type/TypeFactory;->constructSpecializedType(Lcom/amazon/org/codehaus/jackson/type/JavaType;Ljava/lang/Class;)Lcom/amazon/org/codehaus/jackson/type/JavaType;

    move-result-object p0

    return-object p0
.end method

.method public static type(Lcom/amazon/org/codehaus/jackson/type/TypeReference;)Lcom/amazon/org/codehaus/jackson/type/JavaType;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/org/codehaus/jackson/type/TypeReference<",
            "*>;)",
            "Lcom/amazon/org/codehaus/jackson/type/JavaType;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 173
    sget-object v0, Lcom/amazon/org/codehaus/jackson/map/type/TypeFactory;->instance:Lcom/amazon/org/codehaus/jackson/map/type/TypeFactory;

    invoke-virtual {p0}, Lcom/amazon/org/codehaus/jackson/type/TypeReference;->getType()Ljava/lang/reflect/Type;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/amazon/org/codehaus/jackson/map/type/TypeFactory;->constructType(Ljava/lang/reflect/Type;)Lcom/amazon/org/codehaus/jackson/type/JavaType;

    move-result-object p0

    return-object p0
.end method

.method public static type(Ljava/lang/reflect/Type;)Lcom/amazon/org/codehaus/jackson/type/JavaType;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 153
    sget-object v0, Lcom/amazon/org/codehaus/jackson/map/type/TypeFactory;->instance:Lcom/amazon/org/codehaus/jackson/map/type/TypeFactory;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/amazon/org/codehaus/jackson/map/type/TypeFactory;->_constructType(Ljava/lang/reflect/Type;Lcom/amazon/org/codehaus/jackson/map/type/TypeBindings;)Lcom/amazon/org/codehaus/jackson/type/JavaType;

    move-result-object p0

    return-object p0
.end method

.method public static type(Ljava/lang/reflect/Type;Lcom/amazon/org/codehaus/jackson/map/type/TypeBindings;)Lcom/amazon/org/codehaus/jackson/type/JavaType;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 168
    sget-object v0, Lcom/amazon/org/codehaus/jackson/map/type/TypeFactory;->instance:Lcom/amazon/org/codehaus/jackson/map/type/TypeFactory;

    invoke-virtual {v0, p0, p1}, Lcom/amazon/org/codehaus/jackson/map/type/TypeFactory;->_constructType(Ljava/lang/reflect/Type;Lcom/amazon/org/codehaus/jackson/map/type/TypeBindings;)Lcom/amazon/org/codehaus/jackson/type/JavaType;

    move-result-object p0

    return-object p0
.end method

.method public static type(Ljava/lang/reflect/Type;Lcom/amazon/org/codehaus/jackson/type/JavaType;)Lcom/amazon/org/codehaus/jackson/type/JavaType;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 163
    sget-object v0, Lcom/amazon/org/codehaus/jackson/map/type/TypeFactory;->instance:Lcom/amazon/org/codehaus/jackson/map/type/TypeFactory;

    invoke-virtual {v0, p0, p1}, Lcom/amazon/org/codehaus/jackson/map/type/TypeFactory;->constructType(Ljava/lang/reflect/Type;Lcom/amazon/org/codehaus/jackson/type/JavaType;)Lcom/amazon/org/codehaus/jackson/type/JavaType;

    move-result-object p0

    return-object p0
.end method

.method public static type(Ljava/lang/reflect/Type;Ljava/lang/Class;)Lcom/amazon/org/codehaus/jackson/type/JavaType;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/Class<",
            "*>;)",
            "Lcom/amazon/org/codehaus/jackson/type/JavaType;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 158
    sget-object v0, Lcom/amazon/org/codehaus/jackson/map/type/TypeFactory;->instance:Lcom/amazon/org/codehaus/jackson/map/type/TypeFactory;

    invoke-virtual {v0, p0, p1}, Lcom/amazon/org/codehaus/jackson/map/type/TypeFactory;->constructType(Ljava/lang/reflect/Type;Ljava/lang/Class;)Lcom/amazon/org/codehaus/jackson/type/JavaType;

    move-result-object p0

    return-object p0
.end method

.method public static unknownType()Lcom/amazon/org/codehaus/jackson/type/JavaType;
    .locals 1

    .line 134
    invoke-static {}, Lcom/amazon/org/codehaus/jackson/map/type/TypeFactory;->defaultInstance()Lcom/amazon/org/codehaus/jackson/map/type/TypeFactory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/org/codehaus/jackson/map/type/TypeFactory;->_unknownType()Lcom/amazon/org/codehaus/jackson/type/JavaType;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected declared-synchronized _arrayListSuperInterfaceChain(Lcom/amazon/org/codehaus/jackson/map/type/HierarchicType;)Lcom/amazon/org/codehaus/jackson/map/type/HierarchicType;
    .locals 2

    monitor-enter p0

    .line 1155
    :try_start_0
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/type/TypeFactory;->_cachedArrayListType:Lcom/amazon/org/codehaus/jackson/map/type/HierarchicType;

    if-nez v0, :cond_0

    .line 1156
    invoke-virtual {p1}, Lcom/amazon/org/codehaus/jackson/map/type/HierarchicType;->deepCloneWithoutSubtype()Lcom/amazon/org/codehaus/jackson/map/type/HierarchicType;

    move-result-object v0

    .line 1157
    const-class v1, Ljava/util/List;

    invoke-virtual {p0, v0, v1}, Lcom/amazon/org/codehaus/jackson/map/type/TypeFactory;->_doFindSuperInterfaceChain(Lcom/amazon/org/codehaus/jackson/map/type/HierarchicType;Ljava/lang/Class;)Lcom/amazon/org/codehaus/jackson/map/type/HierarchicType;

    .line 1158
    invoke-virtual {v0}, Lcom/amazon/org/codehaus/jackson/map/type/HierarchicType;->getSuperType()Lcom/amazon/org/codehaus/jackson/map/type/HierarchicType;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/type/TypeFactory;->_cachedArrayListType:Lcom/amazon/org/codehaus/jackson/map/type/HierarchicType;

    .line 1160
    :cond_0
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/type/TypeFactory;->_cachedArrayListType:Lcom/amazon/org/codehaus/jackson/map/type/HierarchicType;

    invoke-virtual {v0}, Lcom/amazon/org/codehaus/jackson/map/type/HierarchicType;->deepCloneWithoutSubtype()Lcom/amazon/org/codehaus/jackson/map/type/HierarchicType;

    move-result-object v0

    .line 1161
    invoke-virtual {p1, v0}, Lcom/amazon/org/codehaus/jackson/map/type/HierarchicType;->setSuperType(Lcom/amazon/org/codehaus/jackson/map/type/HierarchicType;)V

    .line 1162
    invoke-virtual {v0, p1}, Lcom/amazon/org/codehaus/jackson/map/type/HierarchicType;->setSubType(Lcom/amazon/org/codehaus/jackson/map/type/HierarchicType;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1163
    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public _constructType(Ljava/lang/reflect/Type;Lcom/amazon/org/codehaus/jackson/map/type/TypeBindings;)Lcom/amazon/org/codehaus/jackson/type/JavaType;
    .locals 5

    .line 475
    instance-of v0, p1, Ljava/lang/Class;

    if-eqz v0, :cond_1

    .line 476
    move-object v0, p1

    check-cast v0, Ljava/lang/Class;

    if-nez p2, :cond_0

    .line 481
    new-instance p2, Lcom/amazon/org/codehaus/jackson/map/type/TypeBindings;

    invoke-direct {p2, p0, v0}, Lcom/amazon/org/codehaus/jackson/map/type/TypeBindings;-><init>(Lcom/amazon/org/codehaus/jackson/map/type/TypeFactory;Ljava/lang/Class;)V

    .line 483
    :cond_0
    invoke-virtual {p0, v0, p2}, Lcom/amazon/org/codehaus/jackson/map/type/TypeFactory;->_fromClass(Ljava/lang/Class;Lcom/amazon/org/codehaus/jackson/map/type/TypeBindings;)Lcom/amazon/org/codehaus/jackson/type/JavaType;

    move-result-object v0

    goto :goto_0

    .line 486
    :cond_1
    instance-of v0, p1, Ljava/lang/reflect/ParameterizedType;

    if-eqz v0, :cond_2

    .line 487
    move-object v0, p1

    check-cast v0, Ljava/lang/reflect/ParameterizedType;

    invoke-virtual {p0, v0, p2}, Lcom/amazon/org/codehaus/jackson/map/type/TypeFactory;->_fromParamType(Ljava/lang/reflect/ParameterizedType;Lcom/amazon/org/codehaus/jackson/map/type/TypeBindings;)Lcom/amazon/org/codehaus/jackson/type/JavaType;

    move-result-object v0

    goto :goto_0

    .line 489
    :cond_2
    instance-of v0, p1, Ljava/lang/reflect/GenericArrayType;

    if-eqz v0, :cond_3

    .line 490
    move-object v0, p1

    check-cast v0, Ljava/lang/reflect/GenericArrayType;

    invoke-virtual {p0, v0, p2}, Lcom/amazon/org/codehaus/jackson/map/type/TypeFactory;->_fromArrayType(Ljava/lang/reflect/GenericArrayType;Lcom/amazon/org/codehaus/jackson/map/type/TypeBindings;)Lcom/amazon/org/codehaus/jackson/type/JavaType;

    move-result-object v0

    goto :goto_0

    .line 492
    :cond_3
    instance-of v0, p1, Ljava/lang/reflect/TypeVariable;

    if-eqz v0, :cond_4

    .line 493
    move-object v0, p1

    check-cast v0, Ljava/lang/reflect/TypeVariable;

    invoke-virtual {p0, v0, p2}, Lcom/amazon/org/codehaus/jackson/map/type/TypeFactory;->_fromVariable(Ljava/lang/reflect/TypeVariable;Lcom/amazon/org/codehaus/jackson/map/type/TypeBindings;)Lcom/amazon/org/codehaus/jackson/type/JavaType;

    move-result-object v0

    goto :goto_0

    .line 495
    :cond_4
    instance-of v0, p1, Ljava/lang/reflect/WildcardType;

    if-eqz v0, :cond_6

    .line 496
    move-object v0, p1

    check-cast v0, Ljava/lang/reflect/WildcardType;

    invoke-virtual {p0, v0, p2}, Lcom/amazon/org/codehaus/jackson/map/type/TypeFactory;->_fromWildcard(Ljava/lang/reflect/WildcardType;Lcom/amazon/org/codehaus/jackson/map/type/TypeBindings;)Lcom/amazon/org/codehaus/jackson/type/JavaType;

    move-result-object v0

    .line 505
    :goto_0
    iget-object v1, p0, Lcom/amazon/org/codehaus/jackson/map/type/TypeFactory;->_modifiers:[Lcom/amazon/org/codehaus/jackson/map/type/TypeModifier;

    if-eqz v1, :cond_5

    invoke-virtual {v0}, Lcom/amazon/org/codehaus/jackson/type/JavaType;->isContainerType()Z

    move-result v1

    if-nez v1, :cond_5

    .line 506
    iget-object v1, p0, Lcom/amazon/org/codehaus/jackson/map/type/TypeFactory;->_modifiers:[Lcom/amazon/org/codehaus/jackson/map/type/TypeModifier;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v2, :cond_5

    aget-object v4, v1, v3

    .line 507
    invoke-virtual {v4, v0, p1, p2, p0}, Lcom/amazon/org/codehaus/jackson/map/type/TypeModifier;->modifyType(Lcom/amazon/org/codehaus/jackson/type/JavaType;Ljava/lang/reflect/Type;Lcom/amazon/org/codehaus/jackson/map/type/TypeBindings;Lcom/amazon/org/codehaus/jackson/map/type/TypeFactory;)Lcom/amazon/org/codehaus/jackson/type/JavaType;

    move-result-object v0

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_5
    return-object v0

    .line 499
    :cond_6
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unrecognized Type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method protected _doFindSuperInterfaceChain(Lcom/amazon/org/codehaus/jackson/map/type/HierarchicType;Ljava/lang/Class;)Lcom/amazon/org/codehaus/jackson/map/type/HierarchicType;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/org/codehaus/jackson/map/type/HierarchicType;",
            "Ljava/lang/Class<",
            "*>;)",
            "Lcom/amazon/org/codehaus/jackson/map/type/HierarchicType;"
        }
    .end annotation

    .line 1113
    invoke-virtual {p1}, Lcom/amazon/org/codehaus/jackson/map/type/HierarchicType;->getRawClass()Ljava/lang/Class;

    move-result-object v0

    .line 1114
    invoke-virtual {v0}, Ljava/lang/Class;->getGenericInterfaces()[Ljava/lang/reflect/Type;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 1118
    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    .line 1119
    invoke-virtual {p0, v4, p2}, Lcom/amazon/org/codehaus/jackson/map/type/TypeFactory;->_findSuperInterfaceChain(Ljava/lang/reflect/Type;Ljava/lang/Class;)Lcom/amazon/org/codehaus/jackson/map/type/HierarchicType;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 1121
    invoke-virtual {v4, p1}, Lcom/amazon/org/codehaus/jackson/map/type/HierarchicType;->setSubType(Lcom/amazon/org/codehaus/jackson/map/type/HierarchicType;)V

    .line 1122
    invoke-virtual {p1, v4}, Lcom/amazon/org/codehaus/jackson/map/type/HierarchicType;->setSuperType(Lcom/amazon/org/codehaus/jackson/map/type/HierarchicType;)V

    return-object p1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1128
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Class;->getGenericSuperclass()Ljava/lang/reflect/Type;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1130
    invoke-virtual {p0, v0, p2}, Lcom/amazon/org/codehaus/jackson/map/type/TypeFactory;->_findSuperInterfaceChain(Ljava/lang/reflect/Type;Ljava/lang/Class;)Lcom/amazon/org/codehaus/jackson/map/type/HierarchicType;

    move-result-object p2

    if-eqz p2, :cond_2

    .line 1132
    invoke-virtual {p2, p1}, Lcom/amazon/org/codehaus/jackson/map/type/HierarchicType;->setSubType(Lcom/amazon/org/codehaus/jackson/map/type/HierarchicType;)V

    .line 1133
    invoke-virtual {p1, p2}, Lcom/amazon/org/codehaus/jackson/map/type/HierarchicType;->setSuperType(Lcom/amazon/org/codehaus/jackson/map/type/HierarchicType;)V

    return-object p1

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method

.method protected _findSuperClassChain(Ljava/lang/reflect/Type;Ljava/lang/Class;)Lcom/amazon/org/codehaus/jackson/map/type/HierarchicType;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/Class<",
            "*>;)",
            "Lcom/amazon/org/codehaus/jackson/map/type/HierarchicType;"
        }
    .end annotation

    .line 1069
    new-instance v0, Lcom/amazon/org/codehaus/jackson/map/type/HierarchicType;

    invoke-direct {v0, p1}, Lcom/amazon/org/codehaus/jackson/map/type/HierarchicType;-><init>(Ljava/lang/reflect/Type;)V

    .line 1070
    invoke-virtual {v0}, Lcom/amazon/org/codehaus/jackson/map/type/HierarchicType;->getRawClass()Ljava/lang/Class;

    move-result-object p1

    if-ne p1, p2, :cond_0

    return-object v0

    .line 1075
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Class;->getGenericSuperclass()Ljava/lang/reflect/Type;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 1077
    invoke-virtual {p0, p1, p2}, Lcom/amazon/org/codehaus/jackson/map/type/TypeFactory;->_findSuperClassChain(Ljava/lang/reflect/Type;Ljava/lang/Class;)Lcom/amazon/org/codehaus/jackson/map/type/HierarchicType;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 1079
    invoke-virtual {p1, v0}, Lcom/amazon/org/codehaus/jackson/map/type/HierarchicType;->setSubType(Lcom/amazon/org/codehaus/jackson/map/type/HierarchicType;)V

    .line 1080
    invoke-virtual {v0, p1}, Lcom/amazon/org/codehaus/jackson/map/type/HierarchicType;->setSuperType(Lcom/amazon/org/codehaus/jackson/map/type/HierarchicType;)V

    return-object v0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method protected _findSuperInterfaceChain(Ljava/lang/reflect/Type;Ljava/lang/Class;)Lcom/amazon/org/codehaus/jackson/map/type/HierarchicType;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/Class<",
            "*>;)",
            "Lcom/amazon/org/codehaus/jackson/map/type/HierarchicType;"
        }
    .end annotation

    .line 1089
    new-instance v0, Lcom/amazon/org/codehaus/jackson/map/type/HierarchicType;

    invoke-direct {v0, p1}, Lcom/amazon/org/codehaus/jackson/map/type/HierarchicType;-><init>(Ljava/lang/reflect/Type;)V

    .line 1090
    invoke-virtual {v0}, Lcom/amazon/org/codehaus/jackson/map/type/HierarchicType;->getRawClass()Ljava/lang/Class;

    move-result-object v1

    if-ne v1, p2, :cond_0

    .line 1092
    new-instance p2, Lcom/amazon/org/codehaus/jackson/map/type/HierarchicType;

    invoke-direct {p2, p1}, Lcom/amazon/org/codehaus/jackson/map/type/HierarchicType;-><init>(Ljava/lang/reflect/Type;)V

    return-object p2

    .line 1098
    :cond_0
    const-class p1, Ljava/util/HashMap;

    if-ne v1, p1, :cond_1

    .line 1099
    const-class p1, Ljava/util/Map;

    if-ne p2, p1, :cond_1

    .line 1100
    invoke-virtual {p0, v0}, Lcom/amazon/org/codehaus/jackson/map/type/TypeFactory;->_hashMapSuperInterfaceChain(Lcom/amazon/org/codehaus/jackson/map/type/HierarchicType;)Lcom/amazon/org/codehaus/jackson/map/type/HierarchicType;

    move-result-object p1

    return-object p1

    .line 1103
    :cond_1
    const-class p1, Ljava/util/ArrayList;

    if-ne v1, p1, :cond_2

    .line 1104
    const-class p1, Ljava/util/List;

    if-ne p2, p1, :cond_2

    .line 1105
    invoke-virtual {p0, v0}, Lcom/amazon/org/codehaus/jackson/map/type/TypeFactory;->_arrayListSuperInterfaceChain(Lcom/amazon/org/codehaus/jackson/map/type/HierarchicType;)Lcom/amazon/org/codehaus/jackson/map/type/HierarchicType;

    move-result-object p1

    return-object p1

    .line 1108
    :cond_2
    invoke-virtual {p0, v0, p2}, Lcom/amazon/org/codehaus/jackson/map/type/TypeFactory;->_doFindSuperInterfaceChain(Lcom/amazon/org/codehaus/jackson/map/type/HierarchicType;Ljava/lang/Class;)Lcom/amazon/org/codehaus/jackson/map/type/HierarchicType;

    move-result-object p1

    return-object p1
.end method

.method protected _findSuperTypeChain(Ljava/lang/Class;Ljava/lang/Class;)Lcom/amazon/org/codehaus/jackson/map/type/HierarchicType;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Class<",
            "*>;)",
            "Lcom/amazon/org/codehaus/jackson/map/type/HierarchicType;"
        }
    .end annotation

    .line 1061
    invoke-virtual {p2}, Ljava/lang/Class;->isInterface()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1062
    invoke-virtual {p0, p1, p2}, Lcom/amazon/org/codehaus/jackson/map/type/TypeFactory;->_findSuperInterfaceChain(Ljava/lang/reflect/Type;Ljava/lang/Class;)Lcom/amazon/org/codehaus/jackson/map/type/HierarchicType;

    move-result-object p1

    return-object p1

    .line 1064
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/amazon/org/codehaus/jackson/map/type/TypeFactory;->_findSuperClassChain(Ljava/lang/reflect/Type;Ljava/lang/Class;)Lcom/amazon/org/codehaus/jackson/map/type/HierarchicType;

    move-result-object p1

    return-object p1
.end method

.method protected _fromArrayType(Ljava/lang/reflect/GenericArrayType;Lcom/amazon/org/codehaus/jackson/map/type/TypeBindings;)Lcom/amazon/org/codehaus/jackson/type/JavaType;
    .locals 0

    .line 935
    invoke-interface {p1}, Ljava/lang/reflect/GenericArrayType;->getGenericComponentType()Ljava/lang/reflect/Type;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/amazon/org/codehaus/jackson/map/type/TypeFactory;->_constructType(Ljava/lang/reflect/Type;Lcom/amazon/org/codehaus/jackson/map/type/TypeBindings;)Lcom/amazon/org/codehaus/jackson/type/JavaType;

    move-result-object p1

    const/4 p2, 0x0

    .line 936
    invoke-static {p1, p2, p2}, Lcom/amazon/org/codehaus/jackson/map/type/ArrayType;->construct(Lcom/amazon/org/codehaus/jackson/type/JavaType;Ljava/lang/Object;Ljava/lang/Object;)Lcom/amazon/org/codehaus/jackson/map/type/ArrayType;

    move-result-object p1

    return-object p1
.end method

.method protected _fromClass(Ljava/lang/Class;Lcom/amazon/org/codehaus/jackson/map/type/TypeBindings;)Lcom/amazon/org/codehaus/jackson/type/JavaType;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/amazon/org/codehaus/jackson/map/type/TypeBindings;",
            ")",
            "Lcom/amazon/org/codehaus/jackson/type/JavaType;"
        }
    .end annotation

    .line 821
    invoke-virtual {p1}, Ljava/lang/Class;->isArray()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 822
    invoke-virtual {p1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Lcom/amazon/org/codehaus/jackson/map/type/TypeFactory;->_constructType(Ljava/lang/reflect/Type;Lcom/amazon/org/codehaus/jackson/map/type/TypeBindings;)Lcom/amazon/org/codehaus/jackson/type/JavaType;

    move-result-object p1

    invoke-static {p1, p2, p2}, Lcom/amazon/org/codehaus/jackson/map/type/ArrayType;->construct(Lcom/amazon/org/codehaus/jackson/type/JavaType;Ljava/lang/Object;Ljava/lang/Object;)Lcom/amazon/org/codehaus/jackson/map/type/ArrayType;

    move-result-object p1

    return-object p1

    .line 827
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Class;->isEnum()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 828
    new-instance p2, Lcom/amazon/org/codehaus/jackson/map/type/SimpleType;

    invoke-direct {p2, p1}, Lcom/amazon/org/codehaus/jackson/map/type/SimpleType;-><init>(Ljava/lang/Class;)V

    return-object p2

    .line 834
    :cond_1
    const-class p2, Ljava/util/Map;

    invoke-virtual {p2, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 835
    invoke-direct {p0, p1}, Lcom/amazon/org/codehaus/jackson/map/type/TypeFactory;->_mapType(Ljava/lang/Class;)Lcom/amazon/org/codehaus/jackson/type/JavaType;

    move-result-object p1

    return-object p1

    .line 837
    :cond_2
    const-class p2, Ljava/util/Collection;

    invoke-virtual {p2, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 838
    invoke-direct {p0, p1}, Lcom/amazon/org/codehaus/jackson/map/type/TypeFactory;->_collectionType(Ljava/lang/Class;)Lcom/amazon/org/codehaus/jackson/type/JavaType;

    move-result-object p1

    return-object p1

    .line 840
    :cond_3
    new-instance p2, Lcom/amazon/org/codehaus/jackson/map/type/SimpleType;

    invoke-direct {p2, p1}, Lcom/amazon/org/codehaus/jackson/map/type/SimpleType;-><init>(Ljava/lang/Class;)V

    return-object p2
.end method

.method protected _fromParamType(Ljava/lang/reflect/ParameterizedType;Lcom/amazon/org/codehaus/jackson/map/type/TypeBindings;)Lcom/amazon/org/codehaus/jackson/type/JavaType;
    .locals 6

    .line 894
    invoke-interface {p1}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    .line 895
    invoke-interface {p1}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object p1

    const/4 v1, 0x0

    if-nez p1, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    .line 896
    :cond_0
    array-length v2, p1

    :goto_0
    if-nez v2, :cond_1

    .line 901
    sget-object p1, Lcom/amazon/org/codehaus/jackson/map/type/TypeFactory;->NO_TYPES:[Lcom/amazon/org/codehaus/jackson/type/JavaType;

    goto :goto_2

    .line 903
    :cond_1
    new-array v3, v2, [Lcom/amazon/org/codehaus/jackson/type/JavaType;

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v2, :cond_2

    .line 905
    aget-object v5, p1, v4

    invoke-virtual {p0, v5, p2}, Lcom/amazon/org/codehaus/jackson/map/type/TypeFactory;->_constructType(Ljava/lang/reflect/Type;Lcom/amazon/org/codehaus/jackson/map/type/TypeBindings;)Lcom/amazon/org/codehaus/jackson/type/JavaType;

    move-result-object v5

    aput-object v5, v3, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_2
    move-object p1, v3

    .line 910
    :goto_2
    const-class p2, Ljava/util/Map;

    invoke-virtual {p2, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p2

    const-string v3, ")"

    const-string v4, " (found "

    const/4 v5, 0x1

    if-eqz p2, :cond_4

    .line 911
    invoke-virtual {p0, v0, p1}, Lcom/amazon/org/codehaus/jackson/map/type/TypeFactory;->constructSimpleType(Ljava/lang/Class;[Lcom/amazon/org/codehaus/jackson/type/JavaType;)Lcom/amazon/org/codehaus/jackson/type/JavaType;

    move-result-object p1

    .line 912
    const-class p2, Ljava/util/Map;

    invoke-virtual {p0, p1, p2}, Lcom/amazon/org/codehaus/jackson/map/type/TypeFactory;->findTypeParameters(Lcom/amazon/org/codehaus/jackson/type/JavaType;Ljava/lang/Class;)[Lcom/amazon/org/codehaus/jackson/type/JavaType;

    move-result-object p1

    .line 913
    array-length p2, p1

    const/4 v2, 0x2

    if-ne p2, v2, :cond_3

    .line 916
    aget-object p2, p1, v1

    aget-object p1, p1, v5

    invoke-static {v0, p2, p1}, Lcom/amazon/org/codehaus/jackson/map/type/MapType;->construct(Ljava/lang/Class;Lcom/amazon/org/codehaus/jackson/type/JavaType;Lcom/amazon/org/codehaus/jackson/type/JavaType;)Lcom/amazon/org/codehaus/jackson/map/type/MapType;

    move-result-object p1

    return-object p1

    .line 914
    :cond_3
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not find 2 type parameters for Map class "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length p1, p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 918
    :cond_4
    const-class p2, Ljava/util/Collection;

    invoke-virtual {p2, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p2

    if-eqz p2, :cond_6

    .line 919
    invoke-virtual {p0, v0, p1}, Lcom/amazon/org/codehaus/jackson/map/type/TypeFactory;->constructSimpleType(Ljava/lang/Class;[Lcom/amazon/org/codehaus/jackson/type/JavaType;)Lcom/amazon/org/codehaus/jackson/type/JavaType;

    move-result-object p1

    .line 920
    const-class p2, Ljava/util/Collection;

    invoke-virtual {p0, p1, p2}, Lcom/amazon/org/codehaus/jackson/map/type/TypeFactory;->findTypeParameters(Lcom/amazon/org/codehaus/jackson/type/JavaType;Ljava/lang/Class;)[Lcom/amazon/org/codehaus/jackson/type/JavaType;

    move-result-object p1

    .line 921
    array-length p2, p1

    if-ne p2, v5, :cond_5

    .line 924
    aget-object p1, p1, v1

    invoke-static {v0, p1}, Lcom/amazon/org/codehaus/jackson/map/type/CollectionType;->construct(Ljava/lang/Class;Lcom/amazon/org/codehaus/jackson/type/JavaType;)Lcom/amazon/org/codehaus/jackson/map/type/CollectionType;

    move-result-object p1

    return-object p1

    .line 922
    :cond_5
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not find 1 type parameter for Collection class "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length p1, p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_6
    if-nez v2, :cond_7

    .line 927
    new-instance p1, Lcom/amazon/org/codehaus/jackson/map/type/SimpleType;

    invoke-direct {p1, v0}, Lcom/amazon/org/codehaus/jackson/map/type/SimpleType;-><init>(Ljava/lang/Class;)V

    return-object p1

    .line 929
    :cond_7
    invoke-virtual {p0, v0, p1}, Lcom/amazon/org/codehaus/jackson/map/type/TypeFactory;->constructSimpleType(Ljava/lang/Class;[Lcom/amazon/org/codehaus/jackson/type/JavaType;)Lcom/amazon/org/codehaus/jackson/type/JavaType;

    move-result-object p1

    return-object p1
.end method

.method protected _fromParameterizedClass(Ljava/lang/Class;Ljava/util/List;)Lcom/amazon/org/codehaus/jackson/type/JavaType;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/util/List<",
            "Lcom/amazon/org/codehaus/jackson/type/JavaType;",
            ">;)",
            "Lcom/amazon/org/codehaus/jackson/type/JavaType;"
        }
    .end annotation

    .line 849
    invoke-virtual {p1}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 850
    invoke-virtual {p1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Lcom/amazon/org/codehaus/jackson/map/type/TypeFactory;->_constructType(Ljava/lang/reflect/Type;Lcom/amazon/org/codehaus/jackson/map/type/TypeBindings;)Lcom/amazon/org/codehaus/jackson/type/JavaType;

    move-result-object p1

    invoke-static {p1, p2, p2}, Lcom/amazon/org/codehaus/jackson/map/type/ArrayType;->construct(Lcom/amazon/org/codehaus/jackson/type/JavaType;Ljava/lang/Object;Ljava/lang/Object;)Lcom/amazon/org/codehaus/jackson/map/type/ArrayType;

    move-result-object p1

    return-object p1

    .line 852
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Class;->isEnum()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 853
    new-instance p2, Lcom/amazon/org/codehaus/jackson/map/type/SimpleType;

    invoke-direct {p2, p1}, Lcom/amazon/org/codehaus/jackson/map/type/SimpleType;-><init>(Ljava/lang/Class;)V

    return-object p2

    .line 855
    :cond_1
    const-class v0, Ljava/util/Map;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_4

    .line 858
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_3

    .line 859
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/org/codehaus/jackson/type/JavaType;

    .line 860
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    const/4 v3, 0x2

    if-lt v1, v3, :cond_2

    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/amazon/org/codehaus/jackson/type/JavaType;

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/amazon/org/codehaus/jackson/map/type/TypeFactory;->_unknownType()Lcom/amazon/org/codehaus/jackson/type/JavaType;

    move-result-object p2

    .line 862
    :goto_0
    invoke-static {p1, v0, p2}, Lcom/amazon/org/codehaus/jackson/map/type/MapType;->construct(Ljava/lang/Class;Lcom/amazon/org/codehaus/jackson/type/JavaType;Lcom/amazon/org/codehaus/jackson/type/JavaType;)Lcom/amazon/org/codehaus/jackson/map/type/MapType;

    move-result-object p1

    return-object p1

    .line 864
    :cond_3
    invoke-direct {p0, p1}, Lcom/amazon/org/codehaus/jackson/map/type/TypeFactory;->_mapType(Ljava/lang/Class;)Lcom/amazon/org/codehaus/jackson/type/JavaType;

    move-result-object p1

    return-object p1

    .line 866
    :cond_4
    const-class v0, Ljava/util/Collection;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 867
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-lt v0, v2, :cond_5

    .line 868
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/amazon/org/codehaus/jackson/type/JavaType;

    invoke-static {p1, p2}, Lcom/amazon/org/codehaus/jackson/map/type/CollectionType;->construct(Ljava/lang/Class;Lcom/amazon/org/codehaus/jackson/type/JavaType;)Lcom/amazon/org/codehaus/jackson/map/type/CollectionType;

    move-result-object p1

    return-object p1

    .line 870
    :cond_5
    invoke-direct {p0, p1}, Lcom/amazon/org/codehaus/jackson/map/type/TypeFactory;->_collectionType(Ljava/lang/Class;)Lcom/amazon/org/codehaus/jackson/type/JavaType;

    move-result-object p1

    return-object p1

    .line 872
    :cond_6
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_7

    .line 873
    new-instance p2, Lcom/amazon/org/codehaus/jackson/map/type/SimpleType;

    invoke-direct {p2, p1}, Lcom/amazon/org/codehaus/jackson/map/type/SimpleType;-><init>(Ljava/lang/Class;)V

    return-object p2

    .line 875
    :cond_7
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lcom/amazon/org/codehaus/jackson/type/JavaType;

    invoke-interface {p2, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Lcom/amazon/org/codehaus/jackson/type/JavaType;

    .line 876
    invoke-virtual {p0, p1, p2}, Lcom/amazon/org/codehaus/jackson/map/type/TypeFactory;->constructSimpleType(Ljava/lang/Class;[Lcom/amazon/org/codehaus/jackson/type/JavaType;)Lcom/amazon/org/codehaus/jackson/type/JavaType;

    move-result-object p1

    return-object p1
.end method

.method protected _fromVariable(Ljava/lang/reflect/TypeVariable;Lcom/amazon/org/codehaus/jackson/map/type/TypeBindings;)Lcom/amazon/org/codehaus/jackson/type/JavaType;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/TypeVariable<",
            "*>;",
            "Lcom/amazon/org/codehaus/jackson/map/type/TypeBindings;",
            ")",
            "Lcom/amazon/org/codehaus/jackson/type/JavaType;"
        }
    .end annotation

    if-nez p2, :cond_0

    .line 946
    invoke-virtual {p0}, Lcom/amazon/org/codehaus/jackson/map/type/TypeFactory;->_unknownType()Lcom/amazon/org/codehaus/jackson/type/JavaType;

    move-result-object p1

    return-object p1

    .line 950
    :cond_0
    invoke-interface {p1}, Ljava/lang/reflect/TypeVariable;->getName()Ljava/lang/String;

    move-result-object v0

    .line 951
    invoke-virtual {p2, v0}, Lcom/amazon/org/codehaus/jackson/map/type/TypeBindings;->findType(Ljava/lang/String;)Lcom/amazon/org/codehaus/jackson/type/JavaType;

    move-result-object v1

    if-eqz v1, :cond_1

    return-object v1

    .line 961
    :cond_1
    invoke-interface {p1}, Ljava/lang/reflect/TypeVariable;->getBounds()[Ljava/lang/reflect/Type;

    move-result-object p1

    .line 976
    invoke-virtual {p2, v0}, Lcom/amazon/org/codehaus/jackson/map/type/TypeBindings;->_addPlaceholder(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 977
    aget-object p1, p1, v0

    invoke-virtual {p0, p1, p2}, Lcom/amazon/org/codehaus/jackson/map/type/TypeFactory;->_constructType(Ljava/lang/reflect/Type;Lcom/amazon/org/codehaus/jackson/map/type/TypeBindings;)Lcom/amazon/org/codehaus/jackson/type/JavaType;

    move-result-object p1

    return-object p1
.end method

.method protected _fromWildcard(Ljava/lang/reflect/WildcardType;Lcom/amazon/org/codehaus/jackson/map/type/TypeBindings;)Lcom/amazon/org/codehaus/jackson/type/JavaType;
    .locals 1

    .line 990
    invoke-interface {p1}, Ljava/lang/reflect/WildcardType;->getUpperBounds()[Ljava/lang/reflect/Type;

    move-result-object p1

    const/4 v0, 0x0

    aget-object p1, p1, v0

    invoke-virtual {p0, p1, p2}, Lcom/amazon/org/codehaus/jackson/map/type/TypeFactory;->_constructType(Ljava/lang/reflect/Type;Lcom/amazon/org/codehaus/jackson/map/type/TypeBindings;)Lcom/amazon/org/codehaus/jackson/type/JavaType;

    move-result-object p1

    return-object p1
.end method

.method protected declared-synchronized _hashMapSuperInterfaceChain(Lcom/amazon/org/codehaus/jackson/map/type/HierarchicType;)Lcom/amazon/org/codehaus/jackson/map/type/HierarchicType;
    .locals 2

    monitor-enter p0

    .line 1142
    :try_start_0
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/type/TypeFactory;->_cachedHashMapType:Lcom/amazon/org/codehaus/jackson/map/type/HierarchicType;

    if-nez v0, :cond_0

    .line 1143
    invoke-virtual {p1}, Lcom/amazon/org/codehaus/jackson/map/type/HierarchicType;->deepCloneWithoutSubtype()Lcom/amazon/org/codehaus/jackson/map/type/HierarchicType;

    move-result-object v0

    .line 1144
    const-class v1, Ljava/util/Map;

    invoke-virtual {p0, v0, v1}, Lcom/amazon/org/codehaus/jackson/map/type/TypeFactory;->_doFindSuperInterfaceChain(Lcom/amazon/org/codehaus/jackson/map/type/HierarchicType;Ljava/lang/Class;)Lcom/amazon/org/codehaus/jackson/map/type/HierarchicType;

    .line 1145
    invoke-virtual {v0}, Lcom/amazon/org/codehaus/jackson/map/type/HierarchicType;->getSuperType()Lcom/amazon/org/codehaus/jackson/map/type/HierarchicType;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/type/TypeFactory;->_cachedHashMapType:Lcom/amazon/org/codehaus/jackson/map/type/HierarchicType;

    .line 1147
    :cond_0
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/type/TypeFactory;->_cachedHashMapType:Lcom/amazon/org/codehaus/jackson/map/type/HierarchicType;

    invoke-virtual {v0}, Lcom/amazon/org/codehaus/jackson/map/type/HierarchicType;->deepCloneWithoutSubtype()Lcom/amazon/org/codehaus/jackson/map/type/HierarchicType;

    move-result-object v0

    .line 1148
    invoke-virtual {p1, v0}, Lcom/amazon/org/codehaus/jackson/map/type/HierarchicType;->setSuperType(Lcom/amazon/org/codehaus/jackson/map/type/HierarchicType;)V

    .line 1149
    invoke-virtual {v0, p1}, Lcom/amazon/org/codehaus/jackson/map/type/HierarchicType;->setSubType(Lcom/amazon/org/codehaus/jackson/map/type/HierarchicType;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1150
    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method protected _resolveVariableViaSubTypes(Lcom/amazon/org/codehaus/jackson/map/type/HierarchicType;Ljava/lang/String;Lcom/amazon/org/codehaus/jackson/map/type/TypeBindings;)Lcom/amazon/org/codehaus/jackson/type/JavaType;
    .locals 4

    if-eqz p1, :cond_2

    .line 1024
    invoke-virtual {p1}, Lcom/amazon/org/codehaus/jackson/map/type/HierarchicType;->isGeneric()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1025
    invoke-virtual {p1}, Lcom/amazon/org/codehaus/jackson/map/type/HierarchicType;->getRawClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getTypeParameters()[Ljava/lang/reflect/TypeVariable;

    move-result-object v0

    const/4 v1, 0x0

    .line 1026
    array-length v2, v0

    :goto_0
    if-ge v1, v2, :cond_2

    .line 1027
    aget-object v3, v0, v1

    .line 1028
    invoke-interface {v3}, Ljava/lang/reflect/TypeVariable;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1030
    invoke-virtual {p1}, Lcom/amazon/org/codehaus/jackson/map/type/HierarchicType;->asGeneric()Ljava/lang/reflect/ParameterizedType;

    move-result-object p2

    invoke-interface {p2}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object p2

    aget-object p2, p2, v1

    .line 1031
    instance-of v0, p2, Ljava/lang/reflect/TypeVariable;

    if-eqz v0, :cond_0

    .line 1032
    invoke-virtual {p1}, Lcom/amazon/org/codehaus/jackson/map/type/HierarchicType;->getSubType()Lcom/amazon/org/codehaus/jackson/map/type/HierarchicType;

    move-result-object p1

    check-cast p2, Ljava/lang/reflect/TypeVariable;

    invoke-interface {p2}, Ljava/lang/reflect/TypeVariable;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2, p3}, Lcom/amazon/org/codehaus/jackson/map/type/TypeFactory;->_resolveVariableViaSubTypes(Lcom/amazon/org/codehaus/jackson/map/type/HierarchicType;Ljava/lang/String;Lcom/amazon/org/codehaus/jackson/map/type/TypeBindings;)Lcom/amazon/org/codehaus/jackson/type/JavaType;

    move-result-object p1

    return-object p1

    .line 1035
    :cond_0
    invoke-virtual {p0, p2, p3}, Lcom/amazon/org/codehaus/jackson/map/type/TypeFactory;->_constructType(Ljava/lang/reflect/Type;Lcom/amazon/org/codehaus/jackson/map/type/TypeBindings;)Lcom/amazon/org/codehaus/jackson/type/JavaType;

    move-result-object p1

    return-object p1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1039
    :cond_2
    invoke-virtual {p0}, Lcom/amazon/org/codehaus/jackson/map/type/TypeFactory;->_unknownType()Lcom/amazon/org/codehaus/jackson/type/JavaType;

    move-result-object p1

    return-object p1
.end method

.method protected _unknownType()Lcom/amazon/org/codehaus/jackson/type/JavaType;
    .locals 2

    .line 1043
    new-instance v0, Lcom/amazon/org/codehaus/jackson/map/type/SimpleType;

    const-class v1, Ljava/lang/Object;

    invoke-direct {v0, v1}, Lcom/amazon/org/codehaus/jackson/map/type/SimpleType;-><init>(Ljava/lang/Class;)V

    return-object v0
.end method

.method public constructArrayType(Lcom/amazon/org/codehaus/jackson/type/JavaType;)Lcom/amazon/org/codehaus/jackson/map/type/ArrayType;
    .locals 1

    const/4 v0, 0x0

    .line 536
    invoke-static {p1, v0, v0}, Lcom/amazon/org/codehaus/jackson/map/type/ArrayType;->construct(Lcom/amazon/org/codehaus/jackson/type/JavaType;Ljava/lang/Object;Ljava/lang/Object;)Lcom/amazon/org/codehaus/jackson/map/type/ArrayType;

    move-result-object p1

    return-object p1
.end method

.method public constructArrayType(Ljava/lang/Class;)Lcom/amazon/org/codehaus/jackson/map/type/ArrayType;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lcom/amazon/org/codehaus/jackson/map/type/ArrayType;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 526
    invoke-virtual {p0, p1, v0}, Lcom/amazon/org/codehaus/jackson/map/type/TypeFactory;->_constructType(Ljava/lang/reflect/Type;Lcom/amazon/org/codehaus/jackson/map/type/TypeBindings;)Lcom/amazon/org/codehaus/jackson/type/JavaType;

    move-result-object p1

    invoke-static {p1, v0, v0}, Lcom/amazon/org/codehaus/jackson/map/type/ArrayType;->construct(Lcom/amazon/org/codehaus/jackson/type/JavaType;Ljava/lang/Object;Ljava/lang/Object;)Lcom/amazon/org/codehaus/jackson/map/type/ArrayType;

    move-result-object p1

    return-object p1
.end method

.method public constructCollectionLikeType(Ljava/lang/Class;Lcom/amazon/org/codehaus/jackson/type/JavaType;)Lcom/amazon/org/codehaus/jackson/map/type/CollectionLikeType;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/amazon/org/codehaus/jackson/type/JavaType;",
            ")",
            "Lcom/amazon/org/codehaus/jackson/map/type/CollectionLikeType;"
        }
    .end annotation

    .line 580
    invoke-static {p1, p2}, Lcom/amazon/org/codehaus/jackson/map/type/CollectionLikeType;->construct(Ljava/lang/Class;Lcom/amazon/org/codehaus/jackson/type/JavaType;)Lcom/amazon/org/codehaus/jackson/map/type/CollectionLikeType;

    move-result-object p1

    return-object p1
.end method

.method public constructCollectionLikeType(Ljava/lang/Class;Ljava/lang/Class;)Lcom/amazon/org/codehaus/jackson/map/type/CollectionLikeType;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Class<",
            "*>;)",
            "Lcom/amazon/org/codehaus/jackson/map/type/CollectionLikeType;"
        }
    .end annotation

    .line 568
    invoke-virtual {p0, p2}, Lcom/amazon/org/codehaus/jackson/map/type/TypeFactory;->constructType(Ljava/lang/reflect/Type;)Lcom/amazon/org/codehaus/jackson/type/JavaType;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/amazon/org/codehaus/jackson/map/type/CollectionLikeType;->construct(Ljava/lang/Class;Lcom/amazon/org/codehaus/jackson/type/JavaType;)Lcom/amazon/org/codehaus/jackson/map/type/CollectionLikeType;

    move-result-object p1

    return-object p1
.end method

.method public constructCollectionType(Ljava/lang/Class;Lcom/amazon/org/codehaus/jackson/type/JavaType;)Lcom/amazon/org/codehaus/jackson/map/type/CollectionType;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Ljava/util/Collection;",
            ">;",
            "Lcom/amazon/org/codehaus/jackson/type/JavaType;",
            ")",
            "Lcom/amazon/org/codehaus/jackson/map/type/CollectionType;"
        }
    .end annotation

    .line 556
    invoke-static {p1, p2}, Lcom/amazon/org/codehaus/jackson/map/type/CollectionType;->construct(Ljava/lang/Class;Lcom/amazon/org/codehaus/jackson/type/JavaType;)Lcom/amazon/org/codehaus/jackson/map/type/CollectionType;

    move-result-object p1

    return-object p1
.end method

.method public constructCollectionType(Ljava/lang/Class;Ljava/lang/Class;)Lcom/amazon/org/codehaus/jackson/map/type/CollectionType;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Ljava/util/Collection;",
            ">;",
            "Ljava/lang/Class<",
            "*>;)",
            "Lcom/amazon/org/codehaus/jackson/map/type/CollectionType;"
        }
    .end annotation

    .line 546
    invoke-virtual {p0, p2}, Lcom/amazon/org/codehaus/jackson/map/type/TypeFactory;->constructType(Ljava/lang/reflect/Type;)Lcom/amazon/org/codehaus/jackson/type/JavaType;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/amazon/org/codehaus/jackson/map/type/CollectionType;->construct(Ljava/lang/Class;Lcom/amazon/org/codehaus/jackson/type/JavaType;)Lcom/amazon/org/codehaus/jackson/map/type/CollectionType;

    move-result-object p1

    return-object p1
.end method

.method public constructFromCanonical(Ljava/lang/String;)Lcom/amazon/org/codehaus/jackson/type/JavaType;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 354
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/type/TypeFactory;->_parser:Lcom/amazon/org/codehaus/jackson/map/type/TypeParser;

    invoke-virtual {v0, p1}, Lcom/amazon/org/codehaus/jackson/map/type/TypeParser;->parse(Ljava/lang/String;)Lcom/amazon/org/codehaus/jackson/type/JavaType;

    move-result-object p1

    return-object p1
.end method

.method public constructMapLikeType(Ljava/lang/Class;Lcom/amazon/org/codehaus/jackson/type/JavaType;Lcom/amazon/org/codehaus/jackson/type/JavaType;)Lcom/amazon/org/codehaus/jackson/map/type/MapLikeType;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/amazon/org/codehaus/jackson/type/JavaType;",
            "Lcom/amazon/org/codehaus/jackson/type/JavaType;",
            ")",
            "Lcom/amazon/org/codehaus/jackson/map/type/MapLikeType;"
        }
    .end annotation

    .line 616
    invoke-static {p1, p2, p3}, Lcom/amazon/org/codehaus/jackson/map/type/MapLikeType;->construct(Ljava/lang/Class;Lcom/amazon/org/codehaus/jackson/type/JavaType;Lcom/amazon/org/codehaus/jackson/type/JavaType;)Lcom/amazon/org/codehaus/jackson/map/type/MapLikeType;

    move-result-object p1

    return-object p1
.end method

.method public constructMapLikeType(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;)Lcom/amazon/org/codehaus/jackson/map/type/MapLikeType;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Class<",
            "*>;)",
            "Lcom/amazon/org/codehaus/jackson/map/type/MapLikeType;"
        }
    .end annotation

    .line 628
    invoke-virtual {p0, p2}, Lcom/amazon/org/codehaus/jackson/map/type/TypeFactory;->constructType(Ljava/lang/reflect/Type;)Lcom/amazon/org/codehaus/jackson/type/JavaType;

    move-result-object p2

    invoke-virtual {p0, p3}, Lcom/amazon/org/codehaus/jackson/map/type/TypeFactory;->constructType(Ljava/lang/reflect/Type;)Lcom/amazon/org/codehaus/jackson/type/JavaType;

    move-result-object p3

    invoke-static {p1, p2, p3}, Lcom/amazon/org/codehaus/jackson/map/type/MapType;->construct(Ljava/lang/Class;Lcom/amazon/org/codehaus/jackson/type/JavaType;Lcom/amazon/org/codehaus/jackson/type/JavaType;)Lcom/amazon/org/codehaus/jackson/map/type/MapType;

    move-result-object p1

    return-object p1
.end method

.method public constructMapType(Ljava/lang/Class;Lcom/amazon/org/codehaus/jackson/type/JavaType;Lcom/amazon/org/codehaus/jackson/type/JavaType;)Lcom/amazon/org/codehaus/jackson/map/type/MapType;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Ljava/util/Map;",
            ">;",
            "Lcom/amazon/org/codehaus/jackson/type/JavaType;",
            "Lcom/amazon/org/codehaus/jackson/type/JavaType;",
            ")",
            "Lcom/amazon/org/codehaus/jackson/map/type/MapType;"
        }
    .end annotation

    .line 592
    invoke-static {p1, p2, p3}, Lcom/amazon/org/codehaus/jackson/map/type/MapType;->construct(Ljava/lang/Class;Lcom/amazon/org/codehaus/jackson/type/JavaType;Lcom/amazon/org/codehaus/jackson/type/JavaType;)Lcom/amazon/org/codehaus/jackson/map/type/MapType;

    move-result-object p1

    return-object p1
.end method

.method public constructMapType(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;)Lcom/amazon/org/codehaus/jackson/map/type/MapType;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Ljava/util/Map;",
            ">;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Class<",
            "*>;)",
            "Lcom/amazon/org/codehaus/jackson/map/type/MapType;"
        }
    .end annotation

    .line 604
    invoke-virtual {p0, p2}, Lcom/amazon/org/codehaus/jackson/map/type/TypeFactory;->constructType(Ljava/lang/reflect/Type;)Lcom/amazon/org/codehaus/jackson/type/JavaType;

    move-result-object p2

    invoke-virtual {p0, p3}, Lcom/amazon/org/codehaus/jackson/map/type/TypeFactory;->constructType(Ljava/lang/reflect/Type;)Lcom/amazon/org/codehaus/jackson/type/JavaType;

    move-result-object p3

    invoke-static {p1, p2, p3}, Lcom/amazon/org/codehaus/jackson/map/type/MapType;->construct(Ljava/lang/Class;Lcom/amazon/org/codehaus/jackson/type/JavaType;Lcom/amazon/org/codehaus/jackson/type/JavaType;)Lcom/amazon/org/codehaus/jackson/map/type/MapType;

    move-result-object p1

    return-object p1
.end method

.method public varargs constructParametricType(Ljava/lang/Class;[Lcom/amazon/org/codehaus/jackson/type/JavaType;)Lcom/amazon/org/codehaus/jackson/type/JavaType;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;[",
            "Lcom/amazon/org/codehaus/jackson/type/JavaType;",
            ")",
            "Lcom/amazon/org/codehaus/jackson/type/JavaType;"
        }
    .end annotation

    .line 709
    invoke-virtual {p1}, Ljava/lang/Class;->isArray()Z

    move-result v0

    const-string v1, ")"

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_1

    .line 711
    array-length v0, p2

    if-ne v0, v3, :cond_0

    .line 714
    aget-object p1, p2, v2

    invoke-virtual {p0, p1}, Lcom/amazon/org/codehaus/jackson/map/type/TypeFactory;->constructArrayType(Lcom/amazon/org/codehaus/jackson/type/JavaType;)Lcom/amazon/org/codehaus/jackson/map/type/ArrayType;

    move-result-object p1

    goto/16 :goto_0

    .line 712
    :cond_0
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Need exactly 1 parameter type for arrays ("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 716
    :cond_1
    const-class v0, Ljava/util/Map;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 717
    array-length v0, p2

    const/4 v4, 0x2

    if-ne v0, v4, :cond_2

    .line 720
    aget-object v0, p2, v2

    aget-object p2, p2, v3

    invoke-virtual {p0, p1, v0, p2}, Lcom/amazon/org/codehaus/jackson/map/type/TypeFactory;->constructMapType(Ljava/lang/Class;Lcom/amazon/org/codehaus/jackson/type/JavaType;Lcom/amazon/org/codehaus/jackson/type/JavaType;)Lcom/amazon/org/codehaus/jackson/map/type/MapType;

    move-result-object p1

    goto :goto_0

    .line 718
    :cond_2
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Need exactly 2 parameter types for Map types ("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 722
    :cond_3
    const-class v0, Ljava/util/Collection;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 723
    array-length v0, p2

    if-ne v0, v3, :cond_4

    .line 726
    aget-object p2, p2, v2

    invoke-virtual {p0, p1, p2}, Lcom/amazon/org/codehaus/jackson/map/type/TypeFactory;->constructCollectionType(Ljava/lang/Class;Lcom/amazon/org/codehaus/jackson/type/JavaType;)Lcom/amazon/org/codehaus/jackson/map/type/CollectionType;

    move-result-object p1

    goto :goto_0

    .line 724
    :cond_4
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Need exactly 1 parameter type for Collection types ("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 728
    :cond_5
    invoke-virtual {p0, p1, p2}, Lcom/amazon/org/codehaus/jackson/map/type/TypeFactory;->constructSimpleType(Ljava/lang/Class;[Lcom/amazon/org/codehaus/jackson/type/JavaType;)Lcom/amazon/org/codehaus/jackson/type/JavaType;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public varargs constructParametricType(Ljava/lang/Class;[Ljava/lang/Class;)Lcom/amazon/org/codehaus/jackson/type/JavaType;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;[",
            "Ljava/lang/Class<",
            "*>;)",
            "Lcom/amazon/org/codehaus/jackson/type/JavaType;"
        }
    .end annotation

    .line 681
    array-length v0, p2

    .line 682
    new-array v1, v0, [Lcom/amazon/org/codehaus/jackson/type/JavaType;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 684
    aget-object v3, p2, v2

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4}, Lcom/amazon/org/codehaus/jackson/map/type/TypeFactory;->_fromClass(Ljava/lang/Class;Lcom/amazon/org/codehaus/jackson/map/type/TypeBindings;)Lcom/amazon/org/codehaus/jackson/type/JavaType;

    move-result-object v3

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 686
    :cond_0
    invoke-virtual {p0, p1, v1}, Lcom/amazon/org/codehaus/jackson/map/type/TypeFactory;->constructParametricType(Ljava/lang/Class;[Lcom/amazon/org/codehaus/jackson/type/JavaType;)Lcom/amazon/org/codehaus/jackson/type/JavaType;

    move-result-object p1

    return-object p1
.end method

.method public constructRawCollectionLikeType(Ljava/lang/Class;)Lcom/amazon/org/codehaus/jackson/map/type/CollectionLikeType;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lcom/amazon/org/codehaus/jackson/map/type/CollectionLikeType;"
        }
    .end annotation

    .line 771
    invoke-static {}, Lcom/amazon/org/codehaus/jackson/map/type/TypeFactory;->unknownType()Lcom/amazon/org/codehaus/jackson/type/JavaType;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/amazon/org/codehaus/jackson/map/type/CollectionLikeType;->construct(Ljava/lang/Class;Lcom/amazon/org/codehaus/jackson/type/JavaType;)Lcom/amazon/org/codehaus/jackson/map/type/CollectionLikeType;

    move-result-object p1

    return-object p1
.end method

.method public constructRawCollectionType(Ljava/lang/Class;)Lcom/amazon/org/codehaus/jackson/map/type/CollectionType;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Ljava/util/Collection;",
            ">;)",
            "Lcom/amazon/org/codehaus/jackson/map/type/CollectionType;"
        }
    .end annotation

    .line 754
    invoke-static {}, Lcom/amazon/org/codehaus/jackson/map/type/TypeFactory;->unknownType()Lcom/amazon/org/codehaus/jackson/type/JavaType;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/amazon/org/codehaus/jackson/map/type/CollectionType;->construct(Ljava/lang/Class;Lcom/amazon/org/codehaus/jackson/type/JavaType;)Lcom/amazon/org/codehaus/jackson/map/type/CollectionType;

    move-result-object p1

    return-object p1
.end method

.method public constructRawMapLikeType(Ljava/lang/Class;)Lcom/amazon/org/codehaus/jackson/map/type/MapLikeType;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lcom/amazon/org/codehaus/jackson/map/type/MapLikeType;"
        }
    .end annotation

    .line 805
    invoke-static {}, Lcom/amazon/org/codehaus/jackson/map/type/TypeFactory;->unknownType()Lcom/amazon/org/codehaus/jackson/type/JavaType;

    move-result-object v0

    invoke-static {}, Lcom/amazon/org/codehaus/jackson/map/type/TypeFactory;->unknownType()Lcom/amazon/org/codehaus/jackson/type/JavaType;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/amazon/org/codehaus/jackson/map/type/MapLikeType;->construct(Ljava/lang/Class;Lcom/amazon/org/codehaus/jackson/type/JavaType;Lcom/amazon/org/codehaus/jackson/type/JavaType;)Lcom/amazon/org/codehaus/jackson/map/type/MapLikeType;

    move-result-object p1

    return-object p1
.end method

.method public constructRawMapType(Ljava/lang/Class;)Lcom/amazon/org/codehaus/jackson/map/type/MapType;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Ljava/util/Map;",
            ">;)",
            "Lcom/amazon/org/codehaus/jackson/map/type/MapType;"
        }
    .end annotation

    .line 788
    invoke-static {}, Lcom/amazon/org/codehaus/jackson/map/type/TypeFactory;->unknownType()Lcom/amazon/org/codehaus/jackson/type/JavaType;

    move-result-object v0

    invoke-static {}, Lcom/amazon/org/codehaus/jackson/map/type/TypeFactory;->unknownType()Lcom/amazon/org/codehaus/jackson/type/JavaType;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/amazon/org/codehaus/jackson/map/type/MapType;->construct(Ljava/lang/Class;Lcom/amazon/org/codehaus/jackson/type/JavaType;Lcom/amazon/org/codehaus/jackson/type/JavaType;)Lcom/amazon/org/codehaus/jackson/map/type/MapType;

    move-result-object p1

    return-object p1
.end method

.method public constructSimpleType(Ljava/lang/Class;[Lcom/amazon/org/codehaus/jackson/type/JavaType;)Lcom/amazon/org/codehaus/jackson/type/JavaType;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;[",
            "Lcom/amazon/org/codehaus/jackson/type/JavaType;",
            ")",
            "Lcom/amazon/org/codehaus/jackson/type/JavaType;"
        }
    .end annotation

    .line 639
    invoke-virtual {p1}, Ljava/lang/Class;->getTypeParameters()[Ljava/lang/reflect/TypeVariable;

    move-result-object v0

    .line 640
    array-length v1, v0

    array-length v2, p2

    if-ne v1, v2, :cond_1

    .line 644
    array-length v1, v0

    new-array v4, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    .line 645
    array-length v2, v0

    :goto_0
    if-ge v1, v2, :cond_0

    .line 646
    aget-object v3, v0, v1

    invoke-interface {v3}, Ljava/lang/reflect/TypeVariable;->getName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v4, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 648
    :cond_0
    new-instance v0, Lcom/amazon/org/codehaus/jackson/map/type/SimpleType;

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, v0

    move-object v3, p1

    move-object v5, p2

    invoke-direct/range {v2 .. v7}, Lcom/amazon/org/codehaus/jackson/map/type/SimpleType;-><init>(Ljava/lang/Class;[Ljava/lang/String;[Lcom/amazon/org/codehaus/jackson/type/JavaType;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0

    .line 641
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Parameter type mismatch for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ": expected "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length p1, v0

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " parameters, was given "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length p1, p2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public constructSpecializedType(Lcom/amazon/org/codehaus/jackson/type/JavaType;Ljava/lang/Class;)Lcom/amazon/org/codehaus/jackson/type/JavaType;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/org/codehaus/jackson/type/JavaType;",
            "Ljava/lang/Class<",
            "*>;)",
            "Lcom/amazon/org/codehaus/jackson/type/JavaType;"
        }
    .end annotation

    .line 312
    instance-of v0, p1, Lcom/amazon/org/codehaus/jackson/map/type/SimpleType;

    if-eqz v0, :cond_4

    .line 314
    invoke-virtual {p2}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-nez v0, :cond_0

    const-class v0, Ljava/util/Map;

    invoke-virtual {v0, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_0

    const-class v0, Ljava/util/Collection;

    invoke-virtual {v0, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 318
    :cond_0
    invoke-virtual {p1}, Lcom/amazon/org/codehaus/jackson/type/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 322
    new-instance v0, Lcom/amazon/org/codehaus/jackson/map/type/TypeBindings;

    invoke-virtual {p1}, Lcom/amazon/org/codehaus/jackson/type/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/amazon/org/codehaus/jackson/map/type/TypeBindings;-><init>(Lcom/amazon/org/codehaus/jackson/map/type/TypeFactory;Ljava/lang/Class;)V

    invoke-virtual {p0, p2, v0}, Lcom/amazon/org/codehaus/jackson/map/type/TypeFactory;->_fromClass(Ljava/lang/Class;Lcom/amazon/org/codehaus/jackson/map/type/TypeBindings;)Lcom/amazon/org/codehaus/jackson/type/JavaType;

    move-result-object p2

    .line 324
    invoke-virtual {p1}, Lcom/amazon/org/codehaus/jackson/type/JavaType;->getValueHandler()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 327
    invoke-virtual {p2, v0}, Lcom/amazon/org/codehaus/jackson/type/JavaType;->withValueHandler(Ljava/lang/Object;)Lcom/amazon/org/codehaus/jackson/type/JavaType;

    move-result-object p2

    .line 329
    :cond_1
    invoke-virtual {p1}, Lcom/amazon/org/codehaus/jackson/type/JavaType;->getTypeHandler()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 331
    invoke-virtual {p2, p1}, Lcom/amazon/org/codehaus/jackson/type/JavaType;->withTypeHandler(Ljava/lang/Object;)Lcom/amazon/org/codehaus/jackson/type/JavaType;

    move-result-object p2

    :cond_2
    return-object p2

    .line 319
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Class "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " not subtype of "

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 337
    :cond_4
    invoke-virtual {p1, p2}, Lcom/amazon/org/codehaus/jackson/type/JavaType;->narrowBy(Ljava/lang/Class;)Lcom/amazon/org/codehaus/jackson/type/JavaType;

    move-result-object p1

    return-object p1
.end method

.method public constructType(Lcom/amazon/org/codehaus/jackson/type/TypeReference;)Lcom/amazon/org/codehaus/jackson/type/JavaType;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/org/codehaus/jackson/type/TypeReference<",
            "*>;)",
            "Lcom/amazon/org/codehaus/jackson/type/JavaType;"
        }
    .end annotation

    .line 452
    invoke-virtual {p1}, Lcom/amazon/org/codehaus/jackson/type/TypeReference;->getType()Ljava/lang/reflect/Type;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/amazon/org/codehaus/jackson/map/type/TypeFactory;->_constructType(Ljava/lang/reflect/Type;Lcom/amazon/org/codehaus/jackson/map/type/TypeBindings;)Lcom/amazon/org/codehaus/jackson/type/JavaType;

    move-result-object p1

    return-object p1
.end method

.method public constructType(Ljava/lang/reflect/Type;)Lcom/amazon/org/codehaus/jackson/type/JavaType;
    .locals 1

    const/4 v0, 0x0

    .line 444
    invoke-virtual {p0, p1, v0}, Lcom/amazon/org/codehaus/jackson/map/type/TypeFactory;->_constructType(Ljava/lang/reflect/Type;Lcom/amazon/org/codehaus/jackson/map/type/TypeBindings;)Lcom/amazon/org/codehaus/jackson/type/JavaType;

    move-result-object p1

    return-object p1
.end method

.method public constructType(Ljava/lang/reflect/Type;Lcom/amazon/org/codehaus/jackson/map/type/TypeBindings;)Lcom/amazon/org/codehaus/jackson/type/JavaType;
    .locals 0

    .line 448
    invoke-virtual {p0, p1, p2}, Lcom/amazon/org/codehaus/jackson/map/type/TypeFactory;->_constructType(Ljava/lang/reflect/Type;Lcom/amazon/org/codehaus/jackson/map/type/TypeBindings;)Lcom/amazon/org/codehaus/jackson/type/JavaType;

    move-result-object p1

    return-object p1
.end method

.method public constructType(Ljava/lang/reflect/Type;Lcom/amazon/org/codehaus/jackson/type/JavaType;)Lcom/amazon/org/codehaus/jackson/type/JavaType;
    .locals 1

    if-nez p2, :cond_0

    const/4 p2, 0x0

    goto :goto_0

    .line 461
    :cond_0
    new-instance v0, Lcom/amazon/org/codehaus/jackson/map/type/TypeBindings;

    invoke-direct {v0, p0, p2}, Lcom/amazon/org/codehaus/jackson/map/type/TypeBindings;-><init>(Lcom/amazon/org/codehaus/jackson/map/type/TypeFactory;Lcom/amazon/org/codehaus/jackson/type/JavaType;)V

    move-object p2, v0

    .line 462
    :goto_0
    invoke-virtual {p0, p1, p2}, Lcom/amazon/org/codehaus/jackson/map/type/TypeFactory;->_constructType(Ljava/lang/reflect/Type;Lcom/amazon/org/codehaus/jackson/map/type/TypeBindings;)Lcom/amazon/org/codehaus/jackson/type/JavaType;

    move-result-object p1

    return-object p1
.end method

.method public constructType(Ljava/lang/reflect/Type;Ljava/lang/Class;)Lcom/amazon/org/codehaus/jackson/type/JavaType;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/Class<",
            "*>;)",
            "Lcom/amazon/org/codehaus/jackson/type/JavaType;"
        }
    .end annotation

    if-nez p2, :cond_0

    const/4 p2, 0x0

    goto :goto_0

    .line 456
    :cond_0
    new-instance v0, Lcom/amazon/org/codehaus/jackson/map/type/TypeBindings;

    invoke-direct {v0, p0, p2}, Lcom/amazon/org/codehaus/jackson/map/type/TypeBindings;-><init>(Lcom/amazon/org/codehaus/jackson/map/type/TypeFactory;Ljava/lang/Class;)V

    move-object p2, v0

    .line 457
    :goto_0
    invoke-virtual {p0, p1, p2}, Lcom/amazon/org/codehaus/jackson/map/type/TypeFactory;->_constructType(Ljava/lang/reflect/Type;Lcom/amazon/org/codehaus/jackson/map/type/TypeBindings;)Lcom/amazon/org/codehaus/jackson/type/JavaType;

    move-result-object p1

    return-object p1
.end method

.method public findTypeParameters(Lcom/amazon/org/codehaus/jackson/type/JavaType;Ljava/lang/Class;)[Lcom/amazon/org/codehaus/jackson/type/JavaType;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/org/codehaus/jackson/type/JavaType;",
            "Ljava/lang/Class<",
            "*>;)[",
            "Lcom/amazon/org/codehaus/jackson/type/JavaType;"
        }
    .end annotation

    .line 378
    invoke-virtual {p1}, Lcom/amazon/org/codehaus/jackson/type/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object v0

    if-ne v0, p2, :cond_2

    .line 381
    invoke-virtual {p1}, Lcom/amazon/org/codehaus/jackson/type/JavaType;->containedTypeCount()I

    move-result p2

    if-nez p2, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 383
    :cond_0
    new-array v0, p2, [Lcom/amazon/org/codehaus/jackson/type/JavaType;

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p2, :cond_1

    .line 385
    invoke-virtual {p1, v1}, Lcom/amazon/org/codehaus/jackson/type/JavaType;->containedType(I)Lcom/amazon/org/codehaus/jackson/type/JavaType;

    move-result-object v2

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0

    .line 395
    :cond_2
    new-instance v1, Lcom/amazon/org/codehaus/jackson/map/type/TypeBindings;

    invoke-direct {v1, p0, p1}, Lcom/amazon/org/codehaus/jackson/map/type/TypeBindings;-><init>(Lcom/amazon/org/codehaus/jackson/map/type/TypeFactory;Lcom/amazon/org/codehaus/jackson/type/JavaType;)V

    invoke-virtual {p0, v0, p2, v1}, Lcom/amazon/org/codehaus/jackson/map/type/TypeFactory;->findTypeParameters(Ljava/lang/Class;Ljava/lang/Class;Lcom/amazon/org/codehaus/jackson/map/type/TypeBindings;)[Lcom/amazon/org/codehaus/jackson/type/JavaType;

    move-result-object p1

    return-object p1
.end method

.method public findTypeParameters(Ljava/lang/Class;Ljava/lang/Class;)[Lcom/amazon/org/codehaus/jackson/type/JavaType;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Class<",
            "*>;)[",
            "Lcom/amazon/org/codehaus/jackson/type/JavaType;"
        }
    .end annotation

    .line 399
    new-instance v0, Lcom/amazon/org/codehaus/jackson/map/type/TypeBindings;

    invoke-direct {v0, p0, p1}, Lcom/amazon/org/codehaus/jackson/map/type/TypeBindings;-><init>(Lcom/amazon/org/codehaus/jackson/map/type/TypeFactory;Ljava/lang/Class;)V

    invoke-virtual {p0, p1, p2, v0}, Lcom/amazon/org/codehaus/jackson/map/type/TypeFactory;->findTypeParameters(Ljava/lang/Class;Ljava/lang/Class;Lcom/amazon/org/codehaus/jackson/map/type/TypeBindings;)[Lcom/amazon/org/codehaus/jackson/type/JavaType;

    move-result-object p1

    return-object p1
.end method

.method public findTypeParameters(Ljava/lang/Class;Ljava/lang/Class;Lcom/amazon/org/codehaus/jackson/map/type/TypeBindings;)[Lcom/amazon/org/codehaus/jackson/type/JavaType;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/amazon/org/codehaus/jackson/map/type/TypeBindings;",
            ")[",
            "Lcom/amazon/org/codehaus/jackson/type/JavaType;"
        }
    .end annotation

    .line 405
    invoke-virtual {p0, p1, p2}, Lcom/amazon/org/codehaus/jackson/map/type/TypeFactory;->_findSuperTypeChain(Ljava/lang/Class;Ljava/lang/Class;)Lcom/amazon/org/codehaus/jackson/map/type/HierarchicType;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 412
    :goto_0
    invoke-virtual {v0}, Lcom/amazon/org/codehaus/jackson/map/type/HierarchicType;->getSuperType()Lcom/amazon/org/codehaus/jackson/map/type/HierarchicType;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 413
    invoke-virtual {v0}, Lcom/amazon/org/codehaus/jackson/map/type/HierarchicType;->getSuperType()Lcom/amazon/org/codehaus/jackson/map/type/HierarchicType;

    move-result-object v0

    .line 414
    invoke-virtual {v0}, Lcom/amazon/org/codehaus/jackson/map/type/HierarchicType;->getRawClass()Ljava/lang/Class;

    move-result-object p1

    .line 415
    new-instance p2, Lcom/amazon/org/codehaus/jackson/map/type/TypeBindings;

    invoke-direct {p2, p0, p1}, Lcom/amazon/org/codehaus/jackson/map/type/TypeBindings;-><init>(Lcom/amazon/org/codehaus/jackson/map/type/TypeFactory;Ljava/lang/Class;)V

    .line 416
    invoke-virtual {v0}, Lcom/amazon/org/codehaus/jackson/map/type/HierarchicType;->isGeneric()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 417
    invoke-virtual {v0}, Lcom/amazon/org/codehaus/jackson/map/type/HierarchicType;->asGeneric()Ljava/lang/reflect/ParameterizedType;

    move-result-object v1

    .line 418
    invoke-interface {v1}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v1

    .line 419
    invoke-virtual {p1}, Ljava/lang/Class;->getTypeParameters()[Ljava/lang/reflect/TypeVariable;

    move-result-object p1

    .line 420
    array-length v2, v1

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v2, :cond_0

    .line 422
    aget-object v4, p1, v3

    invoke-interface {v4}, Ljava/lang/reflect/TypeVariable;->getName()Ljava/lang/String;

    move-result-object v4

    .line 423
    sget-object v5, Lcom/amazon/org/codehaus/jackson/map/type/TypeFactory;->instance:Lcom/amazon/org/codehaus/jackson/map/type/TypeFactory;

    aget-object v6, v1, v3

    invoke-virtual {v5, v6, p3}, Lcom/amazon/org/codehaus/jackson/map/type/TypeFactory;->_constructType(Ljava/lang/reflect/Type;Lcom/amazon/org/codehaus/jackson/map/type/TypeBindings;)Lcom/amazon/org/codehaus/jackson/type/JavaType;

    move-result-object v5

    .line 424
    invoke-virtual {p2, v4, v5}, Lcom/amazon/org/codehaus/jackson/map/type/TypeBindings;->addBinding(Ljava/lang/String;Lcom/amazon/org/codehaus/jackson/type/JavaType;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_0
    move-object p3, p2

    goto :goto_0

    .line 431
    :cond_1
    invoke-virtual {v0}, Lcom/amazon/org/codehaus/jackson/map/type/HierarchicType;->isGeneric()Z

    move-result p1

    if-nez p1, :cond_2

    const/4 p1, 0x0

    return-object p1

    .line 434
    :cond_2
    invoke-virtual {p3}, Lcom/amazon/org/codehaus/jackson/map/type/TypeBindings;->typesAsArray()[Lcom/amazon/org/codehaus/jackson/type/JavaType;

    move-result-object p1

    return-object p1

    .line 408
    :cond_3
    new-instance p3, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Class "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " is not a subtype of "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p3
.end method

.method public uncheckedSimpleType(Ljava/lang/Class;)Lcom/amazon/org/codehaus/jackson/type/JavaType;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lcom/amazon/org/codehaus/jackson/type/JavaType;"
        }
    .end annotation

    .line 662
    new-instance v0, Lcom/amazon/org/codehaus/jackson/map/type/SimpleType;

    invoke-direct {v0, p1}, Lcom/amazon/org/codehaus/jackson/map/type/SimpleType;-><init>(Ljava/lang/Class;)V

    return-object v0
.end method

.method public withModifier(Lcom/amazon/org/codehaus/jackson/map/type/TypeModifier;)Lcom/amazon/org/codehaus/jackson/map/type/TypeFactory;
    .locals 4

    .line 105
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/type/TypeFactory;->_modifiers:[Lcom/amazon/org/codehaus/jackson/map/type/TypeModifier;

    if-nez v0, :cond_0

    .line 106
    new-instance v0, Lcom/amazon/org/codehaus/jackson/map/type/TypeFactory;

    iget-object v1, p0, Lcom/amazon/org/codehaus/jackson/map/type/TypeFactory;->_parser:Lcom/amazon/org/codehaus/jackson/map/type/TypeParser;

    const/4 v2, 0x1

    new-array v2, v2, [Lcom/amazon/org/codehaus/jackson/map/type/TypeModifier;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-direct {v0, v1, v2}, Lcom/amazon/org/codehaus/jackson/map/type/TypeFactory;-><init>(Lcom/amazon/org/codehaus/jackson/map/type/TypeParser;[Lcom/amazon/org/codehaus/jackson/map/type/TypeModifier;)V

    return-object v0

    .line 108
    :cond_0
    new-instance v1, Lcom/amazon/org/codehaus/jackson/map/type/TypeFactory;

    iget-object v2, p0, Lcom/amazon/org/codehaus/jackson/map/type/TypeFactory;->_parser:Lcom/amazon/org/codehaus/jackson/map/type/TypeParser;

    invoke-static {v0, p1}, Lcom/amazon/org/codehaus/jackson/map/util/ArrayBuilders;->insertInListNoDup([Ljava/lang/Object;Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/amazon/org/codehaus/jackson/map/type/TypeModifier;

    invoke-direct {v1, v2, p1}, Lcom/amazon/org/codehaus/jackson/map/type/TypeFactory;-><init>(Lcom/amazon/org/codehaus/jackson/map/type/TypeParser;[Lcom/amazon/org/codehaus/jackson/map/type/TypeModifier;)V

    return-object v1
.end method
