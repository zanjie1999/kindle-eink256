.class public Lcom/amazon/e3oseventhandler/WebViewEventHandler;
.super Lcom/amazon/e3oseventhandler/BasePaginationHandler;
.source "WebViewEventHandler.java"


# static fields
.field private static final ACTION_UP:I = 0x1

.field private static final DEFAULT_SCROLL_RATIO:F = 1.0f

.field private static final INVALID_WIDTH:I = -0x1

.field private static final JAVASCRIPT_SCROLL:Ljava/lang/String; = "function getVerticalScrollOffset() {\n    return %f;\n}\nfunction getHorizontalScrollOffset() {\n    return %f;\n}\nfunction canScroll(element) {\n\treturn (window.getComputedStyle(element).getPropertyValue(\'overflow\') !== \"hidden\");\n}\n(function (direction, x, y) {\n    if (typeof handleScroll === \"function\") {\n        if (handleScroll(direction, x, y)) {\n            return true;\n        }\n    }\n    var elements = document.elementsFromPoint(x, y);\n    var index, item, prev;\n    for (index=0; index<elements.length; index++ ) {\n        item = elements[index];\n        if (!canScroll(item)) {\n            continue;\n        }\n        if (direction === \"up\") {\n            prev = item.scrollTop;\n            item.scrollTop += getVerticalScrollOffset();\n            if (item.scrollTop != prev) {\n                return true;    \n            }\n        } else if (direction === \"down\") {\n            prev = item.scrollTop;\n            item.scrollTop -= getVerticalScrollOffset();\n            if (item.scrollTop != prev) {\n                return true;\n            }\n        } else if (direction === \"left\") {\n            prev = item.scrollLeft;\n            item.scrollLeft += getHorizontalScrollOffset();\n            if (item.scrollLeft != prev) {\n                return true;\n            }\n        } else if (direction === \"right\") {\n            prev = item.scrollLeft;\n            item.scrollLeft -= getHorizontalScrollOffset();\n            if (item.scrollLeft != prev) {\n                return true;\n            }\n        }\n    };\nreturn false;})(\"%s\", %f, %f);"

.field private static final JS_CAN_SCROLL:Ljava/lang/String; = "function canScroll(element) {\n\treturn (window.getComputedStyle(element).getPropertyValue(\'overflow\') !== \"hidden\");\n}\n"

.field private static final JS_HANDLE_SCROLL:Ljava/lang/String; = "(function (direction, x, y) {\n    if (typeof handleScroll === \"function\") {\n        if (handleScroll(direction, x, y)) {\n            return true;\n        }\n    }\n    var elements = document.elementsFromPoint(x, y);\n    var index, item, prev;\n    for (index=0; index<elements.length; index++ ) {\n        item = elements[index];\n        if (!canScroll(item)) {\n            continue;\n        }\n        if (direction === \"up\") {\n            prev = item.scrollTop;\n            item.scrollTop += getVerticalScrollOffset();\n            if (item.scrollTop != prev) {\n                return true;    \n            }\n        } else if (direction === \"down\") {\n            prev = item.scrollTop;\n            item.scrollTop -= getVerticalScrollOffset();\n            if (item.scrollTop != prev) {\n                return true;\n            }\n        } else if (direction === \"left\") {\n            prev = item.scrollLeft;\n            item.scrollLeft += getHorizontalScrollOffset();\n            if (item.scrollLeft != prev) {\n                return true;\n            }\n        } else if (direction === \"right\") {\n            prev = item.scrollLeft;\n            item.scrollLeft -= getHorizontalScrollOffset();\n            if (item.scrollLeft != prev) {\n                return true;\n            }\n        }\n    };\nreturn false;})(\"%s\", %f, %f);"

.field private static final JS_HORIZONTAL_SCROLL_OFFSET:Ljava/lang/String; = "function getHorizontalScrollOffset() {\n    return %f;\n}\n"

.field private static final JS_VERTICAL_SCROLL_OFFSET:Ljava/lang/String; = "function getVerticalScrollOffset() {\n    return %f;\n}\n"

.field private static final TARGET_API:I = 0x13

