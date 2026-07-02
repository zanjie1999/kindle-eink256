.class final enum Lorg/reflections/scanners/Scanners$5;
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

    .line 91
    invoke-direct {p0, p1, p2, v0}, Lorg/reflections/scanners/Scanners;-><init>(Ljava/lang/String;ILorg/reflections/scanners/Scanners$1;)V

    return-void
.end method


# virtual methods
.method public synthetic lambda$scan$0$Scanners$5(Ljava/util/List;Ljavassist/bytecode/ClassFile;Ljavassist/bytecode/FieldInfo;)V
    .locals 1

    .line 95
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lorg/reflections/scanners/-$$Lambda$SoVpVklg8vIlnDhk-4XDDPi3vD4;

    invoke-direct {v0, p3}, Lorg/reflections/scanners/-$$Lambda$SoVpVklg8vIlnDhk-4XDDPi3vD4;-><init>(Ljavassist/bytecode/FieldInfo;)V

    invoke-static {v0}, Lorg/reflections/util/JavassistHelper;->getAnnotations(Ljava/util/function/Function;)Ljava/util/List;

    move-result-object v0

    invoke-static {p2, p3}, Lorg/reflections/util/JavassistHelper;->fieldName(Ljavassist/bytecode/ClassFile;Ljavassist/bytecode/FieldInfo;)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p0, v0, p2}, Lorg/reflections/scanners/Scanner;->entries(Ljava/util/Collection;Ljava/lang/String;)Ljava/util/List;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

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

    .line 94
    invoke-virtual {p1}, Ljavassist/bytecode/ClassFile;->getFields()Ljava/util/List;

    move-result-object v0

    new-instance v1, Lorg/reflections/scanners/-$$Lambda$Scanners$5$Nxu3UQCiLLK9sWmQRnrBvF40PfM;

    invoke-direct {v1, p0, p2, p1}, Lorg/reflections/scanners/-$$Lambda$Scanners$5$Nxu3UQCiLLK9sWmQRnrBvF40PfM;-><init>(Lorg/reflections/scanners/Scanners$5;Ljava/util/List;Ljavassist/bytecode/ClassFile;)V

    invoke-interface {v0, v1}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method
