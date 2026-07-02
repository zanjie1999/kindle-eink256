.class Lcom/amazon/bookwizard/webview/WebViewManager$4;
.super Ljava/lang/Object;
.source "WebViewManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/bookwizard/webview/WebViewManager;->onPageLoaded()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/bookwizard/webview/WebViewManager;


# direct methods
.method constructor <init>(Lcom/amazon/bookwizard/webview/WebViewManager;)V
    .locals 0

    .line 245
    iput-object p1, p0, Lcom/amazon/bookwizard/webview/WebViewManager$4;->this$0:Lcom/amazon/bookwizard/webview/WebViewManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 248
    iget-object v0, p0, Lcom/amazon/bookwizard/webview/WebViewManager$4;->this$0:Lcom/amazon/bookwizard/webview/WebViewManager;

    invoke-static {v0}, Lcom/amazon/bookwizard/webview/WebViewManager;->access$800(Lcom/amazon/bookwizard/webview/WebViewManager;)Lcom/amazon/bookwizard/ui/BookWizardWebActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/bookwizard/ui/BookWizardWebActivity;->onPageLoaded()V

    return-void
.end method
