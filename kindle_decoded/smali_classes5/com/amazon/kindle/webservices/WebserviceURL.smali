.class public Lcom/amazon/kindle/webservices/WebserviceURL;
.super Ljava/lang/Object;
.source "WebserviceURL.java"


# instance fields
.field private baseURL:Ljava/lang/String;

.field private path:Ljava/lang/String;

.field private timeout:J


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;J)V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/amazon/kindle/webservices/WebserviceURL;->baseURL:Ljava/lang/String;

    .line 22
    iput-object p2, p0, Lcom/amazon/kindle/webservices/WebserviceURL;->path:Ljava/lang/String;

    .line 23
    iput-wide p3, p0, Lcom/amazon/kindle/webservices/WebserviceURL;->timeout:J

    return-void
.end method


# virtual methods
.method public getBaseURL()Ljava/lang/String;
    .locals 1

    .line 30
    iget-object v0, p0, Lcom/amazon/kindle/webservices/WebserviceURL;->baseURL:Ljava/lang/String;

    return-object v0
.end method

.method public getFullURL()Ljava/lang/String;
    .locals 2

    .line 51
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/amazon/kindle/webservices/WebserviceURL;->baseURL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/kindle/webservices/WebserviceURL;->path:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPath()Ljava/lang/String;
    .locals 1

    .line 37
    iget-object v0, p0, Lcom/amazon/kindle/webservices/WebserviceURL;->path:Ljava/lang/String;

    return-object v0
.end method

.method public getTimeout()J
    .locals 2

    .line 44
    iget-wide v0, p0, Lcom/amazon/kindle/webservices/WebserviceURL;->timeout:J

    return-wide v0
.end method
