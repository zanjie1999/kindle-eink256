.class Lcom/amazon/kcp/store/StoreFragment$5$2;
.super Ljava/lang/Object;
.source "StoreFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/store/StoreFragment$5;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/amazon/kcp/store/StoreFragment$5;

.field final synthetic val$defaultCookies:Ljava/util/Map;

.field final synthetic val$storeUrl:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/store/StoreFragment$5;Ljava/util/Map;Ljava/lang/String;)V
    .locals 0

    .line 1473
    iput-object p1, p0, Lcom/amazon/kcp/store/StoreFragment$5$2;->this$1:Lcom/amazon/kcp/store/StoreFragment$5;

    iput-object p2, p0, Lcom/amazon/kcp/store/StoreFragment$5$2;->val$defaultCookies:Ljava/util/Map;

    iput-object p3, p0, Lcom/amazon/kcp/store/StoreFragment$5$2;->val$storeUrl:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1476
    iget-object v0, p0, Lcom/amazon/kcp/store/StoreFragment$5$2;->val$defaultCookies:Ljava/util/Map;

    invoke-static {v0}, Lcom/amazon/kcp/store/CookieHelper;->injectCookiesForAllSupportedDomains(Ljava/util/Map;)V

    .line 1479
    invoke-static {}, Lcom/amazon/kindle/build/BuildInfo;->isDebugBuild()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1480
    invoke-static {}, Lcom/amazon/kcp/store/StoreUrlBuilder;->getOverriddenWeblabs()Ljava/lang/String;

    move-result-object v0

    const-string v1, "experiment"

    invoke-static {v1, v0}, Lcom/amazon/kcp/store/CookieHelper;->injectCookieForAllSupportedDomains(Ljava/lang/String;Ljava/lang/String;)V

    .line 1483
    :cond_0
    iget-object v0, p0, Lcom/amazon/kcp/store/StoreFragment$5$2;->this$1:Lcom/amazon/kcp/store/StoreFragment$5;

    iget-object v0, v0, Lcom/amazon/kcp/store/StoreFragment$5;->this$0:Lcom/amazon/kcp/store/StoreFragment;

    invoke-static {v0}, Lcom/amazon/kcp/store/StoreFragment;->access$2400(Lcom/amazon/kcp/store/StoreFragment;)[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1487
    iget-object v0, p0, Lcom/amazon/kcp/store/StoreFragment$5$2;->val$storeUrl:Ljava/lang/String;

    iget-object v1, p0, Lcom/amazon/kcp/store/StoreFragment$5$2;->this$1:Lcom/amazon/kcp/store/StoreFragment$5;

    iget-object v1, v1, Lcom/amazon/kcp/store/StoreFragment$5;->this$0:Lcom/amazon/kcp/store/StoreFragment;

    invoke-static {v1}, Lcom/amazon/kcp/store/StoreFragment;->access$2400(Lcom/amazon/kcp/store/StoreFragment;)[Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/amazon/kcp/store/CookieHelper;->injectCookiesForStore(Ljava/lang/String;[Ljava/lang/String;)V

    .line 1490
    :cond_1
    iget-object v0, p0, Lcom/amazon/kcp/store/StoreFragment$5$2;->this$1:Lcom/amazon/kcp/store/StoreFragment$5;

    iget-object v1, v0, Lcom/amazon/kcp/store/StoreFragment$5;->this$0:Lcom/amazon/kcp/store/StoreFragment;

    iget-object v2, v1, Lcom/amazon/kcp/store/StoreFragment;->webView:Lcom/amazon/kcp/store/StoreWebView;

    iget-object v3, p0, Lcom/amazon/kcp/store/StoreFragment$5$2;->val$storeUrl:Ljava/lang/String;

    iget-object v0, v0, Lcom/amazon/kcp/store/StoreFragment$5;->val$actionParameters:Ljava/util/Map;

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v0, v4}, Lcom/amazon/kcp/store/StoreFragment;->loadUrl(Landroid/webkit/WebView;Ljava/lang/String;Ljava/util/Map;Z)V

    .line 1491
    iget-object v0, p0, Lcom/amazon/kcp/store/StoreFragment$5$2;->this$1:Lcom/amazon/kcp/store/StoreFragment$5;

    iget-object v1, v0, Lcom/amazon/kcp/store/StoreFragment$5;->val$action:Lcom/amazon/kcp/store/StoreUrlBuilder$Action;

    sget-object v2, Lcom/amazon/kcp/store/StoreUrlBuilder$Action;->STORE:Lcom/amazon/kcp/store/StoreUrlBuilder$Action;

    if-ne v1, v2, :cond_2

    .line 1492
    iget-object v0, v0, Lcom/amazon/kcp/store/StoreFragment$5;->this$0:Lcom/amazon/kcp/store/StoreFragment;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/amazon/kcp/store/StoreFragment;->access$2902(Lcom/amazon/kcp/store/StoreFragment;Z)Z

    .line 1494
    :cond_2
    iget-object v0, p0, Lcom/amazon/kcp/store/StoreFragment$5$2;->this$1:Lcom/amazon/kcp/store/StoreFragment$5;

    iget-object v0, v0, Lcom/amazon/kcp/store/StoreFragment$5;->this$0:Lcom/amazon/kcp/store/StoreFragment;

    invoke-virtual {v0}, Lcom/amazon/kcp/store/StoreFragment;->removeIntentExtras()V

    return-void
.end method
