.class public interface abstract Lcom/amazon/e3oseventhandler/AbstractInteractionHandler;
.super Ljava/lang/Object;
.source "AbstractInteractionHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/e3oseventhandler/AbstractInteractionHandler$GestureType;
    }
.end annotation


# static fields
.field public static final LAST_GESTURE_IDENTIFIED:Ljava/lang/String; = "Last-Gesture"

.field public static final TARGET_API:I = 0x13


# virtual methods
.method public abstract handleTouchEvent(Landroid/view/MotionEvent;)Z
.end method

.method public abstract handleTouchEvent(Landroid/view/MotionEvent;Landroid/os/Bundle;)Z
.end method
