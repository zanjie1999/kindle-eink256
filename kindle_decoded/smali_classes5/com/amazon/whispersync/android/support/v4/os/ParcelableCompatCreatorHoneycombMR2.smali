.class Lcom/amazon/whispersync/android/support/v4/os/ParcelableCompatCreatorHoneycombMR2;
.super Ljava/lang/Object;
.source "ParcelableCompatHoneycombMR2.java"

# interfaces
.implements Landroid/os/Parcelable$ClassLoaderCreator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$ClassLoaderCreator<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final mCallbacks:Lcom/amazon/whispersync/android/support/v4/os/ParcelableCompatCreatorCallbacks;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/amazon/whispersync/android/support/v4/os/ParcelableCompatCreatorCallbacks<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/amazon/whispersync/android/support/v4/os/ParcelableCompatCreatorCallbacks;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/whispersync/android/support/v4/os/ParcelableCompatCreatorCallbacks<",
            "TT;>;)V"
        }
    .end annotation

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/amazon/whispersync/android/support/v4/os/ParcelableCompatCreatorHoneycombMR2;->mCallbacks:Lcom/amazon/whispersync/android/support/v4/os/ParcelableCompatCreatorCallbacks;

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Parcel;",
            ")TT;"
        }
    .end annotation

    .line 36
    iget-object v0, p0, Lcom/amazon/whispersync/android/support/v4/os/ParcelableCompatCreatorHoneycombMR2;->mCallbacks:Lcom/amazon/whispersync/android/support/v4/os/ParcelableCompatCreatorCallbacks;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Lcom/amazon/whispersync/android/support/v4/os/ParcelableCompatCreatorCallbacks;->createFromParcel(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public createFromParcel(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Parcel;",
            "Ljava/lang/ClassLoader;",
            ")TT;"
        }
    .end annotation

    .line 40
    iget-object v0, p0, Lcom/amazon/whispersync/android/support/v4/os/ParcelableCompatCreatorHoneycombMR2;->mCallbacks:Lcom/amazon/whispersync/android/support/v4/os/ParcelableCompatCreatorCallbacks;

    invoke-interface {v0, p1, p2}, Lcom/amazon/whispersync/android/support/v4/os/ParcelableCompatCreatorCallbacks;->createFromParcel(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)[TT;"
        }
    .end annotation

    .line 44
    iget-object v0, p0, Lcom/amazon/whispersync/android/support/v4/os/ParcelableCompatCreatorHoneycombMR2;->mCallbacks:Lcom/amazon/whispersync/android/support/v4/os/ParcelableCompatCreatorCallbacks;

    invoke-interface {v0, p1}, Lcom/amazon/whispersync/android/support/v4/os/ParcelableCompatCreatorCallbacks;->newArray(I)[Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
