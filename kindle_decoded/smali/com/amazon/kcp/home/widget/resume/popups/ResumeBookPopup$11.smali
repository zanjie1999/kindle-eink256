.class Lcom/amazon/kcp/home/widget/resume/popups/ResumeBookPopup$11;
.super Ljava/lang/Object;
.source "ResumeBookPopup.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/home/widget/resume/popups/ResumeBookPopup;->createPopUpItemForAIBook()V
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

    .line 530
    iput-object p1, p0, Lcom/amazon/kcp/home/widget/resume/popups/ResumeBookPopup$11;->this$0:Lcom/amazon/kcp/home/widget/resume/popups/ResumeBookPopup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 533
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object p1

    const-string v0, "BookDownload"

    const-string v1, "HomeResumePopup"

    invoke-virtual {p1, v1, v0}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;)V

    .line 534
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getLibraryController()Lcom/amazon/kcp/library/ILibraryController;

    move-result-object p1

    iget-object v2, p0, Lcom/amazon/kcp/home/widget/resume/popups/ResumeBookPopup$11;->this$0:Lcom/amazon/kcp/home/widget/resume/popups/ResumeBookPopup;

    invoke-static {v2}, Lcom/amazon/kcp/home/widget/resume/popups/ResumeBookPopup;->access$900(Lcom/amazon/kcp/home/widget/resume/popups/ResumeBookPopup;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/amazon/kcp/home/widget/resume/popups/ResumeBookPopup$11;->this$0:Lcom/amazon/kcp/home/widget/resume/popups/ResumeBookPopup;

    invoke-static {v3}, Lcom/amazon/kcp/home/widget/resume/popups/ResumeBookPopup;->access$1000(Lcom/amazon/kcp/home/widget/resume/popups/ResumeBookPopup;)Lcom/amazon/kindle/krx/download/KRXDownloadTriggerSource;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Lcom/amazon/kcp/library/ILibraryController;->downloadBook(Ljava/lang/String;Lcom/amazon/kindle/krx/download/KRXDownloadTriggerSource;)Z

    .line 535
    iget-object p1, p0, Lcom/amazon/kcp/home/widget/resume/popups/ResumeBookPopup$11;->this$0:Lcom/amazon/kcp/home/widget/resume/popups/ResumeBookPopup;

    invoke-static {p1}, Lcom/amazon/kcp/home/widget/resume/popups/ResumeBookPopup;->access$700(Lcom/amazon/kcp/home/widget/resume/popups/ResumeBookPopup;)Lcom/amazon/kcp/library/ContentInteractionHandler;

    move-result-object p1

    invoke-virtual {p1, v1, v0}, Lcom/amazon/kcp/library/ContentInteractionHandler;->reportMetric(Ljava/lang/String;Ljava/lang/String;)V

    .line 537
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 538
    iget-object v0, p0, Lcom/amazon/kcp/home/widget/resume/popups/ResumeBookPopup$11;->this$0:Lcom/amazon/kcp/home/widget/resume/popups/ResumeBookPopup;

    invoke-static {v0}, Lcom/amazon/kcp/home/widget/resume/popups/ResumeBookPopup;->access$400(Lcom/amazon/kcp/home/widget/resume/popups/ResumeBookPopup;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "Asin"

    invoke-interface {p1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 539
    iget-object v0, p0, Lcom/amazon/kcp/home/widget/resume/popups/ResumeBookPopup$11;->this$0:Lcom/amazon/kcp/home/widget/resume/popups/ResumeBookPopup;

    invoke-static {v0}, Lcom/amazon/kcp/home/widget/resume/popups/ResumeBookPopup;->access$700(Lcom/amazon/kcp/home/widget/resume/popups/ResumeBookPopup;)Lcom/amazon/kcp/library/ContentInteractionHandler;

    move-result-object v0

    iget-object v2, p0, Lcom/amazon/kcp/home/widget/resume/popups/ResumeBookPopup$11;->this$0:Lcom/amazon/kcp/home/widget/resume/popups/ResumeBookPopup;

    invoke-static {v2}, Lcom/amazon/kcp/home/widget/resume/popups/ResumeBookPopup;->access$000(Lcom/amazon/kcp/home/widget/resume/popups/ResumeBookPopup;)Lcom/amazon/kcp/library/ILibraryDisplayItem;

    move-result-object v2

    const-string v3, "DownloadFromResumePopup"

    invoke-virtual {v0, v2, v1, v3, p1}, Lcom/amazon/kcp/library/ContentInteractionHandler;->reportBookDownloadMetrics(Lcom/amazon/kcp/library/ILibraryDisplayItem;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 540
    iget-object p1, p0, Lcom/amazon/kcp/home/widget/resume/popups/ResumeBookPopup$11;->this$0:Lcom/amazon/kcp/home/widget/resume/popups/ResumeBookPopup;

    const-string v0, "Download"

    invoke-static {p1, v0}, Lcom/amazon/kcp/home/widget/resume/popups/ResumeBookPopup;->access$600(Lcom/amazon/kcp/home/widget/resume/popups/ResumeBookPopup;Ljava/lang/String;)V

    .line 541
    iget-object p1, p0, Lcom/amazon/kcp/home/widget/resume/popups/ResumeBookPopup$11;->this$0:Lcom/amazon/kcp/home/widget/resume/popups/ResumeBookPopup;

    invoke-virtual {p1}, Lcom/amazon/kcp/home/widget/resume/popups/ResumeBookPopup;->dismiss()V

    return-void
.end method
