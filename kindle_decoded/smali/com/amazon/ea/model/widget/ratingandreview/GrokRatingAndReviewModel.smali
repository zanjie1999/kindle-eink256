.class public Lcom/amazon/ea/model/widget/ratingandreview/GrokRatingAndReviewModel;
.super Lcom/amazon/ea/model/widget/ratingandreview/RatingAndReviewModel;
.source "GrokRatingAndReviewModel.java"


# instance fields
.field public final goodreadsReview:Lcom/amazon/ea/sidecar/def/data/GoodreadsReviewData;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/ea/sidecar/def/data/CustomerProfileData;Lcom/amazon/ea/sidecar/def/data/PersonalizationRatingData;Lcom/amazon/ea/sidecar/def/data/PublicSharedRatingData;Lcom/amazon/ea/sidecar/def/data/CommunityReviewData;Lcom/amazon/ea/sidecar/def/data/GoodreadsShelfData;Lcom/amazon/kindle/krx/content/IBook;Ljava/lang/String;JLcom/amazon/ea/sidecar/def/data/GoodreadsReviewData;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move-wide/from16 v11, p10

    move/from16 v13, p13

    move-object/from16 v14, p14

    move-object/from16 v15, p15

    move-object/from16 v16, p16

    const/4 v3, 0x0

    .line 26
    invoke-direct/range {v0 .. v16}, Lcom/amazon/ea/model/widget/ratingandreview/RatingAndReviewModel;-><init>(Ljava/lang/String;Ljava/lang/String;ZLcom/amazon/ea/sidecar/def/data/CustomerProfileData;Lcom/amazon/ea/sidecar/def/data/PersonalizationRatingData;Lcom/amazon/ea/sidecar/def/data/PublicSharedRatingData;Lcom/amazon/ea/sidecar/def/data/CommunityReviewData;Lcom/amazon/ea/sidecar/def/data/GoodreadsShelfData;Lcom/amazon/kindle/krx/content/IBook;Ljava/lang/String;JZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v1, p12

    .line 30
    iput-object v1, v0, Lcom/amazon/ea/model/widget/ratingandreview/GrokRatingAndReviewModel;->goodreadsReview:Lcom/amazon/ea/sidecar/def/data/GoodreadsReviewData;

    return-void
.end method
