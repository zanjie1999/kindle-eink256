.class public abstract Lcom/amazon/whispersync/android/support/v4/widget/SearchViewCompat$OnQueryTextListenerCompat;
.super Ljava/lang/Object;
.source "SearchViewCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/whispersync/android/support/v4/widget/SearchViewCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "OnQueryTextListenerCompat"
.end annotation


# instance fields
.field final mListener:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 123
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 124
    invoke-static {}, Lcom/amazon/whispersync/android/support/v4/widget/SearchViewCompat;->access$000()Lcom/amazon/whispersync/android/support/v4/widget/SearchViewCompat$SearchViewCompatImpl;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/amazon/whispersync/android/support/v4/widget/SearchViewCompat$SearchViewCompatImpl;->newOnQueryTextListener(Lcom/amazon/whispersync/android/support/v4/widget/SearchViewCompat$OnQueryTextListenerCompat;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/whispersync/android/support/v4/widget/SearchViewCompat$OnQueryTextListenerCompat;->mListener:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public onQueryTextChange(Ljava/lang/String;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public onQueryTextSubmit(Ljava/lang/String;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method
