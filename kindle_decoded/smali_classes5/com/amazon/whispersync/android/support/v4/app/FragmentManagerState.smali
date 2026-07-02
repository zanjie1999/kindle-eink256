.class final Lcom/amazon/whispersync/android/support/v4/app/FragmentManagerState;
.super Ljava/lang/Object;
.source "FragmentManager.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/amazon/whispersync/android/support/v4/app/FragmentManagerState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field mActive:[Lcom/amazon/whispersync/android/support/v4/app/FragmentState;

.field mAdded:[I

.field mBackStack:[Lcom/amazon/whispersync/android/support/v4/app/BackStackState;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 362
    new-instance v0, Lcom/amazon/whispersync/android/support/v4/app/FragmentManagerState$1;

    invoke-direct {v0}, Lcom/amazon/whispersync/android/support/v4/app/FragmentManagerState$1;-><init>()V

    sput-object v0, Lcom/amazon/whispersync/android/support/v4/app/FragmentManagerState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 343
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 346
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 347
    sget-object v0, Lcom/amazon/whispersync/android/support/v4/app/FragmentState;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/whispersync/android/support/v4/app/FragmentState;

    iput-object v0, p0, Lcom/amazon/whispersync/android/support/v4/app/FragmentManagerState;->mActive:[Lcom/amazon/whispersync/android/support/v4/app/FragmentState;

    .line 348
    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/whispersync/android/support/v4/app/FragmentManagerState;->mAdded:[I

    .line 349
    sget-object v0, Lcom/amazon/whispersync/android/support/v4/app/BackStackState;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/amazon/whispersync/android/support/v4/app/BackStackState;

    iput-object p1, p0, Lcom/amazon/whispersync/android/support/v4/app/FragmentManagerState;->mBackStack:[Lcom/amazon/whispersync/android/support/v4/app/BackStackState;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .line 357
    iget-object v0, p0, Lcom/amazon/whispersync/android/support/v4/app/FragmentManagerState;->mActive:[Lcom/amazon/whispersync/android/support/v4/app/FragmentState;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 358
    iget-object v0, p0, Lcom/amazon/whispersync/android/support/v4/app/FragmentManagerState;->mAdded:[I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 359
    iget-object v0, p0, Lcom/amazon/whispersync/android/support/v4/app/FragmentManagerState;->mBackStack:[Lcom/amazon/whispersync/android/support/v4/app/BackStackState;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    return-void
.end method
