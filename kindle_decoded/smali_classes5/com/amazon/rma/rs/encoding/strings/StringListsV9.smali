.class public Lcom/amazon/rma/rs/encoding/strings/StringListsV9;
.super Ljava/lang/Object;
.source "StringListsV9.java"


# static fields
.field public static final INSTANCE:Lcom/amazon/rma/rs/encoding/strings/StringLists;


# direct methods
.method static constructor <clinit>()V
    .locals 54

    .line 17
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "HeaderClose"

    const-string v2, "Scroll"

    const-string v3, "ClickedRecommendation"

    const-string v4, "OpenReview"

    const-string v5, "SubmitRating"

    const-string v6, "Share"

    const-string v7, "TriedAddToWishlist"

    const-string v8, "ClosedRecommendation"

    const-string v9, "DownloadSample"

    const-string v10, "AddToWishlist"

    const-string v11, "ClearRating"

    const-string v12, "EditReviewTitle"

    const-string v13, "EditReviewText"

    const-string v14, "SubmitReview"

    .line 18
    filled-new-array/range {v1 .. v14}, [Ljava/lang/String;

    move-result-object v1

    const-string v2, "actionID"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "EndActions"

    .line 34
    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    const-string v2, "auxContentType"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "Book"

    const-string v4, "Reading"

    const-string v5, "Background"

    const-string v6, "Chrome"

    const-string v7, "ViewOptions"

    const-string v8, "BrightnessSetting"

    const-string v9, "EndActions"

    const-string v10, "AnyActionsRateAndShareWidget"

    const-string v11, "AnyActionsAvailableWidgets"

    const-string v12, "AnyActionsBookGridWidget"

    const-string v13, "AnyActionsVerticalListLayout"

    const-string v14, "AnyActionsSingleRecWidget"

    const-string v15, "ReviewBook"

    const-string v16, "AnyActionsAlertView"

    const-string v17, "AnyActionsToast"

    const-string v18, "Keyboard"

    const-string v19, "AnyActionsShovelerWidget"

    .line 37
    filled-new-array/range {v3 .. v19}, [Ljava/lang/String;

    move-result-object v1

    const-string v2, "context"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "HasSidecar"

    const-string v4, "AllLayoutsRejected"

    const-string v5, "RatingSourceNoneFound"

    const-string v6, "ReviewSourceNoneFound"

    const-string v7, "MetricsTag"

    const-string v8, "DefaultLayout"

    const-string v9, "IsGoodreadsUser"

    const-string v10, "LayoutTag"

    const-string v11, "RefTagSuffix"

    const-string v12, "WidgetPlacement"

    const-string v13, "HasErl"

    const-string v14, "LaunchTime"

    const-string v15, "ShowingShare"

    const-string v16, "Rating"

    const-string v17, "DisplayedRateAndShareWidget"

    const-string v18, "DisplayedBookGridWidget"

    const-string v19, "DisplayedDefaultImage"

    const-string v20, "Index"

    const-string v21, "RecommendationCount"

    const-string v22, "DisplayedSingleRecWidget"

    const-string v23, "DisplayedShovelerWidget"

    const-string v24, "ShowingAddToWishlist"

    const-string v25, "ShowingDownloadSample"

    const-string v26, "ShowingBookCover"

    const-string v27, "RatingSourceStored"

    const-string v28, "IsCurrentBook"

    const-string v29, "ShowingPenName"

    const-string v30, "Error"

    const-string v31, "RatingSourcePublicSharedRating"

    const-string v32, "ReviewSourceStored"

    const-string v33, "OdotSuccess"

    const-string v34, "GetWishlistsSuccess"

    const-string v35, "WishlistCount"

    const-string v36, "ShareCancel"

    const-string v37, "AddToWishlistSuccess"

    const-string v38, "ShareSuccess"

    const-string v39, "AuthorizationFailed"

    const-string v40, "RatingSourceGoodreadsRating"

    const-string v41, "ReviewSourceCommunityReview"

    const-string v42, "ReviewLength"

    const-string v43, "ImageError"

    const-string v44, "ReviewSourceGoodreadsReview"

    .line 56
    filled-new-array/range {v3 .. v44}, [Ljava/lang/String;

    move-result-object v1

    const-string v2, "metadataKey"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "KindleEndActions.ratingSubmission"

    const-string v2, "CommunityReviews.submissions"

    .line 100
    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const-string v2, "metadataValue"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "Text"

    .line 104
    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "pointType"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "FontSize"

    const-string v5, "LineSpacing"

    const-string v6, "ColorMode"

    const-string v7, "Brightness"

    const-string v8, "ColumnCount"

    const-string v9, "MarginSize"

    const-string v10, "FontFace"

    .line 107
    filled-new-array/range {v4 .. v10}, [Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "settingID"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "White"

    const-string v5, "Georgia"

    const-string v6, "Black"

    const-string v7, "19.00"

    const-string v8, "16.00"

    const-string v9, "Sepia"

    const-string v10, "16.75"

    const-string v11, "24.00"

    const-string v12, "20.00"

    const-string v13, "22.00"

    const-string v14, "15.00"

    const-string v15, "26.00"

    const-string v16, "18.00"

    const-string v17, "17.00"

    const-string v18, "25.00"

    const-string v19, "21.00"

    const-string v20, "14.00"

    const-string v21, "12.00"

    const-string v22, "28.00"

    const-string v23, "13.00"

    const-string v24, "30.00"

    const-string v25, "Helvetica"

    const-string v26, "PMN Caecilia LT"

    const-string v27, "34.00"

    const-string v28, "35.00"

    const-string v29, "38.00"

    const-string v30, "Palatino"

    const-string v31, "10.00"

    const-string v32, "Baskerville"

    const-string v33, "42.00"

    const-string v34, "46.00"

    const-string v35, "50.00"

    const-string v36, "11.00"

    const-string v37, "45.00"

    const-string v38, "65.00"

    const-string v39, "Heiti SC"

    const-string v40, "85.00"

    const-string v41, "HiraMinProN-W3"

    const-string v42, "HiraKakuProN-W3"

    const-string v43, "Bookerly"

    const-string v44, "Songti SC"

    const-string v45, "Songti TC"

    const-string v46, "Heiti TC"

    const-string v47, "Baskerville-Bold"

    const-string v48, "PMN Caecilia LT-Bold"

    const-string v49, "Georgia-Bold"

    const-string v50, "Helvetica-Bold"

    const-string v51, "Palatino-Bold"

    const-string v52, "HiraKakuProN-W6"

    const-string v53, "HiraMinProN-W6"

    .line 116
    filled-new-array/range {v4 .. v53}, [Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "settingValue"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 168
    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "spanType"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 172
    new-instance v1, Lcom/amazon/rma/rs/encoding/strings/StringLists;

    const/16 v2, 0x9

    invoke-direct {v1, v2, v0}, Lcom/amazon/rma/rs/encoding/strings/StringLists;-><init>(ILjava/util/Map;)V

    sput-object v1, Lcom/amazon/rma/rs/encoding/strings/StringListsV9;->INSTANCE:Lcom/amazon/rma/rs/encoding/strings/StringLists;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