.field private static final VELOCITY_UNITS:I = 0x3e8

.field private static final WIDGET_CLASS_NAME:Ljava/lang/String; = "com.amazon.e3oseventhandler.WebViewEventHandler"

.field private static sGetContentWidth:Ljava/lang/reflect/Method;


# instance fields
.field protected mLastOnDownEvent:Landroid/view/MotionEvent;

.field private mWebView:Landroid/webkit/WebView;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .locals 0

    .line 111
    invoke-direct {p0}, Lcom/amazon/e3oseventhandler/BasePaginationHandler;-><init>()V

    .line 112
    invoke-virtual {p0, p1}, Lcom/amazon/e3oseventhandler/BasePaginationHandler;->setWidgetView(Landroid/view/View;)V

    .line 113
    invoke-direct {p0}, Lcom/amazon/e3oseventhandler/WebViewEventHandler;->setContentWidthReference()V

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 31
    sget-object v0, Lcom/amazon/e3oseventhandler/WebViewEventHandler;->WIDGET_CLASS_NAME:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/amazon/e3oseventhandler/WebViewEventHandler;)V
    .locals 0

    .line 31
    invoke-direct {p0}, Lcom/amazon/e3oseventhandler/WebViewEventHandler;->onScrollSuccess()V

    return-void
.end method

.method static synthetic access$200(Lcom/amazon/e3oseventhandler/WebViewEventHandler;)Landroid/webkit/WebView;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/amazon/e3oseventhandler/WebViewEventHandler;->mWebView:Landroid/webkit/WebView;

    return-object p0
.end method

