.class final Lcom/amazon/whispersync/android/support/v4/view/ViewPager$SavedState$1;
.super Ljava/lang/Object;
.source "ViewPager.java"

# interfaces
.implements Lcom/amazon/whispersync/android/support/v4/os/ParcelableCompatCreatorCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/whispersync/android/support/v4/view/ViewPager$SavedState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/amazon/whispersync/android/support/v4/os/ParcelableCompatCreatorCallbacks<",
        "Lcom/amazon/whispersync/android/support/v4/view/ViewPager$SavedState;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 853
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Lcom/amazon/whispersync/android/support/v4/view/ViewPager$SavedState;
    .locals 1

    .line 856
    new-instance v0, Lcom/amazon/whispersync/android/support/v4/view/ViewPager$SavedState;

    invoke-direct {v0, p1, p2}, Lcom/amazon/whispersync/android/support/v4/view/ViewPager$SavedState;-><init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Ljava/lang/Object;
    .locals 0

    .line 853
    invoke-virtual {p0, p1, p2}, Lcom/amazon/whispersync/android/support/v4/view/ViewPager$SavedState$1;->createFromParcel(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Lcom/amazon/whispersync/android/support/v4/view/ViewPager$SavedState;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lcom/amazon/whispersync/android/support/v4/view/ViewPager$SavedState;
    .locals 0

    .line 860
    new-array p1, p1, [Lcom/amazon/whispersync/android/support/v4/view/ViewPager$SavedState;

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 853
    invoke-virtual {p0, p1}, Lcom/amazon/whispersync/android/support/v4/view/ViewPager$SavedState$1;->newArray(I)[Lcom/amazon/whispersync/android/support/v4/view/ViewPager$SavedState;

    move-result-object p1

    return-object p1
.end method
