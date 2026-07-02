.class final Lcom/amazon/kindle/com/amazonaws/retry/PredefinedRetryPolicies$SDKDefaultBackoffStrategy;
.super Ljava/lang/Object;
.source "PredefinedRetryPolicies.java"

# interfaces
.implements Lcom/amazon/kindle/com/amazonaws/retry/RetryPolicy$BackoffStrategy;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kindle/com/amazonaws/retry/PredefinedRetryPolicies;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SDKDefaultBackoffStrategy"
.end annotation


# instance fields
.field private final baseDelayMs:I

.field private final maxDelayMs:I

.field private final random:Ljava/util/Random;


# direct methods
.method private constructor <init>(II)V
    .locals 1

    .line 215
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 210
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    iput-object v0, p0, Lcom/amazon/kindle/com/amazonaws/retry/PredefinedRetryPolicies$SDKDefaultBackoffStrategy;->random:Ljava/util/Random;

    .line 216
    iput p1, p0, Lcom/amazon/kindle/com/amazonaws/retry/PredefinedRetryPolicies$SDKDefaultBackoffStrategy;->baseDelayMs:I

    .line 217
    iput p2, p0, Lcom/amazon/kindle/com/amazonaws/retry/PredefinedRetryPolicies$SDKDefaultBackoffStrategy;->maxDelayMs:I

    return-void
.end method

.method synthetic constructor <init>(IILcom/amazon/kindle/com/amazonaws/retry/PredefinedRetryPolicies$1;)V
    .locals 0

    .line 207
    invoke-direct {p0, p1, p2}, Lcom/amazon/kindle/com/amazonaws/retry/PredefinedRetryPolicies$SDKDefaultBackoffStrategy;-><init>(II)V

    return-void
.end method


# virtual methods
.method public final delayBeforeNextRetry(Lcom/amazon/kindle/com/amazonaws/AmazonWebServiceRequest;Lcom/amazon/kindle/com/amazonaws/AmazonClientException;I)J
    .locals 1

    if-gtz p3, :cond_0

    const-wide/16 p1, 0x0

    return-wide p1

    .line 230
    :cond_0
    iget-object p1, p0, Lcom/amazon/kindle/com/amazonaws/retry/PredefinedRetryPolicies$SDKDefaultBackoffStrategy;->random:Ljava/util/Random;

    iget p2, p0, Lcom/amazon/kindle/com/amazonaws/retry/PredefinedRetryPolicies$SDKDefaultBackoffStrategy;->maxDelayMs:I

    const/4 v0, 0x1

    shl-int p3, v0, p3

    iget v0, p0, Lcom/amazon/kindle/com/amazonaws/retry/PredefinedRetryPolicies$SDKDefaultBackoffStrategy;->baseDelayMs:I

    mul-int p3, p3, v0

    invoke-static {p2, p3}, Ljava/lang/Math;->min(II)I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/util/Random;->nextInt(I)I

    move-result p1

    int-to-long p1, p1

    return-wide p1
.end method
