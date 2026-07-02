.class public final Lcom/amazon/kindle/toast/snackbar/SnackbarToast;
.super Ljava/lang/Object;
.source "SnackbarToast.kt"

# interfaces
.implements Lcom/amazon/kindle/toast/KindleToast;


# instance fields
.field private actionBackgroundDrawable:Landroid/graphics/drawable/Drawable;

.field private actionTextColor:I

.field private backgroundColor:I

.field private final config:Lcom/amazon/kindle/toast/snackbar/SnackbarToastConfig;

.field private messageTextColor:I


# direct methods
.method public constructor <init>(Lcom/amazon/kindle/toast/snackbar/SnackbarToastConfig;)V
    .locals 1

    const-string v0, "config"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/amazon/kindle/toast/snackbar/SnackbarToast;->config:Lcom/amazon/kindle/toast/snackbar/SnackbarToastConfig;

    return-void
.end method

.method public static final synthetic access$setPaddingWithSafeInsets(Lcom/amazon/kindle/toast/snackbar/SnackbarToast;Landroid/view/View;IILcom/amazon/kcp/util/device/SafeInsets;)V
    .locals 0

    .line 37
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/amazon/kindle/toast/snackbar/SnackbarToast;->setPaddingWithSafeInsets(Landroid/view/View;IILcom/amazon/kcp/util/device/SafeInsets;)V

    return-void
.end method

