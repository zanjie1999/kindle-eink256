.class final enum Lorg/reflections/scanners/Scanners$1;
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

    .line 48
    invoke-direct {p0, p1, p2, v0}, Lorg/reflections/scanners/Scanners;-><init>(Ljava/lang/String;ILorg/reflections/scanners/Scanners$1;)V

    .line 50
    new-instance p1, Lorg/reflections/util/FilterBuilder;

    invoke-direct {p1}, Lorg/reflections/util/FilterBuilder;-><init>()V

    const-string p2, "java\\.lang\\.Object"

    invoke-virtual {p1, p2}, Lorg/reflections/util/FilterBuilder;->excludePattern(Ljava/lang/String;)Lorg/reflections/util/FilterBuilder;

    invoke-virtual {p0, p1}, Lorg/reflections/scanners/Scanners;->filterResultsBy(Ljava/util/function/Predicate;)Lorg/reflections/scanners/Scanners;

    return-void
.end method


# virtual methods
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

    .line 54
    invoke-virtual {p1}, Ljavassist/bytecode/ClassFile;->getSuperclass()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljavassist/bytecode/ClassFile;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0, v0, v1}, Lorg/reflections/scanners/Scanner;->entry(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map$Entry;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 55
    invoke-virtual {p1}, Ljavassist/bytecode/ClassFile;->getInterfaces()[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1}, Ljavassist/bytecode/ClassFile;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, v0, p1}, Lorg/reflections/scanners/Scanner;->entries(Ljava/util/Collection;Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p2, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method
