.class Lcom/amazon/kcp/application/WebViewSSLErrorHandler$2;
.super Ljava/lang/Object;
.source "WebViewSSLErrorHandler.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/application/WebViewSSLErrorHandler;->handleWebViewSSLError()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/application/WebViewSSLErrorHandler;

.field final synthetic val$activity:Landroid/app/Activity;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/application/WebViewSSLErrorHandler;Landroid/app/Activity;)V
    .locals 0

    .line 79
    iput-object p1, p0, Lcom/amazon/kcp/application/WebViewSSLErrorHandler$2;->this$0:Lcom/amazon/kcp/application/WebViewSSLErrorHandler;

    iput-object p2, p0, Lcom/amazon/kcp/application/WebViewSSLErrorHandler$2;->val$activity:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 81
    iget-object p2, p0, Lcom/amazon/kcp/application/WebViewSSLErrorHandler$2;->this$0:Lcom/amazon/kcp/application/WebViewSSLErrorHandler;

    iget-object v0, p0, Lcom/amazon/kcp/application/WebViewSSLErrorHandler$2;->val$activity:Landroid/app/Activity;

    invoke-static {p2, v0}, Lcom/amazon/kcp/application/WebViewSSLErrorHandler;->access$000(Lcom/amazon/kcp/application/WebViewSSLErrorHandler;Landroid/content/Context;)V

    .line 82
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
