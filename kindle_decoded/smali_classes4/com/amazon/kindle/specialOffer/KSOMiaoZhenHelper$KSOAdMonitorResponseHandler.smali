.class Lcom/amazon/kindle/specialOffer/KSOMiaoZhenHelper$KSOAdMonitorResponseHandler;
.super Lcom/amazon/kindle/webservices/ResultResponseHandler;
.source "KSOMiaoZhenHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kindle/specialOffer/KSOMiaoZhenHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "KSOAdMonitorResponseHandler"
.end annotation


# instance fields
.field campaignId:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 72
    invoke-direct {p0}, Lcom/amazon/kindle/webservices/ResultResponseHandler;-><init>()V

    .line 73
    iput-object p1, p0, Lcom/amazon/kindle/specialOffer/KSOMiaoZhenHelper$KSOAdMonitorResponseHandler;->campaignId:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public onHttpStatusCodeReceived(I)V
    .locals 2

    .line 77
    invoke-super {p0, p1}, Lcom/amazon/kindle/webservices/BaseResponseHandler;->onHttpStatusCodeReceived(I)V

    .line 79
    invoke-virtual {p0}, Lcom/amazon/kindle/webservices/BaseResponseHandler;->getHttpStatusCode()I

    move-result p1

    const/16 v0, 0xc8

    if-ne p1, v0, :cond_0

    .line 80
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getKSOCacheManager()Lcom/amazon/kindle/specialOffer/IKSOCacheManager;

    move-result-object p1

    .line 81
    iget-object v0, p0, Lcom/amazon/kindle/specialOffer/KSOMiaoZhenHelper$KSOAdMonitorResponseHandler;->campaignId:Ljava/lang/String;

    const-string v1, "show_external_campaign"

    invoke-interface {p1, v0, v1}, Lcom/amazon/kindle/specialOffer/IKSOCacheManager;->reportKSOMetric(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
