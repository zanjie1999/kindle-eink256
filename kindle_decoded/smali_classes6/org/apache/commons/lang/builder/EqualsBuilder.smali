.class public Lorg/apache/commons/lang/builder/EqualsBuilder;
.super Ljava/lang/Object;
.source "EqualsBuilder.java"


# instance fields
.field private isEquals:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 91
    iput-boolean v0, p0, Lorg/apache/commons/lang/builder/EqualsBuilder;->isEquals:Z

    return-void
.end method

.method private static reflectionAppend(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Class;Lorg/apache/commons/lang/builder/EqualsBuilder;Z[Ljava/lang/String;)V
    .locals 4

    .line 319
    invoke-virtual {p2}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object p2

    const/4 v0, 0x1

    .line 320
    invoke-static {p2, v0}, Ljava/lang/reflect/AccessibleObject;->setAccessible([Ljava/lang/reflect/AccessibleObject;Z)V

    const/4 v0, 0x0

    .line 321
    :goto_0
    array-length v1, p2

    if-ge v0, v1, :cond_2

    iget-boolean v1, p3, Lorg/apache/commons/lang/builder/EqualsBuilder;->isEquals:Z

    if-eqz v1, :cond_2

    .line 322
    aget-object v1, p2, v0

    .line 323
    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {p5, v2}, Lorg/apache/commons/lang/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x24

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_1

    if-nez p4, :cond_0

    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v2

    invoke-static {v2}, Ljava/lang/reflect/Modifier;->isTransient(I)Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v2

    invoke-static {v2}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 328
    :try_start_0
    invoke-virtual {v1, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p3, v2, v1}, Lorg/apache/commons/lang/builder/EqualsBuilder;->append(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/commons/lang/builder/EqualsBuilder;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 332
    :catch_0
    new-instance p0, Ljava/lang/InternalError;

    const-string p1, "Unexpected IllegalAccessException"

    invoke-direct {p0, p1}, Ljava/lang/InternalError;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public static reflectionEquals(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 124
    invoke-static {p0, p1, v1, v0, v0}, Lorg/apache/commons/lang/builder/EqualsBuilder;->reflectionEquals(Ljava/lang/Object;Ljava/lang/Object;ZLjava/lang/Class;[Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static reflectionEquals(Ljava/lang/Object;Ljava/lang/Object;ZLjava/lang/Class;[Ljava/lang/String;)Z
    .locals 11

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 v0, 0x0

    if-eqz p0, :cond_6

    if-nez p1, :cond_1

    goto :goto_3

    .line 264
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 265
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    .line 267
    invoke-virtual {v1, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 269
    invoke-virtual {v2, p0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    goto :goto_0

    .line 273
    :cond_2
    invoke-virtual {v2, p0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 275
    invoke-virtual {v1, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    goto :goto_1

    :cond_3
    :goto_0
    move-object v1, v2

    .line 283
    :cond_4
    :goto_1
    new-instance v10, Lorg/apache/commons/lang/builder/EqualsBuilder;

    invoke-direct {v10}, Lorg/apache/commons/lang/builder/EqualsBuilder;-><init>()V

    move-object v4, p0

    move-object v5, p1

    move-object v6, v1

    move-object v7, v10

    move v8, p2

    move-object v9, p4

    .line 285
    :try_start_0
    invoke-static/range {v4 .. v9}, Lorg/apache/commons/lang/builder/EqualsBuilder;->reflectionAppend(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Class;Lorg/apache/commons/lang/builder/EqualsBuilder;Z[Ljava/lang/String;)V

    .line 286
    :goto_2
    invoke-virtual {v1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v2

    if-eqz v2, :cond_5

    if-eq v1, p3, :cond_5

    .line 287
    invoke-virtual {v1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v1

    move-object v2, p0

    move-object v3, p1

    move-object v4, v1

    move-object v5, v10

    move v6, p2

    move-object v7, p4

    .line 288
    invoke-static/range {v2 .. v7}, Lorg/apache/commons/lang/builder/EqualsBuilder;->reflectionAppend(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Class;Lorg/apache/commons/lang/builder/EqualsBuilder;Z[Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 298
    :cond_5
    invoke-virtual {v10}, Lorg/apache/commons/lang/builder/EqualsBuilder;->isEquals()Z

    move-result p0

    return p0

    :catch_0
    :cond_6
    :goto_3
    return v0
.end method


# virtual methods
.method public append(BB)Lorg/apache/commons/lang/builder/EqualsBuilder;
    .locals 1

    .line 481
    iget-boolean v0, p0, Lorg/apache/commons/lang/builder/EqualsBuilder;->isEquals:Z

    if-nez v0, :cond_0

    return-object p0

    :cond_0
    if-ne p1, p2, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 484
    :goto_0
    iput-boolean p1, p0, Lorg/apache/commons/lang/builder/EqualsBuilder;->isEquals:Z

    return-object p0
.end method

.method public append(CC)Lorg/apache/commons/lang/builder/EqualsBuilder;
    .locals 1

    .line 466
    iget-boolean v0, p0, Lorg/apache/commons/lang/builder/EqualsBuilder;->isEquals:Z

    if-nez v0, :cond_0

    return-object p0

    :cond_0
    if-ne p1, p2, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 469
    :goto_0
    iput-boolean p1, p0, Lorg/apache/commons/lang/builder/EqualsBuilder;->isEquals:Z

    return-object p0
.end method

.method public append(DD)Lorg/apache/commons/lang/builder/EqualsBuilder;
    .locals 1

    .line 502
    iget-boolean v0, p0, Lorg/apache/commons/lang/builder/EqualsBuilder;->isEquals:Z

    if-nez v0, :cond_0

    return-object p0

    .line 505
    :cond_0
    invoke-static {p1, p2}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide p1

    invoke-static {p3, p4}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide p3

    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/apache/commons/lang/builder/EqualsBuilder;->append(JJ)Lorg/apache/commons/lang/builder/EqualsBuilder;

    return-object p0
.end method

.method public append(FF)Lorg/apache/commons/lang/builder/EqualsBuilder;
    .locals 1

    .line 522
    iget-boolean v0, p0, Lorg/apache/commons/lang/builder/EqualsBuilder;->isEquals:Z

    if-nez v0, :cond_0

    return-object p0

    .line 525
    :cond_0
    invoke-static {p1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result p1

    invoke-static {p2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/lang/builder/EqualsBuilder;->append(II)Lorg/apache/commons/lang/builder/EqualsBuilder;

    return-object p0
.end method

.method public append(II)Lorg/apache/commons/lang/builder/EqualsBuilder;
    .locals 1

    .line 436
    iget-boolean v0, p0, Lorg/apache/commons/lang/builder/EqualsBuilder;->isEquals:Z

    if-nez v0, :cond_0

    return-object p0

    :cond_0
    if-ne p1, p2, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 439
    :goto_0
    iput-boolean p1, p0, Lorg/apache/commons/lang/builder/EqualsBuilder;->isEquals:Z

    return-object p0
.end method

.method public append(JJ)Lorg/apache/commons/lang/builder/EqualsBuilder;
    .locals 1

    .line 421
    iget-boolean v0, p0, Lorg/apache/commons/lang/builder/EqualsBuilder;->isEquals:Z

    if-nez v0, :cond_0

    return-object p0

    :cond_0
    cmp-long v0, p1, p3

    if-nez v0, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 424
    :goto_0
    iput-boolean p1, p0, Lorg/apache/commons/lang/builder/EqualsBuilder;->isEquals:Z

    return-object p0
.end method

.method public append(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/commons/lang/builder/EqualsBuilder;
    .locals 3

    .line 366
    iget-boolean v0, p0, Lorg/apache/commons/lang/builder/EqualsBuilder;->isEquals:Z

    if-nez v0, :cond_0

    return-object p0

    :cond_0
    if-ne p1, p2, :cond_1

    return-object p0

    :cond_1
    const/4 v0, 0x0

    if-eqz p1, :cond_d

    if-nez p2, :cond_2

    goto/16 :goto_1

    .line 376
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 377
    invoke-virtual {v1}, Ljava/lang/Class;->isArray()Z

    move-result v1

    if-nez v1, :cond_3

    .line 379
    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    iput-boolean p1, p0, Lorg/apache/commons/lang/builder/EqualsBuilder;->isEquals:Z

    goto/16 :goto_0

    .line 380
    :cond_3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_4

    .line 382
    invoke-virtual {p0, v0}, Lorg/apache/commons/lang/builder/EqualsBuilder;->setEquals(Z)V

    goto/16 :goto_0

    .line 386
    :cond_4
    instance-of v0, p1, [J

    if-eqz v0, :cond_5

    .line 387
    check-cast p1, [J

    check-cast p2, [J

    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/lang/builder/EqualsBuilder;->append([J[J)Lorg/apache/commons/lang/builder/EqualsBuilder;

    goto :goto_0

    .line 388
    :cond_5
    instance-of v0, p1, [I

    if-eqz v0, :cond_6

    .line 389
    check-cast p1, [I

    check-cast p2, [I

    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/lang/builder/EqualsBuilder;->append([I[I)Lorg/apache/commons/lang/builder/EqualsBuilder;

    goto :goto_0

    .line 390
    :cond_6
    instance-of v0, p1, [S

    if-eqz v0, :cond_7

    .line 391
    check-cast p1, [S

    check-cast p2, [S

    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/lang/builder/EqualsBuilder;->append([S[S)Lorg/apache/commons/lang/builder/EqualsBuilder;

    goto :goto_0

    .line 392
    :cond_7
    instance-of v0, p1, [C

    if-eqz v0, :cond_8

    .line 393
    check-cast p1, [C

    check-cast p2, [C

    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/lang/builder/EqualsBuilder;->append([C[C)Lorg/apache/commons/lang/builder/EqualsBuilder;

    goto :goto_0

    .line 394
    :cond_8
    instance-of v0, p1, [B

    if-eqz v0, :cond_9

    .line 395
    check-cast p1, [B

    check-cast p2, [B

    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/lang/builder/EqualsBuilder;->append([B[B)Lorg/apache/commons/lang/builder/EqualsBuilder;

    goto :goto_0

    .line 396
    :cond_9
    instance-of v0, p1, [D

    if-eqz v0, :cond_a

    .line 397
    check-cast p1, [D

    check-cast p2, [D

    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/lang/builder/EqualsBuilder;->append([D[D)Lorg/apache/commons/lang/builder/EqualsBuilder;

    goto :goto_0

    .line 398
    :cond_a
    instance-of v0, p1, [F

    if-eqz v0, :cond_b

    .line 399
    check-cast p1, [F

    check-cast p2, [F

    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/lang/builder/EqualsBuilder;->append([F[F)Lorg/apache/commons/lang/builder/EqualsBuilder;

    goto :goto_0

    .line 400
    :cond_b
    instance-of v0, p1, [Z

    if-eqz v0, :cond_c

    .line 401
    check-cast p1, [Z

    check-cast p2, [Z

    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/lang/builder/EqualsBuilder;->append([Z[Z)Lorg/apache/commons/lang/builder/EqualsBuilder;

    goto :goto_0

    .line 404
    :cond_c
    check-cast p1, [Ljava/lang/Object;

    check-cast p2, [Ljava/lang/Object;

    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/lang/builder/EqualsBuilder;->append([Ljava/lang/Object;[Ljava/lang/Object;)Lorg/apache/commons/lang/builder/EqualsBuilder;

    :goto_0
    return-object p0

    .line 373
    :cond_d
    :goto_1
    invoke-virtual {p0, v0}, Lorg/apache/commons/lang/builder/EqualsBuilder;->setEquals(Z)V

    return-object p0
.end method

.method public append(SS)Lorg/apache/commons/lang/builder/EqualsBuilder;
    .locals 1

    .line 451
    iget-boolean v0, p0, Lorg/apache/commons/lang/builder/EqualsBuilder;->isEquals:Z

    if-nez v0, :cond_0

    return-object p0

    :cond_0
    if-ne p1, p2, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 454
    :goto_0
    iput-boolean p1, p0, Lorg/apache/commons/lang/builder/EqualsBuilder;->isEquals:Z

    return-object p0
.end method

.method public append(ZZ)Lorg/apache/commons/lang/builder/EqualsBuilder;
    .locals 1

    .line 536
    iget-boolean v0, p0, Lorg/apache/commons/lang/builder/EqualsBuilder;->isEquals:Z

    if-nez v0, :cond_0

    return-object p0

    :cond_0
    if-ne p1, p2, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 539
    :goto_0
    iput-boolean p1, p0, Lorg/apache/commons/lang/builder/EqualsBuilder;->isEquals:Z

    return-object p0
.end method

.method public append([B[B)Lorg/apache/commons/lang/builder/EqualsBuilder;
    .locals 3

    .line 709
    iget-boolean v0, p0, Lorg/apache/commons/lang/builder/EqualsBuilder;->isEquals:Z

    if-nez v0, :cond_0

    return-object p0

    :cond_0
    if-ne p1, p2, :cond_1

    return-object p0

    :cond_1
    const/4 v0, 0x0

    if-eqz p1, :cond_5

    if-nez p2, :cond_2

    goto :goto_1

    .line 719
    :cond_2
    array-length v1, p1

    array-length v2, p2

    if-eq v1, v2, :cond_3

    .line 720
    invoke-virtual {p0, v0}, Lorg/apache/commons/lang/builder/EqualsBuilder;->setEquals(Z)V

    return-object p0

    .line 723
    :cond_3
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_4

    iget-boolean v1, p0, Lorg/apache/commons/lang/builder/EqualsBuilder;->isEquals:Z

    if-eqz v1, :cond_4

    .line 724
    aget-byte v1, p1, v0

    aget-byte v2, p2, v0

    invoke-virtual {p0, v1, v2}, Lorg/apache/commons/lang/builder/EqualsBuilder;->append(BB)Lorg/apache/commons/lang/builder/EqualsBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    return-object p0

    .line 716
    :cond_5
    :goto_1
    invoke-virtual {p0, v0}, Lorg/apache/commons/lang/builder/EqualsBuilder;->setEquals(Z)V

    return-object p0
.end method

.method public append([C[C)Lorg/apache/commons/lang/builder/EqualsBuilder;
    .locals 3

    .line 678
    iget-boolean v0, p0, Lorg/apache/commons/lang/builder/EqualsBuilder;->isEquals:Z

    if-nez v0, :cond_0

    return-object p0

    :cond_0
    if-ne p1, p2, :cond_1

    return-object p0

    :cond_1
    const/4 v0, 0x0

    if-eqz p1, :cond_5

    if-nez p2, :cond_2

    goto :goto_1

    .line 688
    :cond_2
    array-length v1, p1

    array-length v2, p2

    if-eq v1, v2, :cond_3

    .line 689
    invoke-virtual {p0, v0}, Lorg/apache/commons/lang/builder/EqualsBuilder;->setEquals(Z)V

    return-object p0

    .line 692
    :cond_3
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_4

    iget-boolean v1, p0, Lorg/apache/commons/lang/builder/EqualsBuilder;->isEquals:Z

    if-eqz v1, :cond_4

    .line 693
    aget-char v1, p1, v0

    aget-char v2, p2, v0

    invoke-virtual {p0, v1, v2}, Lorg/apache/commons/lang/builder/EqualsBuilder;->append(CC)Lorg/apache/commons/lang/builder/EqualsBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    return-object p0

    .line 685
    :cond_5
    :goto_1
    invoke-virtual {p0, v0}, Lorg/apache/commons/lang/builder/EqualsBuilder;->setEquals(Z)V

    return-object p0
.end method

.method public append([D[D)Lorg/apache/commons/lang/builder/EqualsBuilder;
    .locals 5

    .line 740
    iget-boolean v0, p0, Lorg/apache/commons/lang/builder/EqualsBuilder;->isEquals:Z

    if-nez v0, :cond_0

    return-object p0

    :cond_0
    if-ne p1, p2, :cond_1

    return-object p0

    :cond_1
    const/4 v0, 0x0

    if-eqz p1, :cond_5

    if-nez p2, :cond_2

    goto :goto_1

    .line 750
    :cond_2
    array-length v1, p1

    array-length v2, p2

    if-eq v1, v2, :cond_3

    .line 751
    invoke-virtual {p0, v0}, Lorg/apache/commons/lang/builder/EqualsBuilder;->setEquals(Z)V

    return-object p0

    .line 754
    :cond_3
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_4

    iget-boolean v1, p0, Lorg/apache/commons/lang/builder/EqualsBuilder;->isEquals:Z

    if-eqz v1, :cond_4

    .line 755
    aget-wide v1, p1, v0

    aget-wide v3, p2, v0

    invoke-virtual {p0, v1, v2, v3, v4}, Lorg/apache/commons/lang/builder/EqualsBuilder;->append(DD)Lorg/apache/commons/lang/builder/EqualsBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    return-object p0

    .line 747
    :cond_5
    :goto_1
    invoke-virtual {p0, v0}, Lorg/apache/commons/lang/builder/EqualsBuilder;->setEquals(Z)V

    return-object p0
.end method

.method public append([F[F)Lorg/apache/commons/lang/builder/EqualsBuilder;
    .locals 3

    .line 771
    iget-boolean v0, p0, Lorg/apache/commons/lang/builder/EqualsBuilder;->isEquals:Z

    if-nez v0, :cond_0

    return-object p0

    :cond_0
    if-ne p1, p2, :cond_1

    return-object p0

    :cond_1
    const/4 v0, 0x0

    if-eqz p1, :cond_5

    if-nez p2, :cond_2

    goto :goto_1

    .line 781
    :cond_2
    array-length v1, p1

    array-length v2, p2

    if-eq v1, v2, :cond_3

    .line 782
    invoke-virtual {p0, v0}, Lorg/apache/commons/lang/builder/EqualsBuilder;->setEquals(Z)V

    return-object p0

    .line 785
    :cond_3
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_4

    iget-boolean v1, p0, Lorg/apache/commons/lang/builder/EqualsBuilder;->isEquals:Z

    if-eqz v1, :cond_4

    .line 786
    aget v1, p1, v0

    aget v2, p2, v0

    invoke-virtual {p0, v1, v2}, Lorg/apache/commons/lang/builder/EqualsBuilder;->append(FF)Lorg/apache/commons/lang/builder/EqualsBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    return-object p0

    .line 778
    :cond_5
    :goto_1
    invoke-virtual {p0, v0}, Lorg/apache/commons/lang/builder/EqualsBuilder;->setEquals(Z)V

    return-object p0
.end method

.method public append([I[I)Lorg/apache/commons/lang/builder/EqualsBuilder;
    .locals 3

    .line 616
    iget-boolean v0, p0, Lorg/apache/commons/lang/builder/EqualsBuilder;->isEquals:Z

    if-nez v0, :cond_0

    return-object p0

    :cond_0
    if-ne p1, p2, :cond_1

    return-object p0

    :cond_1
    const/4 v0, 0x0

    if-eqz p1, :cond_5

    if-nez p2, :cond_2

    goto :goto_1

    .line 626
    :cond_2
    array-length v1, p1

    array-length v2, p2

    if-eq v1, v2, :cond_3

    .line 627
    invoke-virtual {p0, v0}, Lorg/apache/commons/lang/builder/EqualsBuilder;->setEquals(Z)V

    return-object p0

    .line 630
    :cond_3
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_4

    iget-boolean v1, p0, Lorg/apache/commons/lang/builder/EqualsBuilder;->isEquals:Z

    if-eqz v1, :cond_4

    .line 631
    aget v1, p1, v0

    aget v2, p2, v0

    invoke-virtual {p0, v1, v2}, Lorg/apache/commons/lang/builder/EqualsBuilder;->append(II)Lorg/apache/commons/lang/builder/EqualsBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    return-object p0

    .line 623
    :cond_5
    :goto_1
    invoke-virtual {p0, v0}, Lorg/apache/commons/lang/builder/EqualsBuilder;->setEquals(Z)V

    return-object p0
.end method

.method public append([J[J)Lorg/apache/commons/lang/builder/EqualsBuilder;
    .locals 5

    .line 585
    iget-boolean v0, p0, Lorg/apache/commons/lang/builder/EqualsBuilder;->isEquals:Z

    if-nez v0, :cond_0

    return-object p0

    :cond_0
    if-ne p1, p2, :cond_1

    return-object p0

    :cond_1
    const/4 v0, 0x0

    if-eqz p1, :cond_5

    if-nez p2, :cond_2

    goto :goto_1

    .line 595
    :cond_2
    array-length v1, p1

    array-length v2, p2

    if-eq v1, v2, :cond_3

    .line 596
    invoke-virtual {p0, v0}, Lorg/apache/commons/lang/builder/EqualsBuilder;->setEquals(Z)V

    return-object p0

    .line 599
    :cond_3
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_4

    iget-boolean v1, p0, Lorg/apache/commons/lang/builder/EqualsBuilder;->isEquals:Z

    if-eqz v1, :cond_4

    .line 600
    aget-wide v1, p1, v0

    aget-wide v3, p2, v0

    invoke-virtual {p0, v1, v2, v3, v4}, Lorg/apache/commons/lang/builder/EqualsBuilder;->append(JJ)Lorg/apache/commons/lang/builder/EqualsBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    return-object p0

    .line 592
    :cond_5
    :goto_1
    invoke-virtual {p0, v0}, Lorg/apache/commons/lang/builder/EqualsBuilder;->setEquals(Z)V

    return-object p0
.end method

.method public append([Ljava/lang/Object;[Ljava/lang/Object;)Lorg/apache/commons/lang/builder/EqualsBuilder;
    .locals 3

    .line 554
    iget-boolean v0, p0, Lorg/apache/commons/lang/builder/EqualsBuilder;->isEquals:Z

    if-nez v0, :cond_0

    return-object p0

    :cond_0
    if-ne p1, p2, :cond_1

    return-object p0

    :cond_1
    const/4 v0, 0x0

    if-eqz p1, :cond_5

    if-nez p2, :cond_2

    goto :goto_1

    .line 564
    :cond_2
    array-length v1, p1

    array-length v2, p2

    if-eq v1, v2, :cond_3

    .line 565
    invoke-virtual {p0, v0}, Lorg/apache/commons/lang/builder/EqualsBuilder;->setEquals(Z)V

    return-object p0

    .line 568
    :cond_3
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_4

    iget-boolean v1, p0, Lorg/apache/commons/lang/builder/EqualsBuilder;->isEquals:Z

    if-eqz v1, :cond_4

    .line 569
    aget-object v1, p1, v0

    aget-object v2, p2, v0

    invoke-virtual {p0, v1, v2}, Lorg/apache/commons/lang/builder/EqualsBuilder;->append(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/commons/lang/builder/EqualsBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    return-object p0

    .line 561
    :cond_5
    :goto_1
    invoke-virtual {p0, v0}, Lorg/apache/commons/lang/builder/EqualsBuilder;->setEquals(Z)V

    return-object p0
.end method

.method public append([S[S)Lorg/apache/commons/lang/builder/EqualsBuilder;
    .locals 3

    .line 647
    iget-boolean v0, p0, Lorg/apache/commons/lang/builder/EqualsBuilder;->isEquals:Z

    if-nez v0, :cond_0

    return-object p0

    :cond_0
    if-ne p1, p2, :cond_1

    return-object p0

    :cond_1
    const/4 v0, 0x0

    if-eqz p1, :cond_5

    if-nez p2, :cond_2

    goto :goto_1

    .line 657
    :cond_2
    array-length v1, p1

    array-length v2, p2

    if-eq v1, v2, :cond_3

    .line 658
    invoke-virtual {p0, v0}, Lorg/apache/commons/lang/builder/EqualsBuilder;->setEquals(Z)V

    return-object p0

    .line 661
    :cond_3
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_4

    iget-boolean v1, p0, Lorg/apache/commons/lang/builder/EqualsBuilder;->isEquals:Z

    if-eqz v1, :cond_4

    .line 662
    aget-short v1, p1, v0

    aget-short v2, p2, v0

    invoke-virtual {p0, v1, v2}, Lorg/apache/commons/lang/builder/EqualsBuilder;->append(SS)Lorg/apache/commons/lang/builder/EqualsBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    return-object p0

    .line 654
    :cond_5
    :goto_1
    invoke-virtual {p0, v0}, Lorg/apache/commons/lang/builder/EqualsBuilder;->setEquals(Z)V

    return-object p0
.end method

.method public append([Z[Z)Lorg/apache/commons/lang/builder/EqualsBuilder;
    .locals 3

    .line 802
    iget-boolean v0, p0, Lorg/apache/commons/lang/builder/EqualsBuilder;->isEquals:Z

    if-nez v0, :cond_0

    return-object p0

    :cond_0
    if-ne p1, p2, :cond_1

    return-object p0

    :cond_1
    const/4 v0, 0x0

    if-eqz p1, :cond_5

    if-nez p2, :cond_2

    goto :goto_1

    .line 812
    :cond_2
    array-length v1, p1

    array-length v2, p2

    if-eq v1, v2, :cond_3

    .line 813
    invoke-virtual {p0, v0}, Lorg/apache/commons/lang/builder/EqualsBuilder;->setEquals(Z)V

    return-object p0

    .line 816
    :cond_3
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_4

    iget-boolean v1, p0, Lorg/apache/commons/lang/builder/EqualsBuilder;->isEquals:Z

    if-eqz v1, :cond_4

    .line 817
    aget-boolean v1, p1, v0

    aget-boolean v2, p2, v0

    invoke-virtual {p0, v1, v2}, Lorg/apache/commons/lang/builder/EqualsBuilder;->append(ZZ)Lorg/apache/commons/lang/builder/EqualsBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    return-object p0

    .line 809
    :cond_5
    :goto_1
    invoke-virtual {p0, v0}, Lorg/apache/commons/lang/builder/EqualsBuilder;->setEquals(Z)V

    return-object p0
.end method

.method public isEquals()Z
    .locals 1

    .line 829
    iget-boolean v0, p0, Lorg/apache/commons/lang/builder/EqualsBuilder;->isEquals:Z

    return v0
.end method

.method protected setEquals(Z)V
    .locals 0

    .line 839
    iput-boolean p1, p0, Lorg/apache/commons/lang/builder/EqualsBuilder;->isEquals:Z

    return-void
.end method
