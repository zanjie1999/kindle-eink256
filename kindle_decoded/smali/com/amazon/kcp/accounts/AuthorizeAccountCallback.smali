.class public Lcom/amazon/kcp/accounts/AuthorizeAccountCallback;
.super Ljava/lang/Object;
.source "AuthorizeAccountCallback.java"

# interfaces
.implements Lcom/amazon/foundation/IStringCallback;


# static fields
.field private static final KEY_WITH_BANNER:Ljava/lang/String; = "WithBanner"


# instance fields
.field private context:Landroid/content/Context;

.field private final finishActivityWhenDone:Z

.field private userSettings:Lcom/amazon/kcp/application/UserSettingsController;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/amazon/kcp/application/UserSettingsController;)V
    .locals 0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lcom/amazon/kcp/accounts/AuthorizeAccountCallback;->context:Landroid/content/Context;

    .line 42
    iput-object p2, p0, Lcom/amazon/kcp/accounts/AuthorizeAccountCallback;->userSettings:Lcom/amazon/kcp/application/UserSettingsController;

    const/4 p1, 0x1

    .line 43
    iput-boolean p1, p0, Lcom/amazon/kcp/accounts/AuthorizeAccountCallback;->finishActivityWhenDone:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/amazon/kcp/application/UserSettingsController;Z)V
    .locals 0

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object p1, p0, Lcom/amazon/kcp/accounts/AuthorizeAccountCallback;->context:Landroid/content/Context;

    .line 48
    iput-object p2, p0, Lcom/amazon/kcp/accounts/AuthorizeAccountCallback;->userSettings:Lcom/amazon/kcp/application/UserSettingsController;

    .line 49
    iput-boolean p3, p0, Lcom/amazon/kcp/accounts/AuthorizeAccountCallback;->finishActivityWhenDone:Z

    return-void
.end method

.method private finishActivity()V
    .locals 2

    .line 86
    iget-object v0, p0, Lcom/amazon/kcp/accounts/AuthorizeAccountCallback;->context:Landroid/content/Context;

    instance-of v1, v0, Landroid/app/Activity;

    if-eqz v1, :cond_0

    .line 87
    check-cast v0, Landroid/app/Activity;

    .line 88
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    :cond_0
    return-void
.end method

.method private register()V
    .locals 4

    .line 69
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.amazon.kindle.action.REGISTER"

    .line 70
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 71
    new-instance v1, Landroid/content/ComponentName;

    iget-object v2, p0, Lcom/amazon/kcp/accounts/AuthorizeAccountCallback;->context:Landroid/content/Context;

    const-class v3, Lcom/amazon/kcp/service/BackendInteractionService;

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 72
    invoke-static {}, Lcom/amazon/kcp/util/ServiceUtilsManager;->getInstance()Lcom/amazon/kcp/util/ServiceUtils;

    move-result-object v1

    iget-object v2, p0, Lcom/amazon/kcp/accounts/AuthorizeAccountCallback;->context:Landroid/content/Context;

    invoke-virtual {v1, v2, v0}, Lcom/amazon/kcp/util/ServiceUtils;->startServiceSafely(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public execute(Ljava/lang/String;)V
    .locals 3

    .line 54
    sget-object v0, Lcom/amazon/kindle/performance/KindlePerformanceConstants;->REGISTRATION_TO_LIBRARY_HOME:Lcom/amazon/kindle/performance/KindlePerformanceConstants;

    invoke-virtual {v0}, Lcom/amazon/kindle/performance/KindlePerformanceConstants;->getMetricString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/amazon/kindle/util/PerfHelper;->LogPerformanceMarkerForQA(Ljava/lang/String;Z)V

    .line 55
    iget-object v0, p0, Lcom/amazon/kcp/accounts/AuthorizeAccountCallback;->userSettings:Lcom/amazon/kcp/application/UserSettingsController;

    invoke-virtual {v0}, Lcom/amazon/kcp/application/UserSettingsController;->getAuthorizedAccount()Ljava/lang/String;

    move-result-object v0

    .line 56
    invoke-static {p1}, Lcom/amazon/kcp/util/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 57
    iget-object v0, p0, Lcom/amazon/kcp/accounts/AuthorizeAccountCallback;->userSettings:Lcom/amazon/kcp/application/UserSettingsController;

    invoke-virtual {v0, p1}, Lcom/amazon/kcp/application/UserSettingsController;->setAuthorizedAccount(Ljava/lang/String;)V

    .line 58
    invoke-direct {p0}, Lcom/amazon/kcp/accounts/AuthorizeAccountCallback;->register()V

    .line 59
    iget-object v0, p0, Lcom/amazon/kcp/accounts/AuthorizeAccountCallback;->context:Landroid/content/Context;

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 61
    invoke-static {}, Lcom/amazon/kcp/application/internal/metrics/StandaloneMetricsManagerWrapper;->getInstance()Lcom/amazon/kcp/application/internal/metrics/StandaloneMetricsManagerWrapper;

    move-result-object v0

    const-string v1, "USER_SIGN_IN"

    const-string v2, "High"

    invoke-virtual {v0, v1, v2}, Lcom/amazon/kcp/application/internal/metrics/StandaloneMetricsManagerWrapper;->reportCounterMetrics(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    invoke-static {}, Lcom/amazon/kcp/util/fastmetrics/RecordUserSignInMetrics;->recordUserSignIn()V

    .line 64
    :cond_0
    invoke-virtual {p0, p1}, Lcom/amazon/kcp/accounts/AuthorizeAccountCallback;->postAuthorized(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public postAuthorized(Ljava/lang/String;)V
    .locals 0

    .line 80
    iget-boolean p1, p0, Lcom/amazon/kcp/accounts/AuthorizeAccountCallback;->finishActivityWhenDone:Z

    if-eqz p1, :cond_0

    .line 81
    invoke-direct {p0}, Lcom/amazon/kcp/accounts/AuthorizeAccountCallback;->finishActivity()V

    :cond_0
    return-void
.end method
