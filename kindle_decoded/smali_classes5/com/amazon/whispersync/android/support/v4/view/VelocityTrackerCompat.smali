.class public Lcom/amazon/whispersync/android/support/v4/view/VelocityTrackerCompat;
.super Ljava/lang/Object;
.source "VelocityTrackerCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/whispersync/android/support/v4/view/VelocityTrackerCompat$HoneycombVelocityTrackerVersionImpl;,
        Lcom/amazon/whispersync/android/support/v4/view/VelocityTrackerCompat$BaseVelocityTrackerVersionImpl;,
        Lcom/amazon/whispersync/android/support/v4/view/VelocityTrackerCompat$VelocityTrackerVersionImpl;
    }
.end annotation


# static fields
.field static final IMPL:Lcom/amazon/whispersync/android/support/v4/view/VelocityTrackerCompat$VelocityTrackerVersionImpl;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 67
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    .line 68
    new-instance v0, Lcom/amazon/whispersync/android/support/v4/view/VelocityTrackerCompat$HoneycombVelocityTrackerVersionImpl;

    invoke-direct {v0}, Lcom/amazon/whispersync/android/support/v4/view/VelocityTrackerCompat$HoneycombVelocityTrackerVersionImpl;-><init>()V

    sput-object v0, Lcom/amazon/whispersync/android/support/v4/view/VelocityTrackerCompat;->IMPL:Lcom/amazon/whispersync/android/support/v4/view/VelocityTrackerCompat$VelocityTrackerVersionImpl;

    goto :goto_0

    .line 70
    :cond_0
    new-instance v0, Lcom/amazon/whispersync/android/support/v4/view/VelocityTrackerCompat$BaseVelocityTrackerVersionImpl;

    invoke-direct {v0}, Lcom/amazon/whispersync/android/support/v4/view/VelocityTrackerCompat$BaseVelocityTrackerVersionImpl;-><init>()V

    sput-object v0, Lcom/amazon/whispersync/android/support/v4/view/VelocityTrackerCompat;->IMPL:Lcom/amazon/whispersync/android/support/v4/view/VelocityTrackerCompat$VelocityTrackerVersionImpl;

    :goto_0
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getXVelocity(Landroid/view/VelocityTracker;I)F
    .locals 1

    .line 82
    sget-object v0, Lcom/amazon/whispersync/android/support/v4/view/VelocityTrackerCompat;->IMPL:Lcom/amazon/whispersync/android/support/v4/view/VelocityTrackerCompat$VelocityTrackerVersionImpl;

    invoke-interface {v0, p0, p1}, Lcom/amazon/whispersync/android/support/v4/view/VelocityTrackerCompat$VelocityTrackerVersionImpl;->getXVelocity(Landroid/view/VelocityTracker;I)F

    move-result p0

    return p0
.end method

.method public static getYVelocity(Landroid/view/VelocityTracker;I)F
    .locals 1

    .line 91
    sget-object v0, Lcom/amazon/whispersync/android/support/v4/view/VelocityTrackerCompat;->IMPL:Lcom/amazon/whispersync/android/support/v4/view/VelocityTrackerCompat$VelocityTrackerVersionImpl;

    invoke-interface {v0, p0, p1}, Lcom/amazon/whispersync/android/support/v4/view/VelocityTrackerCompat$VelocityTrackerVersionImpl;->getYVelocity(Landroid/view/VelocityTracker;I)F

    move-result p0

    return p0
.end method
