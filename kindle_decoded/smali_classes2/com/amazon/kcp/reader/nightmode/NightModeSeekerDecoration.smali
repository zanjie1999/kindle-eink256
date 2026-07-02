.class public final Lcom/amazon/kcp/reader/nightmode/NightModeSeekerDecoration;
.super Lcom/amazon/kindle/krx/ui/BaseLocationSeekerDecoration;
.source "NightModeSeekerDecoration.kt"


# instance fields
.field private final nightModeController:Lcom/amazon/kcp/reader/nightmode/NightModeController;

.field private nightModeToggleButton:Landroid/widget/ImageButton;


# direct methods
.method public constructor <init>(Lcom/amazon/kcp/reader/nightmode/NightModeController;)V
    .locals 1

    const-string v0, "nightModeController"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    invoke-direct {p0}, Lcom/amazon/kindle/krx/ui/BaseLocationSeekerDecoration;-><init>()V

    iput-object p1, p0, Lcom/amazon/kcp/reader/nightmode/NightModeSeekerDecoration;->nightModeController:Lcom/amazon/kcp/reader/nightmode/NightModeController;

    return-void
.end method

.method public static final synthetic access$getNightModeController$p(Lcom/amazon/kcp/reader/nightmode/NightModeSeekerDecoration;)Lcom/amazon/kcp/reader/nightmode/NightModeController;
    .locals 0

    .line 20
    iget-object p0, p0, Lcom/amazon/kcp/reader/nightmode/NightModeSeekerDecoration;->nightModeController:Lcom/amazon/kcp/reader/nightmode/NightModeController;

    return-object p0
.end method

.method private final getButtonIcon(Lcom/amazon/kindle/krx/ui/ColorMode;)I
    .locals 1

    .line 43
    iget-object v0, p0, Lcom/amazon/kcp/reader/nightmode/NightModeSeekerDecoration;->nightModeController:Lcom/amazon/kcp/reader/nightmode/NightModeController;

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/nightmode/NightModeController;->isInNightMode()Z

    move-result v0

    if-eqz v0, :cond_0

    sget p1, Lcom/amazon/kindle/thirdparty/R$drawable;->ic_night_mode_sun_nln:I

    goto :goto_0

    .line 44
    :cond_0
    invoke-virtual {p1}, Lcom/amazon/kindle/krx/ui/ColorMode;->isDark()Z

    move-result p1

    if-eqz p1, :cond_1

    sget p1, Lcom/amazon/kindle/thirdparty/R$drawable;->ic_night_mode_moon_nln_white:I

    goto :goto_0

    .line 45
    :cond_1
    sget p1, Lcom/amazon/kindle/thirdparty/R$drawable;->ic_night_mode_moon_nln_black:I

    :goto_0
    return p1
.end method


# virtual methods
.method public getDecoration(Lcom/amazon/kindle/krx/ui/ILocationSeekerDecoration$DecorationType;Landroid/content/Context;Landroid/view/ViewParent;Lcom/amazon/kindle/krx/ui/ColorMode;)Landroid/view/View;
    .locals 1

    const-string v0, "activityContext"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "parentView"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p3, "colorMode"

    invoke-static {p4, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    sget-object p3, Lcom/amazon/kindle/krx/ui/ILocationSeekerDecoration$DecorationType;->RIGHT:Lcom/amazon/kindle/krx/ui/ILocationSeekerDecoration$DecorationType;

    const/4 v0, 0x0

    if-eq p1, p3, :cond_0

    goto :goto_0

    .line 28
    :cond_0
    iget-object p1, p0, Lcom/amazon/kcp/reader/nightmode/NightModeSeekerDecoration;->nightModeToggleButton:Landroid/widget/ImageButton;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/widget/ImageButton;->getContext()Landroid/content/Context;

    move-result-object v0

    :cond_1
    if-ne p2, v0, :cond_2

    iget-object v0, p0, Lcom/amazon/kcp/reader/nightmode/NightModeSeekerDecoration;->nightModeToggleButton:Landroid/widget/ImageButton;

    goto :goto_0

    .line 30
    :cond_2
    new-instance v0, Landroid/widget/ImageButton;

    invoke-direct {v0, p2}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    .line 31
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-direct {p0, p4}, Lcom/amazon/kcp/reader/nightmode/NightModeSeekerDecoration;->getButtonIcon(Lcom/amazon/kindle/krx/ui/ColorMode;)I

    move-result p3

    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 32
    sget p1, Lcom/amazon/kindle/thirdparty/R$attr;->selectableItemBackgroundBorderless:I

    invoke-static {p2, p1}, Lcom/amazon/android/util/UIUtils;->getDrawableForThemeAttribute(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 33
    sget-object p1, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 35
    new-instance p1, Lcom/amazon/kcp/reader/nightmode/NightModeSeekerDecoration$getDecoration$1;

    invoke-direct {p1, p0}, Lcom/amazon/kcp/reader/nightmode/NightModeSeekerDecoration$getDecoration$1;-><init>(Lcom/amazon/kcp/reader/nightmode/NightModeSeekerDecoration;)V

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 36
    iput-object v0, p0, Lcom/amazon/kcp/reader/nightmode/NightModeSeekerDecoration;->nightModeToggleButton:Landroid/widget/ImageButton;

    :goto_0
    return-object v0
.end method
