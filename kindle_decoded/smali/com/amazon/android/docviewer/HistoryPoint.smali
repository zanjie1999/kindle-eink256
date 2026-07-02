.class public Lcom/amazon/android/docviewer/HistoryPoint;
.super Ljava/lang/Object;
.source "HistoryPoint.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/amazon/android/docviewer/HistoryPoint;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field pageIndex:Lcom/amazon/android/docviewer/mapper/PageIndex;

.field viewMode:Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer$ViewMode;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 72
    new-instance v0, Lcom/amazon/android/docviewer/HistoryPoint$1;

    invoke-direct {v0}, Lcom/amazon/android/docviewer/HistoryPoint$1;-><init>()V

    sput-object v0, Lcom/amazon/android/docviewer/HistoryPoint;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    const-class v0, Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer$ViewMode;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer$ViewMode;

    iput-object v0, p0, Lcom/amazon/android/docviewer/HistoryPoint;->viewMode:Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer$ViewMode;

    .line 55
    const-class v0, Lcom/amazon/android/docviewer/mapper/PageIndex;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/android/docviewer/mapper/PageIndex;

    iput-object p1, p0, Lcom/amazon/android/docviewer/HistoryPoint;->pageIndex:Lcom/amazon/android/docviewer/mapper/PageIndex;

    return-void
.end method

.method public constructor <init>(Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer$ViewMode;Lcom/amazon/android/docviewer/mapper/PageIndex;)V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/amazon/android/docviewer/HistoryPoint;->viewMode:Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer$ViewMode;

    .line 33
    iput-object p2, p0, Lcom/amazon/android/docviewer/HistoryPoint;->pageIndex:Lcom/amazon/android/docviewer/mapper/PageIndex;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getPosition()Lcom/amazon/android/docviewer/mapper/PageIndex;
    .locals 1

    .line 47
    iget-object v0, p0, Lcom/amazon/android/docviewer/HistoryPoint;->pageIndex:Lcom/amazon/android/docviewer/mapper/PageIndex;

    return-object v0
.end method

.method public getViewMode()Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer$ViewMode;
    .locals 1

    .line 40
    iget-object v0, p0, Lcom/amazon/android/docviewer/HistoryPoint;->viewMode:Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer$ViewMode;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 65
    iget-object p2, p0, Lcom/amazon/android/docviewer/HistoryPoint;->viewMode:Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer$ViewMode;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 66
    iget-object p2, p0, Lcom/amazon/android/docviewer/HistoryPoint;->pageIndex:Lcom/amazon/android/docviewer/mapper/PageIndex;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    return-void
.end method
