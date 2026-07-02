.class public Lcom/amazon/ea/ui/helper/DarkenOnTouchListener;
.super Ljava/lang/Object;
.source "DarkenOnTouchListener.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field private final color:I

.field private final handler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;)V
    .locals 2

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/amazon/ea/ui/helper/DarkenOnTouchListener;->handler:Landroid/os/Handler;

    .line 30
    sget v0, Lcom/amazon/kindle/ea/R$color;->endactions_cover_on_touch_mask:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    iput p1, p0, Lcom/amazon/ea/ui/helper/DarkenOnTouchListener;->color:I

    return-void
.end method

.method static synthetic access$000(Lcom/amazon/ea/ui/helper/DarkenOnTouchListener;)I
    .locals 0

    .line 19
    iget p0, p0, Lcom/amazon/ea/ui/helper/DarkenOnTouchListener;->color:I

    return p0
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 5

    .line 35
    check-cast p1, Landroid/widget/ImageView;

    .line 37
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p2

    if-eqz p2, :cond_2

    const/4 v0, 0x1

    if-eq p2, v0, :cond_1

    const/4 v0, 0x3

    if-eq p2, v0, :cond_0

    goto :goto_0

    .line 49
    :cond_0
    iget-object p2, p0, Lcom/amazon/ea/ui/helper/DarkenOnTouchListener;->handler:Landroid/os/Handler;

    invoke-virtual {p2, p1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 50
    invoke-virtual {p1}, Landroid/widget/ImageView;->clearColorFilter()V

    goto :goto_0

    .line 54
    :cond_1
    iget-object p2, p0, Lcom/amazon/ea/ui/helper/DarkenOnTouchListener;->handler:Landroid/os/Handler;

    invoke-virtual {p2, p1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 55
    iget p2, p0, Lcom/amazon/ea/ui/helper/DarkenOnTouchListener;->color:I

    sget-object v0, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p1, p2, v0}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 56
    iget-object p2, p0, Lcom/amazon/ea/ui/helper/DarkenOnTouchListener;->handler:Landroid/os/Handler;

    new-instance v0, Lcom/amazon/ea/ui/helper/DarkenOnTouchListener$2;

    invoke-direct {v0, p0, p1}, Lcom/amazon/ea/ui/helper/DarkenOnTouchListener$2;-><init>(Lcom/amazon/ea/ui/helper/DarkenOnTouchListener;Landroid/widget/ImageView;)V

    .line 61
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    invoke-static {}, Landroid/view/ViewConfiguration;->getPressedStateDuration()I

    move-result v3

    int-to-long v3, v3

    add-long/2addr v1, v3

    .line 56
    invoke-virtual {p2, v0, p1, v1, v2}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;Ljava/lang/Object;J)Z

    goto :goto_0

    .line 39
    :cond_2
    iget-object p2, p0, Lcom/amazon/ea/ui/helper/DarkenOnTouchListener;->handler:Landroid/os/Handler;

    invoke-virtual {p2, p1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 40
    iget-object p2, p0, Lcom/amazon/ea/ui/helper/DarkenOnTouchListener;->handler:Landroid/os/Handler;

    new-instance v0, Lcom/amazon/ea/ui/helper/DarkenOnTouchListener$1;

    invoke-direct {v0, p0, p1}, Lcom/amazon/ea/ui/helper/DarkenOnTouchListener$1;-><init>(Lcom/amazon/ea/ui/helper/DarkenOnTouchListener;Landroid/widget/ImageView;)V

    .line 45
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v3

    int-to-long v3, v3

    add-long/2addr v1, v3

    .line 40
    invoke-virtual {p2, v0, p1, v1, v2}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;Ljava/lang/Object;J)Z

    :goto_0
    const/4 p1, 0x0

    return p1
.end method
