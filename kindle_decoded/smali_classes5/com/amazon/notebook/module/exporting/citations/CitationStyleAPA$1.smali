.class final Lcom/amazon/notebook/module/exporting/citations/CitationStyleAPA$1;
.super Ljava/lang/Object;
.source "CitationStyleAPA.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/notebook/module/exporting/citations/CitationStyleAPA;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/amazon/notebook/module/exporting/citations/CitationStyleAPA;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/amazon/notebook/module/exporting/citations/CitationStyleAPA;
    .locals 2

    .line 101
    new-instance v0, Lcom/amazon/notebook/module/exporting/citations/CitationStyleAPA;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/amazon/notebook/module/exporting/citations/CitationStyleAPA;-><init>(Landroid/os/Parcel;Lcom/amazon/notebook/module/exporting/citations/CitationStyleAPA$1;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 99
    invoke-virtual {p0, p1}, Lcom/amazon/notebook/module/exporting/citations/CitationStyleAPA$1;->createFromParcel(Landroid/os/Parcel;)Lcom/amazon/notebook/module/exporting/citations/CitationStyleAPA;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lcom/amazon/notebook/module/exporting/citations/CitationStyleAPA;
    .locals 0

    .line 105
    new-array p1, p1, [Lcom/amazon/notebook/module/exporting/citations/CitationStyleAPA;

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 99
    invoke-virtual {p0, p1}, Lcom/amazon/notebook/module/exporting/citations/CitationStyleAPA$1;->newArray(I)[Lcom/amazon/notebook/module/exporting/citations/CitationStyleAPA;

    move-result-object p1

    return-object p1
.end method
