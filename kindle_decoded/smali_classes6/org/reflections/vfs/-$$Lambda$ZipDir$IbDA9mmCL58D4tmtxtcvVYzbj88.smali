.class public final synthetic Lorg/reflections/vfs/-$$Lambda$ZipDir$IbDA9mmCL58D4tmtxtcvVYzbj88;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field private final synthetic f$0:Lorg/reflections/vfs/ZipDir;


# direct methods
.method public synthetic constructor <init>(Lorg/reflections/vfs/ZipDir;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/reflections/vfs/-$$Lambda$ZipDir$IbDA9mmCL58D4tmtxtcvVYzbj88;->f$0:Lorg/reflections/vfs/ZipDir;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lorg/reflections/vfs/-$$Lambda$ZipDir$IbDA9mmCL58D4tmtxtcvVYzbj88;->f$0:Lorg/reflections/vfs/ZipDir;

    check-cast p1, Ljava/util/zip/ZipEntry;

    invoke-virtual {v0, p1}, Lorg/reflections/vfs/ZipDir;->lambda$null$1$ZipDir(Ljava/util/zip/ZipEntry;)Lorg/reflections/vfs/Vfs$File;

    move-result-object p1

    return-object p1
.end method
