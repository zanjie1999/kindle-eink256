.class public abstract Lcom/amazon/kindle/viewoptions/ui/AaSettingSheet;
.super Landroid/widget/RelativeLayout;
.source "AaSettingSheet.kt"


# instance fields
.field private _$_findViewCache:Ljava/util/HashMap;

.field private aaSettingHostFragmentManager:Lcom/amazon/kindle/viewoptions/AaSettingHostFragmentManager;

.field private bottomSheetHandle:Landroid/widget/ImageView;

.field private brightnessBarContainer:Lcom/amazon/kindle/viewoptions/ui/AaSettingBrightnessBarContainer;

.field private noSettingsLinearLayout:Landroid/widget/LinearLayout;

.field private onClosedAction:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private onOpenCompleteCallback:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private onOpenedAction:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private orientationLockView:Landroid/view/View;

.field private settingContentView:Lcom/amazon/kindle/viewoptions/ui/AaSettingsViewContent;

.field private settingContentViewParent:Landroidx/coordinatorlayout/widget/CoordinatorLayout;

.field private settingsFrameLayout:Landroid/widget/FrameLayout;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 33
    sget-object p1, Lcom/amazon/kindle/viewoptions/ui/AaSettingSheet$onOpenCompleteCallback$1;->INSTANCE:Lcom/amazon/kindle/viewoptions/ui/AaSettingSheet$onOpenCompleteCallback$1;

    iput-object p1, p0, Lcom/amazon/kindle/viewoptions/ui/AaSettingSheet;->onOpenCompleteCallback:Lkotlin/jvm/functions/Function0;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "attrs"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 33
    sget-object p1, Lcom/amazon/kindle/viewoptions/ui/AaSettingSheet$onOpenCompleteCallback$1;->INSTANCE:Lcom/amazon/kindle/viewoptions/ui/AaSettingSheet$onOpenCompleteCallback$1;

    iput-object p1, p0, Lcom/amazon/kindle/viewoptions/ui/AaSettingSheet;->onOpenCompleteCallback:Lkotlin/jvm/functions/Function0;

    return-void
.end method

.method private final updateSettingsLayoutVisibility()V
    .locals 3

    .line 117
    iget-object v0, p0, Lcom/amazon/kindle/viewoptions/ui/AaSettingSheet;->aaSettingHostFragmentManager:Lcom/amazon/kindle/viewoptions/AaSettingHostFragmentManager;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/amazon/kindle/viewoptions/AaSettingHostFragmentManager;->hasVisibleSettings()Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/16 v2, 0x8

    if-eqz v0, :cond_2

    .line 119
    iget-object v0, p0, Lcom/amazon/kindle/viewoptions/ui/AaSettingSheet;->settingsFrameLayout:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 120
    :cond_1
    iget-object v0, p0, Lcom/amazon/kindle/viewoptions/ui/AaSettingSheet;->noSettingsLinearLayout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_4

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_1

    .line 122
    :cond_2
    iget-object v0, p0, Lcom/amazon/kindle/viewoptions/ui/AaSettingSheet;->settingsFrameLayout:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_3

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 123
    :cond_3
    iget-object v0, p0, Lcom/amazon/kindle/viewoptions/ui/AaSettingSheet;->noSettingsLinearLayout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_4

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_4
    :goto_1
    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 1

    .line 81
    iget-object v0, p0, Lcom/amazon/kindle/viewoptions/ui/AaSettingSheet;->aaSettingHostFragmentManager:Lcom/amazon/kindle/viewoptions/AaSettingHostFragmentManager;

    if-eqz v0, :cond_0

    .line 82
    invoke-virtual {v0}, Lcom/amazon/kindle/viewoptions/AaSettingHostFragmentManager;->destroy()V

    const/4 v0, 0x0

    .line 83
    iput-object v0, p0, Lcom/amazon/kindle/viewoptions/ui/AaSettingSheet;->aaSettingHostFragmentManager:Lcom/amazon/kindle/viewoptions/AaSettingHostFragmentManager;

    :cond_0
    return-void
.end method

