.class final Lcom/amazon/falkor/download/FalkorDownloadManager$initiateDownloadAsync$failedCallback$1$1;
.super Ljava/lang/Object;
.source "FalkorDownloadManager.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/falkor/download/FalkorDownloadManager$initiateDownloadAsync$failedCallback$1;->invoke(ILcom/amazon/kindle/krx/download/IKRXResponseHandler$DownloadStatus;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/falkor/download/FalkorDownloadManager$initiateDownloadAsync$failedCallback$1;


# direct methods
.method constructor <init>(Lcom/amazon/falkor/download/FalkorDownloadManager$initiateDownloadAsync$failedCallback$1;)V
    .locals 0

    iput-object p1, p0, Lcom/amazon/falkor/download/FalkorDownloadManager$initiateDownloadAsync$failedCallback$1$1;->this$0:Lcom/amazon/falkor/download/FalkorDownloadManager$initiateDownloadAsync$failedCallback$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 150
    iget-object v0, p0, Lcom/amazon/falkor/download/FalkorDownloadManager$initiateDownloadAsync$failedCallback$1$1;->this$0:Lcom/amazon/falkor/download/FalkorDownloadManager$initiateDownloadAsync$failedCallback$1;

    iget-object v1, v0, Lcom/amazon/falkor/download/FalkorDownloadManager$initiateDownloadAsync$failedCallback$1;->this$0:Lcom/amazon/falkor/download/FalkorDownloadManager;

    iget-object v0, v0, Lcom/amazon/falkor/download/FalkorDownloadManager$initiateDownloadAsync$failedCallback$1;->$book:Lcom/amazon/kindle/krx/content/IBook;

    invoke-virtual {v1, v0}, Lcom/amazon/falkor/download/FalkorDownloadManager;->onDownloadFailed(Lcom/amazon/kindle/krx/content/IBook;)V

    return-void
.end method
