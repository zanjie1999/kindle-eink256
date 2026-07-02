.class public final synthetic Lorg/reflections/vfs/-$$Lambda$ZipDir$HTMcnFznklwYH3NeRRYavM6RwRg;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Iterable;


# instance fields
.field private final synthetic f$0:Lorg/reflections/vfs/ZipDir;


# direct methods
.method public synthetic constructor <init>(Lorg/reflections/vfs/ZipDir;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/reflections/vfs/-$$Lambda$ZipDir$HTMcnFznklwYH3NeRRYavM6RwRg;->f$0:Lorg/reflections/vfs/ZipDir;

    return-void
.end method


# virtual methods
.method public final iterator()Ljava/util/Iterator;
    .locals 1

    iget-object v0, p0, Lorg/reflections/vfs/-$$Lambda$ZipDir$HTMcnFznklwYH3NeRRYavM6RwRg;->f$0:Lorg/reflections/vfs/ZipDir;

    invoke-virtual {v0}, Lorg/reflections/vfs/ZipDir;->lambda$getFiles$2$ZipDir()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method
