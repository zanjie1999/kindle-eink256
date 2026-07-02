.class final Lcom/amazon/kcp/util/Utils$1;
.super Ljava/lang/Object;
.source "Utils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/util/Utils;->debouncedLogPerformanceMarkerForQA(Lcom/amazon/kindle/performance/KindlePerformanceConstants;ZJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$isStartMarker:Z

.field final synthetic val$tag:Lcom/amazon/kindle/performance/KindlePerformanceConstants;

.field final synthetic val$time:J


# direct methods
.method constructor <init>(Lcom/amazon/kindle/performance/KindlePerformanceConstants;ZJ)V
    .locals 0

    .line 890
    iput-object p1, p0, Lcom/amazon/kcp/util/Utils$1;->val$tag:Lcom/amazon/kindle/performance/KindlePerformanceConstants;

    iput-boolean p2, p0, Lcom/amazon/kcp/util/Utils$1;->val$isStartMarker:Z

    iput-wide p3, p0, Lcom/amazon/kcp/util/Utils$1;->val$time:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 893
    iget-object v0, p0, Lcom/amazon/kcp/util/Utils$1;->val$tag:Lcom/amazon/kindle/performance/KindlePerformanceConstants;

    iget-boolean v1, p0, Lcom/amazon/kcp/util/Utils$1;->val$isStartMarker:Z

    iget-wide v2, p0, Lcom/amazon/kcp/util/Utils$1;->val$time:J

    invoke-static {v0, v1, v2, v3}, Lcom/amazon/kindle/util/PerfHelper;->LogPerformanceMarkerForQA(Lcom/amazon/kindle/performance/KindlePerformanceConstants;ZJ)V

    return-void
.end method
