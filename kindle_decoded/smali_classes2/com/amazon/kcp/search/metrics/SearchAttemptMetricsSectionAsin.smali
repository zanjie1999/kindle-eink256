.class public final Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsSectionAsin;
.super Ljava/lang/Object;
.source "SearchAttemptMetricsSectionAsin.kt"


# instance fields
.field private final bookType:Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsBookType;

.field private final fileSize:Ljava/lang/Integer;

.field private final hasImage:Ljava/lang/Boolean;

.field private final isSeries:Ljava/lang/Boolean;

.field private final itemPosition:I

.field private final itemValue:Ljava/lang/String;

.field private final lastAccessed:Ljava/util/Date;

.field private final price:Ljava/lang/Long;

.field private final readProgress:Ljava/lang/Integer;

.field private final reviewStars:Ljava/lang/Double;

.field private final searchId:Ljava/util/UUID;

.field private final searchSessionId:Ljava/util/UUID;

.field private final sectionName:Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsSection$SectionName;

.field private final totalReview:Ljava/lang/Integer;

.field private final wasAvailable:Ljava/lang/Boolean;

.field private final wasComixBadgeShown:Ljava/lang/Boolean;

.field private final wasDownloaded:Ljava/lang/Boolean;

.field private final wasKindleUnlimitedBadgeShown:Ljava/lang/Boolean;

