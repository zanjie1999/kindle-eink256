.class public Lcom/amazon/client/metrics/thirdparty/transport/MAPMetricsTransport$MetricsMAPAccountChangeObserver;
.super Ljava/lang/Object;
.source "MAPMetricsTransport.java"

# interfaces
.implements Lcom/amazon/identity/auth/device/api/MAPAccountManager$MAPAccountChangeObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/client/metrics/thirdparty/transport/MAPMetricsTransport;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "MetricsMAPAccountChangeObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/client/metrics/thirdparty/transport/MAPMetricsTransport;


# direct methods
.method protected constructor <init>(Lcom/amazon/client/metrics/thirdparty/transport/MAPMetricsTransport;)V
    .locals 0

    .line 66
    iput-object p1, p0, Lcom/amazon/client/metrics/thirdparty/transport/MAPMetricsTransport$MetricsMAPAccountChangeObserver;->this$0:Lcom/amazon/client/metrics/thirdparty/transport/MAPMetricsTransport;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccountChange(Lcom/amazon/identity/auth/device/api/AccountChangeEvent;)V
    .locals 3

    .line 69
    iget-object v0, p0, Lcom/amazon/client/metrics/thirdparty/transport/MAPMetricsTransport$MetricsMAPAccountChangeObserver;->this$0:Lcom/amazon/client/metrics/thirdparty/transport/MAPMetricsTransport;

    iget-object v0, v0, Lcom/amazon/client/metrics/thirdparty/transport/AbstractHTTPMetricsTransport;->TAG:Ljava/lang/String;

    const-string v1, "Account changed, recreating AuthenticationMethodFactory with new credentials"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    iget-object v0, p0, Lcom/amazon/client/metrics/thirdparty/transport/MAPMetricsTransport$MetricsMAPAccountChangeObserver;->this$0:Lcom/amazon/client/metrics/thirdparty/transport/MAPMetricsTransport;

    new-instance v1, Lcom/amazon/identity/auth/device/api/AuthenticationMethodFactory;

    iget-object v2, p0, Lcom/amazon/client/metrics/thirdparty/transport/MAPMetricsTransport$MetricsMAPAccountChangeObserver;->this$0:Lcom/amazon/client/metrics/thirdparty/transport/MAPMetricsTransport;

    iget-object v2, v2, Lcom/amazon/client/metrics/thirdparty/transport/AbstractHTTPMetricsTransport;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/amazon/identity/auth/device/api/AccountChangeEvent;->getCurrentAccount()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, v2, p1}, Lcom/amazon/identity/auth/device/api/AuthenticationMethodFactory;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v1, v0, Lcom/amazon/client/metrics/thirdparty/transport/MAPMetricsTransport;->mAuthFactory:Lcom/amazon/identity/auth/device/api/AuthenticationMethodFactory;

    return-void
.end method
