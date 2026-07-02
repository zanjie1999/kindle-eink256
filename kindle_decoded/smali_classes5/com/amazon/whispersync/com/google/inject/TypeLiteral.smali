.class public Lcom/amazon/whispersync/com/google/inject/TypeLiteral;
.super Ljava/lang/Object;
.source "TypeLiteral.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field final hashCode:I

.field final rawType:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "-TT;>;"
        }
    .end annotation
.end field

.field final type:Ljava/lang/reflect/Type;


# direct methods
.method protected constructor <init>()V
    .locals 1

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/whispersync/com/google/inject/TypeLiteral;->getSuperclassTypeParameter(Ljava/lang/Class;)Ljava/lang/reflect/Type;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/whispersync/com/google/inject/TypeLiteral;->type:Ljava/lang/reflect/Type;

    .line 78
    invoke-static {v0}, Lcom/amazon/whispersync/com/google/inject/internal/MoreTypes;->getRawType(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/whispersync/com/google/inject/TypeLiteral;->rawType:Ljava/lang/Class;

    .line 79
    iget-object v0, p0, Lcom/amazon/whispersync/com/google/inject/TypeLiteral;->type:Ljava/lang/reflect/Type;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    iput v0, p0, Lcom/amazon/whispersync/com/google/inject/TypeLiteral;->hashCode:I

    return-void
.end method

.method constructor <init>(Ljava/lang/reflect/Type;)V
    .locals 1

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v0, "type"

    .line 87
    invoke-static {p1, v0}, Lcom/amazon/whispersync/com/google/inject/internal/util/$Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/reflect/Type;

    invoke-static {p1}, Lcom/amazon/whispersync/com/google/inject/internal/MoreTypes;->canonicalize(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/whispersync/com/google/inject/TypeLiteral;->type:Ljava/lang/reflect/Type;

    .line 88
    invoke-static {p1}, Lcom/amazon/whispersync/com/google/inject/internal/MoreTypes;->getRawType(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/whispersync/com/google/inject/TypeLiteral;->rawType:Ljava/lang/Class;

    .line 89
    iget-object p1, p0, Lcom/amazon/whispersync/com/google/inject/TypeLiteral;->type:Ljava/lang/reflect/Type;

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p1

    iput p1, p0, Lcom/amazon/whispersync/com/google/inject/TypeLiteral;->hashCode:I

    return-void
.end method

.method static fromSuperclassTypeParameter(Ljava/lang/Class;)Lcom/amazon/whispersync/com/google/inject/TypeLiteral;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lcom/amazon/whispersync/com/google/inject/TypeLiteral<",
            "*>;"
        }
    .end annotation

    .line 109
    new-instance v0, Lcom/amazon/whispersync/com/google/inject/TypeLiteral;

    invoke-static {p0}, Lcom/amazon/whispersync/com/google/inject/TypeLiteral;->getSuperclassTypeParameter(Ljava/lang/Class;)Ljava/lang/reflect/Type;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/amazon/whispersync/com/google/inject/TypeLiteral;-><init>(Ljava/lang/reflect/Type;)V

    return-object v0
.end method

.method public static get(Ljava/lang/Class;)Lcom/amazon/whispersync/com/google/inject/TypeLiteral;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Lcom/amazon/whispersync/com/google/inject/TypeLiteral<",
            "TT;>;"
        }
    .end annotation

    .line 162
    new-instance v0, Lcom/amazon/whispersync/com/google/inject/TypeLiteral;

    invoke-direct {v0, p0}, Lcom/amazon/whispersync/com/google/inject/TypeLiteral;-><init>(Ljava/lang/reflect/Type;)V

    return-object v0
.end method

.method public static get(Ljava/lang/reflect/Type;)Lcom/amazon/whispersync/com/google/inject/TypeLiteral;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            ")",
            "Lcom/amazon/whispersync/com/google/inject/TypeLiteral<",
            "*>;"
        }
    .end annotation

    .line 155
    new-instance v0, Lcom/amazon/whispersync/com/google/inject/TypeLiteral;

    invoke-direct {v0, p0}, Lcom/amazon/whispersync/com/google/inject/TypeLiteral;-><init>(Ljava/lang/reflect/Type;)V

    return-object v0