.method static synthetic access$300(Lcom/amazon/e3oseventhandler/WebViewEventHandler;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 31
    invoke-direct {p0, p1}, Lcom/amazon/e3oseventhandler/WebViewEventHandler;->handleScroll(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method private getContentWidth()I
    .locals 5

    .line 128
    sget-object v0, Lcom/amazon/e3oseventhandler/WebViewEventHandler;->sGetContentWidth:Ljava/lang/reflect/Method;

    const/4 v1, -0x1

    if-nez v0, :cond_0

    .line 129
    sget-object v0, Lcom/amazon/e3oseventhandler/WebViewEventHandler;->WIDGET_CLASS_NAME:Ljava/lang/String;

    const-string v2, "getContentWidth reference not resolved."

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 133
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/amazon/e3oseventhandler/WebViewEventHandler;->mWebView:Landroid/webkit/WebView;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 134
    instance-of v2, v0, Ljava/lang/Integer;

    if-eqz v2, :cond_1

    .line 135
    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0

    .line 137
    :cond_1
    sget-object v0, Lcom/amazon/e3oseventhandler/WebViewEventHandler;->WIDGET_CLASS_NAME:Ljava/lang/String;

    const-string v2, "Unexpected value found for getContentWidth()"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 142
    sget-object v2, Lcom/amazon/e3oseventhandler/WebViewEventHandler;->WIDGET_CLASS_NAME:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Could not invoke getContentWidth()"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v0

    .line 139
    sget-object v2, Lcom/amazon/e3oseventhandler/WebViewEventHandler;->WIDGET_CLASS_NAME:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Could not access getContentWidth()"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    :goto_0
    return v1
.end method

.method private handleNormalScroll(Ljava/lang/String;)V
    .locals 7

    .line 207
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/16 v1, 0xe9b

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eq v0, v1, :cond_3

    const v1, 0x2f24a2

    if-eq v0, v1, :cond_2

    const v1, 0x32a007

    if-eq v0, v1, :cond_1

    const v1, 0x677c21c

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const-string/jumbo v0, "right"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x3

    goto :goto_1

    :cond_1
    const-string v0, "left"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x2

    goto :goto_1

    :cond_2
    const-string v0, "down"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x1

    goto :goto_1

    :cond_3
    const-string/jumbo v0, "up"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x0

    goto :goto_1

    :cond_4
    :goto_0
    const/4 v0, -0x1

    :goto_1
    if-eqz v0, :cond_8

    const/4 v1, 0x0

    if-eq v0, v4, :cond_7

    if-eq v0, v3, :cond_6

    if-eq v0, v2, :cond_5

    .line 221
    sget-object v0, Lcom/amazon/e3oseventhandler/WebViewEventHandler;->WIDGET_CLASS_NAME:Ljava/lang/String;

    const-string v1, "Illegal direction provided"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    goto :goto_2

    .line 218
    :cond_5
    invoke-virtual {p0}, Lcom/amazon/e3oseventhandler/WebViewEventHandler;->getScrollPercent()Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    iget-object v2, p0, Lcom/amazon/e3oseventhandler/WebViewEventHandler;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->getWidth()I

    move-result v2

    int-to-float v2, v2

    mul-float v0, v0, v2

    sub-float/2addr v1, v0

    float-to-int v0, v1

    goto :goto_2

    .line 215
    :cond_6
    invoke-virtual {p0}, Lcom/amazon/e3oseventhandler/WebViewEventHandler;->getScrollPercent()Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    iget-object v1, p0, Lcom/amazon/e3oseventhandler/WebViewEventHandler;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getWidth()I

    move-result v1

    int-to-float v1, v1

    mul-float v0, v0, v1

    float-to-int v0, v0

    :goto_2
    const/4 v1, 0x0

    goto :goto_4

    .line 212
    :cond_7
    invoke-virtual {p0}, Lcom/amazon/e3oseventhandler/WebViewEventHandler;->getScrollPercent()Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    iget-object v2, p0, Lcom/amazon/e3oseventhandler/WebViewEventHandler;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->getHeight()I

    move-result v2

    int-to-float v2, v2

    mul-float v0, v0, v2

    sub-float/2addr v1, v0

    float-to-int v0, v1

    goto :goto_3

    .line 209
    :cond_8
    invoke-virtual {p0}, Lcom/amazon/e3oseventhandler/WebViewEventHandler;->getScrollPercent()Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    iget-object v1, p0, Lcom/amazon/e3oseventhandler/WebViewEventHandler;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getHeight()I

    move-result v1

    int-to-float v1, v1

    mul-float v0, v0, v1

    float-to-int v0, v0

    :goto_3
    move v1, v0

    const/4 v0, 0x0

    .line 226
    :goto_4
    iget-object v2, p0, Lcom/amazon/e3oseventhandler/WebViewEventHandler;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->getScrollX()I

    move-result v2

    add-int/2addr v2, v0

    .line 227
    invoke-direct {p0}, Lcom/amazon/e3oseventhandler/WebViewEventHandler;->getContentWidth()I

    move-result v3

    iget-object v4, p0, Lcom/amazon/e3oseventhandler/WebViewEventHandler;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v4}, Landroid/webkit/WebView;->getWidth()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-static {v3, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 228
    invoke-static {v5, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 229
    iget-object v3, p0, Lcom/amazon/e3oseventhandler/WebViewEventHandler;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v3}, Landroid/webkit/WebView;->getScrollY()I

    move-result v3

    add-int/2addr v3, v1

    .line 230
    iget-object v4, p0, Lcom/amazon/e3oseventhandler/WebViewEventHandler;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v4}, Landroid/webkit/WebView;->getContentHeight()I

    move-result v4

    iget-object v6, p0, Lcom/amazon/e3oseventhandler/WebViewEventHandler;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v6}, Landroid/webkit/WebView;->getHeight()I

    move-result v6

    sub-int/2addr v4, v6

    invoke-static {v4, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 231
    invoke-static {v5, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 232
    iget-object v4, p0, Lcom/amazon/e3oseventhandler/WebViewEventHandler;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v4, v2, v3}, Landroid/webkit/WebView;->scrollTo(II)V

    .line 233
    invoke-direct {p0}, Lcom/amazon/e3oseventhandler/WebViewEventHandler;->onScrollSuccess()V

    .line 234
    sget-boolean v4, Lcom/amazon/e3oseventhandler/E3OSLibraryUtils;->DEBUG:Z

    if-eqz v4, :cond_9

    .line 235
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Normal scroll. deltaX : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", deltaY : "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", direction : "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", positionX : "

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", positionY : "

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    :cond_9
    return-void
.end method

.method private handleScroll(Landroid/view/MotionEvent;)Z
    .locals 9

    .line 255
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    .line 256
    sget-object v0, Lcom/amazon/e3oseventhandler/WebViewEventHandler;->WIDGET_CLASS_NAME:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Scroll event called in "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 259
    :cond_0
    iget-object v0, p0, Lcom/amazon/e3oseventhandler/WebViewEventHandler;->mLastOnDownEvent:Landroid/view/MotionEvent;

    if-nez v0, :cond_1

    .line 260
    sget-object p1, Lcom/amazon/e3oseventhandler/WebViewEventHandler;->WIDGET_CLASS_NAME:Ljava/lang/String;

    const-string v0, "Last Down event is null. Hence not scrolling."

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 263
    :cond_1
    iget-object v0, p0, Lcom/amazon/e3oseventhandler/WebViewEventHandler;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v0

    .line 264
    iget-object v3, p0, Lcom/amazon/e3oseventhandler/WebViewEventHandler;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v3}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v3

    .line 265
    iget-object v4, p0, Lcom/amazon/e3oseventhandler/WebViewEventHandler;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v4}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v4

    mul-int v4, v4, v4

    .line 267
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v5

    .line 268
    iget-object v6, p0, Lcom/amazon/e3oseventhandler/BasePaginationHandler;->mVelocityTracker:Landroid/view/VelocityTracker;

    const/16 v7, 0x3e8

    int-to-float v0, v0

    invoke-virtual {v6, v7, v0}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 269
    iget-object v0, p0, Lcom/amazon/e3oseventhandler/WebViewEventHandler;->mLastOnDownEvent:Landroid/view/MotionEvent;

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 270
    iget-object v6, p0, Lcom/amazon/e3oseventhandler/WebViewEventHandler;->mLastOnDownEvent:Landroid/view/MotionEvent;

    invoke-virtual {v6}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    .line 271
    iget-object v7, p0, Lcom/amazon/e3oseventhandler/BasePaginationHandler;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v7, v5}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    move-result v7

    .line 272
    iget-object v8, p0, Lcom/amazon/e3oseventhandler/BasePaginationHandler;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v8, v5}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result v5

    .line 274
    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v8

    int-to-float v3, v3

    cmpg-float v8, v8, v3

    if-gtz v8, :cond_3

    .line 275
    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v8

    cmpg-float v3, v8, v3

    if-gtz v3, :cond_3

    .line 276
    sget-boolean p1, Lcom/amazon/e3oseventhandler/E3OSLibraryUtils;->DEBUG:Z

    if-eqz p1, :cond_2

    .line 277
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Velocity of gesture is less than minimum scroll velocity, hence not scrolling. vel(x) : "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, ", vel(y) : "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    :cond_2
    return v2

    .line 283
    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    sub-float/2addr v3, v0

    float-to-int v3, v3

    .line 284
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    sub-float/2addr p1, v6

    float-to-int p1, p1

    mul-int v5, v3, v3

    mul-int v7, p1, p1

    add-int/2addr v5, v7

    if-gt v5, v4, :cond_5

    .line 287
    sget-boolean v0, Lcom/amazon/e3oseventhandler/E3OSLibraryUtils;->DEBUG:Z

    if-eqz v0, :cond_4

    .line 288
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Distance between down and up events are less than minimum scroll distance, hence not scrolling. Dist(x) : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", Dist(y) : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    :cond_4
    return v2

    .line 298
    :cond_5
    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v2

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v4

    if-ge v2, v4, :cond_7

    if-lez p1, :cond_6

    const-string p1, "down"

    goto :goto_0

    :cond_6
    const-string/jumbo p1, "up"

    goto :goto_0

    :cond_7
    if-lez v3, :cond_8

    const-string/jumbo p1, "right"

    goto :goto_0

    :cond_8
    const-string p1, "left"

    .line 303
    :goto_0
    invoke-direct {p0}, Lcom/amazon/e3oseventhandler/WebViewEventHandler;->isNestedScrolling()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 304
    invoke-direct {p0, p1, v0, v6}, Lcom/amazon/e3oseventhandler/WebViewEventHandler;->handleScrollUsingJavaScript(Ljava/lang/String;FF)V

    goto :goto_1

    .line 306
    :cond_9
    invoke-direct {p0, p1}, Lcom/amazon/e3oseventhandler/WebViewEventHandler;->handleNormalScroll(Ljava/lang/String;)V

    :goto_1
    return v1
