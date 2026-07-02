.class public final Lcom/amazon/kindle/com/amazonaws/retry/RetryPolicy;
.super Ljava/lang/Object;
.source "RetryPolicy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kindle/com/amazonaws/retry/RetryPolicy$BackoffStrategy;,
        Lcom/amazon/kindle/com/amazonaws/retry/RetryPolicy$RetryCondition;
    }
.end annotation


# instance fields
.field private final backoffStrategy:Lcom/amazon/kindle/com/amazonaws/retry/RetryPolicy$BackoffStrategy;

.field private final honorMaxErrorRetryInClientConfig:Z

.field private final maxErrorRetry:I

.field private final retryCondition:Lcom/amazon/kindle/com/amazonaws/retry/RetryPolicy$RetryCondition;


# direct methods
.method public constructor <init>(Lcom/amazon/kindle/com/amazonaws/retry/RetryPolicy$RetryCondition;Lcom/amazon/kindle/com/amazonaws/retry/RetryPolicy$BackoffStrategy;IZ)V
    .locals 0

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    .line 81
    sget-object p1, Lcom/amazon/kindle/com/amazonaws/retry/PredefinedRetryPolicies;->DEFAULT_RETRY_CONDITION:Lcom/amazon/kindle/com/amazonaws/retry/RetryPolicy$RetryCondition;

    :cond_0
    if-nez p2, :cond_1

    .line 84
    sget-object p2, Lcom/amazon/kindle/com/amazonaws/retry/PredefinedRetryPolicies;->DEFAULT_BACKOFF_STRATEGY:Lcom/amazon/kindle/com/amazonaws/retry/RetryPolicy$BackoffStrategy;

    :cond_1
    if-ltz p3, :cond_2

    .line 91
    iput-object p1, p0, Lcom/amazon/kindle/com/amazonaws/retry/RetryPolicy;->retryCondition:Lcom/amazon/kindle/com/amazonaws/retry/RetryPolicy$RetryCondition;

    .line 92
    iput-object p2, p0, Lcom/amazon/kindle/com/amazonaws/retry/RetryPolicy;->backoffStrategy:Lcom/amazon/kindle/com/amazonaws/retry/RetryPolicy$BackoffStrategy;

    .line 93
    iput p3, p0, Lcom/amazon/kindle/com/amazonaws/retry/RetryPolicy;->maxErrorRetry:I

    .line 94
    iput-boolean p4, p0, Lcom/amazon/kindle/com/amazonaws/retry/RetryPolicy;->honorMaxErrorRetryInClientConfig:Z

    return-void

    .line 87
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Please provide a non-negative value for maxErrorRetry."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public getBackoffStrategy()Lcom/amazon/kindle/com/amazonaws/retry/RetryPolicy$BackoffStrategy;
    .locals 1

    .line 112
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/retry/RetryPolicy;->backoffStrategy:Lcom/amazon/kindle/com/amazonaws/retry/RetryPolicy$BackoffStrategy;

    return-object v0
.end method

.method public getMaxErrorRetry()I
    .locals 1

    .line 121
    iget v0, p0, Lcom/amazon/kindle/com/amazonaws/retry/RetryPolicy;->maxErrorRetry:I

    return v0
.end method

.method public getRetryCondition()Lcom/amazon/kindle/com/amazonaws/retry/RetryPolicy$RetryCondition;
    .locals 1

    .line 103
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/retry/RetryPolicy;->retryCondition:Lcom/amazon/kindle/com/amazonaws/retry/RetryPolicy$RetryCondition;

    return-object v0
.end method

.method public isMaxErrorRetryInClientConfigHonored()Z
    .locals 1

    .line 133
    iget-boolean v0, p0, Lcom/amazon/kindle/com/amazonaws/retry/RetryPolicy;->honorMaxErrorRetryInClientConfig:Z

    return v0
.end method
