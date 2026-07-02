.class final Lcom/amazon/kindle/com/amazonaws/retry/RetryPolicy$RetryCondition$1;
.super Ljava/lang/Object;
.source "RetryPolicy.java"

# interfaces
.implements Lcom/amazon/kindle/com/amazonaws/retry/RetryPolicy$RetryCondition;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kindle/com/amazonaws/retry/RetryPolicy$RetryCondition;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 145
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public shouldRetry(Lcom/amazon/kindle/com/amazonaws/AmazonWebServiceRequest;Lcom/amazon/kindle/com/amazonaws/AmazonClientException;I)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method