.field private final wasPrimeBadgeShown:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>(Ljava/util/UUID;Ljava/util/UUID;Ljava/lang/String;ILcom/amazon/kcp/search/metrics/SearchAttemptMetricsSection$SectionName;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Double;Ljava/lang/Integer;Ljava/lang/Long;Ljava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/Boolean;Ljava/lang/Integer;Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsBookType;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/util/Date;)V
    .locals 5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p5

    const-string v4, "searchId"

    invoke-static {p1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "searchSessionId"

    invoke-static {p2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "sectionName"

    invoke-static {p5, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, v0, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsSectionAsin;->searchId:Ljava/util/UUID;

    iput-object v2, v0, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsSectionAsin;->searchSessionId:Ljava/util/UUID;

    move-object v1, p3

    iput-object v1, v0, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsSectionAsin;->itemValue:Ljava/lang/String;

    move v1, p4

    iput v1, v0, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsSectionAsin;->itemPosition:I

    iput-object v3, v0, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsSectionAsin;->sectionName:Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsSection$SectionName;

    move-object v1, p6

    iput-object v1, v0, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsSectionAsin;->hasImage:Ljava/lang/Boolean;

    move-object v1, p7

    iput-object v1, v0, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsSectionAsin;->wasPrimeBadgeShown:Ljava/lang/Boolean;

    move-object v1, p8

    iput-object v1, v0, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsSectionAsin;->wasKindleUnlimitedBadgeShown:Ljava/lang/Boolean;

    move-object v1, p9

    iput-object v1, v0, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsSectionAsin;->reviewStars:Ljava/lang/Double;

    move-object v1, p10

    iput-object v1, v0, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsSectionAsin;->totalReview:Ljava/lang/Integer;

    move-object/from16 v1, p11

    iput-object v1, v0, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsSectionAsin;->price:Ljava/lang/Long;

    move-object/from16 v1, p12

    iput-object v1, v0, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsSectionAsin;->wasAvailable:Ljava/lang/Boolean;

    move-object/from16 v1, p13

    iput-object v1, v0, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsSectionAsin;->readProgress:Ljava/lang/Integer;

    move-object/from16 v1, p14

    iput-object v1, v0, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsSectionAsin;->wasDownloaded:Ljava/lang/Boolean;

    move-object/from16 v1, p15

    iput-object v1, v0, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsSectionAsin;->fileSize:Ljava/lang/Integer;

    move-object/from16 v1, p16

    iput-object v1, v0, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsSectionAsin;->bookType:Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsBookType;

    move-object/from16 v1, p17

    iput-object v1, v0, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsSectionAsin;->isSeries:Ljava/lang/Boolean;

    move-object/from16 v1, p18

    iput-object v1, v0, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsSectionAsin;->wasComixBadgeShown:Ljava/lang/Boolean;

    move-object/from16 v1, p19

    iput-object v1, v0, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsSectionAsin;->lastAccessed:Ljava/util/Date;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/util/UUID;Ljava/util/UUID;Ljava/lang/String;ILcom/amazon/kcp/search/metrics/SearchAttemptMetricsSection$SectionName;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Double;Ljava/lang/Integer;Ljava/lang/Long;Ljava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/Boolean;Ljava/lang/Integer;Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsBookType;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/util/Date;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 23

    move/from16 v0, p20

    and-int/lit8 v1, v0, 0x4

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    move-object v6, v2

    goto :goto_0

    :cond_0
    move-object/from16 v6, p3

    :goto_0
    and-int/lit8 v1, v0, 0x8

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    const/4 v7, 0x0

    goto :goto_1

    :cond_1
    move/from16 v7, p4

    :goto_1
    and-int/lit8 v1, v0, 0x20

    if-eqz v1, :cond_2

    move-object v9, v2

    goto :goto_2

    :cond_2
    move-object/from16 v9, p6

    :goto_2
    and-int/lit8 v1, v0, 0x40

    if-eqz v1, :cond_3

    move-object v10, v2

    goto :goto_3

    :cond_3
    move-object/from16 v10, p7

    :goto_3
    and-int/lit16 v1, v0, 0x80

    if-eqz v1, :cond_4

    move-object v11, v2

    goto :goto_4

    :cond_4
    move-object/from16 v11, p8

    :goto_4
    and-int/lit16 v1, v0, 0x100

    if-eqz v1, :cond_5

    move-object v12, v2

    goto :goto_5

    :cond_5
    move-object/from16 v12, p9

    :goto_5
    and-int/lit16 v1, v0, 0x200

    if-eqz v1, :cond_6

    move-object v13, v2

    goto :goto_6

    :cond_6
    move-object/from16 v13, p10

    :goto_6
    and-int/lit16 v1, v0, 0x400

    if-eqz v1, :cond_7

    move-object v14, v2

    goto :goto_7

    :cond_7
    move-object/from16 v14, p11

    :goto_7
    and-int/lit16 v1, v0, 0x800

    if-eqz v1, :cond_8

    move-object v15, v2

    goto :goto_8

    :cond_8
    move-object/from16 v15, p12

    :goto_8
    and-int/lit16 v1, v0, 0x1000

    if-eqz v1, :cond_9

    move-object/from16 v16, v2

    goto :goto_9

    :cond_9
    move-object/from16 v16, p13

    :goto_9
    and-int/lit16 v1, v0, 0x2000

    if-eqz v1, :cond_a

    move-object/from16 v17, v2

    goto :goto_a

    :cond_a
    move-object/from16 v17, p14

    :goto_a
    and-int/lit16 v1, v0, 0x4000

    if-eqz v1, :cond_b

    move-object/from16 v18, v2

    goto :goto_b

    :cond_b
    move-object/from16 v18, p15

    :goto_b
    const v1, 0x8000

    and-int/2addr v1, v0

    if-eqz v1, :cond_c

    move-object/from16 v19, v2

    goto :goto_c

    :cond_c
    move-object/from16 v19, p16

    :goto_c
    const/high16 v1, 0x10000

    and-int/2addr v1, v0

    if-eqz v1, :cond_d

    move-object/from16 v20, v2

    goto :goto_d

    :cond_d
    move-object/from16 v20, p17

    :goto_d
    const/high16 v1, 0x20000

    and-int/2addr v1, v0

    if-eqz v1, :cond_e

    move-object/from16 v21, v2

    goto :goto_e

    :cond_e
    move-object/from16 v21, p18

    :goto_e
    const/high16 v1, 0x40000

    and-int/2addr v0, v1

    if-eqz v0, :cond_f

    move-object/from16 v22, v2

    goto :goto_f

    :cond_f
    move-object/from16 v22, p19

    :goto_f
    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move-object/from16 v8, p5

    .line 28
    invoke-direct/range {v3 .. v22}, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsSectionAsin;-><init>(Ljava/util/UUID;Ljava/util/UUID;Ljava/lang/String;ILcom/amazon/kcp/search/metrics/SearchAttemptMetricsSection$SectionName;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Double;Ljava/lang/Integer;Ljava/lang/Long;Ljava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/Boolean;Ljava/lang/Integer;Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsBookType;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/util/Date;)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsSectionAsin;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsSectionAsin;

    iget-object v0, p0, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsSectionAsin;->searchId:Ljava/util/UUID;

    iget-object v1, p1, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsSectionAsin;->searchId:Ljava/util/UUID;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsSectionAsin;->searchSessionId:Ljava/util/UUID;

    iget-object v1, p1, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsSectionAsin;->searchSessionId:Ljava/util/UUID;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsSectionAsin;->itemValue:Ljava/lang/String;

    iget-object v1, p1, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsSectionAsin;->itemValue:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsSectionAsin;->itemPosition:I

    iget v1, p1, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsSectionAsin;->itemPosition:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsSectionAsin;->sectionName:Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsSection$SectionName;

    iget-object v1, p1, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsSectionAsin;->sectionName:Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsSection$SectionName;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsSectionAsin;->hasImage:Ljava/lang/Boolean;

    iget-object v1, p1, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsSectionAsin;->hasImage:Ljava/lang/Boolean;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsSectionAsin;->wasPrimeBadgeShown:Ljava/lang/Boolean;

    iget-object v1, p1, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsSectionAsin;->wasPrimeBadgeShown:Ljava/lang/Boolean;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsSectionAsin;->wasKindleUnlimitedBadgeShown:Ljava/lang/Boolean;

    iget-object v1, p1, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsSectionAsin;->wasKindleUnlimitedBadgeShown:Ljava/lang/Boolean;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsSectionAsin;->reviewStars:Ljava/lang/Double;

    iget-object v1, p1, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsSectionAsin;->reviewStars:Ljava/lang/Double;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsSectionAsin;->totalReview:Ljava/lang/Integer;

    iget-object v1, p1, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsSectionAsin;->totalReview:Ljava/lang/Integer;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsSectionAsin;->price:Ljava/lang/Long;

    iget-object v1, p1, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsSectionAsin;->price:Ljava/lang/Long;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsSectionAsin;->wasAvailable:Ljava/lang/Boolean;

    iget-object v1, p1, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsSectionAsin;->wasAvailable:Ljava/lang/Boolean;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsSectionAsin;->readProgress:Ljava/lang/Integer;

    iget-object v1, p1, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsSectionAsin;->readProgress:Ljava/lang/Integer;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsSectionAsin;->wasDownloaded:Ljava/lang/Boolean;

    iget-object v1, p1, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsSectionAsin;->wasDownloaded:Ljava/lang/Boolean;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsSectionAsin;->fileSize:Ljava/lang/Integer;

    iget-object v1, p1, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsSectionAsin;->fileSize:Ljava/lang/Integer;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsSectionAsin;->bookType:Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsBookType;

    iget-object v1, p1, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsSectionAsin;->bookType:Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsBookType;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsSectionAsin;->isSeries:Ljava/lang/Boolean;

    iget-object v1, p1, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsSectionAsin;->isSeries:Ljava/lang/Boolean;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsSectionAsin;->wasComixBadgeShown:Ljava/lang/Boolean;

    iget-object v1, p1, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsSectionAsin;->wasComixBadgeShown:Ljava/lang/Boolean;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsSectionAsin;->lastAccessed:Ljava/util/Date;

    iget-object p1, p1, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsSectionAsin;->lastAccessed:Ljava/util/Date;

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public final getBookType()Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsBookType;
    .locals 1

    .line 25
    iget-object v0, p0, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsSectionAsin;->bookType:Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsBookType;

    return-object v0
.end method

.method public final getFileSize()Ljava/lang/Integer;
    .locals 1

    .line 24
    iget-object v0, p0, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsSectionAsin;->fileSize:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getHasImage()Ljava/lang/Boolean;
    .locals 1

    .line 15
    iget-object v0, p0, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsSectionAsin;->hasImage:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final getItemPosition()I
    .locals 1

    .line 13
    iget v0, p0, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsSectionAsin;->itemPosition:I

    return v0
.end method

.method public final getItemValue()Ljava/lang/String;
    .locals 1

    .line 12
    iget-object v0, p0, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsSectionAsin;->itemValue:Ljava/lang/String;

    return-object v0
.end method

.method public final getLastAccessed()Ljava/util/Date;
    .locals 1

    .line 28
    iget-object v0, p0, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsSectionAsin;->lastAccessed:Ljava/util/Date;

    return-object v0
.end method

.method public final getPrice()Ljava/lang/Long;
    .locals 1

    .line 20
    iget-object v0, p0, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsSectionAsin;->price:Ljava/lang/Long;

    return-object v0
.end method

.method public final getReadProgress()Ljava/lang/Integer;
    .locals 1

    .line 22
    iget-object v0, p0, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsSectionAsin;->readProgress:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getReviewStars()Ljava/lang/Double;
    .locals 1

    .line 18
    iget-object v0, p0, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsSectionAsin;->reviewStars:Ljava/lang/Double;

    return-object v0
.end method

.method public final getSearchId()Ljava/util/UUID;
    .locals 1

    .line 10
    iget-object v0, p0, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsSectionAsin;->searchId:Ljava/util/UUID;

    return-object v0
.end method

.method public final getSearchSessionId()Ljava/util/UUID;
    .locals 1

    .line 11
    iget-object v0, p0, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsSectionAsin;->searchSessionId:Ljava/util/UUID;

    return-object v0
.end method

.method public final getSectionName()Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsSection$SectionName;
    .locals 1

    .line 14
    iget-object v0, p0, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsSectionAsin;->sectionName:Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsSection$SectionName;

    return-object v0
.end method

.method public final getTotalReview()Ljava/lang/Integer;
    .locals 1

    .line 19
    iget-object v0, p0, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsSectionAsin;->totalReview:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getWasAvailable()Ljava/lang/Boolean;
    .locals 1

    .line 21
    iget-object v0, p0, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsSectionAsin;->wasAvailable:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final getWasComixBadgeShown()Ljava/lang/Boolean;
    .locals 1

    .line 27
    iget-object v0, p0, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsSectionAsin;->wasComixBadgeShown:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final getWasDownloaded()Ljava/lang/Boolean;
    .locals 1

    .line 23
    iget-object v0, p0, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsSectionAsin;->wasDownloaded:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final getWasKindleUnlimitedBadgeShown()Ljava/lang/Boolean;
    .locals 1

    .line 17
    iget-object v0, p0, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsSectionAsin;->wasKindleUnlimitedBadgeShown:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final getWasPrimeBadgeShown()Ljava/lang/Boolean;
    .locals 1

    .line 16
    iget-object v0, p0, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsSectionAsin;->wasPrimeBadgeShown:Ljava/lang/Boolean;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsSectionAsin;->searchId:Ljava/util/UUID;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsSectionAsin;->searchSessionId:Ljava/util/UUID;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsSectionAsin;->itemValue:Ljava/lang/String;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_2

    :cond_2
    const/4 v2, 0x0

    :goto_2
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsSectionAsin;->itemPosition:I

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsSectionAsin;->sectionName:Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsSection$SectionName;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_3

    :cond_3
    const/4 v2, 0x0

    :goto_3
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsSectionAsin;->hasImage:Ljava/lang/Boolean;

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_4

    :cond_4
    const/4 v2, 0x0

    :goto_4
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsSectionAsin;->wasPrimeBadgeShown:Ljava/lang/Boolean;

    if-eqz v2, :cond_5

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_5

    :cond_5
    const/4 v2, 0x0

    :goto_5
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsSectionAsin;->wasKindleUnlimitedBadgeShown:Ljava/lang/Boolean;

    if-eqz v2, :cond_6

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_6

    :cond_6
    const/4 v2, 0x0

    :goto_6
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsSectionAsin;->reviewStars:Ljava/lang/Double;

    if-eqz v2, :cond_7

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_7

    :cond_7
    const/4 v2, 0x0

    :goto_7
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsSectionAsin;->totalReview:Ljava/lang/Integer;

    if-eqz v2, :cond_8

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_8

    :cond_8
    const/4 v2, 0x0

    :goto_8
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsSectionAsin;->price:Ljava/lang/Long;

    if-eqz v2, :cond_9

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_9

    :cond_9
    const/4 v2, 0x0

    :goto_9
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsSectionAsin;->wasAvailable:Ljava/lang/Boolean;

    if-eqz v2, :cond_a

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_a

    :cond_a
    const/4 v2, 0x0

    :goto_a
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsSectionAsin;->readProgress:Ljava/lang/Integer;

    if-eqz v2, :cond_b

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_b

    :cond_b
    const/4 v2, 0x0

    :goto_b
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsSectionAsin;->wasDownloaded:Ljava/lang/Boolean;

    if-eqz v2, :cond_c

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_c

    :cond_c
    const/4 v2, 0x0

    :goto_c
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsSectionAsin;->fileSize:Ljava/lang/Integer;

    if-eqz v2, :cond_d

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_d

    :cond_d
    const/4 v2, 0x0

    :goto_d
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsSectionAsin;->bookType:Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsBookType;

    if-eqz v2, :cond_e

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_e

    :cond_e
    const/4 v2, 0x0

    :goto_e
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsSectionAsin;->isSeries:Ljava/lang/Boolean;

    if-eqz v2, :cond_f

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_f

    :cond_f
    const/4 v2, 0x0

    :goto_f
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsSectionAsin;->wasComixBadgeShown:Ljava/lang/Boolean;

    if-eqz v2, :cond_10

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_10

    :cond_10
    const/4 v2, 0x0

    :goto_10
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsSectionAsin;->lastAccessed:Ljava/util/Date;

    if-eqz v2, :cond_11

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :cond_11
    add-int/2addr v0, v1

    return v0
.end method

.method public final isSeries()Ljava/lang/Boolean;
    .locals 1

    .line 26
    iget-object v0, p0, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsSectionAsin;->isSeries:Ljava/lang/Boolean;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SearchAttemptMetricsSectionAsin(searchId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsSectionAsin;->searchId:Ljava/util/UUID;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", searchSessionId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsSectionAsin;->searchSessionId:Ljava/util/UUID;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", itemValue="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsSectionAsin;->itemValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", itemPosition="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsSectionAsin;->itemPosition:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", sectionName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsSectionAsin;->sectionName:Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsSection$SectionName;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", hasImage="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsSectionAsin;->hasImage:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", wasPrimeBadgeShown="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsSectionAsin;->wasPrimeBadgeShown:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", wasKindleUnlimitedBadgeShown="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsSectionAsin;->wasKindleUnlimitedBadgeShown:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", reviewStars="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsSectionAsin;->reviewStars:Ljava/lang/Double;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", totalReview="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsSectionAsin;->totalReview:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", price="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsSectionAsin;->price:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", wasAvailable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsSectionAsin;->wasAvailable:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", readProgress="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsSectionAsin;->readProgress:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", wasDownloaded="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsSectionAsin;->wasDownloaded:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", fileSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsSectionAsin;->fileSize:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", bookType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsSectionAsin;->bookType:Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsBookType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", isSeries="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsSectionAsin;->isSeries:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", wasComixBadgeShown="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsSectionAsin;->wasComixBadgeShown:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", lastAccessed="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsSectionAsin;->lastAccessed:Ljava/util/Date;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
