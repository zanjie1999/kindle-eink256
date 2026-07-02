.class public Lcom/audible/mobile/downloader/policy/TryNTimesPolicyFactory;
.super Ljava/lang/Object;
.source "TryNTimesPolicyFactory.java"

# interfaces
.implements Lcom/audible/mobile/downloader/policy/RetryPolicyFactory;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/audible/mobile/downloader/policy/TryNTimesPolicyFactory$Policy;
    }
.end annotation


# instance fields
.field private numTimes:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 29
    iput v0, p0, Lcom/audible/mobile/downloader/policy/TryNTimesPolicyFactory;->numTimes:I

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    invoke-virtual {p0, p1}, Lcom/audible/mobile/downloader/policy/TryNTimesPolicyFactory;->setNumTimes(I)V

    return-void
.end method


# virtual methods
.method public getPolicy()Lcom/audible/mobile/downloader/policy/RetryPolicy;
    .locals 2

    .line 55
    new-instance v0, Lcom/audible/mobile/downloader/policy/TryNTimesPolicyFactory$Policy;

    iget v1, p0, Lcom/audible/mobile/downloader/policy/TryNTimesPolicyFactory;->numTimes:I

    invoke-direct {v0, v1}, Lcom/audible/mobile/downloader/policy/TryNTimesPolicyFactory$Policy;-><init>(I)V

    return-object v0
.end method

.method public setNumTimes(I)V
    .locals 0

    .line 49
    iput p1, p0, Lcom/audible/mobile/downloader/policy/TryNTimesPolicyFactory;->numTimes:I

    return-void
.end method
