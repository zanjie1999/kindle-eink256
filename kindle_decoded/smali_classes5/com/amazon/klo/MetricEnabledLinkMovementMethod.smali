.class public Lcom/amazon/klo/MetricEnabledLinkMovementMethod;
.super Landroid/text/method/LinkMovementMethod;
.source "MetricEnabledLinkMovementMethod.java"


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static movementMethods:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/util/Pair<",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/amazon/klo/MetricEnabledLinkMovementMethod;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private movementContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 21
    const-class v0, Lcom/amazon/klo/MetricEnabledLinkMovementMethod;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/klo/MetricEnabledLinkMovementMethod;->TAG:Ljava/lang/String;

    .line 22
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/amazon/klo/MetricEnabledLinkMovementMethod;->movementMethods:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 28
    invoke-direct {p0}, Landroid/text/method/LinkMovementMethod;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/amazon/klo/MetricEnabledLinkMovementMethod;->movementContext:Landroid/content/Context;

    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Landroid/text/method/MovementMethod;
    .locals 1

    .line 39
    new-instance v0, Lcom/amazon/klo/MetricEnabledLinkMovementMethod;

    invoke-direct {v0, p0}, Lcom/amazon/klo/MetricEnabledLinkMovementMethod;-><init>(Landroid/content/Context;)V

    return-object v0
.end method


# virtual methods
.method public onTouchEvent(Landroid/widget/TextView;Landroid/text/Spannable;Landroid/view/MotionEvent;)Z
    .locals 4

    .line 46
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1

    .line 50
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    .line 51
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getY()F

    move-result p3

    float-to-int p3, p3

    .line 53
    invoke-virtual {p1}, Landroid/widget/TextView;->getTotalPaddingLeft()I

    move-result v3

    sub-int/2addr v0, v3

    .line 54
    invoke-virtual {p1}, Landroid/widget/TextView;->getTotalPaddingTop()I

    move-result v3

    sub-int/2addr p3, v3

    .line 56
    invoke-virtual {p1}, Landroid/widget/TextView;->getScrollX()I

    move-result v3

    add-int/2addr v0, v3

    .line 57
    invoke-virtual {p1}, Landroid/widget/TextView;->getScrollY()I

    move-result v3

    add-int/2addr p3, v3

    .line 59
    invoke-virtual {p1}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object p1

    .line 60
    invoke-virtual {p1, p3}, Landroid/text/Layout;->getLineForVertical(I)I

    move-result p3

    int-to-float v0, v0

    .line 61
    invoke-virtual {p1, p3, v0}, Landroid/text/Layout;->getOffsetForHorizontal(IF)I

    move-result p1

    .line 63
    const-class p3, Landroid/text/style/URLSpan;

    invoke-interface {p2, p1, p1, p3}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Landroid/text/style/URLSpan;

    .line 64
    array-length p2, p1

    if-eqz p2, :cond_1

    .line 67
    aget-object p1, p1, v2

    invoke-virtual {p1}, Landroid/text/style/URLSpan;->getURL()Ljava/lang/String;

    move-result-object p1

    const-string p2, "https://"

    .line 68
    invoke-virtual {p1, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_0

    const-string p2, "http://"

    invoke-virtual {p1, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 70
    :cond_0
    new-instance p2, Landroid/content/Intent;

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    const-string p3, "android.intent.action.VIEW"

    invoke-direct {p2, p3, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 71
    iget-object p1, p0, Lcom/amazon/klo/MetricEnabledLinkMovementMethod;->movementContext:Landroid/content/Context;

    invoke-virtual {p1, p2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :cond_2
    :goto_0
    return v1
.end method
