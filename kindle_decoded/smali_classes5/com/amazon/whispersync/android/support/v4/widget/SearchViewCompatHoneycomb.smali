.class Lcom/amazon/whispersync/android/support/v4/widget/SearchViewCompatHoneycomb;
.super Ljava/lang/Object;
.source "SearchViewCompatHoneycomb.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/whispersync/android/support/v4/widget/SearchViewCompatHoneycomb$OnQueryTextListenerCompatBridge;
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static newOnQueryTextListener(Lcom/amazon/whispersync/android/support/v4/widget/SearchViewCompatHoneycomb$OnQueryTextListenerCompatBridge;)Ljava/lang/Object;
    .locals 1

    .line 39
    new-instance v0, Lcom/amazon/whispersync/android/support/v4/widget/SearchViewCompatHoneycomb$1;

    invoke-direct {v0, p0}, Lcom/amazon/whispersync/android/support/v4/widget/SearchViewCompatHoneycomb$1;-><init>(Lcom/amazon/whispersync/android/support/v4/widget/SearchViewCompatHoneycomb$OnQueryTextListenerCompatBridge;)V

    return-object v0
.end method

.method public static newSearchView(Landroid/content/Context;)Landroid/view/View;
    .locals 1

    .line 35
    new-instance v0, Landroid/widget/SearchView;

    invoke-direct {v0, p0}, Landroid/widget/SearchView;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public static setOnQueryTextListener(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 53
    check-cast p0, Landroid/widget/SearchView;

    check-cast p1, Landroid/widget/SearchView$OnQueryTextListener;

    invoke-virtual {p0, p1}, Landroid/widget/SearchView;->setOnQueryTextListener(Landroid/widget/SearchView$OnQueryTextListener;)V

    return-void
.end method
