.class Lcom/amazon/whispersync/android/support/v4/widget/SearchViewCompat$SearchViewCompatHoneycombImpl;
.super Lcom/amazon/whispersync/android/support/v4/widget/SearchViewCompat$SearchViewCompatStubImpl;
.source "SearchViewCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/whispersync/android/support/v4/widget/SearchViewCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SearchViewCompatHoneycombImpl"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 53
    invoke-direct {p0}, Lcom/amazon/whispersync/android/support/v4/widget/SearchViewCompat$SearchViewCompatStubImpl;-><init>()V

    return-void
.end method


# virtual methods
.method public newOnQueryTextListener(Lcom/amazon/whispersync/android/support/v4/widget/SearchViewCompat$OnQueryTextListenerCompat;)Ljava/lang/Object;
    .locals 1

    .line 62
    new-instance v0, Lcom/amazon/whispersync/android/support/v4/widget/SearchViewCompat$SearchViewCompatHoneycombImpl$1;

    invoke-direct {v0, p0, p1}, Lcom/amazon/whispersync/android/support/v4/widget/SearchViewCompat$SearchViewCompatHoneycombImpl$1;-><init>(Lcom/amazon/whispersync/android/support/v4/widget/SearchViewCompat$SearchViewCompatHoneycombImpl;Lcom/amazon/whispersync/android/support/v4/widget/SearchViewCompat$OnQueryTextListenerCompat;)V

    invoke-static {v0}, Lcom/amazon/whispersync/android/support/v4/widget/SearchViewCompatHoneycomb;->newOnQueryTextListener(Lcom/amazon/whispersync/android/support/v4/widget/SearchViewCompatHoneycomb$OnQueryTextListenerCompatBridge;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public newSearchView(Landroid/content/Context;)Landroid/view/View;
    .locals 0

    .line 57
    invoke-static {p1}, Lcom/amazon/whispersync/android/support/v4/widget/SearchViewCompatHoneycomb;->newSearchView(Landroid/content/Context;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public setOnQueryTextListener(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 77
    invoke-static {p1, p2}, Lcom/amazon/whispersync/android/support/v4/widget/SearchViewCompatHoneycomb;->setOnQueryTextListener(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method
