.class public Lcom/amazon/ea/debug/AnyActionsDebugMenu;
.super Lcom/amazon/kindle/krx/debug/AbstractDebugMenuPage;
.source "AnyActionsDebugMenu.java"


# instance fields
.field private context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 28
    invoke-direct {p0}, Lcom/amazon/kindle/krx/debug/AbstractDebugMenuPage;-><init>()V

    iput-object p1, p0, Lcom/amazon/ea/debug/AnyActionsDebugMenu;->context:Landroid/content/Context;

    return-void
.end method

.method private initializeAutoShelfSettings(Landroid/view/View;)V
    .locals 11

    const/4 v0, 0x1

    .line 47
    invoke-static {v0}, Lcom/amazon/ea/debug/AnyActionsDebugSettings;->setUseDebugSettings(Z)V

    .line 49
    sget v0, Lcom/amazon/kindle/ea/R$id;->debug_fail_update_requests_switch:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Switch;

    .line 50
    sget v1, Lcom/amazon/kindle/ea/R$id;->debug_fail_update_requests_with_linking_error_switch:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Switch;

    .line 51
    sget v2, Lcom/amazon/kindle/ea/R$id;->debug_delay_update_requests_switch:I

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Switch;

    .line 52
    sget v3, Lcom/amazon/kindle/ea/R$id;->debug_purchase_client:I

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RadioGroup;

    .line 53
    sget v4, Lcom/amazon/kindle/ea/R$id;->debug_prevent_buy_glide_v2:I

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Switch;

    .line 54
    sget v5, Lcom/amazon/kindle/ea/R$id;->debug_delay_update_requests_duration_picker:I

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/NumberPicker;

    .line 55
    sget v6, Lcom/amazon/kindle/ea/R$id;->debug_clear_glide_cache:I

    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Button;

    .line 56
    sget v7, Lcom/amazon/kindle/ea/R$id;->debug_clear_legacy_cache:I

    invoke-virtual {p1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    .line 58
    invoke-static {}, Lcom/amazon/ea/debug/AnyActionsDebugSettings;->getDelayAllAutoShelfUpdateRequests()Z

    move-result v7

    .line 59
    invoke-static {}, Lcom/amazon/ea/debug/AnyActionsDebugSettings;->getFailAllAutoShelfUpdateRequests()Z

    move-result v8

    .line 60
    invoke-static {}, Lcom/amazon/ea/debug/AnyActionsDebugSettings;->getFailAllAutoShelfUpdateRequestsWithLinkingError()Z

    move-result v9

    .line 61
    invoke-static {}, Lcom/amazon/ea/debug/AnyActionsDebugSettings;->getAutoShelfUpdateRequestsDelayDuration()I

    move-result v10

    .line 63
    invoke-virtual {v0, v8}, Landroid/widget/Switch;->setChecked(Z)V

    .line 64
    invoke-virtual {v1, v9}, Landroid/widget/Switch;->setChecked(Z)V

    .line 65
    invoke-virtual {v2, v7}, Landroid/widget/Switch;->setChecked(Z)V

    const/4 v7, 0x0

    .line 66
    invoke-virtual {v5, v7}, Landroid/widget/NumberPicker;->setMinValue(I)V

    const/16 v7, 0x14

    .line 67
    invoke-virtual {v5, v7}, Landroid/widget/NumberPicker;->setMaxValue(I)V

    .line 68
    invoke-virtual {v5, v10}, Landroid/widget/NumberPicker;->setValue(I)V

    .line 70
    new-instance v7, Lcom/amazon/ea/debug/AnyActionsDebugMenu$1;

    invoke-direct {v7, p0}, Lcom/amazon/ea/debug/AnyActionsDebugMenu$1;-><init>(Lcom/amazon/ea/debug/AnyActionsDebugMenu;)V

    invoke-virtual {v0, v7}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 76
    new-instance v0, Lcom/amazon/ea/debug/AnyActionsDebugMenu$2;

    invoke-direct {v0, p0}, Lcom/amazon/ea/debug/AnyActionsDebugMenu$2;-><init>(Lcom/amazon/ea/debug/AnyActionsDebugMenu;)V

    invoke-virtual {v1, v0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 82
    new-instance v0, Lcom/amazon/ea/debug/AnyActionsDebugMenu$3;

    invoke-direct {v0, p0}, Lcom/amazon/ea/debug/AnyActionsDebugMenu$3;-><init>(Lcom/amazon/ea/debug/AnyActionsDebugMenu;)V

    invoke-virtual {v2, v0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 88
    new-instance v0, Lcom/amazon/ea/debug/AnyActionsDebugMenu$4;

    invoke-direct {v0, p0}, Lcom/amazon/ea/debug/AnyActionsDebugMenu$4;-><init>(Lcom/amazon/ea/debug/AnyActionsDebugMenu;)V

    invoke-virtual {v5, v0}, Landroid/widget/NumberPicker;->setOnValueChangedListener(Landroid/widget/NumberPicker$OnValueChangeListener;)V

    const-string v0, "anyactions.debugsettings"

    const-string/jumbo v1, "purchase.client.useglidev2"

    .line 96
    invoke-static {v0, v1}, Lcom/amazon/startactions/storage/SharedPreferencesManager;->getBooleanPreference(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    if-nez v1, :cond_0

    .line 98
    sget v1, Lcom/amazon/kindle/ea/R$id;->debug_purchase_client_no:I

    invoke-virtual {v3, v1}, Landroid/widget/RadioGroup;->check(I)V

    goto :goto_0

    .line 99
    :cond_0
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 100
    sget v1, Lcom/amazon/kindle/ea/R$id;->debug_purchase_client_glide:I

    invoke-virtual {v3, v1}, Landroid/widget/RadioGroup;->check(I)V

    goto :goto_0

    .line 102
    :cond_1
    sget v1, Lcom/amazon/kindle/ea/R$id;->debug_purchase_client_legacy:I

    invoke-virtual {v3, v1}, Landroid/widget/RadioGroup;->check(I)V

    .line 104
    :goto_0
    new-instance v1, Lcom/amazon/ea/debug/AnyActionsDebugMenu$5;

    invoke-direct {v1, p0}, Lcom/amazon/ea/debug/AnyActionsDebugMenu$5;-><init>(Lcom/amazon/ea/debug/AnyActionsDebugMenu;)V

    invoke-virtual {v3, v1}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    const-string/jumbo v1, "purchase.client.glidev2.dontbuy"

    .line 115
    invoke-static {v0, v1}, Lcom/amazon/startactions/storage/SharedPreferencesManager;->getBooleanPreference(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 117
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {v4, v0}, Landroid/widget/Switch;->setChecked(Z)V

    .line 119
    :cond_2
    new-instance v0, Lcom/amazon/ea/debug/AnyActionsDebugMenu$6;

    invoke-direct {v0, p0}, Lcom/amazon/ea/debug/AnyActionsDebugMenu$6;-><init>(Lcom/amazon/ea/debug/AnyActionsDebugMenu;)V

    invoke-virtual {v4, v0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 126
    new-instance v0, Lcom/amazon/ea/debug/AnyActionsDebugMenu$7;

    invoke-direct {v0, p0}, Lcom/amazon/ea/debug/AnyActionsDebugMenu$7;-><init>(Lcom/amazon/ea/debug/AnyActionsDebugMenu;)V

    invoke-virtual {v6, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 133
    new-instance v0, Lcom/amazon/ea/debug/AnyActionsDebugMenu$8;

    invoke-direct {v0, p0}, Lcom/amazon/ea/debug/AnyActionsDebugMenu$8;-><init>(Lcom/amazon/ea/debug/AnyActionsDebugMenu;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private initializeOneTapSettings(Landroid/view/View;)V
    .locals 1

    .line 142
    sget v0, Lcom/amazon/kindle/ea/R$id;->one_tap_fake_purchases:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Switch;

    .line 144
    invoke-static {}, Lcom/amazon/ea/debug/AnyActionsDebugSettings;->getOneTapFakePurchasesEnabled()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/Switch;->setChecked(Z)V

    .line 146
    new-instance v0, Lcom/amazon/ea/debug/AnyActionsDebugMenu$9;

    invoke-direct {v0, p0}, Lcom/amazon/ea/debug/AnyActionsDebugMenu$9;-><init>(Lcom/amazon/ea/debug/AnyActionsDebugMenu;)V

    invoke-virtual {p1, v0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    const-string v0, "Any Actions Debug Menu"

    return-object v0
.end method

.method public getView()Landroid/view/View;
    .locals 3

    .line 35
    iget-object v0, p0, Lcom/amazon/ea/debug/AnyActionsDebugMenu;->context:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 36
    sget v1, Lcom/amazon/kindle/ea/R$layout;->anyactions_debug_activity:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 37
    invoke-direct {p0, v0}, Lcom/amazon/ea/debug/AnyActionsDebugMenu;->initializeAutoShelfSettings(Landroid/view/View;)V

    .line 38
    invoke-direct {p0, v0}, Lcom/amazon/ea/debug/AnyActionsDebugMenu;->initializeOneTapSettings(Landroid/view/View;)V

    return-object v0
.end method
