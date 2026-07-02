.class Lcom/amazon/kcp/redding/WebViewActivity$2;
.super Ljava/lang/Object;
.source "WebViewActivity.java"

# interfaces
.implements Landroid/webkit/WebView$PictureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/redding/WebViewActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/redding/WebViewActivity;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/redding/WebViewActivity;)V
    .locals 0

    .line 119
    iput-object p1, p0, Lcom/amazon/kcp/redding/WebViewActivity$2;->this$0:Lcom/amazon/kcp/redding/WebViewActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onNewPicture(Landroid/webkit/WebView;Landroid/graphics/Picture;)V
    .locals 1

    .line 125
    iget-object p2, p0, Lcom/amazon/kcp/redding/WebViewActivity$2;->this$0:Lcom/amazon/kcp/redding/WebViewActivity;

    invoke-static {p2}, Lcom/amazon/kcp/redding/WebViewActivity;->access$200(Lcom/amazon/kcp/redding/WebViewActivity;)Landroid/widget/ProgressBar;

    move-result-object p2

    const/16 v0, 0x8

    invoke-virtual {p2, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 126
    iget-object p2, p0, Lcom/amazon/kcp/redding/WebViewActivity$2;->this$0:Lcom/amazon/kcp/redding/WebViewActivity;

    invoke-static {p2}, Lcom/amazon/kcp/redding/WebViewActivity;->access$300(Lcom/amazon/kcp/redding/WebViewActivity;)Z

    move-result p2

    if-nez p2, :cond_0

    .line 129
    invoke-virtual {p1}, Landroid/webkit/WebView;->clearHistory()V

    .line 130
    iget-object p2, p0, Lcom/amazon/kcp/redding/WebViewActivity$2;->this$0:Lcom/amazon/kcp/redding/WebViewActivity;

    const/4 v0, 0x1

    invoke-static {p2, v0}, Lcom/amazon/kcp/redding/WebViewActivity;->access$302(Lcom/amazon/kcp/redding/WebViewActivity;Z)Z

    .line 133
    iget-object p2, p0, Lcom/amazon/kcp/redding/WebViewActivity$2;->this$0:Lcom/amazon/kcp/redding/WebViewActivity;

    invoke-static {p2}, Lcom/amazon/kcp/redding/WebViewActivity;->access$000(Lcom/amazon/kcp/redding/WebViewActivity;)Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_0

    .line 135
    :try_start_0
    iget-object p2, p0, Lcom/amazon/kcp/redding/WebViewActivity$2;->this$0:Lcom/amazon/kcp/redding/WebViewActivity;

    new-instance v0, Ljava/net/URL;

    invoke-virtual {p1}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/amazon/kcp/redding/WebViewActivity;->access$002(Lcom/amazon/kcp/redding/WebViewActivity;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 137
    :catch_0
    invoke-static {}, Lcom/amazon/kcp/redding/WebViewActivity;->access$100()Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Malformed URL given to web view activity: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/amazon/kcp/redding/WebViewActivity$2;->this$0:Lcom/amazon/kcp/redding/WebViewActivity;

    invoke-static {p2}, Lcom/amazon/kcp/redding/WebViewActivity;->access$000(Lcom/amazon/kcp/redding/WebViewActivity;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 138
    iget-object p1, p0, Lcom/amazon/kcp/redding/WebViewActivity$2;->this$0:Lcom/amazon/kcp/redding/WebViewActivity;

    const-string p2, "Invalid Host"

    invoke-static {p1, p2}, Lcom/amazon/kcp/redding/WebViewActivity;->access$002(Lcom/amazon/kcp/redding/WebViewActivity;Ljava/lang/String;)Ljava/lang/String;

    :cond_0
    :goto_0
    return-void
.end method