.method protected final dismissAaDialogs()V
    .locals 3

    .line 108
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_2

    check-cast v0, Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const-string v1, "(context as FragmentActi\u2026y).supportFragmentManager"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->getFragments()Ljava/util/List;

    move-result-object v0

    const-string v1, "(context as FragmentActi\u2026FragmentManager.fragments"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 109
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/Fragment;

    .line 110
    instance-of v2, v1, Lcom/amazon/kindle/viewoptions/ui/dialog/AaDialogFragment;

    if-eqz v2, :cond_0

    .line 111
    check-cast v1, Lcom/amazon/kindle/viewoptions/ui/dialog/AaDialogFragment;

    invoke-virtual {v1}, Landroidx/fragment/app/DialogFragment;->dismiss()V

    goto :goto_0

    :cond_1
    return-void

    .line 108
    :cond_2
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "null cannot be cast to non-null type androidx.fragment.app.FragmentActivity"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected final getBottomSheetHandle()Landroid/widget/ImageView;
    .locals 1

    .line 41
    iget-object v0, p0, Lcom/amazon/kindle/viewoptions/ui/AaSettingSheet;->bottomSheetHandle:Landroid/widget/ImageView;

    return-object v0
.end method

.method protected final getBrightnessBarContainer()Lcom/amazon/kindle/viewoptions/ui/AaSettingBrightnessBarContainer;
    .locals 1

    .line 42
    iget-object v0, p0, Lcom/amazon/kindle/viewoptions/ui/AaSettingSheet;->brightnessBarContainer:Lcom/amazon/kindle/viewoptions/ui/AaSettingBrightnessBarContainer;

    return-object v0
.end method

.method public final getOnClosedAction()Lkotlin/jvm/functions/Function0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .line 30
    iget-object v0, p0, Lcom/amazon/kindle/viewoptions/ui/AaSettingSheet;->onClosedAction:Lkotlin/jvm/functions/Function0;

    return-object v0
.end method

.method public final getOnOpenCompleteCallback()Lkotlin/jvm/functions/Function0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .line 33
    iget-object v0, p0, Lcom/amazon/kindle/viewoptions/ui/AaSettingSheet;->onOpenCompleteCallback:Lkotlin/jvm/functions/Function0;

    return-object v0
.end method

.method public final getOnOpenedAction()Lkotlin/jvm/functions/Function0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .line 31
    iget-object v0, p0, Lcom/amazon/kindle/viewoptions/ui/AaSettingSheet;->onOpenedAction:Lkotlin/jvm/functions/Function0;

    return-object v0
.end method

.method public final getOrientationLockView()Landroid/view/View;
    .locals 1

    .line 29
    iget-object v0, p0, Lcom/amazon/kindle/viewoptions/ui/AaSettingSheet;->orientationLockView:Landroid/view/View;

    return-object v0
.end method

.method protected final getSettingContentView()Lcom/amazon/kindle/viewoptions/ui/AaSettingsViewContent;
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/amazon/kindle/viewoptions/ui/AaSettingSheet;->settingContentView:Lcom/amazon/kindle/viewoptions/ui/AaSettingsViewContent;

    return-object v0
.end method

.method protected final getSettingContentViewParent()Landroidx/coordinatorlayout/widget/CoordinatorLayout;
    .locals 1

    .line 40
    iget-object v0, p0, Lcom/amazon/kindle/viewoptions/ui/AaSettingSheet;->settingContentViewParent:Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    return-object v0
.end method

.method public abstract hide()V
.end method

.method public final isTouchOutside(Landroid/view/MotionEvent;)Z
    .locals 2

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 132
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 133
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 134
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 135
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    float-to-int p1, p1

    invoke-virtual {v0, v1, p1}, Landroid/graphics/Rect;->contains(II)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method protected final loadContentFragment()V
    .locals 5

    .line 90
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    instance-of v1, v0, Lcom/amazon/kcp/reader/ReaderActivity;

    if-nez v1, :cond_0

    const/4 v0, 0x0

    :cond_0
    check-cast v0, Lcom/amazon/kcp/reader/ReaderActivity;

    if-eqz v0, :cond_2

    .line 92
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v1

    const-string v2, "Utils.getFactory()"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getReaderController()Lcom/amazon/kcp/reader/IReaderController;

    move-result-object v1

    const-string v2, "Utils.getFactory().readerController"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v1}, Lcom/amazon/kcp/reader/IReaderController;->getDocViewer()Lcom/amazon/android/docviewer/KindleDocViewer;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 94
    new-instance v2, Lcom/amazon/kindle/viewoptions/AaSettingHostFragmentManager;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "context"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const-string v4, "activity.supportFragmentManager"

    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v2, v3, v1, v0}, Lcom/amazon/kindle/viewoptions/AaSettingHostFragmentManager;-><init>(Landroid/content/Context;Lcom/amazon/android/docviewer/KindleDocViewer;Landroidx/fragment/app/FragmentManager;)V

    iput-object v2, p0, Lcom/amazon/kindle/viewoptions/ui/AaSettingSheet;->aaSettingHostFragmentManager:Lcom/amazon/kindle/viewoptions/AaSettingHostFragmentManager;

    if-eqz v2, :cond_1

    .line 95
    invoke-virtual {v2}, Lcom/amazon/kindle/viewoptions/AaSettingHostFragmentManager;->showContentFragment()V

    .line 102
    :cond_1
    invoke-direct {p0}, Lcom/amazon/kindle/viewoptions/ui/AaSettingSheet;->updateSettingsLayoutVisibility()V

    :cond_2
    return-void
