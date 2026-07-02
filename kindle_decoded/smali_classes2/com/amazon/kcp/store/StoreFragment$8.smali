.class Lcom/amazon/kcp/store/StoreFragment$8;
.super Ljava/lang/Object;
.source "StoreFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/store/StoreFragment;->executeJavascript(Ljava/lang/String;Lcom/amazon/foundation/IStringCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/store/StoreFragment;

.field final synthetic val$callback:Lcom/amazon/foundation/IStringCallback;

.field final synthetic val$javascript:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/store/StoreFragment;Ljava/lang/String;Lcom/amazon/foundation/IStringCallback;)V
    .locals 0

    .line 2003
    iput-object p1, p0, Lcom/amazon/kcp/store/StoreFragment$8;->this$0:Lcom/amazon/kcp/store/StoreFragment;

    iput-object p2, p0, Lcom/amazon/kcp/store/StoreFragment$8;->val$javascript:Ljava/lang/String;

    iput-object p3, p0, Lcom/amazon/kcp/store/StoreFragment$8;->val$callback:Lcom/amazon/foundation/IStringCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 2007
    iget-object v0, p0, Lcom/amazon/kcp/store/StoreFragment$8;->this$0:Lcom/amazon/kcp/store/StoreFragment;

    iget-object v0, v0, Lcom/amazon/kcp/store/StoreFragment;->webView:Lcom/amazon/kcp/store/StoreWebView;

    if-eqz v0, :cond_0

    .line 2009
    invoke-static {}, Lcom/amazon/kcp/store/StoreFragment;->access$200()Ljava/lang/String;

    move-result-object v1

    const-string v2, "loading javascript"

    invoke-static {v1, v2}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 2010
    iget-object v1, p0, Lcom/amazon/kcp/store/StoreFragment$8;->val$javascript:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/webkit/WebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    .line 2012
    :cond_0
    iget-object v0, p0, Lcom/amazon/kcp/store/StoreFragment$8;->val$callback:Lcom/amazon/foundation/IStringCallback;

    if-eqz v0, :cond_1

    .line 2013
    iget-object v1, p0, Lcom/amazon/kcp/store/StoreFragment$8;->val$javascript:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/amazon/foundation/IStringCallback;->execute(Ljava/lang/String;)V

    :cond_1
    return-void
.end method
