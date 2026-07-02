.class public final synthetic Lorg/reflections/scanners/-$$Lambda$Scanners$4$3vtdeZXXUQ5wcLjC1_FBQeKqxmg;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field private final synthetic f$0:Lorg/reflections/scanners/Scanners$4;

.field private final synthetic f$1:Ljava/util/List;

.field private final synthetic f$2:Ljavassist/bytecode/ClassFile;


# direct methods
.method public synthetic constructor <init>(Lorg/reflections/scanners/Scanners$4;Ljava/util/List;Ljavassist/bytecode/ClassFile;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/reflections/scanners/-$$Lambda$Scanners$4$3vtdeZXXUQ5wcLjC1_FBQeKqxmg;->f$0:Lorg/reflections/scanners/Scanners$4;

    iput-object p2, p0, Lorg/reflections/scanners/-$$Lambda$Scanners$4$3vtdeZXXUQ5wcLjC1_FBQeKqxmg;->f$1:Ljava/util/List;

    iput-object p3, p0, Lorg/reflections/scanners/-$$Lambda$Scanners$4$3vtdeZXXUQ5wcLjC1_FBQeKqxmg;->f$2:Ljavassist/bytecode/ClassFile;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Lorg/reflections/scanners/-$$Lambda$Scanners$4$3vtdeZXXUQ5wcLjC1_FBQeKqxmg;->f$0:Lorg/reflections/scanners/Scanners$4;

    iget-object v1, p0, Lorg/reflections/scanners/-$$Lambda$Scanners$4$3vtdeZXXUQ5wcLjC1_FBQeKqxmg;->f$1:Ljava/util/List;

    iget-object v2, p0, Lorg/reflections/scanners/-$$Lambda$Scanners$4$3vtdeZXXUQ5wcLjC1_FBQeKqxmg;->f$2:Ljavassist/bytecode/ClassFile;

    check-cast p1, Ljavassist/bytecode/MethodInfo;

    invoke-virtual {v0, v1, v2, p1}, Lorg/reflections/scanners/Scanners$4;->lambda$scan$0$Scanners$4(Ljava/util/List;Ljavassist/bytecode/ClassFile;Ljavassist/bytecode/MethodInfo;)V

    return-void
.end method
