.class public Lcom/amazon/e3oseventhandler/RatingBarControl;
.super Lcom/amazon/e3oseventhandler/BaseDraggbleControls;
.source "RatingBarControl.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final INTERNAL_TAG:Ljava/lang/String; = "com.amazon.e3oseventhandler.RatingBarControl"


# instance fields
.field mCounter:I

.field private mDraggbleFilter:Landroid/view/View$OnTouchListener;

.field private mMainView:Landroid/view/View;

.field private mRatingBar:Landroid/widget/RatingBar;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method constructor <init>(Landroid/view/View;)V
    .locals 0

    .line 34
    invoke-direct {p0, p1}, Lcom/amazon/e3oseventhandler/BaseDraggbleControls;-><init>(Landroid/view/View;)V

    .line 35
    iput-object p1, p0, Lcom/amazon/e3oseventhandler/RatingBarControl;->mMainView:Landroid/view/View;

    return-void
.end method

.method static synthetic access$000(Lcom/amazon/e3oseventhandler/RatingBarControl;)Landroid/widget/RatingBar;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/amazon/e3oseventhandler/RatingBarControl;->mRatingBar:Landroid/widget/RatingBar;

    return-object p0
.end method

.method static synthetic access$002(Lcom/amazon/e3oseventhandler/RatingBarControl;Landroid/widget/RatingBar;)Landroid/widget/RatingBar;
    .locals 0

    .line 26
    iput-object p1, p0, Lcom/amazon/e3oseventhandler/RatingBarControl;->mRatingBar:Landroid/widget/RatingBar;

    return-object p1
.end method


# virtual methods
.method public doDrag(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 79
    iget-object v0, p0, Lcom/amazon/e3oseventhandler/RatingBarControl;->mDraggbleFilter:Landroid/view/View$OnTouchListener;

    if-nez v0, :cond_0

    .line 80
    sget-object p1, Lcom/amazon/e3oseventhandler/RatingBarControl;->INTERNAL_TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "null MotionEvent object found in "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/amazon/e3oseventhandler/RatingBarControl;->INTERNAL_TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " Class so we can\'t control motion movement"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    return p1

    .line 83
    :cond_0
    iget-object v1, p0, Lcom/amazon/e3oseventhandler/RatingBarControl;->mMainView:Landroid/view/View;

    invoke-interface {v0, v1, p1}, Landroid/view/View$OnTouchListener;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public isSupported(Landroid/view/View;)Z
    .locals 2

    if-nez p1, :cond_0

    .line 89
    sget-object p1, Lcom/amazon/e3oseventhandler/RatingBarControl;->INTERNAL_TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "null or invalid view object found in "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/amazon/e3oseventhandler/RatingBarControl;->INTERNAL_TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "class so touch event will not be handled"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    return p1

    .line 92
    :cond_0
    instance-of p1, p1, Landroid/widget/RatingBar;

    return p1
.end method

.method public setFilter(Landroid/view/View;)Z
    .locals 0

    .line 40
    new-instance p1, Lcom/amazon/e3oseventhandler/RatingBarControl$1;

    invoke-direct {p1, p0}, Lcom/amazon/e3oseventhandler/RatingBarControl$1;-><init>(Lcom/amazon/e3oseventhandler/RatingBarControl;)V

    iput-object p1, p0, Lcom/amazon/e3oseventhandler/RatingBarControl;->mDraggbleFilter:Landroid/view/View$OnTouchListener;

    const/4 p1, 0x1

    return p1
.end method
