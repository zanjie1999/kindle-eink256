.class Lcom/amazon/whispersync/android/support/v4/widget/SearchViewCompat$SearchViewCompatHoneycombImpl$1;
.super Ljava/lang/Object;
.source "SearchViewCompat.java"

# interfaces
.implements Lcom/amazon/whispersync/android/support/v4/widget/SearchViewCompatHoneycomb$OnQueryTextListenerCompatBridge;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/whispersync/android/support/v4/widget/SearchViewCompat$SearchViewCompatHoneycombImpl;->newOnQueryTextListener(Lcom/amazon/whispersync/android/support/v4/widget/SearchViewCompat$OnQueryTextListenerCompat;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/whispersync/android/support/v4/widget/SearchViewCompat$SearchViewCompatHoneycombImpl;

.field final synthetic val$listener:Lcom/amazon/whispersync/android/support/v4/widget/SearchViewCompat$OnQueryTextListenerCompat;


# direct methods
.method constructor <init>(Lcom/amazon/whispersync/android/support/v4/widget/SearchViewCompat$SearchViewCompatHoneycombImpl;Lcom/amazon/whispersync/android/support/v4/widget/SearchViewCompat$OnQueryTextListenerCompat;)V
    .locals 0

    .line 63
    iput-object p1, p0, Lcom/amazon/whispersync/android/support/v4/widget/SearchViewCompat$SearchViewCompatHoneycombImpl$1;->this$0:Lcom/amazon/whispersync/android/support/v4/widget/SearchViewCompat$SearchViewCompatHoneycombImpl;

    iput-object p2, p0, Lcom/amazon/whispersync/android/support/v4/widget/SearchViewCompat$SearchViewCompatHoneycombImpl$1;->val$listener:Lcom/amazon/whispersync/android/support/v4/widget/SearchViewCompat$OnQueryTextListenerCompat;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onQueryTextChange(Ljava/lang/String;)Z
    .locals 1

    .line 70
    iget-object v0, p0, Lcom/amazon/whispersync/android/support/v4/widget/SearchViewCompat$SearchViewCompatHoneycombImpl$1;->val$listener:Lcom/amazon/whispersync/android/support/v4/widget/SearchViewCompat$OnQueryTextListenerCompat;

    invoke-virtual {v0, p1}, Lcom/amazon/whispersync/android/support/v4/widget/SearchViewCompat$OnQueryTextListenerCompat;->onQueryTextChange(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public onQueryTextSubmit(Ljava/lang/String;)Z
    .locals 1

    .line 66
    iget-object v0, p0, Lcom/amazon/whispersync/android/support/v4/widget/SearchViewCompat$SearchViewCompatHoneycombImpl$1;->val$listener:Lcom/amazon/whispersync/android/support/v4/widget/SearchViewCompat$OnQueryTextListenerCompat;

    invoke-virtual {v0, p1}, Lcom/amazon/whispersync/android/support/v4/widget/SearchViewCompat$OnQueryTextListenerCompat;->onQueryTextSubmit(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method
