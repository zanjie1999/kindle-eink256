.class public Lcom/amazon/whispersync/InternalServiceException;
.super Ljava/lang/RuntimeException;
.source "InternalServiceException.java"


# annotations
.annotation runtime Lcom/amazon/whispersync/coral/annotation/AwsQueryError;
    code = "InternalServiceException"
    httpCode = 0x1f4
    type = .enum Lcom/amazon/whispersync/coral/annotation/AwsQueryErrorType;->Receiver:Lcom/amazon/whispersync/coral/annotation/AwsQueryErrorType;
.end annotation

.annotation runtime Lcom/amazon/whispersync/coral/annotation/AwsSoap11Error;
    code = "InternalServiceException"
    httpCode = 0x1f4
    type = .enum Lcom/amazon/whispersync/coral/annotation/AwsErrorType;->Receiver:Lcom/amazon/whispersync/coral/annotation/AwsErrorType;
.end annotation

.annotation runtime Lcom/amazon/whispersync/coral/annotation/AwsSoap12Error;
    code = "InternalServiceException"
    httpCode = 0x1f4
    type = .enum Lcom/amazon/whispersync/coral/annotation/AwsErrorType;->Receiver:Lcom/amazon/whispersync/coral/annotation/AwsErrorType;
.end annotation

.annotation runtime Lcom/amazon/whispersync/coral/annotation/BsfError;
    value = .enum Lcom/amazon/whispersync/coral/annotation/BsfErrorType;->ServiceFailure:Lcom/amazon/whispersync/coral/annotation/BsfErrorType;
.end annotation

.annotation runtime Lcom/amazon/whispersync/coral/annotation/Documentation;
    value = "This exception is thrown if the WhispersyncService hits an internal\n    error while handling the request."
.end annotation

.annotation runtime Lcom/amazon/whispersync/coral/annotation/HttpError;
    httpCode = 0x1f4
.end annotation

.annotation runtime Lcom/amazon/whispersync/coral/annotation/Shape;
.end annotation

.annotation runtime Lcom/amazon/whispersync/coral/annotation/Wrapper;
.end annotation

.annotation runtime Lcom/amazon/whispersync/coral/annotation/XmlName;
    value = "InternalServiceException"
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

    .line 35
    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 0

    .line 38
    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    .line 39
    invoke-virtual {p0, p1}, Ljava/lang/RuntimeException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    return-void
.end method


# virtual methods
.method public getRetryAfter()Ljava/lang/String;
    .locals 1

    .line 43
    iget-object v0, p0, Lcom/amazon/whispersync/InternalServiceException;->retryAfter:Ljava/lang/String;

    return-object v0
.end method

.method public setRetryAfter(Ljava/lang/String;)V
    .locals 0

    .line 47
    iput-object p1, p0, Lcom/amazon/whispersync/InternalServiceException;->retryAfter:Ljava/lang/String;

    return-void
.end method
