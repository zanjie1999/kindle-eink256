.class Lcom/amazon/kcp/ui/tutorial/JITTutorialLayout$1;
.super Ljava/lang/Object;
.source "JITTutorialLayout.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/ui/tutorial/JITTutorialLayout;->setupTutorialText()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/ui/tutorial/JITTutorialLayout;

.field final synthetic val$tutorial:Lcom/amazon/kindle/krx/tutorial/JITTutorial;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/ui/tutorial/JITTutorialLayout;Lcom/amazon/kindle/krx/tutorial/JITTutorial;)V
    .locals 0

    .line 338
    iput-object p1, p0, Lcom/amazon/kcp/ui/tutorial/JITTutorialLayout$1;->this$0:Lcom/amazon/kcp/ui/tutorial/JITTutorialLayout;

    iput-object p2, p0, Lcom/amazon/kcp/ui/tutorial/JITTutorialLayout$1;->val$tutorial:Lcom/amazon/kindle/krx/tutorial/JITTutorial;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 342
    iget-object p1, p0, Lcom/amazon/kcp/ui/tutorial/JITTutorialLayout$1;->val$tutorial:Lcom/amazon/kindle/krx/tutorial/JITTutorial;

    iget-object v0, p0, Lcom/amazon/kcp/ui/tutorial/JITTutorialLayout$1;->this$0:Lcom/amazon/kcp/ui/tutorial/JITTutorialLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/amazon/kindle/krx/tutorial/JITTutorial;->onTextClicked(Landroid/content/Context;)V

    .line 343
    iget-object p1, p0, Lcom/amazon/kcp/ui/tutorial/JITTutorialLayout$1;->this$0:Lcom/amazon/kcp/ui/tutorial/JITTutorialLayout;

    invoke-static {p1}, Lcom/amazon/kcp/ui/tutorial/JITTutorialLayout;->access$000(Lcom/amazon/kcp/ui/tutorial/JITTutorialLayout;)Lcom/amazon/kcp/ui/tutorial/JITTutorialLayout$TutorialLayoutListener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 344
    iget-object p1, p0, Lcom/amazon/kcp/ui/tutorial/JITTutorialLayout$1;->this$0:Lcom/amazon/kcp/ui/tutorial/JITTutorialLayout;

    invoke-static {p1}, Lcom/amazon/kcp/ui/tutorial/JITTutorialLayout;->access$000(Lcom/amazon/kcp/ui/tutorial/JITTutorialLayout;)Lcom/amazon/kcp/ui/tutorial/JITTutorialLayout$TutorialLayoutListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kcp/ui/tutorial/JITTutorialLayout$TutorialLayoutListener;->onTextClicked()V

    :cond_0
    return-void
.end method
