.class public final Lcom/amazon/kindle/ffs/utils/AccessibilityUtilsKt;
.super Ljava/lang/Object;
.source "AccessibilityUtils.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAccessibilityUtils.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AccessibilityUtils.kt\ncom/amazon/kindle/ffs/utils/AccessibilityUtilsKt\n*L\n1#1,39:1\n10#1:40\n26#1:41\n*E\n*S KotlinDebug\n*F\n+ 1 AccessibilityUtils.kt\ncom/amazon/kindle/ffs/utils/AccessibilityUtilsKt\n*L\n34#1:40\n34#1:41\n*E\n"
.end annotation


# direct methods
.method public static final doOnLayout(Landroid/view/View;Lkotlin/jvm/functions/Function1;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroid/view/View;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "$this$doOnLayout"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "action"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->isLaidOut(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->isLayoutRequested()Z

    move-result v0

    if-nez v0, :cond_0

    .line 32
    invoke-interface {p1, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 40
    :cond_0
    new-instance v0, Lcom/amazon/kindle/ffs/utils/AccessibilityUtilsKt$doOnLayout$$inlined$doOnNextLayout$1;

    invoke-direct {v0, p1}, Lcom/amazon/kindle/ffs/utils/AccessibilityUtilsKt$doOnLayout$$inlined$doOnNextLayout$1;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {p0, v0}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    :goto_0
    return-void
.end method

.method public static final doOnNextLayout(Landroid/view/View;Lkotlin/jvm/functions/Function1;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroid/view/View;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "$this$doOnNextLayout"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "action"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    new-instance v0, Lcom/amazon/kindle/ffs/utils/AccessibilityUtilsKt$doOnNextLayout$1;

    invoke-direct {v0, p1}, Lcom/amazon/kindle/ffs/utils/AccessibilityUtilsKt$doOnNextLayout$1;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {p0, v0}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    return-void
.end method
