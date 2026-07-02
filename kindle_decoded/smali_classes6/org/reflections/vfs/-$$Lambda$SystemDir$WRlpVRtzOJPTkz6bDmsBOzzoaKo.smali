.class public final synthetic Lorg/reflections/vfs/-$$Lambda$SystemDir$WRlpVRtzOJPTkz6bDmsBOzzoaKo;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Iterable;


# instance fields
.field private final synthetic f$0:Lorg/reflections/vfs/SystemDir;


# direct methods
.method public synthetic constructor <init>(Lorg/reflections/vfs/SystemDir;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/reflections/vfs/-$$Lambda$SystemDir$WRlpVRtzOJPTkz6bDmsBOzzoaKo;->f$0:Lorg/reflections/vfs/SystemDir;

    return-void
.end method


# virtual methods
.method public final iterator()Ljava/util/Iterator;
    .locals 1

    iget-object v0, p0, Lorg/reflections/vfs/-$$Lambda$SystemDir$WRlpVRtzOJPTkz6bDmsBOzzoaKo;->f$0:Lorg/reflections/vfs/SystemDir;

    invoke-virtual {v0}, Lorg/reflections/vfs/SystemDir;->lambda$getFiles$2$SystemDir()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method
