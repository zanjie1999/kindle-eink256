.class public Lcom/amazon/kindle/com/amazonaws/retry/PredefinedRetryPolicies;
.super Ljava/lang/Object;
.source "PredefinedRetryPolicies.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kindle/com/amazonaws/retry/PredefinedRetryPolicies$SDKDefaultBackoffStrategy;,
        Lcom/amazon/kindle/com/amazonaws/retry/PredefinedRetryPolicies$SDKDefaultRetryCondition;
    }
.end annotation


# static fields
.field private static final BASE_DELAY_IN_MILLISECONDS:I = 0x64

.field public static final DEFAULT:Lcom/amazon/kindle/com/amazonaws/retry/RetryPolicy;

.field public static final DEFAULT_BACKOFF_STRATEGY:Lcom/amazon/kindle/com/amazonaws/retry/RetryPolicy$BackoffStrategy;

.field public static final DEFAULT_RETRY_CONDITION:Lcom/amazon/kindle/com/amazonaws/retry/RetryPolicy$RetryCondition;

.field private static final MAX_BACKOFF_IN_MILLISECONDS:I = 0x4e20

.field public static final NO_RETRY_POLICY:Lcom/amazon/kindle/com/amazonaws/retry/RetryPolicy;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 36
    new-instance v0, Lcom/amazon/kindle/com/amazonaws/retry/RetryPolicy;

    sget-object v1, Lcom/amazon/kindle/com/amazonaws/retry/RetryPolicy$RetryCondition;->NO_RETRY_CONDITION:Lcom/amazon/kindle/com/amazonaws/retry/RetryPolicy$RetryCondition;

    sget-object v2, Lcom/amazon/kindle/com/amazonaws/retry/RetryPolicy$BackoffStrategy;->NO_DELAY:Lcom/amazon/kindle/com/amazonaws/retry/RetryPolicy$BackoffStrategy;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3, v3}, Lcom/amazon/kindle/com/amazonaws/retry/RetryPolicy;-><init>(Lcom/amazon/kindle/com/amazonaws/retry/RetryPolicy$RetryCondition;Lcom/amazon/kindle/com/amazonaws/retry/RetryPolicy$BackoffStrategy;IZ)V

    sput-object v0, Lcom/amazon/kindle/com/amazonaws/retry/PredefinedRetryPolicies;->NO_RETRY_POLICY:Lcom/amazon/kindle/com/amazonaws/retry/RetryPolicy;

    .line 77
    new-instance v0, Lcom/amazon/kindle/com/amazonaws/retry/PredefinedRetryPolicies$SDKDefaultRetryCondition;

    invoke-direct {v0}, Lcom/amazon/kindle/com/amazonaws/retry/PredefinedRetryPolicies$SDKDefaultRetryCondition;-><init>()V

    sput-object v0, Lcom/amazon/kindle/com/amazonaws/retry/PredefinedRetryPolicies;->DEFAULT_RETRY_CONDITION:Lcom/amazon/kindle/com/amazonaws/retry/RetryPolicy$RetryCondition;

    .line 84
    new-instance v0, Lcom/amazon/kindle/com/amazonaws/retry/PredefinedRetryPolicies$SDKDefaultBackoffStrategy;

    const/16 v1, 0x64

    const/16 v2, 0x4e20

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/amazon/kindle/com/amazonaws/retry/PredefinedRetryPolicies$SDKDefaultBackoffStrategy;-><init>(IILcom/amazon/kindle/com/amazonaws/retry/PredefinedRetryPolicies$1;)V

    sput-object v0, Lcom/amazon/kindle/com/amazonaws/retry/PredefinedRetryPolicies;->DEFAULT_BACKOFF_STRATEGY:Lcom/amazon/kindle/com/amazonaws/retry/RetryPolicy$BackoffStrategy;

    .line 88
    invoke-static {}, Lcom/amazon/kindle/com/amazonaws/retry/PredefinedRetryPolicies;->getDefaultRetryPolicy()Lcom/amazon/kindle/com/amazonaws/retry/RetryPolicy;

    move-result-object v0

    sput-object v0, Lcom/amazon/kindle/com/amazonaws/retry/PredefinedRetryPolicies;->DEFAULT:Lcom/amazon/kindle/com/amazonaws/retry/RetryPolicy;

    .line 89
    invoke-static {}, Lcom/amazon/kindle/com/amazonaws/retry/PredefinedRetryPolicies;->getDynamoDBDefaultRetryPolicy()Lcom/amazon/kindle/com/amazonaws/retry/RetryPolicy;

    return-void
.end method

.method public static getDefaultRetryPolicy()Lcom/amazon/kindle/com/amazonaws/retry/RetryPolicy;
    .locals 5

    .line 99
    new-instance v0, Lcom/amazon/kindle/com/amazonaws/retry/RetryPolicy;

    sget-object v1, Lcom/amazon/kindle/com/amazonaws/retry/PredefinedRetryPolicies;->DEFAULT_RETRY_CONDITION:Lcom/amazon/kindle/com/amazonaws/retry/RetryPolicy$RetryCondition;

    sget-object v2, Lcom/amazon/kindle/com/amazonaws/retry/PredefinedRetryPolicies;->DEFAULT_BACKOFF_STRATEGY:Lcom/amazon/kindle/com/amazonaws/retry/RetryPolicy$BackoffStrategy;

    const/4 v3, 0x3

    const/4 v4, 0x1

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/amazon/kindle/com/amazonaws/retry/RetryPolicy;-><init>(Lcom/amazon/kindle/com/amazonaws/retry/RetryPolicy$RetryCondition;Lcom/amazon/kindle/com/amazonaws/retry/RetryPolicy$BackoffStrategy;IZ)V

    return-object v0
.end method

.method public static getDynamoDBDefaultRetryPolicy()Lcom/amazon/kindle/com/amazonaws/retry/RetryPolicy;
    .locals 5

    .line 112
    new-instance v0, Lcom/amazon/kindle/com/amazonaws/retry/RetryPolicy;

    sget-object v1, Lcom/amazon/kindle/com/amazonaws/retry/PredefinedRetryPolicies;->DEFAULT_RETRY_CONDITION:Lcom/amazon/kindle/com/amazonaws/retry/RetryPolicy$RetryCondition;

    sget-object v2, Lcom/amazon/kindle/com/amazonaws/retry/PredefinedRetryPolicies;->DEFAULT_BACKOFF_STRATEGY:Lcom/amazon/kindle/com/amazonaws/retry/RetryPolicy$BackoffStrategy;

    const/16 v3, 0xa

    const/4 v4, 0x1

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/amazon/kindle/com/amazonaws/retry/RetryPolicy;-><init>(Lcom/amazon/kindle/com/amazonaws/retry/RetryPolicy$RetryCondition;Lcom/amazon/kindle/com/amazonaws/retry/RetryPolicy$BackoffStrategy;IZ)V

    return-object v0
.end method
