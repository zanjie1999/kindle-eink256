.class public Lcom/amazon/kindle/library/widget/ToggleGroup;
.super Landroid/widget/LinearLayout;
.source "ToggleGroup.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kindle/library/widget/ToggleGroup$PassThroughHierarchyChangeListener;,
        Lcom/amazon/kindle/library/widget/ToggleGroup$CheckedStateTracker;,
        Lcom/amazon/kindle/library/widget/ToggleGroup$OnCheckedChangeListener;,
        Lcom/amazon/kindle/library/widget/ToggleGroup$LayoutParams;
    }
.end annotation


# instance fields
.field private checkedToggleButtonId:I

.field private final mChildOnCheckedChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

.field private mOnCheckedChangeListener:Lcom/amazon/kindle/library/widget/ToggleGroup$OnCheckedChangeListener;

.field private final mPassThroughListener:Lcom/amazon/kindle/library/widget/ToggleGroup$PassThroughHierarchyChangeListener;

.field private mProtectFromCheckedChange:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 6

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/amazon/kindle/library/widget/ToggleGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6

    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/amazon/kindle/library/widget/ToggleGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, -0x1

    .line 42
    iput v0, p0, Lcom/amazon/kindle/library/widget/ToggleGroup;->checkedToggleButtonId:I

    const/4 v1, 0x0

    .line 43
    iput-boolean v1, p0, Lcom/amazon/kindle/library/widget/ToggleGroup;->mProtectFromCheckedChange:Z

    .line 45
    sget-object v2, Lcom/amazon/kindle/librarymodule/R$styleable;->kindle_ToggleGroup:[I

    invoke-virtual {p1, p2, v2, p3, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    const-string p2, "context.obtainStyledAttr\u2026leGroup, defStyleAttr, 0)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 46
    sget p2, Lcom/amazon/kindle/librarymodule/R$styleable;->kindle_ToggleGroup_android_checkedButton:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    if-eq p2, v0, :cond_0

    .line 48
    iput p2, p0, Lcom/amazon/kindle/library/widget/ToggleGroup;->checkedToggleButtonId:I

    .line 51
    :cond_0
    sget p2, Lcom/amazon/kindle/librarymodule/R$styleable;->kindle_ToggleGroup_android_orientation:I

    const/4 p3, 0x1

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    .line 52
    invoke-virtual {p0, p2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 53
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 54
    new-instance p1, Lcom/amazon/kindle/library/widget/ToggleGroup$CheckedStateTracker;

    invoke-direct {p1, p0}, Lcom/amazon/kindle/library/widget/ToggleGroup$CheckedStateTracker;-><init>(Lcom/amazon/kindle/library/widget/ToggleGroup;)V

    iput-object p1, p0, Lcom/amazon/kindle/library/widget/ToggleGroup;->mChildOnCheckedChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    .line 55
    new-instance p1, Lcom/amazon/kindle/library/widget/ToggleGroup$PassThroughHierarchyChangeListener;

    invoke-direct {p1, p0}, Lcom/amazon/kindle/library/widget/ToggleGroup$PassThroughHierarchyChangeListener;-><init>(Lcom/amazon/kindle/library/widget/ToggleGroup;)V

    iput-object p1, p0, Lcom/amazon/kindle/library/widget/ToggleGroup;->mPassThroughListener:Lcom/amazon/kindle/library/widget/ToggleGroup$PassThroughHierarchyChangeListener;

    .line 56
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setOnHierarchyChangeListener(Landroid/view/ViewGroup$OnHierarchyChangeListener;)V

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    const/4 p2, 0x0

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    const/4 p3, 0x0

    .line 28
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/amazon/kindle/library/widget/ToggleGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public static final synthetic access$generateNewViewId(Lcom/amazon/kindle/library/widget/ToggleGroup;)I
    .locals 0

    .line 26
    invoke-direct {p0}, Lcom/amazon/kindle/library/widget/ToggleGroup;->generateNewViewId()I

    move-result p0

    return p0
.end method

.method public static final synthetic access$getMChildOnCheckedChangeListener$p(Lcom/amazon/kindle/library/widget/ToggleGroup;)Landroid/widget/CompoundButton$OnCheckedChangeListener;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/amazon/kindle/library/widget/ToggleGroup;->mChildOnCheckedChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    return-object p0
.end method

.method public static final synthetic access$getMProtectFromCheckedChange$p(Lcom/amazon/kindle/library/widget/ToggleGroup;)Z
    .locals 0

    .line 26
    iget-boolean p0, p0, Lcom/amazon/kindle/library/widget/ToggleGroup;->mProtectFromCheckedChange:Z

    return p0
.end method

.method public static final synthetic access$setCheckedId(Lcom/amazon/kindle/library/widget/ToggleGroup;I)V
    .locals 0

    .line 26
    invoke-direct {p0, p1}, Lcom/amazon/kindle/library/widget/ToggleGroup;->setCheckedId(I)V

    return-void
.end method

.method public static final synthetic access$setCheckedStateForView(Lcom/amazon/kindle/library/widget/ToggleGroup;IZ)V
    .locals 0

    .line 26
    invoke-direct {p0, p1, p2}, Lcom/amazon/kindle/library/widget/ToggleGroup;->setCheckedStateForView(IZ)V

    return-void
.end method

.method public static final synthetic access$setMProtectFromCheckedChange$p(Lcom/amazon/kindle/library/widget/ToggleGroup;Z)V
    .locals 0

    .line 26
    iput-boolean p1, p0, Lcom/amazon/kindle/library/widget/ToggleGroup;->mProtectFromCheckedChange:Z

    return-void
.end method

.method private final generateNewViewId()I
    .locals 1

    .line 161
    invoke-static {}, Landroid/view/View;->generateViewId()I

    move-result v0

    return v0
.end method

.method private final setCheckedId(I)V
    .locals 1

    .line 112
    iput p1, p0, Lcom/amazon/kindle/library/widget/ToggleGroup;->checkedToggleButtonId:I

    .line 113
    iget-object v0, p0, Lcom/amazon/kindle/library/widget/ToggleGroup;->mOnCheckedChangeListener:Lcom/amazon/kindle/library/widget/ToggleGroup$OnCheckedChangeListener;

    if-eqz v0, :cond_0

    if-eqz v0, :cond_0

    .line 114
    invoke-interface {v0, p0, p1}, Lcom/amazon/kindle/library/widget/ToggleGroup$OnCheckedChangeListener;->onCheckedChanged(Lcom/amazon/kindle/library/widget/ToggleGroup;I)V

    :cond_0
    return-void
.end method

.method private final setCheckedStateForView(IZ)V
    .locals 1

    .line 122
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .line 123
    instance-of v0, p1, Landroid/widget/ToggleButton;

    if-eqz v0, :cond_0

    .line 124
    check-cast p1, Landroid/widget/ToggleButton;

    invoke-virtual {p1, p2}, Landroid/widget/ToggleButton;->setChecked(Z)V

    :cond_0
    return-void
.end method


# virtual methods
.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 4

    const-string v0, "child"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "layoutParams"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 74
    instance-of v0, p1, Landroid/widget/ToggleButton;

    if-eqz v0, :cond_1

    .line 75
    move-object v0, p1

    check-cast v0, Landroid/widget/ToggleButton;

    invoke-virtual {v0}, Landroid/widget/ToggleButton;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    .line 76
    iput-boolean v1, p0, Lcom/amazon/kindle/library/widget/ToggleGroup;->mProtectFromCheckedChange:Z

    .line 77
    iget v1, p0, Lcom/amazon/kindle/library/widget/ToggleGroup;->checkedToggleButtonId:I

    const/4 v2, -0x1

    const/4 v3, 0x0

    if-eq v1, v2, :cond_0

    .line 78
    invoke-direct {p0, v1, v3}, Lcom/amazon/kindle/library/widget/ToggleGroup;->setCheckedStateForView(IZ)V

    .line 80
    :cond_0
    iput-boolean v3, p0, Lcom/amazon/kindle/library/widget/ToggleGroup;->mProtectFromCheckedChange:Z

    .line 81
    invoke-virtual {v0}, Landroid/widget/ToggleButton;->getId()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/amazon/kindle/library/widget/ToggleGroup;->setCheckedId(I)V

    .line 85
    :cond_1
    invoke-super {p0, p1, p2, p3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public check(I)V
    .locals 3

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    .line 97
    iget v1, p0, Lcom/amazon/kindle/library/widget/ToggleGroup;->checkedToggleButtonId:I

    if-eq p1, v1, :cond_3

    .line 98
    :cond_0
    iget v1, p0, Lcom/amazon/kindle/library/widget/ToggleGroup;->checkedToggleButtonId:I

    if-eq v1, v0, :cond_1

    const/4 v2, 0x0

    .line 99
    invoke-direct {p0, v1, v2}, Lcom/amazon/kindle/library/widget/ToggleGroup;->setCheckedStateForView(IZ)V

    :cond_1
    if-eq p1, v0, :cond_2

    const/4 v0, 0x1

    .line 102
    invoke-direct {p0, p1, v0}, Lcom/amazon/kindle/library/widget/ToggleGroup;->setCheckedStateForView(IZ)V

    .line 104
    :cond_2
    iput p1, p0, Lcom/amazon/kindle/library/widget/ToggleGroup;->checkedToggleButtonId:I

    :cond_3
    return-void
.end method

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1

    const-string v0, "layoutParams"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 143
    instance-of p1, p1, Lcom/amazon/kindle/library/widget/ToggleGroup$LayoutParams;

    return p1
.end method

.method public bridge synthetic generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .line 26
    invoke-virtual {p0}, Lcom/amazon/kindle/library/widget/ToggleGroup;->generateDefaultLayoutParams()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected generateDefaultLayoutParams()Landroid/widget/LinearLayout$LayoutParams;
    .locals 2

    .line 147
    new-instance v0, Lcom/amazon/kindle/library/widget/ToggleGroup$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Lcom/amazon/kindle/library/widget/ToggleGroup$LayoutParams;-><init>(II)V

    return-object v0
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    .line 26
    invoke-virtual {p0, p1}, Lcom/amazon/kindle/library/widget/ToggleGroup;->generateLayoutParams(Landroid/util/AttributeSet;)Lcom/amazon/kindle/library/widget/ToggleGroup$LayoutParams;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/LinearLayout$LayoutParams;
    .locals 0

    .line 26
    invoke-virtual {p0, p1}, Lcom/amazon/kindle/library/widget/ToggleGroup;->generateLayoutParams(Landroid/util/AttributeSet;)Lcom/amazon/kindle/library/widget/ToggleGroup$LayoutParams;

    move-result-object p1

    return-object p1
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Lcom/amazon/kindle/library/widget/ToggleGroup$LayoutParams;
    .locals 3

    const-string v0, "attributeSet"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 139
    new-instance v0, Lcom/amazon/kindle/library/widget/ToggleGroup$LayoutParams;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "this.context"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, v1, p1}, Lcom/amazon/kindle/library/widget/ToggleGroup$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method public final getCheckedToggleButtonId()I
    .locals 1

    .line 32
    iget v0, p0, Lcom/amazon/kindle/library/widget/ToggleGroup;->checkedToggleButtonId:I

    return v0
.end method

.method protected onFinishInflate()V
    .locals 2

    .line 64
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 65
    iget v0, p0, Lcom/amazon/kindle/library/widget/ToggleGroup;->checkedToggleButtonId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v1, 0x1

    .line 66
    iput-boolean v1, p0, Lcom/amazon/kindle/library/widget/ToggleGroup;->mProtectFromCheckedChange:Z

    .line 67
    invoke-direct {p0, v0, v1}, Lcom/amazon/kindle/library/widget/ToggleGroup;->setCheckedStateForView(IZ)V

    const/4 v0, 0x0

    .line 68
    iput-boolean v0, p0, Lcom/amazon/kindle/library/widget/ToggleGroup;->mProtectFromCheckedChange:Z

    .line 69
    iget v0, p0, Lcom/amazon/kindle/library/widget/ToggleGroup;->checkedToggleButtonId:I

    invoke-direct {p0, v0}, Lcom/amazon/kindle/library/widget/ToggleGroup;->setCheckedId(I)V

    :cond_0
    return-void
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 151
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 152
    const-class v0, Lcom/amazon/kindle/library/widget/ToggleGroup;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1

    const-string v0, "accessibilityNodeInfo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 156
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 157
    const-class v0, Lcom/amazon/kindle/library/widget/ToggleGroup;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final setOnCheckedChangeListener$LibraryModule_release(Lcom/amazon/kindle/library/widget/ToggleGroup$OnCheckedChangeListener;)V
    .locals 1

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 135
    iput-object p1, p0, Lcom/amazon/kindle/library/widget/ToggleGroup;->mOnCheckedChangeListener:Lcom/amazon/kindle/library/widget/ToggleGroup$OnCheckedChangeListener;

    return-void
.end method

.method public setOnHierarchyChangeListener(Landroid/view/ViewGroup$OnHierarchyChangeListener;)V
    .locals 1

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 60
    iget-object v0, p0, Lcom/amazon/kindle/library/widget/ToggleGroup;->mPassThroughListener:Lcom/amazon/kindle/library/widget/ToggleGroup$PassThroughHierarchyChangeListener;

    invoke-virtual {v0, p1}, Lcom/amazon/kindle/library/widget/ToggleGroup$PassThroughHierarchyChangeListener;->setMOnHierarchyChangeListener$LibraryModule_release(Landroid/view/ViewGroup$OnHierarchyChangeListener;)V

    return-void
.end method
