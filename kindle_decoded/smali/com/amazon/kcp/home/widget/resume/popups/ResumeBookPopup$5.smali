.class Lcom/amazon/kcp/home/widget/resume/popups/ResumeBookPopup$5;
.super Ljava/lang/Object;
.source "ResumeBookPopup.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/home/widget/resume/popups/ResumeBookPopup;->addActionButtons()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/home/widget/resume/popups/ResumeBookPopup;

.field final synthetic val$actionButton:Lcom/amazon/kindle/krx/ui/IActionButton;

.field final synthetic val$libraryItemList:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/home/widget/resume/popups/ResumeBookPopup;Lcom/amazon/kindle/krx/ui/IActionButton;Ljava/util/List;)V
    .locals 0

    .line 336
    iput-object p1, p0, Lcom/amazon/kcp/home/widget/resume/popups/ResumeBookPopup$5;->this$0:Lcom/amazon/kcp/home/widget/resume/popups/ResumeBookPopup;

    iput-object p2, p0, Lcom/amazon/kcp/home/widget/resume/popups/ResumeBookPopup$5;->val$actionButton:Lcom/amazon/kindle/krx/ui/IActionButton;

    iput-object p3, p0, Lcom/amazon/kcp/home/widget/resume/popups/ResumeBookPopup$5;->val$libraryItemList:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 339
    iget-object p1, p0, Lcom/amazon/kcp/home/widget/resume/popups/ResumeBookPopup$5;->val$actionButton:Lcom/amazon/kindle/krx/ui/IActionButton;

    invoke-interface {p1}, Lcom/amazon/kindle/krx/ui/IButton;->getIconKey()Ljava/lang/String;

    move-result-object p1

    const-string v0, "MARK_AS_READ_BUTTON_KEY"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/amazon/kcp/home/widget/resume/popups/ResumeBookPopup$5;->val$actionButton:Lcom/amazon/kindle/krx/ui/IActionButton;

    .line 340
    invoke-interface {p1}, Lcom/amazon/kindle/krx/ui/IButton;->getIconKey()Ljava/lang/String;

    move-result-object p1

    const-string v0, "MARK_AS_UNREAD_BUTTON_KEY"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 343
    :cond_0
    iget-object p1, p0, Lcom/amazon/kcp/home/widget/resume/popups/ResumeBookPopup$5;->this$0:Lcom/amazon/kcp/home/widget/resume/popups/ResumeBookPopup;

    invoke-static {p1}, Lcom/amazon/kcp/home/widget/resume/popups/ResumeBookPopup;->access$400(Lcom/amazon/kcp/home/widget/resume/popups/ResumeBookPopup;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kcp/home/widget/resume/popups/ResumeBookPopup$5;->val$actionButton:Lcom/amazon/kindle/krx/ui/IActionButton;

    sget-object v2, Lcom/amazon/kindle/krx/ui/TextType;->SHORT:Lcom/amazon/kindle/krx/ui/TextType;

    invoke-interface {v1, v2}, Lcom/amazon/kindle/krx/ui/IButton;->getText(Lcom/amazon/kindle/krx/ui/TextType;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Asin"

    invoke-static {p1, v0, v2, v1}, Lcom/amazon/kcp/home/widget/resume/popups/ResumeBookPopup;->access$500(Lcom/amazon/kcp/home/widget/resume/popups/ResumeBookPopup;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 341
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/amazon/kcp/home/widget/resume/popups/ResumeBookPopup$5;->this$0:Lcom/amazon/kcp/home/widget/resume/popups/ResumeBookPopup;

    iget-object v0, p0, Lcom/amazon/kcp/home/widget/resume/popups/ResumeBookPopup$5;->val$actionButton:Lcom/amazon/kindle/krx/ui/IActionButton;

    sget-object v1, Lcom/amazon/kindle/krx/ui/TextType;->SHORT:Lcom/amazon/kindle/krx/ui/TextType;

    invoke-interface {v0, v1}, Lcom/amazon/kindle/krx/ui/IButton;->getText(Lcom/amazon/kindle/krx/ui/TextType;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/amazon/kcp/home/widget/resume/popups/ResumeBookPopup;->access$800(Lcom/amazon/kcp/home/widget/resume/popups/ResumeBookPopup;Ljava/lang/String;)V

    .line 345
    :goto_1
    iget-object p1, p0, Lcom/amazon/kcp/home/widget/resume/popups/ResumeBookPopup$5;->val$actionButton:Lcom/amazon/kindle/krx/ui/IActionButton;

    iget-object v0, p0, Lcom/amazon/kcp/home/widget/resume/popups/ResumeBookPopup$5;->this$0:Lcom/amazon/kcp/home/widget/resume/popups/ResumeBookPopup;

    invoke-static {v0}, Lcom/amazon/kcp/home/widget/resume/popups/ResumeBookPopup;->access$700(Lcom/amazon/kcp/home/widget/resume/popups/ResumeBookPopup;)Lcom/amazon/kcp/library/ContentInteractionHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kcp/home/widget/resume/popups/ResumeBookPopup$5;->val$libraryItemList:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/amazon/kcp/library/ContentInteractionHandler;->getIBookList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/amazon/kindle/krx/ui/IButton;->onClick(Ljava/lang/Object;)V

    .line 346
    iget-object p1, p0, Lcom/amazon/kcp/home/widget/resume/popups/ResumeBookPopup$5;->this$0:Lcom/amazon/kcp/home/widget/resume/popups/ResumeBookPopup;

    invoke-virtual {p1}, Lcom/amazon/kcp/home/widget/resume/popups/ResumeBookPopup;->dismiss()V

    return-void
.end method
