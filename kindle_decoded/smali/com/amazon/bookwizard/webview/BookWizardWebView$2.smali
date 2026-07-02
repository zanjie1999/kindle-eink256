.class Lcom/amazon/bookwizard/webview/BookWizardWebView$2;
.super Landroid/webkit/WebChromeClient;
.source "BookWizardWebView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/bookwizard/webview/BookWizardWebView;->initialize()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/bookwizard/webview/BookWizardWebView;


# direct methods
.method constructor <init>(Lcom/amazon/bookwizard/webview/BookWizardWebView;)V
    .locals 0

    .line 72
    iput-object p1, p0, Lcom/amazon/bookwizard/webview/BookWizardWebView$2;->this$0:Lcom/amazon/bookwizard/webview/BookWizardWebView;

    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/webkit/WebView;I)V
    .locals 0

    .line 75
    invoke-super {p0, p1, p2}, Landroid/webkit/WebChromeClient;->onProgressChanged(Landroid/webkit/WebView;I)V

    return-void
.end method
