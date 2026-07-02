.class public Lcom/amazon/whispersync/dcp/framework/ConnectivityEnforcer$Builder;
.super Ljava/lang/Object;
.source "ConnectivityEnforcer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/whispersync/dcp/framework/ConnectivityEnforcer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mConnectivityManager:Lcom/amazon/whispersync/dcp/framework/ConnectivityManagerWrapper;

.field private mContext:Landroid/content/Context;

.field private mType:I

.field private mWaitForConnection:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 29
    iput v0, p0, Lcom/amazon/whispersync/dcp/framework/ConnectivityEnforcer$Builder;->mType:I

    .line 33
    invoke-static {}, Lcom/amazon/whispersync/dcp/framework/ConnectivityEnforcer;->access$000()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/amazon/whispersync/dcp/framework/ConnectivityEnforcer$Builder;->mWaitForConnection:J

    return-void
.end method


# virtual methods
.method public build()Lcom/amazon/whispersync/dcp/framework/ConnectivityEnforcer;
    .locals 7

    .line 63
    invoke-virtual {p0}, Lcom/amazon/whispersync/dcp/framework/ConnectivityEnforcer$Builder;->canBuild()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/amazon/whispersync/dcp/framework/ConnectivityEnforcer;

    iget-wide v2, p0, Lcom/amazon/whispersync/dcp/framework/ConnectivityEnforcer$Builder;->mWaitForConnection:J

    iget-object v4, p0, Lcom/amazon/whispersync/dcp/framework/ConnectivityEnforcer$Builder;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/amazon/whispersync/dcp/framework/ConnectivityEnforcer$Builder;->mConnectivityManager:Lcom/amazon/whispersync/dcp/framework/ConnectivityManagerWrapper;

    iget v6, p0, Lcom/amazon/whispersync/dcp/framework/ConnectivityEnforcer$Builder;->mType:I

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/amazon/whispersync/dcp/framework/ConnectivityEnforcer;-><init>(JLandroid/content/Context;Lcom/amazon/whispersync/dcp/framework/ConnectivityManagerWrapper;I)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public canBuild()Z
    .locals 1

    .line 58
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/ConnectivityEnforcer$Builder;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public setConnectivityManager(Lcom/amazon/whispersync/dcp/framework/ConnectivityManagerWrapper;)V
    .locals 0

    .line 43
    iput-object p1, p0, Lcom/amazon/whispersync/dcp/framework/ConnectivityEnforcer$Builder;->mConnectivityManager:Lcom/amazon/whispersync/dcp/framework/ConnectivityManagerWrapper;

    return-void
.end method

.method public setContext(Landroid/content/Context;)V
    .locals 0

    .line 38
    iput-object p1, p0, Lcom/amazon/whispersync/dcp/framework/ConnectivityEnforcer$Builder;->mContext:Landroid/content/Context;

    return-void
.end method

.method public setNetworkType(I)V
    .locals 0

    .line 53
    iput p1, p0, Lcom/amazon/whispersync/dcp/framework/ConnectivityEnforcer$Builder;->mType:I

    return-void
.end method

.method public setWaitForConnectivityTimeout(JLjava/util/concurrent/TimeUnit;)V
    .locals 1

    .line 48
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, p1, p2, p3}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/amazon/whispersync/dcp/framework/ConnectivityEnforcer$Builder;->mWaitForConnection:J

    return-void
.end method
