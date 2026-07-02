.class public final synthetic Lorg/reflections/scanners/-$$Lambda$Scanners$5$Nxu3UQCiLLK9sWmQRnrBvF40PfM;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field private final synthetic f$0:Lorg/reflections/scanners/Scanners$5;

.field private final synthetic f$1:Ljava/util/List;

.field private final synthetic f$2:Ljavassist/bytecode/ClassFile;


# direct methods
.method public synthetic constructor <init>(Lorg/reflections/scanners/Scanners$5;Ljava/util/List;Ljavassist/bytecode/ClassFile;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/reflections/scanners/-$$Lambda$Scanners$5$Nxu3UQCiLLK9sWmQRnrBvF40PfM;->f$0:Lorg/reflections/scanners/Scanners$5;

    iput-object p2, p0, Lorg/reflections/scanners/-$$Lambda$Scanners$5$Nxu3UQCiLLK9sWmQRnrBvF40PfM;->f$1:Ljava/util/List;

    iput-object p3, p0, Lorg/reflections/scanners/-$$Lambda$Scanners$5$Nxu3UQCiLLK9sWmQRnrBvF40PfM;->f$2:Ljavassist/bytecode/ClassFile;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Lorg/reflections/scanners/-$$Lambda$Scanners$5$Nxu3UQCiLLK9sWmQRnrBvF40PfM;->f$0:Lorg/reflections/scanners/Scanners$5;

    iget-object v1, p0, Lorg/reflections/scanners/-$$Lambda$Scanners$5$Nxu3UQCiLLK9sWmQRnrBvF40PfM;->f$1:Ljava/util/List;

    iget-object v2, p0, Lorg/reflections/scanners/-$$Lambda$Scanners$5$Nxu3UQCiLLK9sWmQRnrBvF40PfM;->f$2:Ljavassist/bytecode/ClassFile;

    check-cast p1, Ljavassist/bytecode/FieldInfo;

    invoke-virtual {v0, v1, v2, p1}, Lorg/reflections/scanners/Scanners$5;->lambda$scan$0$Scanners$5(Ljava/util/List;Ljavassist/bytecode/ClassFile;Ljavassist/bytecode/FieldInfo;)V

    return-void
.end method
