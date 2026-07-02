.class Lcom/audible/hushpuppy/common/network/JavaScriptFunctionCaller$1;
.super Ljava/lang/Object;
.source "JavaScriptFunctionCaller.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/audible/hushpuppy/common/network/JavaScriptFunctionCaller;->call(Ljava/lang/String;[Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$script:Ljava/lang/String;

.field final synthetic val$webView:Landroid/webkit/WebView;


# direct methods
.method constructor <init>(Lcom/audible/hushpuppy/common/network/JavaScriptFunctionCaller;Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 0

    .line 89
    iput-object p2, p0, Lcom/audible/hushpuppy/common/network/JavaScriptFunctionCaller$1;->val$webView:Landroid/webkit/WebView;

    iput-object p3, p0, Lcom/audible/hushpuppy/common/network/JavaScriptFunctionCaller$1;->val$script:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 93
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    .line 94
    iget-object v0, p0, Lcom/audible/hushpuppy/common/network/JavaScriptFunctionCaller$1;->val$webView:Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/audible/hushpuppy/common/network/JavaScriptFunctionCaller$1;->val$script:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/webkit/WebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    goto :goto_0

    .line 96
    :cond_0
    iget-object v0, p0, Lcom/audible/hushpuppy/common/network/JavaScriptFunctionCaller$1;->val$webView:Landroid/webkit/WebView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "javascript:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/audible/hushpuppy/common/network/JavaScriptFunctionCaller$1;->val$script:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    :goto_0
    return-void
.end method
