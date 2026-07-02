.class public final Lcom/amazon/kindle/viewoptions/ui/AaSettingTabLayout$interceptTouchListener$1;
.super Ljava/lang/Object;
.source "AaSettingTabLayout.kt"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kindle/viewoptions/ui/AaSettingTabLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field private final mSlop:I

.field private oldY:F

.field final synthetic this$0:Lcom/amazon/kindle/viewoptions/ui/AaSettingTabLayout;


# direct methods
.method constructor <init>(Lcom/amazon/kindle/viewoptions/ui/AaSettingTabLayout;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 52
    iput-object p1, p0, Lcom/amazon/kindle/viewoptions/ui/AaSettingTabLayout$interceptTouchListener$1;->this$0:Lcom/amazon/kindle/viewoptions/ui/AaSettingTabLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    invoke-virtual {p1}, Landroid/widget/HorizontalScrollView;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p1

    const-string v0, "ViewConfiguration.get(context)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result p1

    iput p1, p0, Lcom/amazon/kindle/viewoptions/ui/AaSettingTabLayout$interceptTouchListener$1;->mSlop:I

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 4

    .line 58
    iget-object p1, p0, Lcom/amazon/kindle/viewoptions/ui/AaSettingTabLayout$interceptTouchListener$1;->this$0:Lcom/amazon/kindle/viewoptions/ui/AaSettingTabLayout;

    invoke-static {p1}, Lcom/amazon/kindle/viewoptions/ui/AaSettingTabLayout;->access$getBottomSheetBehavior$p(Lcom/amazon/kindle/viewoptions/ui/AaSettingTabLayout;)Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    move-result-object p1

    const/4 v0, 0x1

    if-nez p1, :cond_0

    return v0

    :cond_0
    if-eqz p2, :cond_1

    .line 63
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    if-nez v1, :cond_2

    goto :goto_1

    .line 64
    :cond_2
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-nez v2, :cond_3

    .line 65
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iput p1, p0, Lcom/amazon/kindle/viewoptions/ui/AaSettingTabLayout$interceptTouchListener$1;->oldY:F

    goto :goto_3

    :cond_3
    :goto_1
    const/4 v2, 0x2

    if-nez v1, :cond_4

    goto :goto_2

    .line 67
    :cond_4
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ne v3, v2, :cond_6

    .line 68
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p2

    .line 69
    iget v1, p0, Lcom/amazon/kindle/viewoptions/ui/AaSettingTabLayout$interceptTouchListener$1;->oldY:F

    sub-float/2addr v1, p2

    .line 71
    iget p2, p0, Lcom/amazon/kindle/viewoptions/ui/AaSettingTabLayout$interceptTouchListener$1;->mSlop:I

    neg-int p2, p2

    int-to-float p2, p2

    cmpg-float p2, v1, p2

    if-gez p2, :cond_8

    .line 72
    invoke-virtual {p1}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->getState()I

    move-result p2

    const/4 v1, 0x3

    const/4 v2, 0x4

    if-ne p2, v1, :cond_5

    .line 73
    invoke-virtual {p1, v2}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->setState(I)V

    goto :goto_3

    .line 74
    :cond_5
    invoke-virtual {p1}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->getState()I

    move-result p2

    if-ne p2, v2, :cond_8

    const/4 p2, 0x5

    .line 75
    invoke-virtual {p1, p2}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->setState(I)V

    goto :goto_3

    :cond_6
    :goto_2
    if-nez v1, :cond_7

    goto :goto_3

    .line 79
    :cond_7
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-ne p1, v0, :cond_8

    iget-object p1, p0, Lcom/amazon/kindle/viewoptions/ui/AaSettingTabLayout$interceptTouchListener$1;->this$0:Lcom/amazon/kindle/viewoptions/ui/AaSettingTabLayout;

    invoke-virtual {p1}, Landroid/widget/HorizontalScrollView;->performClick()Z

    :cond_8
    :goto_3
    return v0
.end method
