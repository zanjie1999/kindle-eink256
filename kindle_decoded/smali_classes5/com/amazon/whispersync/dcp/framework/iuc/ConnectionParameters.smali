.class public Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionParameters;
.super Ljava/lang/Object;
.source "ConnectionParameters.java"


# instance fields
.field private mConnectivityWaitTimeoutMs:J

.field private mIdentifier:Ljava/lang/String;

.field private mMetricName:Ljava/lang/String;

.field private mNetworkType:I

.field private mRetries:I

.field private mUrl:Ljava/net/URL;

.field private mWithAuthentication:Z

.field private mWithCompression:Z

.field private mWithIdentification:Z


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 16
    iput v0, p0, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionParameters;->mRetries:I

    const/4 v1, 0x0

    .line 17
    iput-boolean v1, p0, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionParameters;->mWithCompression:Z

    const-wide/16 v2, 0x0

    .line 18
    iput-wide v2, p0, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionParameters;->mConnectivityWaitTimeoutMs:J

    .line 19
    iput-boolean v1, p0, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionParameters;->mWithIdentification:Z

    const/4 v2, 0x0

    .line 20
    iput-object v2, p0, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionParameters;->mIdentifier:Ljava/lang/String;

    .line 21
    iput-boolean v1, p0, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionParameters;->mWithAuthentication:Z

    .line 22
    iput v0, p0, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionParameters;->mNetworkType:I

    return-void
.end method


# virtual methods
.method public getConnectivityWaitTimeoutMs()J
    .locals 2

    .line 80
    iget-wide v0, p0, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionParameters;->mConnectivityWaitTimeoutMs:J

    return-wide v0
.end method

.method public getIdentifier()Ljava/lang/String;
    .locals 1

    .line 100
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionParameters;->mIdentifier:Ljava/lang/String;

    return-object v0
.end method

.method public getMetricName()Ljava/lang/String;
    .locals 1

    .line 50
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionParameters;->mMetricName:Ljava/lang/String;

    return-object v0
.end method

.method public getNetworkType()I
    .locals 1

    .line 120
    iget v0, p0, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionParameters;->mNetworkType:I

    return v0
.end method

.method public getOriginalUrl()Ljava/net/URL;
    .locals 1

    .line 40
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionParameters;->mUrl:Ljava/net/URL;

    return-object v0
.end method

.method public getRetries()I
    .locals 1

    .line 60
    iget v0, p0, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionParameters;->mRetries:I

    return v0
.end method

.method public getUrl()Ljava/net/URL;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;
        }
    .end annotation

    .line 26
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionParameters;->mUrl:Ljava/net/URL;

    invoke-virtual {v0}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 27
    new-instance v1, Lcom/amazon/whispersync/dcp/settings/SettingString;

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionParameters;->mUrl:Ljava/net/URL;

    invoke-virtual {v4}, Ljava/net/URL;->getAuthority()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const-string/jumbo v4, "protocol.%s"

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionParameters;->mUrl:Ljava/net/URL;

    invoke-virtual {v4}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v3, v4}, Lcom/amazon/whispersync/dcp/settings/SettingString;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/amazon/whispersync/dcp/settings/SettingString;->getValue()Ljava/lang/String;

    move-result-object v1

    .line 29
    new-instance v3, Lcom/amazon/whispersync/dcp/settings/SettingString;

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionParameters;->mUrl:Ljava/net/URL;

    invoke-virtual {v4}, Ljava/net/URL;->getAuthority()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v5

    const-string v4, "host.%s"

    invoke-static {v4, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iget-object v4, p0, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionParameters;->mUrl:Ljava/net/URL;

    invoke-virtual {v4}, Ljava/net/URL;->getAuthority()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v2, v4}, Lcom/amazon/whispersync/dcp/settings/SettingString;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/amazon/whispersync/dcp/settings/SettingString;->getValue()Ljava/lang/String;

    move-result-object v2

    .line 32
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 33
    invoke-virtual {v0, v2}, Landroid/net/Uri$Builder;->encodedAuthority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 35
    new-instance v1, Ljava/net/URL;

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    return-object v1
.end method

.method public isWithCompression()Z
    .locals 1

    .line 70
    iget-boolean v0, p0, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionParameters;->mWithCompression:Z

    return v0
.end method

.method public isWithIdentification()Z
    .locals 1

    .line 90
    iget-boolean v0, p0, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionParameters;->mWithIdentification:Z

    return v0
.end method

.method public ismWithAuthentication()Z
    .locals 1

    .line 110
    iget-boolean v0, p0, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionParameters;->mWithAuthentication:Z

    return v0
.end method

.method public setConnectivityWaitTimeoutMs(J)V
    .locals 0

    .line 85
    iput-wide p1, p0, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionParameters;->mConnectivityWaitTimeoutMs:J

    return-void
.end method

.method public setIdentifier(Ljava/lang/String;)V
    .locals 0

    .line 105
    iput-object p1, p0, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionParameters;->mIdentifier:Ljava/lang/String;

    return-void
.end method

.method public setMetricName(Ljava/lang/String;)V
    .locals 0

    .line 55
    iput-object p1, p0, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionParameters;->mMetricName:Ljava/lang/String;

    return-void
.end method

.method public setNetworkType(I)V
    .locals 0

    .line 125
    iput p1, p0, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionParameters;->mNetworkType:I

    return-void
.end method

.method public setRetries(I)V
    .locals 0

    .line 65
    iput p1, p0, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionParameters;->mRetries:I

    return-void
.end method

.method public setUrl(Ljava/net/URL;)V
    .locals 0

    .line 45
    iput-object p1, p0, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionParameters;->mUrl:Ljava/net/URL;

    return-void
.end method

.method public setWithCompression(Z)V
    .locals 0

    .line 75
    iput-boolean p1, p0, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionParameters;->mWithCompression:Z

    return-void
.end method

.method public setWithIdentification(Z)V
    .locals 0

    .line 95
    iput-boolean p1, p0, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionParameters;->mWithIdentification:Z

    return-void
.end method

.method public setmWithAuthentication(Z)V
    .locals 0

    .line 115
    iput-boolean p1, p0, Lcom/amazon/whispersync/dcp/framework/iuc/ConnectionParameters;->mWithAuthentication:Z

    return-void
.end method
