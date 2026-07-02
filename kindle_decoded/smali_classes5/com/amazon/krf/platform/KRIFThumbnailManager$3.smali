.class Lcom/amazon/krf/platform/KRIFThumbnailManager$3;
.super Ljava/lang/Object;
.source "KRIFThumbnailManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/krf/platform/KRIFThumbnailManager;->initDebugIndexing()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/krf/platform/KRIFThumbnailManager;


# direct methods
.method constructor <init>(Lcom/amazon/krf/platform/KRIFThumbnailManager;)V
    .locals 0

    .line 1000
    iput-object p1, p0, Lcom/amazon/krf/platform/KRIFThumbnailManager$3;->this$0:Lcom/amazon/krf/platform/KRIFThumbnailManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1003
    iget-object v0, p0, Lcom/amazon/krf/platform/KRIFThumbnailManager$3;->this$0:Lcom/amazon/krf/platform/KRIFThumbnailManager;

    invoke-static {v0}, Lcom/amazon/krf/platform/KRIFThumbnailManager;->access$408(Lcom/amazon/krf/platform/KRIFThumbnailManager;)I

    .line 1004
    invoke-static {}, Lcom/amazon/krf/platform/KRIFThumbnailManager;->access$500()Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Indexing new chunk. "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/krf/platform/KRIFThumbnailManager$3;->this$0:Lcom/amazon/krf/platform/KRIFThumbnailManager;

    invoke-static {v1}, Lcom/amazon/krf/platform/KRIFThumbnailManager;->access$400(Lcom/amazon/krf/platform/KRIFThumbnailManager;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " chunks availible, at most "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/krf/platform/KRIFThumbnailManager$3;->this$0:Lcom/amazon/krf/platform/KRIFThumbnailManager;

    invoke-static {v1}, Lcom/amazon/krf/platform/KRIFThumbnailManager;->access$400(Lcom/amazon/krf/platform/KRIFThumbnailManager;)I

    move-result v1

    const/16 v2, 0xf

    mul-int/lit8 v1, v1, 0xf

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " pages availible."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1005
    iget-object v0, p0, Lcom/amazon/krf/platform/KRIFThumbnailManager$3;->this$0:Lcom/amazon/krf/platform/KRIFThumbnailManager;

    invoke-static {v0}, Lcom/amazon/krf/platform/KRIFThumbnailManager;->access$400(Lcom/amazon/krf/platform/KRIFThumbnailManager;)I

    move-result v0

    if-ge v0, v2, :cond_0

    .line 1006
    invoke-static {}, Lcom/amazon/krf/platform/KRIFThumbnailManager;->access$500()Ljava/lang/String;

    .line 1007
    iget-object v0, p0, Lcom/amazon/krf/platform/KRIFThumbnailManager$3;->this$0:Lcom/amazon/krf/platform/KRIFThumbnailManager;

    invoke-static {v0}, Lcom/amazon/krf/platform/KRIFThumbnailManager;->access$700(Lcom/amazon/krf/platform/KRIFThumbnailManager;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/krf/platform/KRIFThumbnailManager$3;->this$0:Lcom/amazon/krf/platform/KRIFThumbnailManager;

    invoke-static {v1}, Lcom/amazon/krf/platform/KRIFThumbnailManager;->access$600(Lcom/amazon/krf/platform/KRIFThumbnailManager;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method
