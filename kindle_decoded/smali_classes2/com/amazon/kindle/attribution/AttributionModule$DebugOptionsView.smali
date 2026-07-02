.class public Lcom/amazon/kindle/attribution/AttributionModule$DebugOptionsView;
.super Landroid/widget/LinearLayout;
.source "AttributionModule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kindle/attribution/AttributionModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DebugOptionsView"
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 82
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method static synthetic access$000(Lcom/amazon/kindle/attribution/AttributionModule$DebugOptionsView;)V
    .locals 0

    .line 80
    invoke-direct {p0}, Lcom/amazon/kindle/attribution/AttributionModule$DebugOptionsView;->refreshStats()V

    return-void
.end method

.method private refreshStats()V
    .locals 2

    .line 126
    sget v0, Lcom/amazon/kindle/thirdparty/R$id;->dbg_starts_total_value:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 128
    invoke-static {}, Lcom/amazon/kindle/event/UserEventRecorder;->getInstance()Lcom/amazon/kindle/event/UserEventRecorder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazon/kindle/event/UserEventRecorder;->getStarts()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 130
    :cond_0
    sget v0, Lcom/amazon/kindle/thirdparty/R$id;->dbg_starts_version_value:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 132
    invoke-static {}, Lcom/amazon/kindle/event/UserEventRecorder;->getInstance()Lcom/amazon/kindle/event/UserEventRecorder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazon/kindle/event/UserEventRecorder;->getStartsForVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 134
    :cond_1
    sget v0, Lcom/amazon/kindle/thirdparty/R$id;->dbg_regs_total_value:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_2

    .line 136
    invoke-static {}, Lcom/amazon/kindle/event/UserEventRecorder;->getInstance()Lcom/amazon/kindle/event/UserEventRecorder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazon/kindle/event/UserEventRecorder;->getRegs()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 138
    :cond_2
    sget v0, Lcom/amazon/kindle/thirdparty/R$id;->dbg_regs_version_value:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_3

    .line 140
    invoke-static {}, Lcom/amazon/kindle/event/UserEventRecorder;->getInstance()Lcom/amazon/kindle/event/UserEventRecorder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazon/kindle/event/UserEventRecorder;->getRegsForVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_3
    return-void
.end method


# virtual methods
.method protected onFinishInflate()V
    .locals 2

    .line 87
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 88
    sget v0, Lcom/amazon/kindle/thirdparty/R$id;->clear_app_start_reg_data:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    if-eqz v0, :cond_0

    .line 90
    new-instance v1, Lcom/amazon/kindle/attribution/AttributionModule$DebugOptionsView$1;

    invoke-direct {v1, p0}, Lcom/amazon/kindle/attribution/AttributionModule$DebugOptionsView$1;-><init>(Lcom/amazon/kindle/attribution/AttributionModule$DebugOptionsView;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 100
    :cond_0
    sget v0, Lcom/amazon/kindle/thirdparty/R$id;->dbg_manual_app_start:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    if-eqz v0, :cond_1

    .line 102
    new-instance v1, Lcom/amazon/kindle/attribution/AttributionModule$DebugOptionsView$2;

    invoke-direct {v1, p0}, Lcom/amazon/kindle/attribution/AttributionModule$DebugOptionsView$2;-><init>(Lcom/amazon/kindle/attribution/AttributionModule$DebugOptionsView;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 111
    :cond_1
    sget v0, Lcom/amazon/kindle/thirdparty/R$id;->dbg_manual_app_reg:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    if-eqz v0, :cond_2

    .line 113
    new-instance v1, Lcom/amazon/kindle/attribution/AttributionModule$DebugOptionsView$3;

    invoke-direct {v1, p0}, Lcom/amazon/kindle/attribution/AttributionModule$DebugOptionsView$3;-><init>(Lcom/amazon/kindle/attribution/AttributionModule$DebugOptionsView;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 122
    :cond_2
    invoke-direct {p0}, Lcom/amazon/kindle/attribution/AttributionModule$DebugOptionsView;->refreshStats()V

    return-void
.end method
