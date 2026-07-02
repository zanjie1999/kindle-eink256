.class Lcom/amazon/whispersync/android/support/v4/view/MotionEventCompat$EclairMotionEventVersionImpl;
.super Ljava/lang/Object;
.source "MotionEventCompat.java"

# interfaces
.implements Lcom/amazon/whispersync/android/support/v4/view/MotionEventCompat$MotionEventVersionImpl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/whispersync/android/support/v4/view/MotionEventCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "EclairMotionEventVersionImpl"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public findPointerIndex(Landroid/view/MotionEvent;I)I
    .locals 0

    .line 78
    invoke-static {p1, p2}, Lcom/amazon/whispersync/android/support/v4/view/MotionEventCompatEclair;->findPointerIndex(Landroid/view/MotionEvent;I)I

    move-result p1

    return p1
.end method

.method public getPointerId(Landroid/view/MotionEvent;I)I
    .locals 0

    .line 82
    invoke-static {p1, p2}, Lcom/amazon/whispersync/android/support/v4/view/MotionEventCompatEclair;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result p1

    return p1
.end method

.method public getX(Landroid/view/MotionEvent;I)F
    .locals 0

    .line 86
    invoke-static {p1, p2}, Lcom/amazon/whispersync/android/support/v4/view/MotionEventCompatEclair;->getX(Landroid/view/MotionEvent;I)F

    move-result p1

    return p1
.end method

.method public getY(Landroid/view/MotionEvent;I)F
    .locals 0

    .line 90
    invoke-static {p1, p2}, Lcom/amazon/whispersync/android/support/v4/view/MotionEventCompatEclair;->getY(Landroid/view/MotionEvent;I)F

    move-result p1

    return p1
.end method
