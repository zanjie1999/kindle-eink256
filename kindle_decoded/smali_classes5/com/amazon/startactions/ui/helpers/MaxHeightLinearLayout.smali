.class public Lcom/amazon/startactions/ui/helpers/MaxHeightLinearLayout;
.super Landroid/widget/LinearLayout;
.source "MaxHeightLinearLayout.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final maxHeightPercentage:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 23
    const-class v0, Lcom/amazon/startactions/ui/helpers/MaxHeightLinearLayout;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/startactions/ui/helpers/MaxHeightLinearLayout;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 33
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 35
    iput p1, p0, Lcom/amazon/startactions/ui/helpers/MaxHeightLinearLayout;->maxHeightPercentage:F

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 44
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 47
    sget-object v0, Lcom/amazon/kindle/ea/R$styleable;->MaxHeightLinearLayout:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 51
    sget-object p2, Lcom/amazon/ea/EndActionsPlugin;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {p2}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getApplicationManager()Lcom/amazon/kindle/krx/application/IApplicationManager;

    move-result-object p2

    sget-object v0, Lcom/amazon/kindle/krx/application/ApplicationFeature;->NONLINEAR_NAVIGATION:Lcom/amazon/kindle/krx/application/ApplicationFeature;

    invoke-interface {p2, v0}, Lcom/amazon/kindle/krx/application/IApplicationManager;->isFeatureEnabled(Lcom/amazon/kindle/krx/application/ApplicationFeature;)Z

    move-result p2

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    .line 52
    sget p2, Lcom/amazon/kindle/ea/R$styleable;->MaxHeightLinearLayout_max_height:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p2

    iput p2, p0, Lcom/amazon/startactions/ui/helpers/MaxHeightLinearLayout;->maxHeightPercentage:F

    goto :goto_0

    .line 54
    :cond_0
    sget p2, Lcom/amazon/kindle/ea/R$styleable;->MaxHeightLinearLayout_max_height_legacy:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p2

    iput p2, p0, Lcom/amazon/startactions/ui/helpers/MaxHeightLinearLayout;->maxHeightPercentage:F

    .line 56
    :goto_0
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 2

    .line 62
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 72
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_3

    .line 73
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result p1

    const/16 v1, 0x14

    if-eq p1, v1, :cond_0

    const/16 v1, 0x13

    if-eq p1, v1, :cond_0

    const/16 v1, 0x15

    if-eq p1, v1, :cond_0

    const/16 v1, 0x16

    if-ne p1, v1, :cond_3

    .line 77
    :cond_0
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->findFocus()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const/4 p1, 0x2

    .line 91
    invoke-virtual {v0, p1}, Landroid/view/View;->focusSearch(I)Landroid/view/View;

    move-result-object v1

    goto :goto_0

    :pswitch_1
    const/4 p1, 0x1

    .line 88
    invoke-virtual {v0, p1}, Landroid/view/View;->focusSearch(I)Landroid/view/View;

    move-result-object v1

    goto :goto_0

    :pswitch_2
    const/16 p1, 0x82

    .line 85
    invoke-virtual {v0, p1}, Landroid/view/View;->focusSearch(I)Landroid/view/View;

    move-result-object v1

    goto :goto_0

    :pswitch_3
    const/16 p1, 0x21

    .line 82
    invoke-virtual {v0, p1}, Landroid/view/View;->focusSearch(I)Landroid/view/View;

    move-result-object v1

    :goto_0
    if-eqz v1, :cond_1

    .line 95
    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    move-result p1

    return p1

    .line 99
    :cond_1
    sget p1, Lcom/amazon/kindle/ea/R$id;->header_close_button:I

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-nez p1, :cond_2

    const/4 p1, 0x0

    return p1

    .line 103
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    move-result p1

    return p1

    :cond_3
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x13
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected onMeasure(II)V
    .locals 4

    .line 112
    invoke-static {}, Lcom/amazon/ea/logging/Log;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 113
    sget-object v0, Lcom/amazon/startactions/ui/helpers/MaxHeightLinearLayout;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onMeasure! [maxHeightPercentage="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/amazon/startactions/ui/helpers/MaxHeightLinearLayout;->maxHeightPercentage:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/amazon/ea/logging/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    :cond_0
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 118
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "window"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    .line 119
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x11

    if-lt v2, v3, :cond_1

    .line 120
    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    goto :goto_0

    .line 125
    :cond_1
    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 129
    :goto_0
    iget v0, v0, Landroid/graphics/Point;->y:I

    int-to-float v0, v0

    .line 130
    iget v1, p0, Lcom/amazon/startactions/ui/helpers/MaxHeightLinearLayout;->maxHeightPercentage:F

    mul-float v0, v0, v1

    const/high16 v1, 0x42c80000    # 100.0f

    div-float/2addr v0, v1

    .line 133
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    const/4 v2, 0x0

    cmpl-float v2, v0, v2

    if-lez v2, :cond_2

    int-to-float v1, v1

    cmpg-float v1, v0, v1

    if-gez v1, :cond_2

    .line 135
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result p2

    float-to-int v0, v0

    .line 138
    invoke-static {v0, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 142
    :cond_2
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    return-void
.end method
