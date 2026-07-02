.class public abstract Lorg/reflections/ReflectionUtils;
.super Lorg/reflections/util/ReflectionUtilsPredicates;
.source "ReflectionUtils.java"


# static fields
.field public static final Annotations:Lorg/reflections/util/UtilQueryBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/reflections/util/UtilQueryBuilder<",
            "Ljava/lang/reflect/AnnotatedElement;",
            "Ljava/lang/annotation/Annotation;",
            ">;"
        }
    .end annotation
.end field

.field public static final Interfaces:Lorg/reflections/util/UtilQueryBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/reflections/util/UtilQueryBuilder<",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation
.end field

.field public static final SuperClass:Lorg/reflections/util/UtilQueryBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/reflections/util/UtilQueryBuilder<",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation
.end field

.field public static final SuperTypes:Lorg/reflections/util/UtilQueryBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/reflections/util/UtilQueryBuilder<",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation
.end field

.field public static final notObjectMethod:Ljava/util/function/Predicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Predicate<",
            "Ljava/lang/reflect/Method;",
            ">;"
        }
    .end annotation
.end field

.field private static final objectMethodNames:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const-string v0, "equals"

    const-string v1, "hashCode"

    const-string v2, "toString"

    const-string v3, "wait"

    const-string v4, "notify"

    const-string v5, "notifyAll"

    .line 81
    filled-new-array/range {v0 .. v5}, [Ljava/lang/String;

    move-result-object v0

    .line 82
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lorg/reflections/ReflectionUtils;->objectMethodNames:Ljava/util/List;

    .line 85
    sget-object v0, Lorg/reflections/-$$Lambda$ReflectionUtils$Ft6rY02Gx6fMBHXO65zP8kQuRFU;->INSTANCE:Lorg/reflections/-$$Lambda$ReflectionUtils$Ft6rY02Gx6fMBHXO65zP8kQuRFU;

    sput-object v0, Lorg/reflections/ReflectionUtils;->notObjectMethod:Ljava/util/function/Predicate;

    .line 89
    sget-object v0, Lorg/reflections/-$$Lambda$ReflectionUtils$AG8eRDO_F25jcoG0nzPlVAkhXs4;->INSTANCE:Lorg/reflections/-$$Lambda$ReflectionUtils$AG8eRDO_F25jcoG0nzPlVAkhXs4;

    sput-object v0, Lorg/reflections/ReflectionUtils;->SuperClass:Lorg/reflections/util/UtilQueryBuilder;

    .line 96
    sget-object v0, Lorg/reflections/-$$Lambda$ReflectionUtils$smLpUJXyitiQ4kz6UlFH3epfjCg;->INSTANCE:Lorg/reflections/-$$Lambda$ReflectionUtils$smLpUJXyitiQ4kz6UlFH3epfjCg;

    sput-object v0, Lorg/reflections/ReflectionUtils;->Interfaces:Lorg/reflections/util/UtilQueryBuilder;

    .line 100
    new-instance v0, Lorg/reflections/ReflectionUtils$1;

    invoke-direct {v0}, Lorg/reflections/ReflectionUtils$1;-><init>()V

    sput-object v0, Lorg/reflections/ReflectionUtils;->SuperTypes:Lorg/reflections/util/UtilQueryBuilder;

    .line 114
    new-instance v0, Lorg/reflections/ReflectionUtils$2;

    invoke-direct {v0}, Lorg/reflections/ReflectionUtils$2;-><init>()V

    sput-object v0, Lorg/reflections/ReflectionUtils;->Annotations:Lorg/reflections/util/UtilQueryBuilder;

    .line 128
    new-instance v0, Lorg/reflections/ReflectionUtils$3;

    invoke-direct {v0}, Lorg/reflections/ReflectionUtils$3;-><init>()V

    .line 142
    sget-object v0, Lorg/reflections/-$$Lambda$ReflectionUtils$p5NJzFF_owdlVzA_usbkhHuuI_8;->INSTANCE:Lorg/reflections/-$$Lambda$ReflectionUtils$p5NJzFF_owdlVzA_usbkhHuuI_8;

    .line 146
    sget-object v0, Lorg/reflections/-$$Lambda$ReflectionUtils$Spb2OSGVgFINYJlcRdtbNzQ_pSI;->INSTANCE:Lorg/reflections/-$$Lambda$ReflectionUtils$Spb2OSGVgFINYJlcRdtbNzQ_pSI;

    .line 150
    sget-object v0, Lorg/reflections/-$$Lambda$ReflectionUtils$KR1qRzMMy5ZCC64sFMZUaI3vGW8;->INSTANCE:Lorg/reflections/-$$Lambda$ReflectionUtils$KR1qRzMMy5ZCC64sFMZUaI3vGW8;

    .line 154
    sget-object v0, Lorg/reflections/-$$Lambda$ReflectionUtils$curMnz8sGu9ln8dKvp5dHQNEc2Q;->INSTANCE:Lorg/reflections/-$$Lambda$ReflectionUtils$curMnz8sGu9ln8dKvp5dHQNEc2Q;

    return-void
.end method

.method public static get(Lorg/reflections/util/QueryFunction;)Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C:",
            "Ljava/lang/Object;",
            "T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/reflections/util/QueryFunction<",
            "TC;TT;>;)",
            "Ljava/util/Set<",
            "TT;>;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 73
    invoke-interface {p0, v0}, Lorg/reflections/util/QueryFunction;->apply(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public static varargs get(Lorg/reflections/util/QueryFunction;[Ljava/util/function/Predicate;)Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/reflections/util/QueryFunction<",
            "Lorg/reflections/Store;",
            "TT;>;[",
            "Ljava/util/function/Predicate<",
            "-TT;>;)",
            "Ljava/util/Set<",
            "TT;>;"
        }
    .end annotation

    .line 78
    invoke-static {p1}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object p1

    sget-object v0, Lorg/reflections/-$$Lambda$ReflectionUtils$DhCTnzH6QDTMaHlnNkO5NHX52Ck;->INSTANCE:Lorg/reflections/-$$Lambda$ReflectionUtils$DhCTnzH6QDTMaHlnNkO5NHX52Ck;

    sget-object v1, Lorg/reflections/-$$Lambda$QUF8onbyeRS02cAU5ynoVemHR6I;->INSTANCE:Lorg/reflections/-$$Lambda$QUF8onbyeRS02cAU5ynoVemHR6I;

    invoke-interface {p1, v0, v1}, Ljava/util/stream/Stream;->reduce(Ljava/lang/Object;Ljava/util/function/BinaryOperator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/function/Predicate;

    invoke-interface {p0, p1}, Lorg/reflections/util/QueryFunction;->filter(Ljava/util/function/Predicate;)Lorg/reflections/util/QueryFunction;

    move-result-object p0

    invoke-static {p0}, Lorg/reflections/ReflectionUtils;->get(Lorg/reflections/util/QueryFunction;)Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public static varargs getAnnotations(Ljava/lang/reflect/AnnotatedElement;[Ljava/util/function/Predicate;)Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/reflect/AnnotatedElement;",
            ">(TT;[",
            "Ljava/util/function/Predicate<",
            "Ljava/lang/annotation/Annotation;",
            ">;)",
            "Ljava/util/Set<",
            "Ljava/lang/annotation/Annotation;",
            ">;"
        }
    .end annotation

    .line 225
    sget-object v0, Lorg/reflections/ReflectionUtils;->Annotations:Lorg/reflections/util/UtilQueryBuilder;

    invoke-interface {v0, p0}, Lorg/reflections/util/UtilQueryBuilder;->get(Ljava/lang/Object;)Lorg/reflections/util/QueryFunction;

    move-result-object p0

    invoke-static {p0, p1}, Lorg/reflections/ReflectionUtils;->get(Lorg/reflections/util/QueryFunction;[Ljava/util/function/Predicate;)Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public static getSuperTypes(Ljava/lang/Class;)Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/util/Set<",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation

    .line 183
    sget-object v0, Lorg/reflections/ReflectionUtils;->SuperTypes:Lorg/reflections/util/UtilQueryBuilder;

    invoke-interface {v0, p0}, Lorg/reflections/util/UtilQueryBuilder;->get(Ljava/lang/Object;)Lorg/reflections/util/QueryFunction;

    move-result-object p0

    invoke-static {p0}, Lorg/reflections/ReflectionUtils;->get(Lorg/reflections/util/QueryFunction;)Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$get$0(Ljava/lang/Object;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method static synthetic lambda$null$10(Ljava/lang/Class;Lorg/reflections/Store;)Ljava/util/Set;
    .locals 0

    .line 151
    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object p0

    sget-object p1, Lorg/reflections/-$$Lambda$VQnU3Jki1-RCSS5B-Yg_Kf6hQAY;->INSTANCE:Lorg/reflections/-$$Lambda$VQnU3Jki1-RCSS5B-Yg_Kf6hQAY;

    invoke-static {p1}, Ljava/util/stream/Collectors;->toCollection(Ljava/util/function/Supplier;)Ljava/util/stream/Collector;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/LinkedHashSet;

    return-object p0
.end method

.method static synthetic lambda$null$12(Ljava/lang/String;Lorg/reflections/Store;)Ljava/util/Set;
    .locals 1

    .line 155
    new-instance p1, Ljava/util/HashSet;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/ClassLoader;

    invoke-static {p0, v0}, Lorg/reflections/util/ClasspathHelper;->forResource(Ljava/lang/String;[Ljava/lang/ClassLoader;)Ljava/util/Collection;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    return-object p1
.end method

.method static synthetic lambda$null$2(Ljava/lang/Class;Lorg/reflections/Store;)Ljava/util/Set;
    .locals 0

    .line 91
    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 92
    const-class p1, Ljava/lang/Object;

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-static {p0}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method static synthetic lambda$null$4(Ljava/lang/Class;Lorg/reflections/Store;)Ljava/util/Set;
    .locals 0

    .line 97
    invoke-virtual {p0}, Ljava/lang/Class;->getInterfaces()[Ljava/lang/Class;

    move-result-object p0

    invoke-static {p0}, Ljava/util/stream/Stream;->of([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object p0

    sget-object p1, Lorg/reflections/-$$Lambda$VQnU3Jki1-RCSS5B-Yg_Kf6hQAY;->INSTANCE:Lorg/reflections/-$$Lambda$VQnU3Jki1-RCSS5B-Yg_Kf6hQAY;

    invoke-static {p1}, Ljava/util/stream/Collectors;->toCollection(Ljava/util/function/Supplier;)Ljava/util/stream/Collector;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/LinkedHashSet;

    return-object p0
.end method

.method static synthetic lambda$null$6(Ljava/lang/Class;Lorg/reflections/Store;)Ljava/util/Set;
    .locals 0

    .line 143
    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object p0

    sget-object p1, Lorg/reflections/ReflectionUtils;->notObjectMethod:Ljava/util/function/Predicate;

    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    sget-object p1, Lorg/reflections/-$$Lambda$VQnU3Jki1-RCSS5B-Yg_Kf6hQAY;->INSTANCE:Lorg/reflections/-$$Lambda$VQnU3Jki1-RCSS5B-Yg_Kf6hQAY;

    invoke-static {p1}, Ljava/util/stream/Collectors;->toCollection(Ljava/util/function/Supplier;)Ljava/util/stream/Collector;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/LinkedHashSet;

    return-object p0
.end method

.method static synthetic lambda$null$8(Ljava/lang/Class;Lorg/reflections/Store;)Ljava/util/Set;
    .locals 0

    .line 147
    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaredConstructors()[Ljava/lang/reflect/Constructor;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object p0

    sget-object p1, Lorg/reflections/-$$Lambda$VQnU3Jki1-RCSS5B-Yg_Kf6hQAY;->INSTANCE:Lorg/reflections/-$$Lambda$VQnU3Jki1-RCSS5B-Yg_Kf6hQAY;

    invoke-static {p1}, Ljava/util/stream/Collectors;->toCollection(Ljava/util/function/Supplier;)Ljava/util/stream/Collector;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/LinkedHashSet;

    return-object p0
.end method

.method static synthetic lambda$static$1(Ljava/lang/reflect/Method;)Z
    .locals 1

    .line 85
    sget-object v0, Lorg/reflections/ReflectionUtils;->objectMethodNames:Ljava/util/List;

    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method static synthetic lambda$static$11(Ljava/lang/Class;)Lorg/reflections/util/QueryFunction;
    .locals 1

    .line 151
    new-instance v0, Lorg/reflections/-$$Lambda$ReflectionUtils$5NEyiHEgP3X2udjOFbWOBRT5d7A;

    invoke-direct {v0, p0}, Lorg/reflections/-$$Lambda$ReflectionUtils$5NEyiHEgP3X2udjOFbWOBRT5d7A;-><init>(Ljava/lang/Class;)V

    return-object v0
.end method

.method static synthetic lambda$static$13(Ljava/lang/String;)Lorg/reflections/util/QueryFunction;
    .locals 1

    .line 155
    new-instance v0, Lorg/reflections/-$$Lambda$ReflectionUtils$K0gxIpURLKojdKwZBcpWhI_nBlI;

    invoke-direct {v0, p0}, Lorg/reflections/-$$Lambda$ReflectionUtils$K0gxIpURLKojdKwZBcpWhI_nBlI;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method static synthetic lambda$static$3(Ljava/lang/Class;)Lorg/reflections/util/QueryFunction;
    .locals 1

    .line 90
    new-instance v0, Lorg/reflections/-$$Lambda$ReflectionUtils$xItvztsBSd-f2MVep19SWVIL2Fo;

    invoke-direct {v0, p0}, Lorg/reflections/-$$Lambda$ReflectionUtils$xItvztsBSd-f2MVep19SWVIL2Fo;-><init>(Ljava/lang/Class;)V

    return-object v0
.end method

.method static synthetic lambda$static$5(Ljava/lang/Class;)Lorg/reflections/util/QueryFunction;
    .locals 1

    .line 97
    new-instance v0, Lorg/reflections/-$$Lambda$ReflectionUtils$LoTNjpKS-sufR7mz8FCwVelon2w;

    invoke-direct {v0, p0}, Lorg/reflections/-$$Lambda$ReflectionUtils$LoTNjpKS-sufR7mz8FCwVelon2w;-><init>(Ljava/lang/Class;)V

    return-object v0
.end method

.method static synthetic lambda$static$7(Ljava/lang/Class;)Lorg/reflections/util/QueryFunction;
    .locals 1

    .line 143
    new-instance v0, Lorg/reflections/-$$Lambda$ReflectionUtils$aZdJeUpcEZdXhA6tdp_SmWS-oC4;

    invoke-direct {v0, p0}, Lorg/reflections/-$$Lambda$ReflectionUtils$aZdJeUpcEZdXhA6tdp_SmWS-oC4;-><init>(Ljava/lang/Class;)V

    return-object v0
.end method

.method static synthetic lambda$static$9(Ljava/lang/Class;)Lorg/reflections/util/QueryFunction;
    .locals 1

    .line 147
    new-instance v0, Lorg/reflections/-$$Lambda$ReflectionUtils$b1R2S_adNqYq1klccPVxjbxtUzc;

    invoke-direct {v0, p0}, Lorg/reflections/-$$Lambda$ReflectionUtils$b1R2S_adNqYq1klccPVxjbxtUzc;-><init>(Ljava/lang/Class;)V

    return-object v0
.end method
