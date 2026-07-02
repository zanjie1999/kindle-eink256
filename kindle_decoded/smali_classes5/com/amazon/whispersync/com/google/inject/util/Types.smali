.class public final Lcom/amazon/whispersync/com/google/inject/util/Types;
.super Ljava/lang/Object;
.source "Types.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static arrayOf(Ljava/lang/reflect/Type;)Ljava/lang/reflect/GenericArrayType;
    .locals 1

    .line 70
    new-instance v0, Lcom/amazon/whispersync/com/google/inject/internal/MoreTypes$GenericArrayTypeImpl;

    invoke-direct {v0, p0}, Lcom/amazon/whispersync/com/google/inject/internal/MoreTypes$GenericArrayTypeImpl;-><init>(Ljava/lang/reflect/Type;)V

    return-object v0
.end method

.method public static listOf(Ljava/lang/reflect/Type;)Ljava/lang/reflect/ParameterizedType;
    .locals 3

    .line 99
    const-class v0, Ljava/util/List;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/reflect/Type;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    invoke-static {v0, v1}, Lcom/amazon/whispersync/com/google/inject/util/Types;->newParameterizedType(Ljava/lang/reflect/Type;[Ljava/lang/reflect/Type;)Ljava/lang/reflect/ParameterizedType;

    move-result-object p0

    return-object p0
.end method

.method public static mapOf(Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;)Ljava/lang/reflect/ParameterizedType;
    .locals 3

    .line 119
    const-class v0, Ljava/util/Map;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/reflect/Type;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 p0, 0x1

    aput-object p1, v1, p0

    invoke-static {v0, v1}, Lcom/amazon/whispersync/com/google/inject/util/Types;->newParameterizedType(Ljava/lang/reflect/Type;[Ljava/lang/reflect/Type;)Ljava/lang/reflect/ParameterizedType;

    move-result-object p0

    return-object p0
.end method

.method public static varargs newParameterizedType(Ljava/lang/reflect/Type;[Ljava/lang/reflect/Type;)Ljava/lang/reflect/ParameterizedType;
    .locals 1

    const/4 v0, 0x0

    .line 49
    invoke-static {v0, p0, p1}, Lcom/amazon/whispersync/com/google/inject/util/Types;->newParameterizedTypeWithOwner(Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;[Ljava/lang/reflect/Type;)Ljava/lang/reflect/ParameterizedType;

    move-result-object p0

    return-object p0
.end method

.method public static varargs newParameterizedTypeWithOwner(Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;[Ljava/lang/reflect/Type;)Ljava/lang/reflect/ParameterizedType;
    .locals 1

    .line 60
    new-instance v0, Lcom/amazon/whispersync/com/google/inject/internal/MoreTypes$ParameterizedTypeImpl;

    invoke-direct {v0, p0, p1, p2}, Lcom/amazon/whispersync/com/google/inject/internal/MoreTypes$ParameterizedTypeImpl;-><init>(Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;[Ljava/lang/reflect/Type;)V

    return-object v0
.end method

.method public static providerOf(Ljava/lang/reflect/Type;)Ljava/lang/reflect/ParameterizedType;
    .locals 3

    .line 131
    const-class v0, Lcom/amazon/whispersync/com/google/inject/Provider;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/reflect/Type;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    invoke-static {v0, v1}, Lcom/amazon/whispersync/com/google/inject/util/Types;->newParameterizedType(Ljava/lang/reflect/Type;[Ljava/lang/reflect/Type;)Ljava/lang/reflect/ParameterizedType;

    move-result-object p0

    return-object p0
.end method

.method public static setOf(Ljava/lang/reflect/Type;)Ljava/lang/reflect/ParameterizedType;
    .locals 3

    .line 109
    const-class v0, Ljava/util/Set;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/reflect/Type;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    invoke-static {v0, v1}, Lcom/amazon/whispersync/com/google/inject/util/Types;->newParameterizedType(Ljava/lang/reflect/Type;[Ljava/lang/reflect/Type;)Ljava/lang/reflect/ParameterizedType;

    move-result-object p0

    return-object p0
.end method

.method public static subtypeOf(Ljava/lang/reflect/Type;)Ljava/lang/reflect/WildcardType;
    .locals 3

    .line 80
    new-instance v0, Lcom/amazon/whispersync/com/google/inject/internal/MoreTypes$WildcardTypeImpl;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/reflect/Type;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    sget-object p0, Lcom/amazon/whispersync/com/google/inject/internal/MoreTypes;->EMPTY_TYPE_ARRAY:[Ljava/lang/reflect/Type;

    invoke-direct {v0, v1, p0}, Lcom/amazon/whispersync/com/google/inject/internal/MoreTypes$WildcardTypeImpl;-><init>([Ljava/lang/reflect/Type;[Ljava/lang/reflect/Type;)V

    return-object v0
.end method

.method public static supertypeOf(Ljava/lang/reflect/Type;)Ljava/lang/reflect/WildcardType;
    .locals 5

    .line 89
    new-instance v0, Lcom/amazon/whispersync/com/google/inject/internal/MoreTypes$WildcardTypeImpl;

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/reflect/Type;

    const-class v3, Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    new-array v1, v1, [Ljava/lang/reflect/Type;

    aput-object p0, v1, v4

    invoke-direct {v0, v2, v1}, Lcom/amazon/whispersync/com/google/inject/internal/MoreTypes$WildcardTypeImpl;-><init>([Ljava/lang/reflect/Type;[Ljava/lang/reflect/Type;)V

    return-object v0
.end method
