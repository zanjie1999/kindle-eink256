.class Lcom/amazon/bookwizard/webview/WebViewManager$3;
.super Ljava/lang/Object;
.source "WebViewManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/bookwizard/webview/WebViewManager;->onTrimMemory(I)V
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

    .line 227
    iput-object p1, p0, Lcom/amazon/bookwizard/webview/WebViewManager$3;->this$0:Lcom/amazon/bookwizard/webview/WebViewManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 230
    iget-object v0, p0, Lcom/amazon/bookwizard/webview/WebViewManager$3;->this$0:Lcom/amazon/bookwizard/webview/WebViewManager;

    invoke-static {v0}, Lcom/amazon/bookwizard/webview/WebViewManager;->access$900(Lcom/amazon/bookwizard/webview/WebViewManager;)V

    return-void
.end method