.end method

.method protected onFinishInflate()V
    .locals 5

    .line 48
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    .line 49
    sget v0, Lcom/amazon/kindle/krl/R$id;->aa_menu_v2_bottom_sheet_handle:I

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/amazon/kindle/viewoptions/ui/AaSettingSheet;->bottomSheetHandle:Landroid/widget/ImageView;

    .line 51
    sget v0, Lcom/amazon/kindle/krl/R$id;->aa_menu_v2_setting_content:I

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/amazon/kindle/viewoptions/ui/AaSettingsViewContent;

    iput-object v0, p0, Lcom/amazon/kindle/viewoptions/ui/AaSettingSheet;->settingContentView:Lcom/amazon/kindle/viewoptions/ui/AaSettingsViewContent;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 52
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    instance-of v2, v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    move-object v1, v0

    :goto_1
    check-cast v1, Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    iput-object v1, p0, Lcom/amazon/kindle/viewoptions/ui/AaSettingSheet;->settingContentViewParent:Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    const/4 v0, 0x1

    if-eqz v1, :cond_2

    .line 53
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setFocusable(Z)V

    .line 54
    :cond_2
    iget-object v1, p0, Lcom/amazon/kindle/viewoptions/ui/AaSettingSheet;->settingContentViewParent:Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    if-eqz v1, :cond_3

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setFocusableInTouchMode(Z)V

    .line 55
    :cond_3
    iget-object v1, p0, Lcom/amazon/kindle/viewoptions/ui/AaSettingSheet;->settingContentViewParent:Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    const-string v2, "context"

    if-eqz v1, :cond_4

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/amazon/kindle/krl/R$string;->view_options_description:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 56
    :cond_4
    iget-object v1, p0, Lcom/amazon/kindle/viewoptions/ui/AaSettingSheet;->settingContentView:Lcom/amazon/kindle/viewoptions/ui/AaSettingsViewContent;

    if-eqz v1, :cond_5

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setClickable(Z)V

    .line 57
    :cond_5
    iget-object v1, p0, Lcom/amazon/kindle/viewoptions/ui/AaSettingSheet;->settingContentView:Lcom/amazon/kindle/viewoptions/ui/AaSettingsViewContent;

    if-eqz v1, :cond_6

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setImportantForAccessibility(I)V

    .line 58
    :cond_6
    iget-object v1, p0, Lcom/amazon/kindle/viewoptions/ui/AaSettingSheet;->settingContentView:Lcom/amazon/kindle/viewoptions/ui/AaSettingsViewContent;

    if-eqz v1, :cond_7

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/amazon/kindle/krl/R$string;->view_options_description:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 60
    :cond_7
    sget v1, Lcom/amazon/kindle/krl/R$id;->aa_menu_v2_brightness_bar_container:I

    invoke-virtual {p0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/amazon/kindle/viewoptions/ui/AaSettingBrightnessBarContainer;

    iput-object v1, p0, Lcom/amazon/kindle/viewoptions/ui/AaSettingSheet;->brightnessBarContainer:Lcom/amazon/kindle/viewoptions/ui/AaSettingBrightnessBarContainer;

    .line 62
    sget v1, Lcom/amazon/kindle/krl/R$id;->aa_menu_v2_fragment_container:I

    invoke-virtual {p0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    iput-object v1, p0, Lcom/amazon/kindle/viewoptions/ui/AaSettingSheet;->settingsFrameLayout:Landroid/widget/FrameLayout;

    .line 63
    sget v1, Lcom/amazon/kindle/krl/R$id;->aa_menu_v2_no_settings_layout:I

    invoke-virtual {p0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/amazon/kindle/viewoptions/ui/AaSettingSheet;->noSettingsLinearLayout:Landroid/widget/LinearLayout;

    .line 65
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v1

    const-string v2, "Utils.getFactory()"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getDeviceContext()Lcom/amazon/kcp/application/IDeviceContext;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kcp/application/IDeviceContext;->supportsBrightnessChanges()Z

    move-result v1

    if-nez v1, :cond_8

    invoke-static {}, Lcom/amazon/kindle/build/BuildInfo;->isFirstPartyBuild()Z

    move-result v1

    if-nez v1, :cond_8

    .line 66
    iget-object v1, p0, Lcom/amazon/kindle/viewoptions/ui/AaSettingSheet;->brightnessBarContainer:Lcom/amazon/kindle/viewoptions/ui/AaSettingBrightnessBarContainer;

    if-eqz v1, :cond_9

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_2

    .line 68
    :cond_8
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/amazon/kindle/krl/R$dimen;->aa_menu_v2_brightness_seekbar_container_height:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    .line 69
    iget-object v2, p0, Lcom/amazon/kindle/viewoptions/ui/AaSettingSheet;->settingContentView:Lcom/amazon/kindle/viewoptions/ui/AaSettingsViewContent;

    if-eqz v2, :cond_9

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v3, v3, v1}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 72
    :cond_9
    :goto_2
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->setFocusable(Z)V

    .line 73
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->setFocusableInTouchMode(Z)V

    return-void
.end method

.method public abstract onRestartFromSettingChange()V
.end method

.method public final resetScrollViews()V
    .locals 1

    .line 144
    iget-object v0, p0, Lcom/amazon/kindle/viewoptions/ui/AaSettingSheet;->aaSettingHostFragmentManager:Lcom/amazon/kindle/viewoptions/AaSettingHostFragmentManager;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/amazon/kindle/viewoptions/AaSettingHostFragmentManager;->resetScrollViews()V

    :cond_0
    return-void
.end method

.method protected final setBottomSheetHandle(Landroid/widget/ImageView;)V
    .locals 0

    .line 41
    iput-object p1, p0, Lcom/amazon/kindle/viewoptions/ui/AaSettingSheet;->bottomSheetHandle:Landroid/widget/ImageView;

    return-void
.end method

.method protected final setBrightnessBarContainer(Lcom/amazon/kindle/viewoptions/ui/AaSettingBrightnessBarContainer;)V
    .locals 0

    .line 42
    iput-object p1, p0, Lcom/amazon/kindle/viewoptions/ui/AaSettingSheet;->brightnessBarContainer:Lcom/amazon/kindle/viewoptions/ui/AaSettingBrightnessBarContainer;

    return-void
.end method

.method public final setOnClosedAction(Lkotlin/jvm/functions/Function0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 30
    iput-object p1, p0, Lcom/amazon/kindle/viewoptions/ui/AaSettingSheet;->onClosedAction:Lkotlin/jvm/functions/Function0;

    return-void
.end method

.method public final setOnOpenCompleteCallback(Lkotlin/jvm/functions/Function0;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    iput-object p1, p0, Lcom/amazon/kindle/viewoptions/ui/AaSettingSheet;->onOpenCompleteCallback:Lkotlin/jvm/functions/Function0;

    return-void
.end method

.method public final setOnOpenedAction(Lkotlin/jvm/functions/Function0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 31
    iput-object p1, p0, Lcom/amazon/kindle/viewoptions/ui/AaSettingSheet;->onOpenedAction:Lkotlin/jvm/functions/Function0;

    return-void
.end method

.method public final setOrientationLockView(Landroid/view/View;)V
    .locals 0

    .line 29
    iput-object p1, p0, Lcom/amazon/kindle/viewoptions/ui/AaSettingSheet;->orientationLockView:Landroid/view/View;

    return-void
.end method

.method protected final setSettingContentView(Lcom/amazon/kindle/viewoptions/ui/AaSettingsViewContent;)V
    .locals 0

    .line 39
    iput-object p1, p0, Lcom/amazon/kindle/viewoptions/ui/AaSettingSheet;->settingContentView:Lcom/amazon/kindle/viewoptions/ui/AaSettingsViewContent;

    return-void
.end method

.method protected final setSettingContentViewParent(Landroidx/coordinatorlayout/widget/CoordinatorLayout;)V
    .locals 0

    .line 40
    iput-object p1, p0, Lcom/amazon/kindle/viewoptions/ui/AaSettingSheet;->settingContentViewParent:Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    return-void
.end method

.method public abstract show(ZZ)V
.end method
