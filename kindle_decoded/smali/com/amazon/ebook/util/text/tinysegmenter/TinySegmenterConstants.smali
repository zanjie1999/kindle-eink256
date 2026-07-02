.class Lcom/amazon/ebook/util/text/tinysegmenter/TinySegmenterConstants;
.super Ljava/lang/Object;


# static fields
.field public static final BC1_KEYS:[Ljava/lang/String;

.field public static final BC1_VALS:[Ljava/lang/Integer;

.field public static final BC2_KEYS:[Ljava/lang/String;

.field public static final BC2_VALS:[Ljava/lang/Integer;

.field public static final BC3_KEYS:[Ljava/lang/String;

.field public static final BC3_VALS:[Ljava/lang/Integer;

.field public static final BP1_KEYS:[Ljava/lang/String;

.field public static final BP1_VALS:[Ljava/lang/Integer;

.field public static final BP2_KEYS:[Ljava/lang/String;

.field public static final BP2_VALS:[Ljava/lang/Integer;

.field public static final BQ1_KEYS:[Ljava/lang/String;

.field public static final BQ1_VALS:[Ljava/lang/Integer;

.field public static final BQ2_KEYS:[Ljava/lang/String;

.field public static final BQ2_VALS:[Ljava/lang/Integer;

.field public static final BQ3_KEYS:[Ljava/lang/String;

.field public static final BQ3_VALS:[Ljava/lang/Integer;

.field public static final BQ4_KEYS:[Ljava/lang/String;

.field public static final BQ4_VALS:[Ljava/lang/Integer;

.field public static final BW1_KEYS:[Ljava/lang/String;

.field public static final BW1_VALS:[Ljava/lang/Integer;

.field public static final BW2_KEYS:[Ljava/lang/String;

.field public static final BW2_VALS:[Ljava/lang/Integer;

.field public static final BW3_KEYS:[Ljava/lang/String;

.field public static final BW3_VALS:[Ljava/lang/Integer;

.field public static final TC1_KEYS:[Ljava/lang/String;

.field public static final TC1_VALS:[Ljava/lang/Integer;

.field public static final TC2_KEYS:[Ljava/lang/String;

.field public static final TC2_VALS:[Ljava/lang/Integer;

.field public static final TC3_KEYS:[Ljava/lang/String;

.field public static final TC3_VALS:[Ljava/lang/Integer;

.field public static final TC4_KEYS:[Ljava/lang/String;

.field public static final TC4_VALS:[Ljava/lang/Integer;

.field public static final TQ1_KEYS:[Ljava/lang/String;

.field public static final TQ1_VALS:[Ljava/lang/Integer;

.field public static final TQ2_KEYS:[Ljava/lang/String;

.field public static final TQ2_VALS:[Ljava/lang/Integer;

.field public static final TQ3_KEYS:[Ljava/lang/String;

.field public static final TQ3_VALS:[Ljava/lang/Integer;

.field public static final TQ4_KEYS:[Ljava/lang/String;

.field public static final TQ4_VALS:[Ljava/lang/Integer;

.field public static final TW1_KEYS:[Ljava/lang/String;

.field public static final TW1_VALS:[Ljava/lang/Integer;

.field public static final TW2_KEYS:[Ljava/lang/String;

.field public static final TW2_VALS:[Ljava/lang/Integer;

.field public static final TW3_KEYS:[Ljava/lang/String;

.field public static final TW3_VALS:[Ljava/lang/Integer;

.field public static final TW4_KEYS:[Ljava/lang/String;

.field public static final TW4_VALS:[Ljava/lang/Integer;

.field public static final UC1_KEYS:[Ljava/lang/String;

.field public static final UC1_VALS:[Ljava/lang/Integer;

.field public static final UC2_KEYS:[Ljava/lang/String;

.field public static final UC2_VALS:[Ljava/lang/Integer;

.field public static final UC3_KEYS:[Ljava/lang/String;

.field public static final UC3_VALS:[Ljava/lang/Integer;

.field public static final UC4_KEYS:[Ljava/lang/String;

.field public static final UC4_VALS:[Ljava/lang/Integer;

.field public static final UC5_KEYS:[Ljava/lang/String;

.field public static final UC5_VALS:[Ljava/lang/Integer;

.field public static final UC6_KEYS:[Ljava/lang/String;

.field public static final UC6_VALS:[Ljava/lang/Integer;

.field public static final UP1_KEYS:[Ljava/lang/String;

.field public static final UP1_VALS:[Ljava/lang/Integer;

.field public static final UP2_KEYS:[Ljava/lang/String;

.field public static final UP2_VALS:[Ljava/lang/Integer;

.field public static final UP3_KEYS:[Ljava/lang/String;

.field public static final UP3_VALS:[Ljava/lang/Integer;

.field public static final UQ1_KEYS:[Ljava/lang/String;

.field public static final UQ1_VALS:[Ljava/lang/Integer;

.field public static final UQ2_KEYS:[Ljava/lang/String;

.field public static final UQ2_VALS:[Ljava/lang/Integer;

.field public static final UQ3_KEYS:[Ljava/lang/String;

.field public static final UQ3_VALS:[Ljava/lang/Integer;

.field public static final UW1_KEYS:[Ljava/lang/String;

.field public static final UW1_VALS:[Ljava/lang/Integer;

.field public static final UW2_KEYS:[Ljava/lang/String;

.field public static final UW2_VALS:[Ljava/lang/Integer;

.field public static final UW3_KEYS:[Ljava/lang/String;

.field public static final UW3_VALS:[Ljava/lang/Integer;

.field public static final UW4_KEYS:[Ljava/lang/String;

.field public static final UW4_VALS:[Ljava/lang/Integer;

.field public static final UW5_KEYS:[Ljava/lang/String;

.field public static final UW5_VALS:[Ljava/lang/Integer;

.field public static final UW6_KEYS:[Ljava/lang/String;

.field public static final UW6_VALS:[Ljava/lang/Integer;


# direct methods
.method static constructor <clinit>()V
    .locals 145

    const-string v0, "OH"

    const-string v1, "II"

    const-string v2, "HH"

    const-string v3, "KH"

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/ebook/util/text/tinysegmenter/TinySegmenterConstants;->BC1_KEYS:[Ljava/lang/String;

    const/4 v0, 0x4

    new-array v1, v0, [Ljava/lang/Integer;

    new-instance v2, Ljava/lang/Integer;

    const/16 v3, -0x562

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    const/4 v3, 0x0

    aput-object v2, v1, v3

    new-instance v2, Ljava/lang/Integer;

    const/16 v4, 0x99d

    invoke-direct {v2, v4}, Ljava/lang/Integer;-><init>(I)V

    const/4 v4, 0x1

    aput-object v2, v1, v4

    new-instance v2, Ljava/lang/Integer;

    const/4 v5, 0x6

    invoke-direct {v2, v5}, Ljava/lang/Integer;-><init>(I)V

    const/4 v6, 0x2

    aput-object v2, v1, v6

    new-instance v2, Ljava/lang/Integer;

    const/16 v7, 0x196

    invoke-direct {v2, v7}, Ljava/lang/Integer;-><init>(I)V

    const/4 v7, 0x3

    aput-object v2, v1, v7

    sput-object v1, Lcom/amazon/ebook/util/text/tinysegmenter/TinySegmenterConstants;->BC1_VALS:[Ljava/lang/Integer;

    const-string v8, "AN"

    const-string v9, "MK"

    const-string v10, "HH"

    const-string v11, "IA"

    const-string v12, "KI"

    const-string v13, "KK"

    const-string v14, "HM"

    const-string v15, "AA"

    const-string v16, "HN"

    const-string v17, "HO"

    const-string v18, "IH"

    const-string v19, "II"

    const-string v20, "IK"

    const-string v21, "AI"

    const-string v22, "IO"

    const-string v23, "MH"

    const-string v24, "OO"

    filled-new-array/range {v8 .. v24}, [Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/amazon/ebook/util/text/tinysegmenter/TinySegmenterConstants;->BC2_KEYS:[Ljava/lang/String;

    const/16 v1, 0x11

    new-array v2, v1, [Ljava/lang/Integer;

    new-instance v8, Ljava/lang/Integer;

    const/16 v9, -0x36e

    invoke-direct {v8, v9}, Ljava/lang/Integer;-><init>(I)V

    aput-object v8, v2, v3

    new-instance v8, Ljava/lang/Integer;

    const/16 v9, 0xd06

    invoke-direct {v8, v9}, Ljava/lang/Integer;-><init>(I)V

    aput-object v8, v2, v4

    new-instance v8, Ljava/lang/Integer;

    const/16 v9, -0xfe6

    invoke-direct {v8, v9}, Ljava/lang/Integer;-><init>(I)V

    aput-object v8, v2, v6

    new-instance v8, Ljava/lang/Integer;

    const/16 v9, 0x52f

    invoke-direct {v8, v9}, Ljava/lang/Integer;-><init>(I)V

    aput-object v8, v2, v7

    new-instance v8, Ljava/lang/Integer;

    const/16 v9, 0xef7

    invoke-direct {v8, v9}, Ljava/lang/Integer;-><init>(I)V

    aput-object v8, v2, v0

    new-instance v8, Ljava/lang/Integer;

    const/16 v9, -0x2225

    invoke-direct {v8, v9}, Ljava/lang/Integer;-><init>(I)V

    const/4 v9, 0x5

    aput-object v8, v2, v9

    new-instance v8, Ljava/lang/Integer;

    const/16 v10, -0x6af

    invoke-direct {v8, v10}, Ljava/lang/Integer;-><init>(I)V

    aput-object v8, v2, v5

    new-instance v8, Ljava/lang/Integer;

    const/16 v10, -0xcc3

    invoke-direct {v8, v10}, Ljava/lang/Integer;-><init>(I)V

    const/4 v10, 0x7

    aput-object v8, v2, v10

    new-instance v8, Ljava/lang/Integer;

    const/16 v11, 0xfac

    invoke-direct {v8, v11}, Ljava/lang/Integer;-><init>(I)V

    const/16 v11, 0x8

    aput-object v8, v2, v11

    new-instance v8, Ljava/lang/Integer;

    const/16 v12, 0xeb1

    invoke-direct {v8, v12}, Ljava/lang/Integer;-><init>(I)V

    const/16 v12, 0x9

    aput-object v8, v2, v12

    new-instance v8, Ljava/lang/Integer;

    const/16 v13, -0x4a0

    invoke-direct {v8, v13}, Ljava/lang/Integer;-><init>(I)V

    const/16 v13, 0xa

    aput-object v8, v2, v13

    new-instance v8, Ljava/lang/Integer;

    const/16 v14, -0x534

    invoke-direct {v8, v14}, Ljava/lang/Integer;-><init>(I)V

    const/16 v14, 0xb

    aput-object v8, v2, v14

    new-instance v8, Ljava/lang/Integer;

    const/16 v15, 0x6b9

    invoke-direct {v8, v15}, Ljava/lang/Integer;-><init>(I)V

    const/16 v15, 0xc

    aput-object v8, v2, v15

    new-instance v8, Ljava/lang/Integer;

    const/16 v1, 0xab8

    invoke-direct {v8, v1}, Ljava/lang/Integer;-><init>(I)V

    const/16 v1, 0xd

    aput-object v8, v2, v1

    new-instance v8, Ljava/lang/Integer;

    const/16 v1, 0x1574

    invoke-direct {v8, v1}, Ljava/lang/Integer;-><init>(I)V

    const/16 v1, 0xe

    aput-object v8, v2, v1

    new-instance v8, Ljava/lang/Integer;

    const/16 v15, -0xc3c

    invoke-direct {v8, v15}, Ljava/lang/Integer;-><init>(I)V

    const/16 v15, 0xf

    aput-object v8, v2, v15

    new-instance v8, Ljava/lang/Integer;

    const/16 v15, -0xb68

    invoke-direct {v8, v15}, Ljava/lang/Integer;-><init>(I)V

    const/16 v15, 0x10

    aput-object v8, v2, v15

    sput-object v2, Lcom/amazon/ebook/util/text/tinysegmenter/TinySegmenterConstants;->BC2_VALS:[Ljava/lang/Integer;

    const-string v20, "MK"

    const-string v21, "MM"

    const-string v22, "HH"

    const-string v23, "HI"

    const-string v24, "HK"

    const-string v25, "OA"

    const-string v26, "KK"

    const-string v27, "HN"

    const-string v28, "HO"

    const-string v29, "IH"

    const-string v30, "OH"

    filled-new-array/range {v20 .. v30}, [Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/amazon/ebook/util/text/tinysegmenter/TinySegmenterConstants;->BC3_KEYS:[Ljava/lang/String;

    new-array v2, v14, [Ljava/lang/Integer;

    new-instance v8, Ljava/lang/Integer;

    const/16 v15, 0x437

    invoke-direct {v8, v15}, Ljava/lang/Integer;-><init>(I)V

    aput-object v8, v2, v3

    new-instance v8, Ljava/lang/Integer;

    const/16 v15, 0xfc2

    invoke-direct {v8, v15}, Ljava/lang/Integer;-><init>(I)V

    aput-object v8, v2, v4

    new-instance v8, Ljava/lang/Integer;

    const/16 v15, 0x3e4

    invoke-direct {v8, v15}, Ljava/lang/Integer;-><init>(I)V

    aput-object v8, v2, v6

    new-instance v8, Ljava/lang/Integer;

    const/16 v15, 0x272

    invoke-direct {v8, v15}, Ljava/lang/Integer;-><init>(I)V

    aput-object v8, v2, v7

    new-instance v8, Ljava/lang/Integer;

    const/16 v15, -0x2d1

    invoke-direct {v8, v15}, Ljava/lang/Integer;-><init>(I)V

    aput-object v8, v2, v0

    new-instance v8, Ljava/lang/Integer;

    const/16 v15, -0x674

    invoke-direct {v8, v15}, Ljava/lang/Integer;-><init>(I)V

    aput-object v8, v2, v9

    new-instance v8, Ljava/lang/Integer;

    const/16 v15, 0xaca

    invoke-direct {v8, v15}, Ljava/lang/Integer;-><init>(I)V

    aput-object v8, v2, v5

    new-instance v8, Ljava/lang/Integer;

    const/16 v15, -0x51b

    invoke-direct {v8, v15}, Ljava/lang/Integer;-><init>(I)V

    aput-object v8, v2, v10

    new-instance v8, Ljava/lang/Integer;

    const/16 v15, -0x344

    invoke-direct {v8, v15}, Ljava/lang/Integer;-><init>(I)V

    aput-object v8, v2, v11

    new-instance v8, Ljava/lang/Integer;

    const/16 v15, -0x12d

    invoke-direct {v8, v15}, Ljava/lang/Integer;-><init>(I)V

    aput-object v8, v2, v12

    new-instance v8, Ljava/lang/Integer;

    const/16 v15, 0x10a

    invoke-direct {v8, v15}, Ljava/lang/Integer;-><init>(I)V

    aput-object v8, v2, v13

    sput-object v2, Lcom/amazon/ebook/util/text/tinysegmenter/TinySegmenterConstants;->BC3_VALS:[Ljava/lang/Integer;

    const-string v2, "BB"

    const-string v8, "UB"

    const-string v15, "OB"

    const-string v14, "OO"

    filled-new-array {v2, v8, v15, v14}, [Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/amazon/ebook/util/text/tinysegmenter/TinySegmenterConstants;->BP1_KEYS:[Ljava/lang/String;

    new-array v2, v0, [Ljava/lang/Integer;

    new-instance v8, Ljava/lang/Integer;

    const/16 v14, 0x127

    invoke-direct {v8, v14}, Ljava/lang/Integer;-><init>(I)V

    aput-object v8, v2, v3

    new-instance v8, Ljava/lang/Integer;

    const/16 v14, 0x160

    invoke-direct {v8, v14}, Ljava/lang/Integer;-><init>(I)V

    aput-object v8, v2, v4

    new-instance v8, Ljava/lang/Integer;

    const/16 v14, 0x130

    invoke-direct {v8, v14}, Ljava/lang/Integer;-><init>(I)V

    aput-object v8, v2, v6

    new-instance v8, Ljava/lang/Integer;

    const/16 v14, -0x7d

    invoke-direct {v8, v14}, Ljava/lang/Integer;-><init>(I)V

    aput-object v8, v2, v7

    sput-object v2, Lcom/amazon/ebook/util/text/tinysegmenter/TinySegmenterConstants;->BP1_VALS:[Ljava/lang/Integer;

    const-string v2, "BO"

    const-string v8, "OO"

    filled-new-array {v2, v8}, [Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/amazon/ebook/util/text/tinysegmenter/TinySegmenterConstants;->BP2_KEYS:[Ljava/lang/String;

    new-array v2, v6, [Ljava/lang/Integer;

    new-instance v8, Ljava/lang/Integer;

    const/16 v14, 0x3c

    invoke-direct {v8, v14}, Ljava/lang/Integer;-><init>(I)V

    aput-object v8, v2, v3

    new-instance v8, Ljava/lang/Integer;

    const/16 v14, -0x6e2

    invoke-direct {v8, v14}, Ljava/lang/Integer;-><init>(I)V

    aput-object v8, v2, v4

    sput-object v2, Lcom/amazon/ebook/util/text/tinysegmenter/TinySegmenterConstants;->BP2_VALS:[Ljava/lang/Integer;

    const-string v22, "BHM"

    const-string v23, "OHI"

    const-string v24, "OKH"

    const-string v25, "OKK"

    const-string v26, "BII"

    const-string v27, "BOH"

    const-string v28, "OIH"

    const-string v29, "BIM"

    const-string v30, "BOO"

    const-string v31, "BMH"

    const-string v32, "OKA"

    const-string v33, "OOO"

    const-string v34, "BHH"

    const-string v35, "BNH"

    filled-new-array/range {v22 .. v35}, [Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/amazon/ebook/util/text/tinysegmenter/TinySegmenterConstants;->BQ1_KEYS:[Ljava/lang/String;

    new-array v2, v1, [Ljava/lang/Integer;

    new-instance v8, Ljava/lang/Integer;

    const/16 v14, 0x5f1

    invoke-direct {v8, v14}, Ljava/lang/Integer;-><init>(I)V

    aput-object v8, v2, v3

    new-instance v8, Ljava/lang/Integer;

    const/16 v14, 0x1c3

    invoke-direct {v8, v14}, Ljava/lang/Integer;-><init>(I)V

    aput-object v8, v2, v4

    new-instance v8, Ljava/lang/Integer;

    const/16 v14, -0x3fc

    invoke-direct {v8, v14}, Ljava/lang/Integer;-><init>(I)V

    aput-object v8, v2, v6

    new-instance v8, Ljava/lang/Integer;

    const/16 v14, 0x388

    invoke-direct {v8, v14}, Ljava/lang/Integer;-><init>(I)V

    aput-object v8, v2, v7

    new-instance v8, Ljava/lang/Integer;

    const/16 v14, -0x486

    invoke-direct {v8, v14}, Ljava/lang/Integer;-><init>(I)V

    aput-object v8, v2, v0

    new-instance v8, Ljava/lang/Integer;

    const/16 v14, -0x5b

    invoke-direct {v8, v14}, Ljava/lang/Integer;-><init>(I)V

    aput-object v8, v2, v9

    new-instance v8, Ljava/lang/Integer;

    const/16 v14, -0x128

    invoke-direct {v8, v14}, Ljava/lang/Integer;-><init>(I)V

    aput-object v8, v2, v5

    new-instance v8, Ljava/lang/Integer;

    const/16 v14, 0x376

    invoke-direct {v8, v14}, Ljava/lang/Integer;-><init>(I)V

    aput-object v8, v2, v10

    new-instance v8, Ljava/lang/Integer;

    const/16 v14, -0xa25

    invoke-direct {v8, v14}, Ljava/lang/Integer;-><init>(I)V

    aput-object v8, v2, v11

    new-instance v8, Ljava/lang/Integer;

    const/16 v14, 0x4b8

    invoke-direct {v8, v14}, Ljava/lang/Integer;-><init>(I)V

    aput-object v8, v2, v12

    new-instance v8, Ljava/lang/Integer;

    const/16 v14, 0x73b

    invoke-direct {v8, v14}, Ljava/lang/Integer;-><init>(I)V

    aput-object v8, v2, v13

    new-instance v8, Ljava/lang/Integer;

    const/16 v14, 0xb95

    invoke-direct {v8, v14}, Ljava/lang/Integer;-><init>(I)V

    const/16 v14, 0xb

    aput-object v8, v2, v14

    new-instance v8, Ljava/lang/Integer;

    const/16 v14, 0x47e

    invoke-direct {v8, v14}, Ljava/lang/Integer;-><init>(I)V

    const/16 v14, 0xc

    aput-object v8, v2, v14

    new-instance v8, Ljava/lang/Integer;

    const/16 v14, 0x1c1

    invoke-direct {v8, v14}, Ljava/lang/Integer;-><init>(I)V

    const/16 v14, 0xd

    aput-object v8, v2, v14

    sput-object v2, Lcom/amazon/ebook/util/text/tinysegmenter/TinySegmenterConstants;->BQ1_VALS:[Ljava/lang/Integer;

    const-string v22, "BKK"

    const-string v23, "OHH"

    const-string v24, "BHM"

    const-string v25, "BKO"

    const-string v26, "BIH"

    const-string v27, "OHM"

    const-string v28, "OIH"

    const-string v29, "UHI"

    const-string v30, "BHH"

    const-string v31, "BHI"

    filled-new-array/range {v22 .. v31}, [Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/amazon/ebook/util/text/tinysegmenter/TinySegmenterConstants;->BQ2_KEYS:[Ljava/lang/String;

    new-array v2, v13, [Ljava/lang/Integer;

    new-instance v8, Ljava/lang/Integer;

    const/16 v14, -0x6b8

    invoke-direct {v8, v14}, Ljava/lang/Integer;-><init>(I)V

    aput-object v8, v2, v3

    new-instance v8, Ljava/lang/Integer;

    const/16 v14, -0x473

    invoke-direct {v8, v14}, Ljava/lang/Integer;-><init>(I)V

    aput-object v8, v2, v4

    new-instance v8, Ljava/lang/Integer;

    const/16 v14, 0x1d2

    invoke-direct {v8, v14}, Ljava/lang/Integer;-><init>(I)V

    aput-object v8, v2, v6

    new-instance v8, Ljava/lang/Integer;

    const/16 v14, 0x360

    invoke-direct {v8, v14}, Ljava/lang/Integer;-><init>(I)V

    aput-object v8, v2, v7

    new-instance v8, Ljava/lang/Integer;

    const/16 v14, -0x397

    invoke-direct {v8, v14}, Ljava/lang/Integer;-><init>(I)V

    aput-object v8, v2, v0

    new-instance v8, Ljava/lang/Integer;

    const/16 v14, -0xb5

    invoke-direct {v8, v14}, Ljava/lang/Integer;-><init>(I)V

    aput-object v8, v2, v9

    new-instance v8, Ljava/lang/Integer;

    const/16 v14, 0x99

    invoke-direct {v8, v14}, Ljava/lang/Integer;-><init>(I)V

    aput-object v8, v2, v5

    new-instance v8, Ljava/lang/Integer;

    const/16 v14, -0x47a

    invoke-direct {v8, v14}, Ljava/lang/Integer;-><init>(I)V

    aput-object v8, v2, v10

    new-instance v8, Ljava/lang/Integer;

    const/16 v14, 0x76

    invoke-direct {v8, v14}, Ljava/lang/Integer;-><init>(I)V

    aput-object v8, v2, v11

    new-instance v8, Ljava/lang/Integer;

    const/16 v14, -0x487

    invoke-direct {v8, v14}, Ljava/lang/Integer;-><init>(I)V

    aput-object v8, v2, v12

    sput-object v2, Lcom/amazon/ebook/util/text/tinysegmenter/TinySegmenterConstants;->BQ2_VALS:[Ljava/lang/Integer;

    const-string v22, "OHH"

    const-string v23, "OKH"

    const-string v24, "OKI"

    const-string v25, "BNN"

    const-string v26, "BII"

    const-string v27, "OHM"

    const-string v28, "BOH"

    const-string v29, "OKO"

    const-string v30, "OII"

    const-string v31, "BMH"

    const-string v32, "OMH"

    const-string v33, "OOO"

    const-string v34, "BMM"

    const-string v35, "BHH"

    const-string v36, "BHI"

    const-string v37, "BKI"

    filled-new-array/range {v22 .. v37}, [Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/amazon/ebook/util/text/tinysegmenter/TinySegmenterConstants;->BQ3_KEYS:[Ljava/lang/String;

    const/16 v2, 0x10

    new-array v8, v2, [Ljava/lang/Integer;

    new-instance v2, Ljava/lang/Integer;

    const/16 v14, 0x87e

    invoke-direct {v2, v14}, Ljava/lang/Integer;-><init>(I)V

    aput-object v2, v8, v3

    new-instance v2, Ljava/lang/Integer;

    const/16 v14, 0x706

    invoke-direct {v2, v14}, Ljava/lang/Integer;-><init>(I)V

    aput-object v2, v8, v4

    new-instance v2, Ljava/lang/Integer;

    const/16 v14, -0x319

    invoke-direct {v2, v14}, Ljava/lang/Integer;-><init>(I)V

    aput-object v2, v8, v6

    new-instance v2, Ljava/lang/Integer;

    const/16 v14, 0x3e6

    invoke-direct {v2, v14}, Ljava/lang/Integer;-><init>(I)V

    aput-object v2, v8, v7

    new-instance v2, Ljava/lang/Integer;

    const/16 v14, -0x12b

    invoke-direct {v2, v14}, Ljava/lang/Integer;-><init>(I)V

    aput-object v2, v8, v0

    new-instance v2, Ljava/lang/Integer;

    const/16 v14, 0x1b7

    invoke-direct {v2, v14}, Ljava/lang/Integer;-><init>(I)V

    aput-object v2, v8, v9

    new-instance v2, Ljava/lang/Integer;

    const/16 v14, 0x307

    invoke-direct {v2, v14}, Ljava/lang/Integer;-><init>(I)V

    aput-object v2, v8, v5

    new-instance v2, Ljava/lang/Integer;

    const/16 v14, -0x8c2

    invoke-direct {v2, v14}, Ljava/lang/Integer;-><init>(I)V

    aput-object v2, v8, v10

    new-instance v2, Ljava/lang/Integer;

    const/16 v14, 0x118

    invoke-direct {v2, v14}, Ljava/lang/Integer;-><init>(I)V

    aput-object v2, v8, v11

    new-instance v2, Ljava/lang/Integer;

    const/16 v14, 0x3a9

    invoke-direct {v2, v14}, Ljava/lang/Integer;-><init>(I)V

    aput-object v2, v8, v12

    new-instance v2, Ljava/lang/Integer;

    const/16 v14, -0x962

    invoke-direct {v2, v14}, Ljava/lang/Integer;-><init>(I)V

    aput-object v2, v8, v13

    new-instance v2, Ljava/lang/Integer;

    const/16 v14, 0x2db3

    invoke-direct {v2, v14}, Ljava/lang/Integer;-><init>(I)V

    const/16 v14, 0xb

    aput-object v2, v8, v14

    new-instance v2, Ljava/lang/Integer;

    const/16 v14, 0x208f

    invoke-direct {v2, v14}, Ljava/lang/Integer;-><init>(I)V

    const/16 v14, 0xc

    aput-object v2, v8, v14

    new-instance v2, Ljava/lang/Integer;

    const/16 v14, -0x318

    invoke-direct {v2, v14}, Ljava/lang/Integer;-><init>(I)V

    const/16 v14, 0xd

    aput-object v2, v8, v14

    new-instance v2, Ljava/lang/Integer;

    const/16 v14, 0xa68

    invoke-direct {v2, v14}, Ljava/lang/Integer;-><init>(I)V

    aput-object v2, v8, v1

    new-instance v2, Ljava/lang/Integer;

    const/16 v14, 0x1a3

    invoke-direct {v2, v14}, Ljava/lang/Integer;-><init>(I)V

    const/16 v14, 0xf

    aput-object v2, v8, v14

    sput-object v8, Lcom/amazon/ebook/util/text/tinysegmenter/TinySegmenterConstants;->BQ3_VALS:[Ljava/lang/Integer;

    const-string v22, "BKK"

    const-string v23, "OHH"

    const-string v24, "OHK"

    const-string v25, "BIH"

    const-string v26, "BII"

    const-string v27, "BIK"

    const-string v28, "ONN"

    const-string v29, "BOO"

    const-string v30, "OAH"

    const-string v31, "BMI"

    const-string v32, "BHH"

    filled-new-array/range {v22 .. v32}, [Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/amazon/ebook/util/text/tinysegmenter/TinySegmenterConstants;->BQ4_KEYS:[Ljava/lang/String;

    const/16 v2, 0xb

    new-array v8, v2, [Ljava/lang/Integer;

    new-instance v2, Ljava/lang/Integer;

    const/16 v14, -0x70e

    invoke-direct {v2, v14}, Ljava/lang/Integer;-><init>(I)V

    aput-object v2, v8, v3

    new-instance v2, Ljava/lang/Integer;

    const/16 v14, 0x10a

    invoke-direct {v2, v14}, Ljava/lang/Integer;-><init>(I)V

    aput-object v2, v8, v4

    new-instance v2, Ljava/lang/Integer;

    const/16 v14, -0x7f4

    invoke-direct {v2, v14}, Ljava/lang/Integer;-><init>(I)V

    aput-object v2, v8, v6

    new-instance v2, Ljava/lang/Integer;

    const/16 v14, 0xeb1

    invoke-direct {v2, v14}, Ljava/lang/Integer;-><init>(I)V

    aput-object v2, v8, v7

    new-instance v2, Ljava/lang/Integer;

    const/16 v14, -0x122e

    invoke-direct {v2, v14}, Ljava/lang/Integer;-><init>(I)V

    aput-object v2, v8, v0

    new-instance v2, Ljava/lang/Integer;

    const/16 v14, 0x544

    invoke-direct {v2, v14}, Ljava/lang/Integer;-><init>(I)V

    aput-object v2, v8, v9

    new-instance v2, Ljava/lang/Integer;

    const/16 v14, -0x3cd

    invoke-direct {v2, v14}, Ljava/lang/Integer;-><init>(I)V

    aput-object v2, v8, v5

    new-instance v2, Ljava/lang/Integer;

    const/16 v14, -0x306c

    invoke-direct {v2, v14}, Ljava/lang/Integer;-><init>(I)V

    aput-object v2, v8, v10

    new-instance v2, Ljava/lang/Integer;

    const/16 v14, 0x39e

    invoke-direct {v2, v14}, Ljava/lang/Integer;-><init>(I)V

    aput-object v2, v8, v11

    new-instance v2, Ljava/lang/Integer;

    const/16 v14, -0xd39

    invoke-direct {v2, v14}, Ljava/lang/Integer;-><init>(I)V

    aput-object v2, v8, v12

    new-instance v2, Ljava/lang/Integer;

    const/16 v14, -0xf37

    invoke-direct {v2, v14}, Ljava/lang/Integer;-><init>(I)V

    aput-object v2, v8, v13

    sput-object v8, Lcom/amazon/ebook/util/text/tinysegmenter/TinySegmenterConstants;->BQ4_VALS:[Ljava/lang/Integer;

    const-string/jumbo v22, "\u5f15\u304d"

    const-string/jumbo v23, "\u304b\u3089"

    const-string/jumbo v24, "\u3044\u3046"

    const-string/jumbo v25, "\u3092\u898b"

    const-string/jumbo v26, "\u5e73\u65b9"

    const-string v27, "B1\u540c"

    const-string/jumbo v28, "\u3066\u3044"

    const-string/jumbo v29, "\u305f\u3061"

    const-string/jumbo v30, "\u5927\u962a"

    const-string/jumbo v31, "\uff22\uff11\u3042"

    const-string/jumbo v32, "\u307e\u305b"

    const-string/jumbo v33, "\u53d6\u308a"

    const-string/jumbo v34, "\u306b\u306f"

    const-string/jumbo v35, "\u3066\u304d"

    const-string/jumbo v36, "\u3059\u3067"

    const-string/jumbo v37, "\u6bce\u65e5"

    const-string/jumbo v38, "\u3069\u3053"

    const-string/jumbo v39, "\u306a\u3093"

    const-string/jumbo v40, "\u3055\u3089"

    const-string/jumbo v41, "\u3053\u3068"

    const-string/jumbo v42, "\u307e\u3067"

    const-string/jumbo v43, "\u306e\u4e2d"

    const-string/jumbo v44, "\u305d\u3053"

    const-string/jumbo v45, "\u3044\u3063"

    const-string/jumbo v46, "\u304c\u3089"

    const-string/jumbo v47, "\u3068\u307f"

    const-string/jumbo v48, "\u3055\u3093"

    const-string/jumbo v49, "\u306b\u3082"

    const-string/jumbo v50, "\u3063\u305f"

    const-string/jumbo v51, "\u306a\u3044"

    const-string/jumbo v52, "\u300d\u3068"

    const-string/jumbo v53, "\u3064\u3044"

    const-string/jumbo v54, "\u305f\u3081"

    const-string/jumbo v55, "\u3057\u305f"

    const-string/jumbo v56, "\u3046\u3093"

    const-string/jumbo v57, "\u672c\u5f53"

    const-string/jumbo v58, "\u3067\u304d"

    const-string/jumbo v59, "\u3001\u3068"

    const-string/jumbo v60, "\u3084\u3080"

    const-string/jumbo v61, "\u3088\u3063"

    const-string/jumbo v62, "\u307e\u307e"

    const-string/jumbo v63, "\u3057\u3066"

    const-string/jumbo v64, "\u3001\u540c"

    const-string/jumbo v65, "\u306b\u5bfe"

    const-string/jumbo v66, "\u4ea1\u304f"

    const-string/jumbo v67, "\uff22\uff11\u540c"

    const-string/jumbo v68, "\uff63\u3068"

    const-string/jumbo v69, "\u3067\u3059"

    const-string/jumbo v70, "\u5927\u304d"

    const-string v71, "B1\u3042"

    const-string/jumbo v72, "\u3092\u3057"

    const-string/jumbo v73, "\u3042\u3063"

    const-string/jumbo v74, "\u307e\u308b"

    const-string/jumbo v75, "\u4eac\u90fd"

    const-string/jumbo v76, "\u3053\u3093"

    const-string/jumbo v77, "\u306a\u3063"

    const-string/jumbo v78, "\u3068\u3044"

    const-string/jumbo v79, "\u3044\u308b"

    const-string v80, ",\u3068"

    const-string/jumbo v81, "\u308c\u305f"

    const-string/jumbo v82, "\u306a\u3069"

    const-string v83, ",\u540c"

    const-string/jumbo v84, "\u306e\u4e00"

    const-string/jumbo v85, "\u76ee\u6307"

    const-string/jumbo v86, "\u3046\u3057"

    const-string/jumbo v87, "\u308c\u3067"

    const-string/jumbo v88, "\u3067\u306f"

    const-string/jumbo v89, "\u305d\u308c"

    const-string/jumbo v90, "\u3053\u3046"

    const-string/jumbo v91, "\u306b\u3057"

    const-string/jumbo v92, "\u65e5\u672c"

    filled-new-array/range {v22 .. v92}, [Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/amazon/ebook/util/text/tinysegmenter/TinySegmenterConstants;->BW1_KEYS:[Ljava/lang/String;

    const/16 v2, 0x47

    new-array v2, v2, [Ljava/lang/Integer;

    new-instance v8, Ljava/lang/Integer;

    const/16 v14, -0x538

    invoke-direct {v8, v14}, Ljava/lang/Integer;-><init>(I)V

    aput-object v8, v2, v3

    new-instance v8, Ljava/lang/Integer;

    const/16 v14, 0xd90

    invoke-direct {v8, v14}, Ljava/lang/Integer;-><init>(I)V

    aput-object v8, v2, v4

    new-instance v8, Ljava/lang/Integer;

    const/16 v14, 0x6cf

    invoke-direct {v8, v14}, Ljava/lang/Integer;-><init>(I)V

    aput-object v8, v2, v6

    new-instance v8, Ljava/lang/Integer;

    const/16 v14, 0x2db

    invoke-direct {v8, v14}, Ljava/lang/Integer;-><init>(I)V

    aput-object v8, v2, v7

    new-instance v8, Ljava/lang/Integer;

    const/16 v14, -0x90a

    invoke-direct {v8, v14}, Ljava/lang/Integer;-><init>(I)V

    aput-object v8, v2, v0

    new-instance v8, Ljava/lang/Integer;

    const/16 v14, 0x21e

    invoke-direct {v8, v14}, Ljava/lang/Integer;-><init>(I)V

    aput-object v8, v2, v9

    new-instance v8, Ljava/lang/Integer;

    const/16 v14, 0x325

    invoke-direct {v8, v14}, Ljava/lang/Integer;-><init>(I)V

    aput-object v8, v2, v5

    new-instance v8, Ljava/lang/Integer;

    const/16 v14, 0x462

    invoke-direct {v8, v14}, Ljava/lang/Integer;-><init>(I)V

    aput-object v8, v2, v10

    new-instance v8, Ljava/lang/Integer;

    const/16 v14, 0x5d9

    invoke-direct {v8, v14}, Ljava/lang/Integer;-><init>(I)V

    aput-object v8, v2, v11

    new-instance v8, Ljava/lang/Integer;

    const/16 v14, 0x57c

    invoke-direct {v8, v14}, Ljava/lang/Integer;-><init>(I)V

    aput-object v8, v2, v12

    new-instance v8, Ljava/lang/Integer;

    const/16 v14, 0x990

    invoke-direct {v8, v14}, Ljava/lang/Integer;-><init>(I)V

    aput-object v8, v2, v13

    new-instance v8, Ljava/lang/Integer;

    const/16 v14, -0xae0

    invoke-direct {v8, v14}, Ljava/lang/Integer;-><init>(I)V

    const/16 v14, 0xb

    aput-object v8, v2, v14

    new-instance v8, Ljava/lang/Integer;

    const/16 v14, 0x5da

    invoke-direct {v8, v14}, Ljava/lang/Integer;-><init>(I)V

    const/16 v14, 0xc

    aput-object v8, v2, v14

    new-instance v8, Ljava/lang/Integer;

    const/16 v14, 0x4e1

    invoke-direct {v8, v14}, Ljava/lang/Integer;-><init>(I)V

    const/16 v14, 0xd

    aput-object v8, v2, v14

    new-instance v8, Ljava/lang/Integer;

    const/16 v14, -0xd47

    invoke-direct {v8, v14}, Ljava/lang/Integer;-><init>(I)V

    aput-object v8, v2, v1

    new-instance v8, Ljava/lang/Integer;

    const/16 v14, -0x841

    invoke-direct {v8, v14}, Ljava/lang/Integer;-><init>(I)V

    const/16 v14, 0xf

    aput-object v8, v2, v14

    new-instance v8, Ljava/lang/Integer;

    const/16 v14, 0xf2f

    invoke-direct {v8, v14}, Ljava/lang/Integer;-><init>(I)V

    const/16 v14, 0x10

    aput-object v8, v2, v14

    new-instance v8, Ljava/lang/Integer;

    const/16 v14, -0x459

    invoke-direct {v8, v14}, Ljava/lang/Integer;-><init>(I)V

    const/16 v14, 0x11

    aput-object v8, v2, v14

    new-instance v8, Ljava/lang/Integer;

    const/16 v14, -0x102f

    invoke-direct {v8, v14}, Ljava/lang/Integer;-><init>(I)V

    const/16 v14, 0x12

    aput-object v8, v2, v14

    new-instance v8, Ljava/lang/Integer;

    const/16 v15, 0x823

    invoke-direct {v8, v15}, Ljava/lang/Integer;-><init>(I)V

    const/16 v15, 0x13

    aput-object v8, v2, v15

    new-instance v8, Ljava/lang/Integer;

    const/16 v15, 0x6af

    invoke-direct {v8, v15}, Ljava/lang/Integer;-><init>(I)V

    const/16 v15, 0x14

    aput-object v8, v2, v15

    new-instance v8, Ljava/lang/Integer;

    const/16 v15, 0x2e5

    invoke-direct {v8, v15}, Ljava/lang/Integer;-><init>(I)V

    const/16 v15, 0x15

    aput-object v8, v2, v15

    new-instance v8, Ljava/lang/Integer;

    const/16 v15, 0x7b9

    invoke-direct {v8, v15}, Ljava/lang/Integer;-><init>(I)V

    const/16 v15, 0x16

    aput-object v8, v2, v15

    new-instance v8, Ljava/lang/Integer;

    const/16 v15, -0x807

    invoke-direct {v8, v15}, Ljava/lang/Integer;-><init>(I)V

    const/16 v15, 0x17

    aput-object v8, v2, v15

    new-instance v8, Ljava/lang/Integer;

    const/16 v15, 0x258

    invoke-direct {v8, v15}, Ljava/lang/Integer;-><init>(I)V

    const/16 v15, 0x18

    aput-object v8, v2, v15

    new-instance v8, Ljava/lang/Integer;

    const/16 v15, 0x782

    invoke-direct {v8, v15}, Ljava/lang/Integer;-><init>(I)V

    const/16 v15, 0x19

    aput-object v8, v2, v15

    new-instance v8, Ljava/lang/Integer;

    const/16 v15, 0x11dd

    invoke-direct {v8, v15}, Ljava/lang/Integer;-><init>(I)V

    const/16 v15, 0x1a

    aput-object v8, v2, v15

    new-instance v8, Ljava/lang/Integer;

    const/16 v15, 0x687

    invoke-direct {v8, v15}, Ljava/lang/Integer;-><init>(I)V

    const/16 v15, 0x1b

    aput-object v8, v2, v15

    new-instance v8, Ljava/lang/Integer;

    const/16 v15, 0xd87

    invoke-direct {v8, v15}, Ljava/lang/Integer;-><init>(I)V

    const/16 v15, 0x1c

    aput-object v8, v2, v15

    new-instance v8, Ljava/lang/Integer;

    const/16 v15, 0x1651

    invoke-direct {v8, v15}, Ljava/lang/Integer;-><init>(I)V

    const/16 v15, 0x1d

    aput-object v8, v2, v15

    new-instance v8, Ljava/lang/Integer;

    const/16 v15, 0x692

    invoke-direct {v8, v15}, Ljava/lang/Integer;-><init>(I)V

    const/16 v15, 0x1e

    aput-object v8, v2, v15

    new-instance v8, Ljava/lang/Integer;

    const/16 v15, -0x322

    invoke-direct {v8, v15}, Ljava/lang/Integer;-><init>(I)V

    const/16 v15, 0x1f

    aput-object v8, v2, v15

    new-instance v8, Ljava/lang/Integer;

    const/16 v15, 0x259

    invoke-direct {v8, v15}, Ljava/lang/Integer;-><init>(I)V

    const/16 v15, 0x20

    aput-object v8, v2, v15

    new-instance v8, Ljava/lang/Integer;

    const/16 v15, 0xa51

    invoke-direct {v8, v15}, Ljava/lang/Integer;-><init>(I)V

    const/16 v15, 0x21

    aput-object v8, v2, v15

    new-instance v8, Ljava/lang/Integer;

    const/16 v15, 0x299

    invoke-direct {v8, v15}, Ljava/lang/Integer;-><init>(I)V

    const/16 v15, 0x22

    aput-object v8, v2, v15

    new-instance v8, Ljava/lang/Integer;

    const/16 v15, -0x977

    invoke-direct {v8, v15}, Ljava/lang/Integer;-><init>(I)V

    const/16 v15, 0x23

    aput-object v8, v2, v15

    new-instance v8, Ljava/lang/Integer;

    const/16 v15, 0x467

    invoke-direct {v8, v15}, Ljava/lang/Integer;-><init>(I)V

    const/16 v15, 0x24

    aput-object v8, v2, v15

    new-instance v8, Ljava/lang/Integer;

    const/16 v15, 0x294

    invoke-direct {v8, v15}, Ljava/lang/Integer;-><init>(I)V

    const/16 v15, 0x25

    aput-object v8, v2, v15

    new-instance v8, Ljava/lang/Integer;

    const/16 v15, -0x79b

    invoke-direct {v8, v15}, Ljava/lang/Integer;-><init>(I)V

    const/16 v15, 0x26

    aput-object v8, v2, v15

    new-instance v8, Ljava/lang/Integer;

    const/16 v15, -0xa05

    invoke-direct {v8, v15}, Ljava/lang/Integer;-><init>(I)V

    const/16 v15, 0x27

    aput-object v8, v2, v15

    new-instance v8, Ljava/lang/Integer;

    const/16 v15, 0xa28

    invoke-direct {v8, v15}, Ljava/lang/Integer;-><init>(I)V

    const/16 v15, 0x28

    aput-object v8, v2, v15

    new-instance v8, Ljava/lang/Integer;

    const/16 v15, 0x450

    invoke-direct {v8, v15}, Ljava/lang/Integer;-><init>(I)V

    const/16 v15, 0x29

    aput-object v8, v2, v15

    new-instance v8, Ljava/lang/Integer;

    const/16 v15, 0x2d7

    invoke-direct {v8, v15}, Ljava/lang/Integer;-><init>(I)V

    const/16 v15, 0x2a

    aput-object v8, v2, v15

    new-instance v8, Ljava/lang/Integer;

    const/16 v15, -0x390

    invoke-direct {v8, v15}, Ljava/lang/Integer;-><init>(I)V

    const/16 v15, 0x2b

    aput-object v8, v2, v15

    new-instance v8, Ljava/lang/Integer;

    const/16 v15, -0x75e

    invoke-direct {v8, v15}, Ljava/lang/Integer;-><init>(I)V

    const/16 v15, 0x2c

    aput-object v8, v2, v15

    new-instance v8, Ljava/lang/Integer;

    const/16 v15, 0x21e

    invoke-direct {v8, v15}, Ljava/lang/Integer;-><init>(I)V

    const/16 v15, 0x2d

    aput-object v8, v2, v15

    new-instance v8, Ljava/lang/Integer;

    const/16 v15, 0x692

    invoke-direct {v8, v15}, Ljava/lang/Integer;-><init>(I)V

    const/16 v15, 0x2e

    aput-object v8, v2, v15

    new-instance v8, Ljava/lang/Integer;

    const/16 v15, 0xd75

    invoke-direct {v8, v15}, Ljava/lang/Integer;-><init>(I)V

    const/16 v15, 0x2f

    aput-object v8, v2, v15

    new-instance v8, Ljava/lang/Integer;

    const/16 v15, -0xa2c

    invoke-direct {v8, v15}, Ljava/lang/Integer;-><init>(I)V

    const/16 v15, 0x30

    aput-object v8, v2, v15

    new-instance v8, Ljava/lang/Integer;

    const/16 v15, 0x57c

    invoke-direct {v8, v15}, Ljava/lang/Integer;-><init>(I)V

    const/16 v15, 0x31

    aput-object v8, v2, v15

    new-instance v8, Ljava/lang/Integer;

    const/16 v15, 0x744

    invoke-direct {v8, v15}, Ljava/lang/Integer;-><init>(I)V

    const/16 v15, 0x32

    aput-object v8, v2, v15

    new-instance v8, Ljava/lang/Integer;

    const/16 v15, 0x5e1

    invoke-direct {v8, v15}, Ljava/lang/Integer;-><init>(I)V

    const/16 v15, 0x33

    aput-object v8, v2, v15

    new-instance v8, Ljava/lang/Integer;

    const/16 v15, -0x86b

    invoke-direct {v8, v15}, Ljava/lang/Integer;-><init>(I)V

    const/16 v15, 0x34

    aput-object v8, v2, v15

    new-instance v8, Ljava/lang/Integer;

    const/16 v15, 0x9fe

    invoke-direct {v8, v15}, Ljava/lang/Integer;-><init>(I)V

    const/16 v15, 0x35

    aput-object v8, v2, v15

    new-instance v8, Ljava/lang/Integer;

    const/16 v15, -0x4ee

    invoke-direct {v8, v15}, Ljava/lang/Integer;-><init>(I)V

    const/16 v15, 0x36

    aput-object v8, v2, v15

    new-instance v8, Ljava/lang/Integer;

    const/16 v15, 0xbc7

    invoke-direct {v8, v15}, Ljava/lang/Integer;-><init>(I)V

    const/16 v15, 0x37

    aput-object v8, v2, v15

    new-instance v8, Ljava/lang/Integer;

    const/16 v15, -0x1333

    invoke-direct {v8, v15}, Ljava/lang/Integer;-><init>(I)V

    const/16 v15, 0x38

    aput-object v8, v2, v15

    new-instance v8, Ljava/lang/Integer;

    const/16 v15, 0x2a0

    invoke-direct {v8, v15}, Ljava/lang/Integer;-><init>(I)V

    const/16 v15, 0x39

    aput-object v8, v2, v15

    new-instance v8, Ljava/lang/Integer;

    const/16 v15, 0x294

    invoke-direct {v8, v15}, Ljava/lang/Integer;-><init>(I)V

    const/16 v15, 0x3a

    aput-object v8, v2, v15

    new-instance v8, Ljava/lang/Integer;

    const/16 v15, 0x941

    invoke-direct {v8, v15}, Ljava/lang/Integer;-><init>(I)V

    const/16 v15, 0x3b

    aput-object v8, v2, v15

    new-instance v8, Ljava/lang/Integer;

    const/16 v15, 0x1cd3

    invoke-direct {v8, v15}, Ljava/lang/Integer;-><init>(I)V

    const/16 v15, 0x3c

    aput-object v8, v2, v15

    new-instance v8, Ljava/lang/Integer;

    const/16 v15, 0x2d7

    invoke-direct {v8, v15}, Ljava/lang/Integer;-><init>(I)V

    const/16 v15, 0x3d

    aput-object v8, v2, v15

    new-instance v8, Ljava/lang/Integer;

    const/16 v15, -0x1f5

    invoke-direct {v8, v15}, Ljava/lang/Integer;-><init>(I)V

    const/16 v15, 0x3e

    aput-object v8, v2, v15

    new-instance v8, Ljava/lang/Integer;

    const/16 v15, -0x2d4

    invoke-direct {v8, v15}, Ljava/lang/Integer;-><init>(I)V

    const/16 v15, 0x3f

    aput-object v8, v2, v15

    new-instance v8, Ljava/lang/Integer;

    const/16 v15, -0x12d1

    invoke-direct {v8, v15}, Ljava/lang/Integer;-><init>(I)V

    const/16 v15, 0x40

    aput-object v8, v2, v15

    new-instance v8, Ljava/lang/Integer;

    const/16 v15, -0x391

    invoke-direct {v8, v15}, Ljava/lang/Integer;-><init>(I)V

    const/16 v15, 0x41

    aput-object v8, v2, v15

    new-instance v8, Ljava/lang/Integer;

    const/16 v15, 0x34c

    invoke-direct {v8, v15}, Ljava/lang/Integer;-><init>(I)V

    const/16 v15, 0x42

    aput-object v8, v2, v15

    new-instance v8, Ljava/lang/Integer;

    const/16 v15, -0x367

    invoke-direct {v8, v15}, Ljava/lang/Integer;-><init>(I)V

    const/16 v15, 0x43

    aput-object v8, v2, v15

    new-instance v8, Ljava/lang/Integer;

    const/16 v15, -0x316

    invoke-direct {v8, v15}, Ljava/lang/Integer;-><init>(I)V

    const/16 v15, 0x44

    aput-object v8, v2, v15

    new-instance v8, Ljava/lang/Integer;

    const/16 v15, 0x9a4

    invoke-direct {v8, v15}, Ljava/lang/Integer;-><init>(I)V

    const/16 v15, 0x45

    aput-object v8, v2, v15

    new-instance v8, Ljava/lang/Integer;

    const/16 v15, -0xc3

    invoke-direct {v8, v15}, Ljava/lang/Integer;-><init>(I)V

    const/16 v15, 0x46

    aput-object v8, v2, v15

    sput-object v2, Lcom/amazon/ebook/util/text/tinysegmenter/TinySegmenterConstants;->BW1_VALS:[Ljava/lang/Integer;

    const-string/jumbo v25, "\u2015\u2015"

    const-string/jumbo v26, "\u308c\u3070"

    const-string/jumbo v27, "\u3068\u3053"

    const-string/jumbo v28, "\u306b\u5bfe"

    const-string v29, "11"

    const-string/jumbo v30, "\u3093\u3060"

    const-string/jumbo v31, "\u306f\u3044"

    const-string/jumbo v32, "\u304f\u306a"

    const-string/jumbo v33, "\u4e00\u90e8"

    const-string/jumbo v34, "\u59d4\u54e1"

    const-string/jumbo v35, "\u306e\u3067"

    const-string/jumbo v36, "\u3067\u3082"

    const-string/jumbo v37, "\u3044\u3046"

    const-string/jumbo v38, "\u306e\u306b"

    const-string/jumbo v39, "\u306f\u304c"

    const-string/jumbo v40, "\u3093\u306a"

    const-string/jumbo v41, "\u65b0\u805e"

    const-string/jumbo v42, "\u3068\u3068"

    const-string/jumbo v43, "\u306e\u306e"

    const-string/jumbo v44, "\u4f1a\u793e"

    const-string/jumbo v45, "\u540c\u515a"

    const-string/jumbo v46, "\u3068\u306e"

    const-string/jumbo v47, "\u3082\u3044"

    const-string/jumbo v48, "\u3081\u3066"

    const-string/jumbo v49, "\u3057\u3044"

    const-string/jumbo v50, "\u306f\u305a"

    const-string/jumbo v51, "\u4e00\u65b9"

    const-string/jumbo v52, "\u3092\u901a"

    const-string/jumbo v53, "\u5c11\u306a"

    const-string/jumbo v54, "\u3057\u304b"

    const-string/jumbo v55, "\u4e0a\u304c"

    const-string/jumbo v56, "\u3055\u308c"

    const-string/jumbo v57, "\u3068\u307f"

    const-string/jumbo v58, "\u2212\u2212"

    const-string/jumbo v59, "\u3068\u3082"

    const-string/jumbo v60, "\u306a\u3044"

    const-string/jumbo v61, "\u672c\u4eba"

    const-string/jumbo v62, "\u3063\u305f"

    const-string/jumbo v63, "\u3055\u3093"

    const-string/jumbo v64, "\u306b\u95a2"

    const-string/jumbo v65, "\u306a\u304c"

    const-string/jumbo v66, "\u3063\u3066"

    const-string/jumbo v67, "\u3063\u3068"

    const-string/jumbo v68, "\u624b\u6a29"

    const-string/jumbo v69, "\u3057\u305f"

    const-string/jumbo v70, "\u304b\u3057"

    const-string/jumbo v71, "\u3089\u304b"

    const-string/jumbo v72, "\u66dc\u65e5"

    const-string/jumbo v73, "\u5e74\u5ea6"

    const-string/jumbo v74, "\u3057\u3066"

    const-string/jumbo v75, "\u305d\u306e"

    const-string/jumbo v76, "\u3057\u306a"

    const-string/jumbo v77, "\u3082\u306e"

    const-string/jumbo v78, "\u4e00\u4eba"

    const-string/jumbo v79, "\u6771\u4eac"

    const-string/jumbo v80, "\u304c\u3044"

    const-string/jumbo v81, "\u3089\u3057"

    const-string/jumbo v82, "\u7c73\u56fd"

    const-string/jumbo v83, "\u4e00\u65e5"

    const-string/jumbo v84, "\u306a\u3069"

    const-string/jumbo v85, "\u306b\u304a"

    const-string/jumbo v86, "\u3046\u304b"

    const-string/jumbo v87, "\u65e5\u7c73"

    const-string/jumbo v88, "\u305f\u3044"

    const-string/jumbo v89, "\u306a\u306e"

    const-string/jumbo v90, "\u3089\u306b"

    const-string/jumbo v91, "\u5927\u962a"

    const-string/jumbo v92, "\u306b\u3057"

    const-string/jumbo v93, "\u5e9c\u770c"

    const-string/jumbo v94, "\u304b\u3082"

    const-string/jumbo v95, "\u308a\u3057"

    const-string/jumbo v96, "\u793e\u4f1a"

    const-string/jumbo v97, "\u304b\u3089"

    const-string/jumbo v98, "\u307e\u3057"

    const-string/jumbo v99, "\u304b\u308c"

    const-string/jumbo v100, "\u3070\u308c"

    const-string/jumbo v101, "\u3066\u3044"

    const-string/jumbo v102, "\u305f\u305f"

    const-string/jumbo v103, "\u306b\u306a"

    const-string/jumbo v104, "\u305f\u3060"

    const-string/jumbo v105, "\u305f\u3061"

    const-string/jumbo v106, "\u7b2c\u306b"

    const-string/jumbo v107, "\u308f\u308c"

    const-string/jumbo v108, "\u3066\u304d"

    const-string/jumbo v109, "\u305f\u3068"

    const-string/jumbo v110, "\u3066\u304f"

    const-string/jumbo v111, "\u306a\u3093"

    const-string/jumbo v112, "\u540c\u65e5"

    const-string v113, ".."

    const-string/jumbo v114, "\u307e\u3067"

    const-string/jumbo v115, "\u304d\u305f"

    const-string/jumbo v116, "\u305f\u306f"

    const-string/jumbo v117, "\u3053\u3068"

    const-string/jumbo v118, "\u7136\u3068"

    const-string/jumbo v119, "\u3053\u306e"

    const-string/jumbo v120, "\u304c\u3089"

    const-string/jumbo v121, "\u308a\u307e"

    const-string/jumbo v122, "\u3067\u3044"

    const-string/jumbo v123, "\u306b\u3088"

    const-string/jumbo v124, "\uff11\uff11"

    const-string/jumbo v125, "\u3067\u304d"

    const-string/jumbo v126, "\u306b\u5f93"

    const-string/jumbo v127, "\u3066\u306f"

    const-string/jumbo v128, "\u7acb\u3066"

    const-string/jumbo v129, "\u3067\u3057"

    const-string/jumbo v130, "\u3067\u3059"

    const-string/jumbo v131, "\u307e\u308c"

    const-string/jumbo v132, "\u308c\u305f"

    const-string/jumbo v133, "\u3066\u3082"

    const-string/jumbo v134, "\u3068\u3044"

    const-string/jumbo v135, "\u5206\u306e"

    const-string/jumbo v136, "\u306e\u304b"

    const-string/jumbo v137, "\u308d\u3046"

    const-string/jumbo v138, "\u51fa\u3066"

    const-string/jumbo v139, "\u65e5\u672c"

    const-string/jumbo v140, "\u308c\u3066"

    const-string/jumbo v141, "\u5e74\u9593"

    const-string/jumbo v142, "\u65e5\u65b0"

    const-string/jumbo v143, "\u671d\u9bae"

    const-string/jumbo v144, "\u3055\u305b"

    filled-new-array/range {v25 .. v144}, [Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/amazon/ebook/util/text/tinysegmenter/TinySegmenterConstants;->BW2_KEYS:[Ljava/lang/String;

    const/16 v2, 0x78

    new-array v2, v2, [Ljava/lang/Integer;

    new-instance v8, Ljava/lang/Integer;

    const/16 v15, -0x1662

    invoke-direct {v8, v15}, Ljava/lang/Integer;-><init>(I)V

    aput-object v8, v2, v3

    new-instance v8, Ljava/lang/Integer;

    const/16 v15, 0x1012

    invoke-direct {v8, v15}, Ljava/lang/Integer;-><init>(I)V

    aput-object v8, v2, v4

    new-instance v8, Ljava/lang/Integer;

    const/16 v15, -0x6d2

    invoke-direct {v8, v15}, Ljava/lang/Integer;-><init>(I)V

    aput-object v8, v2, v6

    new-instance v8, Ljava/lang/Integer;

    const/16 v15, -0x3a5f

    invoke-direct {v8, v15}, Ljava/lang/Integer;-><init>(I)V

    aput-object v8, v2, v7

    new-instance v8, Ljava/lang/Integer;

    const/16 v15, -0x29d

    invoke-direct {v8, v15}, Ljava/lang/Integer;-><init>(I)V

    aput-object v8, v2, v0

    new-instance v8, Ljava/lang/Integer;

    const/16 v15, 0x2d8

    invoke-direct {v8, v15}, Ljava/lang/Integer;-><init>(I)V

    aput-object v8, v2, v9

    new-instance v8, Ljava/lang/Integer;

    const/16 v15, 0x431

    invoke-direct {v8, v15}, Ljava/lang/Integer;-><init>(I)V

    aput-object v8, v2, v5

    new-instance v8, Ljava/lang/Integer;

    const/16 v15, -0x63d

    invoke-direct {v8, v15}, Ljava/lang/Integer;-><init>(I)V

    aput-object v8, v2, v10

    new-instance v8, Ljava/lang/Integer;

    const/16 v15, -0x41b

    invoke-direct {v8, v15}, Ljava/lang/Integer;-><init>(I)V

    aput-object v8, v2, v11

    new-instance v8, Ljava/lang/Integer;

    const/16 v15, -0x4e2

    invoke-direct {v8, v15}, Ljava/lang/Integer;-><init>(I)V

    aput-object v8, v2, v12

    new-instance v8, Ljava/lang/Integer;

    const/16 v15, -0x1b93

    invoke-direct {v8, v15}, Ljava/lang/Integer;-><init>(I)V

    aput-object v8, v2, v13

    new-instance v8, Ljava/lang/Integer;

    const/16 v15, -0x106b

    invoke-direct {v8, v15}, Ljava/lang/Integer;-><init>(I)V

    const/16 v15, 0xb

    aput-object v8, v2, v15

    new-instance v8, Ljava/lang/Integer;

    const/16 v15, -0x649

    invoke-direct {v8, v15}, Ljava/lang/Integer;-><init>(I)V

    const/16 v15, 0xc

    aput-object v8, v2, v15

    new-instance v8, Ljava/lang/Integer;

    const/16 v15, -0x1799

    invoke-direct {v8, v15}, Ljava/lang/Integer;-><init>(I)V

    const/16 v15, 0xd

    aput-object v8, v2, v15

    new-instance v8, Ljava/lang/Integer;

    const/16 v15, -0x409

    invoke-direct {v8, v15}, Ljava/lang/Integer;-><init>(I)V

    aput-object v8, v2, v1

    new-instance v8, Ljava/lang/Integer;

    const/16 v15, -0x1013

    invoke-direct {v8, v15}, Ljava/lang/Integer;-><init>(I)V

    const/16 v15, 0xf

    aput-object v8, v2, v15

    new-instance v8, Ljava/lang/Integer;

    const/16 v15, -0xfe2

    invoke-direct {v8, v15}, Ljava/lang/Integer;-><init>(I)V

    const/16 v15, 0x10

    aput-object v8, v2, v15

    new-instance v8, Ljava/lang/Integer;

    const/16 v15, -0x8e7

    invoke-direct {v8, v15}, Ljava/lang/Integer;-><init>(I)V

    const/16 v15, 0x11

    aput-object v8, v2, v15

    new-instance v8, Ljava/lang/Integer;

    const/16 v15, -0x17ed

    invoke-direct {v8, v15}, Ljava/lang/Integer;-><init>(I)V

    aput-object v8, v2, v14

    new-instance v8, Ljava/lang/Integer;

    const/16 v15, -0x45c

    invoke-direct {v8, v15}, Ljava/lang/Integer;-><init>(I)V

    const/16 v15, 0x13

    aput-object v8, v2, v15

    new-instance v8, Ljava/lang/Integer;

    const/16 v15, 0x3ca

    invoke-direct {v8, v15}, Ljava/lang/Integer;-><init>(I)V

    const/16 v15, 0x14

    aput-object v8, v2, v15

    new-instance v8, Ljava/lang/Integer;

    const/16 v15, 0x2d0

    invoke-direct {v8, v15}, Ljava/lang/Integer;-><init>(I)V

    const/16 v15, 0x15

    aput-object v8, v2, v15

    new-instance v8, Ljava/lang/Integer;

    const/16 v15, 0x8b6

    invoke-direct {v8, v15}, Ljava/lang/Integer;-><init>(I)V

    const/16 v15, 0x16

    aput-object v8, v2, v15

    new-instance v8, Ljava/lang/Integer;

    const/16 v15, -0xc51

    invoke-direct {v8, v15}, Ljava/lang/Integer;-><init>(I)V

    const/16 v15, 0x17

    aput-object v8, v2, v15

    new-instance v8, Ljava/lang/Integer;

    const/16 v15, -0x71b

    invoke-direct {v8, v15}, Ljava/lang/Integer;-><init>(I)V

    const/16 v15, 0x18

    aput-object v8, v2, v15

    new-instance v8, Ljava/lang/Integer;

    const/16 v15, -0x9e4

    invoke-direct {v8, v15}, Ljava/lang/Integer;-><init>(I)V

    const/16 v15, 0x19

    aput-object v8, v2, v15

    new-instance v8, Ljava/lang/Integer;

    const/16 v15, -0x55f

    invoke-direct {v8, v15}, Ljava/lang/Integer;-><init>(I)V

    const/16 v15, 0x1a

    aput-object v8, v2, v15

    new-instance v8, Ljava/lang/Integer;

    const/16 v15, -0x2e65

    invoke-direct {v8, v15}, Ljava/lang/Integer;-><init>(I)V

    const/16 v15, 0x1b

    aput-object v8, v2, v15

    new-instance v8, Ljava/lang/Integer;

    const/16 v15, -0x41a

    invoke-direct {v8, v15}, Ljava/lang/Integer;-><init>(I)V

    const/16 v15, 0x1c

    aput-object v8, v2, v15

    new-instance v8, Ljava/lang/Integer;

    const/16 v15, -0x221

    invoke-direct {v8, v15}, Ljava/lang/Integer;-><init>(I)V

    const/16 v15, 0x1d

    aput-object v8, v2, v15

    new-instance v8, Ljava/lang/Integer;

    const/16 v15, -0x117f

    invoke-direct {v8, v15}, Ljava/lang/Integer;-><init>(I)V

    const/16 v15, 0x1e

    aput-object v8, v2, v15

    new-instance v8, Ljava/lang/Integer;

    const/16 v15, 0x3370

    invoke-direct {v8, v15}, Ljava/lang/Integer;-><init>(I)V

    const/16 v15, 0x1f

    aput-object v8, v2, v15

    new-instance v8, Ljava/lang/Integer;

    const/16 v15, 0x1430

    invoke-direct {v8, v15}, Ljava/lang/Integer;-><init>(I)V

    const/16 v15, 0x20

    aput-object v8, v2, v15

    new-instance v8, Ljava/lang/Integer;

    const/16 v15, -0x3377

    invoke-direct {v8, v15}, Ljava/lang/Integer;-><init>(I)V

    const/16 v15, 0x21

    aput-object v8, v2, v15

    new-instance v8, Ljava/lang/Integer;

    const/16 v15, -0xf65

    invoke-direct {v8, v15}, Ljava/lang/Integer;-><init>(I)V

    const/16 v15, 0x22

    aput-object v8, v2, v15

    new-instance v8, Ljava/lang/Integer;

    const/16 v15, -0x9b8

    invoke-direct {v8, v15}, Ljava/lang/Integer;-><init>(I)V

    const/16 v15, 0x23

    aput-object v8, v2, v15

    new-instance v8, Ljava/lang/Integer;

    const/16 v15, -0xa89

    invoke-direct {v8, v15}, Ljava/lang/Integer;-><init>(I)V

    const/16 v15, 0x24

    aput-object v8, v2, v15

    new-instance v8, Ljava/lang/Integer;

    const/16 v15, 0x11ed

    invoke-direct {v8, v15}, Ljava/lang/Integer;-><init>(I)V

    const/16 v15, 0x25

    aput-object v8, v2, v15

    new-instance v8, Ljava/lang/Integer;

    const/16 v15, -0xf89

    invoke-direct {v8, v15}, Ljava/lang/Integer;-><init>(I)V

    const/16 v15, 0x26

    aput-object v8, v2, v15

    new-instance v8, Ljava/lang/Integer;

    const/16 v15, -0x2c7c

    invoke-direct {v8, v15}, Ljava/lang/Integer;-><init>(I)V

    const/16 v15, 0x27

    aput-object v8, v2, v15

    new-instance v8, Ljava/lang/Integer;

    const/16 v15, -0x521

    invoke-direct {v8, v15}, Ljava/lang/Integer;-><init>(I)V

    const/16 v15, 0x28

    aput-object v8, v2, v15

    new-instance v8, Ljava/lang/Integer;

    const/16 v15, 0x66f

    invoke-direct {v8, v15}, Ljava/lang/Integer;-><init>(I)V

    const/16 v15, 0x29

    aput-object v8, v2, v15

    new-instance v8, Ljava/lang/Integer;

    const/16 v15, -0x82e

    invoke-direct {v8, v15}, Ljava/lang/Integer;-><init>(I)V

    const/16 v15, 0x2a

    aput-object v8, v2, v15

    new-instance v8, Ljava/lang/Integer;

    const/16 v15, -0x7be

    invoke-direct {v8, v15}, Ljava/lang/Integer;-><init>(I)V

    const/16 v15, 0x2b

    aput-object v8, v2, v15

    new-instance v8, Ljava/lang/Integer;

    const/16 v15, 0x13d6

    invoke-direct {v8, v15}, Ljava/lang/Integer;-><init>(I)V

    const/16 v15, 0x2c

    aput-object v8, v2, v15

    new-instance v8, Ljava/lang/Integer;

    const/16 v15, -0x546

    invoke-direct {v8, v15}, Ljava/lang/Integer;-><init>(I)V

    const/16 v15, 0x2d

    aput-object v8, v2, v15

    new-instance v8, Ljava/lang/Integer;

    const/16 v15, -0x3b0

    invoke-direct {v8, v15}, Ljava/lang/Integer;-><init>(I)V

    const/16 v15, 0x2e

    aput-object v8, v2, v15

    new-instance v8, Ljava/lang/Integer;

    const/16 v15, -0x259

    invoke-direct {v8, v15}, Ljava/lang/Integer;-><init>(I)V

    const/16 v15, 0x2f

    aput-object v8, v2, v15

    new-instance v8, Ljava/lang/Integer;

    const/16 v15, -0x21dd

    invoke-direct {v8, v15}, Ljava/lang/Integer;-><init>(I)V

    const/16 v15, 0x30

    aput-object v8, v2, v15

    new-instance v8, Ljava/lang/Integer;

    const/16 v15, 0x3cc

    invoke-direct {v8, v15}, Ljava/lang/Integer;-><init>(I)V

    const/16 v15, 0x31

    aput-object v8, v2, v15

    new-instance v8, Ljava/lang/Integer;

    const/16 v15, -0xea0

    invoke-direct {v8, v15}, Ljava/lang/Integer;-><init>(I)V

    const/16 v15, 0x32

    aput-object v8, v2, v15

    new-instance v8, Ljava/lang/Integer;

    const/16 v15, 0x3ab

    invoke-direct {v8, v15}, Ljava/lang/Integer;-><init>(I)V

    const/16 v15, 0x33

    aput-object v8, v2, v15

    new-instance v8, Ljava/lang/Integer;

    const/16 v15, -0x29d9

    invoke-direct {v8, v15}, Ljava/lang/Integer;-><init>(I)V

    const/16 v15, 0x34

    aput-object v8, v2, v15

    new-instance v8, Ljava/lang/Integer;

    const/16 v15, 0x25a

    invoke-direct {v8, v15}, Ljava/lang/Integer;-><init>(I)V

    const/16 v15, 0x35

    aput-object v8, v2, v15

    new-instance v8, Ljava/lang/Integer;

    const/16 v15, -0x607

    invoke-direct {v8, v15}, Ljava/lang/Integer;-><init>(I)V

    const/16 v15, 0x36

    aput-object v8, v2, v15

    new-instance v8, Ljava/lang/Integer;

    const/16 v15, 0x355

    invoke-direct {v8, v15}, Ljava/lang/Integer;-><init>(I)V

    const/16 v15, 0x37

    aput-object v8, v2, v15

    new-instance v8, Ljava/lang/Integer;

    const/16 v15, -0x64b

    invoke-direct {v8, v15}, Ljava/lang/Integer;-><init>(I)V

    const/16 v15, 0x38

    aput-object v8, v2, v15

    new-instance v8, Ljava/lang/Integer;

    const/16 v15, -0x10ac

    invoke-direct {v8, v15}, Ljava/lang/Integer;-><init>(I)V

    const/16 v15, 0x39

    aput-object v8, v2, v15

    new-instance v8, Ljava/lang/Integer;

    const/16 v15, 0x3ca

    invoke-direct {v8, v15}, Ljava/lang/Integer;-><init>(I)V

    const/16 v15, 0x3a

    aput-object v8, v2, v15

    new-instance v8, Ljava/lang/Integer;

    const/16 v15, -0x196d

    invoke-direct {v8, v15}, Ljava/lang/Integer;-><init>(I)V

    const/16 v15, 0x3b

    aput-object v8, v2, v15

    new-instance v8, Ljava/lang/Integer;

    const/16 v15, -0x64f

    invoke-direct {v8, v15}, Ljava/lang/Integer;-><init>(I)V

    const/16 v15, 0x3c

    aput-object v8, v2, v15

    new-instance v8, Ljava/lang/Integer;

    const/16 v15, 0x9ba

    invoke-direct {v8, v15}, Ljava/lang/Integer;-><init>(I)V

    const/16 v15, 0x3d

    aput-object v8, v2, v15

    new-instance v8, Ljava/lang/Integer;

    const/16 v15, 0xd2c

    invoke-direct {v8, v15}, Ljava/lang/Integer;-><init>(I)V

    const/16 v15, 0x3e

    aput-object v8, v2, v15

    new-instance v8, Ljava/lang/Integer;

    const/16 v15, -0x4e5

    invoke-direct {v8, v15}, Ljava/lang/Integer;-><init>(I)V

    const/16 v15, 0x3f

    aput-object v8, v2, v15

    new-instance v8, Ljava/lang/Integer;

    const/16 v15, 0xa36

    invoke-direct {v8, v15}, Ljava/lang/Integer;-><init>(I)V

    const/16 v15, 0x40

    aput-object v8, v2, v15

    new-instance v8, Ljava/lang/Integer;

    const/16 v15, -0x769

    invoke-direct {v8, v15}, Ljava/lang/Integer;-><init>(I)V

    const/16 v15, 0x41

    aput-object v8, v2, v15

    new-instance v8, Ljava/lang/Integer;

    const/16 v15, -0x9a7

    invoke-direct {v8, v15}, Ljava/lang/Integer;-><init>(I)V

    const/16 v15, 0x42

    aput-object v8, v2, v15

    new-instance v8, Ljava/lang/Integer;

    const/16 v15, 0xabc

    invoke-direct {v8, v15}, Ljava/lang/Integer;-><init>(I)V

    const/16 v15, 0x43

    aput-object v8, v2, v15

    new-instance v8, Ljava/lang/Integer;

    const/16 v15, -0x93b

    invoke-direct {v8, v15}, Ljava/lang/Integer;-><init>(I)V

    const/16 v15, 0x44

    aput-object v8, v2, v15

    new-instance v8, Ljava/lang/Integer;

    const/16 v15, -0x25a

    invoke-direct {v8, v15}, Ljava/lang/Integer;-><init>(I)V

    const/16 v15, 0x45

    aput-object v8, v2, v15

    new-instance v8, Ljava/lang/Integer;

    const/16 v15, 0x28b

    invoke-direct {v8, v15}, Ljava/lang/Integer;-><init>(I)V

    const/16 v15, 0x46

    aput-object v8, v2, v15

    new-instance v8, Ljava/lang/Integer;

    const/16 v15, -0x4fc

    invoke-direct {v8, v15}, Ljava/lang/Integer;-><init>(I)V

    const/16 v15, 0x47

    aput-object v8, v2, v15

    new-instance v8, Ljava/lang/Integer;

    const/16 v15, -0x1c1a

    invoke-direct {v8, v15}, Ljava/lang/Integer;-><init>(I)V

    const/16 v15, 0x48

    aput-object v8, v2, v15

    new-instance v8, Ljava/lang/Integer;

    const/16 v15, -0x524

    invoke-direct {v8, v15}, Ljava/lang/Integer;-><init>(I)V

    const/16 v15, 0x49

    aput-object v8, v2, v15

    new-instance v8, Ljava/lang/Integer;

    const/16 v15, 0x1204

    invoke-direct {v8, v15}, Ljava/lang/Integer;-><init>(I)V

    const/16 v15, 0x4a

    aput-object v8, v2, v15

    new-instance v8, Ljava/lang/Integer;

    const/16 v15, 0x715

    invoke-direct {v8, v15}, Ljava/lang/Integer;-><init>(I)V

    const/16 v15, 0x4b

    aput-object v8, v2, v15

    new-instance v8, Ljava/lang/Integer;

    const/16 v15, 0x1800

    invoke-direct {v8, v15}, Ljava/lang/Integer;-><init>(I)V

    const/16 v15, 0x4c

    aput-object v8, v2, v15

    new-instance v8, Ljava/lang/Integer;

    const/16 v15, -0x296

    invoke-direct {v8, v15}, Ljava/lang/Integer;-><init>(I)V

    const/16 v15, 0x4d

    aput-object v8, v2, v15

    new-instance v8, Ljava/lang/Integer;

    const/16 v15, 0x996

    invoke-direct {v8, v15}, Ljava/lang/Integer;-><init>(I)V

    const/16 v15, 0x4e

    aput-object v8, v2, v15

    new-instance v8, Ljava/lang/Integer;

    const/16 v15, -0xf11

    invoke-direct {v8, v15}, Ljava/lang/Integer;-><init>(I)V

    const/16 v15, 0x4f

    aput-object v8, v2, v15

    new-instance v8, Ljava/lang/Integer;

    const/16 v15, -0x312

    invoke-direct {v8, v15}, Ljava/lang/Integer;-><init>(I)V

    const/16 v15, 0x50

    aput-object v8, v2, v15

    new-instance v8, Ljava/lang/Integer;

    const/16 v15, -0x64c

    invoke-direct {v8, v15}, Ljava/lang/Integer;-><init>(I)V

    const/16 v15, 0x51

    aput-object v8, v2, v15

    new-instance v8, Ljava/lang/Integer;

    const/16 v15, 0x1edd

    invoke-direct {v8, v15}, Ljava/lang/Integer;-><init>(I)V

    const/16 v15, 0x52

    aput-object v8, v2, v15

    new-instance v8, Ljava/lang/Integer;

    const/16 v15, 0xe38

    invoke-direct {v8, v15}, Ljava/lang/Integer;-><init>(I)V

    const/16 v15, 0x53

    aput-object v8, v2, v15

    new-instance v8, Ljava/lang/Integer;

    const/16 v15, 0x4c8

    invoke-direct {v8, v15}, Ljava/lang/Integer;-><init>(I)V

    const/16 v15, 0x54

    aput-object v8, v2, v15

    new-instance v8, Ljava/lang/Integer;

    const/16 v15, 0x9f7

    invoke-direct {v8, v15}, Ljava/lang/Integer;-><init>(I)V

    const/16 v15, 0x55

    aput-object v8, v2, v15

    new-instance v8, Ljava/lang/Integer;

    const/16 v15, 0xc1b

    invoke-direct {v8, v15}, Ljava/lang/Integer;-><init>(I)V

    const/16 v15, 0x56

    aput-object v8, v2, v15

    new-instance v8, Ljava/lang/Integer;

    const/16 v15, -0x391

    invoke-direct {v8, v15}, Ljava/lang/Integer;-><init>(I)V

    const/16 v15, 0x57

    aput-object v8, v2, v15

    new-instance v8, Ljava/lang/Integer;

    const/16 v15, -0x2e2e

    invoke-direct {v8, v15}, Ljava/lang/Integer;-><init>(I)V

    const/16 v15, 0x58

    aput-object v8, v2, v15

    new-instance v8, Ljava/lang/Integer;

    const/16 v15, -0x19dd

    invoke-direct {v8, v15}, Ljava/lang/Integer;-><init>(I)V

    const/16 v15, 0x59

    aput-object v8, v2, v15

    new-instance v8, Ljava/lang/Integer;

    const/16 v15, 0x795

    invoke-direct {v8, v15}, Ljava/lang/Integer;-><init>(I)V

    const/16 v15, 0x5a

    aput-object v8, v2, v15

    new-instance v8, Ljava/lang/Integer;

    const/16 v15, -0x3ab

    invoke-direct {v8, v15}, Ljava/lang/Integer;-><init>(I)V

    const/16 v15, 0x5b

    aput-object v8, v2, v15

    new-instance v8, Ljava/lang/Integer;

    const/16 v15, -0x20c8

    invoke-direct {v8, v15}, Ljava/lang/Integer;-><init>(I)V

    const/16 v15, 0x5c

    aput-object v8, v2, v15

    new-instance v8, Ljava/lang/Integer;

    const/16 v15, -0x568

    invoke-direct {v8, v15}, Ljava/lang/Integer;-><init>(I)V

    const/16 v15, 0x5d

    aput-object v8, v2, v15

    new-instance v8, Ljava/lang/Integer;

    const/16 v15, -0x1061

    invoke-direct {v8, v15}, Ljava/lang/Integer;-><init>(I)V

    const/16 v15, 0x5e

    aput-object v8, v2, v15

    new-instance v8, Ljava/lang/Integer;

    const/16 v15, -0xc7e

    invoke-direct {v8, v15}, Ljava/lang/Integer;-><init>(I)V

    const/16 v15, 0x5f

    aput-object v8, v2, v15

    new-instance v8, Ljava/lang/Integer;

    const/16 v15, 0x654

    invoke-direct {v8, v15}, Ljava/lang/Integer;-><init>(I)V

    const/16 v15, 0x60

    aput-object v8, v2, v15

    new-instance v8, Ljava/lang/Integer;

    const/16 v15, 0xa6a

    invoke-direct {v8, v15}, Ljava/lang/Integer;-><init>(I)V

    const/16 v15, 0x61

    aput-object v8, v2, v15

    new-instance v8, Ljava/lang/Integer;

    const/16 v15, -0x1c44

    invoke-direct {v8, v15}, Ljava/lang/Integer;-><init>(I)V

    const/16 v15, 0x62

    aput-object v8, v2, v15

    new-instance v8, Ljava/lang/Integer;

    const/16 v15, -0x29d

    invoke-direct {v8, v15}, Ljava/lang/Integer;-><init>(I)V

    const/16 v15, 0x63

    aput-object v8, v2, v15

    new-instance v8, Ljava/lang/Integer;

    const/16 v15, -0x5f8

    invoke-direct {v8, v15}, Ljava/lang/Integer;-><init>(I)V

    const/16 v15, 0x64

    aput-object v8, v2, v15

    new-instance v8, Ljava/lang/Integer;

    const/16 v15, -0x1250

    invoke-direct {v8, v15}, Ljava/lang/Integer;-><init>(I)V

    const/16 v15, 0x65

    aput-object v8, v2, v15

    new-instance v8, Ljava/lang/Integer;

    const/16 v15, -0xc26

    invoke-direct {v8, v15}, Ljava/lang/Integer;-><init>(I)V

    const/16 v15, 0x66

    aput-object v8, v2, v15

    new-instance v8, Ljava/lang/Integer;

    const/16 v15, -0x3de

    invoke-direct {v8, v15}, Ljava/lang/Integer;-><init>(I)V

    const/16 v15, 0x67

    aput-object v8, v2, v15

    new-instance v8, Ljava/lang/Integer;

    const/16 v15, -0xef4

    invoke-direct {v8, v15}, Ljava/lang/Integer;-><init>(I)V

    const/16 v15, 0x68

    aput-object v8, v2, v15

    new-instance v8, Ljava/lang/Integer;

    const/16 v15, -0x1299

    invoke-direct {v8, v15}, Ljava/lang/Integer;-><init>(I)V

    const/16 v15, 0x69

    aput-object v8, v2, v15

    new-instance v8, Ljava/lang/Integer;

    const/16 v15, 0x1521

    invoke-direct {v8, v15}, Ljava/lang/Integer;-><init>(I)V

    const/16 v15, 0x6a

    aput-object v8, v2, v15

    new-instance v8, Ljava/lang/Integer;

    const/16 v15, 0x10ae

    invoke-direct {v8, v15}, Ljava/lang/Integer;-><init>(I)V

    const/16 v15, 0x6b

    aput-object v8, v2, v15

    new-instance v8, Ljava/lang/Integer;

    const/16 v15, -0xbf9

    invoke-direct {v8, v15}, Ljava/lang/Integer;-><init>(I)V

    const/16 v15, 0x6c

    aput-object v8, v2, v15

    new-instance v8, Ljava/lang/Integer;

    const/16 v15, 0x762

    invoke-direct {v8, v15}, Ljava/lang/Integer;-><init>(I)V

    const/16 v15, 0x6d

    aput-object v8, v2, v15

    new-instance v8, Ljava/lang/Integer;

    const/16 v15, -0x1e4e

    invoke-direct {v8, v15}, Ljava/lang/Integer;-><init>(I)V

    const/16 v15, 0x6e

    aput-object v8, v2, v15

    new-instance v8, Ljava/lang/Integer;

    const/16 v15, 0x82d

    invoke-direct {v8, v15}, Ljava/lang/Integer;-><init>(I)V

    const/16 v15, 0x6f

    aput-object v8, v2, v15

    new-instance v8, Ljava/lang/Integer;

    const/16 v15, 0x17b3

    invoke-direct {v8, v15}, Ljava/lang/Integer;-><init>(I)V

    const/16 v15, 0x70

    aput-object v8, v2, v15

    new-instance v8, Ljava/lang/Integer;

    const/16 v15, 0x873

    invoke-direct {v8, v15}, Ljava/lang/Integer;-><init>(I)V

    const/16 v15, 0x71

    aput-object v8, v2, v15

    new-instance v8, Ljava/lang/Integer;

    const/16 v15, -0x1b9c

    invoke-direct {v8, v15}, Ljava/lang/Integer;-><init>(I)V

    const/16 v15, 0x72

    aput-object v8, v2, v15

    new-instance v8, Ljava/lang/Integer;

    const/16 v15, 0x351

    invoke-direct {v8, v15}, Ljava/lang/Integer;-><init>(I)V

    const/16 v15, 0x73

    aput-object v8, v2, v15

    new-instance v8, Ljava/lang/Integer;

    const/16 v15, -0x65a

    invoke-direct {v8, v15}, Ljava/lang/Integer;-><init>(I)V

    const/16 v15, 0x74

    aput-object v8, v2, v15

    new-instance v8, Ljava/lang/Integer;

    const/16 v15, -0x2d2

    invoke-direct {v8, v15}, Ljava/lang/Integer;-><init>(I)V

    const/16 v15, 0x75

    aput-object v8, v2, v15

    new-instance v8, Ljava/lang/Integer;

    const/16 v15, -0x933

    invoke-direct {v8, v15}, Ljava/lang/Integer;-><init>(I)V

    const/16 v15, 0x76

    aput-object v8, v2, v15

    new-instance v8, Ljava/lang/Integer;

    const/16 v15, 0x11b5

    invoke-direct {v8, v15}, Ljava/lang/Integer;-><init>(I)V

    const/16 v15, 0x77

    aput-object v8, v2, v15

    sput-object v2, Lcom/amazon/ebook/util/text/tinysegmenter/TinySegmenterConstants;->BW2_VALS:[Ljava/lang/Integer;

    const-string/jumbo v25, "\u3067\u306b"

    const-string/jumbo v26, "\u5e02"

    const-string/jumbo v27, "\u308b\u308b"

    const-string/jumbo v28, "\u3067\u306f"

    const-string/jumbo v29, "\u308c\u3070"

    const-string/jumbo v30, "\u65e5\u3001"

    const-string/jumbo v31, "\u305f."

    const-string/jumbo v32, "\u3068\u3057"

    const-string/jumbo v33, "\u304c\u3001"

    const-string/jumbo v34, "\u3059."

    const-string/jumbo v35, "\u3093\u3060"

    const-string/jumbo v36, "\u306b\u3001"

    const-string/jumbo v37, "\u3044\u3044"

    const-string/jumbo v38, "\u3093\u3067"

    const-string/jumbo v39, "\u3069\u3046"

    const-string/jumbo v40, "\u3044\u3048"

    const-string/jumbo v41, "\u65b0\u805e"

    const-string/jumbo v42, "\u305f\u3002"

    const-string/jumbo v43, "\u3042\u308a"

    const-string/jumbo v44, "\u3042\u308b"

    const-string/jumbo v45, "\u3044\u304f"

    const-string/jumbo v46, "\u308c\u308b"

    const-string/jumbo v47, "\u3068\u306e"

    const-string/jumbo v48, "\u3059\u3002"

    const-string/jumbo v49, "\u305d\u3046"

    const-string/jumbo v50, "\u3057\u3044"

    const-string/jumbo v51, "\u3060."

    const-string/jumbo v52, "\u305a,"

    const-string/jumbo v53, "\u30ab\u6708"

    const-string/jumbo v54, "\u3044\u305f"

    const-string/jumbo v55, "\u3044\u3063"

    const-string/jumbo v56, "\u5927\u4f1a"

    const-string/jumbo v57, "\u3068\u3082"

    const-string/jumbo v58, "\u3055\u3092"

    const-string/jumbo v59, "\u306a\u3044"

    const-string/jumbo v60, "\u3063\u305f"

    const-string/jumbo v61, "\u3060\u3002"

    const-string/jumbo v62, "\u304b\u3051"

    const-string/jumbo v63, "\u3063\u3066"

    const-string/jumbo v64, "\u305a\u3001"

    const-string/jumbo v65, "\u3057\u305f"

    const-string/jumbo v66, "\u306a\u304f"

    const-string/jumbo v67, "\u308c,"

    const-string/jumbo v68, "\u3057\u3066"

    const-string/jumbo v69, "\u3057\u306a"

    const-string/jumbo v70, "\u304b\u3063"

    const-string/jumbo v71, "\u3089\u3057"

    const-string/jumbo v72, "\u3051\u3069"

    const-string/jumbo v73, "\uff76\u6708"

    const-string/jumbo v74, "\u308c\u3001"

    const-string/jumbo v75, "\u304b\u306b"

    const-string/jumbo v76, "\u304c\u304d"

    const-string/jumbo v77, "\u306e,"

    const-string/jumbo v78, "\u306a\u3069"

    const-string/jumbo v79, "\u304c\u3051"

    const-string/jumbo v80, "\u3044\u308b"

    const-string/jumbo v81, "\u305f\u3044"

    const-string/jumbo v82, "\u3057\u307e"

    const-string/jumbo v83, "\u3044\u308f"

    const-string/jumbo v84, "\u4f1a\u8b70"

    const-string/jumbo v85, "\u306b\u3057"

    const-string/jumbo v86, "\u304c\u3063"

    const-string/jumbo v87, "\u306e\u3001"

    const-string/jumbo v88, "\u3046\u3061"

    const-string/jumbo v89, "\u793e\u4f1a"

    const-string/jumbo v90, "\u304b\u3089"

    const-string/jumbo v91, "\u304b\u308a"

    const-string/jumbo v92, "\u3046\u3068"

    const-string/jumbo v93, "\u306e\u5b50"

    const-string/jumbo v94, "\u307e\u3057"

    const-string/jumbo v95, "\u3066\u3044"

    const-string/jumbo v96, "\u306f,"

    const-string/jumbo v97, "\u307e\u3059"

    const-string/jumbo v98, "\u306b\u306a"

    const-string/jumbo v99, "\u3044."

    const-string/jumbo v100, "\u3066\u304a"

    const-string/jumbo v101, "\u308f\u308c"

    const-string/jumbo v102, "\u306b\u306f"

    const-string/jumbo v103, "\u307e\u3063"

    const-string/jumbo v104, "\u3089\u308c"

    const-string/jumbo v105, "\u307e\u3067"

    const-string/jumbo v106, "\u305f\u306e"

    const-string/jumbo v107, "\u304d\u305f"

    const-string/jumbo v108, "\u3057,"

    const-string/jumbo v109, "\u3053\u3068"

    const-string/jumbo v110, "\u306f\u3001"

    const-string/jumbo v111, "\u3079\u304d"

    const-string/jumbo v112, "\u3053\u306e"

    const-string/jumbo v113, "\u3044\u3002"

    const-string/jumbo v114, "\u304c\u3089"

    const-string/jumbo v115, "\u304c\u308a"

    const-string/jumbo v116, "\u304b."

    const-string/jumbo v117, "\u3060\u3063"

    const-string/jumbo v118, "\u3057\u3001"

    const-string/jumbo v119, "\u305f\u308a"

    const-string/jumbo v120, "\u305f\u308b"

    const-string/jumbo v121, "\u3055\u3044"

    const-string/jumbo v122, "\u59cb\u3081"

    const-string/jumbo v123, "\u305a\u306b"

    const-string/jumbo v124, "\u3059\u308b"

    const-string/jumbo v125, "\u3067\u3059"

    const-string/jumbo v126, "\u304b\u3002"

    const-string/jumbo v127, "\u307e\u308c"

    const-string/jumbo v128, "\u65e5,"

    const-string/jumbo v129, "\u3053\u308d"

    const-string/jumbo v130, "\u3042\u305f"

    const-string/jumbo v131, "\u308c\u305f"

    const-string/jumbo v132, "\u3048\u3068"

    const-string/jumbo v133, "\u304c,"

    const-string/jumbo v134, "\u3066\u3082"

    const-string/jumbo v135, "\u3068\u3046"

    const-string/jumbo v136, "\u308c\u3066"

    const-string/jumbo v137, "\u5165\u308a"

    const-string/jumbo v138, "\u306b,"

    filled-new-array/range {v25 .. v138}, [Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/amazon/ebook/util/text/tinysegmenter/TinySegmenterConstants;->BW3_KEYS:[Ljava/lang/String;

    const/16 v2, 0x72

    new-array v2, v2, [Ljava/lang/Integer;

    new-instance v8, Ljava/lang/Integer;

    const/16 v15, -0x5ca

    invoke-direct {v8, v15}, Ljava/lang/Integer;-><init>(I)V

    aput-object v8, v2, v3

    new-instance v8, Ljava/lang/Integer;

    const/16 v15, 0x3c5

    invoke-direct {v8, v15}, Ljava/lang/Integer;-><init>(I)V

    aput-object v8, v2, v4

    new-instance v8, Ljava/lang/Integer;

    const/16 v15, 0xeea

    invoke-direct {v8, v15}, Ljava/lang/Integer;-><init>(I)V

    aput-object v8, v2, v6

    new-instance v8, Ljava/lang/Integer;

    const/16 v15, 0x8f7

    invoke-direct {v8, v15}, Ljava/lang/Integer;-><init>(I)V

    aput-object v8, v2, v7

    new-instance v8, Ljava/lang/Integer;

    const/16 v15, -0xcae

    invoke-direct {v8, v15}, Ljava/lang/Integer;-><init>(I)V

    aput-object v8, v2, v0

    new-instance v8, Ljava/lang/Integer;

    const/16 v15, 0x3ce

    invoke-direct {v8, v15}, Ljava/lang/Integer;-><init>(I)V

    aput-object v8, v2, v9

    new-instance v8, Ljava/lang/Integer;

    const/16 v15, 0x22ab

    invoke-direct {v8, v15}, Ljava/lang/Integer;-><init>(I)V

    aput-object v8, v2, v5

    new-instance v8, Ljava/lang/Integer;

    const/16 v15, 0x8da

    invoke-direct {v8, v15}, Ljava/lang/Integer;-><init>(I)V

    aput-object v8, v2, v10

    new-instance v8, Ljava/lang/Integer;

    const/16 v15, 0x718

    invoke-direct {v8, v15}, Ljava/lang/Integer;-><init>(I)V

    aput-object v8, v2, v11

    new-instance v8, Ljava/lang/Integer;

    const/16 v15, -0x51e

    invoke-direct {v8, v15}, Ljava/lang/Integer;-><init>(I)V

    aput-object v8, v2, v12

    new-instance v8, Ljava/lang/Integer;

    const/16 v15, 0x25e

    invoke-direct {v8, v15}, Ljava/lang/Integer;-><init>(I)V

    aput-object v8, v2, v13

    new-instance v8, Ljava/lang/Integer;

    const/16 v15, -0x3fd

    invoke-direct {v8, v15}, Ljava/lang/Integer;-><init>(I)V

    const/16 v15, 0xb

    aput-object v8, v2, v15

    new-instance v8, Ljava/lang/Integer;

    const/16 v15, 0x14bc

    invoke-direct {v8, v15}, Ljava/lang/Integer;-><init>(I)V

    const/16 v15, 0xc

    aput-object v8, v2, v15

    new-instance v8, Ljava/lang/Integer;

    const/16 v15, 0x31e

    invoke-direct {v8, v15}, Ljava/lang/Integer;-><init>(I)V

    const/16 v15, 0xd

    aput-object v8, v2, v15

    new-instance v8, Ljava/lang/Integer;

    const/16 v15, 0x1238

    invoke-direct {v8, v15}, Ljava/lang/Integer;-><init>(I)V

    aput-object v8, v2, v1

    new-instance v8, Ljava/lang/Integer;

    const/16 v15, 0x81f

    invoke-direct {v8, v15}, Ljava/lang/Integer;-><init>(I)V

    const/16 v15, 0xf

    aput-object v8, v2, v15

    new-instance v8, Ljava/lang/Integer;

    const/16 v15, -0x13bf

    invoke-direct {v8, v15}, Ljava/lang/Integer;-><init>(I)V

    const/16 v15, 0x10

    aput-object v8, v2, v15

    new-instance v8, Ljava/lang/Integer;

    const/16 v15, 0x22ab

    invoke-direct {v8, v15}, Ljava/lang/Integer;-><init>(I)V

    const/16 v15, 0x11

    aput-object v8, v2, v15

    new-instance v8, Ljava/lang/Integer;

    const/16 v15, 0x2cf

    invoke-direct {v8, v15}, Ljava/lang/Integer;-><init>(I)V

    aput-object v8, v2, v14

    new-instance v8, Ljava/lang/Integer;

    const/16 v15, 0xf06

    invoke-direct {v8, v15}, Ljava/lang/Integer;-><init>(I)V

    const/16 v15, 0x13

    aput-object v8, v2, v15

    new-instance v8, Ljava/lang/Integer;

    const/16 v15, 0xbd5

    invoke-direct {v8, v15}, Ljava/lang/Integer;-><init>(I)V

    const/16 v15, 0x14

    aput-object v8, v2, v15

    new-instance v8, Ljava/lang/Integer;

    const/16 v15, 0x443

    invoke-direct {v8, v15}, Ljava/lang/Integer;-><init>(I)V

    const/16 v15, 0x15

    aput-object v8, v2, v15

    new-instance v8, Ljava/lang/Integer;

    const/16 v15, 0x21d

    invoke-direct {v8, v15}, Ljava/lang/Integer;-><init>(I)V

    const/16 v15, 0x16

    aput-object v8, v2, v15

    new-instance v8, Ljava/lang/Integer;

    const/16 v15, -0x51e

    invoke-direct {v8, v15}, Ljava/lang/Integer;-><init>(I)V

    const/16 v15, 0x17

    aput-object v8, v2, v15

    new-instance v8, Ljava/lang/Integer;

    const/16 v15, 0x1ac

    invoke-direct {v8, v15}, Ljava/lang/Integer;-><init>(I)V

    const/16 v15, 0x18

    aput-object v8, v2, v15

    new-instance v8, Ljava/lang/Integer;

    const/16 v15, -0xe82

    invoke-direct {v8, v15}, Ljava/lang/Integer;-><init>(I)V

    const/16 v15, 0x19

    aput-object v8, v2, v15

    new-instance v8, Ljava/lang/Integer;

    const/16 v15, 0x1002

    invoke-direct {v8, v15}, Ljava/lang/Integer;-><init>(I)V

    const/16 v15, 0x1a

    aput-object v8, v2, v15

    new-instance v8, Ljava/lang/Integer;

    const/16 v15, 0xd62

    invoke-direct {v8, v15}, Ljava/lang/Integer;-><init>(I)V

    const/16 v15, 0x1b

    aput-object v8, v2, v15

    new-instance v8, Ljava/lang/Integer;

    const/16 v15, 0x3de

    invoke-direct {v8, v15}, Ljava/lang/Integer;-><init>(I)V

    const/16 v15, 0x1c

    aput-object v8, v2, v15

    new-instance v8, Ljava/lang/Integer;

    const/16 v15, 0x808

    invoke-direct {v8, v15}, Ljava/lang/Integer;-><init>(I)V

    const/16 v15, 0x1d

    aput-object v8, v2, v15

    new-instance v8, Ljava/lang/Integer;

    const/16 v15, 0x75b

    invoke-direct {v8, v15}, Ljava/lang/Integer;-><init>(I)V

    const/16 v15, 0x1e

    aput-object v8, v2, v15

    new-instance v8, Ljava/lang/Integer;

    const/16 v15, 0x8a9

    invoke-direct {v8, v15}, Ljava/lang/Integer;-><init>(I)V

    const/16 v15, 0x1f

    aput-object v8, v2, v15

    new-instance v8, Ljava/lang/Integer;

    const/16 v15, -0xdd7

    invoke-direct {v8, v15}, Ljava/lang/Integer;-><init>(I)V

    const/16 v15, 0x20

    aput-object v8, v2, v15

    new-instance v8, Ljava/lang/Integer;

    const/16 v15, 0x3d0

    invoke-direct {v8, v15}, Ljava/lang/Integer;-><init>(I)V

    const/16 v15, 0x21

    aput-object v8, v2, v15

    new-instance v8, Ljava/lang/Integer;

    const/16 v15, 0x704

    invoke-direct {v8, v15}, Ljava/lang/Integer;-><init>(I)V

    const/16 v15, 0x22

    aput-object v8, v2, v15

    new-instance v8, Ljava/lang/Integer;

    const/16 v15, -0x128c

    invoke-direct {v8, v15}, Ljava/lang/Integer;-><init>(I)V

    const/16 v15, 0x23

    aput-object v8, v2, v15

    new-instance v8, Ljava/lang/Integer;

    const/16 v15, 0x1002

    invoke-direct {v8, v15}, Ljava/lang/Integer;-><init>(I)V

    const/16 v15, 0x24

    aput-object v8, v2, v15

    new-instance v8, Ljava/lang/Integer;

    const/16 v15, -0x2e7

    invoke-direct {v8, v15}, Ljava/lang/Integer;-><init>(I)V

    const/16 v15, 0x25

    aput-object v8, v2, v15

    new-instance v8, Ljava/lang/Integer;

    const/16 v15, 0x12c

    invoke-direct {v8, v15}, Ljava/lang/Integer;-><init>(I)V

    const/16 v15, 0x26

    aput-object v8, v2, v15

    new-instance v8, Ljava/lang/Integer;

    const/16 v15, 0xd62

    invoke-direct {v8, v15}, Ljava/lang/Integer;-><init>(I)V

    const/16 v15, 0x27

    aput-object v8, v2, v15

    new-instance v8, Ljava/lang/Integer;

    const/16 v15, 0xdea

    invoke-direct {v8, v15}, Ljava/lang/Integer;-><init>(I)V

    const/16 v15, 0x28

    aput-object v8, v2, v15

    new-instance v8, Ljava/lang/Integer;

    const/16 v15, -0x387

    invoke-direct {v8, v15}, Ljava/lang/Integer;-><init>(I)V

    const/16 v15, 0x29

    aput-object v8, v2, v15

    new-instance v8, Ljava/lang/Integer;

    const/16 v15, 0x356

    invoke-direct {v8, v15}, Ljava/lang/Integer;-><init>(I)V

    const/16 v15, 0x2a

    aput-object v8, v2, v15

    new-instance v8, Ljava/lang/Integer;

    const/16 v15, 0x5a9

    invoke-direct {v8, v15}, Ljava/lang/Integer;-><init>(I)V

    const/16 v15, 0x2b

    aput-object v8, v2, v15

    new-instance v8, Ljava/lang/Integer;

    const/16 v15, 0xa30

    invoke-direct {v8, v15}, Ljava/lang/Integer;-><init>(I)V

    const/16 v15, 0x2c

    aput-object v8, v2, v15

    new-instance v8, Ljava/lang/Integer;

    const/16 v15, -0x1002

    invoke-direct {v8, v15}, Ljava/lang/Integer;-><init>(I)V

    const/16 v15, 0x2d

    aput-object v8, v2, v15

    new-instance v8, Ljava/lang/Integer;

    const/16 v15, 0x5c7

    invoke-direct {v8, v15}, Ljava/lang/Integer;-><init>(I)V

    const/16 v15, 0x2e

    aput-object v8, v2, v15

    new-instance v8, Ljava/lang/Integer;

    const/16 v15, 0x55e

    invoke-direct {v8, v15}, Ljava/lang/Integer;-><init>(I)V

    const/16 v15, 0x2f

    aput-object v8, v2, v15

    new-instance v8, Ljava/lang/Integer;

    const/16 v15, 0x3de

    invoke-direct {v8, v15}, Ljava/lang/Integer;-><init>(I)V

    const/16 v15, 0x30

    aput-object v8, v2, v15

    new-instance v8, Ljava/lang/Integer;

    const/16 v15, 0x356

    invoke-direct {v8, v15}, Ljava/lang/Integer;-><init>(I)V

    const/16 v15, 0x31

    aput-object v8, v2, v15

    new-instance v8, Ljava/lang/Integer;

    const/16 v15, -0x29d

    invoke-direct {v8, v15}, Ljava/lang/Integer;-><init>(I)V

    const/16 v15, 0x32

    aput-object v8, v2, v15

    new-instance v8, Ljava/lang/Integer;

    const/16 v15, -0x12f7

    invoke-direct {v8, v15}, Ljava/lang/Integer;-><init>(I)V

    const/16 v15, 0x33

    aput-object v8, v2, v15

    new-instance v8, Ljava/lang/Integer;

    const/16 v15, -0x2d4

    invoke-direct {v8, v15}, Ljava/lang/Integer;-><init>(I)V

    const/16 v15, 0x34

    aput-object v8, v2, v15

    new-instance v8, Ljava/lang/Integer;

    const/16 v15, 0x857

    invoke-direct {v8, v15}, Ljava/lang/Integer;-><init>(I)V

    const/16 v15, 0x35

    aput-object v8, v2, v15

    new-instance v8, Ljava/lang/Integer;

    const/16 v15, -0x467

    invoke-direct {v8, v15}, Ljava/lang/Integer;-><init>(I)V

    const/16 v15, 0x36

    aput-object v8, v2, v15

    new-instance v8, Ljava/lang/Integer;

    const/16 v15, 0x15e0

    invoke-direct {v8, v15}, Ljava/lang/Integer;-><init>(I)V

    const/16 v15, 0x37

    aput-object v8, v2, v15

    new-instance v8, Ljava/lang/Integer;

    const/16 v15, -0x252

    invoke-direct {v8, v15}, Ljava/lang/Integer;-><init>(I)V

    const/16 v15, 0x38

    aput-object v8, v2, v15

    new-instance v8, Ljava/lang/Integer;

    const/16 v15, 0x4b0

    invoke-direct {v8, v15}, Ljava/lang/Integer;-><init>(I)V

    const/16 v15, 0x39

    aput-object v8, v2, v15

    new-instance v8, Ljava/lang/Integer;

    const/16 v15, 0x5f7

    invoke-direct {v8, v15}, Ljava/lang/Integer;-><init>(I)V

    const/16 v15, 0x3a

    aput-object v8, v2, v15

    new-instance v8, Ljava/lang/Integer;

    const/16 v15, 0x35c

    invoke-direct {v8, v15}, Ljava/lang/Integer;-><init>(I)V

    const/16 v15, 0x3b

    aput-object v8, v2, v15

    new-instance v8, Ljava/lang/Integer;

    const/16 v15, 0x6eb

    invoke-direct {v8, v15}, Ljava/lang/Integer;-><init>(I)V

    const/16 v15, 0x3c

    aput-object v8, v2, v15

    new-instance v8, Ljava/lang/Integer;

    const/16 v15, -0x391

    invoke-direct {v8, v15}, Ljava/lang/Integer;-><init>(I)V

    const/16 v15, 0x3d

    aput-object v8, v2, v15

    new-instance v8, Ljava/lang/Integer;

    const/16 v15, -0x2d4

    invoke-direct {v8, v15}, Ljava/lang/Integer;-><init>(I)V

    const/16 v15, 0x3e

    aput-object v8, v2, v15

    new-instance v8, Ljava/lang/Integer;

    const/16 v15, 0x45d

    invoke-direct {v8, v15}, Ljava/lang/Integer;-><init>(I)V

    const/16 v15, 0x3f

    aput-object v8, v2, v15

    new-instance v8, Ljava/lang/Integer;

    const/16 v15, 0x7e8

    invoke-direct {v8, v15}, Ljava/lang/Integer;-><init>(I)V

    const/16 v15, 0x40

    aput-object v8, v2, v15

    new-instance v8, Ljava/lang/Integer;

    const/16 v15, 0x1978

    invoke-direct {v8, v15}, Ljava/lang/Integer;-><init>(I)V

    const/16 v15, 0x41

    aput-object v8, v2, v15

    new-instance v8, Ljava/lang/Integer;

    const/16 v15, -0xa6e

    invoke-direct {v8, v15}, Ljava/lang/Integer;-><init>(I)V

    const/16 v15, 0x42

    aput-object v8, v2, v15

    new-instance v8, Ljava/lang/Integer;

    const/16 v15, 0x12be

    invoke-direct {v8, v15}, Ljava/lang/Integer;-><init>(I)V

    const/16 v15, 0x43

    aput-object v8, v2, v15

    new-instance v8, Ljava/lang/Integer;

    const/16 v15, -0x3e8

    invoke-direct {v8, v15}, Ljava/lang/Integer;-><init>(I)V

    const/16 v15, 0x44

    aput-object v8, v2, v15

    new-instance v8, Ljava/lang/Integer;

    const/16 v15, 0x459

    invoke-direct {v8, v15}, Ljava/lang/Integer;-><init>(I)V

    const/16 v15, 0x45

    aput-object v8, v2, v15

    new-instance v8, Ljava/lang/Integer;

    const/16 v15, 0x1860

    invoke-direct {v8, v15}, Ljava/lang/Integer;-><init>(I)V

    const/16 v15, 0x46

    aput-object v8, v2, v15

    new-instance v8, Ljava/lang/Integer;

    const/16 v15, 0x539

    invoke-direct {v8, v15}, Ljava/lang/Integer;-><init>(I)V

    const/16 v15, 0x47

    aput-object v8, v2, v15

    new-instance v8, Ljava/lang/Integer;

    const/16 v15, 0x1b1f

    invoke-direct {v8, v15}, Ljava/lang/Integer;-><init>(I)V

    const/16 v15, 0x48

    aput-object v8, v2, v15

    new-instance v8, Ljava/lang/Integer;

    const/16 v15, 0x772

    invoke-direct {v8, v15}, Ljava/lang/Integer;-><init>(I)V

    const/16 v15, 0x49

    aput-object v8, v2, v15

    new-instance v8, Ljava/lang/Integer;

    const/16 v15, -0x4a1

    invoke-direct {v8, v15}, Ljava/lang/Integer;-><init>(I)V

    const/16 v15, 0x4a

    aput-object v8, v2, v15

    new-instance v8, Ljava/lang/Integer;

    const/16 v15, 0x357

    invoke-direct {v8, v15}, Ljava/lang/Integer;-><init>(I)V

    const/16 v15, 0x4b

    aput-object v8, v2, v15

    new-instance v8, Ljava/lang/Integer;

    const/16 v15, -0x25d

    invoke-direct {v8, v15}, Ljava/lang/Integer;-><init>(I)V

    const/16 v15, 0x4c

    aput-object v8, v2, v15

    new-instance v8, Ljava/lang/Integer;

    const/16 v15, 0xa54

    invoke-direct {v8, v15}, Ljava/lang/Integer;-><init>(I)V

    const/16 v15, 0x4d

    aput-object v8, v2, v15

    new-instance v8, Ljava/lang/Integer;

    const/16 v15, -0x60d

    invoke-direct {v8, v15}, Ljava/lang/Integer;-><init>(I)V

    const/16 v15, 0x4e

    aput-object v8, v2, v15

    new-instance v8, Ljava/lang/Integer;

    const/16 v15, 0x1aa4

    invoke-direct {v8, v15}, Ljava/lang/Integer;-><init>(I)V

    const/16 v15, 0x4f

    aput-object v8, v2, v15

    new-instance v8, Ljava/lang/Integer;

    const/16 v15, 0x180a

    invoke-direct {v8, v15}, Ljava/lang/Integer;-><init>(I)V

    const/16 v15, 0x50

    aput-object v8, v2, v15

    new-instance v8, Ljava/lang/Integer;

    const/16 v15, 0x32c

    invoke-direct {v8, v15}, Ljava/lang/Integer;-><init>(I)V

    const/16 v15, 0x51

    aput-object v8, v2, v15

    new-instance v8, Ljava/lang/Integer;

    const/16 v15, 0x66d

    invoke-direct {v8, v15}, Ljava/lang/Integer;-><init>(I)V

    const/16 v15, 0x52

    aput-object v8, v2, v15

    new-instance v8, Ljava/lang/Integer;

    const/16 v15, 0x615

    invoke-direct {v8, v15}, Ljava/lang/Integer;-><init>(I)V

    const/16 v15, 0x53

    aput-object v8, v2, v15

    new-instance v8, Ljava/lang/Integer;

    const/16 v15, 0x1ce5

    invoke-direct {v8, v15}, Ljava/lang/Integer;-><init>(I)V

    const/16 v15, 0x54

    aput-object v8, v2, v15

    new-instance v8, Ljava/lang/Integer;

    const/16 v15, 0x539

    invoke-direct {v8, v15}, Ljava/lang/Integer;-><init>(I)V

    const/16 v15, 0x55

    aput-object v8, v2, v15

    new-instance v8, Ljava/lang/Integer;

    const/16 v15, 0x885

    invoke-direct {v8, v15}, Ljava/lang/Integer;-><init>(I)V

    const/16 v15, 0x56

    aput-object v8, v2, v15

    new-instance v8, Ljava/lang/Integer;

    const/16 v15, 0x606

    invoke-direct {v8, v15}, Ljava/lang/Integer;-><init>(I)V

    const/16 v15, 0x57

    aput-object v8, v2, v15

    new-instance v8, Ljava/lang/Integer;

    const/16 v15, -0x4a1

    invoke-direct {v8, v15}, Ljava/lang/Integer;-><init>(I)V

    const/16 v15, 0x58

    aput-object v8, v2, v15

    new-instance v8, Ljava/lang/Integer;

    const/16 v15, -0x1371

    invoke-direct {v8, v15}, Ljava/lang/Integer;-><init>(I)V

    const/16 v15, 0x59

    aput-object v8, v2, v15

    new-instance v8, Ljava/lang/Integer;

    const/16 v15, -0x810

    invoke-direct {v8, v15}, Ljava/lang/Integer;-><init>(I)V

    const/16 v15, 0x5a

    aput-object v8, v2, v15

    new-instance v8, Ljava/lang/Integer;

    const/16 v15, 0xb29

    invoke-direct {v8, v15}, Ljava/lang/Integer;-><init>(I)V

    const/16 v15, 0x5b

    aput-object v8, v2, v15

    new-instance v8, Ljava/lang/Integer;

    const/16 v15, 0x3ec

    invoke-direct {v8, v15}, Ljava/lang/Integer;-><init>(I)V

    const/16 v15, 0x5c

    aput-object v8, v2, v15

    new-instance v8, Ljava/lang/Integer;

    const/16 v15, 0x615

    invoke-direct {v8, v15}, Ljava/lang/Integer;-><init>(I)V

    const/16 v15, 0x5d

    aput-object v8, v2, v15

    new-instance v8, Ljava/lang/Integer;

    const/16 v15, -0x49f

    invoke-direct {v8, v15}, Ljava/lang/Integer;-><init>(I)V

    const/16 v15, 0x5e

    aput-object v8, v2, v15

    new-instance v8, Ljava/lang/Integer;

    const/16 v15, -0x355

    invoke-direct {v8, v15}, Ljava/lang/Integer;-><init>(I)V

    const/16 v15, 0x5f

    aput-object v8, v2, v15

    new-instance v8, Ljava/lang/Integer;

    const/16 v15, -0x2ca

    invoke-direct {v8, v15}, Ljava/lang/Integer;-><init>(I)V

    const/16 v15, 0x60

    aput-object v8, v2, v15

    new-instance v8, Ljava/lang/Integer;

    const/16 v15, 0x691

    invoke-direct {v8, v15}, Ljava/lang/Integer;-><init>(I)V

    const/16 v15, 0x61

    aput-object v8, v2, v15

    new-instance v8, Ljava/lang/Integer;

    const/16 v15, 0x349

    invoke-direct {v8, v15}, Ljava/lang/Integer;-><init>(I)V

    const/16 v15, 0x62

    aput-object v8, v2, v15

    new-instance v8, Ljava/lang/Integer;

    const/16 v15, 0x1979

    invoke-direct {v8, v15}, Ljava/lang/Integer;-><init>(I)V

    const/16 v15, 0x63

    aput-object v8, v2, v15

    new-instance v8, Ljava/lang/Integer;

    const/16 v15, 0x59d

    invoke-direct {v8, v15}, Ljava/lang/Integer;-><init>(I)V

    const/16 v15, 0x64

    aput-object v8, v2, v15

    new-instance v8, Ljava/lang/Integer;

    const/16 v15, 0xb29

    invoke-direct {v8, v15}, Ljava/lang/Integer;-><init>(I)V

    const/16 v15, 0x65

    aput-object v8, v2, v15

    new-instance v8, Ljava/lang/Integer;

    const/16 v15, -0x319

    invoke-direct {v8, v15}, Ljava/lang/Integer;-><init>(I)V

    const/16 v15, 0x66

    aput-object v8, v2, v15

    new-instance v8, Ljava/lang/Integer;

    const/16 v15, 0x3ce

    invoke-direct {v8, v15}, Ljava/lang/Integer;-><init>(I)V

    const/16 v15, 0x67

    aput-object v8, v2, v15

    new-instance v8, Ljava/lang/Integer;

    const/16 v15, -0xac5

    invoke-direct {v8, v15}, Ljava/lang/Integer;-><init>(I)V

    const/16 v15, 0x68

    aput-object v8, v2, v15

    new-instance v8, Ljava/lang/Integer;

    const/16 v15, -0x892

    invoke-direct {v8, v15}, Ljava/lang/Integer;-><init>(I)V

    const/16 v15, 0x69

    aput-object v8, v2, v15

    new-instance v8, Ljava/lang/Integer;

    const/16 v15, 0x73a

    invoke-direct {v8, v15}, Ljava/lang/Integer;-><init>(I)V

    const/16 v15, 0x6a

    aput-object v8, v2, v15

    new-instance v8, Ljava/lang/Integer;

    const/16 v15, 0x5ae

    invoke-direct {v8, v15}, Ljava/lang/Integer;-><init>(I)V

    const/16 v15, 0x6b

    aput-object v8, v2, v15

    new-instance v8, Ljava/lang/Integer;

    const/16 v15, 0x718

    invoke-direct {v8, v15}, Ljava/lang/Integer;-><init>(I)V

    const/16 v15, 0x6c

    aput-object v8, v2, v15

    new-instance v8, Ljava/lang/Integer;

    const/16 v15, 0x12e

    invoke-direct {v8, v15}, Ljava/lang/Integer;-><init>(I)V

    const/16 v15, 0x6d

    aput-object v8, v2, v15

    new-instance v8, Ljava/lang/Integer;

    const/16 v15, -0x56b

    invoke-direct {v8, v15}, Ljava/lang/Integer;-><init>(I)V

    const/16 v15, 0x6e

    aput-object v8, v2, v15

    new-instance v8, Ljava/lang/Integer;

    const/16 v15, 0x55f

    invoke-direct {v8, v15}, Ljava/lang/Integer;-><init>(I)V

    const/16 v15, 0x6f

    aput-object v8, v2, v15

    new-instance v8, Ljava/lang/Integer;

    const/16 v15, 0x4d0

    invoke-direct {v8, v15}, Ljava/lang/Integer;-><init>(I)V

    const/16 v15, 0x70

    aput-object v8, v2, v15

    new-instance v8, Ljava/lang/Integer;

    const/16 v15, -0x3fd

    invoke-direct {v8, v15}, Ljava/lang/Integer;-><init>(I)V

    const/16 v15, 0x71

    aput-object v8, v2, v15

    sput-object v2, Lcom/amazon/ebook/util/text/tinysegmenter/TinySegmenterConstants;->BW3_VALS:[Ljava/lang/Integer;

    const-string v25, "HOM"

    const-string v26, "MMH"

    const-string v27, "AAA"

    const-string v28, "IHI"

    const-string v29, "OOI"

    const-string v30, "HHH"

    const-string v31, "IOH"

    const-string v32, "HHM"

    const-string v33, "IOI"

    const-string v34, "HII"

    const-string v35, "HOH"

    const-string v36, "IOM"

    filled-new-array/range {v25 .. v36}, [Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/amazon/ebook/util/text/tinysegmenter/TinySegmenterConstants;->TC1_KEYS:[Ljava/lang/String;

    const/16 v2, 0xc

    new-array v8, v2, [Ljava/lang/Integer;

    new-instance v2, Ljava/lang/Integer;

    const/16 v15, -0x14b

    invoke-direct {v2, v15}, Ljava/lang/Integer;-><init>(I)V

    aput-object v2, v8, v3

    new-instance v2, Ljava/lang/Integer;

    const/16 v15, 0xbb

    invoke-direct {v2, v15}, Ljava/lang/Integer;-><init>(I)V

    aput-object v2, v8, v4

    new-instance v2, Ljava/lang/Integer;

    const/16 v15, 0x445

    invoke-direct {v2, v15}, Ljava/lang/Integer;-><init>(I)V

    aput-object v2, v8, v6

    new-instance v2, Ljava/lang/Integer;

    const/16 v15, 0x491

    invoke-direct {v2, v15}, Ljava/lang/Integer;-><init>(I)V

    aput-object v2, v8, v7

    new-instance v2, Ljava/lang/Integer;

    const/16 v15, -0x728

    invoke-direct {v2, v15}, Ljava/lang/Integer;-><init>(I)V

    aput-object v2, v8, v0

    new-instance v2, Ljava/lang/Integer;

    const/16 v15, 0x405

    invoke-direct {v2, v15}, Ljava/lang/Integer;-><init>(I)V

    aput-object v2, v8, v9

    new-instance v2, Ljava/lang/Integer;

    const/16 v15, -0x8e

    invoke-direct {v2, v15}, Ljava/lang/Integer;-><init>(I)V

    aput-object v2, v8, v5

    new-instance v2, Ljava/lang/Integer;

    const/16 v15, 0x244

    invoke-direct {v2, v15}, Ljava/lang/Integer;-><init>(I)V

    aput-object v2, v8, v10

    new-instance v2, Ljava/lang/Integer;

    const/16 v15, -0x3f7

    invoke-direct {v2, v15}, Ljava/lang/Integer;-><init>(I)V

    aput-object v2, v8, v11

    new-instance v2, Ljava/lang/Integer;

    const/16 v15, 0x3e6

    invoke-direct {v2, v15}, Ljava/lang/Integer;-><init>(I)V

    aput-object v2, v8, v12

    new-instance v2, Ljava/lang/Integer;

    const/16 v15, -0x186

    invoke-direct {v2, v15}, Ljava/lang/Integer;-><init>(I)V

    aput-object v2, v8, v13

    new-instance v2, Ljava/lang/Integer;

    const/16 v15, 0x1d3

    invoke-direct {v2, v15}, Ljava/lang/Integer;-><init>(I)V

    const/16 v15, 0xb

    aput-object v2, v8, v15

    sput-object v8, Lcom/amazon/ebook/util/text/tinysegmenter/TinySegmenterConstants;->TC1_VALS:[Ljava/lang/Integer;

    const-string v25, "IHI"

    const-string v26, "OII"

    const-string v27, "HMM"

    const-string v28, "KKH"

    const-string v29, "HHO"

    const-string v30, "HII"

    filled-new-array/range {v25 .. v30}, [Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/amazon/ebook/util/text/tinysegmenter/TinySegmenterConstants;->TC2_KEYS:[Ljava/lang/String;

    new-array v2, v5, [Ljava/lang/Integer;

    new-instance v8, Ljava/lang/Integer;

    const/16 v15, -0x7ad

    invoke-direct {v8, v15}, Ljava/lang/Integer;-><init>(I)V

    aput-object v8, v2, v3

    new-instance v8, Ljava/lang/Integer;

    const/16 v15, -0xa59

    invoke-direct {v8, v15}, Ljava/lang/Integer;-><init>(I)V

    aput-object v8, v2, v4

    new-instance v8, Ljava/lang/Integer;

    const/16 v15, -0x482

    invoke-direct {v8, v15}, Ljava/lang/Integer;-><init>(I)V

    aput-object v8, v2, v6

    new-instance v8, Ljava/lang/Integer;

    const/16 v15, 0x2bf

    invoke-direct {v8, v15}, Ljava/lang/Integer;-><init>(I)V

    aput-object v8, v2, v7

    new-instance v8, Ljava/lang/Integer;

    const/16 v15, 0x828

    invoke-direct {v8, v15}, Ljava/lang/Integer;-><init>(I)V

    aput-object v8, v2, v0

    new-instance v8, Ljava/lang/Integer;

    const/16 v15, -0x3ff

    invoke-direct {v8, v15}, Ljava/lang/Integer;-><init>(I)V

    aput-object v8, v2, v9

    sput-object v2, Lcom/amazon/ebook/util/text/tinysegmenter/TinySegmenterConstants;->TC2_VALS:[Ljava/lang/Integer;

    const-string v25, "HHH"

    const-string v26, "HHI"

    const-string v27, "KOK"

    const-string v28, "IOI"

    const-string v29, "IIH"

    const-string v30, "AAA"

    const-string v31, "KKA"

    const-string v32, "IIM"

    const-string v33, "MHH"

    const-string v34, "OHO"

    const-string v35, "KKH"

    const-string v36, "KHH"

    const-string v37, "MHM"

    const-string v38, "MHO"

    const-string v39, "IHH"

    const-string v40, "IHI"

    const-string v41, "MMH"

    const-string v42, "IHO"

    const-string v43, "HOH"

    const-string v44, "NNH"

    const-string v45, "HII"

    const-string v46, "HIK"

    const-string v47, "NNO"

    filled-new-array/range {v25 .. v47}, [Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/amazon/ebook/util/text/tinysegmenter/TinySegmenterConstants;->TC3_KEYS:[Ljava/lang/String;

    const/16 v2, 0x17

    new-array v2, v2, [Ljava/lang/Integer;

    new-instance v8, Ljava/lang/Integer;

    const/16 v15, 0x15a

    invoke-direct {v8, v15}, Ljava/lang/Integer;-><init>(I)V

    aput-object v8, v2, v3

    new-instance v8, Ljava/lang/Integer;

    const/16 v15, -0x155

    invoke-direct {v8, v15}, Ljava/lang/Integer;-><init>(I)V

    aput-object v8, v2, v4

    new-instance v8, Ljava/lang/Integer;

    const/16 v15, -0x3f1

    invoke-direct {v8, v15}, Ljava/lang/Integer;-><init>(I)V

    aput-object v8, v2, v6

    new-instance v8, Ljava/lang/Integer;

    const/16 v15, -0x21e

    invoke-direct {v8, v15}, Ljava/lang/Integer;-><init>(I)V

    aput-object v8, v2, v7

    new-instance v8, Ljava/lang/Integer;

    const/16 v15, -0x339

    invoke-direct {v8, v15}, Ljava/lang/Integer;-><init>(I)V

    aput-object v8, v2, v0

    new-instance v8, Ljava/lang/Integer;

    const/16 v15, -0x126

    invoke-direct {v8, v15}, Ljava/lang/Integer;-><init>(I)V

    aput-object v8, v2, v9

    new-instance v8, Ljava/lang/Integer;

    const/16 v15, 0x1eb

    invoke-direct {v8, v15}, Ljava/lang/Integer;-><init>(I)V

    aput-object v8, v2, v5

    new-instance v8, Ljava/lang/Integer;

    const/16 v15, -0x40b

    invoke-direct {v8, v15}, Ljava/lang/Integer;-><init>(I)V

    aput-object v8, v2, v10

    new-instance v8, Ljava/lang/Integer;

    const/16 v15, -0xa86

    invoke-direct {v8, v15}, Ljava/lang/Integer;-><init>(I)V

    aput-object v8, v2, v11

    new-instance v8, Ljava/lang/Integer;

    const/16 v15, -0xd41

    invoke-direct {v8, v15}, Ljava/lang/Integer;-><init>(I)V

    aput-object v8, v2, v12

    new-instance v8, Ljava/lang/Integer;

    const/16 v15, -0x4c1

    invoke-direct {v8, v15}, Ljava/lang/Integer;-><init>(I)V

    aput-object v8, v2, v13

    new-instance v8, Ljava/lang/Integer;

    const/16 v15, -0x4c0

    invoke-direct {v8, v15}, Ljava/lang/Integer;-><init>(I)V

    const/16 v15, 0xb

    aput-object v8, v2, v15

    new-instance v8, Ljava/lang/Integer;

    const/16 v15, -0x1c9

    invoke-direct {v8, v15}, Ljava/lang/Integer;-><init>(I)V

    const/16 v15, 0xc

    aput-object v8, v2, v15

    new-instance v8, Ljava/lang/Integer;

    const/16 v15, 0x7b

    invoke-direct {v8, v15}, Ljava/lang/Integer;-><init>(I)V

    const/16 v15, 0xd

    aput-object v8, v2, v15

    new-instance v8, Ljava/lang/Integer;

    const/16 v15, 0x80

    invoke-direct {v8, v15}, Ljava/lang/Integer;-><init>(I)V

    aput-object v8, v2, v1

    new-instance v8, Ljava/lang/Integer;

    const/16 v15, -0xbe1

    invoke-direct {v8, v15}, Ljava/lang/Integer;-><init>(I)V

    const/16 v15, 0xf

    aput-object v8, v2, v15

    new-instance v8, Ljava/lang/Integer;

    const/16 v15, -0x1d7

    invoke-direct {v8, v15}, Ljava/lang/Integer;-><init>(I)V

    const/16 v15, 0x10

    aput-object v8, v2, v15

    new-instance v8, Ljava/lang/Integer;

    const/16 v15, -0x78f

    invoke-direct {v8, v15}, Ljava/lang/Integer;-><init>(I)V

    const/16 v15, 0x11

    aput-object v8, v2, v15

    new-instance v8, Ljava/lang/Integer;

    const/16 v15, -0x5ce

    invoke-direct {v8, v15}, Ljava/lang/Integer;-><init>(I)V

    aput-object v8, v2, v14

    new-instance v8, Ljava/lang/Integer;

    const/16 v15, -0x699

    invoke-direct {v8, v15}, Ljava/lang/Integer;-><init>(I)V

    const/16 v15, 0x13

    aput-object v8, v2, v15

    new-instance v8, Ljava/lang/Integer;

    const/16 v15, -0x440

    invoke-direct {v8, v15}, Ljava/lang/Integer;-><init>(I)V

    const/16 v15, 0x14

    aput-object v8, v2, v15

    new-instance v8, Ljava/lang/Integer;

    const/16 v15, 0x2db

    invoke-direct {v8, v15}, Ljava/lang/Integer;-><init>(I)V

    const/16 v15, 0x15

    aput-object v8, v2, v15

    new-instance v8, Ljava/lang/Integer;

    const/16 v15, 0x296

    invoke-direct {v8, v15}, Ljava/lang/Integer;-><init>(I)V

    const/16 v15, 0x16

    aput-object v8, v2, v15

    sput-object v2, Lcom/amazon/ebook/util/text/tinysegmenter/TinySegmenterConstants;->TC3_VALS:[Ljava/lang/Integer;

    const-string v25, "MOM"

    const-string v26, "HHH"

    const-string v27, "HHI"

    const-string v28, "HHK"

    const-string v29, "HHM"

    const-string v30, "IIH"

    const-string v31, "HHN"

    const-string v32, "III"

    const-string v33, "HHO"

    const-string v34, "KKA"

    const-string v35, "IOO"

    const-string v36, "MHH"

    const-string v37, "IIO"

    const-string v38, "MHI"

    const-string v39, "KKK"

    const-string v40, "IHH"

    const-string v41, "MMH"

    const-string v42, "IHO"

    const-string v43, "HOH"

    const-string v44, "MMM"

    const-string v45, "HIH"

    const-string v46, "HII"

    const-string v47, "KAK"

    filled-new-array/range {v25 .. v47}, [Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/amazon/ebook/util/text/tinysegmenter/TinySegmenterConstants;->TC4_KEYS:[Ljava/lang/String;

    const/16 v2, 0x17

    new-array v2, v2, [Ljava/lang/Integer;

    new-instance v8, Ljava/lang/Integer;

    const/16 v15, 0x349

    invoke-direct {v8, v15}, Ljava/lang/Integer;-><init>(I)V

    aput-object v8, v2, v3

    new-instance v8, Ljava/lang/Integer;

    const/16 v15, -0xcb

    invoke-direct {v8, v15}, Ljava/lang/Integer;-><init>(I)V

    aput-object v8, v2, v4

    new-instance v8, Ljava/lang/Integer;

    const/16 v15, 0x540

    invoke-direct {v8, v15}, Ljava/lang/Integer;-><init>(I)V

    aput-object v8, v2, v6

    new-instance v8, Ljava/lang/Integer;

    const/16 v15, 0x16d

    invoke-direct {v8, v15}, Ljava/lang/Integer;-><init>(I)V

    aput-object v8, v2, v7

    new-instance v8, Ljava/lang/Integer;

    const/16 v15, -0x7a

    invoke-direct {v8, v15}, Ljava/lang/Integer;-><init>(I)V

    aput-object v8, v2, v0

    new-instance v8, Ljava/lang/Integer;

    const/16 v15, 0x141

    invoke-direct {v8, v15}, Ljava/lang/Integer;-><init>(I)V

    aput-object v8, v2, v9

    new-instance v8, Ljava/lang/Integer;

    const/16 v15, 0xb6

    invoke-direct {v8, v15}, Ljava/lang/Integer;-><init>(I)V

    aput-object v8, v2, v5

    new-instance v8, Ljava/lang/Integer;

    const/16 v15, 0x5d9

    invoke-direct {v8, v15}, Ljava/lang/Integer;-><init>(I)V

    aput-object v8, v2, v10

    new-instance v8, Ljava/lang/Integer;

    const/16 v15, 0x29d

    invoke-direct {v8, v15}, Ljava/lang/Integer;-><init>(I)V

    aput-object v8, v2, v11

    new-instance v8, Ljava/lang/Integer;

    const/16 v15, 0xd3a

    invoke-direct {v8, v15}, Ljava/lang/Integer;-><init>(I)V

    aput-object v8, v2, v12

    new-instance v8, Ljava/lang/Integer;

    const/16 v15, 0x36

    invoke-direct {v8, v15}, Ljava/lang/Integer;-><init>(I)V

    aput-object v8, v2, v13

    new-instance v8, Ljava/lang/Integer;

    const/16 v15, -0x195

    invoke-direct {v8, v15}, Ljava/lang/Integer;-><init>(I)V

    const/16 v15, 0xb

    aput-object v8, v2, v15

    new-instance v8, Ljava/lang/Integer;

    const/16 v15, 0x290

    invoke-direct {v8, v15}, Ljava/lang/Integer;-><init>(I)V

    const/16 v15, 0xc

    aput-object v8, v2, v15

    new-instance v8, Ljava/lang/Integer;

    const/16 v15, 0xc9

    invoke-direct {v8, v15}, Ljava/lang/Integer;-><init>(I)V

    const/16 v15, 0xd

    aput-object v8, v2, v15

    new-instance v8, Ljava/lang/Integer;

    const/16 v15, 0xbf9

    invoke-direct {v8, v15}, Ljava/lang/Integer;-><init>(I)V

    aput-object v8, v2, v1

    new-instance v8, Ljava/lang/Integer;

    const/16 v15, 0x2b7

    invoke-direct {v8, v15}, Ljava/lang/Integer;-><init>(I)V

    const/16 v15, 0xf

    aput-object v8, v2, v15

    new-instance v8, Ljava/lang/Integer;

    const/16 v15, -0xf1

    invoke-direct {v8, v15}, Ljava/lang/Integer;-><init>(I)V

    const/16 v15, 0x10

    aput-object v8, v2, v15

    new-instance v8, Ljava/lang/Integer;

    const/16 v15, -0x914

    invoke-direct {v8, v15}, Ljava/lang/Integer;-><init>(I)V

    const/16 v15, 0x11

    aput-object v8, v2, v15

    new-instance v8, Ljava/lang/Integer;

    const/16 v15, 0x1be

    invoke-direct {v8, v15}, Ljava/lang/Integer;-><init>(I)V

    aput-object v8, v2, v14

    new-instance v8, Ljava/lang/Integer;

    const/16 v15, 0x295

    invoke-direct {v8, v15}, Ljava/lang/Integer;-><init>(I)V

    const/16 v15, 0x13

    aput-object v8, v2, v15

    new-instance v8, Ljava/lang/Integer;

    const/16 v15, 0x324

    invoke-direct {v8, v15}, Ljava/lang/Integer;-><init>(I)V

    const/16 v15, 0x14

    aput-object v8, v2, v15

    new-instance v8, Ljava/lang/Integer;

    const/16 v15, 0x2a7

    invoke-direct {v8, v15}, Ljava/lang/Integer;-><init>(I)V

    const/16 v15, 0x15

    aput-object v8, v2, v15

    new-instance v8, Ljava/lang/Integer;

    const/16 v15, 0x12ed

    invoke-direct {v8, v15}, Ljava/lang/Integer;-><init>(I)V

    const/16 v15, 0x16

    aput-object v8, v2, v15

    sput-object v2, Lcom/amazon/ebook/util/text/tinysegmenter/TinySegmenterConstants;->TC4_VALS:[Ljava/lang/Integer;

    const-string v25, "BHIH"

    const-string v26, "OHHH"

    const-string v27, "BOHH"

    const-string v28, "OIIH"

    const-string v29, "BNHH"

    const-string v30, "OHIH"

    const-string v31, "BIHH"

    const-string v32, "BHHH"

    const-string v33, "BHHI"

    const-string v34, "OAKK"

    const-string v35, "BIII"

    const-string v36, "BOOO"

    const-string v37, "OIHI"

    filled-new-array/range {v25 .. v37}, [Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/amazon/ebook/util/text/tinysegmenter/TinySegmenterConstants;->TQ1_KEYS:[Ljava/lang/String;

    const/16 v2, 0xd

    new-array v8, v2, [Ljava/lang/Integer;

    new-instance v2, Ljava/lang/Integer;

    const/16 v15, -0x84

    invoke-direct {v2, v15}, Ljava/lang/Integer;-><init>(I)V

    aput-object v2, v8, v3

    new-instance v2, Ljava/lang/Integer;

    const/16 v15, 0x119

    invoke-direct {v2, v15}, Ljava/lang/Integer;-><init>(I)V

    aput-object v2, v8, v4

    new-instance v2, Ljava/lang/Integer;

    const/16 v15, 0xe1

    invoke-direct {v2, v15}, Ljava/lang/Integer;-><init>(I)V

    aput-object v2, v8, v6

    new-instance v2, Ljava/lang/Integer;

    const/16 v15, -0x44

    invoke-direct {v2, v15}, Ljava/lang/Integer;-><init>(I)V

    aput-object v2, v8, v7

    new-instance v2, Ljava/lang/Integer;

    const/16 v15, -0x2e8

    invoke-direct {v2, v15}, Ljava/lang/Integer;-><init>(I)V

    aput-object v2, v8, v0

    new-instance v2, Ljava/lang/Integer;

    const/16 v15, 0xf9

    invoke-direct {v2, v15}, Ljava/lang/Integer;-><init>(I)V

    aput-object v2, v8, v9

    new-instance v2, Ljava/lang/Integer;

    const/16 v15, 0x3c

    invoke-direct {v2, v15}, Ljava/lang/Integer;-><init>(I)V

    aput-object v2, v8, v5

    new-instance v2, Ljava/lang/Integer;

    const/16 v15, -0xe3

    invoke-direct {v2, v15}, Ljava/lang/Integer;-><init>(I)V

    aput-object v2, v8, v10

    new-instance v2, Ljava/lang/Integer;

    const/16 v15, 0x13c

    invoke-direct {v2, v15}, Ljava/lang/Integer;-><init>(I)V

    aput-object v2, v8, v11

    new-instance v2, Ljava/lang/Integer;

    const/16 v15, 0x1e2

    invoke-direct {v2, v15}, Ljava/lang/Integer;-><init>(I)V

    aput-object v2, v8, v12

    new-instance v2, Ljava/lang/Integer;

    const/16 v15, 0x63b

    invoke-direct {v2, v15}, Ljava/lang/Integer;-><init>(I)V

    aput-object v2, v8, v13

    new-instance v2, Ljava/lang/Integer;

    const/16 v15, -0x38c

    invoke-direct {v2, v15}, Ljava/lang/Integer;-><init>(I)V

    const/16 v15, 0xb

    aput-object v2, v8, v15

    new-instance v2, Ljava/lang/Integer;

    const/16 v15, 0xc8

    invoke-direct {v2, v15}, Ljava/lang/Integer;-><init>(I)V

    const/16 v15, 0xc

    aput-object v2, v8, v15

    sput-object v8, Lcom/amazon/ebook/util/text/tinysegmenter/TinySegmenterConstants;->TQ1_VALS:[Ljava/lang/Integer;

    const-string v2, "BIHH"

    const-string v8, "BKAK"

    const-string v15, "BOOO"

    const-string v14, "BIII"

    filled-new-array {v2, v8, v15, v14}, [Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/amazon/ebook/util/text/tinysegmenter/TinySegmenterConstants;->TQ2_KEYS:[Ljava/lang/String;

    new-array v2, v0, [Ljava/lang/Integer;

    new-instance v8, Ljava/lang/Integer;

    const/16 v14, -0x579

    invoke-direct {v8, v14}, Ljava/lang/Integer;-><init>(I)V

    aput-object v8, v2, v3

    new-instance v8, Ljava/lang/Integer;

    const/16 v14, -0x21f

    invoke-direct {v8, v14}, Ljava/lang/Integer;-><init>(I)V

    aput-object v8, v2, v4

    new-instance v8, Ljava/lang/Integer;

    const/16 v14, -0x15d7

    invoke-direct {v8, v14}, Ljava/lang/Integer;-><init>(I)V

    aput-object v8, v2, v6

    new-instance v8, Ljava/lang/Integer;

    const/16 v14, -0x409

    invoke-direct {v8, v14}, Ljava/lang/Integer;-><init>(I)V

    aput-object v8, v2, v7

    sput-object v2, Lcom/amazon/ebook/util/text/tinysegmenter/TinySegmenterConstants;->TQ2_VALS:[Ljava/lang/Integer;

    const-string v26, "BHIH"

    const-string v27, "BHII"

    const-string v28, "OHII"

    const-string v29, "OKAK"

    const-string v30, "OOII"

    const-string v31, "BHHH"

    const-string v32, "OHHH"

    const-string v33, "OHHI"

    const-string v34, "BHHM"

    const-string v35, "BIIH"

    const-string v36, "BIII"

    const-string v37, "OIIH"

    const-string v38, "OOHH"

    const-string v39, "OKKA"

    const-string v40, "BMHI"

    const-string v41, "BMHM"

    const-string v42, "OHMH"

    const-string v43, "OKHH"

    const-string v44, "BOMH"

    const-string v45, "OIHH"

    filled-new-array/range {v26 .. v45}, [Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/amazon/ebook/util/text/tinysegmenter/TinySegmenterConstants;->TQ3_KEYS:[Ljava/lang/String;

    const/16 v2, 0x14

    new-array v8, v2, [Ljava/lang/Integer;

    new-instance v2, Ljava/lang/Integer;

    const/16 v14, 0xde

    invoke-direct {v2, v14}, Ljava/lang/Integer;-><init>(I)V

    aput-object v2, v8, v3

    new-instance v2, Ljava/lang/Integer;

    const/16 v14, -0x1f8

    invoke-direct {v2, v14}, Ljava/lang/Integer;-><init>(I)V

    aput-object v2, v8, v4

    new-instance v2, Ljava/lang/Integer;

    const/16 v14, 0x3e5

    invoke-direct {v2, v14}, Ljava/lang/Integer;-><init>(I)V

    aput-object v2, v8, v6

    new-instance v2, Ljava/lang/Integer;

    const/16 v14, 0xae8

    invoke-direct {v2, v14}, Ljava/lang/Integer;-><init>(I)V

    aput-object v2, v8, v7

    new-instance v2, Ljava/lang/Integer;

    const/16 v14, -0x2ad

    invoke-direct {v2, v14}, Ljava/lang/Integer;-><init>(I)V

    aput-object v2, v8, v0

    new-instance v2, Ljava/lang/Integer;

    const/16 v14, 0x1de

    invoke-direct {v2, v14}, Ljava/lang/Integer;-><init>(I)V

    aput-object v2, v8, v9

    new-instance v2, Ljava/lang/Integer;

    const/16 v14, 0x15a

    invoke-direct {v2, v14}, Ljava/lang/Integer;-><init>(I)V

    aput-object v2, v8, v5

    new-instance v2, Ljava/lang/Integer;

    const/16 v14, 0x6c1

    invoke-direct {v2, v14}, Ljava/lang/Integer;-><init>(I)V

    aput-object v2, v8, v10

    new-instance v2, Ljava/lang/Integer;

    const/16 v14, -0x431

    invoke-direct {v2, v14}, Ljava/lang/Integer;-><init>(I)V

    aput-object v2, v8, v11

    new-instance v2, Ljava/lang/Integer;

    const/16 v14, -0x74

    invoke-direct {v2, v14}, Ljava/lang/Integer;-><init>(I)V

    aput-object v2, v8, v12

    new-instance v2, Ljava/lang/Integer;

    const/16 v14, -0x69

    invoke-direct {v2, v14}, Ljava/lang/Integer;-><init>(I)V

    aput-object v2, v8, v13

    new-instance v2, Ljava/lang/Integer;

    const/16 v14, 0x540

    invoke-direct {v2, v14}, Ljava/lang/Integer;-><init>(I)V

    const/16 v14, 0xb

    aput-object v2, v8, v14

    new-instance v2, Ljava/lang/Integer;

    const/16 v14, 0x6e

    invoke-direct {v2, v14}, Ljava/lang/Integer;-><init>(I)V

    const/16 v14, 0xc

    aput-object v2, v8, v14

    new-instance v2, Ljava/lang/Integer;

    const/16 v14, 0x2a7

    invoke-direct {v2, v14}, Ljava/lang/Integer;-><init>(I)V

    const/16 v14, 0xd

    aput-object v2, v8, v14

    new-instance v2, Ljava/lang/Integer;

    const/16 v14, -0x35f

    invoke-direct {v2, v14}, Ljava/lang/Integer;-><init>(I)V

    aput-object v2, v8, v1

    new-instance v2, Ljava/lang/Integer;

    const/16 v14, -0x1d0

    invoke-direct {v2, v14}, Ljava/lang/Integer;-><init>(I)V

    const/16 v14, 0xf

    aput-object v2, v8, v14

    new-instance v2, Ljava/lang/Integer;

    const/16 v14, 0x1e1

    invoke-direct {v2, v14}, Ljava/lang/Integer;-><init>(I)V

    const/16 v14, 0x10

    aput-object v2, v8, v14

    new-instance v2, Ljava/lang/Integer;

    const/16 v14, 0x24b

    invoke-direct {v2, v14}, Ljava/lang/Integer;-><init>(I)V

    const/16 v14, 0x11

    aput-object v2, v8, v14

    new-instance v2, Ljava/lang/Integer;

    const/16 v14, 0x26c

    invoke-direct {v2, v14}, Ljava/lang/Integer;-><init>(I)V

    const/16 v14, 0x12

    aput-object v2, v8, v14

    new-instance v2, Ljava/lang/Integer;

    const/16 v14, 0x26f

    invoke-direct {v2, v14}, Ljava/lang/Integer;-><init>(I)V

    const/16 v14, 0x13

    aput-object v2, v8, v14

    sput-object v8, Lcom/amazon/ebook/util/text/tinysegmenter/TinySegmenterConstants;->TQ3_VALS:[Ljava/lang/Integer;

    const-string v26, "BHII"

    const-string v27, "OHHH"

    const-string v28, "OHHI"

    const-string v29, "OKAK"

    const-string v30, "OIIH"

    const-string v31, "OIII"

    const-string v32, "OHHO"

    const-string v33, "OHIH"

    const-string v34, "BHHH"

    const-string v35, "OAKK"

    const-string v36, "BIIH"

    const-string v37, "BIII"

    const-string v38, "OAAA"

    const-string v39, "OIHH"

    const-string v40, "BHHM"

    const-string v41, "OIHI"

    filled-new-array/range {v26 .. v41}, [Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/amazon/ebook/util/text/tinysegmenter/TinySegmenterConstants;->TQ4_KEYS:[Ljava/lang/String;

    const/16 v2, 0x10

    new-array v8, v2, [Ljava/lang/Integer;

    new-instance v2, Ljava/lang/Integer;

    const/16 v14, -0x3c6

    invoke-direct {v2, v14}, Ljava/lang/Integer;-><init>(I)V

    aput-object v2, v8, v3

    new-instance v2, Ljava/lang/Integer;

    const/16 v14, -0x126

    invoke-direct {v2, v14}, Ljava/lang/Integer;-><init>(I)V

    aput-object v2, v8, v4

    new-instance v2, Ljava/lang/Integer;

    const/16 v14, 0x98e

    invoke-direct {v2, v14}, Ljava/lang/Integer;-><init>(I)V

    aput-object v2, v8, v6

    new-instance v2, Ljava/lang/Integer;

    const/16 v14, -0x1fdc

    invoke-direct {v2, v14}, Ljava/lang/Integer;-><init>(I)V

    aput-object v2, v8, v7

    new-instance v2, Ljava/lang/Integer;

    const/16 v14, 0x272

    invoke-direct {v2, v14}, Ljava/lang/Integer;-><init>(I)V

    aput-object v2, v8, v0

    new-instance v2, Ljava/lang/Integer;

    const/16 v14, -0xfa7

    invoke-direct {v2, v14}, Ljava/lang/Integer;-><init>(I)V

    aput-object v2, v8, v9

    new-instance v2, Ljava/lang/Integer;

    const/16 v14, 0x1e0

    invoke-direct {v2, v14}, Ljava/lang/Integer;-><init>(I)V

    aput-object v2, v8, v5

    new-instance v2, Ljava/lang/Integer;

    const/16 v14, -0x625

    invoke-direct {v2, v14}, Ljava/lang/Integer;-><init>(I)V

    aput-object v2, v8, v10

    new-instance v2, Ljava/lang/Integer;

    const/16 v14, -0x2d1

    invoke-direct {v2, v14}, Ljava/lang/Integer;-><init>(I)V

    aput-object v2, v8, v11

    new-instance v2, Ljava/lang/Integer;

    const/16 v14, 0xb4

    invoke-direct {v2, v14}, Ljava/lang/Integer;-><init>(I)V

    aput-object v2, v8, v12

    new-instance v2, Ljava/lang/Integer;

    const/16 v14, -0x25f

    invoke-direct {v2, v14}, Ljava/lang/Integer;-><init>(I)V

    aput-object v2, v8, v13

    new-instance v2, Ljava/lang/Integer;

    const/16 v14, -0x885

    invoke-direct {v2, v14}, Ljava/lang/Integer;-><init>(I)V

    const/16 v14, 0xb

    aput-object v2, v8, v14

    new-instance v2, Ljava/lang/Integer;

    const/16 v14, -0xacb

    invoke-direct {v2, v14}, Ljava/lang/Integer;-><init>(I)V

    const/16 v14, 0xc

    aput-object v2, v8, v14

    new-instance v2, Ljava/lang/Integer;

    const/16 v14, 0x78f

    invoke-direct {v2, v14}, Ljava/lang/Integer;-><init>(I)V

    const/16 v14, 0xd

    aput-object v2, v8, v14

    new-instance v2, Ljava/lang/Integer;

    const/16 v14, -0xe14

    invoke-direct {v2, v14}, Ljava/lang/Integer;-><init>(I)V

    aput-object v2, v8, v1

    new-instance v2, Ljava/lang/Integer;

    const/16 v14, -0x1ed

    invoke-direct {v2, v14}, Ljava/lang/Integer;-><init>(I)V

    const/16 v14, 0xf

    aput-object v2, v8, v14

    sput-object v8, Lcom/amazon/ebook/util/text/tinysegmenter/TinySegmenterConstants;->TQ4_VALS:[Ljava/lang/Integer;

    const-string/jumbo v2, "\u6771\u4eac\u90fd"

    const-string/jumbo v8, "\u306b\u3064\u3044"

    filled-new-array {v2, v8}, [Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/amazon/ebook/util/text/tinysegmenter/TinySegmenterConstants;->TW1_KEYS:[Ljava/lang/String;

    new-array v2, v6, [Ljava/lang/Integer;

    new-instance v8, Ljava/lang/Integer;

    const/16 v14, 0x7ea

    invoke-direct {v8, v14}, Ljava/lang/Integer;-><init>(I)V

    aput-object v8, v2, v3

    new-instance v8, Ljava/lang/Integer;

    const/16 v14, -0x1249

    invoke-direct {v8, v14}, Ljava/lang/Integer;-><init>(I)V

    aput-object v8, v2, v4

    sput-object v2, Lcom/amazon/ebook/util/text/tinysegmenter/TinySegmenterConstants;->TW1_VALS:[Ljava/lang/Integer;

    const-string/jumbo v26, "\u3060\u3063\u3066"

    const-string/jumbo v27, "\u3057\u3087\u3046"

    const-string/jumbo v28, "\u3068\u3057\u3066"

    const-string/jumbo v29, "\u3042\u308b\u7a0b"

    const-string/jumbo v30, "\u5927\u304d\u306a"

    const-string/jumbo v31, "\u305d\u306e\u5f8c"

    const-string/jumbo v32, "\u3068\u3082\u306b"

    const-string/jumbo v33, "\u3053\u308d\u304c"

    const-string/jumbo v34, "\u5bfe\u3057\u3066"

    const-string/jumbo v35, "\u3082\u306e\u3067"

    const-string/jumbo v36, "\u793e\u4f1a\u515a"

    const-string/jumbo v37, "\u3066\u3044\u305f"

    const-string/jumbo v38, "\u4e00\u6c17\u306b"

    const-string/jumbo v39, "\u3044\u3063\u305f"

    const-string/jumbo v40, "\u521d\u3081\u3066"

    const-string/jumbo v41, "\u540c\u6642\u306b"

    filled-new-array/range {v26 .. v41}, [Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/amazon/ebook/util/text/tinysegmenter/TinySegmenterConstants;->TW2_KEYS:[Ljava/lang/String;

    const/16 v2, 0x10

    new-array v8, v2, [Ljava/lang/Integer;

    new-instance v2, Ljava/lang/Integer;

    const/16 v14, -0x419

    invoke-direct {v2, v14}, Ljava/lang/Integer;-><init>(I)V

    aput-object v2, v8, v3

    new-instance v2, Ljava/lang/Integer;

    const/16 v14, 0xf21

    invoke-direct {v2, v14}, Ljava/lang/Integer;-><init>(I)V

    aput-object v2, v8, v4

    new-instance v2, Ljava/lang/Integer;

    const/16 v14, -0x1231

    invoke-direct {v2, v14}, Ljava/lang/Integer;-><init>(I)V

    aput-object v2, v8, v6

    new-instance v2, Ljava/lang/Integer;

    const/16 v14, -0x801

    invoke-direct {v2, v14}, Ljava/lang/Integer;-><init>(I)V

    aput-object v2, v8, v7

    new-instance v2, Ljava/lang/Integer;

    const/16 v14, -0x4e7

    invoke-direct {v2, v14}, Ljava/lang/Integer;-><init>(I)V

    aput-object v2, v8, v0

    new-instance v2, Ljava/lang/Integer;

    const/16 v14, -0x114e

    invoke-direct {v2, v14}, Ljava/lang/Integer;-><init>(I)V

    aput-object v2, v8, v9

    new-instance v2, Ljava/lang/Integer;

    const/16 v14, -0x11a5

    invoke-direct {v2, v14}, Ljava/lang/Integer;-><init>(I)V

    aput-object v2, v8, v5

    new-instance v2, Ljava/lang/Integer;

    const/16 v14, -0x982

    invoke-direct {v2, v14}, Ljava/lang/Integer;-><init>(I)V

    aput-object v2, v8, v10

    new-instance v2, Ljava/lang/Integer;

    const/16 v14, -0xaa1

    invoke-direct {v2, v14}, Ljava/lang/Integer;-><init>(I)V

    aput-object v2, v8, v11

    new-instance v2, Ljava/lang/Integer;

    const/16 v14, 0x75a

    invoke-direct {v2, v14}, Ljava/lang/Integer;-><init>(I)V

    aput-object v2, v8, v12

    new-instance v2, Ljava/lang/Integer;

    const/16 v14, -0xc90

    invoke-direct {v2, v14}, Ljava/lang/Integer;-><init>(I)V

    aput-object v2, v8, v13

    new-instance v2, Ljava/lang/Integer;

    const/16 v14, 0x729

    invoke-direct {v2, v14}, Ljava/lang/Integer;-><init>(I)V

    const/16 v14, 0xb

    aput-object v2, v8, v14

    new-instance v2, Ljava/lang/Integer;

    const/16 v14, -0x318

    invoke-direct {v2, v14}, Ljava/lang/Integer;-><init>(I)V

    const/16 v14, 0xc

    aput-object v2, v8, v14

    new-instance v2, Ljava/lang/Integer;

    const/16 v14, -0x4e8

    invoke-direct {v2, v14}, Ljava/lang/Integer;-><init>(I)V

    const/16 v14, 0xd

    aput-object v2, v8, v14

    new-instance v2, Ljava/lang/Integer;

    const/16 v14, -0x5e8

    invoke-direct {v2, v14}, Ljava/lang/Integer;-><init>(I)V

    aput-object v2, v8, v1

    new-instance v2, Ljava/lang/Integer;

    const/16 v14, -0x1fa1

    invoke-direct {v2, v14}, Ljava/lang/Integer;-><init>(I)V

    const/16 v14, 0xf

    aput-object v2, v8, v14

    sput-object v8, Lcom/amazon/ebook/util/text/tinysegmenter/TinySegmenterConstants;->TW2_VALS:[Ljava/lang/Integer;

    const-string/jumbo v26, "\u306e\u3067\u3001"

    const-string/jumbo v27, "\u3068\u3057\u3066"

    const-string/jumbo v28, "\u306e\u3082\u306e"

    const-string/jumbo v29, "\u306b\u3068\u3063"

    const-string/jumbo v30, "\u3044\u305f\u3060"

    const-string/jumbo v31, "\u306b\u3064\u3044"

    const-string/jumbo v32, "\u3057\u3066\u3044"

    const-string/jumbo v33, "\u306e\u3067,"

    const-string/jumbo v34, "\u5341\u4e8c\u6708"

    const-string/jumbo v35, "\u308c\u304b\u3089"

    const-string/jumbo v36, "\u306b\u5f53\u305f"

    filled-new-array/range {v26 .. v36}, [Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/amazon/ebook/util/text/tinysegmenter/TinySegmenterConstants;->TW3_KEYS:[Ljava/lang/String;

    const/16 v2, 0xb

    new-array v8, v2, [Ljava/lang/Integer;

    new-instance v2, Ljava/lang/Integer;

    const/16 v14, -0x2d7

    invoke-direct {v2, v14}, Ljava/lang/Integer;-><init>(I)V

    aput-object v2, v8, v3

    new-instance v2, Ljava/lang/Integer;

    const/16 v14, -0x10da

    invoke-direct {v2, v14}, Ljava/lang/Integer;-><init>(I)V

    aput-object v2, v8, v4

    new-instance v2, Ljava/lang/Integer;

    const/16 v14, -0x258

    invoke-direct {v2, v14}, Ljava/lang/Integer;-><init>(I)V

    aput-object v2, v8, v6

    new-instance v2, Ljava/lang/Integer;

    const/16 v14, -0x1765

    invoke-direct {v2, v14}, Ljava/lang/Integer;-><init>(I)V

    aput-object v2, v8, v7

    new-instance v2, Ljava/lang/Integer;

    const/16 v14, -0x6c6

    invoke-direct {v2, v14}, Ljava/lang/Integer;-><init>(I)V

    aput-object v2, v8, v0

    new-instance v2, Ljava/lang/Integer;

    const/16 v14, -0x156b

    invoke-direct {v2, v14}, Ljava/lang/Integer;-><init>(I)V

    aput-object v2, v8, v9

    new-instance v2, Ljava/lang/Integer;

    const/16 v14, 0x522

    invoke-direct {v2, v14}, Ljava/lang/Integer;-><init>(I)V

    aput-object v2, v8, v5

    new-instance v2, Ljava/lang/Integer;

    const/16 v14, -0x2d7

    invoke-direct {v2, v14}, Ljava/lang/Integer;-><init>(I)V

    aput-object v2, v8, v10

    new-instance v2, Ljava/lang/Integer;

    const/16 v14, -0x8ef

    invoke-direct {v2, v14}, Ljava/lang/Integer;-><init>(I)V

    aput-object v2, v8, v11

    new-instance v2, Ljava/lang/Integer;

    const/16 v14, -0xea8

    invoke-direct {v2, v14}, Ljava/lang/Integer;-><init>(I)V

    aput-object v2, v8, v12

    new-instance v2, Ljava/lang/Integer;

    const/16 v14, -0x1867

    invoke-direct {v2, v14}, Ljava/lang/Integer;-><init>(I)V

    aput-object v2, v8, v13

    sput-object v8, Lcom/amazon/ebook/util/text/tinysegmenter/TinySegmenterConstants;->TW3_VALS:[Ljava/lang/Integer;

    const-string/jumbo v26, "\u304b\u3089\u306a"

    const-string/jumbo v27, "\u307e\u3057\u305f"

    const-string/jumbo v28, "\u3068\u3044\u3046"

    const-string/jumbo v29, "\u3044\u3046."

    const-string/jumbo v30, "\u3088\u3046\u3068"

    const-string/jumbo v31, "\u3088\u308b\u3068"

    const-string/jumbo v32, "\u305f\u304c,"

    const-string/jumbo v33, "\u3066\u3044\u308b"

    const-string/jumbo v34, "\u3057\u3066\u3044"

    const-string/jumbo v35, "\u3044\u3046\u3002"

    const-string/jumbo v36, "\u307e\u305b\u3093"

    const-string/jumbo v37, "\u305f\u304c\u3001"

    filled-new-array/range {v26 .. v37}, [Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/amazon/ebook/util/text/tinysegmenter/TinySegmenterConstants;->TW4_KEYS:[Ljava/lang/String;

    const/16 v2, 0xc

    new-array v8, v2, [Ljava/lang/Integer;

    new-instance v2, Ljava/lang/Integer;

    const/16 v14, -0x92c

    invoke-direct {v2, v14}, Ljava/lang/Integer;-><init>(I)V

    aput-object v2, v8, v3

    new-instance v2, Ljava/lang/Integer;

    const/16 v14, 0x15a7

    invoke-direct {v2, v14}, Ljava/lang/Integer;-><init>(I)V

    aput-object v2, v8, v4

    new-instance v2, Ljava/lang/Integer;

    const/16 v14, 0x545

    invoke-direct {v2, v14}, Ljava/lang/Integer;-><init>(I)V

    aput-object v2, v8, v6

    new-instance v2, Ljava/lang/Integer;

    const/16 v14, 0x2180

    invoke-direct {v2, v14}, Ljava/lang/Integer;-><init>(I)V

    aput-object v2, v8, v7

    new-instance v2, Ljava/lang/Integer;

    const/16 v14, -0x10a2

    invoke-direct {v2, v14}, Ljava/lang/Integer;-><init>(I)V

    aput-object v2, v8, v0

    new-instance v2, Ljava/lang/Integer;

    const/16 v14, 0x16e9

    invoke-direct {v2, v14}, Ljava/lang/Integer;-><init>(I)V

    aput-object v2, v8, v9

    new-instance v2, Ljava/lang/Integer;

    const/16 v14, 0x5ec

    invoke-direct {v2, v14}, Ljava/lang/Integer;-><init>(I)V

    aput-object v2, v8, v5

    new-instance v2, Ljava/lang/Integer;

    const/16 v14, 0x602

    invoke-direct {v2, v14}, Ljava/lang/Integer;-><init>(I)V

    aput-object v2, v8, v10

    new-instance v2, Ljava/lang/Integer;

    const/16 v14, 0xb8e

    invoke-direct {v2, v14}, Ljava/lang/Integer;-><init>(I)V

    aput-object v2, v8, v11

    new-instance v2, Ljava/lang/Integer;

    const/16 v14, 0x2180

    invoke-direct {v2, v14}, Ljava/lang/Integer;-><init>(I)V

    aput-object v2, v8, v12

    new-instance v2, Ljava/lang/Integer;

    const/16 v14, 0x449

    invoke-direct {v2, v14}, Ljava/lang/Integer;-><init>(I)V

    aput-object v2, v8, v13

    new-instance v2, Ljava/lang/Integer;

    const/16 v14, 0x5ec

    invoke-direct {v2, v14}, Ljava/lang/Integer;-><init>(I)V

    const/16 v14, 0xb

    aput-object v2, v8, v14

    sput-object v8, Lcom/amazon/ebook/util/text/tinysegmenter/TinySegmenterConstants;->TW4_VALS:[Ljava/lang/Integer;

    const-string v2, "M"

    const-string v8, "O"

    const-string v14, "K"

    const-string v15, "A"

    filled-new-array {v2, v8, v14, v15}, [Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/amazon/ebook/util/text/tinysegmenter/TinySegmenterConstants;->UC1_KEYS:[Ljava/lang/String;

    new-array v2, v0, [Ljava/lang/Integer;

    new-instance v8, Ljava/lang/Integer;

    const/16 v14, 0x285

    invoke-direct {v8, v14}, Ljava/lang/Integer;-><init>(I)V

    aput-object v8, v2, v3

    new-instance v8, Ljava/lang/Integer;

    const/16 v14, -0x1f9

    invoke-direct {v8, v14}, Ljava/lang/Integer;-><init>(I)V

    aput-object v8, v2, v4

    new-instance v8, Ljava/lang/Integer;

    const/16 v14, 0x5d

    invoke-direct {v8, v14}, Ljava/lang/Integer;-><init>(I)V

    aput-object v8, v2, v6

    new-instance v8, Ljava/lang/Integer;

    const/16 v14, 0x1e4

    invoke-direct {v8, v14}, Ljava/lang/Integer;-><init>(I)V

    aput-object v8, v2, v7

    sput-object v2, Lcom/amazon/ebook/util/text/tinysegmenter/TinySegmenterConstants;->UC1_VALS:[Ljava/lang/Integer;

    const-string v26, "M"

    const-string v27, "N"

    const-string v28, "O"

    const-string v29, "H"

    const-string v30, "I"

    const-string v31, "A"

    filled-new-array/range {v26 .. v31}, [Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/amazon/ebook/util/text/tinysegmenter/TinySegmenterConstants;->UC2_KEYS:[Ljava/lang/String;

    new-array v2, v5, [Ljava/lang/Integer;

    new-instance v8, Ljava/lang/Integer;

    const/16 v14, 0xf93

    invoke-direct {v8, v14}, Ljava/lang/Integer;-><init>(I)V

    aput-object v8, v2, v3

    new-instance v8, Ljava/lang/Integer;

    const/16 v14, 0x168f

    invoke-direct {v8, v14}, Ljava/lang/Integer;-><init>(I)V

    aput-object v8, v2, v4

    new-instance v8, Ljava/lang/Integer;

    const/16 v14, 0x286

    invoke-direct {v8, v14}, Ljava/lang/Integer;-><init>(I)V

    aput-object v8, v2, v6

    new-instance v8, Ljava/lang/Integer;

    const/16 v14, 0x423

    invoke-direct {v8, v14}, Ljava/lang/Integer;-><init>(I)V

    aput-object v8, v2, v7

    new-instance v8, Ljava/lang/Integer;

    const/16 v14, 0x199

    invoke-direct {v8, v14}, Ljava/lang/Integer;-><init>(I)V

    aput-object v8, v2, v0

    new-instance v8, Ljava/lang/Integer;

    const/16 v14, 0x333

    invoke-direct {v8, v14}, Ljava/lang/Integer;-><init>(I)V

    aput-object v8, v2, v9

    sput-object v2, Lcom/amazon/ebook/util/text/tinysegmenter/TinySegmenterConstants;->UC2_VALS:[Ljava/lang/Integer;

    const-string v2, "A"

    const-string v8, "I"

    filled-new-array {v2, v8}, [Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/amazon/ebook/util/text/tinysegmenter/TinySegmenterConstants;->UC3_KEYS:[Ljava/lang/String;

    new-array v2, v6, [Ljava/lang/Integer;

    new-instance v8, Ljava/lang/Integer;

    const/16 v14, -0x55a

    invoke-direct {v8, v14}, Ljava/lang/Integer;-><init>(I)V

    aput-object v8, v2, v3

    new-instance v8, Ljava/lang/Integer;

    const/16 v14, 0x907

    invoke-direct {v8, v14}, Ljava/lang/Integer;-><init>(I)V

    aput-object v8, v2, v4

    sput-object v2, Lcom/amazon/ebook/util/text/tinysegmenter/TinySegmenterConstants;->UC3_VALS:[Ljava/lang/Integer;

    const-string v26, "M"

    const-string v27, "N"

    const-string v28, "O"

    const-string v29, "H"

    const-string v30, "I"

    const-string v31, "K"

    const-string v32, "A"

    filled-new-array/range {v26 .. v32}, [Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/amazon/ebook/util/text/tinysegmenter/TinySegmenterConstants;->UC4_KEYS:[Ljava/lang/String;

    new-array v2, v10, [Ljava/lang/Integer;

    new-instance v8, Ljava/lang/Integer;

    const/16 v14, 0xded

    invoke-direct {v8, v14}, Ljava/lang/Integer;-><init>(I)V

    aput-object v8, v2, v3

    new-instance v8, Ljava/lang/Integer;

    const/16 v14, 0xf24

    invoke-direct {v8, v14}, Ljava/lang/Integer;-><init>(I)V

    aput-object v8, v2, v4

    new-instance v8, Ljava/lang/Integer;

    const/16 v14, 0x19f6

    invoke-direct {v8, v14}, Ljava/lang/Integer;-><init>(I)V

    aput-object v8, v2, v6

    new-instance v8, Ljava/lang/Integer;

    const/16 v14, 0x711

    invoke-direct {v8, v14}, Ljava/lang/Integer;-><init>(I)V

    aput-object v8, v2, v7

    new-instance v8, Ljava/lang/Integer;

    const/16 v14, -0x408

    invoke-direct {v8, v14}, Ljava/lang/Integer;-><init>(I)V

    aput-object v8, v2, v0

    new-instance v8, Ljava/lang/Integer;

    const/16 v14, -0xd7a

    invoke-direct {v8, v14}, Ljava/lang/Integer;-><init>(I)V

    aput-object v8, v2, v9

    new-instance v8, Ljava/lang/Integer;

    const/16 v14, -0xa53

    invoke-direct {v8, v14}, Ljava/lang/Integer;-><init>(I)V

    aput-object v8, v2, v5

    sput-object v2, Lcom/amazon/ebook/util/text/tinysegmenter/TinySegmenterConstants;->UC4_VALS:[Ljava/lang/Integer;

    const-string v2, "M"

    const-string v8, "O"

    const-string v14, "H"

    const-string v15, "I"

    const-string v1, "K"

    filled-new-array {v2, v8, v14, v15, v1}, [Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/amazon/ebook/util/text/tinysegmenter/TinySegmenterConstants;->UC5_KEYS:[Ljava/lang/String;

    new-array v1, v9, [Ljava/lang/Integer;

    new-instance v2, Ljava/lang/Integer;

    const/16 v8, 0x21b

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    aput-object v2, v1, v3

    new-instance v2, Ljava/lang/Integer;

    const/16 v8, -0x33f

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    aput-object v2, v1, v4

    new-instance v2, Ljava/lang/Integer;

    const/16 v8, 0x139

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    aput-object v2, v1, v6

    new-instance v2, Ljava/lang/Integer;

    const/16 v8, -0x4d6

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    aput-object v2, v1, v7

    new-instance v2, Ljava/lang/Integer;

    const/16 v8, -0x31f

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    aput-object v2, v1, v0

    sput-object v1, Lcom/amazon/ebook/util/text/tinysegmenter/TinySegmenterConstants;->UC5_VALS:[Ljava/lang/Integer;

    const-string v1, "M"

    const-string v2, "O"

    const-string v8, "H"

    const-string v14, "I"

    const-string v15, "K"

    filled-new-array {v1, v2, v8, v14, v15}, [Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/amazon/ebook/util/text/tinysegmenter/TinySegmenterConstants;->UC6_KEYS:[Ljava/lang/String;

    new-array v1, v9, [Ljava/lang/Integer;

    new-instance v2, Ljava/lang/Integer;

    const/16 v8, 0xf7

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    aput-object v2, v1, v3

    new-instance v2, Ljava/lang/Integer;

    const/16 v8, -0x183

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    aput-object v2, v1, v4

    new-instance v2, Ljava/lang/Integer;

    const/16 v8, -0x1fa

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    aput-object v2, v1, v6

    new-instance v2, Ljava/lang/Integer;

    const/16 v8, -0xfd

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    aput-object v2, v1, v7

    new-instance v2, Ljava/lang/Integer;

    const/16 v8, 0x57

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    aput-object v2, v1, v0

    sput-object v1, Lcom/amazon/ebook/util/text/tinysegmenter/TinySegmenterConstants;->UC6_VALS:[Ljava/lang/Integer;

    const-string v1, "O"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/amazon/ebook/util/text/tinysegmenter/TinySegmenterConstants;->UP1_KEYS:[Ljava/lang/String;

    new-array v1, v4, [Ljava/lang/Integer;

    new-instance v2, Ljava/lang/Integer;

    const/16 v8, -0xd6

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    aput-object v2, v1, v3

    sput-object v1, Lcom/amazon/ebook/util/text/tinysegmenter/TinySegmenterConstants;->UP1_VALS:[Ljava/lang/Integer;

    const-string v1, "B"

    const-string v2, "O"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/amazon/ebook/util/text/tinysegmenter/TinySegmenterConstants;->UP2_KEYS:[Ljava/lang/String;

    new-array v1, v6, [Ljava/lang/Integer;

    new-instance v2, Ljava/lang/Integer;

    const/16 v8, 0x45

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    aput-object v2, v1, v3

    new-instance v2, Ljava/lang/Integer;

    const/16 v8, 0x3a7

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    aput-object v2, v1, v4

    sput-object v1, Lcom/amazon/ebook/util/text/tinysegmenter/TinySegmenterConstants;->UP2_VALS:[Ljava/lang/Integer;

    const-string v1, "B"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/amazon/ebook/util/text/tinysegmenter/TinySegmenterConstants;->UP3_KEYS:[Ljava/lang/String;

    new-array v1, v4, [Ljava/lang/Integer;

    new-instance v2, Ljava/lang/Integer;

    const/16 v8, 0xbd

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    aput-object v2, v1, v3

    sput-object v1, Lcom/amazon/ebook/util/text/tinysegmenter/TinySegmenterConstants;->UP3_VALS:[Ljava/lang/Integer;

    const-string v27, "BH"

    const-string v28, "BI"

    const-string v29, "BK"

    const-string v30, "BN"

    const-string v31, "BO"

    const-string v32, "OH"

    const-string v33, "OI"

    const-string v34, "OK"

    const-string v35, "OO"

    filled-new-array/range {v27 .. v35}, [Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/amazon/ebook/util/text/tinysegmenter/TinySegmenterConstants;->UQ1_KEYS:[Ljava/lang/String;

    new-array v1, v12, [Ljava/lang/Integer;

    new-instance v2, Ljava/lang/Integer;

    const/16 v8, 0x15

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    aput-object v2, v1, v3

    new-instance v2, Ljava/lang/Integer;

    const/16 v8, -0xc

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    aput-object v2, v1, v4

    new-instance v2, Ljava/lang/Integer;

    const/16 v8, -0x63

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    aput-object v2, v1, v6

    new-instance v2, Ljava/lang/Integer;

    const/16 v8, 0x8e

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    aput-object v2, v1, v7

    new-instance v2, Ljava/lang/Integer;

    const/16 v8, -0x38

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    aput-object v2, v1, v0

    new-instance v2, Ljava/lang/Integer;

    const/16 v8, -0x5f

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    aput-object v2, v1, v9

    new-instance v2, Ljava/lang/Integer;

    const/16 v8, 0x1dd

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    aput-object v2, v1, v5

    new-instance v2, Ljava/lang/Integer;

    const/16 v8, 0x19a

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    aput-object v2, v1, v10

    new-instance v2, Ljava/lang/Integer;

    const/16 v8, -0x976

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    aput-object v2, v1, v11

    sput-object v1, Lcom/amazon/ebook/util/text/tinysegmenter/TinySegmenterConstants;->UQ1_VALS:[Ljava/lang/Integer;

    const-string v1, "BH"

    const-string v2, "BI"

    const-string v8, "OK"

    filled-new-array {v1, v2, v8}, [Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/amazon/ebook/util/text/tinysegmenter/TinySegmenterConstants;->UQ2_KEYS:[Ljava/lang/String;

    new-array v1, v7, [Ljava/lang/Integer;

    new-instance v2, Ljava/lang/Integer;

    const/16 v8, 0xd8

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    aput-object v2, v1, v3

    new-instance v2, Ljava/lang/Integer;

    const/16 v8, 0x71

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    aput-object v2, v1, v4

    new-instance v2, Ljava/lang/Integer;

    const/16 v8, 0x6df

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    aput-object v2, v1, v6

    sput-object v1, Lcom/amazon/ebook/util/text/tinysegmenter/TinySegmenterConstants;->UQ2_VALS:[Ljava/lang/Integer;

    const-string v27, "BH"

    const-string v28, "BI"

    const-string v29, "BK"

    const-string v30, "BM"

    const-string v31, "BN"

    const-string v32, "BO"

    const-string v33, "OI"

    const-string v34, "BA"

    const-string v35, "ON"

    filled-new-array/range {v27 .. v35}, [Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/amazon/ebook/util/text/tinysegmenter/TinySegmenterConstants;->UQ3_KEYS:[Ljava/lang/String;

    new-array v1, v12, [Ljava/lang/Integer;

    new-instance v2, Ljava/lang/Integer;

    const/16 v8, 0x2a

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    aput-object v2, v1, v3

    new-instance v2, Ljava/lang/Integer;

    const/16 v8, 0x779

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    aput-object v2, v1, v4

    new-instance v2, Ljava/lang/Integer;

    const/16 v8, -0x1c1e

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    aput-object v2, v1, v6

    new-instance v2, Ljava/lang/Integer;

    const/16 v8, 0xc58

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    aput-object v2, v1, v7

    new-instance v2, Ljava/lang/Integer;

    const/16 v8, 0x191b

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    aput-object v2, v1, v0

    new-instance v2, Ljava/lang/Integer;

    const/16 v8, 0x39a9

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    aput-object v2, v1, v9

    new-instance v2, Ljava/lang/Integer;

    const/16 v8, -0x33b

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    aput-object v2, v1, v5

    new-instance v2, Ljava/lang/Integer;

    const/16 v8, -0x1df

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    aput-object v2, v1, v10

    new-instance v2, Ljava/lang/Integer;

    const/16 v8, -0xc8c

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    aput-object v2, v1, v11

    sput-object v1, Lcom/amazon/ebook/util/text/tinysegmenter/TinySegmenterConstants;->UQ3_VALS:[Ljava/lang/Integer;

    const-string/jumbo v27, "\u4eac"

    const-string/jumbo v28, "\u3042"

    const-string/jumbo v29, "\u59d4"

    const-string/jumbo v30, "\u3046"

    const-string/jumbo v31, "\u304c"

    const-string/jumbo v32, "\u304d"

    const-string/jumbo v33, "\uff62"

    const-string/jumbo v34, "\u3053"

    const-string/jumbo v35, "\uff65"

    const-string/jumbo v36, "\u5927"

    const-string/jumbo v37, "\u533a"

    const-string/jumbo v38, "\u5e02"

    const-string/jumbo v39, "\u3001"

    const-string/jumbo v40, "\u56fd"

    const-string/jumbo v41, "\u5348"

    const-string/jumbo v42, "\u3067"

    const-string/jumbo v43, "\u3068"

    const-string/jumbo v44, "\u3069"

    const-string v45, ","

    const-string/jumbo v46, "\u306b"

    const-string/jumbo v47, "\u300c"

    const-string/jumbo v48, "\u306e"

    const-string/jumbo v49, "\u306f"

    const-string/jumbo v50, "\u65e5"

    const-string/jumbo v51, "\u751f"

    const-string/jumbo v52, "\u7406"

    const-string/jumbo v53, "\u90fd"

    const-string/jumbo v54, "\u3082"

    const-string/jumbo v55, "\u3084"

    const-string/jumbo v56, "\u3088"

    const-string/jumbo v57, "\u3089"

    const-string/jumbo v58, "\u770c"

    const-string/jumbo v59, "\u308a"

    const-string/jumbo v60, "\u4e3b"

    const-string/jumbo v61, "\u308c"

    const-string/jumbo v62, "\u3092"

    const-string/jumbo v63, "\u3093"

    const-string/jumbo v64, "\u30fb"

    filled-new-array/range {v27 .. v64}, [Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/amazon/ebook/util/text/tinysegmenter/TinySegmenterConstants;->UW1_KEYS:[Ljava/lang/String;

    const/16 v1, 0x26

    new-array v1, v1, [Ljava/lang/Integer;

    new-instance v2, Ljava/lang/Integer;

    const/16 v8, -0x10c

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    aput-object v2, v1, v3

    new-instance v2, Ljava/lang/Integer;

    const/16 v8, -0x3ad

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    aput-object v2, v1, v4

    new-instance v2, Ljava/lang/Integer;

    const/16 v8, 0x2d9

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    aput-object v2, v1, v6

    new-instance v2, Ljava/lang/Integer;

    const/16 v8, -0x7f

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    aput-object v2, v1, v7

    new-instance v2, Ljava/lang/Integer;

    const/16 v8, -0x229

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    aput-object v2, v1, v0

    new-instance v2, Ljava/lang/Integer;

    const/16 v8, 0x79

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    aput-object v2, v1, v9

    new-instance v2, Ljava/lang/Integer;

    const/16 v8, -0x1cf

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    aput-object v2, v1, v5

    new-instance v2, Ljava/lang/Integer;

    const/16 v8, 0x1f9

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    aput-object v2, v1, v10

    new-instance v2, Ljava/lang/Integer;

    const/16 v8, -0x87

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    aput-object v2, v1, v11

    new-instance v2, Ljava/lang/Integer;

    const/16 v8, 0x231

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    aput-object v2, v1, v12

    new-instance v2, Ljava/lang/Integer;

    const/16 v8, -0x390

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    aput-object v2, v1, v13

    new-instance v2, Ljava/lang/Integer;

    const/16 v8, -0x19b

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    const/16 v8, 0xb

    aput-object v2, v1, v8

    new-instance v2, Ljava/lang/Integer;

    const/16 v8, 0x9c

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    const/16 v8, 0xc

    aput-object v2, v1, v8

    new-instance v2, Ljava/lang/Integer;

    const/16 v8, -0x1cc

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    const/16 v8, 0xd

    aput-object v2, v1, v8

    new-instance v2, Ljava/lang/Integer;

    const/16 v8, 0x367

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    const/16 v8, 0xe

    aput-object v2, v1, v8

    new-instance v2, Ljava/lang/Integer;

    const/16 v8, -0xc9

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    const/16 v8, 0xf

    aput-object v2, v1, v8

    new-instance v2, Ljava/lang/Integer;

    const/16 v8, -0x223

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    const/16 v8, 0x10

    aput-object v2, v1, v8

    new-instance v2, Ljava/lang/Integer;

    const/16 v8, -0x7b

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    const/16 v8, 0x11

    aput-object v2, v1, v8

    new-instance v2, Ljava/lang/Integer;

    const/16 v8, 0x9c

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    const/16 v8, 0x12

    aput-object v2, v1, v8

    new-instance v2, Ljava/lang/Integer;

    const/16 v8, -0x315

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    const/16 v8, 0x13

    aput-object v2, v1, v8

    new-instance v2, Ljava/lang/Integer;

    const/16 v8, -0x1cf

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    const/16 v8, 0x14

    aput-object v2, v1, v8

    new-instance v2, Ljava/lang/Integer;

    const/16 v8, -0xb9

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    const/16 v8, 0x15

    aput-object v2, v1, v8

    new-instance v2, Ljava/lang/Integer;

    const/16 v8, -0x34f

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    const/16 v8, 0x16

    aput-object v2, v1, v8

    new-instance v2, Ljava/lang/Integer;

    const/16 v8, -0x8d

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    const/16 v8, 0x17

    aput-object v2, v1, v8

    new-instance v2, Ljava/lang/Integer;

    const/16 v8, -0x198

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    const/16 v8, 0x18

    aput-object v2, v1, v8

    new-instance v2, Ljava/lang/Integer;

    const/16 v8, 0x169

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    const/16 v8, 0x19

    aput-object v2, v1, v8

    new-instance v2, Ljava/lang/Integer;

    const/16 v8, -0x2ce

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    const/16 v8, 0x1a

    aput-object v2, v1, v8

    new-instance v2, Ljava/lang/Integer;

    const/16 v8, -0x1d2

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    const/16 v8, 0x1b

    aput-object v2, v1, v8

    new-instance v2, Ljava/lang/Integer;

    const/16 v8, -0x1d6

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    const/16 v8, 0x1c

    aput-object v2, v1, v8

    new-instance v2, Ljava/lang/Integer;

    const/16 v8, 0xb6

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    const/16 v8, 0x1d

    aput-object v2, v1, v8

    new-instance v2, Ljava/lang/Integer;

    const/16 v8, -0x124

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    const/16 v8, 0x1e

    aput-object v2, v1, v8

    new-instance v2, Ljava/lang/Integer;

    const/16 v8, -0x182

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    const/16 v8, 0x1f

    aput-object v2, v1, v8

    new-instance v2, Ljava/lang/Integer;

    const/16 v8, 0xd0

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    const/16 v8, 0x20

    aput-object v2, v1, v8

    new-instance v2, Ljava/lang/Integer;

    const/16 v8, -0x192

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    const/16 v8, 0x21

    aput-object v2, v1, v8

    new-instance v2, Ljava/lang/Integer;

    const/16 v8, 0xa9

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    const/16 v8, 0x22

    aput-object v2, v1, v8

    new-instance v2, Ljava/lang/Integer;

    const/16 v8, -0x1be

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    const/16 v8, 0x23

    aput-object v2, v1, v8

    new-instance v2, Ljava/lang/Integer;

    const/16 v8, -0x89

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    const/16 v8, 0x24

    aput-object v2, v1, v8

    new-instance v2, Ljava/lang/Integer;

    const/16 v8, -0x87

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    const/16 v8, 0x25

    aput-object v2, v1, v8

    sput-object v1, Lcom/amazon/ebook/util/text/tinysegmenter/TinySegmenterConstants;->UW1_VALS:[Ljava/lang/Integer;

    const-string/jumbo v27, "\u63fa"

    const-string/jumbo v28, "\u5e02"

    const-string/jumbo v29, "\u3082"

    const-string/jumbo v30, "\u4f1a"

    const-string/jumbo v31, "\u3084"

    const-string/jumbo v32, "\u4fdd"

    const-string/jumbo v33, "\u3088"

    const-string/jumbo v34, "\u6700"

    const-string/jumbo v35, "\u308a"

    const-string/jumbo v36, "\u521d"

    const-string/jumbo v37, "\u308b"

    const-string/jumbo v38, "\u308c"

    const-string/jumbo v39, "\u6587"

    const-string/jumbo v40, "\u7b2c"

    const-string/jumbo v41, "\u5165"

    const-string/jumbo v42, "\u3092"

    const-string/jumbo v43, "\u3093"

    const-string/jumbo v44, "\u81ea"

    const-string/jumbo v45, "\u30a2"

    const-string/jumbo v46, "\u671d"

    const-string v47, ","

    const-string/jumbo v48, "\u30ab"

    const-string/jumbo v49, "\u30ad"

    const-string/jumbo v50, "\u4e8b"

    const-string/jumbo v51, "\u672c"

    const-string/jumbo v52, "\u897f"

    const-string/jumbo v53, "\u65b0"

    const-string/jumbo v54, "\uff62"

    const-string/jumbo v55, "\uff63"

    const-string/jumbo v56, "\u3001"

    const-string/jumbo v57, "\u898b"

    const-string/jumbo v58, "\u30c3"

    const-string/jumbo v59, "\uff6f"

    const-string/jumbo v60, "\u5317"

    const-string/jumbo v61, "\u3007"

    const-string/jumbo v62, "\uff71"

    const-string/jumbo v63, "\u5c0f"

    const-string/jumbo v64, "\u5b50"

    const-string/jumbo v65, "\u300c"

    const-string/jumbo v66, "\uff76"

    const-string/jumbo v67, "\u300d"

    const-string/jumbo v68, "\u76ee"

    const-string/jumbo v69, "\uff77"

    const-string/jumbo v70, "\u958b"

    const-string/jumbo v71, "\u76f8"

    const-string/jumbo v72, "\u9593"

    const-string/jumbo v73, "\u526f"

    const-string/jumbo v74, "\u5927"

    const-string/jumbo v75, "\u5b66"

    const-string/jumbo v76, "\u5929"

    const-string/jumbo v77, "\u592a"

    const-string/jumbo v78, "\u7406"

    const-string/jumbo v79, "\u4eba"

    const-string/jumbo v80, "\u533a"

    const-string/jumbo v81, "\u770c"

    const-string/jumbo v82, "\u65e5"

    const-string/jumbo v83, "\u7acb"

    const-string/jumbo v84, "\u6b21"

    const-string/jumbo v85, "\u4e09"

    const-string/jumbo v86, "\u5e74"

    const-string/jumbo v87, "\u4e0d"

    const-string/jumbo v88, "\u5f37"

    const-string/jumbo v89, "\u6771"

    const-string/jumbo v90, "\u8fbc"

    const-string/jumbo v91, "\u4e16"

    const-string/jumbo v92, "\u3042"

    const-string/jumbo v93, "\u884c"

    const-string/jumbo v94, "\u3044"

    const-string/jumbo v95, "\u3046"

    const-string/jumbo v96, "\u653f"

    const-string/jumbo v97, "\u304a"

    const-string/jumbo v98, "\u304b"

    const-string/jumbo v99, "\u304c"

    const-string/jumbo v100, "\u624b"

    const-string/jumbo v101, "\u304f"

    const-string/jumbo v102, "\u3053"

    const-string/jumbo v103, "\u4e2d"

    const-string/jumbo v104, "\u3055"

    const-string/jumbo v105, "\u3056"

    const-string/jumbo v106, "\u660e"

    const-string/jumbo v107, "\u3057"

    const-string/jumbo v108, "\u767a"

    const-string/jumbo v109, "\u5b9f"

    const-string/jumbo v110, "\u3059"

    const-string/jumbo v111, "\u7c73"

    const-string/jumbo v112, "\u305b"

    const-string/jumbo v113, "\u305d"

    const-string/jumbo v114, "\u305f"

    const-string/jumbo v115, "\u3060"

    const-string/jumbo v116, "\u6c11"

    const-string/jumbo v117, "\u4e3b"

    const-string/jumbo v118, "\u3064"

    const-string/jumbo v119, "\u3066"

    const-string/jumbo v120, "\u679c"

    const-string/jumbo v121, "\u3067"

    const-string/jumbo v122, "\u6c17"

    const-string/jumbo v123, "\u3068"

    const-string/jumbo v124, "\u3069"

    const-string/jumbo v125, "\u306a"

    const-string/jumbo v126, "\u8bc0"

    const-string/jumbo v127, "\u306b"

    const-string/jumbo v128, "\u306e"

    const-string/jumbo v129, "\u306f"

    const-string/jumbo v130, "\u3072"

    const-string/jumbo v131, "\u8abf"

    const-string/jumbo v132, "\u3079"

    const-string/jumbo v133, "\u307e"

    filled-new-array/range {v27 .. v133}, [Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/amazon/ebook/util/text/tinysegmenter/TinySegmenterConstants;->UW2_KEYS:[Ljava/lang/String;

    const/16 v1, 0x6b

    new-array v1, v1, [Ljava/lang/Integer;

    new-instance v2, Ljava/lang/Integer;

    const/16 v8, -0x409

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    aput-object v2, v1, v3

    new-instance v2, Ljava/lang/Integer;

    const/16 v8, -0x32d

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    aput-object v2, v1, v4

    new-instance v2, Ljava/lang/Integer;

    const/16 v8, -0x4ef

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    aput-object v2, v1, v6

    new-instance v2, Ljava/lang/Integer;

    const/16 v8, 0x3d2

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    aput-object v2, v1, v7

    new-instance v2, Ljava/lang/Integer;

    const/16 v8, -0x192

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    aput-object v2, v1, v0

    new-instance v2, Ljava/lang/Integer;

    const/16 v8, 0x16a

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    aput-object v2, v1, v9

    new-instance v2, Ljava/lang/Integer;

    const/16 v8, 0x667

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    aput-object v2, v1, v5

    new-instance v2, Ljava/lang/Integer;

    const/16 v8, -0x276

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    aput-object v2, v1, v10

    new-instance v2, Ljava/lang/Integer;

    const/16 v8, -0x243

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    aput-object v2, v1, v11

    new-instance v2, Ljava/lang/Integer;

    const/16 v8, -0xbd1

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    aput-object v2, v1, v12

    new-instance v2, Ljava/lang/Integer;

    const/16 v8, -0x2b6

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    aput-object v2, v1, v13

    new-instance v2, Ljava/lang/Integer;

    const/16 v8, 0x23b

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    const/16 v8, 0xb

    aput-object v2, v1, v8

    new-instance v2, Ljava/lang/Integer;

    const/16 v8, -0x54b

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    const/16 v8, 0xc

    aput-object v2, v1, v8

    new-instance v2, Ljava/lang/Integer;

    const/16 v8, 0x32a

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    const/16 v8, 0xd

    aput-object v2, v1, v8

    new-instance v2, Ljava/lang/Integer;

    const/16 v8, 0x224

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    const/16 v8, 0xe

    aput-object v2, v1, v8

    new-instance v2, Ljava/lang/Integer;

    const/16 v8, -0x9d4

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    const/16 v8, 0xf

    aput-object v2, v1, v8

    new-instance v2, Ljava/lang/Integer;

    const/16 v8, 0x82f

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    const/16 v8, 0x10

    aput-object v2, v1, v8

    new-instance v2, Ljava/lang/Integer;

    const/16 v8, -0x549

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    const/16 v8, 0x11

    aput-object v2, v1, v8

    new-instance v2, Ljava/lang/Integer;

    const/16 v8, -0x24b

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    const/16 v8, 0x12

    aput-object v2, v1, v8

    new-instance v2, Ljava/lang/Integer;

    const/16 v8, -0x733

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    const/16 v8, 0x13

    aput-object v2, v1, v8

    new-instance v2, Ljava/lang/Integer;

    const/16 v8, -0x33d

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    const/16 v8, 0x14

    aput-object v2, v1, v8

    new-instance v2, Ljava/lang/Integer;

    const/16 v8, 0x132

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    const/16 v8, 0x15

    aput-object v2, v1, v8

    new-instance v2, Ljava/lang/Integer;

    const/16 v8, 0x238

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    const/16 v8, 0x16

    aput-object v2, v1, v8

    new-instance v2, Ljava/lang/Integer;

    const/16 v8, 0x1ec

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    const/16 v8, 0x17

    aput-object v2, v1, v8

    new-instance v2, Ljava/lang/Integer;

    const/16 v8, -0x672

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    const/16 v8, 0x18

    aput-object v2, v1, v8

    new-instance v2, Ljava/lang/Integer;

    const/16 v8, -0x2e8

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    const/16 v8, 0x19

    aput-object v2, v1, v8

    new-instance v2, Ljava/lang/Integer;

    const/16 v8, -0x692

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    const/16 v8, 0x1a

    aput-object v2, v1, v8

    new-instance v2, Ljava/lang/Integer;

    const/16 v8, -0x285

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    const/16 v8, 0x1b

    aput-object v2, v1, v8

    new-instance v2, Ljava/lang/Integer;

    const/16 v8, 0xc49

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    const/16 v8, 0x1c

    aput-object v2, v1, v8

    new-instance v2, Ljava/lang/Integer;

    const/16 v8, -0x33d

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    const/16 v8, 0x1d

    aput-object v2, v1, v8

    new-instance v2, Ljava/lang/Integer;

    const/16 v8, -0xf22

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    const/16 v8, 0x1e

    aput-object v2, v1, v8

    new-instance v2, Ljava/lang/Integer;

    const/16 v8, 0x33f

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    const/16 v8, 0x1f

    aput-object v2, v1, v8

    new-instance v2, Ljava/lang/Integer;

    const/16 v8, 0x33f

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    const/16 v8, 0x20

    aput-object v2, v1, v8

    new-instance v2, Ljava/lang/Integer;

    const/16 v8, -0xd56

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    const/16 v8, 0x21

    aput-object v2, v1, v8

    new-instance v2, Ljava/lang/Integer;

    const/16 v8, 0x37c

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    const/16 v8, 0x22

    aput-object v2, v1, v8

    new-instance v2, Ljava/lang/Integer;

    const/16 v8, -0x24b

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    const/16 v8, 0x23

    aput-object v2, v1, v8

    new-instance v2, Ljava/lang/Integer;

    const/16 v8, -0x7d9

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    const/16 v8, 0x24

    aput-object v2, v1, v8

    new-instance v2, Ljava/lang/Integer;

    const/16 v8, -0x5ef

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    const/16 v8, 0x25

    aput-object v2, v1, v8

    new-instance v2, Ljava/lang/Integer;

    const/16 v8, -0x285

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    const/16 v8, 0x26

    aput-object v2, v1, v8

    new-instance v2, Ljava/lang/Integer;

    const/16 v8, 0x132

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    const/16 v8, 0x27

    aput-object v2, v1, v8

    new-instance v2, Ljava/lang/Integer;

    const/16 v8, 0xc49

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    const/16 v8, 0x28

    aput-object v2, v1, v8

    new-instance v2, Ljava/lang/Integer;

    const/16 v8, -0x630

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    const/16 v8, 0x29

    aput-object v2, v1, v8

    new-instance v2, Ljava/lang/Integer;

    const/16 v8, 0x238

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    const/16 v8, 0x2a

    aput-object v2, v1, v8

    new-instance v2, Ljava/lang/Integer;

    const/16 v8, 0x6de

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    const/16 v8, 0x2b

    aput-object v2, v1, v8

    new-instance v2, Ljava/lang/Integer;

    const/16 v8, -0xf2

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    const/16 v8, 0x2c

    aput-object v2, v1, v8

    new-instance v2, Ljava/lang/Integer;

    const/16 v8, -0x4e9

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    const/16 v8, 0x2d

    aput-object v2, v1, v8

    new-instance v2, Ljava/lang/Integer;

    const/16 v8, -0x61e

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    const/16 v8, 0x2e

    aput-object v2, v1, v8

    new-instance v2, Ljava/lang/Integer;

    const/16 v8, -0x6e9

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    const/16 v8, 0x2f

    aput-object v2, v1, v8

    new-instance v2, Ljava/lang/Integer;

    const/16 v8, 0x2f8

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    const/16 v8, 0x30

    aput-object v2, v1, v8

    new-instance v2, Ljava/lang/Integer;

    const/16 v8, -0x361

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    const/16 v8, 0x31

    aput-object v2, v1, v8

    new-instance v2, Ljava/lang/Integer;

    const/16 v8, -0x1e3

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    const/16 v8, 0x32

    aput-object v2, v1, v8

    new-instance v2, Ljava/lang/Integer;

    const/16 v8, 0x2f0

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    const/16 v8, 0x33

    aput-object v2, v1, v8

    new-instance v2, Ljava/lang/Integer;

    const/16 v8, -0x7b

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    const/16 v8, 0x34

    aput-object v2, v1, v8

    new-instance v2, Ljava/lang/Integer;

    const/16 v8, -0x1a6

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    const/16 v8, 0x35

    aput-object v2, v1, v8

    new-instance v2, Ljava/lang/Integer;

    const/16 v8, -0x48d

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    const/16 v8, 0x36

    aput-object v2, v1, v8

    new-instance v2, Ljava/lang/Integer;

    const/16 v8, -0x717

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    const/16 v8, 0x37

    aput-object v2, v1, v8

    new-instance v2, Ljava/lang/Integer;

    const/16 v8, -0x2fb

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    const/16 v8, 0x38

    aput-object v2, v1, v8

    new-instance v2, Ljava/lang/Integer;

    const/16 v8, -0x94a

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    const/16 v8, 0x39

    aput-object v2, v1, v8

    new-instance v2, Ljava/lang/Integer;

    const/16 v8, -0x2f6

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    const/16 v8, 0x3a

    aput-object v2, v1, v8

    new-instance v2, Ljava/lang/Integer;

    const/16 v8, -0x424

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    const/16 v8, 0x3b

    aput-object v2, v1, v8

    new-instance v2, Ljava/lang/Integer;

    const/16 v8, -0x866

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    const/16 v8, 0x3c

    aput-object v2, v1, v8

    new-instance v2, Ljava/lang/Integer;

    const/16 v8, 0x42b

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    const/16 v8, 0x3d

    aput-object v2, v1, v8

    new-instance v2, Ljava/lang/Integer;

    const/16 v8, -0x3a3

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    const/16 v8, 0x3e

    aput-object v2, v1, v8

    new-instance v2, Ljava/lang/Integer;

    const/16 v8, 0xbe1

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    const/16 v8, 0x3f

    aput-object v2, v1, v8

    new-instance v2, Ljava/lang/Integer;

    const/16 v8, -0x12e

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    const/16 v8, 0x40

    aput-object v2, v1, v8

    new-instance v2, Ljava/lang/Integer;

    const/16 v8, -0x21a

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    const/16 v8, 0x41

    aput-object v2, v1, v8

    new-instance v2, Ljava/lang/Integer;

    const/16 v8, 0x346

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    const/16 v8, 0x42

    aput-object v2, v1, v8

    new-instance v2, Ljava/lang/Integer;

    const/16 v8, 0x1f9

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    const/16 v8, 0x43

    aput-object v2, v1, v8

    new-instance v2, Ljava/lang/Integer;

    const/16 v8, 0x86

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    const/16 v8, 0x44

    aput-object v2, v1, v8

    new-instance v2, Ljava/lang/Integer;

    const/16 v8, 0x5f2

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    const/16 v8, 0x45

    aput-object v2, v1, v8

    new-instance v2, Ljava/lang/Integer;

    const/16 v8, -0x1f6

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    const/16 v8, 0x46

    aput-object v2, v1, v8

    new-instance v2, Ljava/lang/Integer;

    const/16 v8, 0x5ae

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    const/16 v8, 0x47

    aput-object v2, v1, v8

    new-instance v2, Ljava/lang/Integer;

    const/16 v8, -0x358

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    const/16 v8, 0x48

    aput-object v2, v1, v8

    new-instance v2, Ljava/lang/Integer;

    const/16 v8, -0x5ef

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    const/16 v8, 0x49

    aput-object v2, v1, v8

    new-instance v2, Ljava/lang/Integer;

    const/16 v8, -0x19c

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    const/16 v8, 0x4a

    aput-object v2, v1, v8

    new-instance v2, Ljava/lang/Integer;

    const/16 v8, 0x475

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    const/16 v8, 0x4b

    aput-object v2, v1, v8

    new-instance v2, Ljava/lang/Integer;

    const/16 v8, -0x3c8

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    const/16 v8, 0x4c

    aput-object v2, v1, v8

    new-instance v2, Ljava/lang/Integer;

    const/16 v8, 0x36e

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    const/16 v8, 0x4d

    aput-object v2, v1, v8

    new-instance v2, Ljava/lang/Integer;

    const/16 v8, 0x21c

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    const/16 v8, 0x4e

    aput-object v2, v1, v8

    new-instance v2, Ljava/lang/Integer;

    const/16 v8, -0x5b6

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    const/16 v8, 0x4f

    aput-object v2, v1, v8

    new-instance v2, Ljava/lang/Integer;

    const/16 v8, 0x5f9

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    const/16 v8, 0x50

    aput-object v2, v1, v8

    new-instance v2, Ljava/lang/Integer;

    const/16 v8, 0x211

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    const/16 v8, 0x51

    aput-object v2, v1, v8

    new-instance v2, Ljava/lang/Integer;

    const/16 v8, 0x3ff

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    const/16 v8, 0x52

    aput-object v2, v1, v8

    new-instance v2, Ljava/lang/Integer;

    const/16 v8, -0x2a3

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    const/16 v8, 0x53

    aput-object v2, v1, v8

    new-instance v2, Ljava/lang/Integer;

    const/16 v8, 0x1fd

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    const/16 v8, 0x54

    aput-object v2, v1, v8

    new-instance v2, Ljava/lang/Integer;

    const/16 v8, 0x12c

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    const/16 v8, 0x55

    aput-object v2, v1, v8

    new-instance v2, Ljava/lang/Integer;

    const/16 v8, -0x3f3

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    const/16 v8, 0x56

    aput-object v2, v1, v8

    new-instance v2, Ljava/lang/Integer;

    const/16 v8, 0xbc

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    const/16 v8, 0x57

    aput-object v2, v1, v8

    new-instance v2, Ljava/lang/Integer;

    const/16 v8, 0x72d

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    const/16 v8, 0x58

    aput-object v2, v1, v8

    new-instance v2, Ljava/lang/Integer;

    const/16 v8, -0xb4

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    const/16 v8, 0x59

    aput-object v2, v1, v8

    new-instance v2, Ljava/lang/Integer;

    const/16 v8, -0x35d

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    const/16 v8, 0x5a

    aput-object v2, v1, v8

    new-instance v2, Ljava/lang/Integer;

    const/16 v8, -0x3b5

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    const/16 v8, 0x5b

    aput-object v2, v1, v8

    new-instance v2, Ljava/lang/Integer;

    const/16 v8, -0x123

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    const/16 v8, 0x5c

    aput-object v2, v1, v8

    new-instance v2, Ljava/lang/Integer;

    const/16 v8, -0x299

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    const/16 v8, 0x5d

    aput-object v2, v1, v8

    new-instance v2, Ljava/lang/Integer;

    const/16 v8, -0x10c

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    const/16 v8, 0x5e

    aput-object v2, v1, v8

    new-instance v2, Ljava/lang/Integer;

    const/16 v8, -0x6cc

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    const/16 v8, 0x5f

    aput-object v2, v1, v8

    new-instance v2, Ljava/lang/Integer;

    const/16 v8, -0x3d5

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    const/16 v8, 0x60

    aput-object v2, v1, v8

    new-instance v2, Ljava/lang/Integer;

    const/16 v8, 0x4f9

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    const/16 v8, 0x61

    aput-object v2, v1, v8

    new-instance v2, Ljava/lang/Integer;

    const/16 v8, 0x427

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    const/16 v8, 0x62

    aput-object v2, v1, v8

    new-instance v2, Ljava/lang/Integer;

    const/16 v8, 0x4ae

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    const/16 v8, 0x63

    aput-object v2, v1, v8

    new-instance v2, Ljava/lang/Integer;

    const/16 v8, -0x6e4

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    const/16 v8, 0x64

    aput-object v2, v1, v8

    new-instance v2, Ljava/lang/Integer;

    const/16 v8, 0x82

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    const/16 v8, 0x65

    aput-object v2, v1, v8

    new-instance v2, Ljava/lang/Integer;

    const/16 v8, -0x199

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    const/16 v8, 0x66

    aput-object v2, v1, v8

    new-instance v2, Ljava/lang/Integer;

    const/16 v8, -0x4f9

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    const/16 v8, 0x67

    aput-object v2, v1, v8

    new-instance v2, Ljava/lang/Integer;

    const/16 v8, 0x3f2

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    const/16 v8, 0x68

    aput-object v2, v1, v8

    new-instance v2, Ljava/lang/Integer;

    const/16 v8, 0x4ed

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    const/16 v8, 0x69

    aput-object v2, v1, v8

    new-instance v2, Ljava/lang/Integer;

    const/16 v8, 0x258

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    const/16 v8, 0x6a

    aput-object v2, v1, v8

    sput-object v1, Lcom/amazon/ebook/util/text/tinysegmenter/TinySegmenterConstants;->UW2_VALS:[Ljava/lang/Integer;

    const/16 v1, 0xd9

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "1"

    aput-object v2, v1, v3

    const-string/jumbo v2, "\u4f4e"

    aput-object v2, v1, v4

    const-string/jumbo v2, "\u524d"

    aput-object v2, v1, v6

    const-string/jumbo v2, "\u95a2"

    aput-object v2, v1, v7

    const-string/jumbo v2, "\u4f55"

    aput-object v2, v1, v0

    const-string/jumbo v2, "\u4f5c"

    aput-object v2, v1, v9

    const-string/jumbo v2, "\u674e"

    aput-object v2, v1, v5

    const-string/jumbo v2, "\u6751"

    aput-object v2, v1, v10

    const-string/jumbo v2, "\u8cbb"

    aput-object v2, v1, v11

    const-string/jumbo v2, "\u53e3"

    aput-object v2, v1, v12

    const-string/jumbo v2, "\u8fbc"

    aput-object v2, v1, v13

    const-string/jumbo v2, "\u7acb"

    const/16 v8, 0xb

    aput-object v2, v1, v8

    const-string/jumbo v2, "\u3001"

    const/16 v8, 0xc

    aput-object v2, v1, v8

    const-string/jumbo v2, "\u5b66"

    const/16 v8, 0xd

    aput-object v2, v1, v8

    const-string/jumbo v2, "\u7dcf"

    const/16 v8, 0xe

    aput-object v2, v1, v8

    const-string/jumbo v2, "\u3005"

    const/16 v8, 0xf

    aput-object v2, v1, v8

    const-string/jumbo v2, "\u526f"

    const/16 v8, 0x10

    aput-object v2, v1, v8

    const-string/jumbo v2, "\u3007"

    const/16 v8, 0x11

    aput-object v2, v1, v8

    const-string/jumbo v2, "\u65e5"

    const/16 v8, 0x12

    aput-object v2, v1, v8

    const-string/jumbo v2, "\u65e7"

    const/16 v8, 0x13

    aput-object v2, v1, v8

    const-string/jumbo v2, "\u53f3"

    const/16 v8, 0x14

    aput-object v2, v1, v8

    const-string v2, ","

    const/16 v8, 0x15

    aput-object v2, v1, v8

    const/16 v2, 0x16

    const-string/jumbo v8, "\u300d"

    aput-object v8, v1, v2

    const/16 v2, 0x17

    const-string/jumbo v8, "\u7dda"

    aput-object v8, v1, v2

    const/16 v2, 0x18

    const-string/jumbo v8, "\u5e73"

    aput-object v8, v1, v2

    const/16 v2, 0x19

    const-string/jumbo v8, "\u5e74"

    aput-object v8, v1, v2

    const/16 v2, 0x1a

    const-string/jumbo v8, "\u3013"

    aput-object v8, v1, v2

    const/16 v2, 0x1b

    const-string/jumbo v8, "\u4e00"

    aput-object v8, v1, v2

    const/16 v2, 0x1c

    const-string/jumbo v8, "\u68ee"

    aput-object v8, v1, v2

    const/16 v2, 0x1d

    const-string/jumbo v8, "\u77e5"

    aput-object v8, v1, v2

    const/16 v2, 0x1e

    const-string/jumbo v8, "\u6771"

    aput-object v8, v1, v2

    const/16 v2, 0x1f

    const-string/jumbo v8, "\u56fd"

    aput-object v8, v1, v2

    const/16 v2, 0x20

    const-string/jumbo v8, "\u5404"

    aput-object v8, v1, v2

    const/16 v2, 0x21

    const-string/jumbo v8, "\u4e0b"

    aput-object v8, v1, v2

    const/16 v2, 0x22

    const-string/jumbo v8, "\u5408"

    aput-object v8, v1, v2

    const/16 v2, 0x23

    const-string/jumbo v8, "\u6d77"

    aput-object v8, v1, v2

    const/16 v2, 0x24

    const-string/jumbo v8, "\u5e83"

    aput-object v8, v1, v2

    const/16 v2, 0x25

    const-string/jumbo v8, "\u975e"

    aput-object v8, v1, v2

    const/16 v2, 0x26

    const-string/jumbo v8, "\u540c"

    aput-object v8, v1, v2

    const/16 v2, 0x27

    const-string/jumbo v8, "\u5b89"

    aput-object v8, v1, v2

    const/16 v2, 0x28

    const-string/jumbo v8, "\u7c73"

    aput-object v8, v1, v2

    const/16 v2, 0x29

    const-string/jumbo v8, "\u6307"

    aput-object v8, v1, v2

    const/16 v2, 0x2a

    const-string/jumbo v8, "\u4e16"

    aput-object v8, v1, v2

    const/16 v2, 0x2b

    const-string/jumbo v8, "\u529b"

    aput-object v8, v1, v2

    const/16 v2, 0x2c

    const-string/jumbo v8, "\u7684"

    aput-object v8, v1, v2

    const/16 v2, 0x2d

    const-string/jumbo v8, "\u80fd"

    aput-object v8, v1, v2

    const/16 v2, 0x2e

    const-string/jumbo v8, "\u4e21"

    aput-object v8, v1, v2

    const/16 v2, 0x2f

    const-string/jumbo v8, "\u6c0f"

    aput-object v8, v1, v2

    const/16 v2, 0x30

    const-string/jumbo v8, "\u6c11"

    aput-object v8, v1, v2

    const/16 v2, 0x31

    const-string/jumbo v8, "\u5e9c"

    aput-object v8, v1, v2

    const/16 v2, 0x32

    const-string/jumbo v8, "\u5b9f"

    aput-object v8, v1, v2

    const/16 v2, 0x33

    const-string/jumbo v8, "\u601d"

    aput-object v8, v1, v2

    const/16 v2, 0x34

    const-string/jumbo v8, "\u4e2d"

    aput-object v8, v1, v2

    const/16 v2, 0x35

    const-string/jumbo v8, "\u3042"

    aput-object v8, v1, v2

    const/16 v2, 0x36

    const-string/jumbo v8, "\u3044"

    aput-object v8, v1, v2

    const/16 v2, 0x37

    const-string/jumbo v8, "\u5ea6"

    aput-object v8, v1, v2

    const/16 v2, 0x38

    const-string/jumbo v8, "\u3046"

    aput-object v8, v1, v2

    const/16 v2, 0x39

    const-string/jumbo v8, "\u6027"

    aput-object v8, v1, v2

    const/16 v2, 0x3a

    const-string/jumbo v8, "\u3048"

    aput-object v8, v1, v2

    const/16 v2, 0x3b

    const-string/jumbo v8, "\u304a"

    aput-object v8, v1, v2

    const/16 v2, 0x3c

    const-string/jumbo v8, "\u304b"

    aput-object v8, v1, v2

    const/16 v2, 0x3d

    const-string/jumbo v8, "\u6628"

    aput-object v8, v1, v2

    const/16 v2, 0x3e

    const-string/jumbo v8, "\u304c"

    aput-object v8, v1, v2

    const/16 v2, 0x3f

    const-string/jumbo v8, "\u751f"

    aput-object v8, v1, v2

    const/16 v2, 0x40

    const-string/jumbo v8, "\u4e3b"

    aput-object v8, v1, v2

    const/16 v2, 0x41

    const-string/jumbo v8, "\u304f"

    aput-object v8, v1, v2

    const/16 v2, 0x42

    const-string/jumbo v8, "\u3051"

    aput-object v8, v1, v2

    const/16 v2, 0x43

    const-string/jumbo v8, "\u3052"

    aput-object v8, v1, v2

    const/16 v2, 0x44

    const-string/jumbo v8, "\u5bb6"

    aput-object v8, v1, v2

    const/16 v2, 0x45

    const-string/jumbo v8, "\u3053"

    aput-object v8, v1, v2

    const/16 v2, 0x46

    const-string/jumbo v8, "\u3054"

    aput-object v8, v1, v2

    const/16 v2, 0x47

    const-string/jumbo v8, "\u3055"

    aput-object v8, v1, v2

    const/16 v2, 0x48

    const-string/jumbo v8, "\u7528"

    aput-object v8, v1, v2

    const/16 v2, 0x49

    const-string/jumbo v8, "\u3057"

    aput-object v8, v1, v2

    const/16 v2, 0x4a

    const-string/jumbo v8, "\u5143"

    aput-object v8, v1, v2

    const/16 v2, 0x4b

    const-string/jumbo v8, "\u3059"

    aput-object v8, v1, v2

    const/16 v2, 0x4c

    const-string/jumbo v8, "\u901a"

    aput-object v8, v1, v2

    const/16 v2, 0x4d

    const-string/jumbo v8, "\u305b"

    aput-object v8, v1, v2

    const/16 v2, 0x4e

    const-string/jumbo v8, "\u305d"

    aput-object v8, v1, v2

    const/16 v2, 0x4f

    const-string/jumbo v8, "\u7b2c"

    aput-object v8, v1, v2

    const/16 v2, 0x50

    const-string/jumbo v8, "\uff78\uff9e"

    aput-object v8, v1, v2

    const/16 v2, 0x51

    const-string/jumbo v8, "\u305f"

    aput-object v8, v1, v2

    const/16 v2, 0x52

    const-string/jumbo v8, "\u3061"

    aput-object v8, v1, v2

    const/16 v2, 0x53

    const-string/jumbo v8, "\u3063"

    aput-object v8, v1, v2

    const/16 v2, 0x54

    const-string/jumbo v8, "\u3064"

    aput-object v8, v1, v2

    const/16 v2, 0x55

    const-string/jumbo v8, "\u3066"

    aput-object v8, v1, v2

    const/16 v2, 0x56

    const-string/jumbo v8, "\u6642"

    aput-object v8, v1, v2

    const/16 v2, 0x57

    const-string/jumbo v8, "\u3067"

    aput-object v8, v1, v2

    const/16 v2, 0x58

    const-string/jumbo v8, "\u3068"

    aput-object v8, v1, v2

    const/16 v2, 0x59

    const-string/jumbo v8, "\u753a"

    aput-object v8, v1, v2

    const/16 v2, 0x5a

    const-string/jumbo v8, "\u3069"

    aput-object v8, v1, v2

    const/16 v2, 0x5b

    const-string/jumbo v8, "\u306a"

    aput-object v8, v1, v2

    const/16 v2, 0x5c

    const-string/jumbo v8, "\u306b"

    aput-object v8, v1, v2

    const/16 v2, 0x5d

    const-string/jumbo v8, "\u52d5"

    aput-object v8, v1, v2

    const/16 v2, 0x5e

    const-string/jumbo v8, "\u306e"

    aput-object v8, v1, v2

    const/16 v2, 0x5f

    const-string/jumbo v8, "\u306f"

    aput-object v8, v1, v2

    const/16 v2, 0x60

    const-string/jumbo v8, "\u52d9"

    aput-object v8, v1, v2

    const/16 v2, 0x61

    const-string/jumbo v8, "\u515a"

    aput-object v8, v1, v2

    const/16 v2, 0x62

    const-string/jumbo v8, "\u3072"

    aput-object v8, v1, v2

    const/16 v2, 0x63

    const-string/jumbo v8, "\u4fdd"

    aput-object v8, v1, v2

    const/16 v2, 0x64

    const-string/jumbo v8, "\u79c1"

    aput-object v8, v1, v2

    const/16 v2, 0x65

    const-string/jumbo v8, "\u3075"

    aput-object v8, v1, v2

    const/16 v2, 0x66

    const-string/jumbo v8, "\u3078"

    aput-object v8, v1, v2

    const/16 v2, 0x67

    const-string/jumbo v8, "\u307b"

    aput-object v8, v1, v2

    const/16 v2, 0x68

    const-string/jumbo v8, "\u307e"

    aput-object v8, v1, v2

    const/16 v2, 0x69

    const-string/jumbo v8, "\u5168"

    aput-object v8, v1, v2

    const/16 v2, 0x6a

    const-string/jumbo v8, "\u307f"

    aput-object v8, v1, v2

    const/16 v2, 0x6b

    const-string/jumbo v8, "\u3081"

    aput-object v8, v1, v2

    const/16 v2, 0x6c

    const-string/jumbo v8, "\u516c"

    aput-object v8, v1, v2

    const/16 v2, 0x6d

    const-string/jumbo v8, "\u3082"

    aput-object v8, v1, v2

    const/16 v2, 0x6e

    const-string/jumbo v8, "\u516d"

    aput-object v8, v1, v2

    const/16 v2, 0x6f

    const-string/jumbo v8, "\u3084"

    aput-object v8, v1, v2

    const/16 v2, 0x70

    const-string/jumbo v8, "\u5171"

    aput-object v8, v1, v2

    const/16 v2, 0x71

    const-string/jumbo v8, "\u3088"

    aput-object v8, v1, v2

    const/16 v2, 0x72

    const-string/jumbo v8, "\u3089"

    aput-object v8, v1, v2

    const/16 v2, 0x73

    const-string/jumbo v8, "\u8eca"

    aput-object v8, v1, v2

    const/16 v2, 0x74

    const-string/jumbo v8, "\u308a"

    aput-object v8, v1, v2

    const/16 v2, 0x75

    const-string/jumbo v8, "\u308b"

    aput-object v8, v1, v2

    const/16 v2, 0x76

    const-string/jumbo v8, "\u308c"

    aput-object v8, v1, v2

    const/16 v2, 0x77

    const-string/jumbo v8, "\u8ecd"

    aput-object v8, v1, v2

    const/16 v2, 0x78

    const-string/jumbo v8, "\u308f"

    aput-object v8, v1, v2

    const/16 v2, 0x79

    const-string/jumbo v8, "\u3092"

    aput-object v8, v1, v2

    const/16 v2, 0x7a

    const-string/jumbo v8, "\u91d1"

    aput-object v8, v1, v2

    const/16 v2, 0x7b

    const-string/jumbo v8, "\u3093"

    aput-object v8, v1, v2

    const/16 v2, 0x7c

    const-string/jumbo v8, "\u696d"

    aput-object v8, v1, v2

    const/16 v2, 0x7d

    const-string/jumbo v8, "\u7269"

    aput-object v8, v1, v2

    const/16 v2, 0x7e

    const-string/jumbo v8, "\u5efa"

    aput-object v8, v1, v2

    const/16 v2, 0x7f

    const-string/jumbo v8, "\uff11"

    aput-object v8, v1, v2

    const/16 v2, 0x80

    const-string/jumbo v8, "\u5186"

    aput-object v8, v1, v2

    const/16 v2, 0x81

    const-string/jumbo v8, "\u4e88"

    aput-object v8, v1, v2

    const/16 v2, 0x82

    const-string/jumbo v8, "\u4e8c"

    aput-object v8, v1, v2

    const/16 v2, 0x83

    const-string/jumbo v8, "\u30a2"

    aput-object v8, v1, v2

    const/16 v2, 0x84

    const-string/jumbo v8, "\u6c7a"

    aput-object v8, v1, v2

    const/16 v2, 0x85

    const-string/jumbo v8, "\u518d"

    aput-object v8, v1, v2

    const/16 v2, 0x86

    const-string/jumbo v8, "\u76f4"

    aput-object v8, v1, v2

    const/16 v2, 0x87

    const-string/jumbo v8, "\u548c"

    aput-object v8, v1, v2

    const/16 v2, 0x88

    const-string/jumbo v8, "\u578b"

    aput-object v8, v1, v2

    const/16 v2, 0x89

    const-string/jumbo v8, "\u7279"

    aput-object v8, v1, v2

    const/16 v2, 0x8a

    const-string/jumbo v8, "\u82f1"

    aput-object v8, v1, v2

    const/16 v2, 0x8b

    const-string/jumbo v8, "\u5c0f"

    aput-object v8, v1, v2

    const/16 v2, 0x8c

    const-string/jumbo v8, "\u5316"

    aput-object v8, v1, v2

    const/16 v2, 0x8d

    const-string/jumbo v8, "\u5c11"

    aput-object v8, v1, v2

    const/16 v2, 0x8e

    const-string/jumbo v8, "\u5317"

    aput-object v8, v1, v2

    const/16 v2, 0x8f

    const-string/jumbo v8, "\u7cfb"

    aput-object v8, v1, v2

    const/16 v2, 0x90

    const-string/jumbo v8, "\u30b0"

    aput-object v8, v1, v2

    const/16 v2, 0x91

    const-string/jumbo v8, "\u7701"

    aput-object v8, v1, v2

    const/16 v2, 0x92

    const-string/jumbo v8, "\u5916"

    aput-object v8, v1, v2

    const/16 v2, 0x93

    const-string/jumbo v8, "\u7d04"

    aput-object v8, v1, v2

    const/16 v2, 0x94

    const-string/jumbo v8, "\u9078"

    aput-object v8, v1, v2

    const/16 v2, 0x95

    const-string/jumbo v8, "\u30b9"

    aput-object v8, v1, v2

    const/16 v2, 0x96

    const-string/jumbo v8, "\u8005"

    aput-object v8, v1, v2

    const/16 v2, 0x97

    const-string/jumbo v8, "\u770c"

    aput-object v8, v1, v2

    const/16 v2, 0x98

    const-string/jumbo v8, "\u7a0e"

    aput-object v8, v1, v2

    const/16 v2, 0x99

    const-string/jumbo v8, "\u30c3"

    aput-object v8, v1, v2

    const/16 v2, 0x9a

    const-string/jumbo v8, "\u30c8"

    aput-object v8, v1, v2

    const/16 v2, 0x9b

    const-string/jumbo v8, "\u7121"

    aput-object v8, v1, v2

    const/16 v2, 0x9c

    const-string/jumbo v8, "\u7d1a"

    aput-object v8, v1, v2

    const/16 v2, 0x9d

    const-string/jumbo v8, "\u4eba"

    aput-object v8, v1, v2

    const/16 v2, 0x9e

    const-string/jumbo v8, "\u533a"

    aput-object v8, v1, v2

    const/16 v2, 0x9f

    const-string/jumbo v8, "\u6238"

    aput-object v8, v1, v2

    const/16 v2, 0xa0

    const-string/jumbo v8, "\u5343"

    aput-object v8, v1, v2

    const/16 v2, 0xa1

    const-string/jumbo v8, "\u6838"

    aput-object v8, v1, v2

    const/16 v2, 0xa2

    const-string/jumbo v8, "\u4eca"

    aput-object v8, v1, v2

    const/16 v2, 0xa3

    const-string/jumbo v8, "\u5348"

    aput-object v8, v1, v2

    const/16 v2, 0xa4

    const-string/jumbo v8, "\u30e0"

    aput-object v8, v1, v2

    const/16 v2, 0xa5

    const-string/jumbo v8, "\u653f"

    aput-object v8, v1, v2

    const/16 v2, 0xa6

    const-string/jumbo v8, "\u4ed6"

    aput-object v8, v1, v2

    const/16 v2, 0xa7

    const-string/jumbo v8, "\u5354"

    aput-object v8, v1, v2

    const/16 v2, 0xa8

    const-string/jumbo v8, "\u30eb"

    aput-object v8, v1, v2

    const/16 v2, 0xa9

    const-string/jumbo v8, "\u30ed"

    aput-object v8, v1, v2

    const/16 v2, 0xaa

    const-string/jumbo v8, "\uff63"

    aput-object v8, v1, v2

    const/16 v2, 0xab

    const-string/jumbo v8, "\uff65"

    aput-object v8, v1, v2

    const/16 v2, 0xac

    const-string/jumbo v8, "\u5f53"

    aput-object v8, v1, v2

    const/16 v2, 0xad

    const-string/jumbo v8, "\u30f3"

    aput-object v8, v1, v2

    const/16 v2, 0xae

    const-string/jumbo v8, "\u54e1"

    aput-object v8, v1, v2

    const/16 v2, 0xaf

    const-string/jumbo v8, "\u4ee5"

    aput-object v8, v1, v2

    const/16 v2, 0xb0

    const-string/jumbo v8, "\uff6f"

    aput-object v8, v1, v2

    const/16 v2, 0xb1

    const-string/jumbo v8, "\u30fb"

    aput-object v8, v1, v2

    const/16 v2, 0xb2

    const-string/jumbo v8, "\u8abf"

    aput-object v8, v1, v2

    const/16 v2, 0xb3

    const-string/jumbo v8, "\uff71"

    aput-object v8, v1, v2

    const/16 v2, 0xb4

    const-string/jumbo v8, "\u6559"

    aput-object v8, v1, v2

    const/16 v2, 0xb5

    const-string/jumbo v8, "\u5dde"

    aput-object v8, v1, v2

    const/16 v2, 0xb6

    const-string/jumbo v8, "\u6cd5"

    aput-object v8, v1, v2

    const/16 v2, 0xb7

    const-string/jumbo v8, "\u66dc"

    aput-object v8, v1, v2

    const/16 v2, 0xb8

    const-string/jumbo v8, "\uff7d"

    aput-object v8, v1, v2

    const/16 v2, 0xb9

    const-string/jumbo v8, "\u2212"

    aput-object v8, v1, v2

    const/16 v2, 0xba

    const-string/jumbo v8, "\u99c5"

    aput-object v8, v1, v2

    const/16 v2, 0xbb

    const-string/jumbo v8, "\u90ce"

    aput-object v8, v1, v2

    const/16 v2, 0xbc

    const-string/jumbo v8, "\uff84"

    aput-object v8, v1, v2

    const/16 v2, 0xbd

    const-string/jumbo v8, "\u6570"

    aput-object v8, v1, v2

    const/16 v2, 0xbe

    const-string/jumbo v8, "\uff91"

    aput-object v8, v1, v2

    const/16 v2, 0xbf

    const-string/jumbo v8, "\u5206"

    aput-object v8, v1, v2

    const/16 v2, 0xc0

    const-string/jumbo v8, "\u5e02"

    aput-object v8, v1, v2

    const/16 v2, 0xc1

    const-string/jumbo v8, "\u81ea"

    aput-object v8, v1, v2

    const/16 v2, 0xc2

    const-string/jumbo v8, "\u90e1"

    aput-object v8, v1, v2

    const/16 v2, 0xc3

    const-string/jumbo v8, "\uff99"

    aput-object v8, v1, v2

    const/16 v2, 0xc4

    const-string/jumbo v8, "\u6700"

    aput-object v8, v1, v2

    const/16 v2, 0xc5

    const-string/jumbo v8, "\u7d71"

    aput-object v8, v1, v2

    const/16 v2, 0xc6

    const-string/jumbo v8, "\uff9b"

    aput-object v8, v1, v2

    const/16 v2, 0xc7

    const-string/jumbo v8, "\uff9d"

    aput-object v8, v1, v2

    const/16 v2, 0xc8

    const-string/jumbo v8, "\u90e8"

    aput-object v8, v1, v2

    const/16 v2, 0xc9

    const-string/jumbo v8, "\u6587"

    aput-object v8, v1, v2

    const/16 v2, 0xca

    const-string/jumbo v8, "\u6708"

    aput-object v8, v1, v2

    const/16 v2, 0xcb

    const-string/jumbo v8, "\u96e8"

    aput-object v8, v1, v2

    const/16 v2, 0xcc

    const-string/jumbo v8, "\u521d"

    aput-object v8, v1, v2

    const/16 v2, 0xcd

    const-string/jumbo v8, "\u5f97"

    aput-object v8, v1, v2

    const/16 v2, 0xce

    const-string/jumbo v8, "\u9577"

    aput-object v8, v1, v2

    const/16 v2, 0xcf

    const-string/jumbo v8, "\u5225"

    aput-object v8, v1, v2

    const/16 v2, 0xd0

    const-string/jumbo v8, "\u96fb"

    aput-object v8, v1, v2

    const/16 v2, 0xd1

    const-string/jumbo v8, "\u671f"

    aput-object v8, v1, v2

    const/16 v2, 0xd2

    const-string/jumbo v8, "\u898b"

    aput-object v8, v1, v2

    const/16 v2, 0xd3

    const-string/jumbo v8, "\u5834"

    aput-object v8, v1, v2

    const/16 v2, 0xd4

    const-string/jumbo v8, "\u958b"

    aput-object v8, v1, v2

    const/16 v2, 0xd5

    const-string/jumbo v8, "\u65b0"

    aput-object v8, v1, v2

    const/16 v2, 0xd6

    const-string/jumbo v8, "\u59bb"

    aput-object v8, v1, v2

    const/16 v2, 0xd7

    const-string/jumbo v8, "\u9593"

    aput-object v8, v1, v2

    const/16 v2, 0xd8

    const-string/jumbo v8, "\u8ca1"

    aput-object v8, v1, v2

    sput-object v1, Lcom/amazon/ebook/util/text/tinysegmenter/TinySegmenterConstants;->UW3_KEYS:[Ljava/lang/String;

    const/16 v1, 0xd9

    new-array v1, v1, [Ljava/lang/Integer;

    new-instance v2, Ljava/lang/Integer;

    const/16 v8, -0x320

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    aput-object v2, v1, v3

    new-instance v2, Ljava/lang/Integer;

    const/16 v8, 0x32b

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    aput-object v2, v1, v4

    new-instance v2, Ljava/lang/Integer;

    const/16 v8, 0x8ee

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    aput-object v2, v1, v6

    new-instance v2, Ljava/lang/Integer;

    const/16 v8, -0x502

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    aput-object v2, v1, v7

    new-instance v2, Ljava/lang/Integer;

    const/16 v8, 0x10a9

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    aput-object v2, v1, v0

    new-instance v2, Ljava/lang/Integer;

    const/16 v8, -0x169

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    aput-object v2, v1, v9

    new-instance v2, Ljava/lang/Integer;

    const/16 v8, 0xc16

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    aput-object v2, v1, v5

    new-instance v2, Ljava/lang/Integer;

    const/16 v8, 0x16c

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    aput-object v2, v1, v10

    new-instance v2, Ljava/lang/Integer;

    const/16 v8, 0x6f1

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    aput-object v2, v1, v11

    new-instance v2, Ljava/lang/Integer;

    const/16 v8, 0x1e3

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    aput-object v2, v1, v12

    new-instance v2, Ljava/lang/Integer;

    const/16 v8, -0x5e0

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    aput-object v2, v1, v13

    new-instance v2, Ljava/lang/Integer;

    const/16 v8, -0x3c0

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    const/16 v8, 0xb

    aput-object v2, v1, v8

    new-instance v2, Ljava/lang/Integer;

    const/16 v8, 0x1319

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    const/16 v8, 0xc

    aput-object v2, v1, v8

    new-instance v2, Ljava/lang/Integer;

    const/16 v8, -0x54c

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    const/16 v8, 0xd

    aput-object v2, v1, v8

    new-instance v2, Ljava/lang/Integer;

    const/16 v8, 0x48b

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    const/16 v8, 0xe

    aput-object v2, v1, v8

    new-instance v2, Ljava/lang/Integer;

    const/16 v8, -0x907

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    const/16 v8, 0xf

    aput-object v2, v1, v8

    new-instance v2, Ljava/lang/Integer;

    const/16 v8, 0x1155

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    const/16 v8, 0x10

    aput-object v2, v1, v8

    new-instance v2, Ljava/lang/Integer;

    const/16 v8, 0x16c3

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    const/16 v8, 0x11

    aput-object v2, v1, v8

    new-instance v2, Ljava/lang/Integer;

    const/16 v8, 0x833

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    const/16 v8, 0x12

    aput-object v2, v1, v8

    new-instance v2, Ljava/lang/Integer;

    const/16 v8, 0x16a0

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    const/16 v8, 0x13

    aput-object v2, v1, v8

    new-instance v2, Ljava/lang/Integer;

    const/16 v8, 0x4d1

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    const/16 v8, 0x14

    aput-object v2, v1, v8

    new-instance v2, Ljava/lang/Integer;

    const/16 v8, 0x1319

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    const/16 v8, 0x15

    aput-object v2, v1, v8

    new-instance v2, Ljava/lang/Integer;

    const/16 v8, 0xa6e

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    const/16 v8, 0x16

    aput-object v2, v1, v8

    new-instance v2, Ljava/lang/Integer;

    const/16 v8, 0x4e7

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    const/16 v8, 0x17

    aput-object v2, v1, v8

    new-instance v2, Ljava/lang/Integer;

    const/16 v8, -0x70c

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    const/16 v8, 0x18

    aput-object v2, v1, v8

    new-instance v2, Ljava/lang/Integer;

    const/16 v8, 0x970

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    const/16 v8, 0x19

    aput-object v2, v1, v8

    new-instance v2, Ljava/lang/Integer;

    const/16 v8, -0xdf5

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    const/16 v8, 0x1a

    aput-object v2, v1, v8

    new-instance v2, Ljava/lang/Integer;

    const/16 v8, -0x653

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    const/16 v8, 0x1b

    aput-object v2, v1, v8

    new-instance v2, Ljava/lang/Integer;

    const/16 v8, 0x986

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    const/16 v8, 0x1c

    aput-object v2, v1, v8

    new-instance v2, Ljava/lang/Integer;

    const/16 v8, -0x5f8

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    const/16 v8, 0x1d

    aput-object v2, v1, v8

    new-instance v2, Ljava/lang/Integer;

    const/16 v8, -0x325

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    const/16 v8, 0x1e

    aput-object v2, v1, v8

    new-instance v2, Ljava/lang/Integer;

    const/16 v8, 0x282

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    const/16 v8, 0x1f

    aput-object v2, v1, v8

    new-instance v2, Ljava/lang/Integer;

    const/16 v8, 0xe04

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    const/16 v8, 0x20

    aput-object v2, v1, v8

    new-instance v2, Ljava/lang/Integer;

    const/16 v8, -0x6df

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    const/16 v8, 0x21

    aput-object v2, v1, v8

    new-instance v2, Ljava/lang/Integer;

    const/16 v8, -0xf1

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    const/16 v8, 0x22

    aput-object v2, v1, v8

    new-instance v2, Ljava/lang/Integer;

    const/16 v8, -0x1ef

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    const/16 v8, 0x23

    aput-object v2, v1, v8

    new-instance v2, Ljava/lang/Integer;

    const/16 v8, -0x406

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    const/16 v8, 0x24

    aput-object v2, v1, v8

    new-instance v2, Ljava/lang/Integer;

    const/16 v8, 0x812

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    const/16 v8, 0x25

    aput-object v2, v1, v8

    new-instance v2, Ljava/lang/Integer;

    const/16 v8, 0xf42

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    const/16 v8, 0x26

    aput-object v2, v1, v8

    new-instance v2, Ljava/lang/Integer;

    const/16 v8, -0x1a7

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    const/16 v8, 0x27

    aput-object v2, v1, v8

    new-instance v2, Ljava/lang/Integer;

    const/16 v8, 0x1e57

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    const/16 v8, 0x28

    aput-object v2, v1, v8

    new-instance v2, Ljava/lang/Integer;

    const/16 v8, -0xf85

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    const/16 v8, 0x29

    aput-object v2, v1, v8

    new-instance v2, Ljava/lang/Integer;

    const/16 v8, -0x827

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    const/16 v8, 0x2a

    aput-object v2, v1, v8

    new-instance v2, Ljava/lang/Integer;

    const/16 v8, 0x16d

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    const/16 v8, 0x2b

    aput-object v2, v1, v8

    new-instance v2, Ljava/lang/Integer;

    const/16 v8, 0x1c91

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    const/16 v8, 0x2c

    aput-object v2, v1, v8

    new-instance v2, Ljava/lang/Integer;

    const/16 v8, 0x2d5

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    const/16 v8, 0x2d

    aput-object v2, v1, v8

    new-instance v2, Ljava/lang/Integer;

    const/16 v8, 0xee7

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    const/16 v8, 0x2e

    aput-object v2, v1, v8

    new-instance v2, Ljava/lang/Integer;

    const/16 v8, 0xa35

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    const/16 v8, 0x2f

    aput-object v2, v1, v8

    new-instance v2, Ljava/lang/Integer;

    const/16 v8, -0x69e

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    const/16 v8, 0x30

    aput-object v2, v1, v8

    new-instance v2, Ljava/lang/Integer;

    const/16 v8, 0x645

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    const/16 v8, 0x31

    aput-object v2, v1, v8

    new-instance v2, Ljava/lang/Integer;

    const/16 v8, -0x3f0

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    const/16 v8, 0x32

    aput-object v2, v1, v8

    new-instance v2, Ljava/lang/Integer;

    const/16 v8, -0x50b

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    const/16 v8, 0x33

    aput-object v2, v1, v8

    new-instance v2, Ljava/lang/Integer;

    const/16 v8, 0x28d

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    const/16 v8, 0x34

    aput-object v2, v1, v8

    new-instance v2, Ljava/lang/Integer;

    const/16 v8, -0xa88

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    const/16 v8, 0x35

    aput-object v2, v1, v8

    new-instance v2, Ljava/lang/Integer;

    const/16 v8, 0x3ee

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    const/16 v8, 0x36

    aput-object v2, v1, v8

    new-instance v2, Ljava/lang/Integer;

    const/16 v8, 0x5ac

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    const/16 v8, 0x37

    aput-object v2, v1, v8

    new-instance v2, Ljava/lang/Integer;

    const/16 v8, 0x926

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    const/16 v8, 0x38

    aput-object v2, v1, v8

    new-instance v2, Ljava/lang/Integer;

    const/16 v8, 0x71e

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    const/16 v8, 0x39

    aput-object v2, v1, v8

    new-instance v2, Ljava/lang/Integer;

    const/16 v8, 0x7bf

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    const/16 v8, 0x3a

    aput-object v2, v1, v8

    new-instance v2, Ljava/lang/Integer;

    const/16 v8, -0x1300

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    const/16 v8, 0x3b

    aput-object v2, v1, v8

    new-instance v2, Ljava/lang/Integer;

    const/16 v8, -0x48b

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    const/16 v8, 0x3c

    aput-object v2, v1, v8

    new-instance v2, Ljava/lang/Integer;

    const/16 v8, -0x295

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    const/16 v8, 0x3d

    aput-object v2, v1, v8

    new-instance v2, Ljava/lang/Integer;

    const/16 v8, 0xcc7

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    const/16 v8, 0x3e

    aput-object v2, v1, v8

    new-instance v2, Ljava/lang/Integer;

    const/16 v8, -0x111

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    const/16 v8, 0x3f

    aput-object v2, v1, v8

    new-instance v2, Ljava/lang/Integer;

    const/16 v8, -0x2f6

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    const/16 v8, 0x40

    aput-object v2, v1, v8

    new-instance v2, Ljava/lang/Integer;

    const/16 v8, 0x3ec

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    const/16 v8, 0x41

    aput-object v2, v1, v8

    new-instance v2, Ljava/lang/Integer;

    const/16 v8, 0x184

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    const/16 v8, 0x42

    aput-object v2, v1, v8

    new-instance v2, Ljava/lang/Integer;

    const/16 v8, 0x191

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    const/16 v8, 0x43

    aput-object v2, v1, v8

    new-instance v2, Ljava/lang/Integer;

    const/16 v8, 0x436

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    const/16 v8, 0x44

    aput-object v2, v1, v8

    new-instance v2, Ljava/lang/Integer;

    const/16 v8, -0xde0

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    const/16 v8, 0x45

    aput-object v2, v1, v8

    new-instance v2, Ljava/lang/Integer;

    const/16 v8, -0xc2c

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    const/16 v8, 0x46

    aput-object v2, v1, v8

    new-instance v2, Ljava/lang/Integer;

    const/16 v8, -0x422

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    const/16 v8, 0x47

    aput-object v2, v1, v8

    new-instance v2, Ljava/lang/Integer;

    const/16 v8, 0x392

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    const/16 v8, 0x48

    aput-object v2, v1, v8

    new-instance v2, Ljava/lang/Integer;

    const/16 v8, -0x18b

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    const/16 v8, 0x49

    aput-object v2, v1, v8

    new-instance v2, Ljava/lang/Integer;

    const/16 v8, 0x12fa

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    const/16 v8, 0x4a

    aput-object v2, v1, v8

    new-instance v2, Ljava/lang/Integer;

    const/16 v8, 0x248

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    const/16 v8, 0x4b

    aput-object v2, v1, v8

    new-instance v2, Ljava/lang/Integer;

    const/16 v8, -0x470

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    const/16 v8, 0x4c

    aput-object v2, v1, v8

    new-instance v2, Ljava/lang/Integer;

    const/16 v8, 0xe65

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    const/16 v8, 0x4d

    aput-object v2, v1, v8

    new-instance v2, Ljava/lang/Integer;

    const/16 v8, -0x146c

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    const/16 v8, 0x4e

    aput-object v2, v1, v8

    new-instance v2, Ljava/lang/Integer;

    const/16 v8, 0x4b1

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    const/16 v8, 0x4f

    aput-object v2, v1, v8

    new-instance v2, Ljava/lang/Integer;

    const/16 v8, 0x527

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    const/16 v8, 0x50

    aput-object v2, v1, v8

    new-instance v2, Ljava/lang/Integer;

    const/16 v8, 0x34a

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    const/16 v8, 0x51

    aput-object v2, v1, v8

    new-instance v2, Ljava/lang/Integer;

    const/16 v8, -0x209

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    const/16 v8, 0x52

    aput-object v2, v1, v8

    new-instance v2, Ljava/lang/Integer;

    const/16 v8, -0x5a4

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    const/16 v8, 0x53

    aput-object v2, v1, v8

    new-instance v2, Ljava/lang/Integer;

    const/16 v8, -0x439

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    const/16 v8, 0x54

    aput-object v2, v1, v8

    new-instance v2, Ljava/lang/Integer;

    const/16 v8, 0x1817

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    const/16 v8, 0x55

    aput-object v2, v1, v8

    new-instance v2, Ljava/lang/Integer;

    const/16 v8, -0x4e0

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    const/16 v8, 0x56

    aput-object v2, v1, v8

    new-instance v2, Ljava/lang/Integer;

    const/16 v8, 0x90e

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    const/16 v8, 0x57

    aput-object v2, v1, v8

    new-instance v2, Ljava/lang/Integer;

    const/16 v8, 0x69b

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    const/16 v8, 0x58

    aput-object v2, v1, v8

    new-instance v2, Ljava/lang/Integer;

    const/16 v8, 0x4bf

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    const/16 v8, 0x59

    aput-object v2, v1, v8

    new-instance v2, Ljava/lang/Integer;

    const/16 v8, -0x383

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    const/16 v8, 0x5a

    aput-object v2, v1, v8

    new-instance v2, Ljava/lang/Integer;

    const/16 v8, -0xae4

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    const/16 v8, 0x5b

    aput-object v2, v1, v8

    new-instance v2, Ljava/lang/Integer;

    const/16 v8, 0xab9

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    const/16 v8, 0x5c

    aput-object v2, v1, v8

    new-instance v2, Ljava/lang/Integer;

    const/16 v8, -0x3b5

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    const/16 v8, 0x5d

    aput-object v2, v1, v8

    new-instance v2, Ljava/lang/Integer;

    const/16 v8, 0xfd8

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    const/16 v8, 0x5e

    aput-object v2, v1, v8

    new-instance v2, Ljava/lang/Integer;

    const/16 v8, 0x11cb

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    const/16 v8, 0x5f

    aput-object v2, v1, v8

    new-instance v2, Ljava/lang/Integer;

    const/16 v8, -0x750

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    const/16 v8, 0x60

    aput-object v2, v1, v8

    new-instance v2, Ljava/lang/Integer;

    const/16 v8, 0xe09

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    const/16 v8, 0x61

    aput-object v2, v1, v8

    new-instance v2, Ljava/lang/Integer;

    const/16 v8, -0x87b

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    const/16 v8, 0x62

    aput-object v2, v1, v8

    new-instance v2, Ljava/lang/Integer;

    const/16 v8, -0x987

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    const/16 v8, 0x63

    aput-object v2, v1, v8

    new-instance v2, Ljava/lang/Integer;

    const/16 v8, 0x1087

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    const/16 v8, 0x64

    aput-object v2, v1, v8

    new-instance v2, Ljava/lang/Integer;

    const/16 v8, -0x706

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    const/16 v8, 0x65

    aput-object v2, v1, v8

    new-instance v2, Ljava/lang/Integer;

    const/16 v8, 0x4af

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    const/16 v8, 0x66

    aput-object v2, v1, v8

    new-instance v2, Ljava/lang/Integer;

    const/16 v8, -0x158c

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    const/16 v8, 0x67

    aput-object v2, v1, v8

    new-instance v2, Ljava/lang/Integer;

    const/16 v8, -0x1120

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    const/16 v8, 0x68

    aput-object v2, v1, v8

    new-instance v2, Ljava/lang/Integer;

    const/16 v8, 0x626

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    const/16 v8, 0x69

    aput-object v2, v1, v8

    new-instance v2, Ljava/lang/Integer;

    const/16 v8, -0x78

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    const/16 v8, 0x6a

    aput-object v2, v1, v8

    new-instance v2, Ljava/lang/Integer;

    const/16 v8, 0x4b5

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    const/16 v8, 0x6b

    aput-object v2, v1, v8

    new-instance v2, Ljava/lang/Integer;

    const/16 v8, -0xbd6

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    const/16 v8, 0x6c

    aput-object v2, v1, v8

    new-instance v2, Ljava/lang/Integer;

    const/16 v8, 0x913

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    const/16 v8, 0x6d

    aput-object v2, v1, v8

    new-instance v2, Ljava/lang/Integer;

    const/16 v8, 0x2f3

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    const/16 v8, 0x6e

    aput-object v2, v1, v8

    new-instance v2, Ljava/lang/Integer;

    const/16 v8, -0x314

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    const/16 v8, 0x6f

    aput-object v2, v1, v8

    new-instance v2, Ljava/lang/Integer;

    const/16 v8, -0x758

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    const/16 v8, 0x70

    aput-object v2, v1, v8

    new-instance v2, Ljava/lang/Integer;

    const/16 v8, -0xca

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    const/16 v8, 0x71

    aput-object v2, v1, v8

    new-instance v2, Ljava/lang/Integer;

    const/16 v8, 0x2d7

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    const/16 v8, 0x72

    aput-object v2, v1, v8

    new-instance v2, Ljava/lang/Integer;

    const/16 v8, 0x72b

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    const/16 v8, 0x73

    aput-object v2, v1, v8

    new-instance v2, Ljava/lang/Integer;

    const/16 v8, 0x289

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    const/16 v8, 0x74

    aput-object v2, v1, v8

    new-instance v2, Ljava/lang/Integer;

    const/16 v8, 0x1711

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    const/16 v8, 0x75

    aput-object v2, v1, v8

    new-instance v2, Ljava/lang/Integer;

    const/16 v8, 0xad5

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    const/16 v8, 0x76

    aput-object v2, v1, v8

    new-instance v2, Ljava/lang/Integer;

    const/16 v8, 0x55f

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    const/16 v8, 0x77

    aput-object v2, v1, v8

    new-instance v2, Ljava/lang/Integer;

    const/16 v8, -0x4b7

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    const/16 v8, 0x78

    aput-object v2, v1, v8

    new-instance v2, Ljava/lang/Integer;

    const/16 v8, 0x19dc

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    const/16 v8, 0x79

    aput-object v2, v1, v8

    new-instance v2, Ljava/lang/Integer;

    const/16 v8, 0x873

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    const/16 v8, 0x7a

    aput-object v2, v1, v8

    new-instance v2, Ljava/lang/Integer;

    const/16 v8, -0x206

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    const/16 v8, 0x7b

    aput-object v2, v1, v8

    new-instance v2, Ljava/lang/Integer;

    const/16 v8, 0x1e4

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    const/16 v8, 0x7c

    aput-object v2, v1, v8

    new-instance v2, Ljava/lang/Integer;

    const/16 v8, 0x1cd

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    const/16 v8, 0x7d

    aput-object v2, v1, v8

    new-instance v2, Ljava/lang/Integer;

    const/16 v8, -0x930

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    const/16 v8, 0x7e

    aput-object v2, v1, v8

    new-instance v2, Ljava/lang/Integer;

    const/16 v8, -0x320

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    const/16 v8, 0x7f

    aput-object v2, v1, v8

    new-instance v2, Ljava/lang/Integer;

    const/16 v8, 0x16af

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    const/16 v8, 0x80

    aput-object v2, v1, v8

    new-instance v2, Ljava/lang/Integer;

    const/16 v8, -0x4a9

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    const/16 v8, 0x81

    aput-object v2, v1, v8

    new-instance v2, Ljava/lang/Integer;

    const/16 v8, 0x3ce

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    const/16 v8, 0x82

    aput-object v2, v1, v8

    new-instance v2, Ljava/lang/Integer;

    const/16 v8, 0x227

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    const/16 v8, 0x83

    aput-object v2, v1, v8

    new-instance v2, Ljava/lang/Integer;

    const/16 v8, -0x431

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    const/16 v8, 0x84

    aput-object v2, v1, v8

    new-instance v2, Ljava/lang/Integer;

    const/16 v8, 0xc17

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    const/16 v8, 0x85

    aput-object v2, v1, v8

    new-instance v2, Ljava/lang/Integer;

    const/16 v8, -0x72b

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    const/16 v8, 0x86

    aput-object v2, v1, v8

    new-instance v2, Ljava/lang/Integer;

    const/16 v8, -0x345

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    const/16 v8, 0x87

    aput-object v2, v1, v8

    new-instance v2, Ljava/lang/Integer;

    const/16 v8, 0x56d

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    const/16 v8, 0x88

    aput-object v2, v1, v8

    new-instance v2, Ljava/lang/Integer;

    const/16 v8, -0xf0a

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    const/16 v8, 0x89

    aput-object v2, v1, v8

    new-instance v2, Ljava/lang/Integer;

    const/16 v8, 0x311

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    const/16 v8, 0x8a

    aput-object v2, v1, v8

    new-instance v2, Ljava/lang/Integer;

    const/16 v8, -0x201

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    const/16 v8, 0x8b

    aput-object v2, v1, v8

    new-instance v2, Ljava/lang/Integer;

    const/16 v8, 0x52f

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    const/16 v8, 0x8c

    aput-object v2, v1, v8

    new-instance v2, Ljava/lang/Integer;

    const/16 v8, -0xc1e

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    const/16 v8, 0x8d

    aput-object v2, v1, v8

    new-instance v2, Ljava/lang/Integer;

    const/16 v8, -0x40e

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    const/16 v8, 0x8e

    aput-object v2, v1, v8

    new-instance v2, Ljava/lang/Integer;

    const/16 v8, 0xbfa

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    const/16 v8, 0x8f

    aput-object v2, v1, v8

    new-instance v2, Ljava/lang/Integer;

    const/16 v8, 0x527

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    const/16 v8, 0x90

    aput-object v2, v1, v8

    new-instance v2, Ljava/lang/Integer;

    const/16 v8, 0x318

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    const/16 v8, 0x91

    aput-object v2, v1, v8

    new-instance v2, Ljava/lang/Integer;

    const/16 v8, -0xf1

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    const/16 v8, 0x92

    aput-object v2, v1, v8

    new-instance v2, Ljava/lang/Integer;

    const/16 v8, 0xe4f

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    const/16 v8, 0x93

    aput-object v2, v1, v8

    new-instance v2, Ljava/lang/Integer;

    const/16 v8, -0x2a9

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    const/16 v8, 0x94

    aput-object v2, v1, v8

    new-instance v2, Ljava/lang/Integer;

    const/16 v8, 0x36a

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    const/16 v8, 0x95

    aput-object v2, v1, v8

    new-instance v2, Ljava/lang/Integer;

    const/16 v8, 0x1939

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    const/16 v8, 0x96

    aput-object v2, v1, v8

    new-instance v2, Ljava/lang/Integer;

    const/16 v8, 0x1895

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    const/16 v8, 0x97

    aput-object v2, v1, v8

    new-instance v2, Ljava/lang/Integer;

    const/16 v8, 0x191

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    const/16 v8, 0x98

    aput-object v2, v1, v8

    new-instance v2, Ljava/lang/Integer;

    const/16 v8, -0x546

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    const/16 v8, 0x99

    aput-object v2, v1, v8

    new-instance v2, Ljava/lang/Integer;

    const/16 v8, 0x209

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    const/16 v8, 0x9a

    aput-object v2, v1, v8

    new-instance v2, Ljava/lang/Integer;

    const/16 v8, 0x3d3

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    const/16 v8, 0x9b

    aput-object v2, v1, v8

    new-instance v2, Ljava/lang/Integer;

    const/16 v8, 0x568

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    const/16 v8, 0x9c

    aput-object v2, v1, v8

    new-instance v2, Ljava/lang/Integer;

    const/16 v8, 0xab6

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    const/16 v8, 0x9d

    aput-object v2, v1, v8

    new-instance v2, Ljava/lang/Integer;

    const/16 v8, 0x1226

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    const/16 v8, 0x9e

    aput-object v2, v1, v8

    new-instance v2, Ljava/lang/Integer;

    const/16 v8, -0x1e8

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    const/16 v8, 0x9f

    aput-object v2, v1, v8

    new-instance v2, Ljava/lang/Integer;

    const/16 v8, -0x905

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    const/16 v8, 0xa0

    aput-object v2, v1, v8

    new-instance v2, Ljava/lang/Integer;

    const/16 v8, 0x1424

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    const/16 v8, 0xa1

    aput-object v2, v1, v8

    new-instance v2, Ljava/lang/Integer;

    const/16 v8, 0x318

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    const/16 v8, 0xa2

    aput-object v2, v1, v8

    new-instance v2, Ljava/lang/Integer;

    const/16 v8, -0x30f

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    const/16 v8, 0xa3

    aput-object v2, v1, v8

    new-instance v2, Ljava/lang/Integer;

    const/16 v8, 0x455

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    const/16 v8, 0xa4

    aput-object v2, v1, v8

    new-instance v2, Ljava/lang/Integer;

    const/16 v8, -0x7dd

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    const/16 v8, 0xa5

    aput-object v2, v1, v8

    new-instance v2, Ljava/lang/Integer;

    const/16 v8, 0x761

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    const/16 v8, 0xa6

    aput-object v2, v1, v8

    new-instance v2, Ljava/lang/Integer;

    const/16 v8, -0x3ee

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    const/16 v8, 0xa7

    aput-object v2, v1, v8

    new-instance v2, Ljava/lang/Integer;

    const/16 v8, 0x637

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    const/16 v8, 0xa8

    aput-object v2, v1, v8

    new-instance v2, Ljava/lang/Integer;

    const/16 v8, 0x899

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    const/16 v8, 0xa9

    aput-object v2, v1, v8

    new-instance v2, Ljava/lang/Integer;

    const/16 v8, 0xa6e

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    const/16 v8, 0xaa

    aput-object v2, v1, v8

    new-instance v2, Ljava/lang/Integer;

    const/16 v8, -0xed2

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    const/16 v8, 0xab

    aput-object v2, v1, v8

    new-instance v2, Ljava/lang/Integer;

    const/16 v8, -0xf2d

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    const/16 v8, 0xac

    aput-object v2, v1, v8

    new-instance v2, Ljava/lang/Integer;

    const/16 v8, 0x116

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    const/16 v8, 0xad

    aput-object v2, v1, v8

    new-instance v2, Ljava/lang/Integer;

    const/16 v8, 0x11a1

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    const/16 v8, 0xae

    aput-object v2, v1, v8

    new-instance v2, Ljava/lang/Integer;

    const/16 v8, -0x558

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    const/16 v8, 0xaf

    aput-object v2, v1, v8

    new-instance v2, Ljava/lang/Integer;

    const/16 v8, -0x546

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    const/16 v8, 0xb0

    aput-object v2, v1, v8

    new-instance v2, Ljava/lang/Integer;

    const/16 v8, -0xed2

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    const/16 v8, 0xb1

    aput-object v2, v1, v8

    new-instance v2, Ljava/lang/Integer;

    const/16 v8, -0x232

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    const/16 v8, 0xb2

    aput-object v2, v1, v8

    new-instance v2, Ljava/lang/Integer;

    const/16 v8, 0x227

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    const/16 v8, 0xb3

    aput-object v2, v1, v8

    new-instance v2, Ljava/lang/Integer;

    const/16 v8, -0x5c7

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    const/16 v8, 0xb4

    aput-object v2, v1, v8

    new-instance v2, Ljava/lang/Integer;

    const/16 v8, 0x483

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    const/16 v8, 0xb5

    aput-object v2, v1, v8

    new-instance v2, Ljava/lang/Integer;

    const/16 v8, 0x74c

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    const/16 v8, 0xb6

    aput-object v2, v1, v8

    new-instance v2, Ljava/lang/Integer;

    const/16 v8, -0x3b7

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    const/16 v8, 0xb7

    aput-object v2, v1, v8

    new-instance v2, Ljava/lang/Integer;

    const/16 v8, 0x36a

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    const/16 v8, 0xb8

    aput-object v2, v1, v8

    new-instance v2, Ljava/lang/Integer;

    const/16 v8, -0x6bb

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    const/16 v8, 0xb9

    aput-object v2, v1, v8

    new-instance v2, Ljava/lang/Integer;

    const/16 v8, 0x654

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    const/16 v8, 0xba

    aput-object v2, v1, v8

    new-instance v2, Ljava/lang/Integer;

    const/16 v8, 0x402

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    const/16 v8, 0xbb

    aput-object v2, v1, v8

    new-instance v2, Ljava/lang/Integer;

    const/16 v8, 0x209

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    const/16 v8, 0xbc

    aput-object v2, v1, v8

    new-instance v2, Ljava/lang/Integer;

    const/16 v8, 0xc96

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    const/16 v8, 0xbd

    aput-object v2, v1, v8

    new-instance v2, Ljava/lang/Integer;

    const/16 v8, 0x455

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    const/16 v8, 0xbe

    aput-object v2, v1, v8

    new-instance v2, Ljava/lang/Integer;

    const/16 v8, 0x1c9

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    const/16 v8, 0xbf

    aput-object v2, v1, v8

    new-instance v2, Ljava/lang/Integer;

    const/16 v8, 0xc7d

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    const/16 v8, 0xc0

    aput-object v2, v1, v8

    new-instance v2, Ljava/lang/Integer;

    const/16 v8, -0xb35

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    const/16 v8, 0xc1

    aput-object v2, v1, v8

    new-instance v2, Ljava/lang/Integer;

    const/16 v8, 0x1134

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    const/16 v8, 0xc2

    aput-object v2, v1, v8

    new-instance v2, Ljava/lang/Integer;

    const/16 v8, 0x637

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    const/16 v8, 0xc3

    aput-object v2, v1, v8

    new-instance v2, Ljava/lang/Integer;

    const/16 v8, -0x3a9

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    const/16 v8, 0xc4

    aput-object v2, v1, v8

    new-instance v2, Ljava/lang/Integer;

    const/16 v8, -0x1085

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    const/16 v8, 0xc5

    aput-object v2, v1, v8

    new-instance v2, Ljava/lang/Integer;

    const/16 v8, 0x899

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    const/16 v8, 0xc6

    aput-object v2, v1, v8

    new-instance v2, Ljava/lang/Integer;

    const/16 v8, 0x116

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    const/16 v8, 0xc7

    aput-object v2, v1, v8

    new-instance v2, Ljava/lang/Integer;

    const/16 v8, 0x4b0

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    const/16 v8, 0xc8

    aput-object v2, v1, v8

    new-instance v2, Ljava/lang/Integer;

    const/16 v8, -0x5d1

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    const/16 v8, 0xc9

    aput-object v2, v1, v8

    new-instance v2, Ljava/lang/Integer;

    const/16 v8, 0x101d

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    const/16 v8, 0xca

    aput-object v2, v1, v8

    new-instance v2, Ljava/lang/Integer;

    const/16 v8, 0x7d9

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    const/16 v8, 0xcb

    aput-object v2, v1, v8

    new-instance v2, Ljava/lang/Integer;

    const/16 v8, 0x9ab

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    const/16 v8, 0xcc

    aput-object v2, v1, v8

    new-instance v2, Ljava/lang/Integer;

    const/16 v8, 0x771

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    const/16 v8, 0xcd

    aput-object v2, v1, v8

    new-instance v2, Ljava/lang/Integer;

    const/16 v8, 0x1a5

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    const/16 v8, 0xce

    aput-object v2, v1, v8

    new-instance v2, Ljava/lang/Integer;

    const/16 v8, 0x469

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    const/16 v8, 0xcf

    aput-object v2, v1, v8

    new-instance v2, Ljava/lang/Integer;

    const/16 v8, -0x415

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    const/16 v8, 0xd0

    aput-object v2, v1, v8

    new-instance v2, Ljava/lang/Integer;

    const/16 v8, 0x168

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    const/16 v8, 0xd1

    aput-object v2, v1, v8

    new-instance v2, Ljava/lang/Integer;

    const/16 v8, 0x414

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    const/16 v8, 0xd2

    aput-object v2, v1, v8

    new-instance v2, Ljava/lang/Integer;

    const/16 v8, 0x4c3

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    const/16 v8, 0xd3

    aput-object v2, v1, v8

    new-instance v2, Ljava/lang/Integer;

    const/16 v8, -0x598

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    const/16 v8, 0xd4

    aput-object v2, v1, v8

    new-instance v2, Ljava/lang/Integer;

    const/16 v8, 0x6e4

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    const/16 v8, 0xd5

    aput-object v2, v1, v8

    new-instance v2, Ljava/lang/Integer;

    const/16 v8, 0x7e0

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    const/16 v8, 0xd6

    aput-object v2, v1, v8

    new-instance v2, Ljava/lang/Integer;

    const/16 v8, 0x516

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    const/16 v8, 0xd7

    aput-object v2, v1, v8

    new-instance v2, Ljava/lang/Integer;

    const/16 v8, -0x2dd

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    const/16 v8, 0xd8

    aput-object v2, v1, v8

    sput-object v1, Lcom/amazon/ebook/util/text/tinysegmenter/TinySegmenterConstants;->UW3_VALS:[Ljava/lang/Integer;

    const/16 v1, 0xdc

    new-array v1, v1, [Ljava/lang/String;

    const-string/jumbo v2, "\u822c"

    aput-object v2, v1, v3

    const-string/jumbo v2, "\u524d"

    aput-object v2, v1, v4

    const-string/jumbo v2, "\u4f53"

    aput-object v2, v1, v6

    const-string/jumbo v2, "\u5b50"

    aput-object v2, v1, v7

    const-string/jumbo v2, "\u4f5c"

    aput-object v2, v1, v0

    const-string/jumbo v2, "\u56de"

    aput-object v2, v1, v9

    const-string/jumbo v2, "\u8fbc"

    aput-object v2, v1, v5

    const-string/jumbo v2, "\u7acb"

    aput-object v2, v1, v10

    const-string/jumbo v2, "\u3001"

    aput-object v2, v1, v11

    const-string/jumbo v2, "\u3002"

    aput-object v2, v1, v12

    const-string/jumbo v2, "\u5b66"

    aput-object v2, v1, v13

    const-string/jumbo v2, "\u7dcf"

    const/16 v8, 0xb

    aput-object v2, v1, v8

    const-string/jumbo v2, "\u526f"

    const/16 v8, 0xc

    aput-object v2, v1, v8

    const-string/jumbo v2, "\u3007"

    const/16 v8, 0xd

    aput-object v2, v1, v8

    const-string/jumbo v2, "\u884c"

    const/16 v8, 0xe

    aput-object v2, v1, v8

    const-string/jumbo v2, "\u65e5"

    const/16 v8, 0xf

    aput-object v2, v1, v8

    const-string/jumbo v2, "\u6765"

    const/16 v8, 0x10

    aput-object v2, v1, v8

    const-string/jumbo v2, "\u300c"

    const/16 v8, 0x11

    aput-object v2, v1, v8

    const-string v2, "\u0002C"

    const/16 v8, 0x12

    aput-object v2, v1, v8

    const-string/jumbo v2, "\u300d"

    const/16 v8, 0x13

    aput-object v2, v1, v8

    const-string v2, "."

    const/16 v8, 0x14

    aput-object v2, v1, v8

    const-string/jumbo v2, "\u7dda"

    const/16 v8, 0x15

    aput-object v2, v1, v8

    const/16 v2, 0x16

    const-string/jumbo v8, "\u8fd1"

    aput-object v8, v1, v2

    const/16 v2, 0x17

    const-string/jumbo v8, "\u5e74"

    aput-object v8, v1, v2

    const/16 v2, 0x18

    const-string/jumbo v8, "\u3013"

    aput-object v8, v1, v2

    const/16 v2, 0x19

    const-string/jumbo v8, "\u5cf6"

    aput-object v8, v1, v2

    const/16 v2, 0x1a

    const-string/jumbo v8, "\u4e00"

    aput-object v8, v1, v2

    const/16 v2, 0x1b

    const-string/jumbo v8, "\u56fd"

    aput-object v8, v1, v2

    const/16 v2, 0x1c

    const-string/jumbo v8, "\u8cde"

    aput-object v8, v1, v2

    const/16 v2, 0x1d

    const-string/jumbo v8, "\u5e81"

    aput-object v8, v1, v2

    const/16 v2, 0x1e

    const-string/jumbo v8, "\u5408"

    aput-object v8, v1, v2

    const/16 v2, 0x1f

    const-string/jumbo v8, "\u8b66"

    aput-object v8, v1, v2

    const/16 v2, 0x20

    const-string/jumbo v8, "\u7c73"

    aput-object v8, v1, v2

    const/16 v2, 0x21

    const-string/jumbo v8, "\u7f72"

    aput-object v8, v1, v2

    const/16 v2, 0x22

    const-string/jumbo v8, "\u5712"

    aput-object v8, v1, v2

    const/16 v2, 0x23

    const-string/jumbo v8, "\u8bc0"

    aput-object v8, v1, v2

    const/16 v2, 0x24

    const-string/jumbo v8, "\u529b"

    aput-object v8, v1, v2

    const/16 v2, 0x25

    const-string/jumbo v8, "\u7684"

    aput-object v8, v1, v2

    const/16 v2, 0x26

    const-string/jumbo v8, "\u80fd"

    aput-object v8, v1, v2

    const/16 v2, 0x27

    const-string/jumbo v8, "\u7387"

    aput-object v8, v1, v2

    const/16 v2, 0x28

    const-string/jumbo v8, "\u5b9a"

    aput-object v8, v1, v2

    const/16 v2, 0x29

    const-string/jumbo v8, "\u6c0f"

    aput-object v8, v1, v2

    const/16 v2, 0x2a

    const-string/jumbo v8, "\u6c11"

    aput-object v8, v1, v2

    const/16 v2, 0x2b

    const-string/jumbo v8, "\u6c17"

    aput-object v8, v1, v2

    const/16 v2, 0x2c

    const-string/jumbo v8, "\u4e2d"

    aput-object v8, v1, v2

    const/16 v2, 0x2d

    const-string/jumbo v8, "\u3042"

    aput-object v8, v1, v2

    const/16 v2, 0x2e

    const-string/jumbo v8, "\u3044"

    aput-object v8, v1, v2

    const/16 v2, 0x2f

    const-string/jumbo v8, "\u3046"

    aput-object v8, v1, v2

    const/16 v2, 0x30

    const-string/jumbo v8, "\u6027"

    aput-object v8, v1, v2

    const/16 v2, 0x31

    const-string/jumbo v8, "\u3048"

    aput-object v8, v1, v2

    const/16 v2, 0x32

    const-string/jumbo v8, "\u5730"

    aput-object v8, v1, v2

    const/16 v2, 0x33

    const-string/jumbo v8, "\u304a"

    aput-object v8, v1, v2

    const/16 v2, 0x34

    const-string/jumbo v8, "\u304b"

    aput-object v8, v1, v2

    const/16 v2, 0x35

    const-string/jumbo v8, "\u304c"

    aput-object v8, v1, v2

    const/16 v2, 0x36

    const-string/jumbo v8, "\u304d"

    aput-object v8, v1, v2

    const/16 v2, 0x37

    const-string/jumbo v8, "\u751f"

    aput-object v8, v1, v2

    const/16 v2, 0x38

    const-string/jumbo v8, "\u304e"

    aput-object v8, v1, v2

    const/16 v2, 0x39

    const-string/jumbo v8, "\u304f"

    aput-object v8, v1, v2

    const/16 v2, 0x3a

    const-string/jumbo v8, "\u3051"

    aput-object v8, v1, v2

    const/16 v2, 0x3b

    const-string/jumbo v8, "\u7523"

    aput-object v8, v1, v2

    const/16 v2, 0x3c

    const-string/jumbo v8, "\u3052"

    aput-object v8, v1, v2

    const/16 v2, 0x3d

    const-string/jumbo v8, "\u3053"

    aput-object v8, v1, v2

    const/16 v2, 0x3e

    const-string/jumbo v8, "\u3054"

    aput-object v8, v1, v2

    const/16 v2, 0x3f

    const-string/jumbo v8, "\u3055"

    aput-object v8, v1, v2

    const/16 v2, 0x40

    const-string/jumbo v8, "\u3057"

    aput-object v8, v1, v2

    const/16 v2, 0x41

    const-string/jumbo v8, "\u3058"

    aput-object v8, v1, v2

    const/16 v2, 0x42

    const-string/jumbo v8, "\u3059"

    aput-object v8, v1, v2

    const/16 v2, 0x43

    const-string/jumbo v8, "\u305a"

    aput-object v8, v1, v2

    const/16 v2, 0x44

    const-string/jumbo v8, "\u305b"

    aput-object v8, v1, v2

    const/16 v2, 0x45

    const-string/jumbo v8, "\u305d"

    aput-object v8, v1, v2

    const/16 v2, 0x46

    const-string/jumbo v8, "\u5148"

    aput-object v8, v1, v2

    const/16 v2, 0x47

    const-string/jumbo v8, "\u7530"

    aput-object v8, v1, v2

    const/16 v2, 0x48

    const-string/jumbo v8, "\u7b2c"

    aput-object v8, v1, v2

    const/16 v2, 0x49

    const-string/jumbo v8, "\u305f"

    aput-object v8, v1, v2

    const/16 v2, 0x4a

    const-string/jumbo v8, "\u3060"

    aput-object v8, v1, v2

    const/16 v2, 0x4b

    const-string/jumbo v8, "\u3061"

    aput-object v8, v1, v2

    const/16 v2, 0x4c

    const-string/jumbo v8, "\u3063"

    aput-object v8, v1, v2

    const/16 v2, 0x4d

    const-string/jumbo v8, "\u3064"

    aput-object v8, v1, v2

    const/16 v2, 0x4e

    const-string/jumbo v8, "\u3066"

    aput-object v8, v1, v2

    const/16 v2, 0x4f

    const-string/jumbo v8, "\u6642"

    aput-object v8, v1, v2

    const/16 v2, 0x50

    const-string/jumbo v8, "\u3067"

    aput-object v8, v1, v2

    const/16 v2, 0x51

    const-string/jumbo v8, "\u3068"

    aput-object v8, v1, v2

    const/16 v2, 0x52

    const-string/jumbo v8, "\u753a"

    aput-object v8, v1, v2

    const/16 v2, 0x53

    const-string/jumbo v8, "\u306a"

    aput-object v8, v1, v2

    const/16 v2, 0x54

    const-string/jumbo v8, "\u306b"

    aput-object v8, v1, v2

    const/16 v2, 0x55

    const-string/jumbo v8, "\u306c"

    aput-object v8, v1, v2

    const/16 v2, 0x56

    const-string/jumbo v8, "\u52d5"

    aput-object v8, v1, v2

    const/16 v2, 0x57

    const-string/jumbo v8, "\u306d"

    aput-object v8, v1, v2

    const/16 v2, 0x58

    const-string/jumbo v8, "\u306e"

    aput-object v8, v1, v2

    const/16 v2, 0x59

    const-string/jumbo v8, "\u9928"

    aput-object v8, v1, v2

    const/16 v2, 0x5a

    const-string/jumbo v8, "\u306f"

    aput-object v8, v1, v2

    const/16 v2, 0x5b

    const-string/jumbo v8, "\u3070"

    aput-object v8, v1, v2

    const/16 v2, 0x5c

    const-string/jumbo v8, "\u52d9"

    aput-object v8, v1, v2

    const/16 v2, 0x5d

    const-string/jumbo v8, "\u515a"

    aput-object v8, v1, v2

    const/16 v2, 0x5e

    const-string/jumbo v8, "\u3072"

    aput-object v8, v1, v2

    const/16 v2, 0x5f

    const-string/jumbo v8, "\u3073"

    aput-object v8, v1, v2

    const/16 v2, 0x60

    const-string/jumbo v8, "\u3075"

    aput-object v8, v1, v2

    const/16 v2, 0x61

    const-string/jumbo v8, "\u3078"

    aput-object v8, v1, v2

    const/16 v2, 0x62

    const-string/jumbo v8, "\u3079"

    aput-object v8, v1, v2

    const/16 v2, 0x63

    const-string/jumbo v8, "\u307b"

    aput-object v8, v1, v2

    const/16 v2, 0x64

    const-string/jumbo v8, "\u307e"

    aput-object v8, v1, v2

    const/16 v2, 0x65

    const-string/jumbo v8, "\u307f"

    aput-object v8, v1, v2

    const/16 v2, 0x66

    const-string/jumbo v8, "\u3080"

    aput-object v8, v1, v2

    const/16 v2, 0x67

    const-string/jumbo v8, "\u3081"

    aput-object v8, v1, v2

    const/16 v2, 0x68

    const-string/jumbo v8, "\u3082"

    aput-object v8, v1, v2

    const/16 v2, 0x69

    const-string/jumbo v8, "\u3083"

    aput-object v8, v1, v2

    const/16 v2, 0x6a

    const-string/jumbo v8, "\u3084"

    aput-object v8, v1, v2

    const/16 v2, 0x6b

    const-string/jumbo v8, "\u58eb"

    aput-object v8, v1, v2

    const/16 v2, 0x6c

    const-string/jumbo v8, "\u5171"

    aput-object v8, v1, v2

    const/16 v2, 0x6d

    const-string/jumbo v8, "\u3087"

    aput-object v8, v1, v2

    const/16 v2, 0x6e

    const-string/jumbo v8, "\u3088"

    aput-object v8, v1, v2

    const/16 v2, 0x6f

    const-string/jumbo v8, "\u3089"

    aput-object v8, v1, v2

    const/16 v2, 0x70

    const-string/jumbo v8, "\u8eca"

    aput-object v8, v1, v2

    const/16 v2, 0x71

    const-string/jumbo v8, "\u308a"

    aput-object v8, v1, v2

    const/16 v2, 0x72

    const-string/jumbo v8, "\u2015"

    aput-object v8, v1, v2

    const/16 v2, 0x73

    const-string/jumbo v8, "\u308b"

    aput-object v8, v1, v2

    const/16 v2, 0x74

    const-string/jumbo v8, "\u308c"

    aput-object v8, v1, v2

    const/16 v2, 0x75

    const-string/jumbo v8, "\u8ecd"

    aput-object v8, v1, v2

    const/16 v2, 0x76

    const-string/jumbo v8, "\u308d"

    aput-object v8, v1, v2

    const/16 v2, 0x77

    const-string/jumbo v8, "\u308f"

    aput-object v8, v1, v2

    const/16 v2, 0x78

    const-string/jumbo v8, "\u91ce"

    aput-object v8, v1, v2

    const/16 v2, 0x79

    const-string/jumbo v8, "\u3092"

    aput-object v8, v1, v2

    const/16 v2, 0x7a

    const-string/jumbo v8, "\u3093"

    aput-object v8, v1, v2

    const/16 v2, 0x7b

    const-string/jumbo v8, "\u696d"

    aput-object v8, v1, v2

    const/16 v2, 0x7c

    const-string/jumbo v8, "\u9053"

    aput-object v8, v1, v2

    const/16 v2, 0x7d

    const-string/jumbo v8, "\u7269"

    aput-object v8, v1, v2

    const/16 v2, 0x7e

    const-string/jumbo v8, "\u5bfa"

    aput-object v8, v1, v2

    const/16 v2, 0x7f

    const-string/jumbo v8, "\u5185"

    aput-object v8, v1, v2

    const/16 v2, 0x80

    const-string/jumbo v8, "\u5186"

    aput-object v8, v1, v2

    const/16 v2, 0x81

    const-string/jumbo v8, "\u4e88"

    aput-object v8, v1, v2

    const/16 v2, 0x82

    const-string/jumbo v8, "\u76ee"

    aput-object v8, v1, v2

    const/16 v2, 0x83

    const-string/jumbo v8, "\u4e8b"

    aput-object v8, v1, v2

    const/16 v2, 0x84

    const-string/jumbo v8, "\u9ad8"

    aput-object v8, v1, v2

    const/16 v2, 0x85

    const-string/jumbo v8, "\u548c"

    aput-object v8, v1, v2

    const/16 v2, 0x86

    const-string/jumbo v8, "\u9662"

    aput-object v8, v1, v2

    const/16 v2, 0x87

    const-string/jumbo v8, "\u4e95"

    aput-object v8, v1, v2

    const/16 v2, 0x88

    const-string/jumbo v8, "\u30ab"

    aput-object v8, v1, v2

    const/16 v2, 0x89

    const-string/jumbo v8, "\u5c0f"

    aput-object v8, v1, v2

    const/16 v2, 0x8a

    const-string/jumbo v8, "\u5316"

    aput-object v8, v1, v2

    const/16 v2, 0x8b

    const-string/jumbo v8, "\u7cfb"

    aput-object v8, v1, v2

    const/16 v2, 0x8c

    const-string/jumbo v8, "\u7403"

    aput-object v8, v1, v2

    const/16 v2, 0x8d

    const-string/jumbo v8, "\u7701"

    aput-object v8, v1, v2

    const/16 v2, 0x8e

    const-string/jumbo v8, "\u6e80"

    aput-object v8, v1, v2

    const/16 v2, 0x8f

    const-string/jumbo v8, "\u30b3"

    aput-object v8, v1, v2

    const/16 v2, 0x90

    const-string/jumbo v8, "\u591a"

    aput-object v8, v1, v2

    const/16 v2, 0x91

    const-string/jumbo v8, "\u7d04"

    aput-object v8, v1, v2

    const/16 v2, 0x92

    const-string/jumbo v8, "\u9078"

    aput-object v8, v1, v2

    const/16 v2, 0x93

    const-string/jumbo v8, "\u8005"

    aput-object v8, v1, v2

    const/16 v2, 0x94

    const-string/jumbo v8, "\u30bb"

    aput-object v8, v1, v2

    const/16 v2, 0x95

    const-string/jumbo v8, "\u770c"

    aput-object v8, v1, v2

    const/16 v2, 0x96

    const-string/jumbo v8, "\u5927"

    aput-object v8, v1, v2

    const/16 v2, 0x97

    const-string/jumbo v8, "\u30c3"

    aput-object v8, v1, v2

    const/16 v2, 0x98

    const-string/jumbo v8, "\u6821"

    aput-object v8, v1, v2

    const/16 v2, 0x99

    const-string/jumbo v8, "\u30c8"

    aput-object v8, v1, v2

    const/16 v2, 0x9a

    const-string/jumbo v8, "\u6ca2"

    aput-object v8, v1, v2

    const/16 v2, 0x9b

    const-string/jumbo v8, "\u4eba"

    aput-object v8, v1, v2

    const/16 v2, 0x9c

    const-string/jumbo v8, "\u533a"

    aput-object v8, v1, v2

    const/16 v2, 0x9d

    const-string/jumbo v8, "\u652f"

    aput-object v8, v1, v2

    const/16 v2, 0x9e

    const-string/jumbo v8, "\u6539"

    aput-object v8, v1, v2

    const/16 v2, 0x9f

    const-string/jumbo v8, "\u9996"

    aput-object v8, v1, v2

    const/16 v2, 0xa0

    const-string/jumbo v8, "\u9818"

    aput-object v8, v1, v2

    const/16 v2, 0xa1

    const-string/jumbo v8, "\u969b"

    aput-object v8, v1, v2

    const/16 v2, 0xa2

    const-string/jumbo v8, "\u6240"

    aput-object v8, v1, v2

    const/16 v2, 0xa3

    const-string/jumbo v8, "\u30e1"

    aput-object v8, v1, v2

    const/16 v2, 0xa4

    const-string/jumbo v8, "\u653f"

    aput-object v8, v1, v2

    const/16 v2, 0xa5

    const-string/jumbo v8, "\u5c4b"

    aput-object v8, v1, v2

    const/16 v2, 0xa6

    const-string/jumbo v8, "\u30e9"

    aput-object v8, v1, v2

    const/16 v2, 0xa7

    const-string/jumbo v8, "\u8f2a"

    aput-object v8, v1, v2

    const/16 v2, 0xa8

    const-string/jumbo v8, "\u30ea"

    aput-object v8, v1, v2

    const/16 v2, 0xa9

    const-string/jumbo v8, "\u5354"

    aput-object v8, v1, v2

    const/16 v2, 0xaa

    const-string/jumbo v8, "\u30eb"

    aput-object v8, v1, v2

    const/16 v2, 0xab

    const-string/jumbo v8, "\uff62"

    aput-object v8, v1, v2

    const/16 v2, 0xac

    const-string/jumbo v8, "\uff63"

    aput-object v8, v1, v2

    const/16 v2, 0xad

    const-string/jumbo v8, "\uff65"

    aput-object v8, v1, v2

    const/16 v2, 0xae

    const-string/jumbo v8, "\u30f3"

    aput-object v8, v1, v2

    const/16 v2, 0xaf

    const-string/jumbo v8, "\u8c37"

    aput-object v8, v1, v2

    const/16 v2, 0xb0

    const-string/jumbo v8, "\u54e1"

    aput-object v8, v1, v2

    const/16 v2, 0xb1

    const-string/jumbo v8, "\u4ee5"

    aput-object v8, v1, v2

    const/16 v2, 0xb2

    const-string/jumbo v8, "\uff6f"

    aput-object v8, v1, v2

    const/16 v2, 0xb3

    const-string/jumbo v8, "\uff70"

    aput-object v8, v1, v2

    const/16 v2, 0xb4

    const-string/jumbo v8, "\u5ddd"

    aput-object v8, v1, v2

    const/16 v2, 0xb5

    const-string/jumbo v8, "\u30fb"

    aput-object v8, v1, v2

    const/16 v2, 0xb6

    const-string/jumbo v8, "\u6559"

    aput-object v8, v1, v2

    const/16 v2, 0xb7

    const-string/jumbo v8, "\u30fc"

    aput-object v8, v1, v2

    const/16 v2, 0xb8

    const-string/jumbo v8, "\u7d4c"

    aput-object v8, v1, v2

    const/16 v2, 0xb9

    const-string/jumbo v8, "\uff76"

    aput-object v8, v1, v2

    const/16 v2, 0xba

    const-string/jumbo v8, "\u5668"

    aput-object v8, v1, v2

    const/16 v2, 0xbb

    const-string/jumbo v8, "\uff7a"

    aput-object v8, v1, v2

    const/16 v2, 0xbc

    const-string/jumbo v8, "\uff7e"

    aput-object v8, v1, v2

    const/16 v2, 0xbd

    const-string/jumbo v8, "\u5074"

    aput-object v8, v1, v2

    const/16 v2, 0xbe

    const-string/jumbo v8, "\u5c71"

    aput-object v8, v1, v2

    const/16 v2, 0xbf

    const-string/jumbo v8, "\u90ce"

    aput-object v8, v1, v2

    const/16 v2, 0xc0

    const-string/jumbo v8, "\uff84"

    aput-object v8, v1, v2

    const/16 v2, 0xc1

    const-string/jumbo v8, "\u984c"

    aput-object v8, v1, v2

    const/16 v2, 0xc2

    const-string/jumbo v8, "\uff92"

    aput-object v8, v1, v2

    const/16 v2, 0xc3

    const-string/jumbo v8, "\u5e02"

    aput-object v8, v1, v2

    const/16 v2, 0xc4

    const-string/jumbo v8, "\uff97"

    aput-object v8, v1, v2

    const/16 v2, 0xc5

    const-string/jumbo v8, "\uff98"

    aput-object v8, v1, v2

    const/16 v2, 0xc6

    const-string/jumbo v8, "\uff99"

    aput-object v8, v1, v2

    const/16 v2, 0xc7

    const-string/jumbo v8, "\u6700"

    aput-object v8, v1, v2

    const/16 v2, 0xc8

    const-string/jumbo v8, "\u7d71"

    aput-object v8, v1, v2

    const/16 v2, 0xc9

    const-string/jumbo v8, "\uff9d"

    aput-object v8, v1, v2

    const/16 v2, 0xca

    const-string/jumbo v8, "\u6587"

    aput-object v8, v1, v2

    const/16 v2, 0xcb

    const-string/jumbo v8, "\u5f8c"

    aput-object v8, v1, v2

    const/16 v2, 0xcc

    const-string/jumbo v8, "\u7a7a"

    aput-object v8, v1, v2

    const/16 v2, 0xcd

    const-string/jumbo v8, "\u6708"

    aput-object v8, v1, v2

    const/16 v2, 0xce

    const-string/jumbo v8, "\u4f1a"

    aput-object v8, v1, v2

    const/16 v2, 0xcf

    const-string/jumbo v8, "\u521d"

    aput-object v8, v1, v2

    const/16 v2, 0xd0

    const-string/jumbo v8, "\u9577"

    aput-object v8, v1, v2

    const/16 v2, 0xd1

    const-string/jumbo v8, "\u90fd"

    aput-object v8, v1, v2

    const/16 v2, 0xd2

    const-string/jumbo v8, "\u611f"

    aput-object v8, v1, v2

    const/16 v2, 0xd3

    const-string/jumbo v8, "\u96fb"

    aput-object v8, v1, v2

    const/16 v2, 0xd4

    const-string/jumbo v8, "\u9280"

    aput-object v8, v1, v2

    const/16 v2, 0xd5

    const-string/jumbo v8, "\u898f"

    aput-object v8, v1, v2

    const/16 v2, 0xd6

    const-string/jumbo v8, "\u6728"

    aput-object v8, v1, v2

    const/16 v2, 0xd7

    const-string/jumbo v8, "\u5834"

    aput-object v8, v1, v2

    const/16 v2, 0xd8

    const-string/jumbo v8, "\u9593"

    aput-object v8, v1, v2

    const/16 v2, 0xd9

    const-string/jumbo v8, "\u53c2"

    aput-object v8, v1, v2

    const/16 v2, 0xda

    const-string/jumbo v8, "\u5841"

    aput-object v8, v1, v2

    const/16 v2, 0xdb

    const-string/jumbo v8, "\u65b9"

    aput-object v8, v1, v2

    sput-object v1, Lcom/amazon/ebook/util/text/tinysegmenter/TinySegmenterConstants;->UW4_KEYS:[Ljava/lang/String;

    const/16 v1, 0xdc

    new-array v1, v1, [Ljava/lang/Integer;

    new-instance v2, Ljava/lang/Integer;

    const/16 v8, -0x354

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    aput-object v2, v1, v3

    new-instance v2, Ljava/lang/Integer;

    const/16 v8, 0x657

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    aput-object v2, v1, v4

    new-instance v2, Ljava/lang/Integer;

    const/16 v8, -0x506

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    aput-object v2, v1, v6

    new-instance v2, Ljava/lang/Integer;

    const/16 v8, -0x12c2

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    aput-object v2, v1, v7

    new-instance v2, Ljava/lang/Integer;

    const/16 v8, 0x212

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    aput-object v2, v1, v0

    new-instance v2, Ljava/lang/Integer;

    const/16 v8, 0x5dc

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    aput-object v2, v1, v9

    new-instance v2, Ljava/lang/Integer;

    const/16 v8, -0xd2a

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    aput-object v2, v1, v5

    new-instance v2, Ljava/lang/Integer;

    const/16 v8, -0x840

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    aput-object v2, v1, v10

    new-instance v2, Ljava/lang/Integer;

    const/16 v8, 0xf5a

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    aput-object v2, v1, v11

    new-instance v2, Ljava/lang/Integer;

    const/16 v8, 0xdb4

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    aput-object v2, v1, v12

    new-instance v2, Ljava/lang/Integer;

    const/16 v8, -0x575

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    aput-object v2, v1, v13

    new-instance v2, Ljava/lang/Integer;

    const/16 v8, 0x3ac

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    const/16 v8, 0xb

    aput-object v2, v1, v8

    new-instance v2, Ljava/lang/Integer;

    const/16 v8, 0xf27

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    const/16 v8, 0xc

    aput-object v2, v1, v8

    new-instance v2, Ljava/lang/Integer;

    const/16 v8, 0x1387

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    const/16 v8, 0xd

    aput-object v2, v1, v8

    new-instance v2, Ljava/lang/Integer;

    const/16 v8, -0x318

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    const/16 v8, 0xe

    aput-object v2, v1, v8

    new-instance v2, Ljava/lang/Integer;

    const/16 v8, 0x706

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    const/16 v8, 0xf

    aput-object v2, v1, v8

    new-instance v2, Ljava/lang/Integer;

    const/16 v8, -0x1ba

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    const/16 v8, 0x10

    aput-object v2, v1, v8

    new-instance v2, Ljava/lang/Integer;

    const/16 v8, 0x767

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    const/16 v8, 0x11

    aput-object v2, v1, v8

    new-instance v2, Ljava/lang/Integer;

    const/16 v8, 0xf5a

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    const/16 v8, 0x12

    aput-object v2, v1, v8

    new-instance v2, Ljava/lang/Integer;

    const/16 v8, 0xed6

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    const/16 v8, 0x13

    aput-object v2, v1, v8

    new-instance v2, Ljava/lang/Integer;

    const/16 v8, 0xdb4

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    const/16 v8, 0x14

    aput-object v2, v1, v8

    new-instance v2, Ljava/lang/Integer;

    const/16 v8, -0x3e2

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    const/16 v8, 0x15

    aput-object v2, v1, v8

    new-instance v2, Ljava/lang/Integer;

    const/16 v8, 0x3a1

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    const/16 v8, 0x16

    aput-object v2, v1, v8

    new-instance v2, Ljava/lang/Integer;

    const/16 v8, 0x176

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    const/16 v8, 0x17

    aput-object v2, v1, v8

    new-instance v2, Ljava/lang/Integer;

    const/16 v8, -0x1424

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    const/16 v8, 0x18

    aput-object v2, v1, v8

    new-instance v2, Ljava/lang/Integer;

    const/16 v8, -0x808

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    const/16 v8, 0x19

    aput-object v2, v1, v8

    new-instance v2, Ljava/lang/Integer;

    const/16 v8, -0x815

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    const/16 v8, 0x1a

    aput-object v2, v1, v8

    new-instance v2, Ljava/lang/Integer;

    const/16 v8, -0x26b

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    const/16 v8, 0x1b

    aput-object v2, v1, v8

    new-instance v2, Ljava/lang/Integer;

    const/16 v8, 0x2da

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    const/16 v8, 0x1c

    aput-object v2, v1, v8

    new-instance v2, Ljava/lang/Integer;

    const/16 v8, -0x11cc

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    const/16 v8, 0x1d

    aput-object v2, v1, v8

    new-instance v2, Ljava/lang/Integer;

    const/16 v8, -0x72a

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    const/16 v8, 0x1e

    aput-object v2, v1, v8

    new-instance v2, Ljava/lang/Integer;

    const/16 v8, -0x4a0

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    const/16 v8, 0x1f

    aput-object v2, v1, v8

    new-instance v2, Ljava/lang/Integer;

    const/16 v8, 0xb79

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    const/16 v8, 0x20

    aput-object v2, v1, v8

    new-instance v2, Ljava/lang/Integer;

    const/16 v8, 0x2ed

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    const/16 v8, 0x21

    aput-object v2, v1, v8

    new-instance v2, Ljava/lang/Integer;

    const/16 v8, -0x4b0

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    const/16 v8, 0x22

    aput-object v2, v1, v8

    new-instance v2, Ljava/lang/Integer;

    const/16 v8, -0xf4

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    const/16 v8, 0x23

    aput-object v2, v1, v8

    new-instance v2, Ljava/lang/Integer;

    const/16 v8, -0x12e

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    const/16 v8, 0x24

    aput-object v2, v1, v8

    new-instance v2, Ljava/lang/Integer;

    const/16 v8, 0xa1a

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    const/16 v8, 0x25

    aput-object v2, v1, v8

    new-instance v2, Ljava/lang/Integer;

    const/16 v8, -0x2da

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    const/16 v8, 0x26

    aput-object v2, v1, v8

    new-instance v2, Ljava/lang/Integer;

    const/16 v8, 0x2a0

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    const/16 v8, 0x27

    aput-object v2, v1, v8

    new-instance v2, Ljava/lang/Integer;

    const/16 v8, -0x421

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    const/16 v8, 0x28

    aput-object v2, v1, v8

    new-instance v2, Ljava/lang/Integer;

    const/16 v8, 0x150c

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    const/16 v8, 0x29

    aput-object v2, v1, v8

    new-instance v2, Ljava/lang/Integer;

    const/16 v8, -0xa9c

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    const/16 v8, 0x2a

    aput-object v2, v1, v8

    new-instance v2, Ljava/lang/Integer;

    const/16 v8, -0x38e

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    const/16 v8, 0x2b

    aput-object v2, v1, v8

    new-instance v2, Ljava/lang/Integer;

    const/16 v8, 0x8a2

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    const/16 v8, 0x2c

    aput-object v2, v1, v8

    new-instance v2, Ljava/lang/Integer;

    const/16 v8, 0x1290

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    const/16 v8, 0x2d

    aput-object v2, v1, v8

    new-instance v2, Ljava/lang/Integer;

    const/16 v8, -0xd6b

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    const/16 v8, 0x2e

    aput-object v2, v1, v8

    new-instance v2, Ljava/lang/Integer;

    const/16 v8, -0x280

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    const/16 v8, 0x2f

    aput-object v2, v1, v8

    new-instance v2, Ljava/lang/Integer;

    const/16 v8, 0x229

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    const/16 v8, 0x30

    aput-object v2, v1, v8

    new-instance v2, Ljava/lang/Integer;

    const/16 v8, -0x9d2

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    const/16 v8, 0x31

    aput-object v2, v1, v8

    new-instance v2, Ljava/lang/Integer;

    const/16 v8, 0x362

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    const/16 v8, 0x32

    aput-object v2, v1, v8

    new-instance v2, Ljava/lang/Integer;

    const/16 v8, 0x965

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    const/16 v8, 0x33

    aput-object v2, v1, v8

    new-instance v2, Ljava/lang/Integer;

    const/16 v8, 0x212

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    const/16 v8, 0x34

    aput-object v2, v1, v8

    new-instance v2, Ljava/lang/Integer;

    const/16 v8, 0x1776

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    const/16 v8, 0x35

    aput-object v2, v1, v8

    new-instance v2, Ljava/lang/Integer;

    const/16 v8, -0x1182

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    const/16 v8, 0x36

    aput-object v2, v1, v8

    new-instance v2, Ljava/lang/Integer;

    const/16 v8, -0x506

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    const/16 v8, 0x37

    aput-object v2, v1, v8

    new-instance v2, Ljava/lang/Integer;

    const/16 v8, -0xeed

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    const/16 v8, 0x38

    aput-object v2, v1, v8

    new-instance v2, Ljava/lang/Integer;

    const/16 v8, -0xecc

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    const/16 v8, 0x39

    aput-object v2, v1, v8

    new-instance v2, Ljava/lang/Integer;

    const/16 v8, -0x1118

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    const/16 v8, 0x3a

    aput-object v2, v1, v8

    new-instance v2, Ljava/lang/Integer;

    const/16 v8, -0x44d

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    const/16 v8, 0x3b

    aput-object v2, v1, v8

    new-instance v2, Ljava/lang/Integer;

    const/16 v8, -0x127e

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    const/16 v8, 0x3c

    aput-object v2, v1, v8

    new-instance v2, Ljava/lang/Integer;

    const/16 v8, 0x8cf

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    const/16 v8, 0x3d

    aput-object v2, v1, v8

    new-instance v2, Ljava/lang/Integer;

    const/16 v8, 0x7bb

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    const/16 v8, 0x3e

    aput-object v2, v1, v8

    new-instance v2, Ljava/lang/Integer;

    const/16 v8, 0xb30

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    const/16 v8, 0x3f

    aput-object v2, v1, v8

    new-instance v2, Ljava/lang/Integer;

    const/16 v8, -0x34b

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    const/16 v8, 0x40

    aput-object v2, v1, v8

    new-instance v2, Ljava/lang/Integer;

    const/16 v8, -0x9ca

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    const/16 v8, 0x41

    aput-object v2, v1, v8

    new-instance v2, Ljava/lang/Integer;

    const/16 v8, -0x2db

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    const/16 v8, 0x42

    aput-object v2, v1, v8

    new-instance v2, Ljava/lang/Integer;

    const/16 v8, 0x4e3

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    const/16 v8, 0x43

    aput-object v2, v1, v8

    new-instance v2, Ljava/lang/Integer;

    const/16 v8, 0xb5

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    const/16 v8, 0x44

    aput-object v2, v1, v8

    new-instance v2, Ljava/lang/Integer;

    const/16 v8, 0xffb

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    const/16 v8, 0x45

    aput-object v2, v1, v8

    new-instance v2, Ljava/lang/Integer;

    const/16 v8, 0x259

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    const/16 v8, 0x46

    aput-object v2, v1, v8

    new-instance v2, Ljava/lang/Integer;

    const/16 v8, -0xb54

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    const/16 v8, 0x47

    aput-object v2, v1, v8

    new-instance v2, Ljava/lang/Integer;

    const/16 v8, 0x314

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    const/16 v8, 0x48

    aput-object v2, v1, v8

    new-instance v2, Ljava/lang/Integer;

    const/16 v8, 0x13aa

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    const/16 v8, 0x49

    aput-object v2, v1, v8

    new-instance v2, Ljava/lang/Integer;

    const/16 v8, 0x1520

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    const/16 v8, 0x4a

    aput-object v2, v1, v8

    new-instance v2, Ljava/lang/Integer;

    const/16 v8, -0xe46

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    const/16 v8, 0x4b

    aput-object v2, v1, v8

    new-instance v2, Ljava/lang/Integer;

    const/16 v8, -0x16fa

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    const/16 v8, 0x4c

    aput-object v2, v1, v8

    new-instance v2, Ljava/lang/Integer;

    const/16 v8, -0x67b

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    const/16 v8, 0x4d

    aput-object v2, v1, v8

    new-instance v2, Ljava/lang/Integer;

    const/16 v8, 0xf9a

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    const/16 v8, 0x4e

    aput-object v2, v1, v8

    new-instance v2, Ljava/lang/Integer;

    const/16 v8, 0x725

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    const/16 v8, 0x4f

    aput-object v2, v1, v8

    new-instance v2, Ljava/lang/Integer;

    const/16 v8, 0x1cf2

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    const/16 v8, 0x50

    aput-object v2, v1, v8

    new-instance v2, Ljava/lang/Integer;

    const/16 v8, 0x11c3

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    const/16 v8, 0x51

    aput-object v2, v1, v8

    new-instance v2, Ljava/lang/Integer;

    const/16 v8, 0x722

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    const/16 v8, 0x52

    aput-object v2, v1, v8

    new-instance v2, Ljava/lang/Integer;

    const/16 v8, 0x1539

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    const/16 v8, 0x53

    aput-object v2, v1, v8

    new-instance v2, Ljava/lang/Integer;

    const/16 v8, 0x1963

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    const/16 v8, 0x54

    aput-object v2, v1, v8

    new-instance v2, Ljava/lang/Integer;

    const/16 v8, 0x73d

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    const/16 v8, 0x55

    aput-object v2, v1, v8

    new-instance v2, Ljava/lang/Integer;

    const/16 v8, -0x2e4

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    const/16 v8, 0x56

    aput-object v2, v1, v8

    new-instance v2, Ljava/lang/Integer;

    const/16 v8, 0x585

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    const/16 v8, 0x57

    aput-object v2, v1, v8

    new-instance v2, Ljava/lang/Integer;

    const/16 v8, 0x1ce4

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    const/16 v8, 0x58

    aput-object v2, v1, v8

    new-instance v2, Ljava/lang/Integer;

    const/16 v8, -0x7c0

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    const/16 v8, 0x59

    aput-object v2, v1, v8

    new-instance v2, Ljava/lang/Integer;

    const/16 v8, 0x2182

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    const/16 v8, 0x5a

    aput-object v2, v1, v8

    new-instance v2, Ljava/lang/Integer;

    const/16 v8, 0x794

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    const/16 v8, 0x5b

    aput-object v2, v1, v8

    new-instance v2, Ljava/lang/Integer;

    const/16 v8, -0xa9b

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    const/16 v8, 0x5c

    aput-object v2, v1, v8

    new-instance v2, Ljava/lang/Integer;

    const/16 v8, -0x7d6

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    const/16 v8, 0x5d

    aput-object v2, v1, v8

    new-instance v2, Ljava/lang/Integer;

    const/16 v8, 0x1099

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    const/16 v8, 0x5e

    aput-object v2, v1, v8

    new-instance v2, Ljava/lang/Integer;

    const/16 v8, -0x1026

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    const/16 v8, 0x5f

    aput-object v2, v1, v8

    new-instance v2, Ljava/lang/Integer;

    const/16 v8, 0x541

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    const/16 v8, 0x60

    aput-object v2, v1, v8

    new-instance v2, Ljava/lang/Integer;

    const/16 v8, 0x1a09

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    const/16 v8, 0x61

    aput-object v2, v1, v8

    new-instance v2, Ljava/lang/Integer;

    const/16 v8, -0x2e8

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    const/16 v8, 0x62

    aput-object v2, v1, v8

    new-instance v2, Ljava/lang/Integer;

    const/16 v8, 0x5b8

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    const/16 v8, 0x63

    aput-object v2, v1, v8

    new-instance v2, Ljava/lang/Integer;

    const/16 v8, 0x41b

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    const/16 v8, 0x64

    aput-object v2, v1, v8

    new-instance v2, Ljava/lang/Integer;

    const/16 v8, -0x822

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    const/16 v8, 0x65

    aput-object v2, v1, v8

    new-instance v2, Ljava/lang/Integer;

    const/16 v8, -0x372

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    const/16 v8, 0x66

    aput-object v2, v1, v8

    new-instance v2, Ljava/lang/Integer;

    const/16 v8, -0x13b6

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    const/16 v8, 0x67

    aput-object v2, v1, v8

    new-instance v2, Ljava/lang/Integer;

    const/16 v8, 0x1049

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    const/16 v8, 0x68

    aput-object v2, v1, v8

    new-instance v2, Ljava/lang/Integer;

    const/16 v8, -0xa6a

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    const/16 v8, 0x69

    aput-object v2, v1, v8

    new-instance v2, Ljava/lang/Integer;

    const/16 v8, 0xaeb

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    const/16 v8, 0x6a

    aput-object v2, v1, v8

    new-instance v2, Ljava/lang/Integer;

    const/16 v8, -0x585

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    const/16 v8, 0x6b

    aput-object v2, v1, v8

    new-instance v2, Ljava/lang/Integer;

    const/16 v8, -0x4bc

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    const/16 v8, 0x6c

    aput-object v2, v1, v8

    new-instance v2, Ljava/lang/Integer;

    const/16 v8, -0x608

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    const/16 v8, 0x6d

    aput-object v2, v1, v8

    new-instance v2, Ljava/lang/Integer;

    const/16 v8, 0xd17

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    const/16 v8, 0x6e

    aput-object v2, v1, v8

    new-instance v2, Ljava/lang/Integer;

    const/16 v8, -0xb6a

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    const/16 v8, 0x6f

    aput-object v2, v1, v8

    new-instance v2, Ljava/lang/Integer;

    const/16 v8, -0x5c9

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    const/16 v8, 0x70

    aput-object v2, v1, v8

    new-instance v2, Ljava/lang/Integer;

    const/16 v8, -0x25fe

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    const/16 v8, 0x71

    aput-object v2, v1, v8

    new-instance v2, Ljava/lang/Integer;

    const/16 v8, -0x12e9

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    const/16 v8, 0x72

    aput-object v2, v1, v8

    new-instance v2, Ljava/lang/Integer;

    const/16 v8, -0x3a30

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    const/16 v8, 0x73

    aput-object v2, v1, v8

    new-instance v2, Ljava/lang/Integer;

    const/16 v8, -0xa35

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    const/16 v8, 0x74

    aput-object v2, v1, v8

    new-instance v2, Ljava/lang/Integer;

    const/16 v8, 0x486

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    const/16 v8, 0x75

    aput-object v2, v1, v8

    new-instance v2, Ljava/lang/Integer;

    const/16 v8, -0x11da

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    const/16 v8, 0x76

    aput-object v2, v1, v8

    new-instance v2, Ljava/lang/Integer;

    const/16 v8, -0x6f7

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    const/16 v8, 0x77

    aput-object v2, v1, v8

    new-instance v2, Ljava/lang/Integer;

    const/16 v8, -0x44c

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    const/16 v8, 0x78

    aput-object v2, v1, v8

    new-instance v2, Ljava/lang/Integer;

    const/16 v8, 0x335e

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    const/16 v8, 0x79

    aput-object v2, v1, v8

    new-instance v2, Ljava/lang/Integer;

    const/16 v8, -0x930

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    const/16 v8, 0x7a

    aput-object v2, v1, v8

    new-instance v2, Ljava/lang/Integer;

    const/16 v8, -0x413

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    const/16 v8, 0x7b

    aput-object v2, v1, v8

    new-instance v2, Ljava/lang/Integer;

    const/16 v8, -0x50b

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    const/16 v8, 0x7c

    aput-object v2, v1, v8

    new-instance v2, Ljava/lang/Integer;

    const/16 v8, -0x2df

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    const/16 v8, 0x7d

    aput-object v2, v1, v8

    new-instance v2, Ljava/lang/Integer;

    const/16 v8, -0x329

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    const/16 v8, 0x7e

    aput-object v2, v1, v8

    new-instance v2, Ljava/lang/Integer;

    const/16 v8, 0x248

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    const/16 v8, 0x7f

    aput-object v2, v1, v8

    new-instance v2, Ljava/lang/Integer;

    const/16 v8, 0x314

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    const/16 v8, 0x80

    aput-object v2, v1, v8

    new-instance v2, Ljava/lang/Integer;

    const/16 v8, 0x30e

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    const/16 v8, 0x81

    aput-object v2, v1, v8

    new-instance v2, Ljava/lang/Integer;

    const/16 v8, 0x39a

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    const/16 v8, 0x82

    aput-object v2, v1, v8

    new-instance v2, Ljava/lang/Integer;

    const/16 v8, -0xbe

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    const/16 v8, 0x83

    aput-object v2, v1, v8

    new-instance v2, Ljava/lang/Integer;

    const/16 v8, 0x848

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    const/16 v8, 0x84

    aput-object v2, v1, v8

    new-instance v2, Ljava/lang/Integer;

    const/16 v8, -0x2a9

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    const/16 v8, 0x85

    aput-object v2, v1, v8

    new-instance v2, Ljava/lang/Integer;

    const/16 v8, -0x8f9

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    const/16 v8, 0x86

    aput-object v2, v1, v8

    new-instance v2, Ljava/lang/Integer;

    const/16 v8, -0x6e8

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    const/16 v8, 0x87

    aput-object v2, v1, v8

    new-instance v2, Ljava/lang/Integer;

    const/16 v8, 0x861

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    const/16 v8, 0x88

    aput-object v2, v1, v8

    new-instance v2, Ljava/lang/Integer;

    const/16 v8, 0x776

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    const/16 v8, 0x89

    aput-object v2, v1, v8

    new-instance v2, Ljava/lang/Integer;

    const/16 v8, 0x308

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    const/16 v8, 0x8a

    aput-object v2, v1, v8

    new-instance v2, Ljava/lang/Integer;

    const/16 v8, 0x312

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    const/16 v8, 0x8b

    aput-object v2, v1, v8

    new-instance v2, Ljava/lang/Integer;

    const/16 v8, -0x4f3

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    const/16 v8, 0x8c

    aput-object v2, v1, v8

    new-instance v2, Ljava/lang/Integer;

    const/16 v8, -0xd9d

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    const/16 v8, 0x8d

    aput-object v2, v1, v8

    new-instance v2, Ljava/lang/Integer;

    const/16 v8, -0x21f

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    const/16 v8, 0x8e

    aput-object v2, v1, v8

    new-instance v2, Ljava/lang/Integer;

    const/16 v8, 0x6fd

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    const/16 v8, 0x8f

    aput-object v2, v1, v8

    new-instance v2, Ljava/lang/Integer;

    const/16 v8, 0x42b

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    const/16 v8, 0x90

    aput-object v2, v1, v8

    new-instance v2, Ljava/lang/Integer;

    const/16 v8, 0x87b

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    const/16 v8, 0x91

    aput-object v2, v1, v8

    new-instance v2, Ljava/lang/Integer;

    const/16 v8, 0xa24

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    const/16 v8, 0x92

    aput-object v2, v1, v8

    new-instance v2, Ljava/lang/Integer;

    const/16 v8, 0x861

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    const/16 v8, 0x93

    aput-object v2, v1, v8

    new-instance v2, Ljava/lang/Integer;

    const/16 v8, 0x507

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    const/16 v8, 0x94

    aput-object v2, v1, v8

    new-instance v2, Ljava/lang/Integer;

    const/16 v8, 0xbb5

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    const/16 v8, 0x95

    aput-object v2, v1, v8

    new-instance v2, Ljava/lang/Integer;

    const/16 v8, 0x23b

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    const/16 v8, 0x96

    aput-object v2, v1, v8

    new-instance v2, Ljava/lang/Integer;

    const/16 v8, -0x2d4

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    const/16 v8, 0x97

    aput-object v2, v1, v8

    new-instance v2, Ljava/lang/Integer;

    const/16 v8, -0x168

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    const/16 v8, 0x98

    aput-object v2, v1, v8

    new-instance v2, Ljava/lang/Integer;

    const/16 v8, -0x193

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    const/16 v8, 0x99

    aput-object v2, v1, v8

    new-instance v2, Ljava/lang/Integer;

    const/16 v8, -0x3ab

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    const/16 v8, 0x9a

    aput-object v2, v1, v8

    new-instance v2, Ljava/lang/Integer;

    const/16 v8, 0x40c

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    const/16 v8, 0x9b

    aput-object v2, v1, v8

    new-instance v2, Ljava/lang/Integer;

    const/16 v8, 0x11a5

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    const/16 v8, 0x9c

    aput-object v2, v1, v8

    new-instance v2, Ljava/lang/Integer;

    const/16 v8, 0x358

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    const/16 v8, 0x9d

    aput-object v2, v1, v8

    new-instance v2, Ljava/lang/Integer;

    const/16 v8, 0x313

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    const/16 v8, 0x9e

    aput-object v2, v1, v8

    new-instance v2, Ljava/lang/Integer;

    const/16 v8, 0x6d5

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    const/16 v8, 0x9f

    aput-object v2, v1, v8

    new-instance v2, Ljava/lang/Integer;

    const/16 v8, -0x67b

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    const/16 v8, 0xa0

    aput-object v2, v1, v8

    new-instance v2, Ljava/lang/Integer;

    const/16 v8, -0xa2c

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    const/16 v8, 0xa1

    aput-object v2, v1, v8

    new-instance v2, Ljava/lang/Integer;

    const/16 v8, -0x61e

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    const/16 v8, 0xa2

    aput-object v2, v1, v8

    new-instance v2, Ljava/lang/Integer;

    const/16 v8, -0x663

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    const/16 v8, 0xa3

    aput-object v2, v1, v8

    new-instance v2, Ljava/lang/Integer;

    const/16 v8, 0x886

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    const/16 v8, 0xa4

    aput-object v2, v1, v8

    new-instance v2, Ljava/lang/Integer;

    const/16 v8, -0x530

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    const/16 v8, 0xa5

    aput-object v2, v1, v8

    new-instance v2, Ljava/lang/Integer;

    const/16 v8, -0x371

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    const/16 v8, 0xa6

    aput-object v2, v1, v8

    new-instance v2, Ljava/lang/Integer;

    const/16 v8, -0x599

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    const/16 v8, 0xa7

    aput-object v2, v1, v8

    new-instance v2, Ljava/lang/Integer;

    const/16 v8, -0x21d

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    const/16 v8, 0xa8

    aput-object v2, v1, v8

    new-instance v2, Ljava/lang/Integer;

    const/16 v8, 0x3f5

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    const/16 v8, 0xa9

    aput-object v2, v1, v8

    new-instance v2, Ljava/lang/Integer;

    const/16 v8, -0x358

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    const/16 v8, 0xaa

    aput-object v2, v1, v8

    new-instance v2, Ljava/lang/Integer;

    const/16 v8, 0x767

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    const/16 v8, 0xab

    aput-object v2, v1, v8

    new-instance v2, Ljava/lang/Integer;

    const/16 v8, 0xed6

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    const/16 v8, 0xac

    aput-object v2, v1, v8

    new-instance v2, Ljava/lang/Integer;

    const/16 v8, -0x1113

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    const/16 v8, 0xad

    aput-object v2, v1, v8

    new-instance v2, Ljava/lang/Integer;

    const/16 v8, -0xe35

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    const/16 v8, 0xae

    aput-object v2, v1, v8

    new-instance v2, Ljava/lang/Integer;

    const/16 v8, -0x3e8

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    const/16 v8, 0xaf

    aput-object v2, v1, v8

    new-instance v2, Ljava/lang/Integer;

    const/16 v8, -0x38e

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    const/16 v8, 0xb0

    aput-object v2, v1, v8

    new-instance v2, Ljava/lang/Integer;

    const/16 v8, 0x220

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    const/16 v8, 0xb1

    aput-object v2, v1, v8

    new-instance v2, Ljava/lang/Integer;

    const/16 v8, -0x2d4

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    const/16 v8, 0xb2

    aput-object v2, v1, v8

    new-instance v2, Ljava/lang/Integer;

    const/16 v8, -0x2e5e

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    const/16 v8, 0xb3

    aput-object v2, v1, v8

    new-instance v2, Ljava/lang/Integer;

    const/16 v8, -0xa6b

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    const/16 v8, 0xb4

    aput-object v2, v1, v8

    new-instance v2, Ljava/lang/Integer;

    const/16 v8, -0x1113

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    const/16 v8, 0xb5

    aput-object v2, v1, v8

    new-instance v2, Ljava/lang/Integer;

    const/16 v8, 0x2c0

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    const/16 v8, 0xb6

    aput-object v2, v1, v8

    new-instance v2, Ljava/lang/Integer;

    const/16 v8, -0x2e5e

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    const/16 v8, 0xb7

    aput-object v2, v1, v8

    new-instance v2, Ljava/lang/Integer;

    const/16 v8, 0x47a

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    const/16 v8, 0xb8

    aput-object v2, v1, v8

    new-instance v2, Ljava/lang/Integer;

    const/16 v8, 0x861

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    const/16 v8, 0xb9

    aput-object v2, v1, v8

    new-instance v2, Ljava/lang/Integer;

    const/16 v8, -0x353

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    const/16 v8, 0xba

    aput-object v2, v1, v8

    new-instance v2, Ljava/lang/Integer;

    const/16 v8, 0x6fd

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    const/16 v8, 0xbb

    aput-object v2, v1, v8

    new-instance v2, Ljava/lang/Integer;

    const/16 v8, 0x507

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    const/16 v8, 0xbc

    aput-object v2, v1, v8

    new-instance v2, Ljava/lang/Integer;

    const/16 v8, 0x10c4

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    const/16 v8, 0xbd

    aput-object v2, v1, v8

    new-instance v2, Ljava/lang/Integer;

    const/16 v8, -0x5dc

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    const/16 v8, 0xbe

    aput-object v2, v1, v8

    new-instance v2, Ljava/lang/Integer;

    const/16 v8, -0x1302

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    const/16 v8, 0xbf

    aput-object v2, v1, v8

    new-instance v2, Ljava/lang/Integer;

    const/16 v8, -0x193

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    const/16 v8, 0xc0

    aput-object v2, v1, v8

    new-instance v2, Ljava/lang/Integer;

    const/16 v8, -0x318

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    const/16 v8, 0xc1

    aput-object v2, v1, v8

    new-instance v2, Ljava/lang/Integer;

    const/16 v8, -0x663

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    const/16 v8, 0xc2

    aput-object v2, v1, v8

    new-instance v2, Ljava/lang/Integer;

    const/16 v8, 0xad3

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    const/16 v8, 0xc3

    aput-object v2, v1, v8

    new-instance v2, Ljava/lang/Integer;

    const/16 v8, -0x371

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    const/16 v8, 0xc4

    aput-object v2, v1, v8

    new-instance v2, Ljava/lang/Integer;

    const/16 v8, -0x21d

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    const/16 v8, 0xc5

    aput-object v2, v1, v8

    new-instance v2, Ljava/lang/Integer;

    const/16 v8, -0x358

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    const/16 v8, 0xc6

    aput-object v2, v1, v8

    new-instance v2, Ljava/lang/Integer;

    const/16 v8, 0x34d

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    const/16 v8, 0xc7

    aput-object v2, v1, v8

    new-instance v2, Ljava/lang/Integer;

    const/16 v8, -0x491

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    const/16 v8, 0xc8

    aput-object v2, v1, v8

    new-instance v2, Ljava/lang/Integer;

    const/16 v8, -0xe35

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    const/16 v8, 0xc9

    aput-object v2, v1, v8

    new-instance v2, Ljava/lang/Integer;

    const/16 v8, 0x20a

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    const/16 v8, 0xca

    aput-object v2, v1, v8

    new-instance v2, Ljava/lang/Integer;

    const/16 v8, 0x1c8

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    const/16 v8, 0xcb

    aput-object v2, v1, v8

    new-instance v2, Ljava/lang/Integer;

    const/16 v8, -0x363

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    const/16 v8, 0xcc

    aput-object v2, v1, v8

    new-instance v2, Ljava/lang/Integer;

    const/16 v8, -0x236a

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    const/16 v8, 0xcd

    aput-object v2, v1, v8

    new-instance v2, Ljava/lang/Integer;

    const/16 v8, 0x3b6

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    const/16 v8, 0xce

    aput-object v2, v1, v8

    new-instance v2, Ljava/lang/Integer;

    const/16 v8, 0x543

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    const/16 v8, 0xcf

    aput-object v2, v1, v8

    new-instance v2, Ljava/lang/Integer;

    const/16 v8, 0x165

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    const/16 v8, 0xd0

    aput-object v2, v1, v8

    new-instance v2, Ljava/lang/Integer;

    const/16 v8, 0x4a8

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    const/16 v8, 0xd1

    aput-object v2, v1, v8

    new-instance v2, Ljava/lang/Integer;

    const/16 v8, 0x394

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    const/16 v8, 0xd2

    aput-object v2, v1, v8

    new-instance v2, Ljava/lang/Integer;

    const/16 v8, -0x36e

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    const/16 v8, 0xd3

    aput-object v2, v1, v8

    new-instance v2, Ljava/lang/Integer;

    const/16 v8, -0x8a5

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    const/16 v8, 0xd4

    aput-object v2, v1, v8

    new-instance v2, Ljava/lang/Integer;

    const/16 v8, 0x318

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    const/16 v8, 0xd5

    aput-object v2, v1, v8

    new-instance v2, Ljava/lang/Integer;

    const/16 v8, -0x1e5

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    const/16 v8, 0xd6

    aput-object v2, v1, v8

    new-instance v2, Ljava/lang/Integer;

    const/16 v8, -0x582

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    const/16 v8, 0xd7

    aput-object v2, v1, v8

    new-instance v2, Ljava/lang/Integer;

    const/16 v8, -0x928

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    const/16 v8, 0xd8

    aput-object v2, v1, v8

    new-instance v2, Ljava/lang/Integer;

    const/16 v8, 0x613

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    const/16 v8, 0xd9

    aput-object v2, v1, v8

    new-instance v2, Ljava/lang/Integer;

    const/16 v8, -0x82e

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    const/16 v8, 0xda

    aput-object v2, v1, v8

    new-instance v2, Ljava/lang/Integer;

    const/16 v8, -0x358

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    const/16 v8, 0xdb

    aput-object v2, v1, v8

    sput-object v1, Lcom/amazon/ebook/util/text/tinysegmenter/TinySegmenterConstants;->UW4_VALS:[Ljava/lang/Integer;

    const-string/jumbo v27, "\u307f"

    const-string/jumbo v28, "\u5e02"

    const-string v29, "1"

    const-string/jumbo v30, "\u3081"

    const-string/jumbo v31, "\u3083"

    const-string/jumbo v32, "\u4f1a"

    const-string/jumbo v33, "\u515a"

    const-string/jumbo v34, "\u3087"

    const-string/jumbo v35, "\u52d9"

    const-string/jumbo v36, "\u308a"

    const-string/jumbo v37, "\u308b"

    const-string/jumbo v38, "\uff25\uff12"

    const-string/jumbo v39, "\u308c"

    const-string/jumbo v40, "\u5d50"

    const-string/jumbo v41, "\u7530"

    const-string/jumbo v42, "\u308f"

    const-string/jumbo v43, "\u90ce"

    const-string/jumbo v44, "\u6708"

    const-string/jumbo v45, "\u3092"

    const-string/jumbo v46, "\u3093"

    const-string/jumbo v47, "\u753a"

    const-string/jumbo v48, "\u984c"

    const-string/jumbo v49, "\u7d71"

    const-string/jumbo v50, "\u7a7a"

    const-string/jumbo v51, "\u30a4"

    const-string/jumbo v52, "\u5e2d"

    const-string v53, ","

    const-string v54, "."

    const-string/jumbo v55, "\u9928"

    const-string/jumbo v56, "\u65b0"

    const-string/jumbo v57, "\uff62"

    const-string/jumbo v58, "\u9577"

    const-string/jumbo v59, "\u3001"

    const-string/jumbo v60, "\u3002"

    const-string/jumbo v61, "\u67fb"

    const-string/jumbo v62, "\uff72"

    const-string/jumbo v63, "\u300c"

    const-string/jumbo v64, "\u4eac"

    const-string/jumbo v65, "\u76f8"

    const-string v66, "E2"

    const-string/jumbo v67, "\u9593"

    const-string v68, "]"

    const-string/jumbo v69, "\u5927"

    const-string/jumbo v70, "\u5b66"

    const-string/jumbo v71, "\u7701"

    const-string/jumbo v72, "\u793e"

    const-string/jumbo v73, "\u533a"

    const-string/jumbo v74, "\u770c"

    const-string/jumbo v75, "\u30eb"

    const-string/jumbo v76, "\u65e5"

    const-string/jumbo v77, "\u6a5f"

    const-string/jumbo v78, "\uff99"

    const-string/jumbo v79, "\u8005"

    const-string/jumbo v80, "\u5e74"

    const-string/jumbo v81, "\uff9d"

    const-string/jumbo v82, "\u30f3"

    const-string/jumbo v83, "\u9078"

    const-string/jumbo v84, "\u3042"

    const-string/jumbo v85, "\u6240"

    const-string/jumbo v86, "\u3044"

    const-string/jumbo v87, "\u3046"

    const-string/jumbo v88, "\u683c"

    const-string/jumbo v89, "\u3048"

    const-string/jumbo v90, "\u304a"

    const-string/jumbo v91, "\u304b"

    const-string/jumbo v92, "\u304c"

    const-string/jumbo v93, "\u304d"

    const-string/jumbo v94, "\u304e"

    const-string/jumbo v95, "\u304f"

    const-string/jumbo v96, "\u54e1"

    const-string/jumbo v97, "\u3052"

    const-string/jumbo v98, "\u5b9a"

    const-string/jumbo v99, "\u4e2d"

    const-string/jumbo v100, "\u3055"

    const-string/jumbo v101, "\u3057"

    const-string/jumbo v102, "\u8a9e"

    const-string/jumbo v103, "\u3059"

    const-string/jumbo v104, "\u6319"

    const-string/jumbo v105, "\u601d"

    const-string/jumbo v106, "\u8868"

    const-string/jumbo v107, "\u6c0f"

    const-string/jumbo v108, "\u3060"

    const-string/jumbo v109, "\u3061"

    const-string/jumbo v110, "\u7684"

    const-string/jumbo v111, "\u3063"

    const-string/jumbo v112, "\u3064"

    const-string/jumbo v113, "\u3066"

    const-string/jumbo v114, "\uff11"

    const-string/jumbo v115, "\u3067"

    const-string/jumbo v116, "\u3068"

    const-string/jumbo v117, "\u3069"

    const-string/jumbo v118, "\u306a"

    const-string/jumbo v119, "\u8bc0"

    const-string/jumbo v120, "\u306b"

    const-string/jumbo v121, "\u306e"

    const-string/jumbo v122, "\u306f"

    const-string/jumbo v123, "\u7814"

    const-string/jumbo v124, "\u3079"

    const-string/jumbo v125, "\u544a"

    filled-new-array/range {v27 .. v125}, [Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/amazon/ebook/util/text/tinysegmenter/TinySegmenterConstants;->UW5_KEYS:[Ljava/lang/String;

    const/16 v1, 0x63

    new-array v1, v1, [Ljava/lang/Integer;

    new-instance v2, Ljava/lang/Integer;

    const/16 v8, 0x1f6

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    aput-object v2, v1, v3

    new-instance v2, Ljava/lang/Integer;

    const/16 v8, -0xbaf

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    aput-object v2, v1, v4

    new-instance v2, Ljava/lang/Integer;

    const/16 v8, -0x202

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    aput-object v2, v1, v6

    new-instance v2, Ljava/lang/Integer;

    const/16 v8, 0x361

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    aput-object v2, v1, v7

    new-instance v2, Ljava/lang/Integer;

    const/16 v8, 0xd16

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    aput-object v2, v1, v0

    new-instance v2, Ljava/lang/Integer;

    const/16 v8, -0x481

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    aput-object v2, v1, v9

    new-instance v2, Ljava/lang/Integer;

    const/16 v8, -0x28e

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    aput-object v2, v1, v5

    new-instance v2, Ljava/lang/Integer;

    const/16 v8, 0x356

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    aput-object v2, v1, v10

    new-instance v2, Ljava/lang/Integer;

    const/16 v8, 0xdbf

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    aput-object v2, v1, v11

    new-instance v2, Ljava/lang/Integer;

    const/16 v8, -0xd0

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    aput-object v2, v1, v12

    new-instance v2, Ljava/lang/Integer;

    const/16 v8, 0x1ad

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    aput-object v2, v1, v13

    new-instance v2, Ljava/lang/Integer;

    const/16 v8, -0x8000

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    const/16 v8, 0xb

    aput-object v2, v1, v8

    new-instance v2, Ljava/lang/Integer;

    const/16 v8, 0x1f8

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    const/16 v8, 0xc

    aput-object v2, v1, v8

    new-instance v2, Ljava/lang/Integer;

    const/16 v8, -0x518

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    const/16 v8, 0xd

    aput-object v2, v1, v8

    new-instance v2, Ljava/lang/Integer;

    const/16 v8, 0xf0

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    const/16 v8, 0xe

    aput-object v2, v1, v8

    new-instance v2, Ljava/lang/Integer;

    const/16 v8, 0x1a3

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    const/16 v8, 0xf

    aput-object v2, v1, v8

    new-instance v2, Ljava/lang/Integer;

    const/16 v8, -0x170

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    const/16 v8, 0x10

    aput-object v2, v1, v8

    new-instance v2, Ljava/lang/Integer;

    const/16 v8, -0x1101

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    const/16 v8, 0x11

    aput-object v2, v1, v8

    new-instance v2, Ljava/lang/Integer;

    const/16 v8, -0x4f0

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    const/16 v8, 0x12

    aput-object v2, v1, v8

    new-instance v2, Ljava/lang/Integer;

    const/16 v8, 0x147

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    const/16 v8, 0x13

    aput-object v2, v1, v8

    new-instance v2, Ljava/lang/Integer;

    const/16 v8, -0xf48

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    const/16 v8, 0x14

    aput-object v2, v1, v8

    new-instance v2, Ljava/lang/Integer;

    const/16 v8, 0x940

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    const/16 v8, 0x15

    aput-object v2, v1, v8

    new-instance v2, Ljava/lang/Integer;

    const/16 v8, 0x7a3

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    const/16 v8, 0x16

    aput-object v2, v1, v8

    new-instance v2, Ljava/lang/Integer;

    const/16 v8, -0x32d

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    const/16 v8, 0x17

    aput-object v2, v1, v8

    new-instance v2, Ljava/lang/Integer;

    const/16 v8, 0xf1

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    const/16 v8, 0x18

    aput-object v2, v1, v8

    new-instance v2, Ljava/lang/Integer;

    const/16 v8, 0x399

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    const/16 v8, 0x19

    aput-object v2, v1, v8

    new-instance v2, Ljava/lang/Integer;

    const/16 v8, 0x1d1

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    const/16 v8, 0x1a

    aput-object v2, v1, v8

    new-instance v2, Ljava/lang/Integer;

    const/16 v8, -0x12b

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    const/16 v8, 0x1b

    aput-object v2, v1, v8

    new-instance v2, Ljava/lang/Integer;

    const/16 v8, -0x2b1

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    const/16 v8, 0x1c

    aput-object v2, v1, v8

    new-instance v2, Ljava/lang/Integer;

    const/16 v8, -0x692

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    const/16 v8, 0x1d

    aput-object v2, v1, v8

    new-instance v2, Ljava/lang/Integer;

    const/16 v8, 0x16b

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    const/16 v8, 0x1e

    aput-object v2, v1, v8

    new-instance v2, Ljava/lang/Integer;

    const/16 v8, 0x312

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    const/16 v8, 0x1f

    aput-object v2, v1, v8

    new-instance v2, Ljava/lang/Integer;

    const/16 v8, 0x1d1

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    const/16 v8, 0x20

    aput-object v2, v1, v8

    new-instance v2, Ljava/lang/Integer;

    const/16 v8, -0x12b

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    const/16 v8, 0x21

    aput-object v2, v1, v8

    new-instance v2, Ljava/lang/Integer;

    const/16 v8, 0x3a4

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    const/16 v8, 0x22

    aput-object v2, v1, v8

    new-instance v2, Ljava/lang/Integer;

    const/16 v8, 0xf1

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    const/16 v8, 0x23

    aput-object v2, v1, v8

    new-instance v2, Ljava/lang/Integer;

    const/16 v8, 0x16b

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    const/16 v8, 0x24

    aput-object v2, v1, v8

    new-instance v2, Ljava/lang/Integer;

    const/16 v8, 0x2d2

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    const/16 v8, 0x25

    aput-object v2, v1, v8

    new-instance v2, Ljava/lang/Integer;

    const/16 v8, 0x527

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    const/16 v8, 0x26

    aput-object v2, v1, v8

    new-instance v2, Ljava/lang/Integer;

    const/16 v8, -0x8000

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    const/16 v8, 0x27

    aput-object v2, v1, v8

    new-instance v2, Ljava/lang/Integer;

    const/16 v8, 0x4a7

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    const/16 v8, 0x28

    aput-object v2, v1, v8

    new-instance v2, Ljava/lang/Integer;

    const/16 v8, -0xaca

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    const/16 v8, 0x29

    aput-object v2, v1, v8

    new-instance v2, Ljava/lang/Integer;

    const/16 v8, -0x510

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    const/16 v8, 0x2a

    aput-object v2, v1, v8

    new-instance v2, Ljava/lang/Integer;

    const/16 v8, -0x224

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    const/16 v8, 0x2b

    aput-object v2, v1, v8

    new-instance v2, Ljava/lang/Integer;

    const/16 v8, -0x41c

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    const/16 v8, 0x2c

    aput-object v2, v1, v8

    new-instance v2, Ljava/lang/Integer;

    const/16 v8, -0x116

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    const/16 v8, 0x2d

    aput-object v2, v1, v8

    new-instance v2, Ljava/lang/Integer;

    const/16 v8, -0x385

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    const/16 v8, 0x2e

    aput-object v2, v1, v8

    new-instance v2, Ljava/lang/Integer;

    const/16 v8, -0xfa3

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    const/16 v8, 0x2f

    aput-object v2, v1, v8

    new-instance v2, Ljava/lang/Integer;

    const/16 v8, 0x1c3

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    const/16 v8, 0x30

    aput-object v2, v1, v8

    new-instance v2, Ljava/lang/Integer;

    const/16 v8, 0xda

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    const/16 v8, 0x31

    aput-object v2, v1, v8

    new-instance v2, Ljava/lang/Integer;

    const/16 v8, -0x5e4

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    const/16 v8, 0x32

    aput-object v2, v1, v8

    new-instance v2, Ljava/lang/Integer;

    const/16 v8, 0x1c3

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    const/16 v8, 0x33

    aput-object v2, v1, v8

    new-instance v2, Ljava/lang/Integer;

    const/16 v8, -0x8b9

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    const/16 v8, 0x34

    aput-object v2, v1, v8

    new-instance v2, Ljava/lang/Integer;

    const/16 v8, 0x6e3

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    const/16 v8, 0x35

    aput-object v2, v1, v8

    new-instance v2, Ljava/lang/Integer;

    const/16 v8, -0x157

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    const/16 v8, 0x36

    aput-object v2, v1, v8

    new-instance v2, Ljava/lang/Integer;

    const/16 v8, -0x157

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    const/16 v8, 0x37

    aput-object v2, v1, v8

    new-instance v2, Ljava/lang/Integer;

    const/16 v8, -0x3fa

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    const/16 v8, 0x38

    aput-object v2, v1, v8

    new-instance v2, Ljava/lang/Integer;

    const/16 v8, 0x677

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    const/16 v8, 0x39

    aput-object v2, v1, v8

    new-instance v2, Ljava/lang/Integer;

    const/16 v8, -0x32e

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    const/16 v8, 0x3a

    aput-object v2, v1, v8

    new-instance v2, Ljava/lang/Integer;

    const/16 v8, 0x14b

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    const/16 v8, 0x3b

    aput-object v2, v1, v8

    new-instance v2, Ljava/lang/Integer;

    const/16 v8, -0x1f7

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    const/16 v8, 0x3c

    aput-object v2, v1, v8

    new-instance v2, Ljava/lang/Integer;

    const/16 v8, 0x54c

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    const/16 v8, 0x3d

    aput-object v2, v1, v8

    new-instance v2, Ljava/lang/Integer;

    const/16 v8, 0x4af

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    const/16 v8, 0x3e

    aput-object v2, v1, v8

    new-instance v2, Ljava/lang/Integer;

    const/16 v8, 0x20f

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    const/16 v8, 0x3f

    aput-object v2, v1, v8

    new-instance v2, Ljava/lang/Integer;

    const/16 v8, 0x287

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    const/16 v8, 0x40

    aput-object v2, v1, v8

    new-instance v2, Ljava/lang/Integer;

    const/16 v8, -0x1a5

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    const/16 v8, 0x41

    aput-object v2, v1, v8

    new-instance v2, Ljava/lang/Integer;

    const/16 v8, 0x658

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    const/16 v8, 0x42

    aput-object v2, v1, v8

    new-instance v2, Ljava/lang/Integer;

    const/16 v8, 0x7b3

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    const/16 v8, 0x43

    aput-object v2, v1, v8

    new-instance v2, Ljava/lang/Integer;

    const/16 v8, 0x138

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    const/16 v8, 0x44

    aput-object v2, v1, v8

    new-instance v2, Ljava/lang/Integer;

    const/16 v8, 0x838

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    const/16 v8, 0x45

    aput-object v2, v1, v8

    new-instance v2, Ljava/lang/Integer;

    const/16 v8, -0x3d7

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    const/16 v8, 0x46

    aput-object v2, v1, v8

    new-instance v2, Ljava/lang/Integer;

    const/16 v8, 0x6f9

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    const/16 v8, 0x47

    aput-object v2, v1, v8

    new-instance v2, Ljava/lang/Integer;

    const/16 v8, -0x367

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    const/16 v8, 0x48

    aput-object v2, v1, v8

    new-instance v2, Ljava/lang/Integer;

    const/16 v8, -0x601

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    const/16 v8, 0x49

    aput-object v2, v1, v8

    new-instance v2, Ljava/lang/Integer;

    const/16 v8, -0x55b

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    const/16 v8, 0x4a

    aput-object v2, v1, v8

    new-instance v2, Ljava/lang/Integer;

    const/16 v8, -0x431

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    const/16 v8, 0x4b

    aput-object v2, v1, v8

    new-instance v2, Ljava/lang/Integer;

    const/16 v8, -0x354

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    const/16 v8, 0x4c

    aput-object v2, v1, v8

    new-instance v2, Ljava/lang/Integer;

    const/16 v8, 0x652

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    const/16 v8, 0x4d

    aput-object v2, v1, v8

    new-instance v2, Ljava/lang/Integer;

    const/16 v8, 0x368

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    const/16 v8, 0x4e

    aput-object v2, v1, v8

    new-instance v2, Ljava/lang/Integer;

    const/16 v8, 0x297

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    const/16 v8, 0x4f

    aput-object v2, v1, v8

    new-instance v2, Ljava/lang/Integer;

    const/16 v8, -0x543

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    const/16 v8, 0x50

    aput-object v2, v1, v8

    new-instance v2, Ljava/lang/Integer;

    const/16 v8, -0x4a2

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    const/16 v8, 0x51

    aput-object v2, v1, v8

    new-instance v2, Ljava/lang/Integer;

    const/16 v8, 0x445

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    const/16 v8, 0x52

    aput-object v2, v1, v8

    new-instance v2, Ljava/lang/Integer;

    const/16 v8, -0xc4d

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    const/16 v8, 0x53

    aput-object v2, v1, v8

    new-instance v2, Ljava/lang/Integer;

    const/16 v8, 0x34

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    const/16 v8, 0x54

    aput-object v2, v1, v8

    new-instance v2, Ljava/lang/Integer;

    const/16 v8, 0x399

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    const/16 v8, 0x55

    aput-object v2, v1, v8

    new-instance v2, Ljava/lang/Integer;

    const/16 v8, -0x12

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    const/16 v8, 0x56

    aput-object v2, v1, v8

    new-instance v2, Ljava/lang/Integer;

    const/16 v8, -0x202

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    const/16 v8, 0x57

    aput-object v2, v1, v8

    new-instance v2, Ljava/lang/Integer;

    const/16 v8, -0x352

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    const/16 v8, 0x58

    aput-object v2, v1, v8

    new-instance v2, Ljava/lang/Integer;

    const/16 v8, -0x7f

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    const/16 v8, 0x59

    aput-object v2, v1, v8

    new-instance v2, Ljava/lang/Integer;

    const/16 v8, 0x692

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    const/16 v8, 0x5a

    aput-object v2, v1, v8

    new-instance v2, Ljava/lang/Integer;

    const/16 v8, -0x313

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    const/16 v8, 0x5b

    aput-object v2, v1, v8

    new-instance v2, Ljava/lang/Integer;

    const/16 v8, 0x4c3

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    const/16 v8, 0x5c

    aput-object v2, v1, v8

    new-instance v2, Ljava/lang/Integer;

    const/16 v8, -0x4c8

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    const/16 v8, 0x5d

    aput-object v2, v1, v8

    new-instance v2, Ljava/lang/Integer;

    const/16 v8, -0x27b

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    const/16 v8, 0x5e

    aput-object v2, v1, v8

    new-instance v2, Ljava/lang/Integer;

    const/16 v8, -0x242

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    const/16 v8, 0x5f

    aput-object v2, v1, v8

    new-instance v2, Ljava/lang/Integer;

    const/16 v8, -0x3e5

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    const/16 v8, 0x60

    aput-object v2, v1, v8

    new-instance v2, Ljava/lang/Integer;

    const/16 v8, 0x3e9

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    const/16 v8, 0x61

    aput-object v2, v1, v8

    new-instance v2, Ljava/lang/Integer;

    const/16 v8, 0x350

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    const/16 v8, 0x62

    aput-object v2, v1, v8

    sput-object v1, Lcom/amazon/ebook/util/text/tinysegmenter/TinySegmenterConstants;->UW5_VALS:[Ljava/lang/Integer;

    const-string v27, "1"

    const-string v28, "E1"

    const-string/jumbo v29, "\u3042"

    const-string/jumbo v30, "\u7a7a"

    const-string/jumbo v31, "\u59d4"

    const-string/jumbo v32, "\u3046"

    const-string/jumbo v33, "\u696d"

    const-string/jumbo v34, "\u304b"

    const-string/jumbo v35, "\u304c"

    const-string/jumbo v36, "\u4f1a"

    const-string/jumbo v37, "\u304f"

    const-string/jumbo v38, "\u4e00"

    const-string/jumbo v39, "\u90ce"

    const-string/jumbo v40, "\u3053"

    const-string/jumbo v41, "\u3058"

    const-string/jumbo v42, "\u533a"

    const-string/jumbo v43, "\u3059"

    const-string/jumbo v44, "\u5b66"

    const-string/jumbo v45, "\uff25\uff11"

    const-string/jumbo v46, "\u5e02"

    const-string v47, "1"

    const-string/jumbo v48, "\u305f"

    const-string/jumbo v49, "\u3001"

    const-string/jumbo v50, "\u3002"

    const-string/jumbo v51, "\u3063"

    const-string/jumbo v52, "\u9023"

    const-string/jumbo v53, "\u3066"

    const-string/jumbo v54, "\u3067"

    const-string/jumbo v55, "\u3068"

    const-string v56, ",,"

    const-string/jumbo v57, "\u306a"

    const-string/jumbo v58, "\u306b"

    const-string/jumbo v59, "\u5f8c"

    const-string v60, "."

    const-string/jumbo v61, "\u306e"

    const-string/jumbo v62, "\u306f"

    const-string/jumbo v63, "\u798f"

    const-string/jumbo v64, "\u76f8"

    const-string/jumbo v65, "\u4e2d"

    const-string/jumbo v66, "\u5e83"

    const-string/jumbo v67, "\u3082"

    const-string/jumbo v68, "\u793e"

    const-string/jumbo v69, "\u54e1"

    const-string/jumbo v70, "\uff99"

    const-string/jumbo v71, "\u524d"

    const-string/jumbo v72, "\u4ef6"

    const-string/jumbo v73, "\u308a"

    const-string/jumbo v74, "\u308b"

    const-string/jumbo v75, "\uff9d"

    const-string/jumbo v76, "\u30eb"

    const-string/jumbo v77, "\u3092"

    const-string/jumbo v78, "\u30f3"

    const-string/jumbo v79, "\u8005"

    filled-new-array/range {v27 .. v79}, [Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/amazon/ebook/util/text/tinysegmenter/TinySegmenterConstants;->UW6_KEYS:[Ljava/lang/String;

    const/16 v1, 0x35

    new-array v1, v1, [Ljava/lang/Integer;

    new-instance v2, Ljava/lang/Integer;

    const/16 v8, -0x10e

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    aput-object v2, v1, v3

    new-instance v2, Ljava/lang/Integer;

    const/16 v8, 0x132

    invoke-direct {v2, v8}, Ljava/lang/Integer;-><init>(I)V

    aput-object v2, v1, v4

    new-instance v2, Ljava/lang/Integer;

    const/16 v4, -0x133

    invoke-direct {v2, v4}, Ljava/lang/Integer;-><init>(I)V

    aput-object v2, v1, v6

    new-instance v2, Ljava/lang/Integer;

    const/16 v4, -0x336

    invoke-direct {v2, v4}, Ljava/lang/Integer;-><init>(I)V

    aput-object v2, v1, v7

    new-instance v2, Ljava/lang/Integer;

    const/16 v4, 0x31e

    invoke-direct {v2, v4}, Ljava/lang/Integer;-><init>(I)V

    aput-object v2, v1, v0

    new-instance v0, Ljava/lang/Integer;

    const/16 v2, 0xbd

    invoke-direct {v0, v2}, Ljava/lang/Integer;-><init>(I)V

    aput-object v0, v1, v9

    new-instance v0, Ljava/lang/Integer;

    const/16 v2, -0x2b9

    invoke-direct {v0, v2}, Ljava/lang/Integer;-><init>(I)V

    aput-object v0, v1, v5

    new-instance v0, Ljava/lang/Integer;

    const/16 v2, 0xf1

    invoke-direct {v0, v2}, Ljava/lang/Integer;-><init>(I)V

    aput-object v0, v1, v10

    new-instance v0, Ljava/lang/Integer;

    const/16 v2, -0x49

    invoke-direct {v0, v2}, Ljava/lang/Integer;-><init>(I)V

    aput-object v0, v1, v11

    new-instance v0, Ljava/lang/Integer;

    const/16 v2, 0x270

    invoke-direct {v0, v2}, Ljava/lang/Integer;-><init>(I)V

    aput-object v0, v1, v12

    new-instance v0, Ljava/lang/Integer;

    const/16 v2, -0x79

    invoke-direct {v0, v2}, Ljava/lang/Integer;-><init>(I)V

    aput-object v0, v1, v13

    new-instance v0, Ljava/lang/Integer;

    const/16 v2, -0x115

    invoke-direct {v0, v2}, Ljava/lang/Integer;-><init>(I)V

    const/16 v2, 0xb

    aput-object v0, v1, v2

    new-instance v0, Ljava/lang/Integer;

    const/16 v2, 0x43a

    invoke-direct {v0, v2}, Ljava/lang/Integer;-><init>(I)V

    const/16 v2, 0xc

    aput-object v0, v1, v2

    new-instance v0, Ljava/lang/Integer;

    const/16 v2, -0xc8

    invoke-direct {v0, v2}, Ljava/lang/Integer;-><init>(I)V

    const/16 v2, 0xd

    aput-object v0, v1, v2

    new-instance v0, Ljava/lang/Integer;

    const/16 v2, 0x6f6

    invoke-direct {v0, v2}, Ljava/lang/Integer;-><init>(I)V

    const/16 v2, 0xe

    aput-object v0, v1, v2

    new-instance v0, Ljava/lang/Integer;

    const/16 v2, 0x700

    invoke-direct {v0, v2}, Ljava/lang/Integer;-><init>(I)V

    const/16 v2, 0xf

    aput-object v0, v1, v2

    new-instance v0, Ljava/lang/Integer;

    const/16 v2, 0x17f

    invoke-direct {v0, v2}, Ljava/lang/Integer;-><init>(I)V

    const/16 v2, 0x10

    aput-object v0, v1, v2

    new-instance v0, Ljava/lang/Integer;

    const/16 v2, -0x3c0

    invoke-direct {v0, v2}, Ljava/lang/Integer;-><init>(I)V

    const/16 v2, 0x11

    aput-object v0, v1, v2

    new-instance v0, Ljava/lang/Integer;

    const/16 v2, 0x132

    invoke-direct {v0, v2}, Ljava/lang/Integer;-><init>(I)V

    const/16 v2, 0x12

    aput-object v0, v1, v2

    new-instance v0, Ljava/lang/Integer;

    const/16 v2, 0x377

    invoke-direct {v0, v2}, Ljava/lang/Integer;-><init>(I)V

    const/16 v2, 0x13

    aput-object v0, v1, v2

    new-instance v0, Ljava/lang/Integer;

    const/16 v2, -0x10e

    invoke-direct {v0, v2}, Ljava/lang/Integer;-><init>(I)V

    const/16 v2, 0x14

    aput-object v0, v1, v2

    new-instance v0, Ljava/lang/Integer;

    const/16 v2, -0x1ac

    invoke-direct {v0, v2}, Ljava/lang/Integer;-><init>(I)V

    const/16 v2, 0x15

    aput-object v0, v1, v2

    new-instance v0, Ljava/lang/Integer;

    const/16 v2, 0xe3

    invoke-direct {v0, v2}, Ljava/lang/Integer;-><init>(I)V

    const/16 v2, 0x16

    aput-object v0, v1, v2

    new-instance v0, Ljava/lang/Integer;

    const/16 v2, 0x328

    invoke-direct {v0, v2}, Ljava/lang/Integer;-><init>(I)V

    const/16 v2, 0x17

    aput-object v0, v1, v2

    new-instance v0, Ljava/lang/Integer;

    const/16 v2, 0x23d

    invoke-direct {v0, v2}, Ljava/lang/Integer;-><init>(I)V

    const/16 v2, 0x18

    aput-object v0, v1, v2

    new-instance v0, Ljava/lang/Integer;

    const/16 v2, 0x1cf

    invoke-direct {v0, v2}, Ljava/lang/Integer;-><init>(I)V

    const/16 v2, 0x19

    aput-object v0, v1, v2

    new-instance v0, Ljava/lang/Integer;

    const/16 v2, -0x3f6

    invoke-direct {v0, v2}, Ljava/lang/Integer;-><init>(I)V

    const/16 v2, 0x1a

    aput-object v0, v1, v2

    new-instance v0, Ljava/lang/Integer;

    const/16 v2, 0x65

    invoke-direct {v0, v2}, Ljava/lang/Integer;-><init>(I)V

    const/16 v2, 0x1b

    aput-object v0, v1, v2

    new-instance v0, Ljava/lang/Integer;

    const/16 v2, -0x69

    invoke-direct {v0, v2}, Ljava/lang/Integer;-><init>(I)V

    const/16 v2, 0x1c

    aput-object v0, v1, v2

    new-instance v0, Ljava/lang/Integer;

    const/16 v2, 0xe3

    invoke-direct {v0, v2}, Ljava/lang/Integer;-><init>(I)V

    const/16 v2, 0x1d

    aput-object v0, v1, v2

    new-instance v0, Ljava/lang/Integer;

    const/16 v2, -0xfd

    invoke-direct {v0, v2}, Ljava/lang/Integer;-><init>(I)V

    const/16 v2, 0x1e

    aput-object v0, v1, v2

    new-instance v0, Ljava/lang/Integer;

    const/16 v2, -0x95

    invoke-direct {v0, v2}, Ljava/lang/Integer;-><init>(I)V

    const/16 v2, 0x1f

    aput-object v0, v1, v2

    new-instance v0, Ljava/lang/Integer;

    const/16 v2, 0x217

    invoke-direct {v0, v2}, Ljava/lang/Integer;-><init>(I)V

    const/16 v2, 0x20

    aput-object v0, v1, v2

    new-instance v0, Ljava/lang/Integer;

    const/16 v2, 0x328

    invoke-direct {v0, v2}, Ljava/lang/Integer;-><init>(I)V

    const/16 v2, 0x21

    aput-object v0, v1, v2

    new-instance v0, Ljava/lang/Integer;

    const/16 v2, -0x1a1

    invoke-direct {v0, v2}, Ljava/lang/Integer;-><init>(I)V

    const/16 v2, 0x22

    aput-object v0, v1, v2

    new-instance v0, Ljava/lang/Integer;

    const/16 v2, -0xec

    invoke-direct {v0, v2}, Ljava/lang/Integer;-><init>(I)V

    const/16 v2, 0x23

    aput-object v0, v1, v2

    new-instance v0, Ljava/lang/Integer;

    const/16 v2, 0x3ce

    invoke-direct {v0, v2}, Ljava/lang/Integer;-><init>(I)V

    const/16 v2, 0x24

    aput-object v0, v1, v2

    new-instance v0, Ljava/lang/Integer;

    const/16 v2, 0x2f1

    invoke-direct {v0, v2}, Ljava/lang/Integer;-><init>(I)V

    const/16 v2, 0x25

    aput-object v0, v1, v2

    new-instance v0, Ljava/lang/Integer;

    const/16 v2, 0xc9

    invoke-direct {v0, v2}, Ljava/lang/Integer;-><init>(I)V

    const/16 v2, 0x26

    aput-object v0, v1, v2

    new-instance v0, Ljava/lang/Integer;

    const/16 v2, -0x2b7

    invoke-direct {v0, v2}, Ljava/lang/Integer;-><init>(I)V

    const/16 v2, 0x27

    aput-object v0, v1, v2

    new-instance v0, Ljava/lang/Integer;

    const/16 v2, -0xce

    invoke-direct {v0, v2}, Ljava/lang/Integer;-><init>(I)V

    const/16 v2, 0x28

    aput-object v0, v1, v2

    new-instance v0, Ljava/lang/Integer;

    const/16 v2, -0x1fb

    invoke-direct {v0, v2}, Ljava/lang/Integer;-><init>(I)V

    const/16 v2, 0x29

    aput-object v0, v1, v2

    new-instance v0, Ljava/lang/Integer;

    const/16 v2, -0x4bc

    invoke-direct {v0, v2}, Ljava/lang/Integer;-><init>(I)V

    const/16 v2, 0x2a

    aput-object v0, v1, v2

    new-instance v0, Ljava/lang/Integer;

    const/16 v2, -0x2a1

    invoke-direct {v0, v2}, Ljava/lang/Integer;-><init>(I)V

    const/16 v2, 0x2b

    aput-object v0, v1, v2

    new-instance v0, Ljava/lang/Integer;

    const/16 v2, 0x12e

    invoke-direct {v0, v2}, Ljava/lang/Integer;-><init>(I)V

    const/16 v2, 0x2c

    aput-object v0, v1, v2

    new-instance v0, Ljava/lang/Integer;

    const/16 v2, -0x320

    invoke-direct {v0, v2}, Ljava/lang/Integer;-><init>(I)V

    const/16 v2, 0x2d

    aput-object v0, v1, v2

    new-instance v0, Ljava/lang/Integer;

    const/16 v2, 0xbb

    invoke-direct {v0, v2}, Ljava/lang/Integer;-><init>(I)V

    const/16 v2, 0x2e

    aput-object v0, v1, v2

    new-instance v0, Ljava/lang/Integer;

    const/16 v2, -0x87

    invoke-direct {v0, v2}, Ljava/lang/Integer;-><init>(I)V

    const/16 v2, 0x2f

    aput-object v0, v1, v2

    new-instance v0, Ljava/lang/Integer;

    const/16 v2, -0x1f0

    invoke-direct {v0, v2}, Ljava/lang/Integer;-><init>(I)V

    const/16 v2, 0x30

    aput-object v0, v1, v2

    new-instance v0, Ljava/lang/Integer;

    const/16 v2, -0x2a1

    invoke-direct {v0, v2}, Ljava/lang/Integer;-><init>(I)V

    const/16 v2, 0x31

    aput-object v0, v1, v2

    new-instance v0, Ljava/lang/Integer;

    const/16 v2, 0xc3

    invoke-direct {v0, v2}, Ljava/lang/Integer;-><init>(I)V

    const/16 v2, 0x32

    aput-object v0, v1, v2

    new-instance v0, Ljava/lang/Integer;

    const/16 v2, -0x1f0

    invoke-direct {v0, v2}, Ljava/lang/Integer;-><init>(I)V

    const/16 v2, 0x33

    aput-object v0, v1, v2

    new-instance v0, Ljava/lang/Integer;

    const/16 v2, 0x713

    invoke-direct {v0, v2}, Ljava/lang/Integer;-><init>(I)V

    const/16 v2, 0x34

    aput-object v0, v1, v2

    sput-object v1, Lcom/amazon/ebook/util/text/tinysegmenter/TinySegmenterConstants;->UW6_VALS:[Ljava/lang/Integer;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const/4 v1, 0x0

    :goto_0
    sget-object v2, Lcom/amazon/ebook/util/text/tinysegmenter/TinySegmenterConstants;->BC1_KEYS:[Ljava/lang/String;

    array-length v4, v2

    if-ge v1, v4, :cond_0

    aget-object v2, v2, v1

    sget-object v4, Lcom/amazon/ebook/util/text/tinysegmenter/TinySegmenterConstants;->BC1_VALS:[Ljava/lang/Integer;

    aget-object v4, v4, v1

    invoke-interface {v0, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const/4 v1, 0x0

    :goto_1
    sget-object v2, Lcom/amazon/ebook/util/text/tinysegmenter/TinySegmenterConstants;->BC2_KEYS:[Ljava/lang/String;

    array-length v4, v2

    if-ge v1, v4, :cond_1

    aget-object v2, v2, v1

    sget-object v4, Lcom/amazon/ebook/util/text/tinysegmenter/TinySegmenterConstants;->BC2_VALS:[Ljava/lang/Integer;

    aget-object v4, v4, v1

    invoke-interface {v0, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const/4 v1, 0x0

    :goto_2
    sget-object v2, Lcom/amazon/ebook/util/text/tinysegmenter/TinySegmenterConstants;->BC3_KEYS:[Ljava/lang/String;

    array-length v4, v2

    if-ge v1, v4, :cond_2

    aget-object v2, v2, v1

    sget-object v4, Lcom/amazon/ebook/util/text/tinysegmenter/TinySegmenterConstants;->BC3_VALS:[Ljava/lang/Integer;

    aget-object v4, v4, v1

    invoke-interface {v0, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_2
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const/4 v1, 0x0

    :goto_3
    sget-object v2, Lcom/amazon/ebook/util/text/tinysegmenter/TinySegmenterConstants;->BP1_KEYS:[Ljava/lang/String;

    array-length v4, v2

    if-ge v1, v4, :cond_3

    aget-object v2, v2, v1

    sget-object v4, Lcom/amazon/ebook/util/text/tinysegmenter/TinySegmenterConstants;->BP1_VALS:[Ljava/lang/Integer;

    aget-object v4, v4, v1

    invoke-interface {v0, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_3
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const/4 v1, 0x0

    :goto_4
    sget-object v2, Lcom/amazon/ebook/util/text/tinysegmenter/TinySegmenterConstants;->BP2_KEYS:[Ljava/lang/String;

    array-length v4, v2

    if-ge v1, v4, :cond_4

    aget-object v2, v2, v1

    sget-object v4, Lcom/amazon/ebook/util/text/tinysegmenter/TinySegmenterConstants;->BP2_VALS:[Ljava/lang/Integer;

    aget-object v4, v4, v1

    invoke-interface {v0, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_4
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const/4 v1, 0x0

    :goto_5
    sget-object v2, Lcom/amazon/ebook/util/text/tinysegmenter/TinySegmenterConstants;->BQ1_KEYS:[Ljava/lang/String;

    array-length v4, v2

    if-ge v1, v4, :cond_5

    aget-object v2, v2, v1

    sget-object v4, Lcom/amazon/ebook/util/text/tinysegmenter/TinySegmenterConstants;->BQ1_VALS:[Ljava/lang/Integer;

    aget-object v4, v4, v1

    invoke-interface {v0, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_5
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const/4 v1, 0x0

    :goto_6
    sget-object v2, Lcom/amazon/ebook/util/text/tinysegmenter/TinySegmenterConstants;->BQ2_KEYS:[Ljava/lang/String;

    array-length v4, v2

    if-ge v1, v4, :cond_6

    aget-object v2, v2, v1

    sget-object v4, Lcom/amazon/ebook/util/text/tinysegmenter/TinySegmenterConstants;->BQ2_VALS:[Ljava/lang/Integer;

    aget-object v4, v4, v1

    invoke-interface {v0, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_6
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const/4 v1, 0x0

    :goto_7
    sget-object v2, Lcom/amazon/ebook/util/text/tinysegmenter/TinySegmenterConstants;->BQ3_KEYS:[Ljava/lang/String;

    array-length v4, v2

    if-ge v1, v4, :cond_7

    aget-object v2, v2, v1

    sget-object v4, Lcom/amazon/ebook/util/text/tinysegmenter/TinySegmenterConstants;->BQ3_VALS:[Ljava/lang/Integer;

    aget-object v4, v4, v1

    invoke-interface {v0, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_7
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const/4 v1, 0x0

    :goto_8
    sget-object v2, Lcom/amazon/ebook/util/text/tinysegmenter/TinySegmenterConstants;->BQ4_KEYS:[Ljava/lang/String;

    array-length v4, v2

    if-ge v1, v4, :cond_8

    aget-object v2, v2, v1

    sget-object v4, Lcom/amazon/ebook/util/text/tinysegmenter/TinySegmenterConstants;->BQ4_VALS:[Ljava/lang/Integer;

    aget-object v4, v4, v1

    invoke-interface {v0, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    :cond_8
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const/4 v1, 0x0

    :goto_9
    sget-object v2, Lcom/amazon/ebook/util/text/tinysegmenter/TinySegmenterConstants;->BW1_KEYS:[Ljava/lang/String;

    array-length v4, v2

    if-ge v1, v4, :cond_9

    aget-object v2, v2, v1

    sget-object v4, Lcom/amazon/ebook/util/text/tinysegmenter/TinySegmenterConstants;->BW1_VALS:[Ljava/lang/Integer;

    aget-object v4, v4, v1

    invoke-interface {v0, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    :cond_9
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const/4 v1, 0x0

    :goto_a
    sget-object v2, Lcom/amazon/ebook/util/text/tinysegmenter/TinySegmenterConstants;->BW2_KEYS:[Ljava/lang/String;

    array-length v4, v2

    if-ge v1, v4, :cond_a

    aget-object v2, v2, v1

    sget-object v4, Lcom/amazon/ebook/util/text/tinysegmenter/TinySegmenterConstants;->BW2_VALS:[Ljava/lang/Integer;

    aget-object v4, v4, v1

    invoke-interface {v0, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    :cond_a
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const/4 v1, 0x0

    :goto_b
    sget-object v2, Lcom/amazon/ebook/util/text/tinysegmenter/TinySegmenterConstants;->BW3_KEYS:[Ljava/lang/String;

    array-length v4, v2

    if-ge v1, v4, :cond_b

    aget-object v2, v2, v1

    sget-object v4, Lcom/amazon/ebook/util/text/tinysegmenter/TinySegmenterConstants;->BW3_VALS:[Ljava/lang/Integer;

    aget-object v4, v4, v1

    invoke-interface {v0, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    :cond_b
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const/4 v1, 0x0

    :goto_c
    sget-object v2, Lcom/amazon/ebook/util/text/tinysegmenter/TinySegmenterConstants;->TC1_KEYS:[Ljava/lang/String;

    array-length v4, v2

    if-ge v1, v4, :cond_c

    aget-object v2, v2, v1

    sget-object v4, Lcom/amazon/ebook/util/text/tinysegmenter/TinySegmenterConstants;->TC1_VALS:[Ljava/lang/Integer;

    aget-object v4, v4, v1

    invoke-interface {v0, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    :cond_c
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const/4 v1, 0x0

    :goto_d
    sget-object v2, Lcom/amazon/ebook/util/text/tinysegmenter/TinySegmenterConstants;->TC2_KEYS:[Ljava/lang/String;

    array-length v4, v2

    if-ge v1, v4, :cond_d

    aget-object v2, v2, v1

    sget-object v4, Lcom/amazon/ebook/util/text/tinysegmenter/TinySegmenterConstants;->TC2_VALS:[Ljava/lang/Integer;

    aget-object v4, v4, v1

    invoke-interface {v0, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    :cond_d
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const/4 v1, 0x0

    :goto_e
    sget-object v2, Lcom/amazon/ebook/util/text/tinysegmenter/TinySegmenterConstants;->TC3_KEYS:[Ljava/lang/String;

    array-length v4, v2

    if-ge v1, v4, :cond_e

    aget-object v2, v2, v1

    sget-object v4, Lcom/amazon/ebook/util/text/tinysegmenter/TinySegmenterConstants;->TC3_VALS:[Ljava/lang/Integer;

    aget-object v4, v4, v1

    invoke-interface {v0, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    :cond_e
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const/4 v1, 0x0

    :goto_f
    sget-object v2, Lcom/amazon/ebook/util/text/tinysegmenter/TinySegmenterConstants;->TC4_KEYS:[Ljava/lang/String;

    array-length v4, v2

    if-ge v1, v4, :cond_f

    aget-object v2, v2, v1

    sget-object v4, Lcom/amazon/ebook/util/text/tinysegmenter/TinySegmenterConstants;->TC4_VALS:[Ljava/lang/Integer;

    aget-object v4, v4, v1

    invoke-interface {v0, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    :cond_f
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const/4 v1, 0x0

    :goto_10
    sget-object v2, Lcom/amazon/ebook/util/text/tinysegmenter/TinySegmenterConstants;->TQ1_KEYS:[Ljava/lang/String;

    array-length v4, v2

    if-ge v1, v4, :cond_10

    aget-object v2, v2, v1

    sget-object v4, Lcom/amazon/ebook/util/text/tinysegmenter/TinySegmenterConstants;->TQ1_VALS:[Ljava/lang/Integer;

    aget-object v4, v4, v1

    invoke-interface {v0, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    :cond_10
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const/4 v1, 0x0

    :goto_11
    sget-object v2, Lcom/amazon/ebook/util/text/tinysegmenter/TinySegmenterConstants;->TQ2_KEYS:[Ljava/lang/String;

    array-length v4, v2

    if-ge v1, v4, :cond_11

    aget-object v2, v2, v1

    sget-object v4, Lcom/amazon/ebook/util/text/tinysegmenter/TinySegmenterConstants;->TQ2_VALS:[Ljava/lang/Integer;

    aget-object v4, v4, v1

    invoke-interface {v0, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_11

    :cond_11
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const/4 v1, 0x0

    :goto_12
    sget-object v2, Lcom/amazon/ebook/util/text/tinysegmenter/TinySegmenterConstants;->TQ3_KEYS:[Ljava/lang/String;

    array-length v4, v2

    if-ge v1, v4, :cond_12

    aget-object v2, v2, v1

    sget-object v4, Lcom/amazon/ebook/util/text/tinysegmenter/TinySegmenterConstants;->TQ3_VALS:[Ljava/lang/Integer;

    aget-object v4, v4, v1

    invoke-interface {v0, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_12

    :cond_12
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const/4 v1, 0x0

    :goto_13
    sget-object v2, Lcom/amazon/ebook/util/text/tinysegmenter/TinySegmenterConstants;->TQ4_KEYS:[Ljava/lang/String;

    array-length v4, v2

    if-ge v1, v4, :cond_13

    aget-object v2, v2, v1

    sget-object v4, Lcom/amazon/ebook/util/text/tinysegmenter/TinySegmenterConstants;->TQ4_VALS:[Ljava/lang/Integer;

    aget-object v4, v4, v1

    invoke-interface {v0, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_13

    :cond_13
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const/4 v1, 0x0

    :goto_14
    sget-object v2, Lcom/amazon/ebook/util/text/tinysegmenter/TinySegmenterConstants;->TW1_KEYS:[Ljava/lang/String;

    array-length v4, v2

    if-ge v1, v4, :cond_14

    aget-object v2, v2, v1

    sget-object v4, Lcom/amazon/ebook/util/text/tinysegmenter/TinySegmenterConstants;->TW1_VALS:[Ljava/lang/Integer;

    aget-object v4, v4, v1

    invoke-interface {v0, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_14

    :cond_14
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const/4 v1, 0x0

    :goto_15
    sget-object v2, Lcom/amazon/ebook/util/text/tinysegmenter/TinySegmenterConstants;->TW2_KEYS:[Ljava/lang/String;

    array-length v4, v2

    if-ge v1, v4, :cond_15

    aget-object v2, v2, v1

    sget-object v4, Lcom/amazon/ebook/util/text/tinysegmenter/TinySegmenterConstants;->TW2_VALS:[Ljava/lang/Integer;

    aget-object v4, v4, v1

    invoke-interface {v0, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_15

    :cond_15
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const/4 v1, 0x0

    :goto_16
    sget-object v2, Lcom/amazon/ebook/util/text/tinysegmenter/TinySegmenterConstants;->TW3_KEYS:[Ljava/lang/String;

    array-length v4, v2

    if-ge v1, v4, :cond_16

    aget-object v2, v2, v1

    sget-object v4, Lcom/amazon/ebook/util/text/tinysegmenter/TinySegmenterConstants;->TW3_VALS:[Ljava/lang/Integer;

    aget-object v4, v4, v1

    invoke-interface {v0, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_16

    :cond_16
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const/4 v1, 0x0

    :goto_17
    sget-object v2, Lcom/amazon/ebook/util/text/tinysegmenter/TinySegmenterConstants;->TW4_KEYS:[Ljava/lang/String;

    array-length v4, v2

    if-ge v1, v4, :cond_17

    aget-object v2, v2, v1

    sget-object v4, Lcom/amazon/ebook/util/text/tinysegmenter/TinySegmenterConstants;->TW4_VALS:[Ljava/lang/Integer;

    aget-object v4, v4, v1

    invoke-interface {v0, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_17

    :cond_17
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const/4 v1, 0x0

    :goto_18
    sget-object v2, Lcom/amazon/ebook/util/text/tinysegmenter/TinySegmenterConstants;->UC1_KEYS:[Ljava/lang/String;

    array-length v4, v2

    if-ge v1, v4, :cond_18

    aget-object v2, v2, v1

    sget-object v4, Lcom/amazon/ebook/util/text/tinysegmenter/TinySegmenterConstants;->UC1_VALS:[Ljava/lang/Integer;

    aget-object v4, v4, v1

    invoke-interface {v0, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_18

    :cond_18
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const/4 v1, 0x0

    :goto_19
    sget-object v2, Lcom/amazon/ebook/util/text/tinysegmenter/TinySegmenterConstants;->UC2_KEYS:[Ljava/lang/String;

    array-length v4, v2

    if-ge v1, v4, :cond_19

    aget-object v2, v2, v1

    sget-object v4, Lcom/amazon/ebook/util/text/tinysegmenter/TinySegmenterConstants;->UC2_VALS:[Ljava/lang/Integer;

    aget-object v4, v4, v1

    invoke-interface {v0, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_19

    :cond_19
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const/4 v1, 0x0

    :goto_1a
    sget-object v2, Lcom/amazon/ebook/util/text/tinysegmenter/TinySegmenterConstants;->UC3_KEYS:[Ljava/lang/String;

    array-length v4, v2

    if-ge v1, v4, :cond_1a

    aget-object v2, v2, v1

    sget-object v4, Lcom/amazon/ebook/util/text/tinysegmenter/TinySegmenterConstants;->UC3_VALS:[Ljava/lang/Integer;

    aget-object v4, v4, v1

    invoke-interface {v0, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_1a

    :cond_1a
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const/4 v1, 0x0

    :goto_1b
    sget-object v2, Lcom/amazon/ebook/util/text/tinysegmenter/TinySegmenterConstants;->UC4_KEYS:[Ljava/lang/String;

    array-length v4, v2

    if-ge v1, v4, :cond_1b

    aget-object v2, v2, v1

    sget-object v4, Lcom/amazon/ebook/util/text/tinysegmenter/TinySegmenterConstants;->UC4_VALS:[Ljava/lang/Integer;

    aget-object v4, v4, v1

    invoke-interface {v0, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_1b

    :cond_1b
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const/4 v1, 0x0

    :goto_1c
    sget-object v2, Lcom/amazon/ebook/util/text/tinysegmenter/TinySegmenterConstants;->UC5_KEYS:[Ljava/lang/String;

    array-length v4, v2

    if-ge v1, v4, :cond_1c

    aget-object v2, v2, v1

    sget-object v4, Lcom/amazon/ebook/util/text/tinysegmenter/TinySegmenterConstants;->UC5_VALS:[Ljava/lang/Integer;

    aget-object v4, v4, v1

    invoke-interface {v0, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_1c

    :cond_1c
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const/4 v1, 0x0

    :goto_1d
    sget-object v2, Lcom/amazon/ebook/util/text/tinysegmenter/TinySegmenterConstants;->UC6_KEYS:[Ljava/lang/String;

    array-length v4, v2

    if-ge v1, v4, :cond_1d

    aget-object v2, v2, v1

    sget-object v4, Lcom/amazon/ebook/util/text/tinysegmenter/TinySegmenterConstants;->UC6_VALS:[Ljava/lang/Integer;

    aget-object v4, v4, v1

    invoke-interface {v0, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_1d

    :cond_1d
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const/4 v1, 0x0

    :goto_1e
    sget-object v2, Lcom/amazon/ebook/util/text/tinysegmenter/TinySegmenterConstants;->UP1_KEYS:[Ljava/lang/String;

    array-length v4, v2

    if-ge v1, v4, :cond_1e

    aget-object v2, v2, v1

    sget-object v4, Lcom/amazon/ebook/util/text/tinysegmenter/TinySegmenterConstants;->UP1_VALS:[Ljava/lang/Integer;

    aget-object v4, v4, v1

    invoke-interface {v0, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_1e

    :cond_1e
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const/4 v1, 0x0

    :goto_1f
    sget-object v2, Lcom/amazon/ebook/util/text/tinysegmenter/TinySegmenterConstants;->UP2_KEYS:[Ljava/lang/String;

    array-length v4, v2

    if-ge v1, v4, :cond_1f

    aget-object v2, v2, v1

    sget-object v4, Lcom/amazon/ebook/util/text/tinysegmenter/TinySegmenterConstants;->UP2_VALS:[Ljava/lang/Integer;

    aget-object v4, v4, v1

    invoke-interface {v0, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_1f

    :cond_1f
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const/4 v1, 0x0

    :goto_20
    sget-object v2, Lcom/amazon/ebook/util/text/tinysegmenter/TinySegmenterConstants;->UP3_KEYS:[Ljava/lang/String;

    array-length v4, v2

    if-ge v1, v4, :cond_20

    aget-object v2, v2, v1

    sget-object v4, Lcom/amazon/ebook/util/text/tinysegmenter/TinySegmenterConstants;->UP3_VALS:[Ljava/lang/Integer;

    aget-object v4, v4, v1

    invoke-interface {v0, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_20

    :cond_20
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const/4 v1, 0x0

    :goto_21
    sget-object v2, Lcom/amazon/ebook/util/text/tinysegmenter/TinySegmenterConstants;->UQ1_KEYS:[Ljava/lang/String;

    array-length v4, v2

    if-ge v1, v4, :cond_21

    aget-object v2, v2, v1

    sget-object v4, Lcom/amazon/ebook/util/text/tinysegmenter/TinySegmenterConstants;->UQ1_VALS:[Ljava/lang/Integer;

    aget-object v4, v4, v1

    invoke-interface {v0, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_21

    :cond_21
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const/4 v1, 0x0

    :goto_22
    sget-object v2, Lcom/amazon/ebook/util/text/tinysegmenter/TinySegmenterConstants;->UQ2_KEYS:[Ljava/lang/String;

    array-length v4, v2

    if-ge v1, v4, :cond_22

    aget-object v2, v2, v1

    sget-object v4, Lcom/amazon/ebook/util/text/tinysegmenter/TinySegmenterConstants;->UQ2_VALS:[Ljava/lang/Integer;

    aget-object v4, v4, v1

    invoke-interface {v0, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_22

    :cond_22
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const/4 v1, 0x0

    :goto_23
    sget-object v2, Lcom/amazon/ebook/util/text/tinysegmenter/TinySegmenterConstants;->UQ3_KEYS:[Ljava/lang/String;

    array-length v4, v2

    if-ge v1, v4, :cond_23

    aget-object v2, v2, v1

    sget-object v4, Lcom/amazon/ebook/util/text/tinysegmenter/TinySegmenterConstants;->UQ3_VALS:[Ljava/lang/Integer;

    aget-object v4, v4, v1

    invoke-interface {v0, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_23

    :cond_23
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const/4 v1, 0x0

    :goto_24
    sget-object v2, Lcom/amazon/ebook/util/text/tinysegmenter/TinySegmenterConstants;->UW1_KEYS:[Ljava/lang/String;

    array-length v4, v2

    if-ge v1, v4, :cond_24

    aget-object v2, v2, v1

    sget-object v4, Lcom/amazon/ebook/util/text/tinysegmenter/TinySegmenterConstants;->UW1_VALS:[Ljava/lang/Integer;

    aget-object v4, v4, v1

    invoke-interface {v0, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_24

    :cond_24
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const/4 v1, 0x0

    :goto_25
    sget-object v2, Lcom/amazon/ebook/util/text/tinysegmenter/TinySegmenterConstants;->UW2_KEYS:[Ljava/lang/String;

    array-length v4, v2

    if-ge v1, v4, :cond_25

    aget-object v2, v2, v1

    sget-object v4, Lcom/amazon/ebook/util/text/tinysegmenter/TinySegmenterConstants;->UW2_VALS:[Ljava/lang/Integer;

    aget-object v4, v4, v1

    invoke-interface {v0, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_25

    :cond_25
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const/4 v1, 0x0

    :goto_26
    sget-object v2, Lcom/amazon/ebook/util/text/tinysegmenter/TinySegmenterConstants;->UW3_KEYS:[Ljava/lang/String;

    array-length v4, v2

    if-ge v1, v4, :cond_26

    aget-object v2, v2, v1

    sget-object v4, Lcom/amazon/ebook/util/text/tinysegmenter/TinySegmenterConstants;->UW3_VALS:[Ljava/lang/Integer;

    aget-object v4, v4, v1

    invoke-interface {v0, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_26

    :cond_26
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const/4 v1, 0x0

    :goto_27
    sget-object v2, Lcom/amazon/ebook/util/text/tinysegmenter/TinySegmenterConstants;->UW4_KEYS:[Ljava/lang/String;

    array-length v4, v2

    if-ge v1, v4, :cond_27

    aget-object v2, v2, v1

    sget-object v4, Lcom/amazon/ebook/util/text/tinysegmenter/TinySegmenterConstants;->UW4_VALS:[Ljava/lang/Integer;

    aget-object v4, v4, v1

    invoke-interface {v0, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_27

    :cond_27
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const/4 v1, 0x0

    :goto_28
    sget-object v2, Lcom/amazon/ebook/util/text/tinysegmenter/TinySegmenterConstants;->UW5_KEYS:[Ljava/lang/String;

    array-length v4, v2

    if-ge v1, v4, :cond_28

    aget-object v2, v2, v1

    sget-object v4, Lcom/amazon/ebook/util/text/tinysegmenter/TinySegmenterConstants;->UW5_VALS:[Ljava/lang/Integer;

    aget-object v4, v4, v1

    invoke-interface {v0, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_28

    :cond_28
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    :goto_29
    sget-object v1, Lcom/amazon/ebook/util/text/tinysegmenter/TinySegmenterConstants;->UW6_KEYS:[Ljava/lang/String;

    array-length v2, v1

    if-ge v3, v2, :cond_29

    aget-object v1, v1, v3

    sget-object v2, Lcom/amazon/ebook/util/text/tinysegmenter/TinySegmenterConstants;->UW6_VALS:[Ljava/lang/Integer;

    aget-object v2, v2, v3

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v3, v3, 0x1

    goto :goto_29

    :cond_29
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
