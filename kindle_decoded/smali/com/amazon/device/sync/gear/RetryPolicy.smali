.class public interface abstract Lcom/amazon/device/sync/gear/RetryPolicy;
.super Ljava/lang/Object;
.source "RetryPolicy.java"


# static fields
.field public static final NONE:Lcom/amazon/device/sync/gear/RetryPolicy;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 7
    new-instance v0, Lcom/amazon/device/sync/gear/RetryPolicy$1;

    invoke-direct {v0}, Lcom/amazon/device/sync/gear/RetryPolicy$1;-><init>()V

    sput-object v0, Lcom/amazon/device/sync/gear/RetryPolicy;->NONE:Lcom/amazon/device/sync/gear/RetryPolicy;

    return-void
.end method


# virtual methods
.method public abstract canRetry(Ljava/lang/Throwable;)Z
.end method

.method public abstract getWaitTime()J
.end method
