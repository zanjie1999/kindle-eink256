.class public Lcom/amazon/messaging/odot/webservices/ConnectionParameters;
.super Ljava/lang/Object;
.source "ConnectionParameters.java"


# instance fields
.field private connectivityWaitTimeoutMs:J

.field private identifier:Ljava/lang/String;

.field private metricName:Ljava/lang/String;

.field private retries:I

.field private url:Ljava/net/URL;

.field private withAuthentication:Z

.field private withCompression:Z

.field private withIdentification:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 20
    iput v0, p0, Lcom/amazon/messaging/odot/webservices/ConnectionParameters;->retries:I

    const/4 v0, 0x0

    .line 21
    iput-boolean v0, p0, Lcom/amazon/messaging/odot/webservices/ConnectionParameters;->withCompression:Z

    const-wide/16 v1, 0x0

    .line 22
    iput-wide v1, p0, Lcom/amazon/messaging/odot/webservices/ConnectionParameters;->connectivityWaitTimeoutMs:J

    .line 23
    iput-boolean v0, p0, Lcom/amazon/messaging/odot/webservices/ConnectionParameters;->withIdentification:Z

    const/4 v1, 0x0

    .line 24
    iput-object v1, p0, Lcom/amazon/messaging/odot/webservices/ConnectionParameters;->identifier:Ljava/lang/String;

    .line 25
    iput-boolean v0, p0, Lcom/amazon/messaging/odot/webservices/ConnectionParameters;->withAuthentication:Z

    return-void
.end method


# virtual methods
.method public getIdentifier()Ljava/lang/String;
    .locals 1

    .line 98
    iget-object v0, p0, Lcom/amazon/messaging/odot/webservices/ConnectionParameters;->identifier:Ljava/lang/String;

    return-object v0
.end method

.method public getMetricName()Ljava/lang/String;
    .locals 1

    .line 58
    iget-object v0, p0, Lcom/amazon/messaging/odot/webservices/ConnectionParameters;->metricName:Ljava/lang/String;

    return-object v0
.end method

.method public getOriginalUrl()Ljava/net/URL;
    .locals 1

    .line 50
    iget-object v0, p0, Lcom/amazon/messaging/odot/webservices/ConnectionParameters;->url:Ljava/net/URL;

    return-object v0
.end method

.method public getRetries()I
    .locals 1

    .line 66
    iget v0, p0, Lcom/amazon/messaging/odot/webservices/ConnectionParameters;->retries:I

    return v0
.end method

.method public getUrl()Ljava/net/URL;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;
        }
    .end annotation

    .line 29
    iget-object v0, p0, Lcom/amazon/messaging/odot/webservices/ConnectionParameters;->url:Ljava/net/URL;

    invoke-virtual {v0}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 40
    iget-object v1, p0, Lcom/amazon/messaging/odot/webservices/ConnectionParameters;->url:Ljava/net/URL;

    invoke-virtual {v1}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v1

    .line 41
    iget-object v2, p0, Lcom/amazon/messaging/odot/webservices/ConnectionParameters;->url:Ljava/net/URL;

    invoke-virtual {v2}, Ljava/net/URL;->getAuthority()Ljava/lang/String;

    move-result-object v2

    .line 43
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 44
    invoke-virtual {v0, v2}, Landroid/net/Uri$Builder;->encodedAuthority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 46
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

    .line 74
    iget-boolean v0, p0, Lcom/amazon/messaging/odot/webservices/ConnectionParameters;->withCompression:Z

    return v0
.end method

.method public isWithIdentification()Z
    .locals 1

    .line 90
    iget-boolean v0, p0, Lcom/amazon/messaging/odot/webservices/ConnectionParameters;->withIdentification:Z

    return v0
.end method

.method public setConnectivityWaitTimeoutMs(J)V
    .locals 0

    .line 86
    iput-wide p1, p0, Lcom/amazon/messaging/odot/webservices/ConnectionParameters;->connectivityWaitTimeoutMs:J

    return-void
.end method

.method public setIdentifier(Ljava/lang/String;)V
    .locals 0

    .line 102
    iput-object p1, p0, Lcom/amazon/messaging/odot/webservices/ConnectionParameters;->identifier:Ljava/lang/String;

    return-void
.end method

.method public setMetricName(Ljava/lang/String;)V
    .locals 0

    .line 62
    iput-object p1, p0, Lcom/amazon/messaging/odot/webservices/ConnectionParameters;->metricName:Ljava/lang/String;

    return-void
.end method

.method public setRetries(I)V
    .locals 0

    .line 70
    iput p1, p0, Lcom/amazon/messaging/odot/webservices/ConnectionParameters;->retries:I

    return-void
.end method

.method public setUrl(Ljava/net/URL;)V
    .locals 0

    .line 54
    iput-object p1, p0, Lcom/amazon/messaging/odot/webservices/ConnectionParameters;->url:Ljava/net/URL;

    return-void
.end method

.method public setWithCompression(Z)V
    .locals 0

    .line 78
    iput-boolean p1, p0, Lcom/amazon/messaging/odot/webservices/ConnectionParameters;->withCompression:Z

    return-void
.end method

.method public setWithIdentification(Z)V
    .locals 0

    .line 94
    iput-boolean p1, p0, Lcom/amazon/messaging/odot/webservices/ConnectionParameters;->withIdentification:Z

    return-void
.end method

.method public setmWithAuthentication(Z)V
    .locals 0

    .line 110
    iput-boolean p1, p0, Lcom/amazon/messaging/odot/webservices/ConnectionParameters;->withAuthentication:Z

    return-void
.end method
