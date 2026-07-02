.class public final Lcom/amazon/kindle/viewoptions/ui/AaSettingTabLayout;
.super Lcom/google/android/material/tabs/TabLayout;
.source "AaSettingTabLayout.kt"


# instance fields
.field private _$_findViewCache:Ljava/util/HashMap;

.field private bottomSheetBehavior:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/material/bottomsheet/BottomSheetBehavior<",
            "*>;"
        }
    .end annotation
.end field

.field private interceptTouchListener:Landroid/view/View$OnTouchListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "attrs"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    invoke-direct {p0, p1, p2}, Lcom/google/android/material/tabs/TabLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 52
    new-instance p1, Lcom/amazon/kindle/viewoptions/ui/AaSettingTabLayout$interceptTouchListener$1;

    invoke-direct {p1, p0}, Lcom/amazon/kindle/viewoptions/ui/AaSettingTabLayout$interceptTouchListener$1;-><init>(Lcom/amazon/kindle/viewoptions/ui/AaSettingTabLayout;)V

    iput-object p1, p0, Lcom/amazon/kindle/viewoptions/ui/AaSettingTabLayout;->interceptTouchListener:Landroid/view/View$OnTouchListener;

    return-void
.end method

.method public static final synthetic access$getBottomSheetBehavior$p(Lcom/amazon/kindle/viewoptions/ui/AaSettingTabLayout;)Lcom/google/android/material/bottomsheet/BottomSheetBehavior;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/amazon/kindle/viewoptions/ui/AaSettingTabLayout;->bottomSheetBehavior:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    return-object p0
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 2

    .line 41
    invoke-super {p0}, Lcom/google/android/material/tabs/TabLayout;->onAttachedToWindow()V

    .line 42
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    check-cast v0, Landroid/app/Activity;

    sget v1, Lcom/amazon/kindle/krl/R$id;->aa_menu_v2_setting_content:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/amazon/kindle/viewoptions/ui/AaSettingsViewContent;

    .line 44
    invoke-virtual {v0}, Lcom/amazon/kindle/viewoptions/ui/AaSettingsViewContent;->getBottomSheetBehavior()Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kindle/viewoptions/ui/AaSettingTabLayout;->bottomSheetBehavior:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    return-void

    .line 42
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "null cannot be cast to non-null type android.app.Activity"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 30
    iget-object v0, p0, Lcom/amazon/kindle/viewoptions/ui/AaSettingTabLayout;->interceptTouchListener:Landroid/view/View$OnTouchListener;

    invoke-interface {v0, p0, p1}, Landroid/view/View$OnTouchListener;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    .line 31
    invoke-super {p0, p1}, Landroid/widget/HorizontalScrollView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/amazon/kindle/viewoptions/ui/AaSettingTabLayout;->interceptTouchListener:Landroid/view/View$OnTouchListener;

    invoke-interface {v0, p0, p1}, Landroid/view/View$OnTouchListener;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    .line 37
    invoke-super {p0, p1}, Landroid/widget/HorizontalScrollView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method
