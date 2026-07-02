.class synthetic Lcom/amazon/kindle/content/dao/LibraryContentDAO$3;
.super Ljava/lang/Object;
.source "LibraryContentDAO.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kindle/content/dao/LibraryContentDAO;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$amazon$kindle$content$ContentMetadataField:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 828
    invoke-static {}, Lcom/amazon/kindle/content/ContentMetadataField;->values()[Lcom/amazon/kindle/content/ContentMetadataField;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/amazon/kindle/content/dao/LibraryContentDAO$3;->$SwitchMap$com$amazon$kindle$content$ContentMetadataField:[I

    :try_start_0
    sget-object v1, Lcom/amazon/kindle/content/ContentMetadataField;->ARCHIVABLE:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lcom/amazon/kindle/content/dao/LibraryContentDAO$3;->$SwitchMap$com$amazon$kindle$content$ContentMetadataField:[I

    sget-object v1, Lcom/amazon/kindle/content/ContentMetadataField;->HAS_READ_ALONG:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :try_start_2
    sget-object v0, Lcom/amazon/kindle/content/dao/LibraryContentDAO$3;->$SwitchMap$com$amazon$kindle$content$ContentMetadataField:[I

    sget-object v1, Lcom/amazon/kindle/content/ContentMetadataField;->KEPT:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    :try_start_3
    sget-object v0, Lcom/amazon/kindle/content/dao/LibraryContentDAO$3;->$SwitchMap$com$amazon$kindle$content$ContentMetadataField:[I

    sget-object v1, Lcom/amazon/kindle/content/ContentMetadataField;->DOWNLOADING_FROM_REMOTE_TODO:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    :try_start_4
    sget-object v0, Lcom/amazon/kindle/content/dao/LibraryContentDAO$3;->$SwitchMap$com$amazon$kindle$content$ContentMetadataField:[I

    sget-object v1, Lcom/amazon/kindle/content/ContentMetadataField;->HAS_XRAY:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    :catch_4
    :try_start_5
    sget-object v0, Lcom/amazon/kindle/content/dao/LibraryContentDAO$3;->$SwitchMap$com$amazon$kindle$content$ContentMetadataField:[I

    sget-object v1, Lcom/amazon/kindle/content/ContentMetadataField;->ERROR_DISPLAY_STATUS_CDE:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_5

    :catch_5
    :try_start_6
    sget-object v0, Lcom/amazon/kindle/content/dao/LibraryContentDAO$3;->$SwitchMap$com$amazon$kindle$content$ContentMetadataField:[I

    sget-object v1, Lcom/amazon/kindle/content/ContentMetadataField;->HAS_MULTIMEDIA_CONTENT:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_6

    :catch_6
    :try_start_7
    sget-object v0, Lcom/amazon/kindle/content/dao/LibraryContentDAO$3;->$SwitchMap$com$amazon$kindle$content$ContentMetadataField:[I

    sget-object v1, Lcom/amazon/kindle/content/ContentMetadataField;->ERROR:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_7

    :catch_7
    :try_start_8
    sget-object v0, Lcom/amazon/kindle/content/dao/LibraryContentDAO$3;->$SwitchMap$com$amazon$kindle$content$ContentMetadataField:[I

    sget-object v1, Lcom/amazon/kindle/content/ContentMetadataField;->TITLE:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_8

    :catch_8
    :try_start_9
    sget-object v0, Lcom/amazon/kindle/content/dao/LibraryContentDAO$3;->$SwitchMap$com$amazon$kindle$content$ContentMetadataField:[I

    sget-object v1, Lcom/amazon/kindle/content/ContentMetadataField;->STATE:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0xa

    aput v2, v0, v1
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_9

    :catch_9
    :try_start_a
    sget-object v0, Lcom/amazon/kindle/content/dao/LibraryContentDAO$3;->$SwitchMap$com$amazon$kindle$content$ContentMetadataField:[I

    sget-object v1, Lcom/amazon/kindle/content/ContentMetadataField;->TYPE:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0xb

    aput v2, v0, v1
    :try_end_a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_a} :catch_a

    :catch_a
    :try_start_b
    sget-object v0, Lcom/amazon/kindle/content/dao/LibraryContentDAO$3;->$SwitchMap$com$amazon$kindle$content$ContentMetadataField:[I

    sget-object v1, Lcom/amazon/kindle/content/ContentMetadataField;->PARENT_ASIN:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0xc

    aput v2, v0, v1
    :try_end_b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b .. :try_end_b} :catch_b

    :catch_b
    :try_start_c
    sget-object v0, Lcom/amazon/kindle/content/dao/LibraryContentDAO$3;->$SwitchMap$com$amazon$kindle$content$ContentMetadataField:[I

    sget-object v1, Lcom/amazon/kindle/content/ContentMetadataField;->ORIGIN_TYPE:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0xd

    aput v2, v0, v1
    :try_end_c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c .. :try_end_c} :catch_c

    :catch_c
    :try_start_d
    sget-object v0, Lcom/amazon/kindle/content/dao/LibraryContentDAO$3;->$SwitchMap$com$amazon$kindle$content$ContentMetadataField:[I

    sget-object v1, Lcom/amazon/kindle/content/ContentMetadataField;->SHARE_ORIGIN_ID:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0xe

    aput v2, v0, v1
    :try_end_d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_d .. :try_end_d} :catch_d

    :catch_d
    :try_start_e
    sget-object v0, Lcom/amazon/kindle/content/dao/LibraryContentDAO$3;->$SwitchMap$com$amazon$kindle$content$ContentMetadataField:[I

    sget-object v1, Lcom/amazon/kindle/content/ContentMetadataField;->AUTHOR:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0xf

    aput v2, v0, v1
    :try_end_e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e .. :try_end_e} :catch_e

    :catch_e
    :try_start_f
    sget-object v0, Lcom/amazon/kindle/content/dao/LibraryContentDAO$3;->$SwitchMap$com$amazon$kindle$content$ContentMetadataField:[I

    sget-object v1, Lcom/amazon/kindle/content/ContentMetadataField;->PUBLISHER:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x10

    aput v2, v0, v1
    :try_end_f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_f .. :try_end_f} :catch_f

    :catch_f
    :try_start_10
    sget-object v0, Lcom/amazon/kindle/content/dao/LibraryContentDAO$3;->$SwitchMap$com$amazon$kindle$content$ContentMetadataField:[I

    sget-object v1, Lcom/amazon/kindle/content/ContentMetadataField;->ERROR_MESSAGE:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x11

    aput v2, v0, v1
    :try_end_10
    .catch Ljava/lang/NoSuchFieldError; {:try_start_10 .. :try_end_10} :catch_10

    :catch_10
    :try_start_11
    sget-object v0, Lcom/amazon/kindle/content/dao/LibraryContentDAO$3;->$SwitchMap$com$amazon$kindle$content$ContentMetadataField:[I

    sget-object v1, Lcom/amazon/kindle/content/ContentMetadataField;->ERROR_TITLE:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x12

    aput v2, v0, v1
    :try_end_11
    .catch Ljava/lang/NoSuchFieldError; {:try_start_11 .. :try_end_11} :catch_11

    :catch_11
    :try_start_12
    sget-object v0, Lcom/amazon/kindle/content/dao/LibraryContentDAO$3;->$SwitchMap$com$amazon$kindle$content$ContentMetadataField:[I

    sget-object v1, Lcom/amazon/kindle/content/ContentMetadataField;->ERROR_LINK:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x13

    aput v2, v0, v1
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_12 .. :try_end_12} :catch_12

    :catch_12
    :try_start_13
    sget-object v0, Lcom/amazon/kindle/content/dao/LibraryContentDAO$3;->$SwitchMap$com$amazon$kindle$content$ContentMetadataField:[I

    sget-object v1, Lcom/amazon/kindle/content/ContentMetadataField;->ERROR_LINK_TITLE:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x14

    aput v2, v0, v1
    :try_end_13
    .catch Ljava/lang/NoSuchFieldError; {:try_start_13 .. :try_end_13} :catch_13

    :catch_13
    :try_start_14
    sget-object v0, Lcom/amazon/kindle/content/dao/LibraryContentDAO$3;->$SwitchMap$com$amazon$kindle$content$ContentMetadataField:[I

    sget-object v1, Lcom/amazon/kindle/content/ContentMetadataField;->ERROR_CODE_CDE:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x15

    aput v2, v0, v1
    :try_end_14
    .catch Ljava/lang/NoSuchFieldError; {:try_start_14 .. :try_end_14} :catch_14

    :catch_14
    :try_start_15
    sget-object v0, Lcom/amazon/kindle/content/dao/LibraryContentDAO$3;->$SwitchMap$com$amazon$kindle$content$ContentMetadataField:[I

    sget-object v1, Lcom/amazon/kindle/content/ContentMetadataField;->CONTENT_TYPE:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x16

    aput v2, v0, v1
    :try_end_15
    .catch Ljava/lang/NoSuchFieldError; {:try_start_15 .. :try_end_15} :catch_15

    :catch_15
    :try_start_16
    sget-object v0, Lcom/amazon/kindle/content/dao/LibraryContentDAO$3;->$SwitchMap$com$amazon$kindle$content$ContentMetadataField:[I

    sget-object v1, Lcom/amazon/kindle/content/ContentMetadataField;->CONTENT_TAGS:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x17

    aput v2, v0, v1
    :try_end_16
    .catch Ljava/lang/NoSuchFieldError; {:try_start_16 .. :try_end_16} :catch_16

    :catch_16
    :try_start_17
    sget-object v0, Lcom/amazon/kindle/content/dao/LibraryContentDAO$3;->$SwitchMap$com$amazon$kindle$content$ContentMetadataField:[I

    sget-object v1, Lcom/amazon/kindle/content/ContentMetadataField;->LANGUAGE:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x18

    aput v2, v0, v1
    :try_end_17
    .catch Ljava/lang/NoSuchFieldError; {:try_start_17 .. :try_end_17} :catch_17

    :catch_17
    :try_start_18
    sget-object v0, Lcom/amazon/kindle/content/dao/LibraryContentDAO$3;->$SwitchMap$com$amazon$kindle$content$ContentMetadataField:[I

    sget-object v1, Lcom/amazon/kindle/content/ContentMetadataField;->DICTIONARY_TYPE:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x19

    aput v2, v0, v1
    :try_end_18
    .catch Ljava/lang/NoSuchFieldError; {:try_start_18 .. :try_end_18} :catch_18

    :catch_18
    :try_start_19
    sget-object v0, Lcom/amazon/kindle/content/dao/LibraryContentDAO$3;->$SwitchMap$com$amazon$kindle$content$ContentMetadataField:[I

    sget-object v1, Lcom/amazon/kindle/content/ContentMetadataField;->PUBLICATION_DATE:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x1a

    aput v2, v0, v1
    :try_end_19
    .catch Ljava/lang/NoSuchFieldError; {:try_start_19 .. :try_end_19} :catch_19

    :catch_19
    :try_start_1a
    sget-object v0, Lcom/amazon/kindle/content/dao/LibraryContentDAO$3;->$SwitchMap$com$amazon$kindle$content$ContentMetadataField:[I

    sget-object v1, Lcom/amazon/kindle/content/ContentMetadataField;->HAS_LOADED_COVER:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x1b

    aput v2, v0, v1
    :try_end_1a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1a .. :try_end_1a} :catch_1a

    :catch_1a
    :try_start_1b
    sget-object v0, Lcom/amazon/kindle/content/dao/LibraryContentDAO$3;->$SwitchMap$com$amazon$kindle$content$ContentMetadataField:[I

    sget-object v1, Lcom/amazon/kindle/content/ContentMetadataField;->IS_COMIC:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x1c

    aput v2, v0, v1
    :try_end_1b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1b .. :try_end_1b} :catch_1b

    :catch_1b
    :try_start_1c
    sget-object v0, Lcom/amazon/kindle/content/dao/LibraryContentDAO$3;->$SwitchMap$com$amazon$kindle$content$ContentMetadataField:[I

    sget-object v1, Lcom/amazon/kindle/content/ContentMetadataField;->IS_FALKOR_EPISODE:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x1d

    aput v2, v0, v1
    :try_end_1c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1c .. :try_end_1c} :catch_1c

    :catch_1c
    :try_start_1d
    sget-object v0, Lcom/amazon/kindle/content/dao/LibraryContentDAO$3;->$SwitchMap$com$amazon$kindle$content$ContentMetadataField:[I

    sget-object v1, Lcom/amazon/kindle/content/ContentMetadataField;->READ_STATE:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x1e

    aput v2, v0, v1
    :try_end_1d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1d .. :try_end_1d} :catch_1d

    :catch_1d
    :try_start_1e
    sget-object v0, Lcom/amazon/kindle/content/dao/LibraryContentDAO$3;->$SwitchMap$com$amazon$kindle$content$ContentMetadataField:[I

    sget-object v1, Lcom/amazon/kindle/content/ContentMetadataField;->READ_STATE_ORIGIN:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x1f

    aput v2, v0, v1
    :try_end_1e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1e .. :try_end_1e} :catch_1e

    :catch_1e
    :try_start_1f
    sget-object v0, Lcom/amazon/kindle/content/dao/LibraryContentDAO$3;->$SwitchMap$com$amazon$kindle$content$ContentMetadataField:[I

    sget-object v1, Lcom/amazon/kindle/content/ContentMetadataField;->WATERMARK:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x20

    aput v2, v0, v1
    :try_end_1f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1f .. :try_end_1f} :catch_1f

    :catch_1f
    :try_start_20
    sget-object v0, Lcom/amazon/kindle/content/dao/LibraryContentDAO$3;->$SwitchMap$com$amazon$kindle$content$ContentMetadataField:[I

    sget-object v1, Lcom/amazon/kindle/content/ContentMetadataField;->GUID:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x21

    aput v2, v0, v1
    :try_end_20
    .catch Ljava/lang/NoSuchFieldError; {:try_start_20 .. :try_end_20} :catch_20

    :catch_20
    :try_start_21
    sget-object v0, Lcom/amazon/kindle/content/dao/LibraryContentDAO$3;->$SwitchMap$com$amazon$kindle$content$ContentMetadataField:[I

    sget-object v1, Lcom/amazon/kindle/content/ContentMetadataField;->FILE_PATH:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x22

    aput v2, v0, v1
    :try_end_21
    .catch Ljava/lang/NoSuchFieldError; {:try_start_21 .. :try_end_21} :catch_21

    :catch_21
    :try_start_22
    sget-object v0, Lcom/amazon/kindle/content/dao/LibraryContentDAO$3;->$SwitchMap$com$amazon$kindle$content$ContentMetadataField:[I

    sget-object v1, Lcom/amazon/kindle/content/ContentMetadataField;->LAST_MODIFIED:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x23

    aput v2, v0, v1
    :try_end_22
    .catch Ljava/lang/NoSuchFieldError; {:try_start_22 .. :try_end_22} :catch_22

    :catch_22
    :try_start_23
    sget-object v0, Lcom/amazon/kindle/content/dao/LibraryContentDAO$3;->$SwitchMap$com$amazon$kindle$content$ContentMetadataField:[I

    sget-object v1, Lcom/amazon/kindle/content/ContentMetadataField;->FILE_SIZE:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x24

    aput v2, v0, v1
    :try_end_23
    .catch Ljava/lang/NoSuchFieldError; {:try_start_23 .. :try_end_23} :catch_23

    :catch_23
    :try_start_24
    sget-object v0, Lcom/amazon/kindle/content/dao/LibraryContentDAO$3;->$SwitchMap$com$amazon$kindle$content$ContentMetadataField:[I

    sget-object v1, Lcom/amazon/kindle/content/ContentMetadataField;->ENCRYPTED:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x25

    aput v2, v0, v1
    :try_end_24
    .catch Ljava/lang/NoSuchFieldError; {:try_start_24 .. :try_end_24} :catch_24

    :catch_24
    :try_start_25
    sget-object v0, Lcom/amazon/kindle/content/dao/LibraryContentDAO$3;->$SwitchMap$com$amazon$kindle$content$ContentMetadataField:[I

    sget-object v1, Lcom/amazon/kindle/content/ContentMetadataField;->OWNERSHIP_TYPE:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x26

    aput v2, v0, v1
    :try_end_25
    .catch Ljava/lang/NoSuchFieldError; {:try_start_25 .. :try_end_25} :catch_25

    :catch_25
    :try_start_26
    sget-object v0, Lcom/amazon/kindle/content/dao/LibraryContentDAO$3;->$SwitchMap$com$amazon$kindle$content$ContentMetadataField:[I

    sget-object v1, Lcom/amazon/kindle/content/ContentMetadataField;->LPR:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x27

    aput v2, v0, v1
    :try_end_26
    .catch Ljava/lang/NoSuchFieldError; {:try_start_26 .. :try_end_26} :catch_26

    :catch_26
    :try_start_27
    sget-object v0, Lcom/amazon/kindle/content/dao/LibraryContentDAO$3;->$SwitchMap$com$amazon$kindle$content$ContentMetadataField:[I

    sget-object v1, Lcom/amazon/kindle/content/ContentMetadataField;->FPR:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x28

    aput v2, v0, v1
    :try_end_27
    .catch Ljava/lang/NoSuchFieldError; {:try_start_27 .. :try_end_27} :catch_27

    :catch_27
    :try_start_28
    sget-object v0, Lcom/amazon/kindle/content/dao/LibraryContentDAO$3;->$SwitchMap$com$amazon$kindle$content$ContentMetadataField:[I

    sget-object v1, Lcom/amazon/kindle/content/ContentMetadataField;->CRP:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x29

    aput v2, v0, v1
    :try_end_28
    .catch Ljava/lang/NoSuchFieldError; {:try_start_28 .. :try_end_28} :catch_28

    :catch_28
    :try_start_29
    sget-object v0, Lcom/amazon/kindle/content/dao/LibraryContentDAO$3;->$SwitchMap$com$amazon$kindle$content$ContentMetadataField:[I

    sget-object v1, Lcom/amazon/kindle/content/ContentMetadataField;->MRPR:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x2a

    aput v2, v0, v1
    :try_end_29
    .catch Ljava/lang/NoSuchFieldError; {:try_start_29 .. :try_end_29} :catch_29

    :catch_29
    :try_start_2a
    sget-object v0, Lcom/amazon/kindle/content/dao/LibraryContentDAO$3;->$SwitchMap$com$amazon$kindle$content$ContentMetadataField:[I

    sget-object v1, Lcom/amazon/kindle/content/ContentMetadataField;->WAYPOINTS:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x2b

    aput v2, v0, v1
    :try_end_2a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2a .. :try_end_2a} :catch_2a

    :catch_2a
    :try_start_2b
    sget-object v0, Lcom/amazon/kindle/content/dao/LibraryContentDAO$3;->$SwitchMap$com$amazon$kindle$content$ContentMetadataField:[I

    sget-object v1, Lcom/amazon/kindle/content/ContentMetadataField;->READING_PROGRESS:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x2c

    aput v2, v0, v1
    :try_end_2b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2b .. :try_end_2b} :catch_2b

    :catch_2b
    :try_start_2c
    sget-object v0, Lcom/amazon/kindle/content/dao/LibraryContentDAO$3;->$SwitchMap$com$amazon$kindle$content$ContentMetadataField:[I

    sget-object v1, Lcom/amazon/kindle/content/ContentMetadataField;->LAST_ACCESSED:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x2d

    aput v2, v0, v1
    :try_end_2c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2c .. :try_end_2c} :catch_2c

    :catch_2c
    :try_start_2d
    sget-object v0, Lcom/amazon/kindle/content/dao/LibraryContentDAO$3;->$SwitchMap$com$amazon$kindle$content$ContentMetadataField:[I

    sget-object v1, Lcom/amazon/kindle/content/ContentMetadataField;->MLT_LASTUPDATED:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x2e

    aput v2, v0, v1
    :try_end_2d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2d .. :try_end_2d} :catch_2d

    :catch_2d
    :try_start_2e
    sget-object v0, Lcom/amazon/kindle/content/dao/LibraryContentDAO$3;->$SwitchMap$com$amazon$kindle$content$ContentMetadataField:[I

    sget-object v1, Lcom/amazon/kindle/content/ContentMetadataField;->IS_IN_CAROUSEL:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x2f

    aput v2, v0, v1
    :try_end_2e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2e .. :try_end_2e} :catch_2e

    :catch_2e
    :try_start_2f
    sget-object v0, Lcom/amazon/kindle/content/dao/LibraryContentDAO$3;->$SwitchMap$com$amazon$kindle$content$ContentMetadataField:[I

    sget-object v1, Lcom/amazon/kindle/content/ContentMetadataField;->CLIPPING_BALANCE:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x30

    aput v2, v0, v1
    :try_end_2f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2f .. :try_end_2f} :catch_2f

    :catch_2f
    :try_start_30
    sget-object v0, Lcom/amazon/kindle/content/dao/LibraryContentDAO$3;->$SwitchMap$com$amazon$kindle$content$ContentMetadataField:[I

    sget-object v1, Lcom/amazon/kindle/content/ContentMetadataField;->TITLE_PRONUNCIATION:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x31

    aput v2, v0, v1
    :try_end_30
    .catch Ljava/lang/NoSuchFieldError; {:try_start_30 .. :try_end_30} :catch_30

    :catch_30
    :try_start_31
    sget-object v0, Lcom/amazon/kindle/content/dao/LibraryContentDAO$3;->$SwitchMap$com$amazon$kindle$content$ContentMetadataField:[I

    sget-object v1, Lcom/amazon/kindle/content/ContentMetadataField;->AUTHOR_PRONUNCIATION:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x32

    aput v2, v0, v1
    :try_end_31
    .catch Ljava/lang/NoSuchFieldError; {:try_start_31 .. :try_end_31} :catch_31

    :catch_31
    :try_start_32
    sget-object v0, Lcom/amazon/kindle/content/dao/LibraryContentDAO$3;->$SwitchMap$com$amazon$kindle$content$ContentMetadataField:[I

    sget-object v1, Lcom/amazon/kindle/content/ContentMetadataField;->SORTABLE_TITLE:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x33

    aput v2, v0, v1
    :try_end_32
    .catch Ljava/lang/NoSuchFieldError; {:try_start_32 .. :try_end_32} :catch_32

    :catch_32
    :try_start_33
    sget-object v0, Lcom/amazon/kindle/content/dao/LibraryContentDAO$3;->$SwitchMap$com$amazon$kindle$content$ContentMetadataField:[I

    sget-object v1, Lcom/amazon/kindle/content/ContentMetadataField;->SORTABLE_AUTHOR:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x34

    aput v2, v0, v1
    :try_end_33
    .catch Ljava/lang/NoSuchFieldError; {:try_start_33 .. :try_end_33} :catch_33

    :catch_33
    :try_start_34
    sget-object v0, Lcom/amazon/kindle/content/dao/LibraryContentDAO$3;->$SwitchMap$com$amazon$kindle$content$ContentMetadataField:[I

    sget-object v1, Lcom/amazon/kindle/content/ContentMetadataField;->DELIVERY_DATE:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x35

    aput v2, v0, v1
    :try_end_34
    .catch Ljava/lang/NoSuchFieldError; {:try_start_34 .. :try_end_34} :catch_34

    :catch_34
    :try_start_35
    sget-object v0, Lcom/amazon/kindle/content/dao/LibraryContentDAO$3;->$SwitchMap$com$amazon$kindle$content$ContentMetadataField:[I

    sget-object v1, Lcom/amazon/kindle/content/ContentMetadataField;->IS_HIDDEN:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x36

    aput v2, v0, v1
    :try_end_35
    .catch Ljava/lang/NoSuchFieldError; {:try_start_35 .. :try_end_35} :catch_35

    :catch_35
    :try_start_36
    sget-object v0, Lcom/amazon/kindle/content/dao/LibraryContentDAO$3;->$SwitchMap$com$amazon$kindle$content$ContentMetadataField:[I

    sget-object v1, Lcom/amazon/kindle/content/ContentMetadataField;->USER_ID:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x37

    aput v2, v0, v1
    :try_end_36
    .catch Ljava/lang/NoSuchFieldError; {:try_start_36 .. :try_end_36} :catch_36

    :catch_36
    :try_start_37
    sget-object v0, Lcom/amazon/kindle/content/dao/LibraryContentDAO$3;->$SwitchMap$com$amazon$kindle$content$ContentMetadataField:[I

    sget-object v1, Lcom/amazon/kindle/content/ContentMetadataField;->CAMPAIGN:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x38

    aput v2, v0, v1
    :try_end_37
    .catch Ljava/lang/NoSuchFieldError; {:try_start_37 .. :try_end_37} :catch_37

    :catch_37
    :try_start_38
    sget-object v0, Lcom/amazon/kindle/content/dao/LibraryContentDAO$3;->$SwitchMap$com$amazon$kindle$content$ContentMetadataField:[I

    sget-object v1, Lcom/amazon/kindle/content/ContentMetadataField;->ORDER_RANK:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x39

    aput v2, v0, v1
    :try_end_38
    .catch Ljava/lang/NoSuchFieldError; {:try_start_38 .. :try_end_38} :catch_38

    :catch_38
    :try_start_39
    sget-object v0, Lcom/amazon/kindle/content/dao/LibraryContentDAO$3;->$SwitchMap$com$amazon$kindle$content$ContentMetadataField:[I

    sget-object v1, Lcom/amazon/kindle/content/ContentMetadataField;->EXTENDED_METADATA:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x3a

    aput v2, v0, v1
    :try_end_39
    .catch Ljava/lang/NoSuchFieldError; {:try_start_39 .. :try_end_39} :catch_39

    :catch_39
    :try_start_3a
    sget-object v0, Lcom/amazon/kindle/content/dao/LibraryContentDAO$3;->$SwitchMap$com$amazon$kindle$content$ContentMetadataField:[I

    sget-object v1, Lcom/amazon/kindle/content/ContentMetadataField;->TITLE_DETAILS_JSON:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x3b

    aput v2, v0, v1
    :try_end_3a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3a .. :try_end_3a} :catch_3a

    :catch_3a
    return-void
.end method
