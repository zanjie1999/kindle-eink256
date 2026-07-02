.class public Lorg/apache/commons/lang/builder/HashCodeBuilder;
.super Ljava/lang/Object;
.source "HashCodeBuilder.java"


# static fields
.field private static final REGISTRY:Ljava/lang/ThreadLocal;

.field static synthetic class$org$apache$commons$lang$builder$HashCodeBuilder:Ljava/lang/Class;


# instance fields
.field private final iConstant:I

.field private iTotal:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 111
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lorg/apache/commons/lang/builder/HashCodeBuilder;->REGISTRY:Ljava/lang/ThreadLocal;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 575
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 568
    iput v0, p0, Lorg/apache/commons/lang/builder/HashCodeBuilder;->iTotal:I

    const/16 v0, 0x25

    .line 576
    iput v0, p0, Lorg/apache/commons/lang/builder/HashCodeBuilder;->iConstant:I

    const/16 v0, 0x11

    .line 577
    iput v0, p0, Lorg/apache/commons/lang/builder/HashCodeBuilder;->iTotal:I

    return-void
.end method

.method public constructor <init>(II)V
    .locals 1

    .line 597
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 568
    iput v0, p0, Lorg/apache/commons/lang/builder/HashCodeBuilder;->iTotal:I

    if-eqz p1, :cond_3

    .line 601
    rem-int/lit8 v0, p1, 0x2

    if-eqz v0, :cond_2

    if-eqz p2, :cond_1

    .line 607
    rem-int/lit8 v0, p2, 0x2

    if-eqz v0, :cond_0

    .line 610
    iput p2, p0, Lorg/apache/commons/lang/builder/HashCodeBuilder;->iConstant:I

    .line 611
    iput p1, p0, Lorg/apache/commons/lang/builder/HashCodeBuilder;->iTotal:I

    return-void

    .line 608
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "HashCodeBuilder requires an odd multiplier"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 605
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "HashCodeBuilder requires a non zero multiplier"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 602
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "HashCodeBuilder requires an odd initial value"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 599
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "HashCodeBuilder requires a non zero initial value"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method static synthetic class$(Ljava/lang/String;)Ljava/lang/Class;
    .locals 1

    .line 526
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/NoClassDefFoundError;

    invoke-virtual {p0}, Ljava/lang/ClassNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NoClassDefFoundError;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static getRegistry()Ljava/util/Set;
    .locals 1

    .line 139
    sget-object v0, Lorg/apache/commons/lang/builder/HashCodeBuilder;->REGISTRY:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    return-object v0
.end method

