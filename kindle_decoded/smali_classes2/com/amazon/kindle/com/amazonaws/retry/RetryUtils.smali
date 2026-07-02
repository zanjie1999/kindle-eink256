.class public Lcom/amazon/kindle/com/amazonaws/retry/RetryUtils;
.super Ljava/lang/Object;
.source "RetryUtils.java"


# direct methods
.method public static isClockSkewError(Lcom/amazon/kindle/com/amazonaws/AmazonServiceException;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 69
    :cond_0
    invoke-virtual {p0}, Lcom/amazon/kindle/com/amazonaws/AmazonServiceException;->getErrorCode()Ljava/lang/String;

    move-result-object p0

    const-string v1, "RequestTimeTooSkewed"

    .line 70
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "RequestExpired"

    .line 71
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "InvalidSignatureException"

    .line 72
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "SignatureDoesNotMatch"

    .line 73
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :cond_2
    return v0
.end method

.method public static isInterrupted(Ljava/lang/Throwable;)Z
    .locals 2

    .line 83
    instance-of v0, p0, Lcom/amazon/kindle/com/amazonaws/AbortedException;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 86
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 87
    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    .line 94
    instance-of v0, p0, Ljava/lang/InterruptedException;

    if-nez v0, :cond_1

    instance-of v0, p0, Ljava/io/InterruptedIOException;

    if-eqz v0, :cond_2

    instance-of p0, p0, Ljava/net/SocketTimeoutException;

    if-nez p0, :cond_2

    :cond_1
    return v1

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method public static isThrottlingException(Lcom/amazon/kindle/com/amazonaws/AmazonServiceException;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 38
    :cond_0
    invoke-virtual {p0}, Lcom/amazon/kindle/com/amazonaws/AmazonServiceException;->getErrorCode()Ljava/lang/String;

    move-result-object p0

    const-string v1, "Throttling"

    .line 39
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "ThrottlingException"

    .line 40
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "ProvisionedThroughputExceededException"

    .line 41
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :cond_2
    return v0
.end method
