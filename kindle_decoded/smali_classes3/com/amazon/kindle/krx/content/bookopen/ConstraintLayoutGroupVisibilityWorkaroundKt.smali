.class public final Lcom/amazon/kindle/krx/content/bookopen/ConstraintLayoutGroupVisibilityWorkaroundKt;
.super Ljava/lang/Object;
.source "ConstraintLayoutGroupVisibilityWorkaround.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nConstraintLayoutGroupVisibilityWorkaround.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ConstraintLayoutGroupVisibilityWorkaround.kt\ncom/amazon/kindle/krx/content/bookopen/ConstraintLayoutGroupVisibilityWorkaroundKt\n+ 2 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n*L\n1#1,23:1\n13506#2,2:24\n13506#2,2:26\n*E\n*S KotlinDebug\n*F\n+ 1 ConstraintLayoutGroupVisibilityWorkaround.kt\ncom/amazon/kindle/krx/content/bookopen/ConstraintLayoutGroupVisibilityWorkaroundKt\n*L\n18#1,2:24\n22#1,2:26\n*E\n"
.end annotation


# direct methods
.method public static final addTarget(Landroid/transition/Transition;Lcom/amazon/kindle/krx/content/bookopen/ConstraintLayoutGroup;)V
    .locals 3

    const-string v0, "$this$addTarget"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "group"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    invoke-virtual {p1}, Lcom/amazon/kindle/krx/content/bookopen/ConstraintLayoutGroup;->getViews()[Landroid/view/View;

    move-result-object p1

    .line 24
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    .line 18
    invoke-virtual {p0, v2}, Landroid/transition/Transition;->addTarget(Landroid/view/View;)Landroid/transition/Transition;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static final removeTarget(Landroid/transition/Transition;Lcom/amazon/kindle/krx/content/bookopen/ConstraintLayoutGroup;)V
    .locals 3

    const-string v0, "$this$removeTarget"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "group"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    invoke-virtual {p1}, Lcom/amazon/kindle/krx/content/bookopen/ConstraintLayoutGroup;->getViews()[Landroid/view/View;

    move-result-object p1

    .line 26
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    .line 22
    invoke-virtual {p0, v2}, Landroid/transition/Transition;->removeTarget(Landroid/view/View;)Landroid/transition/Transition;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
