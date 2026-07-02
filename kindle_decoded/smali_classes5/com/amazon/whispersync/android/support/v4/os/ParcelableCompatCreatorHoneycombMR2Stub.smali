.class Lcom/amazon/whispersync/android/support/v4/os/ParcelableCompatCreatorHoneycombMR2Stub;
.super Ljava/lang/Object;
.source "ParcelableCompatHoneycombMR2.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static instantiate(Lcom/amazon/whispersync/android/support/v4/os/ParcelableCompatCreatorCallbacks;)Landroid/os/Parcelable$Creator;
    .locals 1
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

    .line 24
    new-instance v0, Lcom/amazon/whispersync/android/support/v4/os/ParcelableCompatCreatorHoneycombMR2;

    invoke-direct {v0, p0}, Lcom/amazon/whispersync/android/support/v4/os/ParcelableCompatCreatorHoneycombMR2;-><init>(Lcom/amazon/whispersync/android/support/v4/os/ParcelableCompatCreatorCallbacks;)V

    return-object v0
.end method
