.class Lcom/amazon/device/ads/UserAgentManager$1;
.super Ljava/lang/Object;
.source "UserAgentManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/device/ads/UserAgentManager;->populateUserAgentString(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/device/ads/UserAgentManager;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/amazon/device/ads/UserAgentManager;Landroid/content/Context;)V
    .locals 0

    .line 66
    iput-object p1, p0, Lcom/amazon/device/ads/UserAgentManager$1;->this$0:Lcom/amazon/device/ads/UserAgentManager;

    iput-object p2, p0, Lcom/amazon/device/ads/UserAgentManager$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 70
    iget-object v0, p0, Lcom/amazon/device/ads/UserAgentManager$1;->this$0:Lcom/amazon/device/ads/UserAgentManager;

    invoke-static {v0}, Lcom/amazon/device/ads/UserAgentManager;->access$000(Lcom/amazon/device/ads/UserAgentManager;)Lcom/amazon/device/ads/WebViewFactory;

    move-result-object v1

    iget-object v2, p0, Lcom/amazon/device/ads/UserAgentManager$1;->val$context:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/amazon/device/ads/WebViewFactory;->createWebView(Landroid/content/Context;)Landroid/webkit/WebView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    invoke-virtual {v1}, Landroid/webkit/WebSettings;->getUserAgentString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/device/ads/UserAgentManager;->setUserAgentString(Ljava/lang/String;)V

    return-void
.end method
