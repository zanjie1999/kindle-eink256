.class public Lorg/reflections/scanners/SubTypesScanner;
.super Lorg/reflections/scanners/AbstractScanner;
.source "SubTypesScanner.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 17
    sget-object v0, Lorg/reflections/scanners/Scanners;->SubTypes:Lorg/reflections/scanners/Scanners;

    invoke-direct {p0, v0}, Lorg/reflections/scanners/AbstractScanner;-><init>(Lorg/reflections/scanners/Scanner;)V

    return-void
.end method


# virtual methods
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

    .line 28
    iget-object v0, p0, Lorg/reflections/scanners/AbstractScanner;->scanner:Lorg/reflections/scanners/Scanner;

    invoke-interface {v0, p1}, Lorg/reflections/scanners/Scanner;->scan(Ljavassist/bytecode/ClassFile;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method
