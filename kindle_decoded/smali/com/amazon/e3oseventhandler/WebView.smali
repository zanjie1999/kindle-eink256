.class public Lcom/amazon/e3oseventhandler/WebView;
.super Ljava/lang/Object;
.source "WebView.java"

# interfaces
.implements Lcom/amazon/e3oseventhandler/Paginator;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final ACTION_UP:I = 0x1

.field private static final DEFAULT_SCROLL_RATIO:F = 1.0f

.field private static final JAVASCRIPT_SCROLL:Ljava/lang/String; = "function getVerticalScrollOffset() {\n    return %f;\n}\nfunction getHorizontalScrollOffset() {\n    return %f;\n}\nfunction canScroll(element) {\n\treturn (window.getComputedStyle(element).getPropertyValue(\'overflow\') !== \"hidden\");\n}\n(function (direction, x, y) {\n    if (typeof handleScroll === \"function\") {\n        if (handleScroll(direction, x, y)) {\n            return true;\n        }\n    }\n    var elements = document.elementsFromPoint(x, y);\n    var index, item, prev;\n    for (index=0; index<elements.length; index++ ) {\n        item = elements[index];\n        if (!canScroll(item)) {\n            continue;\n        }\n        if (direction === \"up\") {\n            prev = item.scrollTop;\n            item.scrollTop += getVerticalScrollOffset();\n            if (item.scrollTop != prev) {\n                return true;    \n            }\n        } else if (direction === \"down\") {\n            prev = item.scrollTop;\n            item.scrollTop -= getVerticalScrollOffset();\n            if (item.scrollTop != prev) {\n                return true;\n            }\n        } else if (direction === \"left\") {\n            prev = item.scrollLeft;\n            item.scrollLeft += getHorizontalScrollOffset();\n            if (item.scrollLeft != prev) {\n                return true;\n            }\n        } else if (direction === \"right\") {\n            prev = item.scrollLeft;\n            item.scrollLeft -= getHorizontalScrollOffset();\n            if (item.scrollLeft != prev) {\n                return true;\n            }\n        }\n    };\nreturn false;})(\"%s\", %f, %f);"

.field private static final JS_CAN_SCROLL:Ljava/lang/String; = "function canScroll(element) {\n\treturn (window.getComputedStyle(element).getPropertyValue(\'overflow\') !== \"hidden\");\n}\n"

.field private static final JS_HANDLE_SCROLL:Ljava/lang/String; = "(function (direction, x, y) {\n    if (typeof handleScroll === \"function\") {\n        if (handleScroll(direction, x, y)) {\n            return true;\n        }\n    }\n    var elements = document.elementsFromPoint(x, y);\n    var index, item, prev;\n    for (index=0; index<elements.length; index++ ) {\n        item = elements[index];\n        if (!canScroll(item)) {\n            continue;\n        }\n        if (direction === \"up\") {\n            prev = item.scrollTop;\n            item.scrollTop += getVerticalScrollOffset();\n            if (item.scrollTop != prev) {\n                return true;    \n            }\n        } else if (direction === \"down\") {\n            prev = item.scrollTop;\n            item.scrollTop -= getVerticalScrollOffset();\n            if (item.scrollTop != prev) {\n                return true;\n            }\n        } else if (direction === \"left\") {\n            prev = item.scrollLeft;\n            item.scrollLeft += getHorizontalScrollOffset();\n            if (item.scrollLeft != prev) {\n                return true;\n            }\n        } else if (direction === \"right\") {\n            prev = item.scrollLeft;\n            item.scrollLeft -= getHorizontalScrollOffset();\n            if (item.scrollLeft != prev) {\n                return true;\n            }\n        }\n    };\nreturn false;})(\"%s\", %f, %f);"

.field private static final JS_HORIZONTAL_SCROLL_OFFSET:Ljava/lang/String; = "function getHorizontalScrollOffset() {\n    return %f;\n}\n"

.field private static final JS_VERTICAL_SCROLL_OFFSET:Ljava/lang/String; = "function getVerticalScrollOffset() {\n    return %f;\n}\n"

.field private static final LOG_TAG:Ljava/lang/String; = "E3OSWebView"

.field private static final MAXIMUM_FLING_VELOCITY:I

.field private static final MINIMUM_FLING_VELOCITY:I

