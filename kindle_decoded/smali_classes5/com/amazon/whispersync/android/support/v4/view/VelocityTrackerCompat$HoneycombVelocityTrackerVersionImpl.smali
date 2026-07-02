.class Lcom/amazon/whispersync/android/support/v4/view/VelocityTrackerCompat$HoneycombVelocityTrackerVersionImpl;
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
    name = "HoneycombVelocityTrackerVersionImpl"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getXVelocity(Landroid/view/VelocityTracker;I)F
    .locals 0

    .line 54
    invoke-static {p1, p2}, Lcom/amazon/whispersync/android/support/v4/view/VelocityTrackerCompatHoneycomb;->getXVelocity(Landroid/view/VelocityTracker;I)F

    move-result p1

    return p1
.end method

.method public getYVelocity(Landroid/view/VelocityTracker;I)F
    .locals 0

    .line 58
    invoke-static {p1, p2}, Lcom/amazon/whispersync/android/support/v4/view/VelocityTrackerCompatHoneycomb;->getYVelocity(Landroid/view/VelocityTracker;I)F

    move-result p1

    return p1
.end method
