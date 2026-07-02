.class final Lcom/amazon/android/docviewer/viewpager/NWSTViewPager$SavedState$1;
.super Ljava/lang/Object;
.source "NWSTViewPager.java"

# interfaces
.implements Landroidx/core/os/ParcelableCompatCreatorCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/android/docviewer/viewpager/NWSTViewPager$SavedState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroidx/core/os/ParcelableCompatCreatorCallbacks<",
        "Lcom/amazon/android/docviewer/viewpager/NWSTViewPager$SavedState;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 918
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Lcom/amazon/android/docviewer/viewpager/NWSTViewPager$SavedState;
    .locals 1

    .line 921
    new-instance v0, Lcom/amazon/android/docviewer/viewpager/NWSTViewPager$SavedState;

    invoke-direct {v0, p1, p2}, Lcom/amazon/android/docviewer/viewpager/NWSTViewPager$SavedState;-><init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Ljava/lang/Object;
    .locals 0

    .line 918
    invoke-virtual {p0, p1, p2}, Lcom/amazon/android/docviewer/viewpager/NWSTViewPager$SavedState$1;->createFromParcel(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Lcom/amazon/android/docviewer/viewpager/NWSTViewPager$SavedState;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lcom/amazon/android/docviewer/viewpager/NWSTViewPager$SavedState;
    .locals 0

    .line 926
    new-array p1, p1, [Lcom/amazon/android/docviewer/viewpager/NWSTViewPager$SavedState;

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 918
    invoke-virtual {p0, p1}, Lcom/amazon/android/docviewer/viewpager/NWSTViewPager$SavedState$1;->newArray(I)[Lcom/amazon/android/docviewer/viewpager/NWSTViewPager$SavedState;

    move-result-object p1

    return-object p1
.end method
