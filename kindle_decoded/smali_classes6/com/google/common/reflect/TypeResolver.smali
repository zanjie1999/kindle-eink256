.class public final Lcom/google/common/reflect/TypeResolver;
.super Ljava/lang/Object;
.source "TypeResolver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/reflect/TypeResolver$TypeVariableKey;,
        Lcom/google/common/reflect/TypeResolver$TypeTable;
    }
.end annotation


# instance fields
.field private final typeTable:Lcom/google/common/reflect/TypeResolver$TypeTable;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    new-instance v0, Lcom/google/common/reflect/TypeResolver$TypeTable;

    invoke-direct {v0}, Lcom/google/common/reflect/TypeResolver$TypeTable;-><init>()V

    iput-object v0, p0, Lcom/google/common/reflect/TypeResolver;->typeTable:Lcom/google/common/reflect/TypeResolver$TypeTable;

    return-void
.end method

.method private constructor <init>(Lcom/google/common/reflect/TypeResolver$TypeTable;)V
    .locals 0

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput-object p1, p0, Lcom/google/common/reflect/TypeResolver;->typeTable:Lcom/google/common/reflect/TypeResolver$TypeTable;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/common/reflect/TypeResolver$TypeTable;Lcom/google/common/reflect/TypeResolver$1;)V
    .locals 0

    .line 51
    invoke-direct {p0, p1}, Lcom/google/common/reflect/TypeResolver;-><init>(Lcom/google/common/reflect/TypeResolver$TypeTable;)V

    return-void
.end method

