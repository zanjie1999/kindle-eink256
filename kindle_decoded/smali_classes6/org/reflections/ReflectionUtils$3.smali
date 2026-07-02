.class final Lorg/reflections/ReflectionUtils$3;
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
        "Ljava/lang/Class<",
        "+",
        "Ljava/lang/annotation/Annotation;",
        ">;>;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 129
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic get(Ljava/lang/Object;)Lorg/reflections/util/QueryFunction;
    .locals 0

    .line 129
    check-cast p1, Ljava/lang/reflect/AnnotatedElement;

    invoke-virtual {p0, p1}, Lorg/reflections/ReflectionUtils$3;->get(Ljava/lang/reflect/AnnotatedElement;)Lorg/reflections/util/QueryFunction;

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
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/annotation/Annotation;",
            ">;>;"
        }
    .end annotation

    .line 132
    sget-object v0, Lorg/reflections/ReflectionUtils;->Annotations:Lorg/reflections/util/UtilQueryBuilder;

    invoke-interface {v0, p1}, Lorg/reflections/util/UtilQueryBuilder;->get(Ljava/lang/Object;)Lorg/reflections/util/QueryFunction;

    move-result-object p1

    sget-object v0, Lorg/reflections/-$$Lambda$UOLKJYP2OFDNXZ308ZJXyw3ZYQw;->INSTANCE:Lorg/reflections/-$$Lambda$UOLKJYP2OFDNXZ308ZJXyw3ZYQw;

    invoke-interface {p1, v0}, Lorg/reflections/util/QueryFunction;->map(Ljava/util/function/Function;)Lorg/reflections/util/QueryFunction;

    move-result-object p1

    return-object p1
.end method
