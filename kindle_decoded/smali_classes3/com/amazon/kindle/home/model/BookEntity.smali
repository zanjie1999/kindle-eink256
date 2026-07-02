.class public final Lcom/amazon/kindle/home/model/BookEntity;
.super Ljava/lang/Object;
.source "HomeZoneModels.kt"


# instance fields
.field private final asin:Ljava/lang/String;

.field private final aspectRatio:Ljava/lang/Float;

.field private final coverAltText:Ljava/lang/String;

.field private final darkCoverUrl:Ljava/lang/String;

.field private final detailLink:Ljava/lang/String;

.field private final lightCoverUrl:Ljava/lang/String;

.field private final linkParameters:Ljava/lang/String;

.field private final primaryAuthor:Ljava/lang/String;

.field private final reftag:Ljava/lang/String;

.field private final title:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Float;)V
    .locals 1

    const-string v0, "asin"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "title"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "primaryAuthor"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "lightCoverUrl"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "darkCoverUrl"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "coverAltText"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "detailLink"

    invoke-static {p7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/amazon/kindle/home/model/BookEntity;->asin:Ljava/lang/String;

    iput-object p2, p0, Lcom/amazon/kindle/home/model/BookEntity;->title:Ljava/lang/String;

    iput-object p3, p0, Lcom/amazon/kindle/home/model/BookEntity;->primaryAuthor:Ljava/lang/String;

    iput-object p4, p0, Lcom/amazon/kindle/home/model/BookEntity;->lightCoverUrl:Ljava/lang/String;

    iput-object p5, p0, Lcom/amazon/kindle/home/model/BookEntity;->darkCoverUrl:Ljava/lang/String;

    iput-object p6, p0, Lcom/amazon/kindle/home/model/BookEntity;->coverAltText:Ljava/lang/String;

    iput-object p7, p0, Lcom/amazon/kindle/home/model/BookEntity;->detailLink:Ljava/lang/String;

    iput-object p8, p0, Lcom/amazon/kindle/home/model/BookEntity;->linkParameters:Ljava/lang/String;

    iput-object p9, p0, Lcom/amazon/kindle/home/model/BookEntity;->reftag:Ljava/lang/String;

    iput-object p10, p0, Lcom/amazon/kindle/home/model/BookEntity;->aspectRatio:Ljava/lang/Float;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Float;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 12

    move/from16 v0, p11

    and-int/lit16 v0, v0, 0x200

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    move-object v11, v0

    goto :goto_0

    :cond_0
    move-object/from16 v11, p10

    :goto_0
    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    .line 16
    invoke-direct/range {v1 .. v11}, Lcom/amazon/kindle/home/model/BookEntity;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Float;)V

    return-void
.end method


# virtual methods
.method public final getAsin()Ljava/lang/String;
    .locals 1

    .line 7
    iget-object v0, p0, Lcom/amazon/kindle/home/model/BookEntity;->asin:Ljava/lang/String;

    return-object v0
.end method

.method public final getAspectRatio()Ljava/lang/Float;
    .locals 1

    .line 16
    iget-object v0, p0, Lcom/amazon/kindle/home/model/BookEntity;->aspectRatio:Ljava/lang/Float;

    return-object v0
.end method

.method public final getCoverAltText()Ljava/lang/String;
    .locals 1

    .line 12
    iget-object v0, p0, Lcom/amazon/kindle/home/model/BookEntity;->coverAltText:Ljava/lang/String;

    return-object v0
.end method

.method public final getDarkCoverUrl()Ljava/lang/String;
    .locals 1

    .line 11
    iget-object v0, p0, Lcom/amazon/kindle/home/model/BookEntity;->darkCoverUrl:Ljava/lang/String;

    return-object v0
.end method

.method public final getDetailLink()Ljava/lang/String;
    .locals 1

    .line 13
    iget-object v0, p0, Lcom/amazon/kindle/home/model/BookEntity;->detailLink:Ljava/lang/String;

    return-object v0
.end method

.method public final getLightCoverUrl()Ljava/lang/String;
    .locals 1

    .line 10
    iget-object v0, p0, Lcom/amazon/kindle/home/model/BookEntity;->lightCoverUrl:Ljava/lang/String;

    return-object v0
.end method

.method public final getPrimaryAuthor()Ljava/lang/String;
    .locals 1

    .line 9
    iget-object v0, p0, Lcom/amazon/kindle/home/model/BookEntity;->primaryAuthor:Ljava/lang/String;

    return-object v0
.end method

.method public final getTitle()Ljava/lang/String;
    .locals 1

    .line 8
    iget-object v0, p0, Lcom/amazon/kindle/home/model/BookEntity;->title:Ljava/lang/String;

    return-object v0
.end method
