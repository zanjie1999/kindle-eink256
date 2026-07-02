.class Lcom/amazon/kcp/application/internal/metrics/StandaloneDCMMetricsFactoryProvider$1;
.super Ljava/lang/Object;
.source "StandaloneDCMMetricsFactoryProvider.java"

# interfaces
.implements Lcom/amazon/client/metrics/common/transport/OAuthHelper;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/application/internal/metrics/StandaloneDCMMetricsFactoryProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/application/internal/metrics/StandaloneDCMMetricsFactoryProvider;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/application/internal/metrics/StandaloneDCMMetricsFactoryProvider;)V
    .locals 0

    .line 23
    iput-object p1, p0, Lcom/amazon/kcp/application/internal/metrics/StandaloneDCMMetricsFactoryProvider$1;->this$0:Lcom/amazon/kcp/application/internal/metrics/StandaloneDCMMetricsFactoryProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAccessToken()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 26
    iget-object v0, p0, Lcom/amazon/kcp/application/internal/metrics/StandaloneDCMMetricsFactoryProvider$1;->this$0:Lcom/amazon/kcp/application/internal/metrics/StandaloneDCMMetricsFactoryProvider;

    invoke-static {v0}, Lcom/amazon/kcp/application/internal/metrics/StandaloneDCMMetricsFactoryProvider;->access$000(Lcom/amazon/kcp/application/internal/metrics/StandaloneDCMMetricsFactoryProvider;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 30
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getAuthenticationManager()Lcom/amazon/kcp/application/IAuthenticationManager;

    move-result-object v0

    sget-object v1, Lcom/amazon/kindle/services/authentication/TokenKey;->ACCESS_TOKEN:Lcom/amazon/kindle/services/authentication/TokenKey;

    invoke-interface {v0, v1}, Lcom/amazon/kcp/application/IAuthenticationManager;->getToken(Lcom/amazon/kindle/services/authentication/TokenKey;)Ljava/lang/String;

    move-result-object v0

    .line 31
    invoke-static {v0}, Lcom/google/common/base/Strings;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    return-object v0

    .line 33
    :cond_0
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Unable to retrieve access token"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 27
    :cond_1
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Forcing anonymous access"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
.end method
