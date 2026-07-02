.class Lcom/audible/mobile/contentlicense/networking/impl/ContentLicenseManagerImpl$1;
.super Ljava/lang/Object;
.source "ContentLicenseManagerImpl.java"

# interfaces
.implements Lio/reactivex/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/audible/mobile/contentlicense/networking/impl/ContentLicenseManagerImpl;->getContentLicense(Lcom/audible/mobile/domain/Asin;Ljava/util/List;Lcom/audible/mobile/contentlicense/networking/request/ConsumptionType;Lcom/audible/mobile/contentlicense/networking/request/RightsValidation;Lcom/audible/mobile/contentlicense/networking/request/Quality;Lcom/audible/mobile/domain/ACR;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/Integer;ZZZ)Lio/reactivex/Single;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/functions/Consumer<",
        "Ljava/lang/Throwable;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/audible/mobile/contentlicense/networking/impl/ContentLicenseManagerImpl;

.field final synthetic val$asin:Lcom/audible/mobile/domain/Asin;

.field final synthetic val$consumptionType:Lcom/audible/mobile/contentlicense/networking/request/ConsumptionType;

.field final synthetic val$timerMetric:Lcom/audible/mobile/metric/domain/TimerMetric;


# direct methods
.method constructor <init>(Lcom/audible/mobile/contentlicense/networking/impl/ContentLicenseManagerImpl;Lcom/audible/mobile/metric/domain/TimerMetric;Lcom/audible/mobile/contentlicense/networking/request/ConsumptionType;Lcom/audible/mobile/domain/Asin;)V
    .locals 0

    .line 196
    iput-object p1, p0, Lcom/audible/mobile/contentlicense/networking/impl/ContentLicenseManagerImpl$1;->this$0:Lcom/audible/mobile/contentlicense/networking/impl/ContentLicenseManagerImpl;

    iput-object p2, p0, Lcom/audible/mobile/contentlicense/networking/impl/ContentLicenseManagerImpl$1;->val$timerMetric:Lcom/audible/mobile/metric/domain/TimerMetric;

    iput-object p3, p0, Lcom/audible/mobile/contentlicense/networking/impl/ContentLicenseManagerImpl$1;->val$consumptionType:Lcom/audible/mobile/contentlicense/networking/request/ConsumptionType;

    iput-object p4, p0, Lcom/audible/mobile/contentlicense/networking/impl/ContentLicenseManagerImpl$1;->val$asin:Lcom/audible/mobile/domain/Asin;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 196
    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Lcom/audible/mobile/contentlicense/networking/impl/ContentLicenseManagerImpl$1;->accept(Ljava/lang/Throwable;)V

    return-void
.end method

.method public accept(Ljava/lang/Throwable;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 199
    invoke-static {}, Lcom/audible/mobile/contentlicense/networking/impl/ContentLicenseManagerImpl;->access$000()Lorg/slf4j/Logger;

    move-result-object v0

    sget-object v1, Lcom/audible/mobile/logging/PIIAwareLoggerDelegate;->PII_MARKER:Lorg/slf4j/Marker;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Failed to retrieve content license! {}"

    invoke-interface {v0, v1, v3, v2}, Lorg/slf4j/Logger;->error(Lorg/slf4j/Marker;Ljava/lang/String;Ljava/lang/Object;)V

    .line 200
    invoke-static {}, Lcom/audible/mobile/contentlicense/networking/impl/ContentLicenseManagerImpl;->access$000()Lorg/slf4j/Logger;

    move-result-object v0

    const-string v1, "Failed to retrieve content license!"

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->error(Ljava/lang/String;)V

    .line 202
    iget-object v0, p0, Lcom/audible/mobile/contentlicense/networking/impl/ContentLicenseManagerImpl$1;->val$timerMetric:Lcom/audible/mobile/metric/domain/TimerMetric;

    invoke-interface {v0}, Lcom/audible/mobile/metric/domain/TimerMetric;->stop()V

    .line 206
    instance-of v0, p1, Lcom/audible/mobile/contentlicense/networking/exception/ContentLicenseResponseParseException;

    if-nez v0, :cond_0

    instance-of v0, p1, Lcom/audible/mobile/contentlicense/networking/exception/ContentLicenseStatusCodeException;

    if-nez v0, :cond_0

    .line 208
    iget-object v0, p0, Lcom/audible/mobile/contentlicense/networking/impl/ContentLicenseManagerImpl$1;->this$0:Lcom/audible/mobile/contentlicense/networking/impl/ContentLicenseManagerImpl;

    invoke-static {v0}, Lcom/audible/mobile/contentlicense/networking/impl/ContentLicenseManagerImpl;->access$100(Lcom/audible/mobile/contentlicense/networking/impl/ContentLicenseManagerImpl;)Lcom/audible/mobile/contentlicense/networking/metrics/AclsMetricRecorder;

    move-result-object v0

    iget-object v1, p0, Lcom/audible/mobile/contentlicense/networking/impl/ContentLicenseManagerImpl$1;->val$consumptionType:Lcom/audible/mobile/contentlicense/networking/request/ConsumptionType;

    iget-object v2, p0, Lcom/audible/mobile/contentlicense/networking/impl/ContentLicenseManagerImpl$1;->val$asin:Lcom/audible/mobile/domain/Asin;

    invoke-virtual {v0, p1, v1, v2}, Lcom/audible/mobile/contentlicense/networking/metrics/AclsMetricRecorder;->recordCounterMetricException(Ljava/lang/Throwable;Lcom/audible/mobile/contentlicense/networking/request/ConsumptionType;Lcom/audible/mobile/domain/Asin;)V

    :cond_0
    return-void
.end method
