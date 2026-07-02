.class public Lcom/amazon/device/sync/metrics/OAuthHelperImpl;
.super Ljava/lang/Object;
.source "OAuthHelperImpl.java"

# interfaces
.implements Lcom/amazon/whispersync/client/metrics/transport/OAuthHelper;


# instance fields
.field private mDcpAccountManager:Lcom/amazon/whispersync/dcp/framework/auth/DcpAccountManager;
    .annotation runtime Lcom/amazon/whispersync/com/google/inject/Inject;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAccessToken()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 19
    iget-object v0, p0, Lcom/amazon/device/sync/metrics/OAuthHelperImpl;->mDcpAccountManager:Lcom/amazon/whispersync/dcp/framework/auth/DcpAccountManager;

    invoke-interface {v0}, Lcom/amazon/whispersync/dcp/framework/auth/DcpAccountManager;->getToken()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
