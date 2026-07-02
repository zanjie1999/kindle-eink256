.class final Lcom/amazon/kindle/com/amazonaws/util/TimingInfoUnmodifiable;
.super Lcom/amazon/kindle/com/amazonaws/util/TimingInfo;
.source "TimingInfoUnmodifiable.java"


# direct methods
.method constructor <init>(Ljava/lang/Long;JLjava/lang/Long;)V
    .locals 0

    .line 32
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/amazon/kindle/com/amazonaws/util/TimingInfo;-><init>(Ljava/lang/Long;JLjava/lang/Long;)V

    return-void
.end method


# virtual methods
.method public endTiming()Lcom/amazon/kindle/com/amazonaws/util/TimingInfo;
    .locals 1

    .line 53
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
