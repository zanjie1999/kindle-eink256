.class public Lcom/amazon/whispersync/com/google/inject/internal/MoreTypes$ParameterizedTypeImpl;
.super Ljava/lang/Object;
.source "MoreTypes.java"

# interfaces
.implements Ljava/lang/reflect/ParameterizedType;
.implements Ljava/io/Serializable;
.implements Lcom/amazon/whispersync/com/google/inject/internal/MoreTypes$CompositeType;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/whispersync/com/google/inject/internal/MoreTypes;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ParameterizedTypeImpl"
.end annotation


# static fields
.field private static final serialVersionUID:J


# instance fields
.field private final ownerType:Ljava/lang/reflect/Type;

.field private final rawType:Ljava/lang/reflect/Type;

.field private final typeArguments:[Ljava/lang/reflect/Type;


# direct methods
.method public varargs constructor <init>(Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;[Ljava/lang/reflect/Type;)V
    .locals 6

    .line 328
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 330
    instance-of v0, p2, Ljava/lang/Class;

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    .line 331
    move-object v0, p2

    check-cast v0, Ljava/lang/Class;

    const/4 v2, 0x1

    if-nez p1, :cond_1

    .line 332
    invoke-virtual {v0}, Ljava/lang/Class;->getEnclosingClass()Ljava/lang/Class;

    move-result-object v3

    if-nez v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v3, 0x1

    :goto_1
    new-array v4, v2, [Ljava/lang/Object;

    aput-object p2, v4, v1

    const-string v5, "No owner type for enclosed %s"

    invoke-static {v3, v5, v4}, Lcom/amazon/whispersync/com/google/inject/internal/util/$Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    if-eqz p1, :cond_3

    .line 334
    invoke-virtual {v0}, Ljava/lang/Class;->getEnclosingClass()Ljava/lang/Class;

    move-result-object v0

    if-eqz v0, :cond_2

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    goto :goto_3

    :cond_3
    :goto_2
    const/4 v0, 0x1

    :goto_3
    new-array v2, v2, [Ljava/lang/Object;

    aput-object p2, v2, v1

    const-string v3, "Owner type for unenclosed %s"

    invoke-static {v0, v3, v2}, Lcom/amazon/whispersync/com/google/inject/internal/util/$Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    :cond_4
    if-nez p1, :cond_5

    const/4 p1, 0x0

    goto :goto_4

    .line 338
    :cond_5
    invoke-static {p1}, Lcom/amazon/whispersync/com/google/inject/internal/MoreTypes;->canonicalize(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object p1

    :goto_4
    iput-object p1, p0, Lcom/amazon/whispersync/com/google/inject/internal/MoreTypes$ParameterizedTypeImpl;->ownerType:Ljava/lang/reflect/Type;

    .line 339
    invoke-static {p2}, Lcom/amazon/whispersync/com/google/inject/internal/MoreTypes;->canonicalize(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/whispersync/com/google/inject/internal/MoreTypes$ParameterizedTypeImpl;->rawType:Ljava/lang/reflect/Type;

    .line 340
    invoke-virtual {p3}, [Ljava/lang/reflect/Type;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/reflect/Type;

    iput-object p1, p0, Lcom/amazon/whispersync/com/google/inject/internal/MoreTypes$ParameterizedTypeImpl;->typeArguments:[Ljava/lang/reflect/Type;

    .line 341
    :goto_5
    iget-object p1, p0, Lcom/amazon/whispersync/com/google/inject/internal/MoreTypes$ParameterizedTypeImpl;->typeArguments:[Ljava/lang/reflect/Type;

    array-length p2, p1

    if-ge v1, p2, :cond_6

    .line 342
    aget-object p1, p1, v1

    const-string/jumbo p2, "type parameter"

    invoke-static {p1, p2}, Lcom/amazon/whispersync/com/google/inject/internal/util/$Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 343
    iget-object p1, p0, Lcom/amazon/whispersync/com/google/inject/internal/MoreTypes$ParameterizedTypeImpl;->typeArguments:[Ljava/lang/reflect/Type;

    aget-object p1, p1, v1

    const-string/jumbo p2, "type parameters"

    invoke-static {p1, p2}, Lcom/amazon/whispersync/com/google/inject/internal/MoreTypes;->access$000(Ljava/lang/reflect/Type;Ljava/lang/String;)V

    .line 344
    iget-object p1, p0, Lcom/amazon/whispersync/com/google/inject/internal/MoreTypes$ParameterizedTypeImpl;->typeArguments:[Ljava/lang/reflect/Type;

    aget-object p2, p1, v1

    invoke-static {p2}, Lcom/amazon/whispersync/com/google/inject/internal/MoreTypes;->canonicalize(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object p2

    aput-object p2, p1, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_6
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 379
    instance-of v0, p1, Ljava/lang/reflect/ParameterizedType;

    if-eqz v0, :cond_0

    check-cast p1, Ljava/lang/reflect/ParameterizedType;

    invoke-static {p0, p1}, Lcom/amazon/whispersync/com/google/inject/internal/MoreTypes;->equals(Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public getActualTypeArguments()[Ljava/lang/reflect/Type;
    .locals 1

    .line 349
    iget-object v0, p0, Lcom/amazon/whispersync/com/google/inject/internal/MoreTypes$ParameterizedTypeImpl;->typeArguments:[Ljava/lang/reflect/Type;

    invoke-virtual {v0}, [Ljava/lang/reflect/Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/reflect/Type;

    return-object v0
.end method

.method public getOwnerType()Ljava/lang/reflect/Type;
    .locals 1

    .line 357
    iget-object v0, p0, Lcom/amazon/whispersync/com/google/inject/internal/MoreTypes$ParameterizedTypeImpl;->ownerType:Ljava/lang/reflect/Type;

    return-object v0
.end method

.method public getRawType()Ljava/lang/reflect/Type;
    .locals 1

    .line 353
    iget-object v0, p0, Lcom/amazon/whispersync/com/google/inject/internal/MoreTypes$ParameterizedTypeImpl;->rawType:Ljava/lang/reflect/Type;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 384
    iget-object v0, p0, Lcom/amazon/whispersync/com/google/inject/internal/MoreTypes$ParameterizedTypeImpl;->typeArguments:[Ljava/lang/reflect/Type;

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    iget-object v1, p0, Lcom/amazon/whispersync/com/google/inject/internal/MoreTypes$ParameterizedTypeImpl;->rawType:Ljava/lang/reflect/Type;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    iget-object v1, p0, Lcom/amazon/whispersync/com/google/inject/internal/MoreTypes$ParameterizedTypeImpl;->ownerType:Ljava/lang/reflect/Type;

    invoke-static {v1}, Lcom/amazon/whispersync/com/google/inject/internal/MoreTypes;->access$200(Ljava/lang/Object;)I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public isFullySpecified()Z
    .locals 5

    .line 361
    iget-object v0, p0, Lcom/amazon/whispersync/com/google/inject/internal/MoreTypes$ParameterizedTypeImpl;->ownerType:Ljava/lang/reflect/Type;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/amazon/whispersync/com/google/inject/internal/MoreTypes;->access$100(Ljava/lang/reflect/Type;)Z

    move-result v0

    if-nez v0, :cond_0

    return v1

    .line 365
    :cond_0
    iget-object v0, p0, Lcom/amazon/whispersync/com/google/inject/internal/MoreTypes$ParameterizedTypeImpl;->rawType:Ljava/lang/reflect/Type;

    invoke-static {v0}, Lcom/amazon/whispersync/com/google/inject/internal/MoreTypes;->access$100(Ljava/lang/reflect/Type;)Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    .line 369
    :cond_1
    iget-object v0, p0, Lcom/amazon/whispersync/com/google/inject/internal/MoreTypes$ParameterizedTypeImpl;->typeArguments:[Ljava/lang/reflect/Type;

    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_3

    aget-object v4, v0, v3

    .line 370
    invoke-static {v4}, Lcom/amazon/whispersync/com/google/inject/internal/MoreTypes;->access$100(Ljava/lang/reflect/Type;)Z

    move-result v4

    if-nez v4, :cond_2

    return v1

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    const/4 v0, 0x1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 390
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/whispersync/com/google/inject/internal/MoreTypes$ParameterizedTypeImpl;->typeArguments:[Ljava/lang/reflect/Type;

    array-length v1, v1

    const/4 v2, 0x1

    add-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x1e

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 391
    iget-object v1, p0, Lcom/amazon/whispersync/com/google/inject/internal/MoreTypes$ParameterizedTypeImpl;->rawType:Ljava/lang/reflect/Type;

    invoke-static {v1}, Lcom/amazon/whispersync/com/google/inject/internal/MoreTypes;->typeToString(Ljava/lang/reflect/Type;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 393
    iget-object v1, p0, Lcom/amazon/whispersync/com/google/inject/internal/MoreTypes$ParameterizedTypeImpl;->typeArguments:[Ljava/lang/reflect/Type;

    array-length v1, v1

    if-nez v1, :cond_0

    .line 394
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v1, "<"

    .line 397
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/whispersync/com/google/inject/internal/MoreTypes$ParameterizedTypeImpl;->typeArguments:[Ljava/lang/reflect/Type;

    const/4 v3, 0x0

    aget-object v1, v1, v3

    invoke-static {v1}, Lcom/amazon/whispersync/com/google/inject/internal/MoreTypes;->typeToString(Ljava/lang/reflect/Type;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 398
    :goto_0
    iget-object v1, p0, Lcom/amazon/whispersync/com/google/inject/internal/MoreTypes$ParameterizedTypeImpl;->typeArguments:[Ljava/lang/reflect/Type;

    array-length v1, v1

    if-ge v2, v1, :cond_1

    const-string v1, ", "

    .line 399
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/whispersync/com/google/inject/internal/MoreTypes$ParameterizedTypeImpl;->typeArguments:[Ljava/lang/reflect/Type;

    aget-object v1, v1, v2

    invoke-static {v1}, Lcom/amazon/whispersync/com/google/inject/internal/MoreTypes;->typeToString(Ljava/lang/reflect/Type;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const-string v1, ">"

    .line 401
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
