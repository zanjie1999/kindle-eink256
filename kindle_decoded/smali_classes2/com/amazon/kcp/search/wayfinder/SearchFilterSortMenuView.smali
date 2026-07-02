.class public final Lcom/amazon/kcp/search/wayfinder/SearchFilterSortMenuView;
.super Landroid/widget/ExpandableListView;
.source "SearchFilterSortMenuView.kt"


# instance fields
.field private _$_findViewCache:Ljava/util/HashMap;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 12
    invoke-direct {p0, p1}, Landroid/widget/ExpandableListView;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 19
    invoke-virtual {p0, p1}, Landroid/widget/ExpandableListView;->setDividerHeight(I)V

    const/4 p1, 0x0

    .line 22
    invoke-virtual {p0, p1}, Landroid/widget/ExpandableListView;->setGroupIndicator(Landroid/graphics/drawable/Drawable;)V

    .line 23
    invoke-virtual {p0, p1}, Landroid/widget/ExpandableListView;->setChildIndicator(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method


# virtual methods
.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 30
    invoke-virtual {p0, v0}, Landroid/widget/ExpandableListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "getChildAt(0)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    if-eqz v0, :cond_0

    .line 31
    invoke-virtual {p0}, Landroid/widget/ExpandableListView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 33
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/ExpandableListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method
