.class public Lcom/amazon/whispersync/ResourceNotAvailableException;
.super Ljava/lang/RuntimeException;
.source "ResourceNotAvailableException.java"


# annotations
.annotation runtime Lcom/amazon/whispersync/coral/annotation/AwsQueryError;
    code = "ResourceNotAvailableException"
    httpCode = 0x190
    type = .enum Lcom/amazon/whispersync/coral/annotation/AwsQueryErrorType;->Sender:Lcom/amazon/whispersync/coral/annotation/AwsQueryErrorType;
.end annotation

.annotation runtime Lcom/amazon/whispersync/coral/annotation/AwsSoap11Error;
    code = "ResourceNotAvailableException"
    httpCode = 0x1f4
    type = .enum Lcom/amazon/whispersync/coral/annotation/AwsErrorType;->Sender:Lcom/amazon/whispersync/coral/annotation/AwsErrorType;
.end annotation

.annotation runtime Lcom/amazon/whispersync/coral/annotation/AwsSoap12Error;
    code = "ResourceNotAvailableException"
    httpCode = 0x190
    type = .enum Lcom/amazon/whispersync/coral/annotation/AwsErrorType;->Sender:Lcom/amazon/whispersync/coral/annotation/AwsErrorType;
.end annotation

.annotation runtime Lcom/amazon/whispersync/coral/annotation/BsfError;
    value = .enum Lcom/amazon/whispersync/coral/annotation/BsfErrorType;->BadArgs:Lcom/amazon/whispersync/coral/annotation/BsfErrorType;
.end annotation

.annotation runtime Lcom/amazon/whispersync/coral/annotation/Documentation;
    value = "This exception is thrown if the service is unable to find the requested\n    resource since it either does not exist or it was deleted. The\n    \"message\" or \"reason\" attribute will specify more information on it."
.end annotation

.annotation runtime Lcom/amazon/whispersync/coral/annotation/HttpError;
    httpCode = 0x194
.end annotation

.annotation runtime Lcom/amazon/whispersync/coral/annotation/Shape;
.end annotation

.annotation runtime Lcom/amazon/whispersync/coral/annotation/Wrapper;
.end annotation

.annotation runtime Lcom/amazon/whispersync/coral/annotation/XmlName;
    value = "ResourceNotAvailableException"
.end annotation

.annotation runtime Lcom/amazon/whispersync/coral/annotation/XmlNamespace;
    value = "http://internal.amazon.com/coral/com.amazon.whispersync/"
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x1L


# instance fields
.field private reason:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 44
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    .line 48
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 49
    invoke-virtual {p0, p2}, Ljava/lang/RuntimeException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

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
.method public getMessage()Ljava/lang/String;
    .locals 1

    .line 62
    invoke-super {p0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getReason()Ljava/lang/String;
    .locals 1

    .line 52
    iget-object v0, p0, Lcom/amazon/whispersync/ResourceNotAvailableException;->reason:Ljava/lang/String;

    return-object v0
.end method

.method public setReason(Ljava/lang/String;)V
    .locals 0

    .line 56
    iput-object p1, p0, Lcom/amazon/whispersync/ResourceNotAvailableException;->reason:Ljava/lang/String;

    return-void
.end method
