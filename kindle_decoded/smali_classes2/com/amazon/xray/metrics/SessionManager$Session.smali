.class Lcom/amazon/xray/metrics/SessionManager$Session;
.super Ljava/lang/Object;
.source "SessionManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/xray/metrics/SessionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Session"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/xray/metrics/SessionManager$Session$TimeoutRunnable;
    }
.end annotation


# static fields
.field private static final HANDLER:Landroid/os/Handler;


# instance fields
.field private final id:Ljava/lang/String;

.field private final metric:Lcom/amazon/xray/metrics/Metric;

.field private timeoutRunnable:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 275
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/amazon/xray/metrics/SessionManager$Session;->HANDLER:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 289
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 290
    iput-object p1, p0, Lcom/amazon/xray/metrics/SessionManager$Session;->id:Ljava/lang/String;

    .line 291
    invoke-static {p2}, Lcom/amazon/xray/metrics/BookMetricUtil;->createCurrentBookMetric(Ljava/lang/String;)Lcom/amazon/xray/metrics/Metric;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/xray/metrics/SessionManager$Session;->metric:Lcom/amazon/xray/metrics/Metric;

    .line 292
    invoke-static {p1}, Lcom/amazon/xray/metrics/SessionManager;->initMetrics(Lcom/amazon/xray/metrics/Metric;)V

    .line 293
    invoke-virtual {p0}, Lcom/amazon/xray/metrics/SessionManager$Session;->renew()V

    return-void
.end method

.method static synthetic access$400(Lcom/amazon/xray/metrics/SessionManager$Session;)Ljava/lang/String;
    .locals 0

    .line 273
    iget-object p0, p0, Lcom/amazon/xray/metrics/SessionManager$Session;->id:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public close()V
    .locals 2

    .line 328
    iget-object v0, p0, Lcom/amazon/xray/metrics/SessionManager$Session;->timeoutRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 329
    sget-object v1, Lcom/amazon/xray/metrics/SessionManager$Session;->HANDLER:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 331
    :cond_0
    iget-object v0, p0, Lcom/amazon/xray/metrics/SessionManager$Session;->metric:Lcom/amazon/xray/metrics/Metric;

    invoke-virtual {v0}, Lcom/amazon/xray/metrics/Metric;->close()V

    return-void
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 300
    iget-object v0, p0, Lcom/amazon/xray/metrics/SessionManager$Session;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getMetric()Lcom/amazon/xray/metrics/Metric;
    .locals 1

    .line 307
    iget-object v0, p0, Lcom/amazon/xray/metrics/SessionManager$Session;->metric:Lcom/amazon/xray/metrics/Metric;

    return-object v0
.end method

.method public renew()V
    .locals 4

    .line 315
    iget-object v0, p0, Lcom/amazon/xray/metrics/SessionManager$Session;->timeoutRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 316
    sget-object v1, Lcom/amazon/xray/metrics/SessionManager$Session;->HANDLER:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 318
    :cond_0
    new-instance v0, Lcom/amazon/xray/metrics/SessionManager$Session$TimeoutRunnable;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/amazon/xray/metrics/SessionManager$Session$TimeoutRunnable;-><init>(Lcom/amazon/xray/metrics/SessionManager$Session;Lcom/amazon/xray/metrics/SessionManager$1;)V

    iput-object v0, p0, Lcom/amazon/xray/metrics/SessionManager$Session;->timeoutRunnable:Ljava/lang/Runnable;

    .line 321
    :goto_0
    sget-object v0, Lcom/amazon/xray/metrics/SessionManager$Session;->HANDLER:Landroid/os/Handler;

    iget-object v1, p0, Lcom/amazon/xray/metrics/SessionManager$Session;->timeoutRunnable:Ljava/lang/Runnable;

    const-wide/32 v2, 0x1b7740

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