.method static synthetic access$300(Lcom/google/common/reflect/TypeResolver;[Ljava/lang/reflect/Type;)[Ljava/lang/reflect/Type;
    .locals 0

    .line 51
    invoke-direct {p0, p1}, Lcom/google/common/reflect/TypeResolver;->resolveTypes([Ljava/lang/reflect/Type;)[Ljava/lang/reflect/Type;

    move-result-object p0

    return-object p0
.end method

.method private resolveGenericArrayType(Ljava/lang/reflect/GenericArrayType;)Ljava/lang/reflect/Type;
    .locals 0

    .line 218
    invoke-interface {p1}, Ljava/lang/reflect/GenericArrayType;->getGenericComponentType()Ljava/lang/reflect/Type;

    move-result-object p1

    .line 219
    invoke-virtual {p0, p1}, Lcom/google/common/reflect/TypeResolver;->resolveType(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object p1

    .line 220
    invoke-static {p1}, Lcom/google/common/reflect/Types;->newArrayType(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object p1

    return-object p1
.end method

.method private resolveParameterizedType(Ljava/lang/reflect/ParameterizedType;)Ljava/lang/reflect/ParameterizedType;
    .locals 2

    .line 224
    invoke-interface {p1}, Ljava/lang/reflect/ParameterizedType;->getOwnerType()Ljava/lang/reflect/Type;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 225
    :cond_0
    invoke-virtual {p0, v0}, Lcom/google/common/reflect/TypeResolver;->resolveType(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v0

    .line 226
    :goto_0
    invoke-interface {p1}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/common/reflect/TypeResolver;->resolveType(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v1

    .line 228
    invoke-interface {p1}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object p1

    .line 229
    invoke-direct {p0, p1}, Lcom/google/common/reflect/TypeResolver;->resolveTypes([Ljava/lang/reflect/Type;)[Ljava/lang/reflect/Type;

    move-result-object p1

    .line 230
    check-cast v1, Ljava/lang/Class;

    invoke-static {v0, v1, p1}, Lcom/google/common/reflect/Types;->newParameterizedTypeWithOwner(Ljava/lang/reflect/Type;Ljava/lang/Class;[Ljava/lang/reflect/Type;)Ljava/lang/reflect/ParameterizedType;

    move-result-object p1

    return-object p1
.end method

.method private resolveTypes([Ljava/lang/reflect/Type;)[Ljava/lang/reflect/Type;
    .locals 3

    .line 204
    array-length v0, p1

    new-array v0, v0, [Ljava/lang/reflect/Type;

    const/4 v1, 0x0

    .line 205
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_0

    .line 206
    aget-object v2, p1, v1

    invoke-virtual {p0, v2}, Lcom/google/common/reflect/TypeResolver;->resolveType(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v2

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private resolveWildcardType(Ljava/lang/reflect/WildcardType;)Ljava/lang/reflect/WildcardType;
    .locals 2

    .line 212
    invoke-interface {p1}, Ljava/lang/reflect/WildcardType;->getLowerBounds()[Ljava/lang/reflect/Type;

    move-result-object v0

    .line 213
    invoke-interface {p1}, Ljava/lang/reflect/WildcardType;->getUpperBounds()[Ljava/lang/reflect/Type;

    move-result-object p1

    .line 214
    new-instance v1, Lcom/google/common/reflect/Types$WildcardTypeImpl;

    invoke-direct {p0, v0}, Lcom/google/common/reflect/TypeResolver;->resolveTypes([Ljava/lang/reflect/Type;)[Ljava/lang/reflect/Type;

    move-result-object v0

    invoke-direct {p0, p1}, Lcom/google/common/reflect/TypeResolver;->resolveTypes([Ljava/lang/reflect/Type;)[Ljava/lang/reflect/Type;

    move-result-object p1

    invoke-direct {v1, v0, p1}, Lcom/google/common/reflect/Types$WildcardTypeImpl;-><init>([Ljava/lang/reflect/Type;[Ljava/lang/reflect/Type;)V

    return-object v1
.end method


# virtual methods
.method public resolveType(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;
    .locals 1

    .line 188
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 189
    instance-of v0, p1, Ljava/lang/reflect/TypeVariable;

    if-eqz v0, :cond_0

    .line 190
    iget-object v0, p0, Lcom/google/common/reflect/TypeResolver;->typeTable:Lcom/google/common/reflect/TypeResolver$TypeTable;

    check-cast p1, Ljava/lang/reflect/TypeVariable;

    invoke-virtual {v0, p1}, Lcom/google/common/reflect/TypeResolver$TypeTable;->resolve(Ljava/lang/reflect/TypeVariable;)Ljava/lang/reflect/Type;

    move-result-object p1

    return-object p1

    .line 191
    :cond_0
    instance-of v0, p1, Ljava/lang/reflect/ParameterizedType;

    if-eqz v0, :cond_1

    .line 192
    check-cast p1, Ljava/lang/reflect/ParameterizedType;

    invoke-direct {p0, p1}, Lcom/google/common/reflect/TypeResolver;->resolveParameterizedType(Ljava/lang/reflect/ParameterizedType;)Ljava/lang/reflect/ParameterizedType;

    move-result-object p1

    return-object p1

    .line 193
    :cond_1
    instance-of v0, p1, Ljava/lang/reflect/GenericArrayType;

    if-eqz v0, :cond_2

    .line 194
    check-cast p1, Ljava/lang/reflect/GenericArrayType;

    invoke-direct {p0, p1}, Lcom/google/common/reflect/TypeResolver;->resolveGenericArrayType(Ljava/lang/reflect/GenericArrayType;)Ljava/lang/reflect/Type;

    move-result-object p1

    return-object p1

    .line 195
    :cond_2
    instance-of v0, p1, Ljava/lang/reflect/WildcardType;

    if-eqz v0, :cond_3

    .line 196
    check-cast p1, Ljava/lang/reflect/WildcardType;

    invoke-direct {p0, p1}, Lcom/google/common/reflect/TypeResolver;->resolveWildcardType(Ljava/lang/reflect/WildcardType;)Ljava/lang/reflect/WildcardType;

    move-result-object p1

    :cond_3
    return-object p1
.end method
