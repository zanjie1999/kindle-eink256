.class final Lcom/amazon/kcp/home/util/HomeCoverUrlDownloadManager$updateCover$r$1;
.super Ljava/lang/Object;
.source "CoverUrlDownloadManager.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/home/util/HomeCoverUrlDownloadManager;->updateCover(Lcom/amazon/kcp/cover/UpdatableCover;Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $coverDrawable:Landroid/graphics/drawable/Drawable;

.field final synthetic $coverPath:Ljava/lang/String;

.field final synthetic $updatableCover:Lcom/amazon/kcp/cover/UpdatableCover;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/cover/UpdatableCover;Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/amazon/kcp/home/util/HomeCoverUrlDownloadManager$updateCover$r$1;->$updatableCover:Lcom/amazon/kcp/cover/UpdatableCover;

    iput-object p2, p0, Lcom/amazon/kcp/home/util/HomeCoverUrlDownloadManager$updateCover$r$1;->$coverDrawable:Landroid/graphics/drawable/Drawable;

    iput-object p3, p0, Lcom/amazon/kcp/home/util/HomeCoverUrlDownloadManager$updateCover$r$1;->$coverPath:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 54
    iget-object v0, p0, Lcom/amazon/kcp/home/util/HomeCoverUrlDownloadManager$updateCover$r$1;->$updatableCover:Lcom/amazon/kcp/cover/UpdatableCover;

    iget-object v1, p0, Lcom/amazon/kcp/home/util/HomeCoverUrlDownloadManager$updateCover$r$1;->$coverDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v2, p0, Lcom/amazon/kcp/home/util/HomeCoverUrlDownloadManager$updateCover$r$1;->$coverPath:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/amazon/kcp/cover/UpdatableCover;->finalizeCover(Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V

    return-void
.end method
