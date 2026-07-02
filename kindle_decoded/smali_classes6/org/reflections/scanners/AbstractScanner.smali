.class Lorg/reflections/scanners/AbstractScanner;
.super Ljava/lang/Object;
.source "AbstractScanner.java"

# interfaces
.implements Lorg/reflections/scanners/Scanner;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field protected final scanner:Lorg/reflections/scanners/Scanner;


# direct methods
.method constructor <init>(Lorg/reflections/scanners/Scanner;)V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p1, p0, Lorg/reflections/scanners/AbstractScanner;->scanner:Lorg/reflections/scanners/Scanner;

    return-void
.end method


# virtual methods
.method public synthetic acceptsInput(Ljava/lang/String;)Z
    .locals 0

    invoke-static {p0, p1}, Lorg/reflections/scanners/Scanner$-CC;->$default$acceptsInput(Lorg/reflections/scanners/Scanner;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public synthetic entries(Ljava/util/Collection;Ljava/lang/String;)Ljava/util/List;
    .locals 0
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

    invoke-static {p0, p1, p2}, Lorg/reflections/scanners/Scanner$-CC;->$default$entries(Lorg/reflections/scanners/Scanner;Ljava/util/Collection;Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public synthetic entry(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map$Entry;
    .locals 0
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

    invoke-static {p0, p1, p2}, Lorg/reflections/scanners/Scanner$-CC;->$default$entry(Lorg/reflections/scanners/Scanner;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map$Entry;

    move-result-object p1

    return-object p1
.end method

.method public index()Ljava/lang/String;
    .locals 1

    .line 18
    iget-object v0, p0, Lorg/reflections/scanners/AbstractScanner;->scanner:Lorg/reflections/scanners/Scanner;

    invoke-interface {v0}, Lorg/reflections/scanners/Scanner;->index()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public scan(Ljavassist/bytecode/ClassFile;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavassist/bytecode/ClassFile;",
            ")",
            "Ljava/util/List<",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 23
    iget-object v0, p0, Lorg/reflections/scanners/AbstractScanner;->scanner:Lorg/reflections/scanners/Scanner;

    invoke-interface {v0, p1}, Lorg/reflections/scanners/Scanner;->scan(Ljavassist/bytecode/ClassFile;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public synthetic scan(Lorg/reflections/vfs/Vfs$File;)Ljava/util/List;
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

    invoke-static {p0, p1}, Lorg/reflections/scanners/Scanner$-CC;->$default$scan(Lorg/reflections/scanners/Scanner;Lorg/reflections/vfs/Vfs$File;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method
