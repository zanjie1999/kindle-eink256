.class public Lcom/amazon/kcp/periodicals/ui/PeriodicalsDebugSettingsLayout;
.super Landroid/widget/LinearLayout;
.source "PeriodicalsDebugSettingsLayout.java"


# instance fields
.field private controller:Landroid/widget/Button;

.field private intervalText:Landroid/widget/EditText;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 19
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method protected onFinishInflate()V
    .locals 2

    .line 25
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 27
    sget v0, Lcom/amazon/kindle/newsstand/forstandalone/R$id;->periodicals_debug_settings_screen:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/amazon/kcp/periodicals/ui/PeriodicalsDebugSettingsLayout;->controller:Landroid/widget/Button;

    .line 28
    new-instance v1, Lcom/amazon/kcp/periodicals/ui/PeriodicalsDebugSettingsLayout$1;

    invoke-direct {v1, p0}, Lcom/amazon/kcp/periodicals/ui/PeriodicalsDebugSettingsLayout$1;-><init>(Lcom/amazon/kcp/periodicals/ui/PeriodicalsDebugSettingsLayout;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
