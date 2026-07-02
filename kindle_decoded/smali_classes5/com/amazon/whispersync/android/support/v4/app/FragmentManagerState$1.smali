.class final Lcom/amazon/whispersync/android/support/v4/app/FragmentManagerState$1;
.super Ljava/lang/Object;
.source "FragmentManager.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/whispersync/android/support/v4/app/FragmentManagerState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/amazon/whispersync/android/support/v4/app/FragmentManagerState;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 363
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/amazon/whispersync/android/support/v4/app/FragmentManagerState;
    .locals 1

    .line 365
    new-instance v0, Lcom/amazon/whispersync/android/support/v4/app/FragmentManagerState;

    invoke-direct {v0, p1}, Lcom/amazon/whispersync/android/support/v4/app/FragmentManagerState;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 363
    invoke-virtual {p0, p1}, Lcom/amazon/whispersync/android/support/v4/app/FragmentManagerState$1;->createFromParcel(Landroid/os/Parcel;)Lcom/amazon/whispersync/android/support/v4/app/FragmentManagerState;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lcom/amazon/whispersync/android/support/v4/app/FragmentManagerState;
    .locals 0

    .line 369
    new-array p1, p1, [Lcom/amazon/whispersync/android/support/v4/app/FragmentManagerState;

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 363
    invoke-virtual {p0, p1}, Lcom/amazon/whispersync/android/support/v4/app/FragmentManagerState$1;->newArray(I)[Lcom/amazon/whispersync/android/support/v4/app/FragmentManagerState;

    move-result-object p1

    return-object p1
.end method
