.class Lcom/amazon/krf/platform/KRIFThumbnailManager$2$2;
.super Ljava/lang/Object;
.source "KRIFThumbnailManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/krf/platform/KRIFThumbnailManager$2;->onDocumentUpdated()V
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

    .line 222
    iput-object p1, p0, Lcom/amazon/krf/platform/KRIFThumbnailManager$2$2;->this$1:Lcom/amazon/krf/platform/KRIFThumbnailManager$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 229
    iget-object v0, p0, Lcom/amazon/krf/platform/KRIFThumbnailManager$2$2;->this$1:Lcom/amazon/krf/platform/KRIFThumbnailManager$2;

    iget-object v0, v0, Lcom/amazon/krf/platform/KRIFThumbnailManager$2;->this$0:Lcom/amazon/krf/platform/KRIFThumbnailManager;

    invoke-static {v0}, Lcom/amazon/krf/platform/KRIFThumbnailManager;->access$300(Lcom/amazon/krf/platform/KRIFThumbnailManager;)V

    return-void
.end method
