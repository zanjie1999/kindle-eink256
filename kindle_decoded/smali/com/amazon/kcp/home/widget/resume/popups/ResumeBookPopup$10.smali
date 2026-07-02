.class Lcom/amazon/kcp/home/widget/resume/popups/ResumeBookPopup$10;
.super Ljava/lang/Object;
.source "ResumeBookPopup.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/home/widget/resume/popups/ResumeBookPopup;->createPopUpItemIfDownloading()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/home/widget/resume/popups/ResumeBookPopup;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/home/widget/resume/popups/ResumeBookPopup;)V
    .locals 0

    .line 517
    iput-object p1, p0, Lcom/amazon/kcp/home/widget/resume/popups/ResumeBookPopup$10;->this$0:Lcom/amazon/kcp/home/widget/resume/popups/ResumeBookPopup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 520
    iget-object p1, p0, Lcom/amazon/kcp/home/widget/resume/popups/ResumeBookPopup$10;->this$0:Lcom/amazon/kcp/home/widget/resume/popups/ResumeBookPopup;

    invoke-static {p1}, Lcom/amazon/kcp/home/widget/resume/popups/ResumeBookPopup;->access$400(Lcom/amazon/kcp/home/widget/resume/popups/ResumeBookPopup;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Asin"

    const-string v2, "CancelDownloading"

    invoke-static {p1, v0, v1, v2}, Lcom/amazon/kcp/home/widget/resume/popups/ResumeBookPopup;->access$500(Lcom/amazon/kcp/home/widget/resume/popups/ResumeBookPopup;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 521
    invoke-static {}, Lcom/amazon/kcp/home/widget/resume/popups/ResumeBookPopup;->access$1100()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cancelling download for bookId "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/kcp/home/widget/resume/popups/ResumeBookPopup$10;->this$0:Lcom/amazon/kcp/home/widget/resume/popups/ResumeBookPopup;

    invoke-static {v1}, Lcom/amazon/kcp/home/widget/resume/popups/ResumeBookPopup;->access$900(Lcom/amazon/kcp/home/widget/resume/popups/ResumeBookPopup;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " for popup option cancel_download"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 522
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getDownloadService()Lcom/amazon/kindle/services/download/IDownloadService;

    move-result-object p1

    iget-object v0, p0, Lcom/amazon/kcp/home/widget/resume/popups/ResumeBookPopup$10;->this$0:Lcom/amazon/kcp/home/widget/resume/popups/ResumeBookPopup;

    invoke-static {v0}, Lcom/amazon/kcp/home/widget/resume/popups/ResumeBookPopup;->access$900(Lcom/amazon/kcp/home/widget/resume/popups/ResumeBookPopup;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {p1, v0, v1}, Lcom/amazon/kindle/services/download/IDownloadService;->cancel(Ljava/lang/String;Z)Z

    .line 523
    iget-object p1, p0, Lcom/amazon/kcp/home/widget/resume/popups/ResumeBookPopup$10;->this$0:Lcom/amazon/kcp/home/widget/resume/popups/ResumeBookPopup;

    invoke-virtual {p1}, Lcom/amazon/kcp/home/widget/resume/popups/ResumeBookPopup;->dismiss()V

    return-void
.end method
