.class public final Lcom/amazon/kindle/deletecontent/dialog/ArchivableContentData$CREATOR;
.super Ljava/lang/Object;
.source "DeleteFromLibraryDialogModel.kt"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kindle/deletecontent/dialog/ArchivableContentData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CREATOR"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/amazon/kindle/deletecontent/dialog/ArchivableContentData;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 107
    invoke-direct {p0}, Lcom/amazon/kindle/deletecontent/dialog/ArchivableContentData$CREATOR;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/amazon/kindle/deletecontent/dialog/ArchivableContentData;
    .locals 1

    const-string v0, "parcel"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 109
    new-instance v0, Lcom/amazon/kindle/deletecontent/dialog/ArchivableContentData;

    invoke-direct {v0, p1}, Lcom/amazon/kindle/deletecontent/dialog/ArchivableContentData;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 107
    invoke-virtual {p0, p1}, Lcom/amazon/kindle/deletecontent/dialog/ArchivableContentData$CREATOR;->createFromParcel(Landroid/os/Parcel;)Lcom/amazon/kindle/deletecontent/dialog/ArchivableContentData;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lcom/amazon/kindle/deletecontent/dialog/ArchivableContentData;
    .locals 0

    .line 113
    new-array p1, p1, [Lcom/amazon/kindle/deletecontent/dialog/ArchivableContentData;

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 107
    invoke-virtual {p0, p1}, Lcom/amazon/kindle/deletecontent/dialog/ArchivableContentData$CREATOR;->newArray(I)[Lcom/amazon/kindle/deletecontent/dialog/ArchivableContentData;

    move-result-object p1

    return-object p1
.end method
