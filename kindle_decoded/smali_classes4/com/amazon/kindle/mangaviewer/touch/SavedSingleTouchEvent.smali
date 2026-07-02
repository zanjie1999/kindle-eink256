.class public Lcom/amazon/kindle/mangaviewer/touch/SavedSingleTouchEvent;
.super Lcom/amazon/kindle/mangaviewer/touch/SavedTouchEvent;
.source "SavedSingleTouchEvent.java"


# instance fields
.field protected event:Landroid/view/MotionEvent;


# direct methods
.method public constructor <init>(Landroid/view/MotionEvent;Lcom/amazon/kindle/mangaviewer/touch/SavedTouchEvent$TouchEventType;)V
    .locals 0

    .line 8
    invoke-direct {p0}, Lcom/amazon/kindle/mangaviewer/touch/SavedTouchEvent;-><init>()V

    .line 9
    iput-object p1, p0, Lcom/amazon/kindle/mangaviewer/touch/SavedSingleTouchEvent;->event:Landroid/view/MotionEvent;

    .line 10
    iput-object p2, p0, Lcom/amazon/kindle/mangaviewer/touch/SavedTouchEvent;->type:Lcom/amazon/kindle/mangaviewer/touch/SavedTouchEvent$TouchEventType;

    return-void
.end method


# virtual methods
.method public getEvent()Landroid/view/MotionEvent;
    .locals 1

    .line 14
    iget-object v0, p0, Lcom/amazon/kindle/mangaviewer/touch/SavedSingleTouchEvent;->event:Landroid/view/MotionEvent;

    return-object v0
.end method
