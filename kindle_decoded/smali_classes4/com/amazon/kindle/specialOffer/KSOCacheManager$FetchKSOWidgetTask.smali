.class Lcom/amazon/kindle/specialOffer/KSOCacheManager$FetchKSOWidgetTask;
.super Ljava/lang/Object;
.source "KSOCacheManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kindle/specialOffer/KSOCacheManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "FetchKSOWidgetTask"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kindle/specialOffer/KSOCacheManager;


# direct methods
.method constructor <init>(Lcom/amazon/kindle/specialOffer/KSOCacheManager;)V
    .locals 0

    .line 200
    iput-object p1, p0, Lcom/amazon/kindle/specialOffer/KSOCacheManager$FetchKSOWidgetTask;->this$0:Lcom/amazon/kindle/specialOffer/KSOCacheManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 203
    iget-object v0, p0, Lcom/amazon/kindle/specialOffer/KSOCacheManager$FetchKSOWidgetTask;->this$0:Lcom/amazon/kindle/specialOffer/KSOCacheManager;

    invoke-static {v0}, Lcom/amazon/kindle/specialOffer/KSOCacheManager;->access$200(Lcom/amazon/kindle/specialOffer/KSOCacheManager;)V

    .line 205
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 206
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "window"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    .line 207
    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 209
    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    const-string v2, "center-1"

    invoke-static {v1, v0, v2}, Lcom/amazon/kindle/specialOffer/KSOCacheManager;->access$300(IILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 210
    new-instance v1, Lcom/amazon/kindle/specialOffer/KSOCacheManager$KSOWidgetProviderResultResponseHandler;

    iget-object v2, p0, Lcom/amazon/kindle/specialOffer/KSOCacheManager$FetchKSOWidgetTask;->this$0:Lcom/amazon/kindle/specialOffer/KSOCacheManager;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/amazon/kindle/specialOffer/KSOCacheManager$KSOWidgetProviderResultResponseHandler;-><init>(Lcom/amazon/kindle/specialOffer/KSOCacheManager;Lcom/amazon/kindle/specialOffer/KSOCacheManager$1;)V

    .line 211
    new-instance v2, Lcom/amazon/kindle/webservices/BaseWebRequest;

    invoke-direct {v2, v0}, Lcom/amazon/kindle/webservices/BaseWebRequest;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Lcom/amazon/kindle/webservices/BaseWebRequest;->setResponseHandler(Lcom/amazon/kindle/webservices/IResponseHandler;)Lcom/amazon/kindle/webservices/IWebRequest;

    move-result-object v0

    const/16 v1, 0x7530

    invoke-interface {v0, v1}, Lcom/amazon/kindle/webservices/IWebRequest;->setTimeout(I)Lcom/amazon/kindle/webservices/IWebRequest;

    move-result-object v0

    .line 212
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getCookieJar()Lcom/amazon/kcp/store/CookieJar;

    move-result-object v1

    const-string v2, "store_cookies"

    const-string v3, "x-acbcn"

    .line 213
    invoke-virtual {v1, v2, v3}, Lcom/amazon/kcp/store/CookieJar;->getParsedCookie(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/http/cookie/Cookie;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 215
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v1}, Lorg/apache/http/cookie/Cookie;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Lorg/apache/http/cookie/Cookie;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ";domain="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Lorg/apache/http/cookie/Cookie;->getDomain()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Cookie"

    .line 216
    invoke-interface {v0, v2, v1}, Lcom/amazon/kindle/webservices/IWebRequest;->setHeaders(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/kindle/webservices/IWebRequest;

    .line 219
    :cond_0
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kindle/services/IReaderServicesObjectFactory;->getWebRequestManager()Lcom/amazon/kindle/webservices/IWebRequestManager;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/amazon/kindle/webservices/IWebRequestManager;->addWebRequest(Lcom/amazon/kindle/webservices/IWebRequest;)Z

    return-void
.end method
