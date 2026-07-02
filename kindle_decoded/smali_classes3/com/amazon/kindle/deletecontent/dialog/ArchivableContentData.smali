.class public final Lcom/amazon/kindle/deletecontent/dialog/ArchivableContentData;
.super Ljava/lang/Object;
.source "DeleteFromLibraryDialogModel.kt"

# interfaces
.implements Lcom/amazon/kindle/deletecontent/dialog/ContentData;
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kindle/deletecontent/dialog/ArchivableContentData$CREATOR;
    }
.end annotation


# static fields
.field public static final CREATOR:Lcom/amazon/kindle/deletecontent/dialog/ArchivableContentData$CREATOR;


# instance fields
.field private final asin:Ljava/lang/String;

.field private final bookId:Ljava/lang/String;

.field private final contentType:Lcom/amazon/kindle/krx/content/ContentType;

.field private final hasAudibleCompanion:Z

.field private final originType:Ljava/lang/String;

.field private final parentAsin:Ljava/lang/String;

.field private final title:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/amazon/kindle/deletecontent/dialog/ArchivableContentData$CREATOR;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/amazon/kindle/deletecontent/dialog/ArchivableContentData$CREATOR;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/amazon/kindle/deletecontent/dialog/ArchivableContentData;->CREATOR:Lcom/amazon/kindle/deletecontent/dialog/ArchivableContentData$CREATOR;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 9

    const-string v0, "parcel"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 87
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_4

    const-string v0, "parcel.readString() ?: t\u2026ssing \'title\' in Parcel\")"

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 88
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_3

    const-string v0, "parcel.readString() ?: t\u2026sing \'bookId\' in Parcel\")"

    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 89
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_2

    const-string v0, "parcel.readString() ?: t\u2026issing \'asin\' in Parcel\")"

    invoke-static {v4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 90
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v1, "parcel.readString() ?: t\u2026\'contentType\' in Parcel\")"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/amazon/kindle/krx/content/ContentType;->valueOf(Ljava/lang/String;)Lcom/amazon/kindle/krx/content/ContentType;

    move-result-object v5

    .line 91
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 92
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    const/4 v1, 0x0

    int-to-byte v7, v1

    if-eq v0, v7, :cond_0

    const/4 v0, 0x1

    const/4 v7, 0x1

    goto :goto_0

    :cond_0
    const/4 v7, 0x0

    .line 93
    :goto_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    move-object v1, p0

    .line 86
    invoke-direct/range {v1 .. v8}, Lcom/amazon/kindle/deletecontent/dialog/ArchivableContentData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/krx/content/ContentType;Ljava/lang/String;ZLjava/lang/String;)V

    return-void

    .line 90
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Missing \'contentType\' in Parcel"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 89
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Missing \'asin\' in Parcel"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 88
    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Missing \'bookId\' in Parcel"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 87
    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Missing \'title\' in Parcel"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/krx/content/ContentType;Ljava/lang/String;ZLjava/lang/String;)V
    .locals 1

    const-string v0, "title"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "bookId"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "asin"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "contentType"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/amazon/kindle/deletecontent/dialog/ArchivableContentData;->title:Ljava/lang/String;

    iput-object p2, p0, Lcom/amazon/kindle/deletecontent/dialog/ArchivableContentData;->bookId:Ljava/lang/String;

    iput-object p3, p0, Lcom/amazon/kindle/deletecontent/dialog/ArchivableContentData;->asin:Ljava/lang/String;

    iput-object p4, p0, Lcom/amazon/kindle/deletecontent/dialog/ArchivableContentData;->contentType:Lcom/amazon/kindle/krx/content/ContentType;

    iput-object p5, p0, Lcom/amazon/kindle/deletecontent/dialog/ArchivableContentData;->originType:Ljava/lang/String;

    iput-boolean p6, p0, Lcom/amazon/kindle/deletecontent/dialog/ArchivableContentData;->hasAudibleCompanion:Z

    iput-object p7, p0, Lcom/amazon/kindle/deletecontent/dialog/ArchivableContentData;->parentAsin:Ljava/lang/String;

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

    .line 81
    iget-object v0, p0, Lcom/amazon/kindle/deletecontent/dialog/ArchivableContentData;->asin:Ljava/lang/String;

    return-object v0
.end method

.method public getBookId()Ljava/lang/String;
    .locals 1

    .line 80
    iget-object v0, p0, Lcom/amazon/kindle/deletecontent/dialog/ArchivableContentData;->bookId:Ljava/lang/String;

    return-object v0
.end method

.method public getContentType()Lcom/amazon/kindle/krx/content/ContentType;
    .locals 1

    .line 81
    iget-object v0, p0, Lcom/amazon/kindle/deletecontent/dialog/ArchivableContentData;->contentType:Lcom/amazon/kindle/krx/content/ContentType;

    return-object v0
.end method

.method public final getHasAudibleCompanion()Z
    .locals 1

    .line 83
    iget-boolean v0, p0, Lcom/amazon/kindle/deletecontent/dialog/ArchivableContentData;->hasAudibleCompanion:Z

    return v0
.end method

.method public getOriginType()Ljava/lang/String;
    .locals 1

    .line 82
    iget-object v0, p0, Lcom/amazon/kindle/deletecontent/dialog/ArchivableContentData;->originType:Ljava/lang/String;

    return-object v0
.end method

.method public final getParentAsin()Ljava/lang/String;
    .locals 1

    .line 83
    iget-object v0, p0, Lcom/amazon/kindle/deletecontent/dialog/ArchivableContentData;->parentAsin:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 80
    iget-object v0, p0, Lcom/amazon/kindle/deletecontent/dialog/ArchivableContentData;->title:Ljava/lang/String;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    const-string p2, "parcel"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 96
    invoke-virtual {p0}, Lcom/amazon/kindle/deletecontent/dialog/ArchivableContentData;->getTitle()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 97
    invoke-virtual {p0}, Lcom/amazon/kindle/deletecontent/dialog/ArchivableContentData;->getBookId()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 98
    invoke-virtual {p0}, Lcom/amazon/kindle/deletecontent/dialog/ArchivableContentData;->getAsin()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 99
    invoke-virtual {p0}, Lcom/amazon/kindle/deletecontent/dialog/ArchivableContentData;->getContentType()Lcom/amazon/kindle/krx/content/ContentType;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 100
    invoke-virtual {p0}, Lcom/amazon/kindle/deletecontent/dialog/ArchivableContentData;->getOriginType()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 101
    iget-boolean p2, p0, Lcom/amazon/kindle/deletecontent/dialog/ArchivableContentData;->hasAudibleCompanion:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 102
    iget-object p2, p0, Lcom/amazon/kindle/deletecontent/dialog/ArchivableContentData;->parentAsin:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
