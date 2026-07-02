.class public Lcom/amazon/whispersync/com/google/inject/internal/MoreTypes;
.super Ljava/lang/Object;
.source "MoreTypes.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/whispersync/com/google/inject/internal/MoreTypes$CompositeType;,
        Lcom/amazon/whispersync/com/google/inject/internal/MoreTypes$WildcardTypeImpl;,
        Lcom/amazon/whispersync/com/google/inject/internal/MoreTypes$GenericArrayTypeImpl;,
        Lcom/amazon/whispersync/com/google/inject/internal/MoreTypes$ParameterizedTypeImpl;
    }
.end annotation


# static fields
.field public static final EMPTY_TYPE_ARRAY:[Ljava/lang/reflect/Type;

.field private static final PRIMITIVE_TO_WRAPPER:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/amazon/whispersync/com/google/inject/TypeLiteral<",
            "*>;",
            "Lcom/amazon/whispersync/com/google/inject/TypeLiteral<",
            "*>;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/reflect/Type;

    .line 47
    sput-object v0, Lcom/amazon/whispersync/com/google/inject/internal/MoreTypes;->EMPTY_TYPE_ARRAY:[Ljava/lang/reflect/Type;

    .line 51
    new-instance v0, Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableMap$Builder;

    invoke-direct {v0}, Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableMap$Builder;-><init>()V

    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-static {v1}, Lcom/amazon/whispersync/com/google/inject/TypeLiteral;->get(Ljava/lang/Class;)Lcom/amazon/whispersync/com/google/inject/TypeLiteral;

    move-result-object v1

    const-class v2, Ljava/lang/Boolean;

    invoke-static {v2}, Lcom/amazon/whispersync/com/google/inject/TypeLiteral;->get(Ljava/lang/Class;)Lcom/amazon/whispersync/com/google/inject/TypeLiteral;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableMap$Builder;

    move-result-object v0

    sget-object v1, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-static {v1}, Lcom/amazon/whispersync/com/google/inject/TypeLiteral;->get(Ljava/lang/Class;)Lcom/amazon/whispersync/com/google/inject/TypeLiteral;

    move-result-object v1

    const-class v2, Ljava/lang/Byte;

    invoke-static {v2}, Lcom/amazon/whispersync/com/google/inject/TypeLiteral;->get(Ljava/lang/Class;)Lcom/amazon/whispersync/com/google/inject/TypeLiteral;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableMap$Builder;

    move-result-object v0

    sget-object v1, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    invoke-static {v1}, Lcom/amazon/whispersync/com/google/inject/TypeLiteral;->get(Ljava/lang/Class;)Lcom/amazon/whispersync/com/google/inject/TypeLiteral;

    move-result-object v1

    const-class v2, Ljava/lang/Short;

    invoke-static {v2}, Lcom/amazon/whispersync/com/google/inject/TypeLiteral;->get(Ljava/lang/Class;)Lcom/amazon/whispersync/com/google/inject/TypeLiteral;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableMap$Builder;

    move-result-object v0

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v1}, Lcom/amazon/whispersync/com/google/inject/TypeLiteral;->get(Ljava/lang/Class;)Lcom/amazon/whispersync/com/google/inject/TypeLiteral;

    move-result-object v1

    const-class v2, Ljava/lang/Integer;

    invoke-static {v2}, Lcom/amazon/whispersync/com/google/inject/TypeLiteral;->get(Ljava/lang/Class;)Lcom/amazon/whispersync/com/google/inject/TypeLiteral;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableMap$Builder;

    move-result-object v0

    sget-object v1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-static {v1}, Lcom/amazon/whispersync/com/google/inject/TypeLiteral;->get(Ljava/lang/Class;)Lcom/amazon/whispersync/com/google/inject/TypeLiteral;

    move-result-object v1

    const-class v2, Ljava/lang/Long;

    invoke-static {v2}, Lcom/amazon/whispersync/com/google/inject/TypeLiteral;->get(Ljava/lang/Class;)Lcom/amazon/whispersync/com/google/inject/TypeLiteral;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableMap$Builder;

    move-result-object v0

    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {v1}, Lcom/amazon/whispersync/com/google/inject/TypeLiteral;->get(Ljava/lang/Class;)Lcom/amazon/whispersync/com/google/inject/TypeLiteral;

    move-result-object v1

    const-class v2, Ljava/lang/Float;

    invoke-static {v2}, Lcom/amazon/whispersync/com/google/inject/TypeLiteral;->get(Ljava/lang/Class;)Lcom/amazon/whispersync/com/google/inject/TypeLiteral;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableMap$Builder;

    move-result-object v0

    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v1}, Lcom/amazon/whispersync/com/google/inject/TypeLiteral;->get(Ljava/lang/Class;)Lcom/amazon/whispersync/com/google/inject/TypeLiteral;

    move-result-object v1

    const-class v2, Ljava/lang/Double;

    invoke-static {v2}, Lcom/amazon/whispersync/com/google/inject/TypeLiteral;->get(Ljava/lang/Class;)Lcom/amazon/whispersync/com/google/inject/TypeLiteral;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableMap$Builder;

    move-result-object v0

    sget-object v1, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    invoke-static {v1}, Lcom/amazon/whispersync/com/google/inject/TypeLiteral;->get(Ljava/lang/Class;)Lcom/amazon/whispersync/com/google/inject/TypeLiteral;

    move-result-object v1

    const-class v2, Ljava/lang/Character;

    invoke-static {v2}, Lcom/amazon/whispersync/com/google/inject/TypeLiteral;->get(Ljava/lang/Class;)Lcom/amazon/whispersync/com/google/inject/TypeLiteral;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableMap$Builder;

    move-result-object v0

    sget-object v1, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    invoke-static {v1}, Lcom/amazon/whispersync/com/google/inject/TypeLiteral;->get(Ljava/lang/Class;)Lcom/amazon/whispersync/com/google/inject/TypeLiteral;

    move-result-object v1

    const-class v2, Ljava/lang/Void;

    invoke-static {v2}, Lcom/amazon/whispersync/com/google/inject/TypeLiteral;->get(Ljava/lang/Class;)Lcom/amazon/whispersync/com/google/inject/TypeLiteral;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableMap$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableMap$Builder;->build()Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableMap;

    move-result-object v0

    sput-object v0, Lcom/amazon/whispersync/com/google/inject/internal/MoreTypes;->PRIMITIVE_TO_WRAPPER:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Ljava/lang/reflect/Type;Ljava/lang/String;)V
    .locals 0

    .line 45
    invoke-static {p0, p1}, Lcom/amazon/whispersync/com/google/inject/internal/MoreTypes;->checkNotPrimitive(Ljava/lang/reflect/Type;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Ljava/lang/reflect/Type;)Z
    .locals 0

    .line 45
    invoke-static {p0}, Lcom/amazon/whispersync/com/google/inject/internal/MoreTypes;->isFullySpecified(Ljava/lang/reflect/Type;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$200(Ljava/lang/Object;)I
    .locals 0

    .line 45
    invoke-static {p0}, Lcom/amazon/whispersync/com/google/inject/internal/MoreTypes;->hashCodeOrZero(Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public static canonicalize(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;
    .locals 3

    .line 123
    instance-of v0, p0, Ljava/lang/Class;

    if-eqz v0, :cond_1

    .line 124
    check-cast p0, Ljava/lang/Class;

    .line 125
    invoke-virtual {p0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/amazon/whispersync/com/google/inject/internal/MoreTypes$GenericArrayTypeImpl;

    invoke-virtual {p0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object p0

    invoke-static {p0}, Lcom/amazon/whispersync/com/google/inject/internal/MoreTypes;->canonicalize(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/amazon/whispersync/com/google/inject/internal/MoreTypes$GenericArrayTypeImpl;-><init>(Ljava/lang/reflect/Type;)V

    move-object p0, v0

    :cond_0
    return-object p0

    .line 127
    :cond_1
    instance-of v0, p0, Lcom/amazon/whispersync/com/google/inject/internal/MoreTypes$CompositeType;

    if-eqz v0, :cond_2

    return-object p0

    .line 130
    :cond_2
    instance-of v0, p0, Ljava/lang/reflect/ParameterizedType;

    if-eqz v0, :cond_3

    .line 131
    check-cast p0, Ljava/lang/reflect/ParameterizedType;

    .line 132
    new-instance v0, Lcom/amazon/whispersync/com/google/inject/internal/MoreTypes$ParameterizedTypeImpl;

    invoke-interface {p0}, Ljava/lang/reflect/ParameterizedType;->getOwnerType()Ljava/lang/reflect/Type;

    move-result-object v1

    invoke-interface {p0}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object v2

    invoke-interface {p0}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object p0

    invoke-direct {v0, v1, v2, p0}, Lcom/amazon/whispersync/com/google/inject/internal/MoreTypes$ParameterizedTypeImpl;-><init>(Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;[Ljava/lang/reflect/Type;)V

    return-object v0

    .line 135
    :cond_3
    instance-of v0, p0, Ljava/lang/reflect/GenericArrayType;

    if-eqz v0, :cond_4

    .line 136
    check-cast p0, Ljava/lang/reflect/GenericArrayType;

    .line 137
    new-instance v0, Lcom/amazon/whispersync/com/google/inject/internal/MoreTypes$GenericArrayTypeImpl;

    invoke-interface {p0}, Ljava/lang/reflect/GenericArrayType;->getGenericComponentType()Ljava/lang/reflect/Type;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/amazon/whispersync/com/google/inject/internal/MoreTypes$GenericArrayTypeImpl;-><init>(Ljava/lang/reflect/Type;)V

    return-object v0

    .line 139
    :cond_4
    instance-of v0, p0, Ljava/lang/reflect/WildcardType;

    if-eqz v0, :cond_5

    .line 140
    check-cast p0, Ljava/lang/reflect/WildcardType;

    .line 141
    new-instance v0, Lcom/amazon/whispersync/com/google/inject/internal/MoreTypes$WildcardTypeImpl;

    invoke-interface {p0}, Ljava/lang/reflect/WildcardType;->getUpperBounds()[Ljava/lang/reflect/Type;

    move-result-object v1

    invoke-interface {p0}, Ljava/lang/reflect/WildcardType;->getLowerBounds()[Ljava/lang/reflect/Type;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lcom/amazon/whispersync/com/google/inject/internal/MoreTypes$WildcardTypeImpl;-><init>([Ljava/lang/reflect/Type;[Ljava/lang/reflect/Type;)V

    return-object v0

    :cond_5
    return-object p0
.end method

.method public static canonicalizeForKey(Lcom/amazon/whispersync/com/google/inject/TypeLiteral;)Lcom/amazon/whispersync/com/google/inject/TypeLiteral;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/amazon/whispersync/com/google/inject/TypeLiteral<",
            "TT;>;)",
            "Lcom/amazon/whispersync/com/google/inject/TypeLiteral<",
            "TT;>;"
        }
    .end annotation

    .line 75
    invoke-virtual {p0}, Lcom/amazon/whispersync/com/google/inject/TypeLiteral;->getType()Ljava/lang/reflect/Type;

    move-result-object v0

    .line 76
    invoke-static {v0}, Lcom/amazon/whispersync/com/google/inject/internal/MoreTypes;->isFullySpecified(Ljava/lang/reflect/Type;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 81
    invoke-virtual {p0}, Lcom/amazon/whispersync/com/google/inject/TypeLiteral;->getRawType()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Lcom/amazon/whispersync/javax/inject/Provider;

    if-ne v1, v2, :cond_0

    .line 82
    check-cast v0, Ljava/lang/reflect/ParameterizedType;

    .line 87
    invoke-interface {v0}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object p0

    const/4 v0, 0x0

    aget-object p0, p0, v0

    invoke-static {p0}, Lcom/amazon/whispersync/com/google/inject/util/Types;->providerOf(Ljava/lang/reflect/Type;)Ljava/lang/reflect/ParameterizedType;

    move-result-object p0

    invoke-static {p0}, Lcom/amazon/whispersync/com/google/inject/TypeLiteral;->get(Ljava/lang/reflect/Type;)Lcom/amazon/whispersync/com/google/inject/TypeLiteral;

    move-result-object p0

    return-object p0

    .line 93
    :cond_0
    sget-object v0, Lcom/amazon/whispersync/com/google/inject/internal/MoreTypes;->PRIMITIVE_TO_WRAPPER:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/whispersync/com/google/inject/TypeLiteral;

    if-eqz v0, :cond_1

    move-object p0, v0

    :cond_1
    return-object p0

    .line 77
    :cond_2
    new-instance v0, Lcom/amazon/whispersync/com/google/inject/internal/Errors;

    invoke-direct {v0}, Lcom/amazon/whispersync/com/google/inject/internal/Errors;-><init>()V

    invoke-virtual {v0, p0}, Lcom/amazon/whispersync/com/google/inject/internal/Errors;->keyNotFullySpecified(Lcom/amazon/whispersync/com/google/inject/TypeLiteral;)Lcom/amazon/whispersync/com/google/inject/internal/Errors;

    move-result-object p0

    .line 78
    new-instance v0, Lcom/amazon/whispersync/com/google/inject/ConfigurationException;

    invoke-virtual {p0}, Lcom/amazon/whispersync/com/google/inject/internal/Errors;->getMessages()Ljava/util/List;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/amazon/whispersync/com/google/inject/ConfigurationException;-><init>(Ljava/lang/Iterable;)V

    throw v0
.end method

.method private static checkNotPrimitive(Ljava/lang/reflect/Type;Ljava/lang/String;)V
    .locals 4

    .line 505
    instance-of v0, p0, Ljava/lang/Class;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    move-object v0, p0

    check-cast v0, Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->isPrimitive()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v1

    aput-object p0, v3, v2

    const-string p0, "Primitive types are not allowed in %s: %s"

    invoke-static {v0, p0, v3}, Lcom/amazon/whispersync/com/google/inject/internal/util/$Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private static declaringClassOf(Ljava/lang/reflect/TypeVariable;)Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/TypeVariable;",
            ")",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 316
    invoke-interface {p0}, Ljava/lang/reflect/TypeVariable;->getGenericDeclaration()Ljava/lang/reflect/GenericDeclaration;

    move-result-object p0

    .line 317
    instance-of v0, p0, Ljava/lang/Class;

    if-eqz v0, :cond_0

    check-cast p0, Ljava/lang/Class;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public static equals(Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 188
    :cond_0
    instance-of v1, p0, Ljava/lang/Class;

    if-eqz v1, :cond_1

    .line 190
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    .line 192
    :cond_1
    instance-of v1, p0, Ljava/lang/reflect/ParameterizedType;

    const/4 v2, 0x0

    if-eqz v1, :cond_4

    .line 193
    instance-of v1, p1, Ljava/lang/reflect/ParameterizedType;

    if-nez v1, :cond_2

    return v2

    .line 198
    :cond_2
    check-cast p0, Ljava/lang/reflect/ParameterizedType;

    .line 199
    check-cast p1, Ljava/lang/reflect/ParameterizedType;

    .line 200
    invoke-interface {p0}, Ljava/lang/reflect/ParameterizedType;->getOwnerType()Ljava/lang/reflect/Type;

    move-result-object v1

    invoke-interface {p1}, Ljava/lang/reflect/ParameterizedType;->getOwnerType()Ljava/lang/reflect/Type;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/amazon/whispersync/com/google/inject/internal/util/$Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p0}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object v1

    invoke-interface {p1}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p0}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object p0

    invoke-interface {p1}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object p1

    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 204
    :cond_4
    instance-of v1, p0, Ljava/lang/reflect/GenericArrayType;

    if-eqz v1, :cond_6

    .line 205
    instance-of v0, p1, Ljava/lang/reflect/GenericArrayType;

    if-nez v0, :cond_5

    return v2

    .line 209
    :cond_5
    check-cast p0, Ljava/lang/reflect/GenericArrayType;

    .line 210
    check-cast p1, Ljava/lang/reflect/GenericArrayType;

    .line 211
    invoke-interface {p0}, Ljava/lang/reflect/GenericArrayType;->getGenericComponentType()Ljava/lang/reflect/Type;

    move-result-object p0

    invoke-interface {p1}, Ljava/lang/reflect/GenericArrayType;->getGenericComponentType()Ljava/lang/reflect/Type;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/amazon/whispersync/com/google/inject/internal/MoreTypes;->equals(Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;)Z

    move-result p0

    return p0

    .line 213
    :cond_6
    instance-of v1, p0, Ljava/lang/reflect/WildcardType;

    if-eqz v1, :cond_9

    .line 214
    instance-of v1, p1, Ljava/lang/reflect/WildcardType;

    if-nez v1, :cond_7

    return v2

    .line 218
    :cond_7
    check-cast p0, Ljava/lang/reflect/WildcardType;

    .line 219
    check-cast p1, Ljava/lang/reflect/WildcardType;

    .line 220
    invoke-interface {p0}, Ljava/lang/reflect/WildcardType;->getUpperBounds()[Ljava/lang/reflect/Type;

    move-result-object v1

    invoke-interface {p1}, Ljava/lang/reflect/WildcardType;->getUpperBounds()[Ljava/lang/reflect/Type;

    move-result-object v3

    invoke-static {v1, v3}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-interface {p0}, Ljava/lang/reflect/WildcardType;->getLowerBounds()[Ljava/lang/reflect/Type;

    move-result-object p0

    invoke-interface {p1}, Ljava/lang/reflect/WildcardType;->getLowerBounds()[Ljava/lang/reflect/Type;

    move-result-object p1

    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_8

    goto :goto_1

    :cond_8
    const/4 v0, 0x0

    :goto_1
    return v0

    .line 223
    :cond_9
    instance-of v1, p0, Ljava/lang/reflect/TypeVariable;

    if-eqz v1, :cond_c

    .line 224
    instance-of v1, p1, Ljava/lang/reflect/TypeVariable;

    if-nez v1, :cond_a

    return v2

    .line 227
    :cond_a
    check-cast p0, Ljava/lang/reflect/TypeVariable;

    .line 228
    check-cast p1, Ljava/lang/reflect/TypeVariable;

    .line 229
    invoke-interface {p0}, Ljava/lang/reflect/TypeVariable;->getGenericDeclaration()Ljava/lang/reflect/GenericDeclaration;

    move-result-object v1

    invoke-interface {p1}, Ljava/lang/reflect/TypeVariable;->getGenericDeclaration()Ljava/lang/reflect/GenericDeclaration;

    move-result-object v3

    if-ne v1, v3, :cond_b

    invoke-interface {p0}, Ljava/lang/reflect/TypeVariable;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1}, Ljava/lang/reflect/TypeVariable;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_b

    goto :goto_2

    :cond_b
    const/4 v0, 0x0

    :goto_2
    return v0

    :cond_c
    return v2
.end method

.method public static getGenericSupertype(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/reflect/Type;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/reflect/Type;"
        }
    .end annotation

    if-ne p2, p1, :cond_0

    return-object p0

    .line 257
    :cond_0
    invoke-virtual {p2}, Ljava/lang/Class;->isInterface()Z

    move-result p0

    if-eqz p0, :cond_3

    .line 258
    invoke-virtual {p1}, Ljava/lang/Class;->getInterfaces()[Ljava/lang/Class;

    move-result-object p0

    const/4 v0, 0x0

    .line 259
    array-length v1, p0

    :goto_0
    if-ge v0, v1, :cond_3

    .line 260
    aget-object v2, p0, v0

    if-ne v2, p2, :cond_1

    .line 261
    invoke-virtual {p1}, Ljava/lang/Class;->getGenericInterfaces()[Ljava/lang/reflect/Type;

    move-result-object p0

    aget-object p0, p0, v0

    return-object p0

    .line 262
    :cond_1
    aget-object v2, p0, v0

    invoke-virtual {p2, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 263
    invoke-virtual {p1}, Ljava/lang/Class;->getGenericInterfaces()[Ljava/lang/reflect/Type;

    move-result-object p1

    aget-object p1, p1, v0

    aget-object p0, p0, v0

    invoke-static {p1, p0, p2}, Lcom/amazon/whispersync/com/google/inject/internal/MoreTypes;->getGenericSupertype(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/reflect/Type;

    move-result-object p0

    return-object p0

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 269
    :cond_3
    invoke-virtual {p1}, Ljava/lang/Class;->isInterface()Z

    move-result p0

    if-nez p0, :cond_6

    .line 270
    :goto_1
    const-class p0, Ljava/lang/Object;

    if-eq p1, p0, :cond_6

    .line 271
    invoke-virtual {p1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object p0

    if-ne p0, p2, :cond_4

    .line 273
    invoke-virtual {p1}, Ljava/lang/Class;->getGenericSuperclass()Ljava/lang/reflect/Type;

    move-result-object p0

    return-object p0

    .line 274
    :cond_4
    invoke-virtual {p2, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 275
    invoke-virtual {p1}, Ljava/lang/Class;->getGenericSuperclass()Ljava/lang/reflect/Type;

    move-result-object p1

    invoke-static {p1, p0, p2}, Lcom/amazon/whispersync/com/google/inject/internal/MoreTypes;->getGenericSupertype(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/reflect/Type;

    move-result-object p0

    return-object p0

    :cond_5
    move-object p1, p0

    goto :goto_1

    :cond_6
    return-object p2
.end method

.method public static getRawType(Ljava/lang/reflect/Type;)Ljava/lang/Class;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            ")",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 150
    instance-of v0, p0, Ljava/lang/Class;

    if-eqz v0, :cond_0

    .line 152
    check-cast p0, Ljava/lang/Class;

    return-object p0

    .line 154
    :cond_0
    instance-of v0, p0, Ljava/lang/reflect/ParameterizedType;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 155
    move-object v0, p0

    check-cast v0, Ljava/lang/reflect/ParameterizedType;

    .line 160
    invoke-interface {v0}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object v0

    .line 161
    instance-of v2, v0, Ljava/lang/Class;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p0, v3, v1

    const/4 v1, 0x1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    aput-object p0, v3, v1

    const-string p0, "Expected a Class, but <%s> is of type %s"

    invoke-static {v2, p0, v3}, Lcom/amazon/whispersync/com/google/inject/internal/util/$Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 163
    check-cast v0, Ljava/lang/Class;

    return-object v0

    .line 165
    :cond_1
    instance-of v0, p0, Ljava/lang/reflect/GenericArrayType;

    if-eqz v0, :cond_2

    .line 166
    check-cast p0, Ljava/lang/reflect/GenericArrayType;

    invoke-interface {p0}, Ljava/lang/reflect/GenericArrayType;->getGenericComponentType()Ljava/lang/reflect/Type;

    move-result-object p0

    .line 167
    invoke-static {p0}, Lcom/amazon/whispersync/com/google/inject/internal/MoreTypes;->getRawType(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object p0

    invoke-static {p0, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    return-object p0

    .line 169
    :cond_2
    instance-of v0, p0, Ljava/lang/reflect/TypeVariable;

    if-eqz v0, :cond_3

    .line 172
    const-class p0, Ljava/lang/Object;

    return-object p0

    .line 175
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected a Class, ParameterizedType, or GenericArrayType, but <"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "> is of type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static hashCodeOrZero(Ljava/lang/Object;)I
    .locals 0

    if-eqz p0, :cond_0

    .line 239
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static indexOf([Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 2

    const/4 v0, 0x0

    .line 303
    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_1

    .line 304
    aget-object v1, p0, v0

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 308
    :cond_1
    new-instance p0, Ljava/util/NoSuchElementException;

    invoke-direct {p0}, Ljava/util/NoSuchElementException;-><init>()V

    throw p0
.end method

.method private static isFullySpecified(Ljava/lang/reflect/Type;)Z
    .locals 1

    .line 103
    instance-of v0, p0, Ljava/lang/Class;

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    .line 106
    :cond_0
    instance-of v0, p0, Lcom/amazon/whispersync/com/google/inject/internal/MoreTypes$CompositeType;

    if-eqz v0, :cond_1

    .line 107
    check-cast p0, Lcom/amazon/whispersync/com/google/inject/internal/MoreTypes$CompositeType;

    invoke-interface {p0}, Lcom/amazon/whispersync/com/google/inject/internal/MoreTypes$CompositeType;->isFullySpecified()Z

    move-result p0

    return p0

    .line 109
    :cond_1
    instance-of v0, p0, Ljava/lang/reflect/TypeVariable;

    if-eqz v0, :cond_2

    const/4 p0, 0x0

    return p0

    .line 113
    :cond_2
    invoke-static {p0}, Lcom/amazon/whispersync/com/google/inject/internal/MoreTypes;->canonicalize(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object p0

    check-cast p0, Lcom/amazon/whispersync/com/google/inject/internal/MoreTypes$CompositeType;

    invoke-interface {p0}, Lcom/amazon/whispersync/com/google/inject/internal/MoreTypes$CompositeType;->isFullySpecified()Z

    move-result p0

    return p0
.end method

.method public static resolveTypeVariable(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/reflect/TypeVariable;)Ljava/lang/reflect/Type;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/reflect/TypeVariable;",
            ")",
            "Ljava/lang/reflect/Type;"
        }
    .end annotation

    .line 286
    invoke-static {p2}, Lcom/amazon/whispersync/com/google/inject/internal/MoreTypes;->declaringClassOf(Ljava/lang/reflect/TypeVariable;)Ljava/lang/Class;

    move-result-object v0

    if-nez v0, :cond_0

    return-object p2

    .line 293
    :cond_0
    invoke-static {p0, p1, v0}, Lcom/amazon/whispersync/com/google/inject/internal/MoreTypes;->getGenericSupertype(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/reflect/Type;

    move-result-object p0

    .line 294
    instance-of p1, p0, Ljava/lang/reflect/ParameterizedType;

    if-eqz p1, :cond_1

    .line 295
    invoke-virtual {v0}, Ljava/lang/Class;->getTypeParameters()[Ljava/lang/reflect/TypeVariable;

    move-result-object p1

    invoke-static {p1, p2}, Lcom/amazon/whispersync/com/google/inject/internal/MoreTypes;->indexOf([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p1

    .line 296
    check-cast p0, Ljava/lang/reflect/ParameterizedType;

    invoke-interface {p0}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object p0

    aget-object p0, p0, p1

    return-object p0

    :cond_1
    return-object p2
.end method

.method public static typeToString(Ljava/lang/reflect/Type;)Ljava/lang/String;
    .locals 1

    .line 243
    instance-of v0, p0, Ljava/lang/Class;

    if-eqz v0, :cond_0

    check-cast p0, Ljava/lang/Class;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method
