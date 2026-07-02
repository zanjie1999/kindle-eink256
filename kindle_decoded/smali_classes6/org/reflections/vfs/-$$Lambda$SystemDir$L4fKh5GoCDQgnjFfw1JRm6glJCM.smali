.class public final synthetic Lorg/reflections/vfs/-$$Lambda$SystemDir$L4fKh5GoCDQgnjFfw1JRm6glJCM;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field private final synthetic f$0:Lorg/reflections/vfs/SystemDir;


# direct methods
.method public synthetic constructor <init>(Lorg/reflections/vfs/SystemDir;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/reflections/vfs/-$$Lambda$SystemDir$L4fKh5GoCDQgnjFfw1JRm6glJCM;->f$0:Lorg/reflections/vfs/SystemDir;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lorg/reflections/vfs/-$$Lambda$SystemDir$L4fKh5GoCDQgnjFfw1JRm6glJCM;->f$0:Lorg/reflections/vfs/SystemDir;

    check-cast p1, Ljava/nio/file/Path;

    invoke-virtual {v0, p1}, Lorg/reflections/vfs/SystemDir;->lambda$null$1$SystemDir(Ljava/nio/file/Path;)Lorg/reflections/vfs/Vfs$File;

    move-result-object p1

    return-object p1
.end method
