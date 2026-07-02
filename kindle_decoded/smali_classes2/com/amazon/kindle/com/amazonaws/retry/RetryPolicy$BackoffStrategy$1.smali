.class final Lcom/amazon/kindle/com/amazonaws/retry/RetryPolicy$BackoffStrategy$1;
.super Ljava/lang/Object;
.source "RetryPolicy.java"

# interfaces
.implements Lcom/amazon/kindle/com/amazonaws/retry/RetryPolicy$BackoffStrategy;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kindle/com/amazonaws/retry/RetryPolicy$BackoffStrategy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 200
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public delayBeforeNextRetry(Lcom/amazon/kindle/com/amazonaws/AmazonWebServiceRequest;Lcom/amazon/kindle/com/amazonaws/AmazonClientException;I)J
    .locals 0

    const-wide/16 p1, 0x0

    return-wide p1
.end method
