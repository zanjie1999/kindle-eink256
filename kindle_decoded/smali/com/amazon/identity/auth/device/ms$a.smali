.class final Lcom/amazon/identity/auth/device/ms$a;
.super Lcom/amazon/identity/auth/device/ms;
.source "DCP"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/identity/auth/device/ms;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "com.amazon.identity.auth.device.ms$a"


# instance fields
.field private final lx:Lcom/amazon/identity/auth/device/mr;

.field private uY:Ljava/lang/String;

.field private vb:Z

.field private final vm:Ljava/lang/String;

.field private vn:J

.field private vo:J


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/amazon/identity/auth/device/mr;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 40
    invoke-direct {p0}, Lcom/amazon/identity/auth/device/ms;-><init>()V

    const/4 v0, 0x0

    .line 35
    iput-boolean v0, p0, Lcom/amazon/identity/auth/device/ms$a;->vb:Z

    .line 41
    iput-object p1, p0, Lcom/amazon/identity/auth/device/ms$a;->lx:Lcom/amazon/identity/auth/device/mr;

    .line 42
    iput-object p2, p0, Lcom/amazon/identity/auth/device/ms$a;->vm:Ljava/lang/String;

    .line 43
    iput-object p3, p0, Lcom/amazon/identity/auth/device/ms$a;->uY:Ljava/lang/String;

    const-wide/16 p1, -0x1

    .line 44
    iput-wide p1, p0, Lcom/amazon/identity/auth/device/ms$a;->vn:J

    .line 45
    iput-wide p1, p0, Lcom/amazon/identity/auth/device/ms$a;->vo:J

    return-void
.end method


# virtual methods
.method public eN(Ljava/lang/String;)V
    .locals 0

    .line 111
    iput-object p1, p0, Lcom/amazon/identity/auth/device/ms$a;->uY:Ljava/lang/String;

    return-void
.end method

.method public iM()V
    .locals 1

    const/4 v0, 0x1

    .line 98
    iput-boolean v0, p0, Lcom/amazon/identity/auth/device/ms$a;->vb:Z

    return-void
.end method

.method public iN()V
    .locals 0

    .line 104
    invoke-virtual {p0}, Lcom/amazon/identity/auth/device/ms$a;->stop()V

    .line 105
    invoke-virtual {p0}, Lcom/amazon/identity/auth/device/ms$a;->iM()V

    return-void
.end method

.method public iO()V
    .locals 2

    .line 117
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/amazon/identity/auth/device/ms$a;->vo:J

    return-void
.end method

.method public start()V
    .locals 2

    .line 51
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/amazon/identity/auth/device/ms$a;->vn:J

    return-void
.end method

.method public stop()V
    .locals 9

    .line 57
    iget-object v0, p0, Lcom/amazon/identity/auth/device/ms$a;->uY:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 59
    sget-object v0, Lcom/amazon/identity/auth/device/ms$a;->TAG:Ljava/lang/String;

    invoke-static {v0}, Lcom/amazon/identity/auth/device/il;->dl(Ljava/lang/String;)V

    return-void

    .line 63
    :cond_0
    iget-boolean v0, p0, Lcom/amazon/identity/auth/device/ms$a;->vb:Z

    if-eqz v0, :cond_1

    return-void

    .line 68
    :cond_1
    iget-wide v0, p0, Lcom/amazon/identity/auth/device/ms$a;->vn:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-gez v4, :cond_2

    .line 70
    sget-object v0, Lcom/amazon/identity/auth/device/ms$a;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Timer not started: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/amazon/identity/auth/device/ms$a;->uY:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/amazon/identity/auth/device/il;->dl(Ljava/lang/String;)V

    return-void

    .line 75
    :cond_2
    iget-wide v4, p0, Lcom/amazon/identity/auth/device/ms$a;->vo:J

    const-wide/32 v6, 0xf4240

    cmp-long v8, v4, v2

    if-lez v8, :cond_3

    sub-long/2addr v4, v0

    .line 77
    div-long/2addr v4, v6

    goto :goto_0

    .line 81
    :cond_3
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/amazon/identity/auth/device/ms$a;->vn:J

    sub-long/2addr v0, v2

    div-long v4, v0, v6

    :goto_0
    const-wide/16 v0, -0x1

    .line 83
    iput-wide v0, p0, Lcom/amazon/identity/auth/device/ms$a;->vn:J

    .line 84
    iput-wide v0, p0, Lcom/amazon/identity/auth/device/ms$a;->vo:J

    .line 86
    iget-object v0, p0, Lcom/amazon/identity/auth/device/ms$a;->lx:Lcom/amazon/identity/auth/device/mr;

    if-nez v0, :cond_4

    .line 88
    sget-object v0, Lcom/amazon/identity/auth/device/ms$a;->TAG:Ljava/lang/String;

    const-string v1, "Could not record timer because no collector was set"

    invoke-static {v0, v1}, Lcom/amazon/identity/auth/device/il;->an(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 92
    :cond_4
    iget-object v1, p0, Lcom/amazon/identity/auth/device/ms$a;->vm:Ljava/lang/String;

    iget-object v2, p0, Lcom/amazon/identity/auth/device/ms$a;->uY:Ljava/lang/String;

    invoke-interface {v0, v1, v2, v4, v5}, Lcom/amazon/identity/auth/device/mr;->a(Ljava/lang/String;Ljava/lang/String;J)V

    return-void
.end method
