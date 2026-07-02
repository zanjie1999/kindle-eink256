.class abstract Lcom/amazon/weblab/mobile/cache/LocalPolicy;
.super Lcom/amazon/weblab/mobile/cache/CachePolicy;
.source "LocalPolicy.java"


# instance fields
.field mTtl:Lcom/amazon/weblab/mobile/settings/Interval;


# direct methods
.method public constructor <init>(Lcom/amazon/weblab/mobile/settings/Interval;)V
    .locals 1

    .line 14
    invoke-direct {p0}, Lcom/amazon/weblab/mobile/cache/CachePolicy;-><init>()V

    if-eqz p1, :cond_0

    .line 18
    iput-object p1, p0, Lcom/amazon/weblab/mobile/cache/LocalPolicy;->mTtl:Lcom/amazon/weblab/mobile/settings/Interval;

    return-void

    .line 16
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v0, "ttl can\'t be null."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
