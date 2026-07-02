.class final Lcom/amazon/whispersync/android/support/v4/widget/SearchViewCompatHoneycomb$1;
.super Ljava/lang/Object;
.source "SearchViewCompatHoneycomb.java"

# interfaces
.implements Landroid/widget/SearchView$OnQueryTextListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/whispersync/android/support/v4/widget/SearchViewCompatHoneycomb;->newOnQueryTextListener(Lcom/amazon/whispersync/android/support/v4/widget/SearchViewCompatHoneycomb$OnQueryTextListenerCompatBridge;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$listener:Lcom/amazon/whispersync/android/support/v4/widget/SearchViewCompatHoneycomb$OnQueryTextListenerCompatBridge;


# direct methods
.method constructor <init>(Lcom/amazon/whispersync/android/support/v4/widget/SearchViewCompatHoneycomb$OnQueryTextListenerCompatBridge;)V
    .locals 0

    .line 39
    iput-object p1, p0, Lcom/amazon/whispersync/android/support/v4/widget/SearchViewCompatHoneycomb$1;->val$listener:Lcom/amazon/whispersync/android/support/v4/widget/SearchViewCompatHoneycomb$OnQueryTextListenerCompatBridge;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onQueryTextChange(Ljava/lang/String;)Z
    .locals 1

    .line 47
    iget-object v0, p0, Lcom/amazon/whispersync/android/support/v4/widget/SearchViewCompatHoneycomb$1;->val$listener:Lcom/amazon/whispersync/android/support/v4/widget/SearchViewCompatHoneycomb$OnQueryTextListenerCompatBridge;

    invoke-interface {v0, p1}, Lcom/amazon/whispersync/android/support/v4/widget/SearchViewCompatHoneycomb$OnQueryTextListenerCompatBridge;->onQueryTextChange(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public onQueryTextSubmit(Ljava/lang/String;)Z
    .locals 1

    .line 42
    iget-object v0, p0, Lcom/amazon/whispersync/android/support/v4/widget/SearchViewCompatHoneycomb$1;->val$listener:Lcom/amazon/whispersync/android/support/v4/widget/SearchViewCompatHoneycomb$OnQueryTextListenerCompatBridge;

    invoke-interface {v0, p1}, Lcom/amazon/whispersync/android/support/v4/widget/SearchViewCompatHoneycomb$OnQueryTextListenerCompatBridge;->onQueryTextSubmit(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method
