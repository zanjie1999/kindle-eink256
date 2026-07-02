.class final Lcom/amazon/kcp/library/releaselicense/api/LibraryRightsClientAPI$getInvalidDownloads$1;
.super Ljava/lang/Object;
.source "LibraryRightsClientAPI.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/library/releaselicense/api/LibraryRightsClientAPI;->getInvalidDownloads(Ljava/util/List;Lcom/amazon/kcp/library/releaselicense/api/GetInvalidDownloadsCompletionCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $callBack:Lcom/amazon/kcp/library/releaselicense/api/GetInvalidDownloadsCompletionCallback;

.field final synthetic $downloadedItems:Ljava/util/List;


# direct methods
.method constructor <init>(Ljava/util/List;Lcom/amazon/kcp/library/releaselicense/api/GetInvalidDownloadsCompletionCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/amazon/kcp/library/releaselicense/api/LibraryRightsClientAPI$getInvalidDownloads$1;->$downloadedItems:Ljava/util/List;

    iput-object p2, p0, Lcom/amazon/kcp/library/releaselicense/api/LibraryRightsClientAPI$getInvalidDownloads$1;->$callBack:Lcom/amazon/kcp/library/releaselicense/api/GetInvalidDownloadsCompletionCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 9

    .line 73
    sget-object v0, Lcom/amazon/kcp/library/releaselicense/api/LibraryRightsClientAPI;->INSTANCE:Lcom/amazon/kcp/library/releaselicense/api/LibraryRightsClientAPI;

    invoke-static {v0}, Lcom/amazon/kcp/library/releaselicense/api/LibraryRightsClientAPI;->access$getWebRequestManager$p(Lcom/amazon/kcp/library/releaselicense/api/LibraryRightsClientAPI;)Lcom/amazon/kindle/webservices/IWebRequestManager;

    move-result-object v0

    new-instance v8, Lcom/amazon/kcp/library/releaselicense/api/GetInvalidDownloadsWebRequest;

    .line 74
    sget-object v1, Lcom/amazon/kcp/library/releaselicense/api/LibraryRightsClientAPI;->INSTANCE:Lcom/amazon/kcp/library/releaselicense/api/LibraryRightsClientAPI;

    invoke-static {v1}, Lcom/amazon/kcp/library/releaselicense/api/LibraryRightsClientAPI;->access$getRemoteLicenseReleaseApiClientHelper$p(Lcom/amazon/kcp/library/releaselicense/api/LibraryRightsClientAPI;)Lcom/amazon/kcp/library/releaselicense/api/RemoteLicenseReleaseApiClientHelper;

    move-result-object v1

    iget-object v2, p0, Lcom/amazon/kcp/library/releaselicense/api/LibraryRightsClientAPI$getInvalidDownloads$1;->$downloadedItems:Ljava/util/List;

    invoke-virtual {v1, v2}, Lcom/amazon/kcp/library/releaselicense/api/RemoteLicenseReleaseApiClientHelper;->getURLForGetInvalidDownloadsRequest(Ljava/util/List;)Ljava/lang/String;

    move-result-object v2

    .line 75
    sget-object v1, Lcom/amazon/kcp/library/releaselicense/api/LibraryRightsClientAPI;->INSTANCE:Lcom/amazon/kcp/library/releaselicense/api/LibraryRightsClientAPI;

    invoke-static {v1}, Lcom/amazon/kcp/library/releaselicense/api/LibraryRightsClientAPI;->access$getDeviceInformation$p(Lcom/amazon/kcp/library/releaselicense/api/LibraryRightsClientAPI;)Lcom/amazon/kindle/krx/application/IDeviceInformation;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kindle/krx/application/IDeviceInformation;->getAccessToken()Ljava/lang/String;

    move-result-object v3

    const-string v1, "deviceInformation.accessToken"

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/amazon/kcp/library/releaselicense/api/LibraryRightsClientAPI$getInvalidDownloads$1;->$callBack:Lcom/amazon/kcp/library/releaselicense/api/GetInvalidDownloadsCompletionCallback;

    const/4 v5, 0x0

    const/16 v6, 0x8

    const/4 v7, 0x0

    move-object v1, v8

    .line 73
    invoke-direct/range {v1 .. v7}, Lcom/amazon/kcp/library/releaselicense/api/GetInvalidDownloadsWebRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kcp/library/releaselicense/api/GetInvalidDownloadsCompletionCallback;Lcom/amazon/kindle/webservices/ResultResponseHandler;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-interface {v0, v8}, Lcom/amazon/kindle/webservices/IWebRequestManager;->addWebRequest(Lcom/amazon/kindle/webservices/IWebRequest;)Z

    return-void
.end method
