.class public Lcom/amazon/identity/auth/device/mo;
.super Lcom/amazon/identity/auth/device/mp;
.source "DCP"


# instance fields
.field private final mTag:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 2

    .line 12
    invoke-direct {p0}, Lcom/amazon/identity/auth/device/mp;-><init>()V

    const/4 v0, 0x0

    .line 13
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, "PeriodicLoggingMetricsCollector"

    .line 15
    iput-object v0, p0, Lcom/amazon/identity/auth/device/mo;->mTag:Ljava/lang/String;

    return-void

    .line 19
    :cond_0
    iput-object v0, p0, Lcom/amazon/identity/auth/device/mo;->mTag:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public bA(Ljava/lang/String;)V
    .locals 2

    .line 26
    iget-object v0, p0, Lcom/amazon/identity/auth/device/mo;->mTag:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "Increment counter : "

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public eL(Ljava/lang/String;)Lcom/amazon/identity/auth/device/ms;
    .locals 0

    .line 32
    new-instance p1, Lcom/amazon/identity/auth/device/ms$b;

    invoke-direct {p1}, Lcom/amazon/identity/auth/device/ms$b;-><init>()V

    return-object p1
.end method
