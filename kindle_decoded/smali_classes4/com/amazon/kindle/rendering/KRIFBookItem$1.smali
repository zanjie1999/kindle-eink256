.class synthetic Lcom/amazon/kindle/rendering/KRIFBookItem$1;
.super Ljava/lang/Object;
.source "KRIFBookItem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kindle/rendering/KRIFBookItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$amazon$kindle$krx$reader$IBookNavigator$BookLandmarkType:[I

.field static final synthetic $SwitchMap$com$amazon$krf$platform$KRFBookInfo$BookOrientationLock:[I

.field static final synthetic $SwitchMap$com$amazon$krf$platform$KRFBookInfo$IntendedAudience:[I

.field static final synthetic $SwitchMap$com$amazon$krf$platform$KRFBookInfo$ReadingDirection:[I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1598
    invoke-static {}, Lcom/amazon/krf/platform/KRFBookInfo$IntendedAudience;->values()[Lcom/amazon/krf/platform/KRFBookInfo$IntendedAudience;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/amazon/kindle/rendering/KRIFBookItem$1;->$SwitchMap$com$amazon$krf$platform$KRFBookInfo$IntendedAudience:[I

    const/4 v1, 0x1

    :try_start_0
    sget-object v2, Lcom/amazon/krf/platform/KRFBookInfo$IntendedAudience;->kIntendedAudienceChildren:Lcom/amazon/krf/platform/KRFBookInfo$IntendedAudience;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aput v1, v0, v2
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    .line 1564
    :catch_0
    invoke-static {}, Lcom/amazon/kindle/krx/reader/IBookNavigator$BookLandmarkType;->values()[Lcom/amazon/kindle/krx/reader/IBookNavigator$BookLandmarkType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/amazon/kindle/rendering/KRIFBookItem$1;->$SwitchMap$com$amazon$kindle$krx$reader$IBookNavigator$BookLandmarkType:[I

    :try_start_1
    sget-object v2, Lcom/amazon/kindle/krx/reader/IBookNavigator$BookLandmarkType;->COVER_PAGE:Lcom/amazon/kindle/krx/reader/IBookNavigator$BookLandmarkType;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aput v1, v0, v2
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    const/4 v0, 0x2

    :try_start_2
    sget-object v2, Lcom/amazon/kindle/rendering/KRIFBookItem$1;->$SwitchMap$com$amazon$kindle$krx$reader$IBookNavigator$BookLandmarkType:[I

    sget-object v3, Lcom/amazon/kindle/krx/reader/IBookNavigator$BookLandmarkType;->SRL:Lcom/amazon/kindle/krx/reader/IBookNavigator$BookLandmarkType;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aput v0, v2, v3
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    const/4 v2, 0x3

    :try_start_3
    sget-object v3, Lcom/amazon/kindle/rendering/KRIFBookItem$1;->$SwitchMap$com$amazon$kindle$krx$reader$IBookNavigator$BookLandmarkType:[I

    sget-object v4, Lcom/amazon/kindle/krx/reader/IBookNavigator$BookLandmarkType;->TOC:Lcom/amazon/kindle/krx/reader/IBookNavigator$BookLandmarkType;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aput v2, v3, v4
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    .line 1404
    :catch_3
    invoke-static {}, Lcom/amazon/krf/platform/KRFBookInfo$ReadingDirection;->values()[Lcom/amazon/krf/platform/KRFBookInfo$ReadingDirection;

    move-result-object v3

    array-length v3, v3

    new-array v3, v3, [I

    sput-object v3, Lcom/amazon/kindle/rendering/KRIFBookItem$1;->$SwitchMap$com$amazon$krf$platform$KRFBookInfo$ReadingDirection:[I

    :try_start_4
    sget-object v4, Lcom/amazon/krf/platform/KRFBookInfo$ReadingDirection;->kReadingHorizontalLeftToRight:Lcom/amazon/krf/platform/KRFBookInfo$ReadingDirection;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aput v1, v3, v4
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    :catch_4
    :try_start_5
    sget-object v3, Lcom/amazon/kindle/rendering/KRIFBookItem$1;->$SwitchMap$com$amazon$krf$platform$KRFBookInfo$ReadingDirection:[I

    sget-object v4, Lcom/amazon/krf/platform/KRFBookInfo$ReadingDirection;->kReadingVerticalLeftToRight:Lcom/amazon/krf/platform/KRFBookInfo$ReadingDirection;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aput v0, v3, v4
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_5

    :catch_5
    :try_start_6
    sget-object v3, Lcom/amazon/kindle/rendering/KRIFBookItem$1;->$SwitchMap$com$amazon$krf$platform$KRFBookInfo$ReadingDirection:[I

    sget-object v4, Lcom/amazon/krf/platform/KRFBookInfo$ReadingDirection;->kReadingHorizontalRightToLeft:Lcom/amazon/krf/platform/KRFBookInfo$ReadingDirection;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aput v2, v3, v4
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_6

    :catch_6
    :try_start_7
    sget-object v2, Lcom/amazon/kindle/rendering/KRIFBookItem$1;->$SwitchMap$com$amazon$krf$platform$KRFBookInfo$ReadingDirection:[I

    sget-object v3, Lcom/amazon/krf/platform/KRFBookInfo$ReadingDirection;->kReadingVerticalRightToLeft:Lcom/amazon/krf/platform/KRFBookInfo$ReadingDirection;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    const/4 v4, 0x4

    aput v4, v2, v3
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_7

    .line 1388
    :catch_7
    invoke-static {}, Lcom/amazon/krf/platform/KRFBookInfo$BookOrientationLock;->values()[Lcom/amazon/krf/platform/KRFBookInfo$BookOrientationLock;

    move-result-object v2

    array-length v2, v2

    new-array v2, v2, [I

    sput-object v2, Lcom/amazon/kindle/rendering/KRIFBookItem$1;->$SwitchMap$com$amazon$krf$platform$KRFBookInfo$BookOrientationLock:[I

    :try_start_8
    sget-object v3, Lcom/amazon/krf/platform/KRFBookInfo$BookOrientationLock;->kBookOrientationLockLandscape:Lcom/amazon/krf/platform/KRFBookInfo$BookOrientationLock;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aput v1, v2, v3
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_8

    :catch_8
    :try_start_9
    sget-object v1, Lcom/amazon/kindle/rendering/KRIFBookItem$1;->$SwitchMap$com$amazon$krf$platform$KRFBookInfo$BookOrientationLock:[I

    sget-object v2, Lcom/amazon/krf/platform/KRFBookInfo$BookOrientationLock;->kBookOrientationLockPortait:Lcom/amazon/krf/platform/KRFBookInfo$BookOrientationLock;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aput v0, v1, v2
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_9

    :catch_9
    return-void
.end method
