.class final Lcom/amazon/kcp/util/fastmetrics/FastMetricsSessionsHelper$startAppSession$1;
.super Ljava/lang/Object;
.source "FastMetricsSessionsHelper.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/util/fastmetrics/FastMetricsSessionsHelper;->startAppSession()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $fastMetricsSessions:Lcom/amazon/kindle/fastmetrics/service/contract/IKindleFastMetricsSessions;


# direct methods
.method constructor <init>(Lcom/amazon/kindle/fastmetrics/service/contract/IKindleFastMetricsSessions;)V
    .locals 0

    iput-object p1, p0, Lcom/amazon/kcp/util/fastmetrics/FastMetricsSessionsHelper$startAppSession$1;->$fastMetricsSessions:Lcom/amazon/kindle/fastmetrics/service/contract/IKindleFastMetricsSessions;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    .line 48
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    const-string v1, "Utils.getFactory()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getKindleReaderSDK()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 50
    sget-object v2, Lcom/amazon/kcp/util/fastmetrics/FastMetricsSessionsHelper;->INSTANCE:Lcom/amazon/kcp/util/fastmetrics/FastMetricsSessionsHelper;

    iget-object v3, p0, Lcom/amazon/kcp/util/fastmetrics/FastMetricsSessionsHelper$startAppSession$1;->$fastMetricsSessions:Lcom/amazon/kindle/fastmetrics/service/contract/IKindleFastMetricsSessions;

    .line 51
    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getApplicationManager()Lcom/amazon/kindle/krx/application/IApplicationManager;

    move-result-object v4

    const-string v5, "sdk.applicationManager"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v4}, Lcom/amazon/kindle/krx/application/IApplicationManager;->getActiveUserAccount()Lcom/amazon/kindle/krx/application/IUserAccount;

    move-result-object v4

    const-string v6, "sdk.applicationManager.activeUserAccount"

    invoke-static {v4, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 52
    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getApplicationManager()Lcom/amazon/kindle/krx/application/IApplicationManager;

    move-result-object v0

    invoke-static {v0, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Lcom/amazon/kindle/krx/application/IApplicationManager;->getDeviceInformation()Lcom/amazon/kindle/krx/application/IDeviceInformation;

    move-result-object v0

    const-string v5, "sdk.applicationManager.deviceInformation"

    invoke-static {v0, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 53
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v5

    invoke-static {v5, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v5}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getDeviceInformationProvider()Lcom/amazon/kcp/application/IDeviceInformationProvider;

    move-result-object v1

    const-string v5, "Utils.getFactory().deviceInformationProvider"

    invoke-static {v1, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50
    invoke-virtual {v2, v3, v4, v0, v1}, Lcom/amazon/kcp/util/fastmetrics/FastMetricsSessionsHelper;->startAppSession$KindleReaderLibrary_release(Lcom/amazon/kindle/fastmetrics/service/contract/IKindleFastMetricsSessions;Lcom/amazon/kindle/krx/application/IUserAccount;Lcom/amazon/kindle/krx/application/IDeviceInformation;Lcom/amazon/kcp/application/IDeviceInformationProvider;)V

    :cond_0
    return-void
.end method
