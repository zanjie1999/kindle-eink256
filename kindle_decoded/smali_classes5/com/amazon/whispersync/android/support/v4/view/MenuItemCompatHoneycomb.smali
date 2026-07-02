.class Lcom/amazon/whispersync/android/support/v4/view/MenuItemCompatHoneycomb;
.super Ljava/lang/Object;
.source "MenuItemCompatHoneycomb.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static setActionView(Landroid/view/MenuItem;Landroid/view/View;)Landroid/view/MenuItem;
    .locals 0

    .line 31
    invoke-interface {p0, p1}, Landroid/view/MenuItem;->setActionView(Landroid/view/View;)Landroid/view/MenuItem;

    move-result-object p0

    return-object p0
.end method

.method public static setShowAsAction(Landroid/view/MenuItem;I)V
    .locals 0

    .line 27
    invoke-interface {p0, p1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    return-void
.end method
