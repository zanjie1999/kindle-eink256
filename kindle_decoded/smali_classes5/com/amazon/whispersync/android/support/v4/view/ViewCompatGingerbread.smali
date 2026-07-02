.class Lcom/amazon/whispersync/android/support/v4/view/ViewCompatGingerbread;
.super Ljava/lang/Object;
.source "ViewCompatGingerbread.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getOverScrollMode(Landroid/view/View;)I
    .locals 0

    .line 23
    invoke-virtual {p0}, Landroid/view/View;->getOverScrollMode()I

    move-result p0

    return p0
.end method

.method public static setOverScrollMode(Landroid/view/View;I)V
    .locals 0

    .line 27
    invoke-virtual {p0, p1}, Landroid/view/View;->setOverScrollMode(I)V

    return-void
.end method
