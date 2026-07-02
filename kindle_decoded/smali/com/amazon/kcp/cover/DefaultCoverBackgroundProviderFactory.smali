.class public final Lcom/amazon/kcp/cover/DefaultCoverBackgroundProviderFactory;
.super Ljava/lang/Object;
.source "DefaultCoverBackgroundProviderFactory.java"


# direct methods
.method public static newProvider()Lcom/amazon/kcp/cover/IDefaultCoverBackgroundProvider;
    .locals 1

    .line 20
    new-instance v0, Lcom/amazon/kcp/cover/DefaultCoverBackgroundProvider;

    invoke-direct {v0}, Lcom/amazon/kcp/cover/DefaultCoverBackgroundProvider;-><init>()V

    return-object v0
.end method
