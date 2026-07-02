.class Lcom/amazon/kcp/home/widget/resume/popups/ResumeBookPopup$12;
.super Ljava/lang/Object;
.source "ResumeBookPopup.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/home/widget/resume/popups/ResumeBookPopup;->createDeletePopupItemIfNeeded()V
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

    .line 553
    iput-object p1, p0, Lcom/amazon/kcp/home/widget/resume/popups/ResumeBookPopup$12;->this$0:Lcom/amazon/kcp/home/widget/resume/popups/ResumeBookPopup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 556
    iget-object v0, p0, Lcom/amazon/kcp/home/widget/resume/popups/ResumeBookPopup$12;->this$0:Lcom/amazon/kcp/home/widget/resume/popups/ResumeBookPopup;

    invoke-static {v0}, Lcom/amazon/kcp/home/widget/resume/popups/ResumeBookPopup;->access$400(Lcom/amazon/kcp/home/widget/resume/popups/ResumeBookPopup;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Asin"

    const-string v3, "DeleteSampleFromDevice"

    invoke-static {v0, v1, v2, v3}, Lcom/amazon/kcp/home/widget/resume/popups/ResumeBookPopup;->access$500(Lcom/amazon/kcp/home/widget/resume/popups/ResumeBookPopup;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 557
    iget-object v0, p0, Lcom/amazon/kcp/home/widget/resume/popups/ResumeBookPopup$12;->this$0:Lcom/amazon/kcp/home/widget/resume/popups/ResumeBookPopup;

    invoke-static {v0}, Lcom/amazon/kcp/home/widget/resume/popups/ResumeBookPopup;->access$700(Lcom/amazon/kcp/home/widget/resume/popups/ResumeBookPopup;)Lcom/amazon/kcp/library/ContentInteractionHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kcp/home/widget/resume/popups/ResumeBookPopup$12;->this$0:Lcom/amazon/kcp/home/widget/resume/popups/ResumeBookPopup;

    invoke-static {v1}, Lcom/amazon/kcp/home/widget/resume/popups/ResumeBookPopup;->access$000(Lcom/amazon/kcp/home/widget/resume/popups/ResumeBookPopup;)Lcom/amazon/kcp/library/ILibraryDisplayItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/kcp/library/ContentInteractionHandler;->showDeleteOwnedSampleDialog(Lcom/amazon/kcp/library/ILibraryDisplayItem;)V

    const/16 v0, 0x8

    .line 558
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 559
    iget-object p1, p0, Lcom/amazon/kcp/home/widget/resume/popups/ResumeBookPopup$12;->this$0:Lcom/amazon/kcp/home/widget/resume/popups/ResumeBookPopup;

    invoke-virtual {p1}, Lcom/amazon/kcp/home/widget/resume/popups/ResumeBookPopup;->dismiss()V

    return-void
.end method
