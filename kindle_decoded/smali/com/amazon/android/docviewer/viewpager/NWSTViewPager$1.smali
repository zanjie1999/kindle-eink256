.class final Lcom/amazon/android/docviewer/viewpager/NWSTViewPager$1;
.super Ljava/lang/Object;
.source "NWSTViewPager.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/android/docviewer/viewpager/NWSTViewPager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/amazon/android/docviewer/viewpager/NWSTViewPager$ItemInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/amazon/android/docviewer/viewpager/NWSTViewPager$ItemInfo;Lcom/amazon/android/docviewer/viewpager/NWSTViewPager$ItemInfo;)I
    .locals 0

    .line 106
    iget p1, p1, Lcom/amazon/android/docviewer/viewpager/NWSTViewPager$ItemInfo;->position:I

    iget p2, p2, Lcom/amazon/android/docviewer/viewpager/NWSTViewPager$ItemInfo;->position:I

    sub-int/2addr p1, p2

    return p1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 103
    check-cast p1, Lcom/amazon/android/docviewer/viewpager/NWSTViewPager$ItemInfo;

    check-cast p2, Lcom/amazon/android/docviewer/viewpager/NWSTViewPager$ItemInfo;

    invoke-virtual {p0, p1, p2}, Lcom/amazon/android/docviewer/viewpager/NWSTViewPager$1;->compare(Lcom/amazon/android/docviewer/viewpager/NWSTViewPager$ItemInfo;Lcom/amazon/android/docviewer/viewpager/NWSTViewPager$ItemInfo;)I

    move-result p1

    return p1
.end method
