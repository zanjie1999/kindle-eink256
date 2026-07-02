.class public final synthetic Lorg/reflections/scanners/-$$Lambda$Scanners$7$lCQEySOdCWBTfTwxHFEH3e0PNrA;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field private final synthetic f$0:Lorg/reflections/scanners/Scanners$7;

.field private final synthetic f$1:Ljavassist/bytecode/ClassFile;

.field private final synthetic f$2:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Lorg/reflections/scanners/Scanners$7;Ljavassist/bytecode/ClassFile;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/reflections/scanners/-$$Lambda$Scanners$7$lCQEySOdCWBTfTwxHFEH3e0PNrA;->f$0:Lorg/reflections/scanners/Scanners$7;

    iput-object p2, p0, Lorg/reflections/scanners/-$$Lambda$Scanners$7$lCQEySOdCWBTfTwxHFEH3e0PNrA;->f$1:Ljavassist/bytecode/ClassFile;

    iput-object p3, p0, Lorg/reflections/scanners/-$$Lambda$Scanners$7$lCQEySOdCWBTfTwxHFEH3e0PNrA;->f$2:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Lorg/reflections/scanners/-$$Lambda$Scanners$7$lCQEySOdCWBTfTwxHFEH3e0PNrA;->f$0:Lorg/reflections/scanners/Scanners$7;

    iget-object v1, p0, Lorg/reflections/scanners/-$$Lambda$Scanners$7$lCQEySOdCWBTfTwxHFEH3e0PNrA;->f$1:Ljavassist/bytecode/ClassFile;

    iget-object v2, p0, Lorg/reflections/scanners/-$$Lambda$Scanners$7$lCQEySOdCWBTfTwxHFEH3e0PNrA;->f$2:Ljava/util/List;

    check-cast p1, Ljavassist/bytecode/MethodInfo;

    invoke-virtual {v0, v1, v2, p1}, Lorg/reflections/scanners/Scanners$7;->lambda$scan$1$Scanners$7(Ljavassist/bytecode/ClassFile;Ljava/util/List;Ljavassist/bytecode/MethodInfo;)V

    return-void
.end method
