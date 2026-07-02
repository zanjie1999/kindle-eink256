.class Lcom/amazon/kcp/cover/AbstractCoverCacheManager$1;
.super Ljava/lang/Object;
.source "AbstractCoverCacheManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/cover/AbstractCoverCacheManager;->updateCover(Lcom/amazon/kcp/cover/UpdatableCover;Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/cover/AbstractCoverCacheManager;

.field final synthetic val$cover:Lcom/amazon/kcp/cover/UpdatableCover;

.field final synthetic val$image:Landroid/graphics/drawable/Drawable;

.field final synthetic val$imagePath:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/cover/AbstractCoverCacheManager;Lcom/amazon/kcp/cover/UpdatableCover;Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V
    .locals 0

    .line 278
    iput-object p1, p0, Lcom/amazon/kcp/cover/AbstractCoverCacheManager$1;->this$0:Lcom/amazon/kcp/cover/AbstractCoverCacheManager;

    iput-object p2, p0, Lcom/amazon/kcp/cover/AbstractCoverCacheManager$1;->val$cover:Lcom/amazon/kcp/cover/UpdatableCover;

    iput-object p3, p0, Lcom/amazon/kcp/cover/AbstractCoverCacheManager$1;->val$image:Landroid/graphics/drawable/Drawable;

    iput-object p4, p0, Lcom/amazon/kcp/cover/AbstractCoverCacheManager$1;->val$imagePath:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 281
    iget-object v0, p0, Lcom/amazon/kcp/cover/AbstractCoverCacheManager$1;->this$0:Lcom/amazon/kcp/cover/AbstractCoverCacheManager;

    iget-object v1, p0, Lcom/amazon/kcp/cover/AbstractCoverCacheManager$1;->val$cover:Lcom/amazon/kcp/cover/UpdatableCover;

    iget-object v2, p0, Lcom/amazon/kcp/cover/AbstractCoverCacheManager$1;->val$image:Landroid/graphics/drawable/Drawable;

    iget-object v3, p0, Lcom/amazon/kcp/cover/AbstractCoverCacheManager$1;->val$imagePath:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lcom/amazon/kcp/cover/AbstractCoverCacheManager;->access$000(Lcom/amazon/kcp/cover/AbstractCoverCacheManager;Lcom/amazon/kcp/cover/UpdatableCover;Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V

    return-void
.end method
