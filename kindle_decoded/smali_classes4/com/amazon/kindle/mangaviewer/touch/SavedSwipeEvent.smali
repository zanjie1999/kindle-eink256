.class public Lcom/amazon/kindle/mangaviewer/touch/SavedSwipeEvent;
.super Lcom/amazon/kindle/mangaviewer/touch/SavedTouchEvent;
.source "SavedSwipeEvent.java"


# instance fields
.field protected eventOne:Landroid/view/MotionEvent;

.field protected eventTwo:Landroid/view/MotionEvent;

.field protected velocityX:F

.field protected velocityY:F


# direct methods
.method public constructor <init>(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)V
    .locals 0

    .line 9
    invoke-direct {p0}, Lcom/amazon/kindle/mangaviewer/touch/SavedTouchEvent;-><init>()V

    .line 10
    iput-object p1, p0, Lcom/amazon/kindle/mangaviewer/touch/SavedSwipeEvent;->eventOne:Landroid/view/MotionEvent;

    .line 11
    iput-object p2, p0, Lcom/amazon/kindle/mangaviewer/touch/SavedSwipeEvent;->eventTwo:Landroid/view/MotionEvent;

    .line 12
    iput p3, p0, Lcom/amazon/kindle/mangaviewer/touch/SavedSwipeEvent;->velocityX:F

    .line 13
    iput p4, p0, Lcom/amazon/kindle/mangaviewer/touch/SavedSwipeEvent;->velocityY:F

    .line 14
    sget-object p1, Lcom/amazon/kindle/mangaviewer/touch/SavedTouchEvent$TouchEventType;->SWIPE:Lcom/amazon/kindle/mangaviewer/touch/SavedTouchEvent$TouchEventType;

    iput-object p1, p0, Lcom/amazon/kindle/mangaviewer/touch/SavedTouchEvent;->type:Lcom/amazon/kindle/mangaviewer/touch/SavedTouchEvent$TouchEventType;

    return-void
.end method


# virtual methods
.method public getEventOne()Landroid/view/MotionEvent;
    .locals 1

    .line 18
    iget-object v0, p0, Lcom/amazon/kindle/mangaviewer/touch/SavedSwipeEvent;->eventOne:Landroid/view/MotionEvent;

    return-object v0
.end method

.method public getEventTwo()Landroid/view/MotionEvent;
    .locals 1

    .line 22
    iget-object v0, p0, Lcom/amazon/kindle/mangaviewer/touch/SavedSwipeEvent;->eventTwo:Landroid/view/MotionEvent;

    return-object v0
.end method

.method public getVelocityX()F
    .locals 1

    .line 26
    iget v0, p0, Lcom/amazon/kindle/mangaviewer/touch/SavedSwipeEvent;->velocityX:F

    return v0
.end method

.method public getVelocityY()F
    .locals 1

    .line 30
    iget v0, p0, Lcom/amazon/kindle/mangaviewer/touch/SavedSwipeEvent;->velocityY:F

    return v0
.end method