.end method

.method private handleScrollUsingJavaScript(Ljava/lang/String;FF)V
    .locals 5

    .line 168
    new-instance v0, Lcom/amazon/e3oseventhandler/WebViewEventHandler$1;

    invoke-direct {v0, p0}, Lcom/amazon/e3oseventhandler/WebViewEventHandler$1;-><init>(Lcom/amazon/e3oseventhandler/WebViewEventHandler;)V

    .line 178
    iget-object v1, p0, Lcom/amazon/e3oseventhandler/WebViewEventHandler;->mWebView:Landroid/webkit/WebView;

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    .line 180
    invoke-virtual {p0}, Lcom/amazon/e3oseventhandler/WebViewEventHandler;->getScrollPercent()Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    iget-object v4, p0, Lcom/amazon/e3oseventhandler/WebViewEventHandler;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v4}, Landroid/webkit/WebView;->getHeight()I

    move-result v4

    int-to-float v4, v4

    mul-float v3, v3, v4

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    .line 181
    invoke-virtual {p0}, Lcom/amazon/e3oseventhandler/WebViewEventHandler;->getScrollPercent()Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    iget-object v4, p0, Lcom/amazon/e3oseventhandler/WebViewEventHandler;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v4}, Landroid/webkit/WebView;->getWidth()I

    move-result v4

    int-to-float v4, v4

    mul-float v3, v3, v4

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v2, v4

    const/4 v3, 0x2

    aput-object p1, v2, v3

    .line 183
    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    const/4 v4, 0x3

    aput-object v3, v2, v4

    .line 184
    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    const/4 v4, 0x4

    aput-object v3, v2, v4

    const-string v3, "function getVerticalScrollOffset() {\n    return %f;\n}\nfunction getHorizontalScrollOffset() {\n    return %f;\n}\nfunction canScroll(element) {\n\treturn (window.getComputedStyle(element).getPropertyValue(\'overflow\') !== \"hidden\");\n}\n(function (direction, x, y) {\n    if (typeof handleScroll === \"function\") {\n        if (handleScroll(direction, x, y)) {\n            return true;\n        }\n    }\n    var elements = document.elementsFromPoint(x, y);\n    var index, item, prev;\n    for (index=0; index<elements.length; index++ ) {\n        item = elements[index];\n        if (!canScroll(item)) {\n            continue;\n        }\n        if (direction === \"up\") {\n            prev = item.scrollTop;\n            item.scrollTop += getVerticalScrollOffset();\n            if (item.scrollTop != prev) {\n                return true;    \n            }\n        } else if (direction === \"down\") {\n            prev = item.scrollTop;\n            item.scrollTop -= getVerticalScrollOffset();\n            if (item.scrollTop != prev) {\n                return true;\n            }\n        } else if (direction === \"left\") {\n            prev = item.scrollLeft;\n            item.scrollLeft += getHorizontalScrollOffset();\n            if (item.scrollLeft != prev) {\n                return true;\n            }\n        } else if (direction === \"right\") {\n            prev = item.scrollLeft;\n            item.scrollLeft -= getHorizontalScrollOffset();\n            if (item.scrollLeft != prev) {\n                return true;\n            }\n        }\n    };\nreturn false;})(\"%s\", %f, %f);"

    .line 179
    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 178
    invoke-virtual {v1, v2, v0}, Landroid/webkit/WebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    .line 186
    sget-boolean v0, Lcom/amazon/e3oseventhandler/E3OSLibraryUtils;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 187
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "JS scroll. abs(deltaX) : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazon/e3oseventhandler/WebViewEventHandler;->getScrollPercent()Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    iget-object v2, p0, Lcom/amazon/e3oseventhandler/WebViewEventHandler;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->getHeight()I

    move-result v2

    int-to-float v2, v2

    mul-float v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", abs(deltaY) : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 188
    invoke-virtual {p0}, Lcom/amazon/e3oseventhandler/WebViewEventHandler;->getScrollPercent()Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    iget-object v2, p0, Lcom/amazon/e3oseventhandler/WebViewEventHandler;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->getWidth()I

    move-result v2

    int-to-float v2, v2

    mul-float v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", direction : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", pointX : "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p1, ", pointY : "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    :cond_0
    return-void