.end method

.method static getSuperclassTypeParameter(Ljava/lang/Class;)Ljava/lang/reflect/Type;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/reflect/Type;"
        }
    .end annotation

    .line 97
    invoke-virtual {p0}, Ljava/lang/Class;->getGenericSuperclass()Ljava/lang/reflect/Type;

    move-result-object p0

    .line 98
    instance-of v0, p0, Ljava/lang/Class;

    if-nez v0, :cond_0

    .line 101
    check-cast p0, Ljava/lang/reflect/ParameterizedType;

    .line 102
    invoke-interface {p0}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object p0

    const/4 v0, 0x0

    aget-object p0, p0, v0

    invoke-static {p0}, Lcom/amazon/whispersync/com/google/inject/internal/MoreTypes;->canonicalize(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object p0

    return-object p0

    .line 99
    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "Missing type parameter."

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private resolveAll([Ljava/lang/reflect/Type;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/reflect/Type;",
            ")",
            "Ljava/util/List<",
            "Lcom/amazon/whispersync/com/google/inject/TypeLiteral<",
            "*>;>;"
        }
    .end annotation

    .line 168
    array-length v0, p1

    new-array v0, v0, [Lcom/amazon/whispersync/com/google/inject/TypeLiteral;

    const/4 v1, 0x0

    .line 169
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_0

    .line 170
    aget-object v2, p1, v1

    invoke-virtual {p0, v2}, Lcom/amazon/whispersync/com/google/inject/TypeLiteral;->resolve(Ljava/lang/reflect/Type;)Lcom/amazon/whispersync/com/google/inject/TypeLiteral;

    move-result-object v2

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 172
    :cond_0
    invoke-static {v0}, Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableList;->of([Ljava/lang/Object;)Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableList;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    .line 143
    instance-of v0, p1, Lcom/amazon/whispersync/com/google/inject/TypeLiteral;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazon/whispersync/com/google/inject/TypeLiteral;->type:Ljava/lang/reflect/Type;

    check-cast p1, Lcom/amazon/whispersync/com/google/inject/TypeLiteral;

    iget-object p1, p1, Lcom/amazon/whispersync/com/google/inject/TypeLiteral;->type:Ljava/lang/reflect/Type;

    invoke-static {v0, p1}, Lcom/amazon/whispersync/com/google/inject/internal/MoreTypes;->equals(Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public getExceptionTypes(Ljava/lang/reflect/Member;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Member;",
            ")",
            "Ljava/util/List<",
            "Lcom/amazon/whispersync/com/google/inject/TypeLiteral<",
            "*>;>;"
        }
    .end annotation

    .line 309
    instance-of v0, p1, Ljava/lang/reflect/Method;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-eqz v0, :cond_0

    .line 310
    check-cast p1, Ljava/lang/reflect/Method;

    .line 311
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v0

    iget-object v4, p0, Lcom/amazon/whispersync/com/google/inject/TypeLiteral;->rawType:Ljava/lang/Class;

    invoke-virtual {v0, v4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v2

    iget-object v2, p0, Lcom/amazon/whispersync/com/google/inject/TypeLiteral;->type:Ljava/lang/reflect/Type;

    aput-object v2, v3, v1

    const-string v1, "%s is not defined by a supertype of %s"

    invoke-static {v0, v1, v3}, Lcom/amazon/whispersync/com/google/inject/internal/util/$Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 313
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getGenericExceptionTypes()[Ljava/lang/reflect/Type;

    move-result-object p1

    goto :goto_0

    .line 315
    :cond_0
    instance-of v0, p1, Ljava/lang/reflect/Constructor;

    if-eqz v0, :cond_1

    .line 316
    check-cast p1, Ljava/lang/reflect/Constructor;

    .line 317
    invoke-virtual {p1}, Ljava/lang/reflect/Constructor;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v0

    iget-object v4, p0, Lcom/amazon/whispersync/com/google/inject/TypeLiteral;->rawType:Ljava/lang/Class;

    invoke-virtual {v0, v4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v2

    iget-object v2, p0, Lcom/amazon/whispersync/com/google/inject/TypeLiteral;->type:Ljava/lang/reflect/Type;

    aput-object v2, v3, v1

    const-string v1, "%s does not construct a supertype of %s"

    invoke-static {v0, v1, v3}, Lcom/amazon/whispersync/com/google/inject/internal/util/$Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 319
    invoke-virtual {p1}, Ljava/lang/reflect/Constructor;->getGenericExceptionTypes()[Ljava/lang/reflect/Type;

    move-result-object p1

    .line 325
    :goto_0
    invoke-direct {p0, p1}, Lcom/amazon/whispersync/com/google/inject/TypeLiteral;->resolveAll([Ljava/lang/reflect/Type;)Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 322
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Not a method or a constructor: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getFieldType(Ljava/lang/reflect/Field;)Lcom/amazon/whispersync/com/google/inject/TypeLiteral;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Field;",
            ")",
            "Lcom/amazon/whispersync/com/google/inject/TypeLiteral<",
            "*>;"
        }
    .end annotation

    .line 267
    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/whispersync/com/google/inject/TypeLiteral;->rawType:Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    iget-object v2, p0, Lcom/amazon/whispersync/com/google/inject/TypeLiteral;->type:Ljava/lang/reflect/Type;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const-string v2, "%s is not defined by a supertype of %s"

    invoke-static {v0, v2, v1}, Lcom/amazon/whispersync/com/google/inject/internal/util/$Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 269
    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getGenericType()Ljava/lang/reflect/Type;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/amazon/whispersync/com/google/inject/TypeLiteral;->resolve(Ljava/lang/reflect/Type;)Lcom/amazon/whispersync/com/google/inject/TypeLiteral;

    move-result-object p1

    return-object p1
.end method

.method public getParameterTypes(Ljava/lang/reflect/Member;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Member;",
            ")",
            "Ljava/util/List<",
            "Lcom/amazon/whispersync/com/google/inject/TypeLiteral<",
            "*>;>;"
        }
    .end annotation

    .line 281
    instance-of v0, p1, Ljava/lang/reflect/Method;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-eqz v0, :cond_0

    .line 282
    check-cast p1, Ljava/lang/reflect/Method;

    .line 283
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v0

    iget-object v4, p0, Lcom/amazon/whispersync/com/google/inject/TypeLiteral;->rawType:Ljava/lang/Class;

    invoke-virtual {v0, v4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v2

    iget-object v2, p0, Lcom/amazon/whispersync/com/google/inject/TypeLiteral;->type:Ljava/lang/reflect/Type;

    aput-object v2, v3, v1

    const-string v1, "%s is not defined by a supertype of %s"

    invoke-static {v0, v1, v3}, Lcom/amazon/whispersync/com/google/inject/internal/util/$Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 285
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getGenericParameterTypes()[Ljava/lang/reflect/Type;

    move-result-object p1

    goto :goto_0

    .line 287
    :cond_0
    instance-of v0, p1, Ljava/lang/reflect/Constructor;

    if-eqz v0, :cond_1

    .line 288
    check-cast p1, Ljava/lang/reflect/Constructor;

    .line 289
    invoke-virtual {p1}, Ljava/lang/reflect/Constructor;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v0

    iget-object v4, p0, Lcom/amazon/whispersync/com/google/inject/TypeLiteral;->rawType:Ljava/lang/Class;

    invoke-virtual {v0, v4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v2

    iget-object v2, p0, Lcom/amazon/whispersync/com/google/inject/TypeLiteral;->type:Ljava/lang/reflect/Type;

    aput-object v2, v3, v1

    const-string v1, "%s does not construct a supertype of %s"

    invoke-static {v0, v1, v3}, Lcom/amazon/whispersync/com/google/inject/internal/util/$Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 291
    invoke-virtual {p1}, Ljava/lang/reflect/Constructor;->getGenericParameterTypes()[Ljava/lang/reflect/Type;

    move-result-object p1

    .line 297
    :goto_0
    invoke-direct {p0, p1}, Lcom/amazon/whispersync/com/google/inject/TypeLiteral;->resolveAll([Ljava/lang/reflect/Type;)Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 294
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Not a method or a constructor: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final getRawType()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "-TT;>;"
        }
    .end annotation

    .line 118
    iget-object v0, p0, Lcom/amazon/whispersync/com/google/inject/TypeLiteral;->rawType:Ljava/lang/Class;

    return-object v0
.end method

.method public getReturnType(Ljava/lang/reflect/Method;)Lcom/amazon/whispersync/com/google/inject/TypeLiteral;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Method;",
            ")",
            "Lcom/amazon/whispersync/com/google/inject/TypeLiteral<",
            "*>;"
        }
    .end annotation

    .line 335
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/whispersync/com/google/inject/TypeLiteral;->rawType:Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    iget-object v2, p0, Lcom/amazon/whispersync/com/google/inject/TypeLiteral;->type:Ljava/lang/reflect/Type;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const-string v2, "%s is not defined by a supertype of %s"

    invoke-static {v0, v2, v1}, Lcom/amazon/whispersync/com/google/inject/internal/util/$Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 337
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getGenericReturnType()Ljava/lang/reflect/Type;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/amazon/whispersync/com/google/inject/TypeLiteral;->resolve(Ljava/lang/reflect/Type;)Lcom/amazon/whispersync/com/google/inject/TypeLiteral;

    move-result-object p1

    return-object p1
.end method

.method public getSupertype(Ljava/lang/Class;)Lcom/amazon/whispersync/com/google/inject/TypeLiteral;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lcom/amazon/whispersync/com/google/inject/TypeLiteral<",
            "*>;"
        }
    .end annotation

    .line 255
    iget-object v0, p0, Lcom/amazon/whispersync/com/google/inject/TypeLiteral;->rawType:Ljava/lang/Class;

    invoke-virtual {p1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    iget-object v2, p0, Lcom/amazon/whispersync/com/google/inject/TypeLiteral;->type:Ljava/lang/reflect/Type;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const-string v2, "%s is not a supertype of %s"

    invoke-static {v0, v2, v1}, Lcom/amazon/whispersync/com/google/inject/internal/util/$Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 257
    iget-object v0, p0, Lcom/amazon/whispersync/com/google/inject/TypeLiteral;->type:Ljava/lang/reflect/Type;

    iget-object v1, p0, Lcom/amazon/whispersync/com/google/inject/TypeLiteral;->rawType:Ljava/lang/Class;

    invoke-static {v0, v1, p1}, Lcom/amazon/whispersync/com/google/inject/internal/MoreTypes;->getGenericSupertype(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/reflect/Type;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/amazon/whispersync/com/google/inject/TypeLiteral;->resolve(Ljava/lang/reflect/Type;)Lcom/amazon/whispersync/com/google/inject/TypeLiteral;

    move-result-object p1

    return-object p1
.end method

.method public final getType()Ljava/lang/reflect/Type;
    .locals 1

    .line 125
    iget-object v0, p0, Lcom/amazon/whispersync/com/google/inject/TypeLiteral;->type:Ljava/lang/reflect/Type;

    return-object v0
.end method

.method public final hashCode()I
    .locals 1

    .line 139
    iget v0, p0, Lcom/amazon/whispersync/com/google/inject/TypeLiteral;->hashCode:I

    return v0
.end method

.method final providerType()Lcom/amazon/whispersync/com/google/inject/TypeLiteral;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/amazon/whispersync/com/google/inject/TypeLiteral<",
            "Lcom/amazon/whispersync/com/google/inject/Provider<",
            "TT;>;>;"
        }
    .end annotation

    .line 135
    invoke-virtual {p0}, Lcom/amazon/whispersync/com/google/inject/TypeLiteral;->getType()Ljava/lang/reflect/Type;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/whispersync/com/google/inject/util/Types;->providerOf(Ljava/lang/reflect/Type;)Ljava/lang/reflect/ParameterizedType;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/whispersync/com/google/inject/TypeLiteral;->get(Ljava/lang/reflect/Type;)Lcom/amazon/whispersync/com/google/inject/TypeLiteral;

    move-result-object v0

    return-object v0
.end method

.method resolve(Ljava/lang/reflect/Type;)Lcom/amazon/whispersync/com/google/inject/TypeLiteral;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            ")",
            "Lcom/amazon/whispersync/com/google/inject/TypeLiteral<",
            "*>;"
        }
    .end annotation

    .line 179
    invoke-virtual {p0, p1}, Lcom/amazon/whispersync/com/google/inject/TypeLiteral;->resolveType(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object p1

    invoke-static {p1}, Lcom/amazon/whispersync/com/google/inject/TypeLiteral;->get(Ljava/lang/reflect/Type;)Lcom/amazon/whispersync/com/google/inject/TypeLiteral;

    move-result-object p1

    return-object p1
.end method

.method resolveType(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;
    .locals 8

    .line 185
    :goto_0
    instance-of v0, p1, Ljava/lang/reflect/TypeVariable;

    if-eqz v0, :cond_1

    .line 186
    check-cast p1, Ljava/lang/reflect/TypeVariable;

    .line 187
    iget-object v0, p0, Lcom/amazon/whispersync/com/google/inject/TypeLiteral;->type:Ljava/lang/reflect/Type;

    iget-object v1, p0, Lcom/amazon/whispersync/com/google/inject/TypeLiteral;->rawType:Ljava/lang/Class;

    invoke-static {v0, v1, p1}, Lcom/amazon/whispersync/com/google/inject/internal/MoreTypes;->resolveTypeVariable(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/reflect/TypeVariable;)Ljava/lang/reflect/Type;

    move-result-object v0

    if-ne v0, p1, :cond_0

    return-object v0

    :cond_0
    move-object p1, v0

    goto :goto_0

    .line 192
    :cond_1
    instance-of v0, p1, Ljava/lang/reflect/GenericArrayType;

    if-eqz v0, :cond_3

    .line 193
    check-cast p1, Ljava/lang/reflect/GenericArrayType;

    .line 194
    invoke-interface {p1}, Ljava/lang/reflect/GenericArrayType;->getGenericComponentType()Ljava/lang/reflect/Type;

    move-result-object v0

    .line 195
    invoke-virtual {p0, v0}, Lcom/amazon/whispersync/com/google/inject/TypeLiteral;->resolveType(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v1

    if-ne v0, v1, :cond_2

    goto :goto_1

    .line 196
    :cond_2
    invoke-static {v1}, Lcom/amazon/whispersync/com/google/inject/util/Types;->arrayOf(Ljava/lang/reflect/Type;)Ljava/lang/reflect/GenericArrayType;

    move-result-object p1

    :goto_1
    return-object p1

    .line 200
    :cond_3
    instance-of v0, p1, Ljava/lang/reflect/ParameterizedType;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_9

    .line 201
    check-cast p1, Ljava/lang/reflect/ParameterizedType;

    .line 202
    invoke-interface {p1}, Ljava/lang/reflect/ParameterizedType;->getOwnerType()Ljava/lang/reflect/Type;

    move-result-object v0

    .line 203
    invoke-virtual {p0, v0}, Lcom/amazon/whispersync/com/google/inject/TypeLiteral;->resolveType(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v3

    if-eq v3, v0, :cond_4

    const/4 v0, 0x1

    goto :goto_2

    :cond_4
    const/4 v0, 0x0

    .line 206
    :goto_2
    invoke-interface {p1}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v4

    .line 207
    array-length v5, v4

    :goto_3
    if-ge v2, v5, :cond_7

    .line 208
    aget-object v6, v4, v2

    invoke-virtual {p0, v6}, Lcom/amazon/whispersync/com/google/inject/TypeLiteral;->resolveType(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v6

    .line 209
    aget-object v7, v4, v2

    if-eq v6, v7, :cond_6

    if-nez v0, :cond_5

    .line 211
    invoke-virtual {v4}, [Ljava/lang/reflect/Type;->clone()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, [Ljava/lang/reflect/Type;

    const/4 v0, 0x1

    .line 214
    :cond_5
    aput-object v6, v4, v2

    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_7
    if-eqz v0, :cond_8

    .line 218
    invoke-interface {p1}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object p1

    invoke-static {v3, p1, v4}, Lcom/amazon/whispersync/com/google/inject/util/Types;->newParameterizedTypeWithOwner(Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;[Ljava/lang/reflect/Type;)Ljava/lang/reflect/ParameterizedType;

    move-result-object p1

    :cond_8
    return-object p1

    .line 222
    :cond_9
    instance-of v0, p1, Ljava/lang/reflect/WildcardType;

    if-eqz v0, :cond_b

    .line 223
    check-cast p1, Ljava/lang/reflect/WildcardType;

    .line 224
    invoke-interface {p1}, Ljava/lang/reflect/WildcardType;->getLowerBounds()[Ljava/lang/reflect/Type;

    move-result-object v0

    .line 225
    invoke-interface {p1}, Ljava/lang/reflect/WildcardType;->getUpperBounds()[Ljava/lang/reflect/Type;

    move-result-object v3

    .line 227
    array-length v4, v0

    if-ne v4, v1, :cond_a

    .line 228
    aget-object v1, v0, v2

    invoke-virtual {p0, v1}, Lcom/amazon/whispersync/com/google/inject/TypeLiteral;->resolveType(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v1

    .line 229
    aget-object v0, v0, v2

    if-eq v1, v0, :cond_b

    .line 230
    invoke-static {v1}, Lcom/amazon/whispersync/com/google/inject/util/Types;->supertypeOf(Ljava/lang/reflect/Type;)Ljava/lang/reflect/WildcardType;

    move-result-object p1

    return-object p1

    .line 232
    :cond_a
    array-length v0, v3

    if-ne v0, v1, :cond_b

    .line 233
    aget-object v0, v3, v2

    :try_start_0
    invoke-virtual {p0, v0}, Lcom/amazon/whispersync/com/google/inject/TypeLiteral;->resolveType(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 234
    aget-object v1, v3, v2

    if-eq v0, v1, :cond_b

    .line 235
    invoke-static {v0}, Lcom/amazon/whispersync/com/google/inject/util/Types;->subtypeOf(Ljava/lang/reflect/Type;)Ljava/lang/reflect/WildcardType;

    move-result-object p1

    :cond_b
    return-object p1

    :catchall_0
    move-exception p1

    .line 233
    throw p1
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    .line 148
    iget-object v0, p0, Lcom/amazon/whispersync/com/google/inject/TypeLiteral;->type:Ljava/lang/reflect/Type;

    invoke-static {v0}, Lcom/amazon/whispersync/com/google/inject/internal/MoreTypes;->typeToString(Ljava/lang/reflect/Type;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
