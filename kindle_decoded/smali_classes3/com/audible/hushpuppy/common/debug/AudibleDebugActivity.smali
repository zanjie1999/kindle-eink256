.class public Lcom/audible/hushpuppy/common/debug/AudibleDebugActivity;
.super Landroid/app/Activity;
.source "AudibleDebugActivity.java"


# instance fields
.field private debugSharedPreferences:Lcom/audible/hushpuppy/common/debug/DebugSharedPreferences;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/audible/hushpuppy/common/debug/AudibleDebugActivity;)Lcom/audible/hushpuppy/common/debug/DebugSharedPreferences;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/audible/hushpuppy/common/debug/AudibleDebugActivity;->debugSharedPreferences:Lcom/audible/hushpuppy/common/debug/DebugSharedPreferences;

    return-object p0
.end method

.method private initFeatureSwitches()V
    .locals 9

    .line 44
    sget v0, Lcom/amazon/kindle/hushpuppy/plugin/R$id;->debug_feature_layout:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 46
    invoke-static {}, Lcom/audible/hushpuppy/common/debug/DebugFeature;->values()[Lcom/audible/hushpuppy/common/debug/DebugFeature;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_1

    aget-object v5, v1, v4

    .line 47
    invoke-virtual {v5}, Lcom/audible/hushpuppy/common/debug/DebugFeature;->getDebugTogglePreferenceKey()Lcom/audible/hushpuppy/common/debug/SharedPreferenceKey;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 48
    new-instance v6, Landroid/widget/Switch;

    invoke-direct {v6, p0}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    .line 49
    invoke-virtual {v5}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/Switch;->setText(Ljava/lang/CharSequence;)V

    .line 50
    iget-object v7, p0, Lcom/audible/hushpuppy/common/debug/AudibleDebugActivity;->debugSharedPreferences:Lcom/audible/hushpuppy/common/debug/DebugSharedPreferences;

    invoke-virtual {v5}, Lcom/audible/hushpuppy/common/debug/DebugFeature;->getDebugTogglePreferenceKey()Lcom/audible/hushpuppy/common/debug/SharedPreferenceKey;

    move-result-object v8

    invoke-virtual {v7, v8, v3}, Lcom/audible/hushpuppy/common/debug/DebugSharedPreferences;->getBoolean(Lcom/audible/hushpuppy/common/debug/SharedPreferenceKey;Z)Z

    move-result v7

    invoke-virtual {v6, v7}, Landroid/widget/Switch;->setChecked(Z)V

    .line 51
    new-instance v7, Lcom/audible/hushpuppy/common/debug/AudibleDebugActivity$1;

    invoke-direct {v7, p0, v5}, Lcom/audible/hushpuppy/common/debug/AudibleDebugActivity$1;-><init>(Lcom/audible/hushpuppy/common/debug/AudibleDebugActivity;Lcom/audible/hushpuppy/common/debug/DebugFeature;)V

    invoke-virtual {v6, v7}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 57
    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public final onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 29
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 30
    new-instance p1, Lcom/audible/hushpuppy/common/debug/DebugSharedPreferences;

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/audible/hushpuppy/common/debug/DebugSharedPreferences;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/audible/hushpuppy/common/debug/AudibleDebugActivity;->debugSharedPreferences:Lcom/audible/hushpuppy/common/debug/DebugSharedPreferences;

    .line 31
    sget p1, Lcom/amazon/kindle/hushpuppy/plugin/R$layout;->audible_debug_screen:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setContentView(I)V

    .line 33
    invoke-direct {p0}, Lcom/audible/hushpuppy/common/debug/AudibleDebugActivity;->initFeatureSwitches()V

    return-void
.end method

.method protected final onResume()V
    .locals 0

    .line 39
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    return-void
.end method
