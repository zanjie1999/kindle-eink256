.class public abstract Lcom/amazon/kindle/com/amazonaws/AmazonWebServiceRequest;
.super Ljava/lang/Object;
.source "AmazonWebServiceRequest.java"

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field private cloneSource:Lcom/amazon/kindle/com/amazonaws/AmazonWebServiceRequest;

.field private credentials:Lcom/amazon/kindle/com/amazonaws/auth/AWSCredentials;

.field private generalProgressListener:Lcom/amazon/kindle/com/amazonaws/event/ProgressListener;

.field private final requestClientOptions:Lcom/amazon/kindle/com/amazonaws/RequestClientOptions;

.field private requestMetricCollector:Lcom/amazon/kindle/com/amazonaws/metrics/RequestMetricCollector;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Lcom/amazon/kindle/com/amazonaws/RequestClientOptions;

    invoke-direct {v0}, Lcom/amazon/kindle/com/amazonaws/RequestClientOptions;-><init>()V

    iput-object v0, p0, Lcom/amazon/kindle/com/amazonaws/AmazonWebServiceRequest;->requestClientOptions:Lcom/amazon/kindle/com/amazonaws/RequestClientOptions;

    return-void
.end method

.method private setCloneSource(Lcom/amazon/kindle/com/amazonaws/AmazonWebServiceRequest;)V
    .locals 0

    .line 204
    iput-object p1, p0, Lcom/amazon/kindle/com/amazonaws/AmazonWebServiceRequest;->cloneSource:Lcom/amazon/kindle/com/amazonaws/AmazonWebServiceRequest;

    return-void
.end method


# virtual methods
.method public clone()Lcom/amazon/kindle/com/amazonaws/AmazonWebServiceRequest;
    .locals 3

    .line 216
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kindle/com/amazonaws/AmazonWebServiceRequest;

    .line 217
    invoke-direct {v0, p0}, Lcom/amazon/kindle/com/amazonaws/AmazonWebServiceRequest;->setCloneSource(Lcom/amazon/kindle/com/amazonaws/AmazonWebServiceRequest;)V
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 220
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Got a CloneNotSupportedException from Object.clone() even though we\'re Cloneable!"

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 25
    invoke-virtual {p0}, Lcom/amazon/kindle/com/amazonaws/AmazonWebServiceRequest;->clone()Lcom/amazon/kindle/com/amazonaws/AmazonWebServiceRequest;

    move-result-object v0

    return-object v0
.end method

.method protected final copyBaseTo(Lcom/amazon/kindle/com/amazonaws/AmazonWebServiceRequest;)Lcom/amazon/kindle/com/amazonaws/AmazonWebServiceRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/amazon/kindle/com/amazonaws/AmazonWebServiceRequest;",
            ">(TT;)TT;"
        }
    .end annotation

    .line 170
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/AmazonWebServiceRequest;->generalProgressListener:Lcom/amazon/kindle/com/amazonaws/event/ProgressListener;

    invoke-virtual {p1, v0}, Lcom/amazon/kindle/com/amazonaws/AmazonWebServiceRequest;->setGeneralProgressListener(Lcom/amazon/kindle/com/amazonaws/event/ProgressListener;)V

    .line 171
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/AmazonWebServiceRequest;->requestMetricCollector:Lcom/amazon/kindle/com/amazonaws/metrics/RequestMetricCollector;

    invoke-virtual {p1, v0}, Lcom/amazon/kindle/com/amazonaws/AmazonWebServiceRequest;->setRequestMetricCollector(Lcom/amazon/kindle/com/amazonaws/metrics/RequestMetricCollector;)V

    return-object p1
.end method

.method public getCloneRoot()Lcom/amazon/kindle/com/amazonaws/AmazonWebServiceRequest;
    .locals 2

    .line 194
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/AmazonWebServiceRequest;->cloneSource:Lcom/amazon/kindle/com/amazonaws/AmazonWebServiceRequest;

    if-eqz v0, :cond_0

    .line 196
    :goto_0
    invoke-virtual {v0}, Lcom/amazon/kindle/com/amazonaws/AmazonWebServiceRequest;->getCloneSource()Lcom/amazon/kindle/com/amazonaws/AmazonWebServiceRequest;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 197
    invoke-virtual {v0}, Lcom/amazon/kindle/com/amazonaws/AmazonWebServiceRequest;->getCloneSource()Lcom/amazon/kindle/com/amazonaws/AmazonWebServiceRequest;

    move-result-object v0

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public getCloneSource()Lcom/amazon/kindle/com/amazonaws/AmazonWebServiceRequest;
    .locals 1

    .line 186
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/AmazonWebServiceRequest;->cloneSource:Lcom/amazon/kindle/com/amazonaws/AmazonWebServiceRequest;

    return-object v0
