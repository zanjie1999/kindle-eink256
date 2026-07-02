.class Lcom/amazon/kcp/helpandfeedback/HelpAndFeedbackActivity$2;
.super Ljava/lang/Object;
.source "HelpAndFeedbackActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/helpandfeedback/HelpAndFeedbackActivity;->onConnectivityChanged(Lcom/amazon/kindle/krx/events/ConnectivityChangedEvent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/helpandfeedback/HelpAndFeedbackActivity;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/helpandfeedback/HelpAndFeedbackActivity;)V
    .locals 0

    .line 633
    iput-object p1, p0, Lcom/amazon/kcp/helpandfeedback/HelpAndFeedbackActivity$2;->this$0:Lcom/amazon/kcp/helpandfeedback/HelpAndFeedbackActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 636
    iget-object v0, p0, Lcom/amazon/kcp/helpandfeedback/HelpAndFeedbackActivity$2;->this$0:Lcom/amazon/kcp/helpandfeedback/HelpAndFeedbackActivity;

    invoke-static {v0}, Lcom/amazon/kcp/helpandfeedback/HelpAndFeedbackActivity;->access$200(Lcom/amazon/kcp/helpandfeedback/HelpAndFeedbackActivity;)Lcom/amazon/kcp/helpandfeedback/HelpWebErrorHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kcp/helpandfeedback/HelpAndFeedbackActivity$2;->this$0:Lcom/amazon/kcp/helpandfeedback/HelpAndFeedbackActivity;

    invoke-static {v1}, Lcom/amazon/kcp/helpandfeedback/HelpAndFeedbackActivity;->access$400(Lcom/amazon/kcp/helpandfeedback/HelpAndFeedbackActivity;)Landroid/webkit/WebView;

    move-result-object v1

    sget-object v2, Lcom/amazon/kcp/helpandfeedback/WebViewState$Reconnected;->INSTANCE:Lcom/amazon/kcp/helpandfeedback/WebViewState$Reconnected;

    invoke-interface {v0, v1, v2}, Lcom/amazon/kcp/helpandfeedback/HelpWebErrorHandler;->updateWebViewState(Landroid/webkit/WebView;Lcom/amazon/kcp/helpandfeedback/WebViewState;)V

    return-void
.end method
