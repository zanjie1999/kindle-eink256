.class public final Lcom/amazon/kindle/deletecontent/api/RefundEligibilityCheckAsyncTask;
.super Ljava/lang/Object;
.source "RefundEligibilityCheckAsyncTask.kt"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final apiClientHelper:Lcom/amazon/kindle/deletecontent/api/DeleteContentApiClientHelper;

.field private final asinDetail:Lcom/amazon/kindle/deletecontent/api/DeleteContentAsinDetail;

.field private final callback:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Lcom/amazon/kindle/deletecontent/api/RefundEligibleCheckResponse;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/amazon/kindle/deletecontent/api/DeleteContentAsinDetail;Lkotlin/jvm/functions/Function1;Lcom/amazon/kindle/deletecontent/api/DeleteContentApiClientHelper;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kindle/deletecontent/api/DeleteContentAsinDetail;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/amazon/kindle/deletecontent/api/RefundEligibleCheckResponse;",
            "Lkotlin/Unit;",
            ">;",
            "Lcom/amazon/kindle/deletecontent/api/DeleteContentApiClientHelper;",
            ")V"
        }
    .end annotation

    const-string v0, "asinDetail"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "apiClientHelper"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/amazon/kindle/deletecontent/api/RefundEligibilityCheckAsyncTask;->asinDetail:Lcom/amazon/kindle/deletecontent/api/DeleteContentAsinDetail;

    iput-object p2, p0, Lcom/amazon/kindle/deletecontent/api/RefundEligibilityCheckAsyncTask;->callback:Lkotlin/jvm/functions/Function1;

    iput-object p3, p0, Lcom/amazon/kindle/deletecontent/api/RefundEligibilityCheckAsyncTask;->apiClientHelper:Lcom/amazon/kindle/deletecontent/api/DeleteContentApiClientHelper;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .line 7
    iget-object v0, p0, Lcom/amazon/kindle/deletecontent/api/RefundEligibilityCheckAsyncTask;->apiClientHelper:Lcom/amazon/kindle/deletecontent/api/DeleteContentApiClientHelper;

    invoke-virtual {v0}, Lcom/amazon/kindle/deletecontent/api/DeleteContentApiClientHelper;->getWebRequestManager()Lcom/amazon/kindle/webservices/IWebRequestManager;

    move-result-object v0

    .line 8
    new-instance v10, Lcom/amazon/kindle/deletecontent/api/RefundEligibleCheckWebRequest;

    iget-object v1, p0, Lcom/amazon/kindle/deletecontent/api/RefundEligibilityCheckAsyncTask;->apiClientHelper:Lcom/amazon/kindle/deletecontent/api/DeleteContentApiClientHelper;

    invoke-virtual {v1}, Lcom/amazon/kindle/deletecontent/api/DeleteContentApiClientHelper;->getBaseURL()Ljava/lang/String;

    move-result-object v2

    .line 9
    iget-object v1, p0, Lcom/amazon/kindle/deletecontent/api/RefundEligibilityCheckAsyncTask;->apiClientHelper:Lcom/amazon/kindle/deletecontent/api/DeleteContentApiClientHelper;

    invoke-virtual {v1}, Lcom/amazon/kindle/deletecontent/api/DeleteContentApiClientHelper;->getDeviceInformation()Lcom/amazon/kindle/krx/application/IDeviceInformation;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kindle/krx/application/IDeviceInformation;->getAccessToken()Ljava/lang/String;

    move-result-object v3

    const-string v1, "apiClientHelper.deviceInformation.accessToken"

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    iget-object v1, p0, Lcom/amazon/kindle/deletecontent/api/RefundEligibilityCheckAsyncTask;->apiClientHelper:Lcom/amazon/kindle/deletecontent/api/DeleteContentApiClientHelper;

    invoke-virtual {v1}, Lcom/amazon/kindle/deletecontent/api/DeleteContentApiClientHelper;->getCookieString()Ljava/lang/String;

    move-result-object v4

    .line 11
    iget-object v5, p0, Lcom/amazon/kindle/deletecontent/api/RefundEligibilityCheckAsyncTask;->asinDetail:Lcom/amazon/kindle/deletecontent/api/DeleteContentAsinDetail;

    .line 12
    iget-object v6, p0, Lcom/amazon/kindle/deletecontent/api/RefundEligibilityCheckAsyncTask;->callback:Lkotlin/jvm/functions/Function1;

    const/4 v7, 0x0

    const/16 v8, 0x20

    const/4 v9, 0x0

    move-object v1, v10

    .line 8
    invoke-direct/range {v1 .. v9}, Lcom/amazon/kindle/deletecontent/api/RefundEligibleCheckWebRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/deletecontent/api/DeleteContentAsinDetail;Lkotlin/jvm/functions/Function1;Lcom/amazon/kindle/webservices/ResultResponseHandler;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 7
    invoke-interface {v0, v10}, Lcom/amazon/kindle/webservices/IWebRequestManager;->addWebRequest(Lcom/amazon/kindle/webservices/IWebRequest;)Z

    return-void
.end method
