.class final Lcom/amazon/ea/metrics/M$1;
.super Ljava/lang/ThreadLocal;
.source "M.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/ea/metrics/M;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/ThreadLocal<",
        "Ljava/util/Deque<",
        "Lcom/amazon/ea/metrics/Profiler;",
        ">;>;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 64
    invoke-direct {p0}, Ljava/lang/ThreadLocal;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic initialValue()Ljava/lang/Object;
    .locals 1

    .line 64
    invoke-virtual {p0}, Lcom/amazon/ea/metrics/M$1;->initialValue()Ljava/util/Deque;

    move-result-object v0

    return-object v0
.end method

.method protected initialValue()Ljava/util/Deque;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Deque<",
            "Lcom/amazon/ea/metrics/Profiler;",
            ">;"
        }
    .end annotation

    .line 67
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    return-object v0
.end method