.method private final getInitialSafeInsets()Lcom/amazon/kcp/util/device/SafeInsets;
    .locals 8

    .line 109
    iget-object v0, p0, Lcom/amazon/kindle/toast/snackbar/SnackbarToast;->config:Lcom/amazon/kindle/toast/snackbar/SnackbarToastConfig;

    invoke-virtual {v0}, Lcom/amazon/kindle/toast/snackbar/SnackbarToastConfig;->getShouldUseSafeInsets()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 110
    iget-object v0, p0, Lcom/amazon/kindle/toast/snackbar/SnackbarToast;->config:Lcom/amazon/kindle/toast/snackbar/SnackbarToastConfig;

    invoke-virtual {v0}, Lcom/amazon/kindle/toast/snackbar/SnackbarToastConfig;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/kcp/util/device/DisplayCutoutUtils;->getDisplayCutoutSafeInsets(Landroid/app/Activity;)Lcom/amazon/kcp/util/device/SafeInsets;

    move-result-object v0

    return-object v0

    .line 112
    :cond_0
    new-instance v0, Lcom/amazon/kcp/util/device/SafeInsets;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0xf

    const/4 v7, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lcom/amazon/kcp/util/device/SafeInsets;-><init>(IIIIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0
.end method

.method private final setAttributeProperties(Landroid/content/Context;)V
    .locals 6

    const/4 v0, 0x4

    new-array v0, v0, [I

    .line 67
    iget-object v1, p0, Lcom/amazon/kindle/toast/snackbar/SnackbarToast;->config:Lcom/amazon/kindle/toast/snackbar/SnackbarToastConfig;

    invoke-virtual {v1}, Lcom/amazon/kindle/toast/snackbar/SnackbarToastConfig;->getBackgroundColorAttr()I

    move-result v1

    const/4 v2, 0x0

    aput v1, v0, v2

    iget-object v1, p0, Lcom/amazon/kindle/toast/snackbar/SnackbarToast;->config:Lcom/amazon/kindle/toast/snackbar/SnackbarToastConfig;

    invoke-virtual {v1}, Lcom/amazon/kindle/toast/snackbar/SnackbarToastConfig;->getMessageTextColorAttr()I

    move-result v1

    const/4 v3, 0x1

    aput v1, v0, v3

    .line 68
    iget-object v1, p0, Lcom/amazon/kindle/toast/snackbar/SnackbarToast;->config:Lcom/amazon/kindle/toast/snackbar/SnackbarToastConfig;

    invoke-virtual {v1}, Lcom/amazon/kindle/toast/snackbar/SnackbarToastConfig;->getActionTextColorAttr()I

    move-result v1

    const/4 v4, 0x2

    aput v1, v0, v4

    iget-object v1, p0, Lcom/amazon/kindle/toast/snackbar/SnackbarToast;->config:Lcom/amazon/kindle/toast/snackbar/SnackbarToastConfig;

    invoke-virtual {v1}, Lcom/amazon/kindle/toast/snackbar/SnackbarToastConfig;->getActionBackgroundDrawableAttr()I

    move-result v1

    const/4 v5, 0x3

    aput v1, v0, v5

    .line 69
    invoke-virtual {p1, v0}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    const-string v1, "context.obtainStyledAttributes(attrs)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 70
    sget v1, Lcom/amazon/kindle/krl/R$color;->kindle_toast_background_dark:I

    invoke-static {p1, v1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v2, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/amazon/kindle/toast/snackbar/SnackbarToast;->backgroundColor:I

    .line 71
    sget v1, Lcom/amazon/kindle/krl/R$color;->kindle_toast_message_text_color_dark:I

    invoke-static {p1, v1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v3, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/amazon/kindle/toast/snackbar/SnackbarToast;->messageTextColor:I

    .line 72
    sget v1, Lcom/amazon/kindle/krl/R$color;->kindle_toast_action_text_color_dark:I

    invoke-static {p1, v1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v4, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/amazon/kindle/toast/snackbar/SnackbarToast;->actionTextColor:I

    .line 73
    invoke-virtual {v0, v5}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    sget v1, Lcom/amazon/kindle/krl/R$drawable;->bg_kindle_toast_dark:I

    invoke-static {p1, v1}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const-string p1, "ContextCompat.getDrawabl\u2026e.bg_kindle_toast_dark)!!"

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    iput-object v1, p0, Lcom/amazon/kindle/toast/snackbar/SnackbarToast;->actionBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    .line 74
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private final setCustomSwipeBehavior(Lcom/amazon/kindle/toast/snackbar/Snackbar;Lcom/amazon/kindle/toast/snackbar/SnackbarToastDismissHandler;)V
    .locals 2

    .line 158
    invoke-virtual {p1}, Lcom/amazon/kindle/toast/snackbar/Snackbar;->getView()Landroid/view/View;

    move-result-object v0

    const-string/jumbo v1, "snackbar.view"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/amazon/kindle/toast/snackbar/SnackbarToast$setCustomSwipeBehavior$1;

    invoke-direct {v1, p1, p2}, Lcom/amazon/kindle/toast/snackbar/SnackbarToast$setCustomSwipeBehavior$1;-><init>(Lcom/amazon/kindle/toast/snackbar/Snackbar;Lcom/amazon/kindle/toast/snackbar/SnackbarToastDismissHandler;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method

.method private final setPaddingWithSafeInsets(Landroid/view/View;IILcom/amazon/kcp/util/device/SafeInsets;)V
    .locals 3

    .line 117
    invoke-virtual {p4}, Lcom/amazon/kcp/util/device/SafeInsets;->getLeft()I

    move-result v0

    add-int/2addr v0, p3

    .line 118
    invoke-virtual {p4}, Lcom/amazon/kcp/util/device/SafeInsets;->getTop()I

    move-result v1

    add-int/2addr v1, p2

    .line 119
    invoke-virtual {p4}, Lcom/amazon/kcp/util/device/SafeInsets;->getRight()I

    move-result v2

    add-int/2addr p3, v2

    .line 120
    invoke-virtual {p4}, Lcom/amazon/kcp/util/device/SafeInsets;->getBottom()I

    move-result p4

    add-int/2addr p2, p4

    .line 117
    invoke-virtual {p1, v0, v1, p3, p2}, Landroid/view/View;->setPadding(IIII)V

    return-void
.end method

.method private final setupButtonActionView(Landroid/content/Context;Lcom/amazon/kindle/toast/snackbar/Snackbar;Lcom/amazon/kindle/toast/KindleToastAction;Lcom/amazon/kindle/toast/snackbar/SnackbarToastDismissHandler;)V
    .locals 2

    .line 135
    invoke-interface {p3}, Lcom/amazon/kindle/toast/KindleToastAction;->actionText()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/amazon/kindle/toast/snackbar/SnackbarToast$setupButtonActionView$1;->INSTANCE:Lcom/amazon/kindle/toast/snackbar/SnackbarToast$setupButtonActionView$1;

    invoke-virtual {p2, v0, v1}, Lcom/amazon/kindle/toast/snackbar/Snackbar;->setAction(Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;)Lcom/amazon/kindle/toast/snackbar/Snackbar;

    .line 136
    invoke-virtual {p2}, Lcom/amazon/kindle/toast/snackbar/Snackbar;->getView()Landroid/view/View;

    move-result-object p2

    sget v0, Lcom/amazon/kindle/krl/R$id;->snackbar_action:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    const-string/jumbo v0, "snackbar.view.findViewById(R.id.snackbar_action)"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Landroid/widget/TextView;

    .line 137
    new-instance v0, Lcom/amazon/kindle/toast/snackbar/SnackbarToast$setupButtonActionView$2;

    invoke-direct {v0, p3, p4}, Lcom/amazon/kindle/toast/snackbar/SnackbarToast$setupButtonActionView$2;-><init>(Lcom/amazon/kindle/toast/KindleToastAction;Lcom/amazon/kindle/toast/snackbar/SnackbarToastDismissHandler;)V

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 141
    iget p3, p0, Lcom/amazon/kindle/toast/snackbar/SnackbarToast;->actionTextColor:I

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 142
    iget-object p3, p0, Lcom/amazon/kindle/toast/snackbar/SnackbarToast;->actionBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz p3, :cond_1

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 143
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 144
    iget-object p3, p0, Lcom/amazon/kindle/toast/snackbar/SnackbarToast;->config:Lcom/amazon/kindle/toast/snackbar/SnackbarToastConfig;

    invoke-virtual {p3}, Lcom/amazon/kindle/toast/snackbar/SnackbarToastConfig;->getActionTextSizeRes()I

    move-result p3

    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p3

    const/4 p4, 0x0

    invoke-virtual {p2, p4, p3}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 146
    iget-object p3, p0, Lcom/amazon/kindle/toast/snackbar/SnackbarToast;->config:Lcom/amazon/kindle/toast/snackbar/SnackbarToastConfig;

    invoke-virtual {p3}, Lcom/amazon/kindle/toast/snackbar/SnackbarToastConfig;->getActionPaddingHorizontalRes()I

    move-result p3

    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p3

    float-to-int p3, p3

    .line 147
    iget-object v0, p0, Lcom/amazon/kindle/toast/snackbar/SnackbarToast;->config:Lcom/amazon/kindle/toast/snackbar/SnackbarToastConfig;

    invoke-virtual {v0}, Lcom/amazon/kindle/toast/snackbar/SnackbarToastConfig;->getActionPaddingVerticalRes()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    float-to-int p1, p1

    .line 148
    invoke-virtual {p2, p3, p1, p3, p1}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 149
    invoke-virtual {p2}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    if-eqz p1, :cond_0

    check-cast p1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {p1, p4, p4, p4, p4}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 151
    invoke-virtual {p2, p4}, Landroid/widget/TextView;->setMinHeight(I)V

    .line 152
    invoke-virtual {p2, p4}, Landroid/widget/TextView;->setMinimumHeight(I)V

    .line 153
    invoke-virtual {p2, p4}, Landroid/widget/TextView;->setMinWidth(I)V

    .line 154
    invoke-virtual {p2, p4}, Landroid/widget/TextView;->setMinimumWidth(I)V

    return-void

    .line 149
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "null cannot be cast to non-null type android.widget.LinearLayout.LayoutParams"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    const-string p1, "actionBackgroundDrawable"

    .line 142
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method

.method private final setupInsetsListener(Landroid/view/View;II)V
    .locals 1

    .line 124
    iget-object v0, p0, Lcom/amazon/kindle/toast/snackbar/SnackbarToast;->config:Lcom/amazon/kindle/toast/snackbar/SnackbarToastConfig;

    invoke-virtual {v0}, Lcom/amazon/kindle/toast/snackbar/SnackbarToastConfig;->getShouldUseSafeInsets()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/amazon/kcp/util/device/DisplayCutoutUtils;->isNotchSupportEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 126
    new-instance v0, Lcom/amazon/kindle/toast/snackbar/SnackbarToast$setupInsetsListener$1;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/amazon/kindle/toast/snackbar/SnackbarToast$setupInsetsListener$1;-><init>(Lcom/amazon/kindle/toast/snackbar/SnackbarToast;Landroid/view/View;II)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnApplyWindowInsetsListener(Landroid/view/View$OnApplyWindowInsetsListener;)V

    :cond_0
    return-void
.end method

.method private final styleKindleToastView(Landroid/content/Context;Landroid/view/View;Z)V
    .locals 3

    .line 78
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 79
    instance-of v1, v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;

    const/16 v2, 0x30

    if-eqz v1, :cond_0

    .line 80
    check-cast v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;

    iput v2, v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->gravity:I

    goto :goto_0

    .line 81
    :cond_0
    instance-of v1, v0, Landroid/widget/FrameLayout$LayoutParams;

    if-eqz v1, :cond_1

    .line 82
    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 85
    :cond_1
    :goto_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 86
    sget v0, Lcom/amazon/kindle/krl/R$id;->snackbar_text:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string/jumbo v1, "snackbarView.findViewById(R.id.snackbar_text)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/TextView;

    .line 88
    invoke-virtual {v0}, Landroid/widget/TextView;->getLineCount()I

    move-result v1

    const/4 v2, 0x1

    if-gt v1, v2, :cond_3

    if-eqz p3, :cond_2

    goto :goto_1

    .line 91
    :cond_2
    iget-object p3, p0, Lcom/amazon/kindle/toast/snackbar/SnackbarToast;->config:Lcom/amazon/kindle/toast/snackbar/SnackbarToastConfig;

    invoke-virtual {p3}, Lcom/amazon/kindle/toast/snackbar/SnackbarToastConfig;->getPaddingVerticalSingleLineRes()I

    move-result p3

    goto :goto_2

    .line 89
    :cond_3
    :goto_1
    iget-object p3, p0, Lcom/amazon/kindle/toast/snackbar/SnackbarToast;->config:Lcom/amazon/kindle/toast/snackbar/SnackbarToastConfig;

    invoke-virtual {p3}, Lcom/amazon/kindle/toast/snackbar/SnackbarToastConfig;->getPaddingVerticalMultiLineRes()I

    move-result p3

    .line 87
    :goto_2
    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p3

    float-to-int p3, p3

    .line 93
    iget-object v1, p0, Lcom/amazon/kindle/toast/snackbar/SnackbarToast;->config:Lcom/amazon/kindle/toast/snackbar/SnackbarToastConfig;

    invoke-virtual {v1}, Lcom/amazon/kindle/toast/snackbar/SnackbarToastConfig;->getPaddingHorizontalRes()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    .line 94
    invoke-direct {p0}, Lcom/amazon/kindle/toast/snackbar/SnackbarToast;->getInitialSafeInsets()Lcom/amazon/kcp/util/device/SafeInsets;

    move-result-object v2

    invoke-direct {p0, p2, p3, v1, v2}, Lcom/amazon/kindle/toast/snackbar/SnackbarToast;->setPaddingWithSafeInsets(Landroid/view/View;IILcom/amazon/kcp/util/device/SafeInsets;)V

    .line 95
    invoke-direct {p0, p2, p3, v1}, Lcom/amazon/kindle/toast/snackbar/SnackbarToast;->setupInsetsListener(Landroid/view/View;II)V

    .line 96
    iget p3, p0, Lcom/amazon/kindle/toast/snackbar/SnackbarToast;->backgroundColor:I

    invoke-virtual {p2, p3}, Landroid/view/View;->setBackgroundColor(I)V

    .line 98
    iget-object p2, p0, Lcom/amazon/kindle/toast/snackbar/SnackbarToast;->config:Lcom/amazon/kindle/toast/snackbar/SnackbarToastConfig;

    invoke-virtual {p2}, Lcom/amazon/kindle/toast/snackbar/SnackbarToastConfig;->getMessageTextSizeRes()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p2

    const/4 p3, 0x0

    invoke-virtual {v0, p3, p2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 99
    iget-object p2, p0, Lcom/amazon/kindle/toast/snackbar/SnackbarToast;->config:Lcom/amazon/kindle/toast/snackbar/SnackbarToastConfig;

    invoke-virtual {p2}, Lcom/amazon/kindle/toast/snackbar/SnackbarToastConfig;->getMessageMaxLines()I

    move-result p2

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 100
    iget p2, p0, Lcom/amazon/kindle/toast/snackbar/SnackbarToast;->messageTextColor:I

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 101
    invoke-virtual {v0}, Landroid/widget/TextView;->getTypeface()Landroid/graphics/Typeface;

    move-result-object p2

    iget-object v1, p0, Lcom/amazon/kindle/toast/snackbar/SnackbarToast;->config:Lcom/amazon/kindle/toast/snackbar/SnackbarToastConfig;

    invoke-virtual {v1}, Lcom/amazon/kindle/toast/snackbar/SnackbarToastConfig;->getTypeface()I

    move-result v1

    invoke-virtual {v0, p2, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 102
    invoke-virtual {v0, p3, p3, p3, p3}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 104
    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    if-eqz p2, :cond_4

    check-cast p2, Landroid/widget/LinearLayout$LayoutParams;

    .line 105
    iget-object v0, p0, Lcom/amazon/kindle/toast/snackbar/SnackbarToast;->config:Lcom/amazon/kindle/toast/snackbar/SnackbarToastConfig;

    invoke-virtual {v0}, Lcom/amazon/kindle/toast/snackbar/SnackbarToastConfig;->getMessageActionMarginRes()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    float-to-int p1, p1

    .line 104
    invoke-virtual {p2, p3, p3, p1, p3}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    return-void

    :cond_4
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "null cannot be cast to non-null type android.widget.LinearLayout.LayoutParams"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public show()Lcom/amazon/kindle/toast/ToastDismissHandler;
    .locals 6

    .line 44
    iget-object v0, p0, Lcom/amazon/kindle/toast/snackbar/SnackbarToast;->config:Lcom/amazon/kindle/toast/snackbar/SnackbarToastConfig;

    invoke-virtual {v0}, Lcom/amazon/kindle/toast/snackbar/SnackbarToastConfig;->getAnchor()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kindle/toast/snackbar/SnackbarToast;->config:Lcom/amazon/kindle/toast/snackbar/SnackbarToastConfig;

    invoke-virtual {v1}, Lcom/amazon/kindle/toast/snackbar/SnackbarToastConfig;->getMessage()Ljava/lang/String;

    move-result-object v1

    const/4 v2, -0x2

    invoke-static {v0, v1, v2}, Lcom/amazon/kindle/toast/snackbar/Snackbar;->make(Landroid/view/View;Ljava/lang/CharSequence;I)Lcom/amazon/kindle/toast/snackbar/Snackbar;

    move-result-object v0

    const-string v1, "Snackbar.make(config.anc\u2026ackbar.LENGTH_INDEFINITE)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 45
    invoke-virtual {v0}, Lcom/amazon/kindle/toast/snackbar/Snackbar;->getView()Landroid/view/View;

    move-result-object v1

    const-string/jumbo v2, "snackbar.view"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 46
    new-instance v2, Lcom/amazon/kindle/toast/snackbar/SnackbarAnimator;

    iget-object v3, p0, Lcom/amazon/kindle/toast/snackbar/SnackbarToast;->config:Lcom/amazon/kindle/toast/snackbar/SnackbarToastConfig;

    invoke-virtual {v3}, Lcom/amazon/kindle/toast/snackbar/SnackbarToastConfig;->getAnimationInterpolator()Landroid/view/animation/Interpolator;

    move-result-object v3

    iget-object v4, p0, Lcom/amazon/kindle/toast/snackbar/SnackbarToast;->config:Lcom/amazon/kindle/toast/snackbar/SnackbarToastConfig;

    invoke-virtual {v4}, Lcom/amazon/kindle/toast/snackbar/SnackbarToastConfig;->getAnimationDuration()J

    move-result-wide v4

    invoke-direct {v2, v0, v3, v4, v5}, Lcom/amazon/kindle/toast/snackbar/SnackbarAnimator;-><init>(Lcom/amazon/kindle/toast/snackbar/Snackbar;Landroid/view/animation/Interpolator;J)V

    .line 47
    new-instance v3, Lcom/amazon/kindle/toast/snackbar/SnackbarToastDismissHandler;

    iget-object v4, p0, Lcom/amazon/kindle/toast/snackbar/SnackbarToast;->config:Lcom/amazon/kindle/toast/snackbar/SnackbarToastConfig;

    invoke-virtual {v4}, Lcom/amazon/kindle/toast/snackbar/SnackbarToastConfig;->getAutoDismissDuration()J

    move-result-wide v4

    invoke-direct {v3, v0, v2, v4, v5}, Lcom/amazon/kindle/toast/snackbar/SnackbarToastDismissHandler;-><init>(Lcom/amazon/kindle/toast/snackbar/Snackbar;Lcom/amazon/kindle/toast/snackbar/SnackbarAnimator;J)V

    .line 49
    iget-object v4, p0, Lcom/amazon/kindle/toast/snackbar/SnackbarToast;->config:Lcom/amazon/kindle/toast/snackbar/SnackbarToastConfig;

    invoke-virtual {v4}, Lcom/amazon/kindle/toast/snackbar/SnackbarToastConfig;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/amazon/kindle/toast/snackbar/SnackbarToast;->setAttributeProperties(Landroid/content/Context;)V

    .line 50
    iget-object v4, p0, Lcom/amazon/kindle/toast/snackbar/SnackbarToast;->config:Lcom/amazon/kindle/toast/snackbar/SnackbarToastConfig;

    invoke-virtual {v4}, Lcom/amazon/kindle/toast/snackbar/SnackbarToastConfig;->getActivity()Landroid/app/Activity;

    move-result-object v4

    iget-object v5, p0, Lcom/amazon/kindle/toast/snackbar/SnackbarToast;->config:Lcom/amazon/kindle/toast/snackbar/SnackbarToastConfig;

    invoke-virtual {v5}, Lcom/amazon/kindle/toast/snackbar/SnackbarToastConfig;->getButtonAction()Lcom/amazon/kindle/toast/KindleToastAction;

    move-result-object v5

    if-eqz v5, :cond_0

    const/4 v5, 0x1

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    :goto_0
    invoke-direct {p0, v4, v1, v5}, Lcom/amazon/kindle/toast/snackbar/SnackbarToast;->styleKindleToastView(Landroid/content/Context;Landroid/view/View;Z)V

    .line 51
    iget-object v4, p0, Lcom/amazon/kindle/toast/snackbar/SnackbarToast;->config:Lcom/amazon/kindle/toast/snackbar/SnackbarToastConfig;

    invoke-virtual {v4}, Lcom/amazon/kindle/toast/snackbar/SnackbarToastConfig;->getButtonAction()Lcom/amazon/kindle/toast/KindleToastAction;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 52
    iget-object v5, p0, Lcom/amazon/kindle/toast/snackbar/SnackbarToast;->config:Lcom/amazon/kindle/toast/snackbar/SnackbarToastConfig;

    invoke-virtual {v5}, Lcom/amazon/kindle/toast/snackbar/SnackbarToastConfig;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {p0, v5, v0, v4, v3}, Lcom/amazon/kindle/toast/snackbar/SnackbarToast;->setupButtonActionView(Landroid/content/Context;Lcom/amazon/kindle/toast/snackbar/Snackbar;Lcom/amazon/kindle/toast/KindleToastAction;Lcom/amazon/kindle/toast/snackbar/SnackbarToastDismissHandler;)V

    .line 54
    :cond_1
    iget-object v4, p0, Lcom/amazon/kindle/toast/snackbar/SnackbarToast;->config:Lcom/amazon/kindle/toast/snackbar/SnackbarToastConfig;

    invoke-virtual {v4}, Lcom/amazon/kindle/toast/snackbar/SnackbarToastConfig;->getViewAction()Lcom/amazon/kindle/toast/KindleToastAction;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 57
    new-instance v5, Lcom/amazon/kindle/toast/snackbar/SnackbarToast$show$2$1;

    invoke-direct {v5, v4}, Lcom/amazon/kindle/toast/snackbar/SnackbarToast$show$2$1;-><init>(Lcom/amazon/kindle/toast/KindleToastAction;)V

    invoke-virtual {v1, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 59
    :cond_2
    invoke-virtual {v2}, Lcom/amazon/kindle/toast/snackbar/SnackbarAnimator;->showWithCustomAnimation()V

    .line 60
    invoke-direct {p0, v0, v3}, Lcom/amazon/kindle/toast/snackbar/SnackbarToast;->setCustomSwipeBehavior(Lcom/amazon/kindle/toast/snackbar/Snackbar;Lcom/amazon/kindle/toast/snackbar/SnackbarToastDismissHandler;)V

    return-object v3
.end method
