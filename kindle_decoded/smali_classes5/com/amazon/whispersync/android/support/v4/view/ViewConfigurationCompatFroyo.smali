.class Lcom/amazon/whispersync/android/support/v4/view/ViewConfigurationCompatFroyo;
.super Ljava/lang/Object;
.source "ViewConfigurationCompatFroyo.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getScaledPagingTouchSlop(Landroid/view/ViewConfiguration;)I
    .locals 0

    .line 26
    invoke-virtual {p0}, Landroid/view/ViewConfiguration;->getScaledPagingTouchSlop()I

    move-result p0

    return p0
.end method
