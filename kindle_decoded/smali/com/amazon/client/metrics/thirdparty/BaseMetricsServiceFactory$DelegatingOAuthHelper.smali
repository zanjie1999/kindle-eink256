.class public Lcom/amazon/client/metrics/thirdparty/BaseMetricsServiceFactory$DelegatingOAuthHelper;
.super Ljava/lang/Object;
.source "BaseMetricsServiceFactory.java"

# interfaces
.implements Lcom/amazon/client/metrics/thirdparty/transport/OAuthHelper;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/client/metrics/thirdparty/BaseMetricsServiceFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "DelegatingOAuthHelper"
.end annotation


# instance fields
.field public mInnerHelper:Lcom/amazon/client/metrics/thirdparty/transport/OAuthHelper;


# direct methods
.method protected constructor <init>()V
    .locals 0

    .line 558
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAccessToken()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 568
    iget-object v0, p0, Lcom/amazon/client/metrics/thirdparty/BaseMetricsServiceFactory$DelegatingOAuthHelper;->mInnerHelper:Lcom/amazon/client/metrics/thirdparty/transport/OAuthHelper;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Lcom/amazon/client/metrics/thirdparty/transport/OAuthHelper;->getAccessToken()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public setInnerHelper(Lcom/amazon/client/metrics/thirdparty/transport/OAuthHelper;)V
    .locals 0

    .line 563
    iput-object p1, p0, Lcom/amazon/client/metrics/thirdparty/BaseMetricsServiceFactory$DelegatingOAuthHelper;->mInnerHelper:Lcom/amazon/client/metrics/thirdparty/transport/OAuthHelper;

    return-void
.end method