.end method

.method public getGeneralProgressListener()Lcom/amazon/kindle/com/amazonaws/event/ProgressListener;
    .locals 1

    .line 143
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/AmazonWebServiceRequest;->generalProgressListener:Lcom/amazon/kindle/com/amazonaws/event/ProgressListener;

    return-object v0
.end method

.method public getRequestClientOptions()Lcom/amazon/kindle/com/amazonaws/RequestClientOptions;
    .locals 1

    .line 82
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/AmazonWebServiceRequest;->requestClientOptions:Lcom/amazon/kindle/com/amazonaws/RequestClientOptions;

    return-object v0
.end method

.method public getRequestCredentials()Lcom/amazon/kindle/com/amazonaws/auth/AWSCredentials;
    .locals 1

    .line 74
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/AmazonWebServiceRequest;->credentials:Lcom/amazon/kindle/com/amazonaws/auth/AWSCredentials;

    return-object v0
.end method

.method public getRequestMetricCollector()Lcom/amazon/kindle/com/amazonaws/metrics/RequestMetricCollector;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 92
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/AmazonWebServiceRequest;->requestMetricCollector:Lcom/amazon/kindle/com/amazonaws/metrics/RequestMetricCollector;

    return-object v0
.end method

.method public setGeneralProgressListener(Lcom/amazon/kindle/com/amazonaws/event/ProgressListener;)V
    .locals 0

    .line 132
    iput-object p1, p0, Lcom/amazon/kindle/com/amazonaws/AmazonWebServiceRequest;->generalProgressListener:Lcom/amazon/kindle/com/amazonaws/event/ProgressListener;

    return-void
.end method

.method public setRequestCredentials(Lcom/amazon/kindle/com/amazonaws/auth/AWSCredentials;)V
    .locals 0

    .line 63
    iput-object p1, p0, Lcom/amazon/kindle/com/amazonaws/AmazonWebServiceRequest;->credentials:Lcom/amazon/kindle/com/amazonaws/auth/AWSCredentials;

    return-void
.end method

.method public setRequestMetricCollector(Lcom/amazon/kindle/com/amazonaws/metrics/RequestMetricCollector;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 104
    iput-object p1, p0, Lcom/amazon/kindle/com/amazonaws/AmazonWebServiceRequest;->requestMetricCollector:Lcom/amazon/kindle/com/amazonaws/metrics/RequestMetricCollector;

    return-void
.end method

.method public withGeneralProgressListener(Lcom/amazon/kindle/com/amazonaws/event/ProgressListener;)Lcom/amazon/kindle/com/amazonaws/AmazonWebServiceRequest;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/amazon/kindle/com/amazonaws/AmazonWebServiceRequest;",
            ">(",
            "Lcom/amazon/kindle/com/amazonaws/event/ProgressListener;",
            ")TT;"
        }
    .end annotation

    .line 157
    invoke-virtual {p0, p1}, Lcom/amazon/kindle/com/amazonaws/AmazonWebServiceRequest;->setGeneralProgressListener(Lcom/amazon/kindle/com/amazonaws/event/ProgressListener;)V

    return-object p0
.end method

.method public withRequestMetricCollector(Lcom/amazon/kindle/com/amazonaws/metrics/RequestMetricCollector;)Lcom/amazon/kindle/com/amazonaws/AmazonWebServiceRequest;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/amazon/kindle/com/amazonaws/AmazonWebServiceRequest;",
            ">(",
            "Lcom/amazon/kindle/com/amazonaws/metrics/RequestMetricCollector;",
            ")TT;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 119
    invoke-virtual {p0, p1}, Lcom/amazon/kindle/com/amazonaws/AmazonWebServiceRequest;->setRequestMetricCollector(Lcom/amazon/kindle/com/amazonaws/metrics/RequestMetricCollector;)V

    return-object p0
.end method
