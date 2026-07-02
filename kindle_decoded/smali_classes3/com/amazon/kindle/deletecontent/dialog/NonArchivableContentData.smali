.class public final Lcom/amazon/kindle/deletecontent/dialog/NonArchivableContentData;
.super Ljava/lang/Object;
.source "DeleteFromLibraryDialogModel.kt"

# interfaces
.implements Lcom/amazon/kindle/deletecontent/dialog/ContentData;
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kindle/deletecontent/dialog/NonArchivableContentData$CREATOR;
    }
.end annotation


# static fields
.field public static final CREATOR:Lcom/amazon/kindle/deletecontent/dialog/NonArchivableContentData$CREATOR;


# instance fields
.field private final asin:Ljava/lang/String;

.field private final bookId:Ljava/lang/String;

.field private final contentType:Lcom/amazon/kindle/krx/content/ContentType;

.field private final originType:Ljava/lang/String;

.field private final title:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/amazon/kindle/deletecontent/dialog/NonArchivableContentData$CREATOR;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/amazon/kindle/deletecontent/dialog/NonArchivableContentData$CREATOR;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/amazon/kindle/deletecontent/dialog/NonArchivableContentData;->CREATOR:Lcom/amazon/kindle/deletecontent/dialog/NonArchivableContentData$CREATOR;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 7

    const-string v0, "parcel"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    const-string v0, "parcel.readString() ?: t\u2026ssing \'title\' in Parcel\")"

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 51
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    const-string v0, "parcel.readString() ?: t\u2026sing \'bookId\' in Parcel\")"

    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 52
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 53
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "parcel.readString() ?: t\u2026\'contentType\' in Parcel\")"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/amazon/kindle/krx/content/ContentType;->valueOf(Ljava/lang/String;)Lcom/amazon/kindle/krx/content/ContentType;

    move-result-object v5

    .line 54
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    move-object v1, p0

    .line 49
    invoke-direct/range {v1 .. v6}, Lcom/amazon/kindle/deletecontent/dialog/NonArchivableContentData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/krx/content/ContentType;Ljava/lang/String;)V

    return-void

    .line 53
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Missing \'contentType\' in Parcel"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 51
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Missing \'bookId\' in Parcel"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 50
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Missing \'title\' in Parcel"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/krx/content/ContentType;Ljava/lang/String;)V
    .locals 1

    const-string v0, "title"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "bookId"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "contentType"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/amazon/kindle/deletecontent/dialog/NonArchivableContentData;->title:Ljava/lang/String;

    iput-object p2, p0, Lcom/amazon/kindle/deletecontent/dialog/NonArchivableContentData;->bookId:Ljava/lang/String;

    iput-object p3, p0, Lcom/amazon/kindle/deletecontent/dialog/NonArchivableContentData;->asin:Ljava/lang/String;

    iput-object p4, p0, Lcom/amazon/kindle/deletecontent/dialog/NonArchivableContentData;->contentType:Lcom/amazon/kindle/krx/content/ContentType;

    iput-object p5, p0, Lcom/amazon/kindle/deletecontent/dialog/NonArchivableContentData;->originType:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getAsin()Ljava/lang/String;
    .locals 1

    .line 45
    iget-object v0, p0, Lcom/amazon/kindle/deletecontent/dialog/NonArchivableContentData;->asin:Ljava/lang/String;

    return-object v0
.end method

.method public getBookId()Ljava/lang/String;
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/amazon/kindle/deletecontent/dialog/NonArchivableContentData;->bookId:Ljava/lang/String;

    return-object v0
.end method

.method public getContentType()Lcom/amazon/kindle/krx/content/ContentType;
    .locals 1

    .line 45
    iget-object v0, p0, Lcom/amazon/kindle/deletecontent/dialog/NonArchivableContentData;->contentType:Lcom/amazon/kindle/krx/content/ContentType;

    return-object v0
.end method

.method public getOriginType()Ljava/lang/String;
    .locals 1

    .line 46
    iget-object v0, p0, Lcom/amazon/kindle/deletecontent/dialog/NonArchivableContentData;->originType:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/amazon/kindle/deletecontent/dialog/NonArchivableContentData;->title:Ljava/lang/String;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    const-string p2, "parcel"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 57
    invoke-virtual {p0}, Lcom/amazon/kindle/deletecontent/dialog/NonArchivableContentData;->getTitle()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 58
    invoke-virtual {p0}, Lcom/amazon/kindle/deletecontent/dialog/NonArchivableContentData;->getBookId()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 59
    invoke-virtual {p0}, Lcom/amazon/kindle/deletecontent/dialog/NonArchivableContentData;->getAsin()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 60
    invoke-virtual {p0}, Lcom/amazon/kindle/deletecontent/dialog/NonArchivableContentData;->getContentType()Lcom/amazon/kindle/krx/content/ContentType;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 61
    invoke-virtual {p0}, Lcom/amazon/kindle/deletecontent/dialog/NonArchivableContentData;->getOriginType()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
