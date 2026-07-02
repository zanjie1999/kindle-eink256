.class public Lcom/amazon/kcp/debug/LauncherTimerMetricManager;
.super Ljava/lang/Object;
.source "LauncherTimerMetricManager.java"


# static fields
.field private static final Instance:Lcom/amazon/kcp/debug/LauncherTimerMetricManager;

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private startTime:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 20
    const-class v0, Lcom/amazon/kcp/debug/LauncherTimerMetricManager;

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kcp/debug/LauncherTimerMetricManager;->TAG:Ljava/lang/String;

    .line 22
    new-instance v0, Lcom/amazon/kcp/debug/LauncherTimerMetricManager;

    invoke-direct {v0}, Lcom/amazon/kcp/debug/LauncherTimerMetricManager;-><init>()V

    sput-object v0, Lcom/amazon/kcp/debug/LauncherTimerMetricManager;->Instance:Lcom/amazon/kcp/debug/LauncherTimerMetricManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    .line 23
    iput-wide v0, p0, Lcom/amazon/kcp/debug/LauncherTimerMetricManager;->startTime:J

    return-void
.end method

.method public static final getInstance()Lcom/amazon/kcp/debug/LauncherTimerMetricManager;
    .locals 1

    .line 28
    sget-object v0, Lcom/amazon/kcp/debug/LauncherTimerMetricManager;->Instance:Lcom/amazon/kcp/debug/LauncherTimerMetricManager;

    return-object v0
.end method


# virtual methods
.method public startTimerMetric(J)V
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-gez v2, :cond_0

    const-wide/16 p1, -0x1

    .line 36
    iput-wide p1, p0, Lcom/amazon/kcp/debug/LauncherTimerMetricManager;->startTime:J

    return-void

    .line 40
    :cond_0
    iput-wide p1, p0, Lcom/amazon/kcp/debug/LauncherTimerMetricManager;->startTime:J

    return-void
.end method
