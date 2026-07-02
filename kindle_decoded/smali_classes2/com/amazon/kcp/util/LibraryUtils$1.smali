.class synthetic Lcom/amazon/kcp/util/LibraryUtils$1;
.super Ljava/lang/Object;
.source "LibraryUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/util/LibraryUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$amazon$kcp$application$Marketplace:[I

.field static final synthetic $SwitchMap$com$amazon$kcp$library$models$BookType:[I

.field static final synthetic $SwitchMap$com$amazon$kcp$library$models$SeriesGroupType:[I

.field static final synthetic $SwitchMap$com$amazon$kindle$model$content$ContentState:[I


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .line 610
    invoke-static {}, Lcom/amazon/kcp/application/Marketplace;->values()[Lcom/amazon/kcp/application/Marketplace;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/amazon/kcp/util/LibraryUtils$1;->$SwitchMap$com$amazon$kcp$application$Marketplace:[I

    const/4 v1, 0x1

    :try_start_0
    sget-object v2, Lcom/amazon/kcp/application/Marketplace;->CN:Lcom/amazon/kcp/application/Marketplace;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aput v1, v0, v2
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 v0, 0x2

    :try_start_1
    sget-object v2, Lcom/amazon/kcp/util/LibraryUtils$1;->$SwitchMap$com$amazon$kcp$application$Marketplace:[I

    sget-object v3, Lcom/amazon/kcp/application/Marketplace;->FR:Lcom/amazon/kcp/application/Marketplace;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aput v0, v2, v3
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    const/4 v2, 0x3

    :try_start_2
    sget-object v3, Lcom/amazon/kcp/util/LibraryUtils$1;->$SwitchMap$com$amazon$kcp$application$Marketplace:[I

    sget-object v4, Lcom/amazon/kcp/application/Marketplace;->JP:Lcom/amazon/kcp/application/Marketplace;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aput v2, v3, v4
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    .line 489
    :catch_2
    invoke-static {}, Lcom/amazon/kcp/library/models/BookType;->values()[Lcom/amazon/kcp/library/models/BookType;

    move-result-object v3

    array-length v3, v3

    new-array v3, v3, [I

    sput-object v3, Lcom/amazon/kcp/util/LibraryUtils$1;->$SwitchMap$com$amazon$kcp$library$models$BookType:[I

    :try_start_3
    sget-object v4, Lcom/amazon/kcp/library/models/BookType;->BT_AUDIBLE_AUDIOBOOK:Lcom/amazon/kcp/library/models/BookType;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aput v1, v3, v4
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    :try_start_4
    sget-object v3, Lcom/amazon/kcp/util/LibraryUtils$1;->$SwitchMap$com$amazon$kcp$library$models$BookType:[I

    sget-object v4, Lcom/amazon/kcp/library/models/BookType;->BT_EBOOK:Lcom/amazon/kcp/library/models/BookType;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aput v0, v3, v4
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    :catch_4
    :try_start_5
    sget-object v3, Lcom/amazon/kcp/util/LibraryUtils$1;->$SwitchMap$com$amazon$kcp$library$models$BookType:[I

    sget-object v4, Lcom/amazon/kcp/library/models/BookType;->BT_EBOOK_MAGAZINE:Lcom/amazon/kcp/library/models/BookType;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aput v2, v3, v4
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_5

    :catch_5
    const/4 v3, 0x4

    :try_start_6
    sget-object v4, Lcom/amazon/kcp/util/LibraryUtils$1;->$SwitchMap$com$amazon$kcp$library$models$BookType:[I

    sget-object v5, Lcom/amazon/kcp/library/models/BookType;->BT_EBOOK_NEWSPAPER:Lcom/amazon/kcp/library/models/BookType;

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aput v3, v4, v5
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_6

    :catch_6
    const/4 v4, 0x5

    :try_start_7
    sget-object v5, Lcom/amazon/kcp/util/LibraryUtils$1;->$SwitchMap$com$amazon$kcp$library$models$BookType:[I

    sget-object v6, Lcom/amazon/kcp/library/models/BookType;->BT_EBOOK_PDOC:Lcom/amazon/kcp/library/models/BookType;

    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    aput v4, v5, v6
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_7

    :catch_7
    const/4 v5, 0x6

    :try_start_8
    sget-object v6, Lcom/amazon/kcp/util/LibraryUtils$1;->$SwitchMap$com$amazon$kcp$library$models$BookType:[I

    sget-object v7, Lcom/amazon/kcp/library/models/BookType;->BT_EBOOK_PSNL:Lcom/amazon/kcp/library/models/BookType;

    invoke-virtual {v7}, Ljava/lang/Enum;->ordinal()I

    move-result v7

    aput v5, v6, v7
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_8

    :catch_8
    const/4 v6, 0x7

    :try_start_9
    sget-object v7, Lcom/amazon/kcp/util/LibraryUtils$1;->$SwitchMap$com$amazon$kcp$library$models$BookType:[I

    sget-object v8, Lcom/amazon/kcp/library/models/BookType;->BT_EBOOK_SAMPLE:Lcom/amazon/kcp/library/models/BookType;

    invoke-virtual {v8}, Ljava/lang/Enum;->ordinal()I

    move-result v8

    aput v6, v7, v8
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_9

    :catch_9
    const/16 v7, 0x8

    :try_start_a
    sget-object v8, Lcom/amazon/kcp/util/LibraryUtils$1;->$SwitchMap$com$amazon$kcp$library$models$BookType:[I

    sget-object v9, Lcom/amazon/kcp/library/models/BookType;->BT_OFFICE_DOC:Lcom/amazon/kcp/library/models/BookType;

    invoke-virtual {v9}, Ljava/lang/Enum;->ordinal()I

    move-result v9

    aput v7, v8, v9
    :try_end_a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_a} :catch_a

    .line 309
    :catch_a
    invoke-static {}, Lcom/amazon/kcp/library/models/SeriesGroupType;->values()[Lcom/amazon/kcp/library/models/SeriesGroupType;

    move-result-object v8

    array-length v8, v8

    new-array v8, v8, [I

    sput-object v8, Lcom/amazon/kcp/util/LibraryUtils$1;->$SwitchMap$com$amazon$kcp$library$models$SeriesGroupType:[I

    :try_start_b
    sget-object v9, Lcom/amazon/kcp/library/models/SeriesGroupType;->VOLUME:Lcom/amazon/kcp/library/models/SeriesGroupType;

    invoke-virtual {v9}, Ljava/lang/Enum;->ordinal()I

    move-result v9

    aput v1, v8, v9
    :try_end_b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b .. :try_end_b} :catch_b

    :catch_b
    :try_start_c
    sget-object v8, Lcom/amazon/kcp/util/LibraryUtils$1;->$SwitchMap$com$amazon$kcp$library$models$SeriesGroupType:[I

    sget-object v9, Lcom/amazon/kcp/library/models/SeriesGroupType;->ISSUE:Lcom/amazon/kcp/library/models/SeriesGroupType;

    invoke-virtual {v9}, Ljava/lang/Enum;->ordinal()I

    move-result v9

    aput v0, v8, v9
    :try_end_c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c .. :try_end_c} :catch_c

    :catch_c
    :try_start_d
    sget-object v8, Lcom/amazon/kcp/util/LibraryUtils$1;->$SwitchMap$com$amazon$kcp$library$models$SeriesGroupType:[I

    sget-object v9, Lcom/amazon/kcp/library/models/SeriesGroupType;->OMNIBUS:Lcom/amazon/kcp/library/models/SeriesGroupType;

    invoke-virtual {v9}, Ljava/lang/Enum;->ordinal()I

    move-result v9

    aput v2, v8, v9
    :try_end_d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_d .. :try_end_d} :catch_d

    :catch_d
    :try_start_e
    sget-object v8, Lcom/amazon/kcp/util/LibraryUtils$1;->$SwitchMap$com$amazon$kcp$library$models$SeriesGroupType:[I

    sget-object v9, Lcom/amazon/kcp/library/models/SeriesGroupType;->NONE:Lcom/amazon/kcp/library/models/SeriesGroupType;

    invoke-virtual {v9}, Ljava/lang/Enum;->ordinal()I

    move-result v9

    aput v3, v8, v9
    :try_end_e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e .. :try_end_e} :catch_e

    .line 243
    :catch_e
    invoke-static {}, Lcom/amazon/kindle/model/content/ContentState;->values()[Lcom/amazon/kindle/model/content/ContentState;

    move-result-object v8

    array-length v8, v8

    new-array v8, v8, [I

    sput-object v8, Lcom/amazon/kcp/util/LibraryUtils$1;->$SwitchMap$com$amazon$kindle$model$content$ContentState:[I

    :try_start_f
    sget-object v9, Lcom/amazon/kindle/model/content/ContentState;->FAILED:Lcom/amazon/kindle/model/content/ContentState;

    invoke-virtual {v9}, Ljava/lang/Enum;->ordinal()I

    move-result v9

    aput v1, v8, v9
    :try_end_f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_f .. :try_end_f} :catch_f

    :catch_f
    :try_start_10
    sget-object v1, Lcom/amazon/kcp/util/LibraryUtils$1;->$SwitchMap$com$amazon$kindle$model$content$ContentState:[I

    sget-object v8, Lcom/amazon/kindle/model/content/ContentState;->FAILED_RETRYABLE:Lcom/amazon/kindle/model/content/ContentState;

    invoke-virtual {v8}, Ljava/lang/Enum;->ordinal()I

    move-result v8

    aput v0, v1, v8
    :try_end_10
    .catch Ljava/lang/NoSuchFieldError; {:try_start_10 .. :try_end_10} :catch_10

    :catch_10
    :try_start_11
    sget-object v0, Lcom/amazon/kcp/util/LibraryUtils$1;->$SwitchMap$com$amazon$kindle$model$content$ContentState:[I

    sget-object v1, Lcom/amazon/kindle/model/content/ContentState;->REMOTE:Lcom/amazon/kindle/model/content/ContentState;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v2, v0, v1
    :try_end_11
    .catch Ljava/lang/NoSuchFieldError; {:try_start_11 .. :try_end_11} :catch_11

    :catch_11
    :try_start_12
    sget-object v0, Lcom/amazon/kcp/util/LibraryUtils$1;->$SwitchMap$com$amazon$kindle$model$content$ContentState:[I

    sget-object v1, Lcom/amazon/kindle/model/content/ContentState;->QUEUED:Lcom/amazon/kindle/model/content/ContentState;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v3, v0, v1
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_12 .. :try_end_12} :catch_12

    :catch_12
    :try_start_13
    sget-object v0, Lcom/amazon/kcp/util/LibraryUtils$1;->$SwitchMap$com$amazon$kindle$model$content$ContentState:[I

    sget-object v1, Lcom/amazon/kindle/model/content/ContentState;->LOCAL:Lcom/amazon/kindle/model/content/ContentState;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v4, v0, v1
    :try_end_13
    .catch Ljava/lang/NoSuchFieldError; {:try_start_13 .. :try_end_13} :catch_13

    :catch_13
    :try_start_14
    sget-object v0, Lcom/amazon/kcp/util/LibraryUtils$1;->$SwitchMap$com$amazon$kindle$model$content$ContentState:[I

    sget-object v1, Lcom/amazon/kindle/model/content/ContentState;->DOWNLOADING_OPENABLE:Lcom/amazon/kindle/model/content/ContentState;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v5, v0, v1
    :try_end_14
    .catch Ljava/lang/NoSuchFieldError; {:try_start_14 .. :try_end_14} :catch_14

    :catch_14
    :try_start_15
    sget-object v0, Lcom/amazon/kcp/util/LibraryUtils$1;->$SwitchMap$com$amazon$kindle$model$content$ContentState:[I

    sget-object v1, Lcom/amazon/kindle/model/content/ContentState;->DOWNLOADING:Lcom/amazon/kindle/model/content/ContentState;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v6, v0, v1
    :try_end_15
    .catch Ljava/lang/NoSuchFieldError; {:try_start_15 .. :try_end_15} :catch_15

    :catch_15
    :try_start_16
    sget-object v0, Lcom/amazon/kcp/util/LibraryUtils$1;->$SwitchMap$com$amazon$kindle$model$content$ContentState:[I

    sget-object v1, Lcom/amazon/kindle/model/content/ContentState;->PAUSED:Lcom/amazon/kindle/model/content/ContentState;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v7, v0, v1
    :try_end_16
    .catch Ljava/lang/NoSuchFieldError; {:try_start_16 .. :try_end_16} :catch_16

    :catch_16
    :try_start_17
    sget-object v0, Lcom/amazon/kcp/util/LibraryUtils$1;->$SwitchMap$com$amazon$kindle$model$content$ContentState:[I

    sget-object v1, Lcom/amazon/kindle/model/content/ContentState;->UNSUPPORTED:Lcom/amazon/kindle/model/content/ContentState;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_17
    .catch Ljava/lang/NoSuchFieldError; {:try_start_17 .. :try_end_17} :catch_17

    :catch_17
    return-void
.end method
