.class Lcom/amazon/whispersync/android/support/v4/view/ViewConfigurationCompat$FroyoViewConfigurationVersionImpl;
.super Ljava/lang/Object;
.source "ViewConfigurationCompat.java"

# interfaces
.implements Lcom/amazon/whispersync/android/support/v4/view/ViewConfigurationCompat$ViewConfigurationVersionImpl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/whispersync/android/support/v4/view/ViewConfigurationCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "FroyoViewConfigurationVersionImpl"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getScaledPagingTouchSlop(Landroid/view/ViewConfiguration;)I
    .locals 0

    .line 49
    invoke-static {p1}, Lcom/amazon/whispersync/android/support/v4/view/ViewConfigurationCompatFroyo;->getScaledPagingTouchSlop(Landroid/view/ViewConfiguration;)I

    move-result p1

    return p1
.end method
