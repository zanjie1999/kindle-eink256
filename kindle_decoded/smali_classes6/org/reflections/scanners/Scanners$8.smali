.class final enum Lorg/reflections/scanners/Scanners$8;
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

    .line 137
    invoke-direct {p0, p1, p2, v0}, Lorg/reflections/scanners/Scanners;-><init>(Ljava/lang/String;ILorg/reflections/scanners/Scanners$1;)V

    return-void
.end method


# virtual methods
.method public synthetic lambda$null$0$Scanners$8(Ljava/util/List;Ljava/lang/String;Ljava/util/List;)V
    .locals 0

    .line 143
    invoke-interface {p0, p3, p2}, Lorg/reflections/scanners/Scanner;->entries(Ljava/util/Collection;Ljava/lang/String;)Ljava/util/List;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public synthetic lambda$scan$1$Scanners$8(Ljavassist/bytecode/ClassFile;Ljava/util/List;Ljavassist/bytecode/MethodInfo;)V
    .locals 1

    .line 141
    invoke-static {p1, p3}, Lorg/reflections/util/JavassistHelper;->methodName(Ljavassist/bytecode/ClassFile;Ljavassist/bytecode/MethodInfo;)Ljava/lang/String;

    move-result-object p1

    .line 142
    invoke-static {p3}, Lorg/reflections/util/JavassistHelper;->getParameters(Ljavassist/bytecode/MethodInfo;)Ljava/util/List;

    move-result-object v0

    invoke-interface {p0, v0, p1}, Lorg/reflections/scanners/Scanner;->entries(Ljava/util/Collection;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 143
    invoke-static {p3}, Lorg/reflections/util/JavassistHelper;->getParametersAnnotations(Ljavassist/bytecode/MethodInfo;)Ljava/util/List;

    move-result-object p3

    new-instance v0, Lorg/reflections/scanners/-$$Lambda$Scanners$8$RiFDTBiWc_fZAUhSTjpICkFOl0U;

    invoke-direct {v0, p0, p2, p1}, Lorg/reflections/scanners/-$$Lambda$Scanners$8$RiFDTBiWc_fZAUhSTjpICkFOl0U;-><init>(Lorg/reflections/scanners/Scanners$8;Ljava/util/List;Ljava/lang/String;)V

    invoke-interface {p3, v0}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

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

    .line 140
    invoke-static {p1}, Lorg/reflections/util/JavassistHelper;->getConstructors(Ljavassist/bytecode/ClassFile;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lorg/reflections/scanners/-$$Lambda$Scanners$8$alNwWkWbcG5FEaY9YQoW0ZEkxTk;

    invoke-direct {v1, p0, p1, p2}, Lorg/reflections/scanners/-$$Lambda$Scanners$8$alNwWkWbcG5FEaY9YQoW0ZEkxTk;-><init>(Lorg/reflections/scanners/Scanners$8;Ljavassist/bytecode/ClassFile;Ljava/util/List;)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method
