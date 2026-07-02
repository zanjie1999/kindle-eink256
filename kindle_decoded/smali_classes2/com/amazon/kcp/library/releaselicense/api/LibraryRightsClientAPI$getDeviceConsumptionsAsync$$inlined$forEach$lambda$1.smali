.class final Lcom/amazon/kcp/library/releaselicense/api/LibraryRightsClientAPI$getDeviceConsumptionsAsync$$inlined$forEach$lambda$1;
.super Ljava/lang/Object;
.source "LibraryRightsClientAPI.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/library/releaselicense/api/LibraryRightsClientAPI;->getDeviceConsumptionsAsync(Ljava/lang/String;Lcom/amazon/kcp/library/releaselicense/api/GetDeviceConsumptionsCompletionCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $callBack$inlined:Lcom/amazon/kcp/library/releaselicense/api/GetDeviceConsumptionsCompletionCallback;

.field final synthetic $it:Lcom/amazon/kindle/content/ContentMetadata;


# direct methods
.method constructor <init>(Lcom/amazon/kindle/content/ContentMetadata;Lcom/amazon/kcp/library/releaselicense/api/GetDeviceConsumptionsCompletionCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/amazon/kcp/library/releaselicense/api/LibraryRightsClientAPI$getDeviceConsumptionsAsync$$inlined$forEach$lambda$1;->$it:Lcom/amazon/kindle/content/ContentMetadata;

    iput-object p2, p0, Lcom/amazon/kcp/library/releaselicense/api/LibraryRightsClientAPI$getDeviceConsumptionsAsync$$inlined$forEach$lambda$1;->$callBack$inlined:Lcom/amazon/kcp/library/releaselicense/api/GetDeviceConsumptionsCompletionCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 11

    .line 47
    sget-object v0, Lcom/amazon/kcp/library/releaselicense/api/LibraryRightsClientAPI;->INSTANCE:Lcom/amazon/kcp/library/releaselicense/api/LibraryRightsClientAPI;

    invoke-static {v0}, Lcom/amazon/kcp/library/releaselicense/api/LibraryRightsClientAPI;->access$getWebRequestManager$p(Lcom/amazon/kcp/library/releaselicense/api/LibraryRightsClientAPI;)Lcom/amazon/kindle/webservices/IWebRequestManager;

    move-result-object v0

    new-instance v9, Lcom/amazon/kcp/library/releaselicense/api/GetDeviceConsumptionsForAsinWebRequest;

    .line 48
    sget-object v1, Lcom/amazon/kcp/library/releaselicense/api/LibraryRightsClientAPI;->INSTANCE:Lcom/amazon/kcp/library/releaselicense/api/LibraryRightsClientAPI;

    invoke-static {v1}, Lcom/amazon/kcp/library/releaselicense/api/LibraryRightsClientAPI;->access$getRemoteLicenseReleaseApiClientHelper$p(Lcom/amazon/kcp/library/releaselicense/api/LibraryRightsClientAPI;)Lcom/amazon/kcp/library/releaselicense/api/RemoteLicenseReleaseApiClientHelper;

    move-result-object v1

    iget-object v2, p0, Lcom/amazon/kcp/library/releaselicense/api/LibraryRightsClientAPI$getDeviceConsumptionsAsync$$inlined$forEach$lambda$1;->$it:Lcom/amazon/kindle/content/ContentMetadata;

    const-string v3, "it"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/amazon/kcp/library/releaselicense/api/RemoteLicenseReleaseApiClientHelper;->getURLForGetConsumptionsRequest(Lcom/amazon/kindle/content/ContentMetadata;)Ljava/lang/String;

    move-result-object v2

    sget-object v1, Lcom/amazon/kcp/library/releaselicense/api/LibraryRightsClientAPI;->INSTANCE:Lcom/amazon/kcp/library/releaselicense/api/LibraryRightsClientAPI;

    invoke-static {v1}, Lcom/amazon/kcp/library/releaselicense/api/LibraryRightsClientAPI;->access$getDeviceInformation$p(Lcom/amazon/kcp/library/releaselicense/api/LibraryRightsClientAPI;)Lcom/amazon/kindle/krx/application/IDeviceInformation;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kindle/krx/application/IDeviceInformation;->getAccessToken()Ljava/lang/String;

    move-result-object v4

    const-string v1, "deviceInformation.accessToken"

    invoke-static {v4, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 49
    iget-object v5, p0, Lcom/amazon/kcp/library/releaselicense/api/LibraryRightsClientAPI$getDeviceConsumptionsAsync$$inlined$forEach$lambda$1;->$it:Lcom/amazon/kindle/content/ContentMetadata;

    invoke-static {v5, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v6, p0, Lcom/amazon/kcp/library/releaselicense/api/LibraryRightsClientAPI$getDeviceConsumptionsAsync$$inlined$forEach$lambda$1;->$callBack$inlined:Lcom/amazon/kcp/library/releaselicense/api/GetDeviceConsumptionsCompletionCallback;

    const/4 v7, 0x0

    const/16 v8, 0x10

    const/4 v10, 0x0

    move-object v1, v9

    move-object v3, v4

    move-object v4, v5

    move-object v5, v6

    move-object v6, v7

    move v7, v8

    move-object v8, v10

    .line 47
    invoke-direct/range {v1 .. v8}, Lcom/amazon/kcp/library/releaselicense/api/GetDeviceConsumptionsForAsinWebRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/content/ContentMetadata;Lcom/amazon/kcp/library/releaselicense/api/GetDeviceConsumptionsCompletionCallback;Lcom/amazon/kindle/webservices/ResultResponseHandler;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-interface {v0, v9}, Lcom/amazon/kindle/webservices/IWebRequestManager;->addWebRequest(Lcom/amazon/kindle/webservices/IWebRequest;)Z

    return-void
.end method
