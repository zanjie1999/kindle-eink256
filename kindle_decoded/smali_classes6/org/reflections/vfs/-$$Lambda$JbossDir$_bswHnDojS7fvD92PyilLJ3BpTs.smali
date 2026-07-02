.class public final synthetic Lorg/reflections/vfs/-$$Lambda$JbossDir$_bswHnDojS7fvD92PyilLJ3BpTs;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Iterable;


# instance fields
.field private final synthetic f$0:Lorg/reflections/vfs/JbossDir;


# direct methods
.method public synthetic constructor <init>(Lorg/reflections/vfs/JbossDir;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/reflections/vfs/-$$Lambda$JbossDir$_bswHnDojS7fvD92PyilLJ3BpTs;->f$0:Lorg/reflections/vfs/JbossDir;

    return-void
.end method


# virtual methods
.method public final iterator()Ljava/util/Iterator;
    .locals 1

    iget-object v0, p0, Lorg/reflections/vfs/-$$Lambda$JbossDir$_bswHnDojS7fvD92PyilLJ3BpTs;->f$0:Lorg/reflections/vfs/JbossDir;

    invoke-virtual {v0}, Lorg/reflections/vfs/JbossDir;->lambda$getFiles$0$JbossDir()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method
