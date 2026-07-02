.class public final Lcom/amazon/kcp/home/actions/BookActionsPopup;
.super Ljava/lang/Object;
.source "BookActionsPopup.kt"


# instance fields
.field private final container:Landroid/widget/LinearLayout;

.field private final fragment:Lcom/amazon/kcp/library/fragments/RubyHomeFragment;

.field private final metrics:Lcom/amazon/kindle/fastmetrics/service/client/IKindleFastMetrics;

.field private final popup:Landroid/widget/PopupWindow;

.field private final titleView:Lcom/amazon/android/ui/UiFontTextView;


# direct methods
.method public constructor <init>(Lcom/amazon/kcp/library/fragments/RubyHomeFragment;Lcom/amazon/kindle/fastmetrics/service/client/IKindleFastMetrics;)V
    .locals 2

    const-string v0, "fragment"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/amazon/kcp/home/actions/BookActionsPopup;->fragment:Lcom/amazon/kcp/library/fragments/RubyHomeFragment;

    iput-object p2, p0, Lcom/amazon/kcp/home/actions/BookActionsPopup;->metrics:Lcom/amazon/kindle/fastmetrics/service/client/IKindleFastMetrics;

    .line 33
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    const-string p2, "fragment.requireActivity()"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/amazon/kcp/home/actions/BookActionsPopup;->inflateScrollView(Landroid/content/Context;)Landroid/view/View;

    move-result-object p1

    .line 35
    new-instance p2, Landroid/widget/PopupWindow;

    const/4 v0, 0x1

    const/4 v1, -0x2

    invoke-direct {p2, p1, v1, v1, v0}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;IIZ)V

    .line 36
    invoke-virtual {p2, v0}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    const/4 v0, 0x0

    .line 37
    invoke-virtual {p2, v0}, Landroid/widget/PopupWindow;->setSplitTouchEnabled(Z)V

    .line 38
    invoke-virtual {p2, v0}, Landroid/widget/PopupWindow;->setClippingEnabled(Z)V

    .line 39
    invoke-virtual {p2, v0}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    .line 41
    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v1, v0}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p2, v1}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 42
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 35
    iput-object p2, p0, Lcom/amazon/kcp/home/actions/BookActionsPopup;->popup:Landroid/widget/PopupWindow;

    .line 43
    sget p2, Lcom/amazon/kindle/librarymodule/R$id;->book_actions_popup_title:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    const-string/jumbo v0, "scrollView.findViewById(\u2026book_actions_popup_title)"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Lcom/amazon/android/ui/UiFontTextView;

    iput-object p2, p0, Lcom/amazon/kcp/home/actions/BookActionsPopup;->titleView:Lcom/amazon/android/ui/UiFontTextView;

    .line 44
    sget p2, Lcom/amazon/kindle/librarymodule/R$id;->book_actions_popup_container:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string/jumbo p2, "scrollView.findViewById(\u2026_actions_popup_container)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/amazon/kcp/home/actions/BookActionsPopup;->container:Landroid/widget/LinearLayout;

    return-void
.end method

