.class Lcom/amazon/kcp/home/widget/resume/popups/ResumeBookPopup$8;
.super Ljava/lang/Object;
.source "ResumeBookPopup.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/home/widget/resume/popups/ResumeBookPopup;->createPopUpItemIfDownloadError()V
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

    .line 493
    iput-object p1, p0, Lcom/amazon/kcp/home/widget/resume/popups/ResumeBookPopup$8;->this$0:Lcom/amazon/kcp/home/widget/resume/popups/ResumeBookPopup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 496
    iget-object p1, p0, Lcom/amazon/kcp/home/widget/resume/popups/ResumeBookPopup$8;->this$0:Lcom/amazon/kcp/home/widget/resume/popups/ResumeBookPopup;

    invoke-static {p1}, Lcom/amazon/kcp/home/widget/resume/popups/ResumeBookPopup;->access$400(Lcom/amazon/kcp/home/widget/resume/popups/ResumeBookPopup;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Asin"

    const-string v2, "ResumeDownload"

    invoke-static {p1, v0, v1, v2}, Lcom/amazon/kcp/home/widget/resume/popups/ResumeBookPopup;->access$500(Lcom/amazon/kcp/home/widget/resume/popups/ResumeBookPopup;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 497
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getLibraryController()Lcom/amazon/kcp/library/ILibraryController;

    move-result-object p1

    iget-object v0, p0, Lcom/amazon/kcp/home/widget/resume/popups/ResumeBookPopup$8;->this$0:Lcom/amazon/kcp/home/widget/resume/popups/ResumeBookPopup;

    invoke-static {v0}, Lcom/amazon/kcp/home/widget/resume/popups/ResumeBookPopup;->access$900(Lcom/amazon/kcp/home/widget/resume/popups/ResumeBookPopup;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kcp/home/widget/resume/popups/ResumeBookPopup$8;->this$0:Lcom/amazon/kcp/home/widget/resume/popups/ResumeBookPopup;

    invoke-static {v1}, Lcom/amazon/kcp/home/widget/resume/popups/ResumeBookPopup;->access$1000(Lcom/amazon/kcp/home/widget/resume/popups/ResumeBookPopup;)Lcom/amazon/kindle/krx/download/KRXDownloadTriggerSource;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lcom/amazon/kcp/library/ILibraryController;->downloadBook(Ljava/lang/String;Lcom/amazon/kindle/krx/download/KRXDownloadTriggerSource;)Z

    .line 498
    iget-object p1, p0, Lcom/amazon/kcp/home/widget/resume/popups/ResumeBookPopup$8;->this$0:Lcom/amazon/kcp/home/widget/resume/popups/ResumeBookPopup;

    invoke-virtual {p1}, Lcom/amazon/kcp/home/widget/resume/popups/ResumeBookPopup;->dismiss()V

    return-void
.end method
