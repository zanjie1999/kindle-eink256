.class Lcom/amazon/kcp/debug/DebugPlugin$LoggingDebugMenuPage;
.super Lcom/amazon/kindle/krx/debug/AbstractDebugMenuPage;
.source "DebugPlugin.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/debug/DebugPlugin;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LoggingDebugMenuPage"
.end annotation


# instance fields
.field private context:Landroid/content/Context;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 434
    invoke-direct {p0}, Lcom/amazon/kindle/krx/debug/AbstractDebugMenuPage;-><init>()V

    .line 435
    iput-object p1, p0, Lcom/amazon/kcp/debug/DebugPlugin$LoggingDebugMenuPage;->context:Landroid/content/Context;

    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Context;Lcom/amazon/kcp/debug/DebugPlugin$1;)V
    .locals 0

    .line 431
    invoke-direct {p0, p1}, Lcom/amazon/kcp/debug/DebugPlugin$LoggingDebugMenuPage;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$300(Lcom/amazon/kcp/debug/DebugPlugin$LoggingDebugMenuPage;)Landroid/content/Context;
    .locals 0

    .line 431
    iget-object p0, p0, Lcom/amazon/kcp/debug/DebugPlugin$LoggingDebugMenuPage;->context:Landroid/content/Context;

    return-object p0
.end method

.method private configureMetricServiceButton(Landroid/view/ViewGroup;)V
    .locals 2

    .line 452
    sget v0, Lcom/amazon/kindle/krl/R$id;->enable_metrics_service_logging:I

    .line 453
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ToggleButton;

    const-string v1, "Disable Metrics Service logging"

    .line 454
    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setTextOn(Ljava/lang/CharSequence;)V

    const-string v1, "Enable Metrics Service logging"

    .line 455
    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setTextOff(Ljava/lang/CharSequence;)V

    .line 456
    invoke-static {}, Lcom/amazon/kcp/debug/DebugUtils;->isMetricsServiceDebugLoggingEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 457
    new-instance v1, Lcom/amazon/kcp/debug/DebugPlugin$LoggingDebugMenuPage$1;

    invoke-direct {v1, p0}, Lcom/amazon/kcp/debug/DebugPlugin$LoggingDebugMenuPage$1;-><init>(Lcom/amazon/kcp/debug/DebugPlugin$LoggingDebugMenuPage;)V

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 466
    sget v0, Lcom/amazon/kindle/krl/R$id;->debug_toasts:I

    .line 467
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ToggleButton;

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-string v0, "Disable Debug Toasts"

    .line 471
    invoke-virtual {p1, v0}, Landroid/widget/ToggleButton;->setTextOn(Ljava/lang/CharSequence;)V

    const-string v0, "Enable Debug Toasts"

    .line 472
    invoke-virtual {p1, v0}, Landroid/widget/ToggleButton;->setTextOff(Ljava/lang/CharSequence;)V

    .line 473
    invoke-static {}, Lcom/amazon/kcp/debug/DebugUtils;->isToastDebuggingEnabled()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 474
    new-instance v0, Lcom/amazon/kcp/debug/DebugPlugin$LoggingDebugMenuPage$2;

    invoke-direct {v0, p0}, Lcom/amazon/kcp/debug/DebugPlugin$LoggingDebugMenuPage$2;-><init>(Lcom/amazon/kcp/debug/DebugPlugin$LoggingDebugMenuPage;)V

    invoke-virtual {p1, v0}, Landroid/widget/ToggleButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    const-string v0, "Debug Logging"

    return-object v0
.end method

.method public getView()Landroid/view/View;
    .locals 3

    .line 445
    iget-object v0, p0, Lcom/amazon/kcp/debug/DebugPlugin$LoggingDebugMenuPage;->context:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 446
    sget v1, Lcom/amazon/kindle/krl/R$layout;->debug_logging:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 447
    invoke-direct {p0, v0}, Lcom/amazon/kcp/debug/DebugPlugin$LoggingDebugMenuPage;->configureMetricServiceButton(Landroid/view/ViewGroup;)V

    return-object v0
.end method
