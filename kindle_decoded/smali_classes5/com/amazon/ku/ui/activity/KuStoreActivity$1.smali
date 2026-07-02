.class Lcom/amazon/ku/ui/activity/KuStoreActivity$1;
.super Lcom/amazon/identity/auth/device/api/MAPAndroidWebViewClient;
.source "KuStoreActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/ku/ui/activity/KuStoreActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/ku/ui/activity/KuStoreActivity;

.field final synthetic val$exitStateName:Ljava/lang/String;

.field final synthetic val$spinner:Landroid/widget/ProgressBar;

.field final synthetic val$urlPath:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/amazon/ku/ui/activity/KuStoreActivity;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Landroid/widget/ProgressBar;)V
    .locals 0

    .line 100
    iput-object p1, p0, Lcom/amazon/ku/ui/activity/KuStoreActivity$1;->this$0:Lcom/amazon/ku/ui/activity/KuStoreActivity;

    iput-object p3, p0, Lcom/amazon/ku/ui/activity/KuStoreActivity$1;->val$exitStateName:Ljava/lang/String;

    iput-object p4, p0, Lcom/amazon/ku/ui/activity/KuStoreActivity$1;->val$urlPath:Ljava/lang/String;

    iput-object p5, p0, Lcom/amazon/ku/ui/activity/KuStoreActivity$1;->val$spinner:Landroid/widget/ProgressBar;

    invoke-direct {p0, p2}, Lcom/amazon/identity/auth/device/api/MAPAndroidWebViewClient;-><init>(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 0

    .line 121
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 122
    iget-object p1, p0, Lcom/amazon/ku/ui/activity/KuStoreActivity$1;->val$spinner:Landroid/widget/ProgressBar;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 0

    .line 115
    invoke-super {p0, p1, p2, p3}, Lcom/amazon/identity/auth/device/api/MAPAndroidWebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 116
    iget-object p1, p0, Lcom/amazon/ku/ui/activity/KuStoreActivity$1;->val$spinner:Landroid/widget/ProgressBar;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 4

    .line 103
    iget-object v0, p0, Lcom/amazon/ku/ui/activity/KuStoreActivity$1;->this$0:Lcom/amazon/ku/ui/activity/KuStoreActivity;

    invoke-static {v0, p2}, Lcom/amazon/ku/ui/activity/KuStoreActivity;->access$000(Lcom/amazon/ku/ui/activity/KuStoreActivity;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 104
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/ku/ui/activity/KuStoreActivity$1;->val$exitStateName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 105
    invoke-static {}, Lcom/amazon/ku/KuConversionPlugin;->getKrxMessageQueue()Lcom/amazon/kindle/krx/events/IMessageQueue;

    move-result-object v1

    new-instance v2, Lcom/amazon/ku/events/SubscriptionViewStateEvent;

    iget-object v3, p0, Lcom/amazon/ku/ui/activity/KuStoreActivity$1;->val$urlPath:Ljava/lang/String;

    invoke-direct {v2, v3, v0}, Lcom/amazon/ku/events/SubscriptionViewStateEvent;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Lcom/amazon/kindle/krx/events/IMessageQueue;->publish(Lcom/amazon/kindle/krx/events/IEvent;)V

    .line 106
    invoke-static {}, Lcom/amazon/ku/ui/activity/KuStoreActivity;->access$100()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "WebView Finished: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    iget-object v0, p0, Lcom/amazon/ku/ui/activity/KuStoreActivity$1;->this$0:Lcom/amazon/ku/ui/activity/KuStoreActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 109
    :cond_0
    invoke-static {}, Lcom/amazon/ku/ui/activity/KuStoreActivity;->access$100()Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Loading "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 110
    invoke-super {p0, p1, p2}, Lcom/amazon/identity/auth/device/api/MAPAndroidWebViewClient;->shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method
