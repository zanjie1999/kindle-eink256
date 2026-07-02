.class Lcom/amazon/kindle/krx/tutorial/JITTutorialFragmentActivity$2$1;
.super Ljava/lang/Object;
.source "JITTutorialFragmentActivity.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kindle/krx/tutorial/JITTutorialFragmentActivity$2;->onPreDraw()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/amazon/kindle/krx/tutorial/JITTutorialFragmentActivity$2;

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/amazon/kindle/krx/tutorial/JITTutorialFragmentActivity$2;Landroid/view/View;)V
    .locals 0

    .line 77
    iput-object p1, p0, Lcom/amazon/kindle/krx/tutorial/JITTutorialFragmentActivity$2$1;->this$1:Lcom/amazon/kindle/krx/tutorial/JITTutorialFragmentActivity$2;

    iput-object p2, p0, Lcom/amazon/kindle/krx/tutorial/JITTutorialFragmentActivity$2$1;->val$view:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 1

    .line 80
    iget-object v0, p0, Lcom/amazon/kindle/krx/tutorial/JITTutorialFragmentActivity$2$1;->val$view:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 81
    iget-object v0, p0, Lcom/amazon/kindle/krx/tutorial/JITTutorialFragmentActivity$2$1;->this$1:Lcom/amazon/kindle/krx/tutorial/JITTutorialFragmentActivity$2;

    iget-object v0, v0, Lcom/amazon/kindle/krx/tutorial/JITTutorialFragmentActivity$2;->this$0:Lcom/amazon/kindle/krx/tutorial/JITTutorialFragmentActivity;

    invoke-static {v0}, Lcom/amazon/kindle/krx/tutorial/JITTutorialFragmentActivity;->access$300(Lcom/amazon/kindle/krx/tutorial/JITTutorialFragmentActivity;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 82
    iget-object v0, p0, Lcom/amazon/kindle/krx/tutorial/JITTutorialFragmentActivity$2$1;->this$1:Lcom/amazon/kindle/krx/tutorial/JITTutorialFragmentActivity$2;

    iget-object v0, v0, Lcom/amazon/kindle/krx/tutorial/JITTutorialFragmentActivity$2;->this$0:Lcom/amazon/kindle/krx/tutorial/JITTutorialFragmentActivity;

    invoke-static {v0}, Lcom/amazon/kindle/krx/tutorial/JITTutorialFragmentActivity;->access$100(Lcom/amazon/kindle/krx/tutorial/JITTutorialFragmentActivity;)V

    :cond_0
    return-void
.end method
