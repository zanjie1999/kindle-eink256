.class Lcom/amazon/kcp/home/widget/resume/popups/ResumeBookPopup$3;
.super Ljava/lang/Object;
.source "ResumeBookPopup.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/home/widget/resume/popups/ResumeBookPopup;->addDiscoverableActions()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/home/widget/resume/popups/ResumeBookPopup;

.field final synthetic val$action:Lcom/amazon/kindle/krx/library/LibraryBookAction;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/home/widget/resume/popups/ResumeBookPopup;Lcom/amazon/kindle/krx/library/LibraryBookAction;)V
    .locals 0

    .line 278
    iput-object p1, p0, Lcom/amazon/kcp/home/widget/resume/popups/ResumeBookPopup$3;->this$0:Lcom/amazon/kcp/home/widget/resume/popups/ResumeBookPopup;

    iput-object p2, p0, Lcom/amazon/kcp/home/widget/resume/popups/ResumeBookPopup$3;->val$action:Lcom/amazon/kindle/krx/library/LibraryBookAction;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 281
    iget-object p1, p0, Lcom/amazon/kcp/home/widget/resume/popups/ResumeBookPopup$3;->val$action:Lcom/amazon/kindle/krx/library/LibraryBookAction;

    invoke-interface {p1}, Lcom/amazon/kindle/krx/action/Action;->execute()V

    .line 282
    iget-object p1, p0, Lcom/amazon/kcp/home/widget/resume/popups/ResumeBookPopup$3;->this$0:Lcom/amazon/kcp/home/widget/resume/popups/ResumeBookPopup;

    iget-object v0, p0, Lcom/amazon/kcp/home/widget/resume/popups/ResumeBookPopup$3;->val$action:Lcom/amazon/kindle/krx/library/LibraryBookAction;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/action/Action;->getMetricsTag()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/amazon/kcp/home/widget/resume/popups/ResumeBookPopup;->access$600(Lcom/amazon/kcp/home/widget/resume/popups/ResumeBookPopup;Ljava/lang/String;)V

    .line 283
    iget-object p1, p0, Lcom/amazon/kcp/home/widget/resume/popups/ResumeBookPopup$3;->this$0:Lcom/amazon/kcp/home/widget/resume/popups/ResumeBookPopup;

    invoke-static {p1}, Lcom/amazon/kcp/home/widget/resume/popups/ResumeBookPopup;->access$700(Lcom/amazon/kcp/home/widget/resume/popups/ResumeBookPopup;)Lcom/amazon/kcp/library/ContentInteractionHandler;

    move-result-object p1

    iget-object v0, p0, Lcom/amazon/kcp/home/widget/resume/popups/ResumeBookPopup$3;->val$action:Lcom/amazon/kindle/krx/library/LibraryBookAction;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/action/Action;->getMetricsTag()Ljava/lang/String;

    move-result-object v0

    const-string v1, "HomeResumePopup"

    invoke-virtual {p1, v1, v0}, Lcom/amazon/kcp/library/ContentInteractionHandler;->reportMetric(Ljava/lang/String;Ljava/lang/String;)V

    .line 284
    iget-object p1, p0, Lcom/amazon/kcp/home/widget/resume/popups/ResumeBookPopup$3;->this$0:Lcom/amazon/kcp/home/widget/resume/popups/ResumeBookPopup;

    invoke-virtual {p1}, Lcom/amazon/kcp/home/widget/resume/popups/ResumeBookPopup;->dismiss()V

    return-void
.end method
