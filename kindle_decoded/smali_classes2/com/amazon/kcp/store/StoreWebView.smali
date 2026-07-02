.class Lcom/amazon/kcp/store/StoreWebView;
.super Landroid/webkit/WebView;
.source "StoreWebView.java"


# instance fields
.field private touchEventEnabled:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .annotation runtime Lcom/amazon/kindle/krx/strictmode/SuppressStrictMode;
        violations = {
            .enum Lcom/amazon/kindle/krx/strictmode/StrictModeViolation;->LeakedClosableViolation:Lcom/amazon/kindle/krx/strictmode/StrictModeViolation;
        }
    .end annotation

    .line 22
    invoke-direct {p0, p1, p2}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 28
    sget-object v0, Lcom/amazon/kindle/krl/R$styleable;->StoreWebView:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 29
    sget p2, Lcom/amazon/kindle/krl/R$styleable;->StoreWebView_backgroundColor:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 30
    sget p2, Lcom/amazon/kindle/krl/R$styleable;->StoreWebView_backgroundColor:I

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    .line 31
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v0, p2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p0, v0}, Landroid/webkit/WebView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 32
    invoke-virtual {p0, p2}, Landroid/webkit/WebView;->setBackgroundColor(I)V

    .line 34
    :cond_0
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    const/4 p1, 0x1

    .line 36
    iput-boolean p1, p0, Lcom/amazon/kcp/store/StoreWebView;->touchEventEnabled:Z

    return-void
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 45
    iget-boolean v0, p0, Lcom/amazon/kcp/store/StoreWebView;->touchEventEnabled:Z

    if-eqz v0, :cond_0

    .line 46
    invoke-super {p0, p1}, Landroid/webkit/WebView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x1

    return p1
.end method
