.class final Lorg/reflections/ReflectionUtils$2;
.super Ljava/lang/Object;
.source "ReflectionUtils.java"

# interfaces
.implements Lorg/reflections/util/UtilQueryBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/reflections/ReflectionUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/reflections/util/UtilQueryBuilder<",
        "Ljava/lang/reflect/AnnotatedElement;",
        "Ljava/lang/annotation/Annotation;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic lambda$get$0(Ljava/lang/reflect/AnnotatedElement;Lorg/reflections/Store;)Ljava/util/Set;
    .locals 0

    .line 118
    invoke-interface {p0}, Ljava/lang/reflect/AnnotatedElement;->getAnnotations()[Ljava/lang/annotation/Annotation;

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


# virtual methods
.method public bridge synthetic get(Ljava/lang/Object;)Lorg/reflections/util/QueryFunction;
    .locals 0

    .line 115
    check-cast p1, Ljava/lang/reflect/AnnotatedElement;

    invoke-virtual {p0, p1}, Lorg/reflections/ReflectionUtils$2;->get(Ljava/lang/reflect/AnnotatedElement;)Lorg/reflections/util/QueryFunction;

    move-result-object p1

    return-object p1
.end method

.method public get(Ljava/lang/reflect/AnnotatedElement;)Lorg/reflections/util/QueryFunction;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/AnnotatedElement;",
            ")",
            "Lorg/reflections/util/QueryFunction<",
            "Lorg/reflections/Store;",
            "Ljava/lang/annotation/Annotation;",
            ">;"
        }
    .end annotation

    .line 118
    new-instance v0, Lorg/reflections/-$$Lambda$ReflectionUtils$2$wtEXoRP13epNWmBc_6UKgWiklaw;

    invoke-direct {v0, p1}, Lorg/reflections/-$$Lambda$ReflectionUtils$2$wtEXoRP13epNWmBc_6UKgWiklaw;-><init>(Ljava/lang/reflect/AnnotatedElement;)V

    return-object v0
.end method