.field private static final TARGET_API:I = 0x13

.field private static final TOUCH_SLOP:I

.field private static final TOUCH_SLOP_SQUARE:I

.field private static final VELOCITY_TRACKER:Landroid/view/VelocityTracker;

.field private static final VELOCITY_UNITS:I = 0x3e8


# instance fields
.field private mBundle:Landroid/os/Bundle;

.field protected mLastOnDownEvent:Landroid/view/MotionEvent;

.field private mMainView:Landroid/view/View;

.field private mScrollFilter:Landroid/view/View$OnTouchListener;

.field private mScrollRatio:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 38
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    sput-object v0, Lcom/amazon/e3oseventhandler/WebView;->VELOCITY_TRACKER:Landroid/view/VelocityTracker;

    .line 41
    invoke-static {}, Landroid/view/ViewConfiguration;->getMaximumFlingVelocity()I

    move-result v0

    sput v0, Lcom/amazon/e3oseventhandler/WebView;->MAXIMUM_FLING_VELOCITY:I

    .line 42
    invoke-static {}, Landroid/view/ViewConfiguration;->getMinimumFlingVelocity()I

    move-result v0

    sput v0, Lcom/amazon/e3oseventhandler/WebView;->MINIMUM_FLING_VELOCITY:I

    .line 43
    invoke-static {}, Landroid/view/ViewConfiguration;->getTouchSlop()I

    move-result v0

    sput v0, Lcom/amazon/e3oseventhandler/WebView;->TOUCH_SLOP:I

    mul-int v0, v0, v0

    .line 44
    sput v0, Lcom/amazon/e3oseventhandler/WebView;->TOUCH_SLOP_SQUARE:I

    return-void
.end method

.method constructor <init>(Landroid/view/View;)V
    .locals 1

    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x3f800000    # 1.0f

    .line 110
    iput v0, p0, Lcom/amazon/e3oseventhandler/WebView;->mScrollRatio:F

    .line 114
    iput-object p1, p0, Lcom/amazon/e3oseventhandler/WebView;->mMainView:Landroid/view/View;

    .line 115
    invoke-virtual {p0, p1}, Lcom/amazon/e3oseventhandler/WebView;->isSupported(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 116
    invoke-virtual {p0, p1}, Lcom/amazon/e3oseventhandler/WebView;->setFilter(Landroid/view/View;)Z

    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/amazon/e3oseventhandler/WebView;)Landroid/os/Bundle;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/amazon/e3oseventhandler/WebView;->mBundle:Landroid/os/Bundle;

    return-object p0
.end method

.method static synthetic access$100(Lcom/amazon/e3oseventhandler/WebView;)Landroid/view/View;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/amazon/e3oseventhandler/WebView;->mMainView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$200()Landroid/view/VelocityTracker;
    .locals 1

    .line 32
    sget-object v0, Lcom/amazon/e3oseventhandler/WebView;->VELOCITY_TRACKER:Landroid/view/VelocityTracker;

    return-object v0
.end method

.method static synthetic access$300(Lcom/amazon/e3oseventhandler/WebView;Landroid/view/MotionEvent;Landroid/webkit/WebView;)Z
    .locals 0

    .line 32
    invoke-direct {p0, p1, p2}, Lcom/amazon/e3oseventhandler/WebView;->handleScrollUsingJavaScript(Landroid/view/MotionEvent;Landroid/webkit/WebView;)Z

    move-result p0

    return p0
.end method

