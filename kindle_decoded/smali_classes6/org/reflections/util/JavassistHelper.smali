.class public Lorg/reflections/util/JavassistHelper;
.super Ljava/lang/Object;
.source "JavassistHelper.java"


# static fields
.field public static includeInvisibleTag:Z = true


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private static annotationNames([Ljavassist/bytecode/annotation/Annotation;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljavassist/bytecode/annotation/Annotation;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    if-eqz p0, :cond_0

    .line 99
    invoke-static {p0}, Ljava/util/stream/Stream;->of([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object p0

    sget-object v0, Lorg/reflections/util/-$$Lambda$_Y2Mse6-izKtcPUgZrbbFxKWWeo;->INSTANCE:Lorg/reflections/util/-$$Lambda$_Y2Mse6-izKtcPUgZrbbFxKWWeo;

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    goto :goto_0

    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public static fieldName(Ljavassist/bytecode/ClassFile;Ljavassist/bytecode/FieldInfo;)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 25
    invoke-virtual {p0}, Ljavassist/bytecode/ClassFile;->getName()Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x0

    aput-object p0, v0, v1

    invoke-virtual {p1}, Ljavassist/bytecode/FieldInfo;->getName()Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x1

    aput-object p0, v0, p1

    const-string p0, "%s.%s"

    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getAnnotations(Ljava/util/function/Function;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Function<",
            "Ljava/lang/String;",
            "Ljavassist/bytecode/AttributeInfo;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 67
    sget-object v0, Lorg/reflections/util/-$$Lambda$JavassistHelper$HsFWOudCoGGViepvJtO5KjgcPSQ;->INSTANCE:Lorg/reflections/util/-$$Lambda$JavassistHelper$HsFWOudCoGGViepvJtO5KjgcPSQ;

    .line 68
    invoke-interface {p0, v0}, Ljava/util/function/Function;->andThen(Ljava/util/function/Function;)Ljava/util/function/Function;

    move-result-object p0

    sget-object v0, Lorg/reflections/util/-$$Lambda$JavassistHelper$nIg5txpoAb0FdIBtbyA3FtYQhVg;->INSTANCE:Lorg/reflections/util/-$$Lambda$JavassistHelper$nIg5txpoAb0FdIBtbyA3FtYQhVg;

    .line 69
    invoke-interface {p0, v0}, Ljava/util/function/Function;->andThen(Ljava/util/function/Function;)Ljava/util/function/Function;

    move-result-object p0

    .line 71
    new-instance v0, Ljava/util/ArrayList;

    const-string v1, "RuntimeVisibleAnnotations"

    invoke-interface {p0, v1}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 72
    sget-boolean v1, Lorg/reflections/util/JavassistHelper;->includeInvisibleTag:Z

    if-eqz v1, :cond_0

    const-string v1, "RuntimeInvisibleAnnotations"

    invoke-interface {p0, v1}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Collection;

    invoke-interface {v0, p0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_0
    return-object v0
.end method

.method public static getConstructors(Ljavassist/bytecode/ClassFile;)Ljava/util/stream/Stream;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavassist/bytecode/ClassFile;",
            ")",
            "Ljava/util/stream/Stream<",
            "Ljavassist/bytecode/MethodInfo;",
            ">;"
        }
    .end annotation

    .line 44
    invoke-virtual {p0}, Ljavassist/bytecode/ClassFile;->getMethods()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    sget-object v0, Lorg/reflections/util/-$$Lambda$JavassistHelper$Lw7do7jcIOMDVLpXfugRJSg0Bpc;->INSTANCE:Lorg/reflections/util/-$$Lambda$JavassistHelper$Lw7do7jcIOMDVLpXfugRJSg0Bpc;

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    return-object p0
.end method

.method public static getMethods(Ljavassist/bytecode/ClassFile;)Ljava/util/stream/Stream;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavassist/bytecode/ClassFile;",
            ")",
            "Ljava/util/stream/Stream<",
            "Ljavassist/bytecode/MethodInfo;",
            ">;"
        }
    .end annotation

    .line 40
    invoke-virtual {p0}, Ljavassist/bytecode/ClassFile;->getMethods()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    sget-object v0, Lorg/reflections/util/-$$Lambda$NSyuW1cSOLO_s4tRKPZi_bRioxs;->INSTANCE:Lorg/reflections/util/-$$Lambda$NSyuW1cSOLO_s4tRKPZi_bRioxs;

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    return-object p0
.end method

.method public static getParameters(Ljavassist/bytecode/MethodInfo;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavassist/bytecode/MethodInfo;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 48
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 49
    invoke-virtual {p0}, Ljavassist/bytecode/MethodInfo;->getDescriptor()Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 50
    new-instance v1, Ljavassist/bytecode/Descriptor$Iterator;

    invoke-direct {v1, p0}, Ljavassist/bytecode/Descriptor$Iterator;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    .line 52
    :goto_0
    invoke-virtual {v1}, Ljavassist/bytecode/Descriptor$Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 53
    invoke-virtual {v1}, Ljavassist/bytecode/Descriptor$Iterator;->next()I

    move-result v3

    if-eqz v2, :cond_0

    .line 54
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljavassist/bytecode/Descriptor;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 55
    :cond_0
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public static getParametersAnnotations(Ljavassist/bytecode/MethodInfo;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavassist/bytecode/MethodInfo;",
            ")",
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 77
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lorg/reflections/util/-$$Lambda$Sl9vGyhncTF3kfanCKPE9uq_Et4;

    invoke-direct {v0, p0}, Lorg/reflections/util/-$$Lambda$Sl9vGyhncTF3kfanCKPE9uq_Et4;-><init>(Ljavassist/bytecode/MethodInfo;)V

    sget-object p0, Lorg/reflections/util/-$$Lambda$JavassistHelper$pB9fydnL6QJEQxpzWnd8Q_oZUBw;->INSTANCE:Lorg/reflections/util/-$$Lambda$JavassistHelper$pB9fydnL6QJEQxpzWnd8Q_oZUBw;

    .line 78
    invoke-interface {v0, p0}, Ljava/util/function/Function;->andThen(Ljava/util/function/Function;)Ljava/util/function/Function;

    move-result-object p0

    sget-object v0, Lorg/reflections/util/-$$Lambda$JavassistHelper$tcJunwhQ6qsU1qWBvctTqpCjDUc;->INSTANCE:Lorg/reflections/util/-$$Lambda$JavassistHelper$tcJunwhQ6qsU1qWBvctTqpCjDUc;

    .line 79
    invoke-interface {p0, v0}, Ljava/util/function/Function;->andThen(Ljava/util/function/Function;)Ljava/util/function/Function;

    move-result-object p0

    const-string v0, "RuntimeVisibleParameterAnnotations"

    .line 81
    invoke-interface {p0, v0}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 82
    sget-boolean v1, Lorg/reflections/util/JavassistHelper;->includeInvisibleTag:Z

    if-nez v1, :cond_0

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object p0

    :cond_0
    const-string v1, "RuntimeInvisibleParameterAnnotations"

    .line 84
    invoke-interface {p0, v1}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    .line 85
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object p0

    .line 88
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    .line 89
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    if-ge v2, v3, :cond_4

    .line 90
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 91
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_2

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Collection;

    invoke-interface {v3, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 92
    :cond_2
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_3

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Collection;

    invoke-interface {v3, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 93
    :cond_3
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    return-object v1
.end method

.method public static getReturnType(Ljavassist/bytecode/MethodInfo;)Ljava/lang/String;
    .locals 1

    .line 61
    invoke-virtual {p0}, Ljavassist/bytecode/MethodInfo;->getDescriptor()Ljava/lang/String;

    move-result-object p0

    const-string v0, ")"

    .line 62
    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 63
    invoke-static {p0}, Ljavassist/bytecode/Descriptor;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$getAnnotations$1(Ljavassist/bytecode/AttributeInfo;)[Ljavassist/bytecode/annotation/Annotation;
    .locals 0

    if-eqz p0, :cond_0

    .line 68
    check-cast p0, Ljavassist/bytecode/AnnotationsAttribute;

    invoke-virtual {p0}, Ljavassist/bytecode/AnnotationsAttribute;->getAnnotations()[Ljavassist/bytecode/annotation/Annotation;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method static synthetic lambda$getConstructors$0(Ljavassist/bytecode/MethodInfo;)Z
    .locals 0

    .line 44
    invoke-virtual {p0}, Ljavassist/bytecode/MethodInfo;->isMethod()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method static synthetic lambda$getParametersAnnotations$2(Ljavassist/bytecode/AttributeInfo;)[[Ljavassist/bytecode/annotation/Annotation;
    .locals 0

    if-eqz p0, :cond_0

    .line 78
    check-cast p0, Ljavassist/bytecode/ParameterAnnotationsAttribute;

    invoke-virtual {p0}, Ljavassist/bytecode/ParameterAnnotationsAttribute;->getAnnotations()[[Ljavassist/bytecode/annotation/Annotation;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method static synthetic lambda$getParametersAnnotations$3([[Ljavassist/bytecode/annotation/Annotation;)Ljava/util/List;
    .locals 1

    if-eqz p0, :cond_0

    .line 79
    invoke-static {p0}, Ljava/util/stream/Stream;->of([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object p0

    sget-object v0, Lorg/reflections/util/-$$Lambda$JavassistHelper$nIg5txpoAb0FdIBtbyA3FtYQhVg;->INSTANCE:Lorg/reflections/util/-$$Lambda$JavassistHelper$nIg5txpoAb0FdIBtbyA3FtYQhVg;

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    goto :goto_0

    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public static synthetic lambda$nIg5txpoAb0FdIBtbyA3FtYQhVg([Ljavassist/bytecode/annotation/Annotation;)Ljava/util/List;
    .locals 0

    invoke-static {p0}, Lorg/reflections/util/JavassistHelper;->annotationNames([Ljavassist/bytecode/annotation/Annotation;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static methodName(Ljavassist/bytecode/ClassFile;Ljavassist/bytecode/MethodInfo;)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    .line 29
    invoke-virtual {p0}, Ljavassist/bytecode/ClassFile;->getName()Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x0

    aput-object p0, v0, v1

    invoke-virtual {p1}, Ljavassist/bytecode/MethodInfo;->getName()Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x1

    aput-object p0, v0, v1

    invoke-static {p1}, Lorg/reflections/util/JavassistHelper;->getParameters(Ljavassist/bytecode/MethodInfo;)Ljava/util/List;

    move-result-object p0

    const-string p1, ", "

    invoke-static {p1, p0}, L$r8$backportedMethods$utility$String$2$joinIterable;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x2

    aput-object p0, v0, p1

    const-string p0, "%s.%s(%s)"

    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
