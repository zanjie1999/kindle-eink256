.class final enum Lorg/reflections/scanners/Scanners$2;
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

    .line 60
    invoke-direct {p0, p1, p2, v0}, Lorg/reflections/scanners/Scanners;-><init>(Ljava/lang/String;ILorg/reflections/scanners/Scanners$1;)V

    return-void
.end method


# virtual methods
.method public acceptResult(Ljava/lang/String;)Z
    .locals 1

    .line 63
    invoke-super {p0, p1}, Lorg/reflections/scanners/Scanners;->acceptResult(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-class v0, Ljava/lang/annotation/Inherited;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public scan(Ljavassist/bytecode/ClassFile;Ljava/util/List;)V
    .locals 1
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

    .line 68
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lorg/reflections/scanners/-$$Lambda$H9Qo1YdLvcpIkY2ZUpUjou4qB_s;

    invoke-direct {v0, p1}, Lorg/reflections/scanners/-$$Lambda$H9Qo1YdLvcpIkY2ZUpUjou4qB_s;-><init>(Ljavassist/bytecode/ClassFile;)V

    invoke-static {v0}, Lorg/reflections/util/JavassistHelper;->getAnnotations(Ljava/util/function/Function;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1}, Ljavassist/bytecode/ClassFile;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, v0, p1}, Lorg/reflections/scanners/Scanner;->entries(Ljava/util/Collection;Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p2, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method
