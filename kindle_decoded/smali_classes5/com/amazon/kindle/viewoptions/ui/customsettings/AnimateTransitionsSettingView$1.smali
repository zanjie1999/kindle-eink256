.class public final Lcom/amazon/kindle/viewoptions/ui/customsettings/AnimateTransitionsSettingView$1;
.super Landroid/view/View$AccessibilityDelegate;
.source "AnimateTransitionsSettingView.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kindle/viewoptions/ui/customsettings/AnimateTransitionsSettingView;-><init>(Landroid/content/Context;Lkotlin/jvm/functions/Function1;ZLkotlin/jvm/functions/Function2;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 106
    invoke-direct {p0}, Landroid/view/View$AccessibilityDelegate;-><init>()V

    return-void
.end method


# virtual methods
.method public sendAccessibilityEvent(Landroid/view/View;I)V
    .locals 1

    const/4 v0, 0x4

    if-ne p2, v0, :cond_0

    return-void

    .line 111
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/view/View$AccessibilityDelegate;->sendAccessibilityEvent(Landroid/view/View;I)V

    return-void
.end method
