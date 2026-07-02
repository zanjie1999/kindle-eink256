.class Lcom/amazon/whispersync/android/support/v4/view/VelocityTrackerCompat$BaseVelocityTrackerVersionImpl;
.super Ljava/lang/Object;
.source "VelocityTrackerCompat.java"

# interfaces
.implements Lcom/amazon/whispersync/android/support/v4/view/VelocityTrackerCompat$VelocityTrackerVersionImpl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/whispersync/android/support/v4/view/VelocityTrackerCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "BaseVelocityTrackerVersionImpl"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getXVelocity(Landroid/view/VelocityTracker;I)F
    .locals 0

    .line 40
    invoke-virtual {p1}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result p1

    return p1
.end method

.method public getYVelocity(Landroid/view/VelocityTracker;I)F
    .locals 0

    .line 44
    invoke-virtual {p1}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result p1

    return p1
.end method