.end method

.method private isNestedScrolling()Z
    .locals 4

    .line 432
    iget-object v0, p0, Lcom/amazon/e3oseventhandler/BasePaginationHandler;->mMainView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/e3oseventhandler/BasePaginationHandler;->mMainView:Landroid/view/View;

    .line 433
    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "E3OS_WIDGET_CONTROL"

    const-string v3, "id"

    .line 432
    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 434
    iget-object v1, p0, Lcom/amazon/e3oseventhandler/BasePaginationHandler;->mMainView:Landroid/view/View;

    if-eqz v1, :cond_0

    invoke-virtual {v1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/amazon/e3oseventhandler/BasePaginationHandler;->mMainView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "WEBVIEW-NESTED-SCROLL"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 435
    iget-object v1, p0, Lcom/amazon/e3oseventhandler/BasePaginationHandler;->mMainView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WEBVIEW-NESTED-SCROLL:ON"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method private onScrollSuccess()V
    .locals 3

    .line 152
    iget-object v0, p0, Lcom/amazon/e3oseventhandler/BasePaginationHandler;->mBundle:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    .line 153
    sget-object v1, Lcom/amazon/e3oseventhandler/AbstractInteractionHandler$GestureType;->SCROLL:Lcom/amazon/e3oseventhandler/AbstractInteractionHandler$GestureType;

    invoke-virtual {v1}, Lcom/amazon/e3oseventhandler/AbstractInteractionHandler$GestureType;->getmId()I

    move-result v1

    int-to-float v1, v1

    const-string v2, "Last-Gesture"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    :cond_0
    return-void
.end method

.method private setContentWidthReference()V
    .locals 3

    .line 117
    sget-object v0, Lcom/amazon/e3oseventhandler/WebViewEventHandler;->sGetContentWidth:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    return-void

    .line 121
    :cond_0
    :try_start_0
    const-class v0, Landroid/webkit/WebView;

    const-string v1, "getContentWidth"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/amazon/e3oseventhandler/WebViewEventHandler;->sGetContentWidth:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 123
    invoke-virtual {v0}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    :goto_0
    return-void
.end method


# virtual methods
.method protected getScrollPercent()Ljava/lang/Float;
    .locals 2

    .line 361
    invoke-super {p0}, Lcom/amazon/e3oseventhandler/BasePaginationHandler;->getScrollPercent()Ljava/lang/Float;

    move-result-object v0

    .line 362
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-eqz v1, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    :goto_0
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method

.method protected handleFlingEvent(Lcom/amazon/e3oseventhandler/BasePaginationHandler$ScrollDirection;)V
    .locals 0

    return-void
.end method

.method protected handleFlingEventByPercentage(F)V
    .locals 0

    return-void
.end method

.method protected handleJump(FLcom/amazon/e3oseventhandler/BasePaginationHandler$ScrollAxis;)V
    .locals 3

    .line 393
    iget-object v0, p0, Lcom/amazon/e3oseventhandler/WebViewEventHandler;->mWebView:Landroid/webkit/WebView;

    if-nez v0, :cond_0

    .line 394
    sget-object p1, Lcom/amazon/e3oseventhandler/WebViewEventHandler;->WIDGET_CLASS_NAME:Ljava/lang/String;

    const-string p2, "View not available to Eventhandler."

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 397
    :cond_0
    invoke-virtual {v0}, Landroid/webkit/WebView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 399
    invoke-interface {v0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 401
    :cond_1
    sget-boolean v0, Lcom/amazon/e3oseventhandler/E3OSLibraryUtils;->DEBUG:Z

    if-eqz v0, :cond_2

    .line 402
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "webView scrolling to "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/amazon/e3oseventhandler/WebViewEventHandler;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->getContentHeight()I

    move-result v2

    int-to-float v2, v2

    mul-float v2, v2, p1

    float-to-int v2, v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", axis : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 405
    :cond_2
    sget-object v0, Lcom/amazon/e3oseventhandler/WebViewEventHandler$3;->$SwitchMap$com$amazon$e3oseventhandler$BasePaginationHandler$ScrollAxis:[I

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v0, v0, v2

    const-string v2, "Last-Gesture"

    if-eq v0, v1, :cond_4

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    .line 415
    sget-object p1, Lcom/amazon/e3oseventhandler/WebViewEventHandler;->WIDGET_CLASS_NAME:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unexpected scroll Axis. "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 411
    :cond_3
    iget-object p2, p0, Lcom/amazon/e3oseventhandler/WebViewEventHandler;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {p2}, Landroid/webkit/WebView;->getContentHeight()I

    move-result v0

    int-to-float v0, v0

    mul-float v0, v0, p1

    float-to-int p1, v0

    invoke-virtual {p2, p1}, Landroid/webkit/WebView;->setScrollY(I)V

    .line 412
    iget-object p1, p0, Lcom/amazon/e3oseventhandler/BasePaginationHandler;->mBundle:Landroid/os/Bundle;

    sget-object p2, Lcom/amazon/e3oseventhandler/AbstractInteractionHandler$GestureType;->SCROLL:Lcom/amazon/e3oseventhandler/AbstractInteractionHandler$GestureType;

    invoke-virtual {p2}, Lcom/amazon/e3oseventhandler/AbstractInteractionHandler$GestureType;->getmId()I

    move-result p2

    int-to-float p2, p2

    invoke-virtual {p1, v2, p2}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    goto :goto_0

    .line 407
    :cond_4
    iget-object p2, p0, Lcom/amazon/e3oseventhandler/WebViewEventHandler;->mWebView:Landroid/webkit/WebView;

    invoke-direct {p0}, Lcom/amazon/e3oseventhandler/WebViewEventHandler;->getContentWidth()I

    move-result v0

    int-to-float v0, v0

    mul-float v0, v0, p1

    float-to-int p1, v0

    invoke-virtual {p2, p1}, Landroid/webkit/WebView;->setScrollX(I)V

    .line 408
    iget-object p1, p0, Lcom/amazon/e3oseventhandler/BasePaginationHandler;->mBundle:Landroid/os/Bundle;

    sget-object p2, Lcom/amazon/e3oseventhandler/AbstractInteractionHandler$GestureType;->SCROLL:Lcom/amazon/e3oseventhandler/AbstractInteractionHandler$GestureType;

    invoke-virtual {p2}, Lcom/amazon/e3oseventhandler/AbstractInteractionHandler$GestureType;->getmId()I

    move-result p2

    int-to-float p2, p2

    invoke-virtual {p1, v2, p2}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    :goto_0
    return-void
.end method

.method public setFilter(Landroid/view/View;)V
    .locals 0

    .line 317
    new-instance p1, Lcom/amazon/e3oseventhandler/WebViewEventHandler$2;

    invoke-direct {p1, p0}, Lcom/amazon/e3oseventhandler/WebViewEventHandler$2;-><init>(Lcom/amazon/e3oseventhandler/WebViewEventHandler;)V

    iput-object p1, p0, Lcom/amazon/e3oseventhandler/BasePaginationHandler;->mScrollFilter:Landroid/view/View$OnTouchListener;

    return-void
.end method

.method public setWidgetViewInternal(Landroid/view/View;)V
    .locals 1

    .line 421
    instance-of v0, p1, Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    .line 422
    check-cast p1, Landroid/webkit/WebView;

    iput-object p1, p0, Lcom/amazon/e3oseventhandler/WebViewEventHandler;->mWebView:Landroid/webkit/WebView;

    :cond_0
    return-void
.end method
