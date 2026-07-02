.class public Lcom/amazon/whisperjoin/util/Clock;
.super Ljava/lang/Object;
.source "Clock.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public elapsedRealtime()J
    .locals 2

    .line 13
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    return-wide v0
.end method