.method private handleScrollUsingJavaScript(Landroid/view/MotionEvent;Landroid/webkit/WebView;)Z
    .locals 9

    .line 127
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    .line 128
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Scroll event called in "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    return v2

    .line 131
    :cond_0
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    .line 132
    sget-object v3, Lcom/amazon/e3oseventhandler/WebView;->VELOCITY_TRACKER:Landroid/view/VelocityTracker;

    const/16 v4, 0x3e8

    sget v5, Lcom/amazon/e3oseventhandler/WebView;->MAXIMUM_FLING_VELOCITY:I

    int-to-float v5, v5

    invoke-virtual {v3, v4, v5}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 133
    iget-object v3, p0, Lcom/amazon/e3oseventhandler/WebView;->mLastOnDownEvent:Landroid/view/MotionEvent;

    invoke-virtual {v3}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    .line 134
    iget-object v4, p0, Lcom/amazon/e3oseventhandler/WebView;->mLastOnDownEvent:Landroid/view/MotionEvent;

    invoke-virtual {v4}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    .line 135
    sget-object v5, Lcom/amazon/e3oseventhandler/WebView;->VELOCITY_TRACKER:Landroid/view/VelocityTracker;

    invoke-virtual {v5, v0}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    move-result v5

    .line 136
    sget-object v6, Lcom/amazon/e3oseventhandler/WebView;->VELOCITY_TRACKER:Landroid/view/VelocityTracker;

    invoke-virtual {v6, v0}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result v0

    .line 138
    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v6

    sget v7, Lcom/amazon/e3oseventhandler/WebView;->MINIMUM_FLING_VELOCITY:I

    int-to-float v7, v7

    cmpg-float v6, v6, v7

    if-gtz v6, :cond_1

    .line 139
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v6

    sget v7, Lcom/amazon/e3oseventhandler/WebView;->MINIMUM_FLING_VELOCITY:I

    int-to-float v7, v7

    cmpg-float v6, v6, v7

    if-gtz v6, :cond_1

    return v2

    .line 142
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    sub-float/2addr v6, v3

    float-to-int v6, v6

    .line 143
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    sub-float/2addr p1, v4

    float-to-int p1, p1

    mul-int v7, v6, v6

    mul-int v8, p1, p1

    add-int/2addr v7, v8

    .line 145
    sget v8, Lcom/amazon/e3oseventhandler/WebView;->TOUCH_SLOP_SQUARE:I

    if-gt v7, v8, :cond_2

    .line 146
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Distance between down and up events are less than minimum scroll distance, hence resulting in tap. Dist(x) : "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", Dist(y) : "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    return v2

    .line 151
    :cond_2
    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result p1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v6

    const/4 v7, 0x0

    cmpg-float p1, p1, v6

    if-gez p1, :cond_4

    cmpl-float p1, v0, v7

    if-lez p1, :cond_3

    const-string p1, "down"

    goto :goto_0

    :cond_3
    const-string/jumbo p1, "up"

    goto :goto_0

    :cond_4
    cmpl-float p1, v5, v7

    if-lez p1, :cond_5

    const-string/jumbo p1, "right"

    goto :goto_0

    :cond_5
    const-string p1, "left"

    .line 156
    :goto_0
    new-instance v0, Lcom/amazon/e3oseventhandler/WebView$1;

    invoke-direct {v0, p0}, Lcom/amazon/e3oseventhandler/WebView$1;-><init>(Lcom/amazon/e3oseventhandler/WebView;)V

    const/4 v5, 0x5

    new-array v5, v5, [Ljava/lang/Object;

    .line 169
    iget-object v6, p0, Lcom/amazon/e3oseventhandler/WebView;->mMainView:Landroid/view/View;

    .line 171
    invoke-virtual {p0, v6}, Lcom/amazon/e3oseventhandler/WebView;->getScrollPercent(Landroid/view/View;)F

    move-result v6

    invoke-virtual {p2}, Landroid/webkit/WebView;->getHeight()I

    move-result v7

    int-to-float v7, v7

    mul-float v6, v6, v7

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    aput-object v6, v5, v2

    iget-object v2, p0, Lcom/amazon/e3oseventhandler/WebView;->mMainView:Landroid/view/View;

    .line 172
    invoke-virtual {p0, v2}, Lcom/amazon/e3oseventhandler/WebView;->getScrollPercent(Landroid/view/View;)F

    move-result v2

    invoke-virtual {p2}, Landroid/webkit/WebView;->getWidth()I

    move-result v6

    int-to-float v6, v6

    mul-float v2, v2, v6

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    aput-object v2, v5, v1

    const/4 v2, 0x2

    aput-object p1, v5, v2

    const/4 p1, 0x3

    .line 174
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    aput-object v2, v5, p1

    const/4 p1, 0x4

    .line 175
    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    aput-object v2, v5, p1

    const-string p1, "function getVerticalScrollOffset() {\n    return %f;\n}\nfunction getHorizontalScrollOffset() {\n    return %f;\n}\nfunction canScroll(element) {\n\treturn (window.getComputedStyle(element).getPropertyValue(\'overflow\') !== \"hidden\");\n}\n(function (direction, x, y) {\n    if (typeof handleScroll === \"function\") {\n        if (handleScroll(direction, x, y)) {\n            return true;\n        }\n    }\n    var elements = document.elementsFromPoint(x, y);\n    var index, item, prev;\n    for (index=0; index<elements.length; index++ ) {\n        item = elements[index];\n        if (!canScroll(item)) {\n            continue;\n        }\n        if (direction === \"up\") {\n            prev = item.scrollTop;\n            item.scrollTop += getVerticalScrollOffset();\n            if (item.scrollTop != prev) {\n                return true;    \n            }\n        } else if (direction === \"down\") {\n            prev = item.scrollTop;\n            item.scrollTop -= getVerticalScrollOffset();\n            if (item.scrollTop != prev) {\n                return true;\n            }\n        } else if (direction === \"left\") {\n            prev = item.scrollLeft;\n            item.scrollLeft += getHorizontalScrollOffset();\n            if (item.scrollLeft != prev) {\n                return true;\n            }\n        } else if (direction === \"right\") {\n            prev = item.scrollLeft;\n            item.scrollLeft -= getHorizontalScrollOffset();\n            if (item.scrollLeft != prev) {\n                return true;\n            }\n        }\n    };\nreturn false;})(\"%s\", %f, %f);"

    .line 170
    invoke-static {p1, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 169
    invoke-virtual {p2, p1, v0}, Landroid/webkit/WebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    .line 177
    sget-object p1, Lcom/amazon/e3oseventhandler/WebView;->VELOCITY_TRACKER:Landroid/view/VelocityTracker;

    invoke-virtual {p1}, Landroid/view/VelocityTracker;->clear()V

    return v1
.end method


# virtual methods
.method public doPagination(Landroid/view/MotionEvent;)Z
    .locals 3

    .line 218
    iget-object v0, p0, Lcom/amazon/e3oseventhandler/WebView;->mScrollFilter:Landroid/view/View$OnTouchListener;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 221
    :cond_0
    iget-object v0, p0, Lcom/amazon/e3oseventhandler/WebView;->mMainView:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/amazon/e3oseventhandler/WebView;->getScrollPercent(Landroid/view/View;)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    .line 222
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v1

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-lez v1, :cond_1

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v1

    const/high16 v2, 0x3f800000    # 1.0f

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_1

    .line 223
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    iput v0, p0, Lcom/amazon/e3oseventhandler/WebView;->mScrollRatio:F

    .line 225
    :cond_1
    iget-object v0, p0, Lcom/amazon/e3oseventhandler/WebView;->mScrollFilter:Landroid/view/View$OnTouchListener;

    iget-object v1, p0, Lcom/amazon/e3oseventhandler/WebView;->mMainView:Landroid/view/View;

    invoke-interface {v0, v1, p1}, Landroid/view/View$OnTouchListener;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public getScrollPercent(Landroid/view/View;)F
    .locals 4

    .line 238
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 239
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "E3OS_SCROLL_CONTROL"

    const-string v3, "id"

    .line 238
    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-eqz p1, :cond_0

    .line 240
    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 241
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ""

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 243
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    return p1

    :cond_0
    const/high16 p1, 0x3f800000    # 1.0f

    return p1
.end method

.method public isSupported(Landroid/view/View;)Z
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 233
    :cond_0
    instance-of p1, p1, Landroid/webkit/WebView;

    return p1
.end method

.method public setBundle(Landroid/os/Bundle;)V
    .locals 0

    .line 251
    iput-object p1, p0, Lcom/amazon/e3oseventhandler/WebView;->mBundle:Landroid/os/Bundle;

    return-void
.end method

.method public setFilter(Landroid/view/View;)Z
    .locals 0

    .line 184
    new-instance p1, Lcom/amazon/e3oseventhandler/WebView$2;

    invoke-direct {p1, p0}, Lcom/amazon/e3oseventhandler/WebView$2;-><init>(Lcom/amazon/e3oseventhandler/WebView;)V

    iput-object p1, p0, Lcom/amazon/e3oseventhandler/WebView;->mScrollFilter:Landroid/view/View$OnTouchListener;

    const/4 p1, 0x1

    return p1
.end method
