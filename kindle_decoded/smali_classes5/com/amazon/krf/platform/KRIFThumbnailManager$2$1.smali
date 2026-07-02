.class Lcom/amazon/krf/platform/KRIFThumbnailManager$2$1;
.super Ljava/lang/Object;
.source "KRIFThumbnailManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/krf/platform/KRIFThumbnailManager$2;->onSectionUpdated(Lcom/amazon/krf/platform/PositionRange;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/amazon/krf/platform/KRIFThumbnailManager$2;


# direct methods
.method constructor <init>(Lcom/amazon/krf/platform/KRIFThumbnailManager$2;)V
    .locals 0

    .line 204
    iput-object p1, p0, Lcom/amazon/krf/platform/KRIFThumbnailManager$2$1;->this$1:Lcom/amazon/krf/platform/KRIFThumbnailManager$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 207
    iget-object v0, p0, Lcom/amazon/krf/platform/KRIFThumbnailManager$2$1;->this$1:Lcom/amazon/krf/platform/KRIFThumbnailManager$2;

    iget-object v0, v0, Lcom/amazon/krf/platform/KRIFThumbnailManager$2;->this$0:Lcom/amazon/krf/platform/KRIFThumbnailManager;

    invoke-static {v0}, Lcom/amazon/krf/platform/KRIFThumbnailManager;->access$200(Lcom/amazon/krf/platform/KRIFThumbnailManager;)V

    .line 208
    iget-object v0, p0, Lcom/amazon/krf/platform/KRIFThumbnailManager$2$1;->this$1:Lcom/amazon/krf/platform/KRIFThumbnailManager$2;

    iget-object v0, v0, Lcom/amazon/krf/platform/KRIFThumbnailManager$2;->this$0:Lcom/amazon/krf/platform/KRIFThumbnailManager;

    invoke-static {v0}, Lcom/amazon/krf/platform/KRIFThumbnailManager;->access$100(Lcom/amazon/krf/platform/KRIFThumbnailManager;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method
