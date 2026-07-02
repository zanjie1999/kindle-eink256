.class Lcom/amazon/whispersync/android/support/v4/view/ViewConfigurationCompat$BaseViewConfigurationVersionImpl;
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
    name = "BaseViewConfigurationVersionImpl"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getScaledPagingTouchSlop(Landroid/view/ViewConfiguration;)I
    .locals 0

    .line 39
    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result p1

    return p1
.end method
