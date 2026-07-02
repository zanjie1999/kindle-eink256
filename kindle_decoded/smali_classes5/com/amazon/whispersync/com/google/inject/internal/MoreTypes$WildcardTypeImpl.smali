.class public Lcom/amazon/whispersync/com/google/inject/internal/MoreTypes$WildcardTypeImpl;
.super Ljava/lang/Object;
.source "MoreTypes.java"

# interfaces
.implements Ljava/lang/reflect/WildcardType;
.implements Ljava/io/Serializable;
.implements Lcom/amazon/whispersync/com/google/inject/internal/MoreTypes$CompositeType;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/whispersync/com/google/inject/internal/MoreTypes;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WildcardTypeImpl"
.end annotation


# static fields
.field private static final serialVersionUID:J


# instance fields
.field private final lowerBound:Ljava/lang/reflect/Type;

.field private final upperBound:Ljava/lang/reflect/Type;


# direct methods
.method public constructor <init>([Ljava/lang/reflect/Type;[Ljava/lang/reflect/Type;)V
    .locals 6

    .line 448
    const-class v0, Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 449
    array-length v1, p2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-gt v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const-string v4, "Must have at most one lower bound."

    invoke-static {v1, v4}, Lcom/amazon/whispersync/com/google/inject/internal/util/$Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 450
    array-length v1, p1

    if-ne v1, v2, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    const-string v4, "Must have exactly one upper bound."

    invoke-static {v1, v4}, Lcom/amazon/whispersync/com/google/inject/internal/util/$Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 452
    array-length v1, p2

    const-string/jumbo v4, "wildcard bounds"

    if-ne v1, v2, :cond_3

    .line 453
    aget-object v1, p2, v3

    const-string v5, "lowerBound"

    invoke-static {v1, v5}, Lcom/amazon/whispersync/com/google/inject/internal/util/$Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 454
    aget-object v1, p2, v3

    invoke-static {v1, v4}, Lcom/amazon/whispersync/com/google/inject/internal/MoreTypes;->access$000(Ljava/lang/reflect/Type;Ljava/lang/String;)V

    .line 455
    aget-object p1, p1, v3

    if-ne p1, v0, :cond_2

    goto :goto_2

    :cond_2
    const/4 v2, 0x0

    :goto_2
    const-string p1, "bounded both ways"

    invoke-static {v2, p1}, Lcom/amazon/whispersync/com/google/inject/internal/util/$Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 456
    aget-object p1, p2, v3

    invoke-static {p1}, Lcom/amazon/whispersync/com/google/inject/internal/MoreTypes;->canonicalize(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/whispersync/com/google/inject/internal/MoreTypes$WildcardTypeImpl;->lowerBound:Ljava/lang/reflect/Type;

    .line 457
    iput-object v0, p0, Lcom/amazon/whispersync/com/google/inject/internal/MoreTypes$WildcardTypeImpl;->upperBound:Ljava/lang/reflect/Type;

    goto :goto_3

    .line 460
    :cond_3
    aget-object p2, p1, v3

    const-string/jumbo v0, "upperBound"

    invoke-static {p2, v0}, Lcom/amazon/whispersync/com/google/inject/internal/util/$Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 461
    aget-object p2, p1, v3

    invoke-static {p2, v4}, Lcom/amazon/whispersync/com/google/inject/internal/MoreTypes;->access$000(Ljava/lang/reflect/Type;Ljava/lang/String;)V

    const/4 p2, 0x0

    .line 462
    iput-object p2, p0, Lcom/amazon/whispersync/com/google/inject/internal/MoreTypes$WildcardTypeImpl;->lowerBound:Ljava/lang/reflect/Type;

    .line 463
    aget-object p1, p1, v3

    invoke-static {p1}, Lcom/amazon/whispersync/com/google/inject/internal/MoreTypes;->canonicalize(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/whispersync/com/google/inject/internal/MoreTypes$WildcardTypeImpl;->upperBound:Ljava/lang/reflect/Type;

    :goto_3
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 481
    instance-of v0, p1, Ljava/lang/reflect/WildcardType;

    if-eqz v0, :cond_0

    check-cast p1, Ljava/lang/reflect/WildcardType;

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

.method public getLowerBounds()[Ljava/lang/reflect/Type;
    .locals 3

    .line 472
    iget-object v0, p0, Lcom/amazon/whispersync/com/google/inject/internal/MoreTypes$WildcardTypeImpl;->lowerBound:Ljava/lang/reflect/Type;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/reflect/Type;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/amazon/whispersync/com/google/inject/internal/MoreTypes;->EMPTY_TYPE_ARRAY:[Ljava/lang/reflect/Type;

    :goto_0
    return-object v1
.end method

.method public getUpperBounds()[Ljava/lang/reflect/Type;
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/reflect/Type;

    .line 468
    iget-object v1, p0, Lcom/amazon/whispersync/com/google/inject/internal/MoreTypes$WildcardTypeImpl;->upperBound:Ljava/lang/reflect/Type;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 487
    iget-object v0, p0, Lcom/amazon/whispersync/com/google/inject/internal/MoreTypes$WildcardTypeImpl;->lowerBound:Ljava/lang/reflect/Type;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/lit8 v0, v0, 0x1f

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    iget-object v1, p0, Lcom/amazon/whispersync/com/google/inject/internal/MoreTypes$WildcardTypeImpl;->upperBound:Ljava/lang/reflect/Type;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/lit8 v1, v1, 0x1f

    xor-int/2addr v0, v1

    return v0
.end method

.method public isFullySpecified()Z
    .locals 1

    .line 476
    iget-object v0, p0, Lcom/amazon/whispersync/com/google/inject/internal/MoreTypes$WildcardTypeImpl;->upperBound:Ljava/lang/reflect/Type;

    invoke-static {v0}, Lcom/amazon/whispersync/com/google/inject/internal/MoreTypes;->access$100(Ljava/lang/reflect/Type;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amazon/whispersync/com/google/inject/internal/MoreTypes$WildcardTypeImpl;->lowerBound:Ljava/lang/reflect/Type;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/amazon/whispersync/com/google/inject/internal/MoreTypes;->access$100(Ljava/lang/reflect/Type;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 492
    iget-object v0, p0, Lcom/amazon/whispersync/com/google/inject/internal/MoreTypes$WildcardTypeImpl;->lowerBound:Ljava/lang/reflect/Type;

    if-eqz v0, :cond_0

    .line 493
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "? super "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/whispersync/com/google/inject/internal/MoreTypes$WildcardTypeImpl;->lowerBound:Ljava/lang/reflect/Type;

    invoke-static {v1}, Lcom/amazon/whispersync/com/google/inject/internal/MoreTypes;->typeToString(Ljava/lang/reflect/Type;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 494
    :cond_0
    iget-object v0, p0, Lcom/amazon/whispersync/com/google/inject/internal/MoreTypes$WildcardTypeImpl;->upperBound:Ljava/lang/reflect/Type;

    const-class v1, Ljava/lang/Object;

    if-ne v0, v1, :cond_1

    const-string v0, "?"

    return-object v0

    .line 497
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "? extends "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/whispersync/com/google/inject/internal/MoreTypes$WildcardTypeImpl;->upperBound:Ljava/lang/reflect/Type;

    invoke-static {v1}, Lcom/amazon/whispersync/com/google/inject/internal/MoreTypes;->typeToString(Ljava/lang/reflect/Type;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
