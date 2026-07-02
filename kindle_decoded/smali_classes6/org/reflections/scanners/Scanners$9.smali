.class final enum Lorg/reflections/scanners/Scanners$9;
.super Lorg/reflections/scanners/Scanners;
.source "Scanners.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/reflections/scanners/Scanners;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4008
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 1

    const/4 v0, 0x0

    .line 149
    invoke-direct {p0, p1, p2, v0}, Lorg/reflections/scanners/Scanners;-><init>(Ljava/lang/String;ILorg/reflections/scanners/Scanners$1;)V

    return-void
.end method


# virtual methods
.method public synthetic lambda$scan$0$Scanners$9(Ljava/util/List;Ljavassist/bytecode/ClassFile;Ljavassist/bytecode/MethodInfo;)V
    .locals 1

    .line 153
    invoke-static {p3}, Lorg/reflections/util/JavassistHelper;->getParameters(Ljavassist/bytecode/MethodInfo;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, p3}, Lorg/reflections/util/JavassistHelper;->methodName(Ljavassist/bytecode/ClassFile;Ljavassist/bytecode/MethodInfo;)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p0, v0, p2}, Lorg/reflections/scanners/Scanner;->entry(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map$Entry;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public scan(Ljavassist/bytecode/ClassFile;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavassist/bytecode/ClassFile;",
            "Ljava/util/List<",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .line 152
    invoke-static {p1}, Lorg/reflections/util/JavassistHelper;->getMethods(Ljavassist/bytecode/ClassFile;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lorg/reflections/scanners/-$$Lambda$Scanners$9$fTva-QtmRGjqW5M7ay-37MkBhMw;

    invoke-direct {v1, p0, p2, p1}, Lorg/reflections/scanners/-$$Lambda$Scanners$9$fTva-QtmRGjqW5M7ay-37MkBhMw;-><init>(Lorg/reflections/scanners/Scanners$9;Ljava/util/List;Ljavassist/bytecode/ClassFile;)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public varargs with([Ljava/lang/reflect/AnnotatedElement;)Lorg/reflections/util/QueryFunction;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/reflect/AnnotatedElement;",
            ")",
            "Lorg/reflections/util/QueryFunction<",
            "Lorg/reflections/Store;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 158
    invoke-interface {p0, p1}, Lorg/reflections/util/NameHelper;->toNames([Ljava/lang/reflect/AnnotatedElement;)Ljava/util/Collection;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/reflections/util/QueryFunction$-CC;->single(Ljava/lang/Object;)Lorg/reflections/util/QueryFunction;

    move-result-object p1

    new-instance v0, Lorg/reflections/scanners/-$$Lambda$BGZqkaEyC0E084zUx10TI5rOQOM;

    invoke-direct {v0, p0}, Lorg/reflections/scanners/-$$Lambda$BGZqkaEyC0E084zUx10TI5rOQOM;-><init>(Lorg/reflections/scanners/Scanners$9;)V

    invoke-interface {p1, v0}, Lorg/reflections/util/QueryFunction;->getAll(Ljava/util/function/Function;)Lorg/reflections/util/QueryFunction;

    move-result-object p1

    return-object p1
.end method
