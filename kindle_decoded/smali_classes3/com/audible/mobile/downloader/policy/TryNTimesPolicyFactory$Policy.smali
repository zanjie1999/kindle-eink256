.class public Lcom/audible/mobile/downloader/policy/TryNTimesPolicyFactory$Policy;
.super Ljava/lang/Object;
.source "TryNTimesPolicyFactory.java"

# interfaces
.implements Lcom/audible/mobile/downloader/policy/RetryPolicy;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/audible/mobile/downloader/policy/TryNTimesPolicyFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Policy"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private final maxTries:I

.field private numTries:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    iput p1, p0, Lcom/audible/mobile/downloader/policy/TryNTimesPolicyFactory$Policy;->maxTries:I

    return-void
.end method


# virtual methods
.method public canRetry()Z
    .locals 2

    .line 73
    iget v0, p0, Lcom/audible/mobile/downloader/policy/TryNTimesPolicyFactory$Policy;->maxTries:I

    iget v1, p0, Lcom/audible/mobile/downloader/policy/TryNTimesPolicyFactory$Policy;->numTries:I

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onInterrupted()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 85
    iget v0, p0, Lcom/audible/mobile/downloader/policy/TryNTimesPolicyFactory$Policy;->numTries:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/audible/mobile/downloader/policy/TryNTimesPolicyFactory$Policy;->numTries:I

    if-lez v0, :cond_0

    return-void

    .line 86
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "onInterrupted called when mTries is already <= 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onStart()V
    .locals 1

    .line 79
    iget v0, p0, Lcom/audible/mobile/downloader/policy/TryNTimesPolicyFactory$Policy;->numTries:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/audible/mobile/downloader/policy/TryNTimesPolicyFactory$Policy;->numTries:I

    return-void
.end method
