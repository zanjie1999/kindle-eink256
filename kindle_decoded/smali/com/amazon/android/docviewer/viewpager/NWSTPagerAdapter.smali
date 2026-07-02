.class public abstract Lcom/amazon/android/docviewer/viewpager/NWSTPagerAdapter;
.super Ljava/lang/Object;
.source "NWSTPagerAdapter.java"


# instance fields
.field private mObservable:Landroid/database/DataSetObservable;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    new-instance v0, Landroid/database/DataSetObservable;

    invoke-direct {v0}, Landroid/database/DataSetObservable;-><init>()V

    iput-object v0, p0, Lcom/amazon/android/docviewer/viewpager/NWSTPagerAdapter;->mObservable:Landroid/database/DataSetObservable;

    return-void
.end method


# virtual methods
.method public destroyItem(Landroid/view/View;ILjava/lang/Object;)V
    .locals 0

    .line 198
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "Required method destroyItem was not overridden"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 0

    .line 124
    invoke-virtual {p0, p1, p2, p3}, Lcom/amazon/android/docviewer/viewpager/NWSTPagerAdapter;->destroyItem(Landroid/view/View;ILjava/lang/Object;)V

    const/4 p1, 0x0

    throw p1
.end method

.method public finishUpdate(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public finishUpdate(Landroid/view/ViewGroup;)V
    .locals 0

    .line 150
    invoke-virtual {p0, p1}, Lcom/amazon/android/docviewer/viewpager/NWSTPagerAdapter;->finishUpdate(Landroid/view/View;)V

    return-void
.end method

.method public abstract getCount()I
.end method

.method public getItemPosition(Ljava/lang/Object;)I
    .locals 0

    const/4 p1, -0x1

    return p1
.end method

.method public instantiateItem(Landroid/view/View;IZ)Ljava/lang/Object;
    .locals 0

    .line 180
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "Required method instantiateItem was not overridden"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public instantiateItem(Landroid/view/ViewGroup;IZ)Ljava/lang/Object;
    .locals 0

    .line 109
    invoke-virtual {p0, p1, p2, p3}, Lcom/amazon/android/docviewer/viewpager/NWSTPagerAdapter;->instantiateItem(Landroid/view/View;IZ)Ljava/lang/Object;

    const/4 p1, 0x0

    throw p1
.end method

.method public abstract isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
.end method

.method public notifyDataSetChanged()V
    .locals 1

    .line 286
    iget-object v0, p0, Lcom/amazon/android/docviewer/viewpager/NWSTPagerAdapter;->mObservable:Landroid/database/DataSetObservable;

    invoke-virtual {v0}, Landroid/database/DataSetObservable;->notifyChanged()V

    return-void
.end method

.method registerDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 1

    .line 290
    iget-object v0, p0, Lcom/amazon/android/docviewer/viewpager/NWSTPagerAdapter;->mObservable:Landroid/database/DataSetObservable;

    invoke-virtual {v0, p1}, Landroid/database/DataSetObservable;->registerObserver(Ljava/lang/Object;)V

    return-void
.end method

.method public restoreState(Landroid/os/Parcelable;Ljava/lang/ClassLoader;)V
    .locals 0

    return-void
.end method

.method public saveState()Landroid/os/Parcelable;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public setPrimaryItem(Landroid/view/View;ILjava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public setPrimaryItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 0

    .line 139
    invoke-virtual {p0, p1, p2, p3}, Lcom/amazon/android/docviewer/viewpager/NWSTPagerAdapter;->setPrimaryItem(Landroid/view/View;ILjava/lang/Object;)V

    return-void
.end method

.method public startUpdate(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public startUpdate(Landroid/view/ViewGroup;)V
    .locals 0

    .line 92
    invoke-virtual {p0, p1}, Lcom/amazon/android/docviewer/viewpager/NWSTPagerAdapter;->startUpdate(Landroid/view/View;)V

    return-void
.end method

.method unregisterDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 1

    .line 294
    iget-object v0, p0, Lcom/amazon/android/docviewer/viewpager/NWSTPagerAdapter;->mObservable:Landroid/database/DataSetObservable;

    invoke-virtual {v0, p1}, Landroid/database/DataSetObservable;->unregisterObserver(Ljava/lang/Object;)V

    return-void
.end method
