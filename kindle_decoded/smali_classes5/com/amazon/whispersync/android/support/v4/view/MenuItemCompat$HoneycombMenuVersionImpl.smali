.class Lcom/amazon/whispersync/android/support/v4/view/MenuItemCompat$HoneycombMenuVersionImpl;
.super Ljava/lang/Object;
.source "MenuItemCompat.java"

# interfaces
.implements Lcom/amazon/whispersync/android/support/v4/view/MenuItemCompat$MenuVersionImpl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/whispersync/android/support/v4/view/MenuItemCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "HoneycombMenuVersionImpl"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public setActionView(Landroid/view/MenuItem;Landroid/view/View;)Landroid/view/MenuItem;
    .locals 0

    .line 95
    invoke-static {p1, p2}, Lcom/amazon/whispersync/android/support/v4/view/MenuItemCompatHoneycomb;->setActionView(Landroid/view/MenuItem;Landroid/view/View;)Landroid/view/MenuItem;

    move-result-object p1

    return-object p1
.end method

.method public setShowAsAction(Landroid/view/MenuItem;I)Z
    .locals 0

    .line 90
    invoke-static {p1, p2}, Lcom/amazon/whispersync/android/support/v4/view/MenuItemCompatHoneycomb;->setShowAsAction(Landroid/view/MenuItem;I)V

    const/4 p1, 0x1

    return p1
.end method
