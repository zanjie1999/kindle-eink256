.class public Lcom/amazon/kindle/library/widget/DownloadedToggle;
.super Lcom/amazon/kindle/library/widget/ToggleGroup;
.source "DownloadedToggle.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kindle/library/widget/DownloadedToggle$OnToggleListener;
    }
.end annotation


# instance fields
.field private final mAllButton:Landroid/widget/ToggleButton;

.field private final mDownloadedButton:Landroid/widget/ToggleButton;

.field private final mOnCheckedChangedListener:Lcom/amazon/kindle/library/widget/ToggleGroup$OnCheckedChangeListener;

.field private mOnToggleListener:Lcom/amazon/kindle/library/widget/DownloadedToggle$OnToggleListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 6

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/amazon/kindle/library/widget/DownloadedToggle;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

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

    invoke-direct/range {v0 .. v5}, Lcom/amazon/kindle/library/widget/DownloadedToggle;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    invoke-direct {p0, p1, p2, p3}, Lcom/amazon/kindle/library/widget/ToggleGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 47
    new-instance p1, Lcom/amazon/kindle/library/widget/DownloadedToggle$1;

    invoke-direct {p1, p0}, Lcom/amazon/kindle/library/widget/DownloadedToggle$1;-><init>(Lcom/amazon/kindle/library/widget/DownloadedToggle;)V

    iput-object p1, p0, Lcom/amazon/kindle/library/widget/DownloadedToggle;->mOnCheckedChangedListener:Lcom/amazon/kindle/library/widget/ToggleGroup$OnCheckedChangeListener;

    .line 54
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    .line 55
    sget p2, Lcom/amazon/kindle/librarymodule/R$layout;->kindle_downloaded_toggle_all:I

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p0, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    const-string v0, "null cannot be cast to non-null type android.widget.ToggleButton"

    if-eqz p2, :cond_1

    check-cast p2, Landroid/widget/ToggleButton;

    iput-object p2, p0, Lcom/amazon/kindle/library/widget/DownloadedToggle;->mAllButton:Landroid/widget/ToggleButton;

    .line 57
    sget p2, Lcom/amazon/kindle/librarymodule/R$layout;->kindle_downloaded_toggle_downloaded:I

    invoke-virtual {p1, p2, p0, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_0

    check-cast p1, Landroid/widget/ToggleButton;

    iput-object p1, p0, Lcom/amazon/kindle/library/widget/DownloadedToggle;->mDownloadedButton:Landroid/widget/ToggleButton;

    .line 58
    iget-object p1, p0, Lcom/amazon/kindle/library/widget/DownloadedToggle;->mAllButton:Landroid/widget/ToggleButton;

    invoke-virtual {p1}, Landroid/widget/ToggleButton;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    const-string v0, "this.mAllButton.layoutParams"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1, p3, p2}, Lcom/amazon/kindle/library/widget/ToggleGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 59
    iget-object p1, p0, Lcom/amazon/kindle/library/widget/DownloadedToggle;->mDownloadedButton:Landroid/widget/ToggleButton;

    const/4 p2, 0x1

    invoke-virtual {p1}, Landroid/widget/ToggleButton;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p3

    const-string v0, "this.mDownloadedButton.layoutParams"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1, p2, p3}, Lcom/amazon/kindle/library/widget/ToggleGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 60
    iget-object p1, p0, Lcom/amazon/kindle/library/widget/DownloadedToggle;->mOnCheckedChangedListener:Lcom/amazon/kindle/library/widget/ToggleGroup$OnCheckedChangeListener;

    invoke-virtual {p0, p1}, Lcom/amazon/kindle/library/widget/ToggleGroup;->setOnCheckedChangeListener$LibraryModule_release(Lcom/amazon/kindle/library/widget/ToggleGroup$OnCheckedChangeListener;)V

    return-void

    .line 57
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 55
    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    const/4 p2, 0x0

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    .line 38
    sget p3, Lcom/amazon/kindle/librarymodule/R$attr;->kindle_downloadedToggleStyle:I

    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/amazon/kindle/library/widget/DownloadedToggle;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public static final synthetic access$getMOnToggleListener$p(Lcom/amazon/kindle/library/widget/DownloadedToggle;)Lcom/amazon/kindle/library/widget/DownloadedToggle$OnToggleListener;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/amazon/kindle/library/widget/DownloadedToggle;->mOnToggleListener:Lcom/amazon/kindle/library/widget/DownloadedToggle$OnToggleListener;

    return-object p0
.end method


# virtual methods
.method public check(I)V
    .locals 1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    .line 64
    invoke-virtual {p0}, Lcom/amazon/kindle/library/widget/ToggleGroup;->getCheckedToggleButtonId()I

    move-result v0

    if-eq p1, v0, :cond_0

    .line 65
    invoke-super {p0, p1}, Lcom/amazon/kindle/library/widget/ToggleGroup;->check(I)V

    :cond_0
    return-void
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 79
    invoke-super {p0, p1}, Lcom/amazon/kindle/library/widget/ToggleGroup;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 80
    const-class v0, Lcom/amazon/kindle/library/widget/DownloadedToggle;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1

    const-string v0, "accessibilityNodeInfo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 84
    invoke-super {p0, p1}, Lcom/amazon/kindle/library/widget/ToggleGroup;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 85
    const-class v0, Lcom/amazon/kindle/library/widget/DownloadedToggle;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setOnToggleListener(Lcom/amazon/kindle/library/widget/DownloadedToggle$OnToggleListener;)V
    .locals 1

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 75
    iput-object p1, p0, Lcom/amazon/kindle/library/widget/DownloadedToggle;->mOnToggleListener:Lcom/amazon/kindle/library/widget/DownloadedToggle$OnToggleListener;

    return-void
.end method
