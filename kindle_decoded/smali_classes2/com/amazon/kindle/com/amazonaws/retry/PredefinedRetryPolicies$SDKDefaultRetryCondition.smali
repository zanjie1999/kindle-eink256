.class public Lcom/amazon/kindle/com/amazonaws/retry/PredefinedRetryPolicies$SDKDefaultRetryCondition;
.super Ljava/lang/Object;
.source "PredefinedRetryPolicies.java"

# interfaces
.implements Lcom/amazon/kindle/com/amazonaws/retry/RetryPolicy$RetryCondition;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kindle/com/amazonaws/retry/PredefinedRetryPolicies;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SDKDefaultRetryCondition"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 152
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public shouldRetry(Lcom/amazon/kindle/com/amazonaws/AmazonWebServiceRequest;Lcom/amazon/kindle/com/amazonaws/AmazonClientException;I)Z
    .locals 1

    .line 161
    invoke-virtual {p2}, Ljava/lang/RuntimeException;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    instance-of p1, p1, Ljava/io/IOException;

    const/4 p3, 0x1

    if-eqz p1, :cond_0

    .line 162
    invoke-virtual {p2}, Ljava/lang/RuntimeException;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    instance-of p1, p1, Ljava/io/InterruptedIOException;

    if-nez p1, :cond_0

    return p3

    .line 166
    :cond_0
    instance-of p1, p2, Lcom/amazon/kindle/com/amazonaws/AmazonServiceException;

    if-eqz p1, :cond_4

    .line 167
    check-cast p2, Lcom/amazon/kindle/com/amazonaws/AmazonServiceException;

    .line 175
    invoke-virtual {p2}, Lcom/amazon/kindle/com/amazonaws/AmazonServiceException;->getStatusCode()I

    move-result p1

    const/16 v0, 0x1f4

    if-eq p1, v0, :cond_3

    const/16 v0, 0x1f7

    if-eq p1, v0, :cond_3

    const/16 v0, 0x1f6

    if-eq p1, v0, :cond_3

    const/16 v0, 0x1f8

    if-ne p1, v0, :cond_1

    goto :goto_0

    .line 189
    :cond_1
    invoke-static {p2}, Lcom/amazon/kindle/com/amazonaws/retry/RetryUtils;->isThrottlingException(Lcom/amazon/kindle/com/amazonaws/AmazonServiceException;)Z

    move-result p1

    if-eqz p1, :cond_2

    return p3

    .line 197
    :cond_2
    invoke-static {p2}, Lcom/amazon/kindle/com/amazonaws/retry/RetryUtils;->isClockSkewError(Lcom/amazon/kindle/com/amazonaws/AmazonServiceException;)Z

    move-result p1

    if-eqz p1, :cond_4

    :cond_3
    :goto_0
    return p3

    :cond_4
    const/4 p1, 0x0

    return p1
.end method
