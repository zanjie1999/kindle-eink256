.class public Lcom/android/volley/DefaultRetryPolicy;
.super Ljava/lang/Object;
.source "DefaultRetryPolicy.java"

# interfaces
.implements Lcom/android/volley/RetryPolicy;


# instance fields
.field private final mBackoffMultiplier:F

.field private mCurrentRetryCount:I

.field private mCurrentTimeoutMs:I

.field private final mMaxNumRetries:I


# direct methods
.method public constructor <init>()V
    .locals 3

    const/16 v0, 0x9c4

    const/4 v1, 0x1

    const/high16 v2, 0x3f800000    # 1.0f

    .line 48
    invoke-direct {p0, v0, v1, v2}, Lcom/android/volley/DefaultRetryPolicy;-><init>(IIF)V

    return-void
.end method

.method public constructor <init>(IIF)V
    .locals 0

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput p1, p0, Lcom/android/volley/DefaultRetryPolicy;->mCurrentTimeoutMs:I

    .line 59
    iput p2, p0, Lcom/android/volley/DefaultRetryPolicy;->mMaxNumRetries:I

    .line 60
    iput p3, p0, Lcom/android/volley/DefaultRetryPolicy;->mBackoffMultiplier:F

    return-void
.end method


# virtual methods
.method public getCurrentRetryCount()I
    .locals 1

    .line 76
    iget v0, p0, Lcom/android/volley/DefaultRetryPolicy;->mCurrentRetryCount:I

    return v0
.end method

.method public getCurrentTimeout()I
    .locals 1

    .line 68
    iget v0, p0, Lcom/android/volley/DefaultRetryPolicy;->mCurrentTimeoutMs:I

    return v0
.end method

.method protected hasAttemptRemaining()Z
    .locals 2

    .line 103
    iget v0, p0, Lcom/android/volley/DefaultRetryPolicy;->mCurrentRetryCount:I

    iget v1, p0, Lcom/android/volley/DefaultRetryPolicy;->mMaxNumRetries:I

    if-gt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public retry(Lcom/android/volley/VolleyError;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/volley/VolleyError;
        }
    .end annotation

    .line 92
    iget v0, p0, Lcom/android/volley/DefaultRetryPolicy;->mCurrentRetryCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/volley/DefaultRetryPolicy;->mCurrentRetryCount:I

    .line 93
    iget v0, p0, Lcom/android/volley/DefaultRetryPolicy;->mCurrentTimeoutMs:I

    int-to-float v1, v0

    int-to-float v0, v0

    iget v2, p0, Lcom/android/volley/DefaultRetryPolicy;->mBackoffMultiplier:F

    mul-float v0, v0, v2

    add-float/2addr v1, v0

    float-to-int v0, v1

    iput v0, p0, Lcom/android/volley/DefaultRetryPolicy;->mCurrentTimeoutMs:I

    .line 94
    invoke-virtual {p0}, Lcom/android/volley/DefaultRetryPolicy;->hasAttemptRemaining()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 95
    :cond_0
    throw p1
.end method
