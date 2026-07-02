.class public final synthetic Lorg/reflections/scanners/Scanner$-CC;
.super Ljava/lang/Object;
.source "Scanner.java"


# direct methods
.method public static $default$acceptsInput(Lorg/reflections/scanners/Scanner;Ljava/lang/String;)Z
    .locals 1
    .param p0, "_this"    # Lorg/reflections/scanners/Scanner;

    const-string v0, ".class"

    .line 36
    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public static $default$entries(Lorg/reflections/scanners/Scanner;Ljava/util/Collection;Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .param p0, "_this"    # Lorg/reflections/scanners/Scanner;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 44
    invoke-interface {p1}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v0, Lorg/reflections/scanners/-$$Lambda$Scanner$bRlzEy6W_GDuyEOef-QSp2qpK7s;

    invoke-direct {v0, p0, p2}, Lorg/reflections/scanners/-$$Lambda$Scanner$bRlzEy6W_GDuyEOef-QSp2qpK7s;-><init>(Lorg/reflections/scanners/Scanner;Ljava/lang/String;)V

    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p1

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    return-object p1
.end method

.method public static $default$entry(Lorg/reflections/scanners/Scanner;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map$Entry;
    .locals 1
    .param p0, "_this"    # Lorg/reflections/scanners/Scanner;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 40
    new-instance v0, Ljava/util/AbstractMap$SimpleEntry;

    invoke-direct {v0, p1, p2}, Ljava/util/AbstractMap$SimpleEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static $default$scan(Lorg/reflections/scanners/Scanner;Lorg/reflections/vfs/Vfs$File;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/reflections/vfs/Vfs$File;",
            ")",
            "Ljava/util/List<",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method

.method public static synthetic lambda$entries$0(Lorg/reflections/scanners/Scanner;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map$Entry;
    .locals 0
    .param p0, "_this"    # Lorg/reflections/scanners/Scanner;

    .line 44
    invoke-interface {p0, p2, p1}, Lorg/reflections/scanners/Scanner;->entry(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map$Entry;

    move-result-object p1

    return-object p1
.end method
