.class public final synthetic Lorg/reflections/vfs/-$$Lambda$JarInputDir$y6-_4khIgk8qnEu57T9kn11WUAA;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Iterable;


# instance fields
.field private final synthetic f$0:Lorg/reflections/vfs/JarInputDir;


# direct methods
.method public synthetic constructor <init>(Lorg/reflections/vfs/JarInputDir;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/reflections/vfs/-$$Lambda$JarInputDir$y6-_4khIgk8qnEu57T9kn11WUAA;->f$0:Lorg/reflections/vfs/JarInputDir;

    return-void
.end method


# virtual methods
.method public final iterator()Ljava/util/Iterator;
    .locals 1

    iget-object v0, p0, Lorg/reflections/vfs/-$$Lambda$JarInputDir$y6-_4khIgk8qnEu57T9kn11WUAA;->f$0:Lorg/reflections/vfs/JarInputDir;

    invoke-virtual {v0}, Lorg/reflections/vfs/JarInputDir;->lambda$getFiles$0$JarInputDir()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method
