.class public Lcom/amazon/kcp/debug/MemInfoView;
.super Landroid/widget/LinearLayout;
.source "MemInfoView.java"


# instance fields
.field private controller:Landroid/widget/Button;

.field private intervalText:Landroid/widget/EditText;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 17
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method static synthetic access$000(Lcom/amazon/kcp/debug/MemInfoView;)V
    .locals 0

    .line 12
    invoke-direct {p0}, Lcom/amazon/kcp/debug/MemInfoView;->onControllerClicked()V

    return-void
.end method

.method private onControllerClicked()V
    .locals 2

    .line 42
    invoke-static {}, Lcom/amazon/kcp/debug/MemoryInfoLogger;->getInstance()Lcom/amazon/kcp/debug/MemoryInfoLogger;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/kcp/debug/MemoryInfoLogger;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 43
    iget-object v0, p0, Lcom/amazon/kcp/debug/MemInfoView;->controller:Landroid/widget/Button;

    const-string v1, "Start Memory Profiling"

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 44
    invoke-static {}, Lcom/amazon/kcp/debug/MemoryInfoLogger;->getInstance()Lcom/amazon/kcp/debug/MemoryInfoLogger;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/kcp/debug/MemoryInfoLogger;->stop()V

    goto :goto_0

    .line 46
    :cond_0
    iget-object v0, p0, Lcom/amazon/kcp/debug/MemInfoView;->controller:Landroid/widget/Button;

    const-string v1, "Stop Memory Profiling"

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 47
    iget-object v0, p0, Lcom/amazon/kcp/debug/MemInfoView;->intervalText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 50
    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 54
    :catch_0
    invoke-static {}, Lcom/amazon/kcp/debug/MemoryInfoLogger;->getInstance()Lcom/amazon/kcp/debug/MemoryInfoLogger;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/amazon/kcp/debug/MemoryInfoLogger;->start(I)V

    .line 56
    :goto_0
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->invalidate()V

    return-void
.end method


# virtual methods
.method protected onFinishInflate()V
    .locals 2

    .line 22
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 24
    sget v0, Lcom/amazon/kindle/krl/R$id;->meminfo_controller:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/amazon/kcp/debug/MemInfoView;->controller:Landroid/widget/Button;

    .line 25
    sget v0, Lcom/amazon/kindle/krl/R$id;->meminfo_pause_interval:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/amazon/kcp/debug/MemInfoView;->intervalText:Landroid/widget/EditText;

    .line 26
    iget-object v0, p0, Lcom/amazon/kcp/debug/MemInfoView;->controller:Landroid/widget/Button;

    new-instance v1, Lcom/amazon/kcp/debug/MemInfoView$1;

    invoke-direct {v1, p0}, Lcom/amazon/kcp/debug/MemInfoView$1;-><init>(Lcom/amazon/kcp/debug/MemInfoView;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 33
    invoke-static {}, Lcom/amazon/kcp/debug/MemoryInfoLogger;->getInstance()Lcom/amazon/kcp/debug/MemoryInfoLogger;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/kcp/debug/MemoryInfoLogger;->isRunning()Z

    move-result v0

    if-nez v0, :cond_0

    .line 34
    iget-object v0, p0, Lcom/amazon/kcp/debug/MemInfoView;->controller:Landroid/widget/Button;

    const-string v1, "Start Memory Profiling"

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 36
    :cond_0
    iget-object v0, p0, Lcom/amazon/kcp/debug/MemInfoView;->controller:Landroid/widget/Button;

    const-string v1, "Stop Memory Profiling"

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 38
    :goto_0
    iget-object v0, p0, Lcom/amazon/kcp/debug/MemInfoView;->intervalText:Landroid/widget/EditText;

    invoke-static {}, Lcom/amazon/kcp/debug/MemoryInfoLogger;->getInstance()Lcom/amazon/kcp/debug/MemoryInfoLogger;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazon/kcp/debug/MemoryInfoLogger;->getPollingInterval()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
