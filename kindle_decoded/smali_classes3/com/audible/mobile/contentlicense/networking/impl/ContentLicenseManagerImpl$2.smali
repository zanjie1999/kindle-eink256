.class Lcom/audible/mobile/contentlicense/networking/impl/ContentLicenseManagerImpl$2;
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
        "Lcom/audible/mobile/contentlicense/networking/model/ContentLicense;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/audible/mobile/contentlicense/networking/impl/ContentLicenseManagerImpl;

.field final synthetic val$timerMetric:Lcom/audible/mobile/metric/domain/TimerMetric;


# direct methods
.method constructor <init>(Lcom/audible/mobile/contentlicense/networking/impl/ContentLicenseManagerImpl;Lcom/audible/mobile/metric/domain/TimerMetric;)V
    .locals 0

    .line 190
    iput-object p1, p0, Lcom/audible/mobile/contentlicense/networking/impl/ContentLicenseManagerImpl$2;->this$0:Lcom/audible/mobile/contentlicense/networking/impl/ContentLicenseManagerImpl;

    iput-object p2, p0, Lcom/audible/mobile/contentlicense/networking/impl/ContentLicenseManagerImpl$2;->val$timerMetric:Lcom/audible/mobile/metric/domain/TimerMetric;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Lcom/audible/mobile/contentlicense/networking/model/ContentLicense;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 193
    invoke-static {}, Lcom/audible/mobile/contentlicense/networking/impl/ContentLicenseManagerImpl;->access$000()Lorg/slf4j/Logger;

    move-result-object p1

    const-string v0, "Successfully retrieved content license!"

    invoke-interface {p1, v0}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V

    .line 194
    iget-object p1, p0, Lcom/audible/mobile/contentlicense/networking/impl/ContentLicenseManagerImpl$2;->this$0:Lcom/audible/mobile/contentlicense/networking/impl/ContentLicenseManagerImpl;

    invoke-static {p1}, Lcom/audible/mobile/contentlicense/networking/impl/ContentLicenseManagerImpl;->access$100(Lcom/audible/mobile/contentlicense/networking/impl/ContentLicenseManagerImpl;)Lcom/audible/mobile/contentlicense/networking/metrics/AclsMetricRecorder;

    move-result-object p1

    iget-object v0, p0, Lcom/audible/mobile/contentlicense/networking/impl/ContentLicenseManagerImpl$2;->val$timerMetric:Lcom/audible/mobile/metric/domain/TimerMetric;

    invoke-virtual {p1, v0}, Lcom/audible/mobile/contentlicense/networking/metrics/AclsMetricRecorder;->recordTimerMetric(Lcom/audible/mobile/metric/domain/TimerMetric;)V

    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 190
    check-cast p1, Lcom/audible/mobile/contentlicense/networking/model/ContentLicense;

    invoke-virtual {p0, p1}, Lcom/audible/mobile/contentlicense/networking/impl/ContentLicenseManagerImpl$2;->accept(Lcom/audible/mobile/contentlicense/networking/model/ContentLicense;)V

    return-void
.end method
