.class Lcom/amazon/krf/platform/WebviewPlugin$9$1;
.super Ljava/lang/Object;
.source "WebviewPlugin.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/krf/platform/WebviewPlugin$9;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/amazon/krf/platform/WebviewPlugin$9;

.field final synthetic val$webview:Landroid/webkit/WebView;


# direct methods
.method constructor <init>(Lcom/amazon/krf/platform/WebviewPlugin$9;Landroid/webkit/WebView;)V
    .locals 0

    .line 481
    iput-object p1, p0, Lcom/amazon/krf/platform/WebviewPlugin$9$1;->this$1:Lcom/amazon/krf/platform/WebviewPlugin$9;

    iput-object p2, p0, Lcom/amazon/krf/platform/WebviewPlugin$9$1;->val$webview:Landroid/webkit/WebView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 486
    iget-object v0, p0, Lcom/amazon/krf/platform/WebviewPlugin$9$1;->val$webview:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->onPause()V

    .line 487
    iget-object v0, p0, Lcom/amazon/krf/platform/WebviewPlugin$9$1;->val$webview:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->destroy()V

    return-void
.end method
