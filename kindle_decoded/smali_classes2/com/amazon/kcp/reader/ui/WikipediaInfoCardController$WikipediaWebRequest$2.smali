.class Lcom/amazon/kcp/reader/ui/WikipediaInfoCardController$WikipediaWebRequest$2;
.super Ljava/lang/Object;
.source "WikipediaInfoCardController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/reader/ui/WikipediaInfoCardController$WikipediaWebRequest;->onRequestComplete()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/amazon/kcp/reader/ui/WikipediaInfoCardController$WikipediaWebRequest;

.field final synthetic val$html:Ljava/lang/String;

.field final synthetic val$result:Lorg/json/JSONObject;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/reader/ui/WikipediaInfoCardController$WikipediaWebRequest;Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 0

    .line 189
    iput-object p1, p0, Lcom/amazon/kcp/reader/ui/WikipediaInfoCardController$WikipediaWebRequest$2;->this$1:Lcom/amazon/kcp/reader/ui/WikipediaInfoCardController$WikipediaWebRequest;

    iput-object p2, p0, Lcom/amazon/kcp/reader/ui/WikipediaInfoCardController$WikipediaWebRequest$2;->val$html:Ljava/lang/String;

    iput-object p3, p0, Lcom/amazon/kcp/reader/ui/WikipediaInfoCardController$WikipediaWebRequest$2;->val$result:Lorg/json/JSONObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 192
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/WikipediaInfoCardController$WikipediaWebRequest$2;->this$1:Lcom/amazon/kcp/reader/ui/WikipediaInfoCardController$WikipediaWebRequest;

    iget-object v0, v0, Lcom/amazon/kcp/reader/ui/WikipediaInfoCardController$WikipediaWebRequest;->this$0:Lcom/amazon/kcp/reader/ui/WikipediaInfoCardController;

    invoke-static {v0}, Lcom/amazon/kcp/reader/ui/WikipediaInfoCardController;->access$100(Lcom/amazon/kcp/reader/ui/WikipediaInfoCardController;)Lcom/amazon/kcp/reader/ui/WikipediaInfoCardView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/ui/WikipediaInfoCardView;->getContentView()Lcom/amazon/kcp/reader/ui/ObservableWebView;

    move-result-object v1

    .line 196
    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    .line 200
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "text/html"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "; charset=UTF-8"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v0, 0x0

    .line 202
    invoke-virtual {v1, v0}, Landroid/webkit/WebView;->setHorizontalScrollBarEnabled(Z)V

    .line 205
    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/16 v2, 0x64

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setTextZoom(I)V

    .line 209
    iget-object v3, p0, Lcom/amazon/kcp/reader/ui/WikipediaInfoCardController$WikipediaWebRequest$2;->val$html:Ljava/lang/String;

    const/4 v2, 0x0

    const-string v5, "UTF-8"

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 211
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/WikipediaInfoCardController$WikipediaWebRequest$2;->this$1:Lcom/amazon/kcp/reader/ui/WikipediaInfoCardController$WikipediaWebRequest;

    iget-object v0, v0, Lcom/amazon/kcp/reader/ui/WikipediaInfoCardController$WikipediaWebRequest;->this$0:Lcom/amazon/kcp/reader/ui/WikipediaInfoCardController;

    invoke-static {v0}, Lcom/amazon/kcp/reader/ui/WikipediaInfoCardController;->access$100(Lcom/amazon/kcp/reader/ui/WikipediaInfoCardController;)Lcom/amazon/kcp/reader/ui/WikipediaInfoCardView;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kcp/reader/ui/WikipediaInfoCardController$WikipediaWebRequest$2;->val$result:Lorg/json/JSONObject;

    const-string v2, "articleUrl"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/kcp/reader/ui/WikipediaInfoCardView;->setUrl(Ljava/lang/String;)V

    return-void
.end method
