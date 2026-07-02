.class final Lcom/amazon/kindle/displaymask/DisplayMaskMenuPage;
.super Lcom/amazon/kindle/krx/debug/AbstractDebugMenuPage;
.source "FoldableDebug.kt"


# instance fields
.field private final activity:Landroid/app/Activity;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    invoke-direct {p0}, Lcom/amazon/kindle/krx/debug/AbstractDebugMenuPage;-><init>()V

    iput-object p1, p0, Lcom/amazon/kindle/displaymask/DisplayMaskMenuPage;->activity:Landroid/app/Activity;

    return-void
.end method

.method public static final synthetic access$getActivity$p(Lcom/amazon/kindle/displaymask/DisplayMaskMenuPage;)Landroid/app/Activity;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/amazon/kindle/displaymask/DisplayMaskMenuPage;->activity:Landroid/app/Activity;

    return-object p0
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    const-string v0, "Display Mask Debug"

    return-object v0
.end method

.method public getView()Landroid/view/View;
    .locals 5

    .line 34
    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/amazon/kindle/displaymask/DisplayMaskMenuPage;->activity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    .line 35
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 38
    new-instance v1, Landroid/widget/Button;

    iget-object v2, p0, Lcom/amazon/kindle/displaymask/DisplayMaskMenuPage;->activity:Landroid/app/Activity;

    invoke-direct {v1, v2}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    const-string v2, "Launch Test Activity"

    .line 39
    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 40
    new-instance v2, Lcom/amazon/kindle/displaymask/DisplayMaskMenuPage$getView$$inlined$apply$lambda$1;

    invoke-direct {v2, p0}, Lcom/amazon/kindle/displaymask/DisplayMaskMenuPage$getView$$inlined$apply$lambda$1;-><init>(Lcom/amazon/kindle/displaymask/DisplayMaskMenuPage;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 44
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 47
    iget-object v1, p0, Lcom/amazon/kindle/displaymask/DisplayMaskMenuPage;->activity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "activity.packageManager"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "com.microsoft.device.display.displaymask"

    .line 48
    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    .line 50
    new-instance v2, Landroid/widget/ToggleButton;

    iget-object v3, p0, Lcom/amazon/kindle/displaymask/DisplayMaskMenuPage;->activity:Landroid/app/Activity;

    invoke-direct {v2, v3}, Landroid/widget/ToggleButton;-><init>(Landroid/content/Context;)V

    if-nez v1, :cond_0

    .line 52
    iget-object v1, p0, Lcom/amazon/kindle/displaymask/DisplayMaskMenuPage;->activity:Landroid/app/Activity;

    const/4 v3, 0x0

    const-string v4, "DEBUG_DISPLAY_MASK_PREFS"

    invoke-virtual {v1, v4, v3}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v4, "ENABLE_DEBUG"

    .line 53
    invoke-interface {v1, v4, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    const-string v4, "Debug Mask Enabled"

    .line 55
    invoke-virtual {v2, v4}, Landroid/widget/ToggleButton;->setTextOn(Ljava/lang/CharSequence;)V

    const-string v4, "Debug Mask Disabled"

    .line 56
    invoke-virtual {v2, v4}, Landroid/widget/ToggleButton;->setTextOff(Ljava/lang/CharSequence;)V

    .line 57
    invoke-virtual {v2, v3}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 58
    new-instance v4, Lcom/amazon/kindle/displaymask/DisplayMaskMenuPage$getView$$inlined$apply$lambda$2;

    invoke-direct {v4, p0, v3, v1}, Lcom/amazon/kindle/displaymask/DisplayMaskMenuPage$getView$$inlined$apply$lambda$2;-><init>(Lcom/amazon/kindle/displaymask/DisplayMaskMenuPage;ZLandroid/content/SharedPreferences;)V

    invoke-virtual {v2, v4}, Landroid/widget/ToggleButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 65
    :cond_0
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-object v0
.end method
