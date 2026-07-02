.class public Lcom/amazon/whispersync/ServiceUnavailableException;
.super Ljava/lang/RuntimeException;
.source "ServiceUnavailableException.java"


# annotations
.annotation runtime Lcom/amazon/whispersync/coral/annotation/AwsQueryError;
    code = "ServiceUnavailableException"
    httpCode = 0x1f4
    type = .enum Lcom/amazon/whispersync/coral/annotation/AwsQueryErrorType;->Receiver:Lcom/amazon/whispersync/coral/annotation/AwsQueryErrorType;
.end annotation

.annotation runtime Lcom/amazon/whispersync/coral/annotation/AwsSoap11Error;
    code = "ServiceUnavailableException"
    httpCode = 0x1f4
    type = .enum Lcom/amazon/whispersync/coral/annotation/AwsErrorType;->Receiver:Lcom/amazon/whispersync/coral/annotation/AwsErrorType;
.end annotation

.annotation runtime Lcom/amazon/whispersync/coral/annotation/AwsSoap12Error;
    code = "ServiceUnavailableException"
    httpCode = 0x1f4
    type = .enum Lcom/amazon/whispersync/coral/annotation/AwsErrorType;->Receiver:Lcom/amazon/whispersync/coral/annotation/AwsErrorType;
.end annotation

.annotation runtime Lcom/amazon/whispersync/coral/annotation/BsfError;
    value = .enum Lcom/amazon/whispersync/coral/annotation/BsfErrorType;->ServiceFailure:Lcom/amazon/whispersync/coral/annotation/BsfErrorType;
.end annotation

.annotation runtime Lcom/amazon/whispersync/coral/annotation/Documentation;
    value = "This exception is thrown if the service is unavailable. The requester\n    must try again later, honoring the \"Retry-After\" header included\n    in the response."
.end annotation

.annotation runtime Lcom/amazon/whispersync/coral/annotation/HttpError;
    httpCode = 0x1f7
.end annotation

.annotation runtime Lcom/amazon/whispersync/coral/annotation/Shape;
.end annotation

.annotation runtime Lcom/amazon/whispersync/coral/annotation/Wrapper;
.end annotation

.annotation runtime Lcom/amazon/whispersync/coral/annotation/XmlName;
    value = "ServiceUnavailableException"
.end annotation

.annotation runtime Lcom/amazon/whispersync/coral/annotation/XmlNamespace;
    value = "http://internal.amazon.com/coral/com.amazon.whispersync/"
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x1L


# instance fields
.field private retryAfter:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 0

    .line 39
    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    .line 40
    invoke-virtual {p0, p1}, Ljava/lang/RuntimeException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    return-void
.end method


# virtual methods
.method public getRetryAfter()Ljava/lang/String;
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/amazon/whispersync/ServiceUnavailableException;->retryAfter:Ljava/lang/String;

    return-object v0
.end method

.method public setRetryAfter(Ljava/lang/String;)V
    .locals 0

    .line 48
    iput-object p1, p0, Lcom/amazon/whispersync/ServiceUnavailableException;->retryAfter:Ljava/lang/String;

    return-void
.end method
