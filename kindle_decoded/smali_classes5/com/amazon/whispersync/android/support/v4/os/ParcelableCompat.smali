.class public Lcom/amazon/whispersync/android/support/v4/os/ParcelableCompat;
.super Ljava/lang/Object;
.source "ParcelableCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/whispersync/android/support/v4/os/ParcelableCompat$CompatCreator;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static newCreator(Lcom/amazon/whispersync/android/support/v4/os/ParcelableCompatCreatorCallbacks;)Landroid/os/Parcelable$Creator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/amazon/whispersync/android/support/v4/os/ParcelableCompatCreatorCallbacks<",
            "TT;>;)",
            "Landroid/os/Parcelable$Creator<",
            "TT;>;"
        }
    .end annotation

    .line 36
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xd

    if-lt v0, v1, :cond_0

    .line 37
    invoke-static {p0}, Lcom/amazon/whispersync/android/support/v4/os/ParcelableCompatCreatorHoneycombMR2Stub;->instantiate(Lcom/amazon/whispersync/android/support/v4/os/ParcelableCompatCreatorCallbacks;)Landroid/os/Parcelable$Creator;

    .line 39
    :cond_0
    new-instance v0, Lcom/amazon/whispersync/android/support/v4/os/ParcelableCompat$CompatCreator;

    invoke-direct {v0, p0}, Lcom/amazon/whispersync/android/support/v4/os/ParcelableCompat$CompatCreator;-><init>(Lcom/amazon/whispersync/android/support/v4/os/ParcelableCompatCreatorCallbacks;)V

    return-object v0
.end method
