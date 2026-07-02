.class final Lcom/amazon/kcp/library/releaselicense/api/LibraryRightsClientAPI$removeConsumptions$$inlined$forEach$lambda$1;
.super Ljava/lang/Object;
.source "LibraryRightsClientAPI.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/library/releaselicense/api/LibraryRightsClientAPI;->removeConsumptions(Ljava/lang/String;Ljava/util/List;Lcom/amazon/kcp/library/releaselicense/api/RemoveConsumptionCompletionCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $callBack$inlined:Lcom/amazon/kcp/library/releaselicense/api/RemoveConsumptionCompletionCallback;

.field final synthetic $deviceIds$inlined:Ljava/util/List;

.field final synthetic $it:Lcom/amazon/kindle/content/ContentMetadata;


# direct methods
.method constructor <init>(Lcom/amazon/kindle/content/ContentMetadata;Ljava/util/List;Lcom/amazon/kcp/library/releaselicense/api/RemoveConsumptionCompletionCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/amazon/kcp/library/releaselicense/api/LibraryRightsClientAPI$removeConsumptions$$inlined$forEach$lambda$1;->$it:Lcom/amazon/kindle/content/ContentMetadata;

    iput-object p2, p0, Lcom/amazon/kcp/library/releaselicense/api/LibraryRightsClientAPI$removeConsumptions$$inlined$forEach$lambda$1;->$deviceIds$inlined:Ljava/util/List;

    iput-object p3, p0, Lcom/amazon/kcp/library/releaselicense/api/LibraryRightsClientAPI$removeConsumptions$$inlined$forEach$lambda$1;->$callBack$inlined:Lcom/amazon/kcp/library/releaselicense/api/RemoveConsumptionCompletionCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    .line 62
    sget-object v0, Lcom/amazon/kcp/library/releaselicense/api/LibraryRightsClientAPI;->INSTANCE:Lcom/amazon/kcp/library/releaselicense/api/LibraryRightsClientAPI;

    invoke-static {v0}, Lcom/amazon/kcp/library/releaselicense/api/LibraryRightsClientAPI;->access$getWebRequestManager$p(Lcom/amazon/kcp/library/releaselicense/api/LibraryRightsClientAPI;)Lcom/amazon/kindle/webservices/IWebRequestManager;

    move-result-object v0

    .line 63
    new-instance v7, Lcom/amazon/kcp/library/releaselicense/api/RemoveConsumptionsWebRequest;

    sget-object v1, Lcom/amazon/kcp/library/releaselicense/api/LibraryRightsClientAPI;->INSTANCE:Lcom/amazon/kcp/library/releaselicense/api/LibraryRightsClientAPI;

    invoke-static {v1}, Lcom/amazon/kcp/library/releaselicense/api/LibraryRightsClientAPI;->access$getRemoteLicenseReleaseApiClientHelper$p(Lcom/amazon/kcp/library/releaselicense/api/LibraryRightsClientAPI;)Lcom/amazon/kcp/library/releaselicense/api/RemoteLicenseReleaseApiClientHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazon/kcp/library/releaselicense/api/RemoteLicenseReleaseApiClientHelper;->getURLForRemoveConsumptionsRequest()Ljava/lang/String;

    move-result-object v2

    .line 64
    sget-object v1, Lcom/amazon/kcp/library/releaselicense/api/LibraryRightsClientAPI;->INSTANCE:Lcom/amazon/kcp/library/releaselicense/api/LibraryRightsClientAPI;

    invoke-static {v1}, Lcom/amazon/kcp/library/releaselicense/api/LibraryRightsClientAPI;->access$getDeviceInformation$p(Lcom/amazon/kcp/library/releaselicense/api/LibraryRightsClientAPI;)Lcom/amazon/kindle/krx/application/IDeviceInformation;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kindle/krx/application/IDeviceInformation;->getAccessToken()Ljava/lang/String;

    move-result-object v3

    const-string v1, "deviceInformation.accessToken"

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/amazon/kcp/library/releaselicense/api/LibraryRightsClientAPI$removeConsumptions$$inlined$forEach$lambda$1;->$it:Lcom/amazon/kindle/content/ContentMetadata;

    const-string v1, "it"

    invoke-static {v4, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v5, p0, Lcom/amazon/kcp/library/releaselicense/api/LibraryRightsClientAPI$removeConsumptions$$inlined$forEach$lambda$1;->$deviceIds$inlined:Ljava/util/List;

    iget-object v6, p0, Lcom/amazon/kcp/library/releaselicense/api/LibraryRightsClientAPI$removeConsumptions$$inlined$forEach$lambda$1;->$callBack$inlined:Lcom/amazon/kcp/library/releaselicense/api/RemoveConsumptionCompletionCallback;

    move-object v1, v7

    .line 63
    invoke-direct/range {v1 .. v6}, Lcom/amazon/kcp/library/releaselicense/api/RemoveConsumptionsWebRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/content/ContentMetadata;Ljava/util/List;Lcom/amazon/kcp/library/releaselicense/api/RemoveConsumptionCompletionCallback;)V

    .line 62
    invoke-interface {v0, v7}, Lcom/amazon/kindle/webservices/IWebRequestManager;->addWebRequest(Lcom/amazon/kindle/webservices/IWebRequest;)Z

    return-void
.end method
