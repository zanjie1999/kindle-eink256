.class public Lcom/amazon/client/metrics/common/transport/internal/android/AndroidOAuthHelperImpl;
.super Ljava/lang/Object;
.source "AndroidOAuthHelperImpl.java"

# interfaces
.implements Lcom/amazon/client/metrics/thirdparty/transport/OAuthHelper;


# instance fields
.field private final mCommonOAuthHelper:Lcom/amazon/client/metrics/common/transport/OAuthHelper;


# direct methods
.method public constructor <init>(Lcom/amazon/client/metrics/common/transport/OAuthHelper;)V
    .locals 1

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    .line 33
    iput-object p1, p0, Lcom/amazon/client/metrics/common/transport/internal/android/AndroidOAuthHelperImpl;->mCommonOAuthHelper:Lcom/amazon/client/metrics/common/transport/OAuthHelper;

    return-void

    .line 30
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "OAuthHelper may not be null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public getAccessToken()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 38
    iget-object v0, p0, Lcom/amazon/client/metrics/common/transport/internal/android/AndroidOAuthHelperImpl;->mCommonOAuthHelper:Lcom/amazon/client/metrics/common/transport/OAuthHelper;

    invoke-interface {v0}, Lcom/amazon/client/metrics/common/transport/OAuthHelper;->getAccessToken()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
