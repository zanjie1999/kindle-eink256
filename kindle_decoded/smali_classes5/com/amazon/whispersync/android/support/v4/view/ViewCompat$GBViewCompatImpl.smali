.class Lcom/amazon/whispersync/android/support/v4/view/ViewCompat$GBViewCompatImpl;
.super Lcom/amazon/whispersync/android/support/v4/view/ViewCompat$BaseViewCompatImpl;
.source "ViewCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/whispersync/android/support/v4/view/ViewCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "GBViewCompatImpl"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 84
    invoke-direct {p0}, Lcom/amazon/whispersync/android/support/v4/view/ViewCompat$BaseViewCompatImpl;-><init>()V

    return-void
.end method


# virtual methods
.method public getOverScrollMode(Landroid/view/View;)I
    .locals 0

    .line 87
    invoke-static {p1}, Lcom/amazon/whispersync/android/support/v4/view/ViewCompatGingerbread;->getOverScrollMode(Landroid/view/View;)I

    move-result p1

    return p1
.end method

.method public setOverScrollMode(Landroid/view/View;I)V
    .locals 0

    .line 91
    invoke-static {p1, p2}, Lcom/amazon/whispersync/android/support/v4/view/ViewCompatGingerbread;->setOverScrollMode(Landroid/view/View;I)V

    return-void
.end method
