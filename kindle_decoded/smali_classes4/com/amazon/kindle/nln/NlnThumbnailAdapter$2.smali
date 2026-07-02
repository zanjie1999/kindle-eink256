.class Lcom/amazon/kindle/nln/NlnThumbnailAdapter$2;
.super Ljava/lang/Object;
.source "NlnThumbnailAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kindle/nln/NlnThumbnailAdapter;->enqueueFetchPagesTask(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kindle/nln/NlnThumbnailAdapter;


# direct methods
.method constructor <init>(Lcom/amazon/kindle/nln/NlnThumbnailAdapter;)V
    .locals 0

    .line 614
    iput-object p1, p0, Lcom/amazon/kindle/nln/NlnThumbnailAdapter$2;->this$0:Lcom/amazon/kindle/nln/NlnThumbnailAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 619
    iget-object v0, p0, Lcom/amazon/kindle/nln/NlnThumbnailAdapter$2;->this$0:Lcom/amazon/kindle/nln/NlnThumbnailAdapter;

    invoke-static {v0}, Lcom/amazon/kindle/nln/NlnThumbnailAdapter;->access$200(Lcom/amazon/kindle/nln/NlnThumbnailAdapter;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/amazon/kindle/nln/NlnThumbnailAdapter$2;->this$0:Lcom/amazon/kindle/nln/NlnThumbnailAdapter;

    invoke-static {v0}, Lcom/amazon/kindle/nln/NlnThumbnailAdapter;->access$300(Lcom/amazon/kindle/nln/NlnThumbnailAdapter;)Lcom/amazon/kindle/nln/IThumbnailManager;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amazon/kindle/nln/NlnThumbnailAdapter$2;->this$0:Lcom/amazon/kindle/nln/NlnThumbnailAdapter;

    invoke-static {v0}, Lcom/amazon/kindle/nln/NlnThumbnailAdapter;->access$300(Lcom/amazon/kindle/nln/NlnThumbnailAdapter;)Lcom/amazon/kindle/nln/IThumbnailManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/nln/IThumbnailManager;->isDisposed()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 624
    :cond_0
    iget-object v0, p0, Lcom/amazon/kindle/nln/NlnThumbnailAdapter$2;->this$0:Lcom/amazon/kindle/nln/NlnThumbnailAdapter;

    invoke-static {v0}, Lcom/amazon/kindle/nln/NlnThumbnailAdapter;->access$400(Lcom/amazon/kindle/nln/NlnThumbnailAdapter;)V

    return-void

    .line 620
    :cond_1
    :goto_0
    sget-object v0, Lcom/amazon/kindle/nln/NlnThumbnailAdapter;->TAG:Ljava/lang/String;

    return-void
.end method