.method static isRegistered(Ljava/lang/Object;)Z
    .locals 2

    .line 154
    invoke-static {}, Lorg/apache/commons/lang/builder/HashCodeBuilder;->getRegistry()Ljava/util/Set;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 155
    new-instance v1, Lorg/apache/commons/lang/builder/IDKey;

    invoke-direct {v1, p0}, Lorg/apache/commons/lang/builder/IDKey;-><init>(Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static reflectionAppend(Ljava/lang/Object;Ljava/lang/Class;Lorg/apache/commons/lang/builder/HashCodeBuilder;Z[Ljava/lang/String;)V
    .locals 4

    .line 176
    invoke-static {p0}, Lorg/apache/commons/lang/builder/HashCodeBuilder;->isRegistered(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 180
    :cond_0
    :try_start_0
    invoke-static {p0}, Lorg/apache/commons/lang/builder/HashCodeBuilder;->register(Ljava/lang/Object;)V

    .line 181
    invoke-virtual {p1}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object p1

    const/4 v0, 0x1

    .line 182
    invoke-static {p1, v0}, Ljava/lang/reflect/AccessibleObject;->setAccessible([Ljava/lang/reflect/AccessibleObject;Z)V

    const/4 v0, 0x0

    .line 183
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_3

    .line 184
    aget-object v1, p1, v0

    .line 185
    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {p4, v2}, Lorg/apache/commons/lang/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x24

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_2

    if-nez p3, :cond_1

    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v2

    invoke-static {v2}, Ljava/lang/reflect/Modifier;->isTransient(I)Z

    move-result v2

    if-nez v2, :cond_2

    :cond_1
    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v2

    invoke-static {v2}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_2

    .line 190
    :try_start_1
    invoke-virtual {v1, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 191
    invoke-virtual {p2, v1}, Lorg/apache/commons/lang/builder/HashCodeBuilder;->append(Ljava/lang/Object;)Lorg/apache/commons/lang/builder/HashCodeBuilder;
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 195
    :catch_0
    :try_start_2
    new-instance p1, Ljava/lang/InternalError;

    const-string p2, "Unexpected IllegalAccessException"

    invoke-direct {p1, p2}, Ljava/lang/InternalError;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_2
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 200
    :cond_3
    invoke-static {p0}, Lorg/apache/commons/lang/builder/HashCodeBuilder;->unregister(Ljava/lang/Object;)V

    return-void

    :catchall_0
    move-exception p1

    invoke-static {p0}, Lorg/apache/commons/lang/builder/HashCodeBuilder;->unregister(Ljava/lang/Object;)V

    throw p1
.end method

.method public static reflectionHashCode(IILjava/lang/Object;ZLjava/lang/Class;[Ljava/lang/String;)I
    .locals 1

    if-eqz p2, :cond_1

    .line 363
    new-instance v0, Lorg/apache/commons/lang/builder/HashCodeBuilder;

    invoke-direct {v0, p0, p1}, Lorg/apache/commons/lang/builder/HashCodeBuilder;-><init>(II)V

    .line 364
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    .line 365
    invoke-static {p2, p0, v0, p3, p5}, Lorg/apache/commons/lang/builder/HashCodeBuilder;->reflectionAppend(Ljava/lang/Object;Ljava/lang/Class;Lorg/apache/commons/lang/builder/HashCodeBuilder;Z[Ljava/lang/String;)V

    .line 366
    :goto_0
    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object p1

    if-eqz p1, :cond_0

    if-eq p0, p4, :cond_0

    .line 367
    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object p0

    .line 368
    invoke-static {p2, p0, v0, p3, p5}, Lorg/apache/commons/lang/builder/HashCodeBuilder;->reflectionAppend(Ljava/lang/Object;Ljava/lang/Class;Lorg/apache/commons/lang/builder/HashCodeBuilder;Z[Ljava/lang/String;)V

    goto :goto_0

    .line 370
    :cond_0
    invoke-virtual {v0}, Lorg/apache/commons/lang/builder/HashCodeBuilder;->toHashCode()I

    move-result p0

    return p0

    .line 361
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "The object to build a hash code for must not be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static reflectionHashCode(Ljava/lang/Object;)I
    .locals 6

    const/16 v0, 0x11

    const/16 v1, 0x25

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v2, p0

    .line 404
    invoke-static/range {v0 .. v5}, Lorg/apache/commons/lang/builder/HashCodeBuilder;->reflectionHashCode(IILjava/lang/Object;ZLjava/lang/Class;[Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method static register(Ljava/lang/Object;)V
    .locals 3

    .line 526
    sget-object v0, Lorg/apache/commons/lang/builder/HashCodeBuilder;->class$org$apache$commons$lang$builder$HashCodeBuilder:Ljava/lang/Class;

    if-nez v0, :cond_0

    const-string v0, "org.apache.commons.lang.builder.HashCodeBuilder"

    invoke-static {v0}, Lorg/apache/commons/lang/builder/HashCodeBuilder;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/lang/builder/HashCodeBuilder;->class$org$apache$commons$lang$builder$HashCodeBuilder:Ljava/lang/Class;

    :cond_0
    monitor-enter v0

    .line 527
    :try_start_0
    invoke-static {}, Lorg/apache/commons/lang/builder/HashCodeBuilder;->getRegistry()Ljava/util/Set;

    move-result-object v1

    if-nez v1, :cond_1

    .line 528
    sget-object v1, Lorg/apache/commons/lang/builder/HashCodeBuilder;->REGISTRY:Ljava/lang/ThreadLocal;

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 530
    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 531
    invoke-static {}, Lorg/apache/commons/lang/builder/HashCodeBuilder;->getRegistry()Ljava/util/Set;

    move-result-object v0

    new-instance v1, Lorg/apache/commons/lang/builder/IDKey;

    invoke-direct {v1, p0}, Lorg/apache/commons/lang/builder/IDKey;-><init>(Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void

    :catchall_0
    move-exception p0

    .line 530
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method static unregister(Ljava/lang/Object;)V
    .locals 2

    .line 547
    invoke-static {}, Lorg/apache/commons/lang/builder/HashCodeBuilder;->getRegistry()Ljava/util/Set;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 549
    new-instance v1, Lorg/apache/commons/lang/builder/IDKey;

    invoke-direct {v1, p0}, Lorg/apache/commons/lang/builder/IDKey;-><init>(Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 550
    sget-object p0, Lorg/apache/commons/lang/builder/HashCodeBuilder;->class$org$apache$commons$lang$builder$HashCodeBuilder:Ljava/lang/Class;

    if-nez p0, :cond_0

    const-string p0, "org.apache.commons.lang.builder.HashCodeBuilder"

    invoke-static {p0}, Lorg/apache/commons/lang/builder/HashCodeBuilder;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    sput-object p0, Lorg/apache/commons/lang/builder/HashCodeBuilder;->class$org$apache$commons$lang$builder$HashCodeBuilder:Ljava/lang/Class;

    :cond_0
    monitor-enter p0

    .line 552
    :try_start_0
    invoke-static {}, Lorg/apache/commons/lang/builder/HashCodeBuilder;->getRegistry()Ljava/util/Set;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 553
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 554
    sget-object v0, Lorg/apache/commons/lang/builder/HashCodeBuilder;->REGISTRY:Ljava/lang/ThreadLocal;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 556
    :cond_1
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method public append(B)Lorg/apache/commons/lang/builder/HashCodeBuilder;
    .locals 2

    .line 672
    iget v0, p0, Lorg/apache/commons/lang/builder/HashCodeBuilder;->iTotal:I

    iget v1, p0, Lorg/apache/commons/lang/builder/HashCodeBuilder;->iConstant:I

    mul-int v0, v0, v1

    add-int/2addr v0, p1

    iput v0, p0, Lorg/apache/commons/lang/builder/HashCodeBuilder;->iTotal:I

    return-object p0
.end method

.method public append(C)Lorg/apache/commons/lang/builder/HashCodeBuilder;
    .locals 2

    .line 708
    iget v0, p0, Lorg/apache/commons/lang/builder/HashCodeBuilder;->iTotal:I

    iget v1, p0, Lorg/apache/commons/lang/builder/HashCodeBuilder;->iConstant:I

    mul-int v0, v0, v1

    add-int/2addr v0, p1

    iput v0, p0, Lorg/apache/commons/lang/builder/HashCodeBuilder;->iTotal:I

    return-object p0
.end method

.method public append(D)Lorg/apache/commons/lang/builder/HashCodeBuilder;
    .locals 0

    .line 742
    invoke-static {p1, p2}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/lang/builder/HashCodeBuilder;->append(J)Lorg/apache/commons/lang/builder/HashCodeBuilder;

    return-object p0
.end method

.method public append(F)Lorg/apache/commons/lang/builder/HashCodeBuilder;
    .locals 2

    .line 775
    iget v0, p0, Lorg/apache/commons/lang/builder/HashCodeBuilder;->iTotal:I

    iget v1, p0, Lorg/apache/commons/lang/builder/HashCodeBuilder;->iConstant:I

    mul-int v0, v0, v1

    invoke-static {p1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result p1

    add-int/2addr v0, p1

    iput v0, p0, Lorg/apache/commons/lang/builder/HashCodeBuilder;->iTotal:I

    return-object p0
.end method

.method public append(I)Lorg/apache/commons/lang/builder/HashCodeBuilder;
    .locals 2

    .line 809
    iget v0, p0, Lorg/apache/commons/lang/builder/HashCodeBuilder;->iTotal:I

    iget v1, p0, Lorg/apache/commons/lang/builder/HashCodeBuilder;->iConstant:I

    mul-int v0, v0, v1

    add-int/2addr v0, p1

    iput v0, p0, Lorg/apache/commons/lang/builder/HashCodeBuilder;->iTotal:I

    return-object p0
.end method

.method public append(J)Lorg/apache/commons/lang/builder/HashCodeBuilder;
    .locals 3

    .line 847
    iget v0, p0, Lorg/apache/commons/lang/builder/HashCodeBuilder;->iTotal:I

    iget v1, p0, Lorg/apache/commons/lang/builder/HashCodeBuilder;->iConstant:I

    mul-int v0, v0, v1

    const/16 v1, 0x20

    shr-long v1, p1, v1

    xor-long/2addr p1, v1

    long-to-int p2, p1

    add-int/2addr v0, p2

    iput v0, p0, Lorg/apache/commons/lang/builder/HashCodeBuilder;->iTotal:I

    return-object p0
.end method

.method public append(Ljava/lang/Object;)Lorg/apache/commons/lang/builder/HashCodeBuilder;
    .locals 2

    if-nez p1, :cond_0

    .line 882
    iget p1, p0, Lorg/apache/commons/lang/builder/HashCodeBuilder;->iTotal:I

    iget v0, p0, Lorg/apache/commons/lang/builder/HashCodeBuilder;->iConstant:I

    mul-int p1, p1, v0

    iput p1, p0, Lorg/apache/commons/lang/builder/HashCodeBuilder;->iTotal:I

    goto/16 :goto_0

    .line 885
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 888
    instance-of v0, p1, [J

    if-eqz v0, :cond_1

    .line 889
    check-cast p1, [J

    invoke-virtual {p0, p1}, Lorg/apache/commons/lang/builder/HashCodeBuilder;->append([J)Lorg/apache/commons/lang/builder/HashCodeBuilder;

    goto :goto_0

    .line 890
    :cond_1
    instance-of v0, p1, [I

    if-eqz v0, :cond_2

    .line 891
    check-cast p1, [I

    invoke-virtual {p0, p1}, Lorg/apache/commons/lang/builder/HashCodeBuilder;->append([I)Lorg/apache/commons/lang/builder/HashCodeBuilder;

    goto :goto_0

    .line 892
    :cond_2
    instance-of v0, p1, [S

    if-eqz v0, :cond_3

    .line 893
    check-cast p1, [S

    invoke-virtual {p0, p1}, Lorg/apache/commons/lang/builder/HashCodeBuilder;->append([S)Lorg/apache/commons/lang/builder/HashCodeBuilder;

    goto :goto_0

    .line 894
    :cond_3
    instance-of v0, p1, [C

    if-eqz v0, :cond_4

    .line 895
    check-cast p1, [C

    invoke-virtual {p0, p1}, Lorg/apache/commons/lang/builder/HashCodeBuilder;->append([C)Lorg/apache/commons/lang/builder/HashCodeBuilder;

    goto :goto_0

    .line 896
    :cond_4
    instance-of v0, p1, [B

    if-eqz v0, :cond_5

    .line 897
    check-cast p1, [B

    invoke-virtual {p0, p1}, Lorg/apache/commons/lang/builder/HashCodeBuilder;->append([B)Lorg/apache/commons/lang/builder/HashCodeBuilder;

    goto :goto_0

    .line 898
    :cond_5
    instance-of v0, p1, [D

    if-eqz v0, :cond_6

    .line 899
    check-cast p1, [D

    invoke-virtual {p0, p1}, Lorg/apache/commons/lang/builder/HashCodeBuilder;->append([D)Lorg/apache/commons/lang/builder/HashCodeBuilder;

    goto :goto_0

    .line 900
    :cond_6
    instance-of v0, p1, [F

    if-eqz v0, :cond_7

    .line 901
    check-cast p1, [F

    invoke-virtual {p0, p1}, Lorg/apache/commons/lang/builder/HashCodeBuilder;->append([F)Lorg/apache/commons/lang/builder/HashCodeBuilder;

    goto :goto_0

    .line 902
    :cond_7
    instance-of v0, p1, [Z

    if-eqz v0, :cond_8

    .line 903
    check-cast p1, [Z

    invoke-virtual {p0, p1}, Lorg/apache/commons/lang/builder/HashCodeBuilder;->append([Z)Lorg/apache/commons/lang/builder/HashCodeBuilder;

    goto :goto_0

    .line 906
    :cond_8
    check-cast p1, [Ljava/lang/Object;

    invoke-virtual {p0, p1}, Lorg/apache/commons/lang/builder/HashCodeBuilder;->append([Ljava/lang/Object;)Lorg/apache/commons/lang/builder/HashCodeBuilder;

    goto :goto_0

    .line 909
    :cond_9
    iget v0, p0, Lorg/apache/commons/lang/builder/HashCodeBuilder;->iTotal:I

    iget v1, p0, Lorg/apache/commons/lang/builder/HashCodeBuilder;->iConstant:I

    mul-int v0, v0, v1

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p1

    add-int/2addr v0, p1

    iput v0, p0, Lorg/apache/commons/lang/builder/HashCodeBuilder;->iTotal:I

    :goto_0
    return-object p0
.end method

.method public append(S)Lorg/apache/commons/lang/builder/HashCodeBuilder;
    .locals 2

    .line 945
    iget v0, p0, Lorg/apache/commons/lang/builder/HashCodeBuilder;->iTotal:I

    iget v1, p0, Lorg/apache/commons/lang/builder/HashCodeBuilder;->iConstant:I

    mul-int v0, v0, v1

    add-int/2addr v0, p1

    iput v0, p0, Lorg/apache/commons/lang/builder/HashCodeBuilder;->iTotal:I

    return-object p0
.end method

.method public append(Z)Lorg/apache/commons/lang/builder/HashCodeBuilder;
    .locals 2

    .line 636
    iget v0, p0, Lorg/apache/commons/lang/builder/HashCodeBuilder;->iTotal:I

    iget v1, p0, Lorg/apache/commons/lang/builder/HashCodeBuilder;->iConstant:I

    mul-int v0, v0, v1

    xor-int/lit8 p1, p1, 0x1

    add-int/2addr v0, p1

    iput v0, p0, Lorg/apache/commons/lang/builder/HashCodeBuilder;->iTotal:I

    return-object p0
.end method

.method public append([B)Lorg/apache/commons/lang/builder/HashCodeBuilder;
    .locals 2

    if-nez p1, :cond_0

    .line 689
    iget p1, p0, Lorg/apache/commons/lang/builder/HashCodeBuilder;->iTotal:I

    iget v0, p0, Lorg/apache/commons/lang/builder/HashCodeBuilder;->iConstant:I

    mul-int p1, p1, v0

    iput p1, p0, Lorg/apache/commons/lang/builder/HashCodeBuilder;->iTotal:I

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    .line 691
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_1

    .line 692
    aget-byte v1, p1, v0

    invoke-virtual {p0, v1}, Lorg/apache/commons/lang/builder/HashCodeBuilder;->append(B)Lorg/apache/commons/lang/builder/HashCodeBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-object p0
.end method

.method public append([C)Lorg/apache/commons/lang/builder/HashCodeBuilder;
    .locals 2

    if-nez p1, :cond_0

    .line 723
    iget p1, p0, Lorg/apache/commons/lang/builder/HashCodeBuilder;->iTotal:I

    iget v0, p0, Lorg/apache/commons/lang/builder/HashCodeBuilder;->iConstant:I

    mul-int p1, p1, v0

    iput p1, p0, Lorg/apache/commons/lang/builder/HashCodeBuilder;->iTotal:I

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    .line 725
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_1

    .line 726
    aget-char v1, p1, v0

    invoke-virtual {p0, v1}, Lorg/apache/commons/lang/builder/HashCodeBuilder;->append(C)Lorg/apache/commons/lang/builder/HashCodeBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-object p0
.end method

.method public append([D)Lorg/apache/commons/lang/builder/HashCodeBuilder;
    .locals 3

    if-nez p1, :cond_0

    .line 756
    iget p1, p0, Lorg/apache/commons/lang/builder/HashCodeBuilder;->iTotal:I

    iget v0, p0, Lorg/apache/commons/lang/builder/HashCodeBuilder;->iConstant:I

    mul-int p1, p1, v0

    iput p1, p0, Lorg/apache/commons/lang/builder/HashCodeBuilder;->iTotal:I

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    .line 758
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_1

    .line 759
    aget-wide v1, p1, v0

    invoke-virtual {p0, v1, v2}, Lorg/apache/commons/lang/builder/HashCodeBuilder;->append(D)Lorg/apache/commons/lang/builder/HashCodeBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-object p0
.end method

.method public append([F)Lorg/apache/commons/lang/builder/HashCodeBuilder;
    .locals 2

    if-nez p1, :cond_0

    .line 790
    iget p1, p0, Lorg/apache/commons/lang/builder/HashCodeBuilder;->iTotal:I

    iget v0, p0, Lorg/apache/commons/lang/builder/HashCodeBuilder;->iConstant:I

    mul-int p1, p1, v0

    iput p1, p0, Lorg/apache/commons/lang/builder/HashCodeBuilder;->iTotal:I

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    .line 792
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_1

    .line 793
    aget v1, p1, v0

    invoke-virtual {p0, v1}, Lorg/apache/commons/lang/builder/HashCodeBuilder;->append(F)Lorg/apache/commons/lang/builder/HashCodeBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-object p0
.end method

.method public append([I)Lorg/apache/commons/lang/builder/HashCodeBuilder;
    .locals 2

    if-nez p1, :cond_0

    .line 824
    iget p1, p0, Lorg/apache/commons/lang/builder/HashCodeBuilder;->iTotal:I

    iget v0, p0, Lorg/apache/commons/lang/builder/HashCodeBuilder;->iConstant:I

    mul-int p1, p1, v0

    iput p1, p0, Lorg/apache/commons/lang/builder/HashCodeBuilder;->iTotal:I

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    .line 826
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_1

    .line 827
    aget v1, p1, v0

    invoke-virtual {p0, v1}, Lorg/apache/commons/lang/builder/HashCodeBuilder;->append(I)Lorg/apache/commons/lang/builder/HashCodeBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-object p0
.end method

.method public append([J)Lorg/apache/commons/lang/builder/HashCodeBuilder;
    .locals 3

    if-nez p1, :cond_0

    .line 862
    iget p1, p0, Lorg/apache/commons/lang/builder/HashCodeBuilder;->iTotal:I

    iget v0, p0, Lorg/apache/commons/lang/builder/HashCodeBuilder;->iConstant:I

    mul-int p1, p1, v0

    iput p1, p0, Lorg/apache/commons/lang/builder/HashCodeBuilder;->iTotal:I

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    .line 864
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_1

    .line 865
    aget-wide v1, p1, v0

    invoke-virtual {p0, v1, v2}, Lorg/apache/commons/lang/builder/HashCodeBuilder;->append(J)Lorg/apache/commons/lang/builder/HashCodeBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-object p0
.end method

.method public append([Ljava/lang/Object;)Lorg/apache/commons/lang/builder/HashCodeBuilder;
    .locals 2

    if-nez p1, :cond_0

    .line 926
    iget p1, p0, Lorg/apache/commons/lang/builder/HashCodeBuilder;->iTotal:I

    iget v0, p0, Lorg/apache/commons/lang/builder/HashCodeBuilder;->iConstant:I

    mul-int p1, p1, v0

    iput p1, p0, Lorg/apache/commons/lang/builder/HashCodeBuilder;->iTotal:I

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    .line 928
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_1

    .line 929
    aget-object v1, p1, v0

    invoke-virtual {p0, v1}, Lorg/apache/commons/lang/builder/HashCodeBuilder;->append(Ljava/lang/Object;)Lorg/apache/commons/lang/builder/HashCodeBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-object p0
.end method

.method public append([S)Lorg/apache/commons/lang/builder/HashCodeBuilder;
    .locals 2

    if-nez p1, :cond_0

    .line 960
    iget p1, p0, Lorg/apache/commons/lang/builder/HashCodeBuilder;->iTotal:I

    iget v0, p0, Lorg/apache/commons/lang/builder/HashCodeBuilder;->iConstant:I

    mul-int p1, p1, v0

    iput p1, p0, Lorg/apache/commons/lang/builder/HashCodeBuilder;->iTotal:I

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    .line 962
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_1

    .line 963
    aget-short v1, p1, v0

    invoke-virtual {p0, v1}, Lorg/apache/commons/lang/builder/HashCodeBuilder;->append(S)Lorg/apache/commons/lang/builder/HashCodeBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-object p0
.end method

.method public append([Z)Lorg/apache/commons/lang/builder/HashCodeBuilder;
    .locals 2

    if-nez p1, :cond_0

    .line 651
    iget p1, p0, Lorg/apache/commons/lang/builder/HashCodeBuilder;->iTotal:I

    iget v0, p0, Lorg/apache/commons/lang/builder/HashCodeBuilder;->iConstant:I

    mul-int p1, p1, v0

    iput p1, p0, Lorg/apache/commons/lang/builder/HashCodeBuilder;->iTotal:I

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    .line 653
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_1

    .line 654
    aget-boolean v1, p1, v0

    invoke-virtual {p0, v1}, Lorg/apache/commons/lang/builder/HashCodeBuilder;->append(Z)Lorg/apache/commons/lang/builder/HashCodeBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-object p0
.end method

.method public hashCode()I
    .locals 1

    .line 1005
    invoke-virtual {p0}, Lorg/apache/commons/lang/builder/HashCodeBuilder;->toHashCode()I

    move-result v0

    return v0
.end method

.method public toHashCode()I
    .locals 1

    .line 992
    iget v0, p0, Lorg/apache/commons/lang/builder/HashCodeBuilder;->iTotal:I

    return v0
.end method