.method private final dimBackground()V
    .locals 4

    .line 111
    iget-object v0, p0, Lcom/amazon/kcp/home/actions/BookActionsPopup;->popup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v0

    const-string/jumbo v1, "popup.contentView"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 112
    iget-object v1, p0, Lcom/amazon/kcp/home/actions/BookActionsPopup;->fragment:Lcom/amazon/kcp/library/fragments/RubyHomeFragment;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string/jumbo v2, "window"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_2

    check-cast v1, Landroid/view/WindowManager;

    .line 113
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    if-eqz v2, :cond_1

    check-cast v2, Landroid/view/WindowManager$LayoutParams;

    const/4 v3, 0x2

    .line 114
    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v3, 0x3f000000    # 0.5f

    .line 115
    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    .line 116
    invoke-interface {v1, v0, v2}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void

    .line 113
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "null cannot be cast to non-null type android.view.WindowManager.LayoutParams"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 112
    :cond_2
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "null cannot be cast to non-null type android.view.WindowManager"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 111
    :cond_3
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "null cannot be cast to non-null type android.view.View"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private final inflateScrollView(Landroid/content/Context;)Landroid/view/View;
    .locals 4

    .line 94
    sget v0, Lcom/amazon/kindle/librarymodule/R$layout;->book_actions_popup:I

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 95
    new-instance v1, Landroid/util/TypedValue;

    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    .line 96
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p1

    sget v2, Lcom/amazon/kindle/librarymodule/R$attr;->resume_popup_background_color:I

    const/4 v3, 0x1

    invoke-virtual {p1, v2, v1, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 98
    iget p1, v1, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundResource(I)V

    const/4 p1, 0x0

    .line 102
    invoke-static {p1, p1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 103
    invoke-static {p1, p1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    .line 102
    invoke-virtual {v0, v1, p1}, Landroid/view/View;->measure(II)V

    const-string p1, "View.inflate(context, R.\u2026c.UNSPECIFIED))\n        }"

    .line 94
    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public final addAction(Lcom/amazon/kindle/home/action/HomeBookAction;Lcom/amazon/kindle/krx/content/IBook;Ljava/lang/String;)V
    .locals 8

    const-string v0, "action"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "book"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 59
    iget-object v0, p0, Lcom/amazon/kcp/home/actions/BookActionsPopup;->fragment:Lcom/amazon/kcp/library/fragments/RubyHomeFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 61
    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 62
    sget v1, Lcom/amazon/kindle/librarymodule/R$layout;->book_actions_popup_item:I

    iget-object v2, p0, Lcom/amazon/kcp/home/actions/BookActionsPopup;->container:Landroid/widget/LinearLayout;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    check-cast v0, Landroid/widget/TextView;

    .line 63
    invoke-interface {p1, v4}, Lcom/amazon/kindle/home/action/HomeBookAction;->getActionTitle(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 64
    new-instance v7, Lcom/amazon/kcp/home/actions/BookActionsPopup$addAction$1;

    move-object v1, v7

    move-object v2, p0

    move-object v3, p1

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v1 .. v6}, Lcom/amazon/kcp/home/actions/BookActionsPopup$addAction$1;-><init>(Lcom/amazon/kcp/home/actions/BookActionsPopup;Lcom/amazon/kindle/home/action/HomeBookAction;Landroidx/fragment/app/FragmentActivity;Lcom/amazon/kindle/krx/content/IBook;Ljava/lang/String;)V

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 68
    iget-object p1, p0, Lcom/amazon/kcp/home/actions/BookActionsPopup;->container:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_0

    .line 62
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string/jumbo p2, "null cannot be cast to non-null type android.widget.TextView"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    return-void
.end method

.method public final dismiss()V
    .locals 1

    .line 85
    iget-object v0, p0, Lcom/amazon/kcp/home/actions/BookActionsPopup;->popup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 86
    iget-object v0, p0, Lcom/amazon/kcp/home/actions/BookActionsPopup;->popup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    :cond_0
    return-void
.end method

.method public final setTitle(Ljava/lang/String;)V
    .locals 1

    const-string/jumbo v0, "title"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 51
    iget-object v0, p0, Lcom/amazon/kcp/home/actions/BookActionsPopup;->titleView:Lcom/amazon/android/ui/UiFontTextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 52
    iget-object p1, p0, Lcom/amazon/kcp/home/actions/BookActionsPopup;->titleView:Lcom/amazon/android/ui/UiFontTextView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method public final show(Landroid/view/View;)V
    .locals 3

    const-string/jumbo v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 76
    iget-object v0, p0, Lcom/amazon/kcp/home/actions/BookActionsPopup;->popup:Landroid/widget/PopupWindow;

    const/4 v1, 0x0

    const/16 v2, 0x11

    invoke-virtual {v0, p1, v2, v1, v1}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 78
    invoke-direct {p0}, Lcom/amazon/kcp/home/actions/BookActionsPopup;->dimBackground()V

    return-void
.end method
