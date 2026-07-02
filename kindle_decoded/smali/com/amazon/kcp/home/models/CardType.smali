.class public final enum Lcom/amazon/kcp/home/models/CardType;
.super Ljava/lang/Enum;
.source "CardType.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kcp/home/models/CardType$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/kcp/home/models/CardType;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCardType.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CardType.kt\ncom/amazon/kcp/home/models/CardType\n+ 2 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n*L\n1#1,277:1\n8774#2,2:278\n9034#2,4:280\n*E\n*S KotlinDebug\n*F\n+ 1 CardType.kt\ncom/amazon/kcp/home/models/CardType\n*L\n271#1,2:278\n271#1,4:280\n*E\n"
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/kcp/home/models/CardType;

.field public static final enum ANNOUNCEMENT:Lcom/amazon/kcp/home/models/CardType;

.field public static final enum ARTICLE_SHOVELER:Lcom/amazon/kcp/home/models/CardType;

.field public static final enum AUTHOR_FOLLOW:Lcom/amazon/kcp/home/models/CardType;

.field public static final enum BOOKS_BLURB_CARD:Lcom/amazon/kcp/home/models/CardType;

.field public static final enum BOOK_ENTITY_SHOVELER:Lcom/amazon/kcp/home/models/CardType;

.field public static final enum BRANDED_SHOVELER:Lcom/amazon/kcp/home/models/CardType;

.field public static final enum CHARTS:Lcom/amazon/kcp/home/models/CardType;

.field public static final Companion:Lcom/amazon/kcp/home/models/CardType$Companion;

.field public static final enum DONATION:Lcom/amazon/kcp/home/models/CardType;

.field public static final enum FALKOR_DISCOVER:Lcom/amazon/kcp/home/models/CardType;

.field public static final enum FREE_BOOKS:Lcom/amazon/kcp/home/models/CardType;

.field public static final enum HERO_CARD:Lcom/amazon/kcp/home/models/CardType;

.field private static final ID_MAP:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/amazon/kcp/home/models/CardType;",
            ">;"
        }
    .end annotation
.end field

.field public static final enum KU_UPSELL:Lcom/amazon/kcp/home/models/CardType;

.field public static final enum NIS:Lcom/amazon/kcp/home/models/CardType;

.field public static final enum SHOVELER:Lcom/amazon/kcp/home/models/CardType;

.field public static final enum TIPS_AND_TRICKS:Lcom/amazon/kcp/home/models/CardType;

.field public static final enum WAYS_TO_READ:Lcom/amazon/kcp/home/models/CardType;

.field public static final enum WEB:Lcom/amazon/kcp/home/models/CardType;


# instance fields
.field private final templateId:Ljava/lang/String;

.field private final zoneMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Type;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 18

    const-class v0, Lcom/amazon/kindle/home/model/ButtonZone;

    const-class v1, Lcom/amazon/kindle/home/model/DescriptionImageZone;

    const-class v2, Lcom/amazon/kindle/home/model/ArticleZone;

    const-class v3, Lcom/amazon/kindle/home/model/WaysToReadBlock;

    const-class v4, Lcom/amazon/kindle/home/model/ImageZone;

    const-class v5, Lcom/amazon/kindle/home/model/TextZone;

    const/16 v6, 0x11

    new-array v6, v6, [Lcom/amazon/kcp/home/models/CardType;

    new-instance v7, Lcom/amazon/kcp/home/models/CardType;

    const/16 v8, 0xb

    new-array v9, v8, [Lkotlin/Pair;

    const-string v10, "TITLE"

    .line 23
    invoke-static {v10, v5}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v11

    const/4 v12, 0x0

    aput-object v11, v9, v12

    const-string v11, "TEXT_1"

    .line 24
    invoke-static {v11, v5}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v13

    const/4 v14, 0x1

    aput-object v13, v9, v14

    const-string v13, "TEXT_2"

    .line 25
    invoke-static {v13, v5}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v13

    const/4 v15, 0x2

    aput-object v13, v9, v15

    const-string v13, "TEXT_3"

    .line 26
    invoke-static {v13, v5}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v13

    const/4 v8, 0x3

    aput-object v13, v9, v8

    const-string v13, "TEXT_4"

    .line 27
    invoke-static {v13, v5}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v13

    const/4 v8, 0x4

    aput-object v13, v9, v8

    const-string v13, "TEXT_5"

    .line 28
    invoke-static {v13, v5}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v13

    const/4 v8, 0x5

    aput-object v13, v9, v8

    const-string v13, "TEXT_6"

    .line 29
    invoke-static {v13, v5}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v13

    const/4 v8, 0x6

    aput-object v13, v9, v8

    const-string v13, "TEXT_7"

    .line 30
    invoke-static {v13, v5}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v13

    const/4 v8, 0x7

    aput-object v13, v9, v8

    const-string v13, "IMAGE_1"

    .line 31
    invoke-static {v13, v4}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v13

    const/16 v8, 0x8

    aput-object v13, v9, v8

    const-string v13, "BUTTON_1"

    .line 32
    invoke-static {v13, v0}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v16

    const/16 v8, 0x9

    aput-object v16, v9, v8

    const-string v8, "BUTTON_2"

    .line 33
    invoke-static {v8, v0}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v8

    const/16 v15, 0xa

    aput-object v8, v9, v15

    .line 23
    invoke-static {v9}, Lkotlin/collections/MapsKt;->mapOf([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v8

    const-string v9, "NIS"

    const-string v15, "9"

    invoke-direct {v7, v9, v12, v15, v8}, Lcom/amazon/kcp/home/models/CardType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/util/Map;)V

    sput-object v7, Lcom/amazon/kcp/home/models/CardType;->NIS:Lcom/amazon/kcp/home/models/CardType;

    aput-object v7, v6, v12

    new-instance v7, Lcom/amazon/kcp/home/models/CardType;

    const/16 v8, 0x17

    new-array v8, v8, [Lkotlin/Pair;

    .line 35
    invoke-static {v10, v5}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v9

    aput-object v9, v8, v12

    .line 36
    invoke-static {v11, v5}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v9

    aput-object v9, v8, v14

    const-string v9, "IMAGE_1"

    .line 37
    invoke-static {v9, v4}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v9

    const/4 v15, 0x2

    aput-object v9, v8, v15

    const-string v9, "IMAGE_2"

    .line 38
    invoke-static {v9, v4}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v9

    const/4 v15, 0x3

    aput-object v9, v8, v15

    const-string v9, "IMAGE_3"

    .line 39
    invoke-static {v9, v4}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v9

    const/4 v15, 0x4

    aput-object v9, v8, v15

    const-string v9, "IMAGE_4"

    .line 40
    invoke-static {v9, v4}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v9

    const/4 v15, 0x5

    aput-object v9, v8, v15

    const-string v9, "IMAGE_5"

    .line 41
    invoke-static {v9, v4}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v9

    const/4 v15, 0x6

    aput-object v9, v8, v15

    const-string v9, "IMAGE_6"

    .line 42
    invoke-static {v9, v4}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v9

    const/4 v15, 0x7

    aput-object v9, v8, v15

    const-string v9, "IMAGE_7"

    .line 43
    invoke-static {v9, v4}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v9

    const/16 v15, 0x8

    aput-object v9, v8, v15

    const-string v9, "IMAGE_8"

    .line 44
    invoke-static {v9, v4}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v9

    const/16 v15, 0x9

    aput-object v9, v8, v15

    const-string v9, "IMAGE_9"

    .line 45
    invoke-static {v9, v4}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v9

    const/16 v15, 0xa

    aput-object v9, v8, v15

    const-string v9, "IMAGE_10"

    .line 46
    invoke-static {v9, v4}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v9

    const/16 v15, 0xb

    aput-object v9, v8, v15

    const-string v9, "IMAGE_11"

    .line 47
    invoke-static {v9, v4}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v9

    const/16 v15, 0xc

    aput-object v9, v8, v15

    const-string v9, "IMAGE_12"

    .line 48
    invoke-static {v9, v4}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v9

    const/16 v15, 0xd

    aput-object v9, v8, v15

    const-string v9, "IMAGE_13"

    .line 49
    invoke-static {v9, v4}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v9

    const/16 v15, 0xe

    aput-object v9, v8, v15

    const-string v9, "IMAGE_14"

    .line 50
    invoke-static {v9, v4}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v9

    const/16 v15, 0xf

    aput-object v9, v8, v15

    const-string v9, "IMAGE_15"

    .line 51
    invoke-static {v9, v4}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v9

    const/16 v15, 0x10

    aput-object v9, v8, v15

    const-string v9, "IMAGE_16"

    .line 52
    invoke-static {v9, v4}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v9

    const/16 v17, 0x11

    aput-object v9, v8, v17

    const-string v9, "IMAGE_17"

    .line 53
    invoke-static {v9, v4}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v9

    const/16 v17, 0x12

    aput-object v9, v8, v17

    const-string v9, "IMAGE_18"

    .line 54
    invoke-static {v9, v4}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v9

    const/16 v17, 0x13

    aput-object v9, v8, v17

    const-string v9, "IMAGE_19"

    .line 55
    invoke-static {v9, v4}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v9

    const/16 v17, 0x14

    aput-object v9, v8, v17

    const-string v9, "IMAGE_20"

    .line 56
    invoke-static {v9, v4}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v9

    const/16 v17, 0x15

    aput-object v9, v8, v17

    .line 57
    invoke-static {v13, v0}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v9

    const/16 v17, 0x16

    aput-object v9, v8, v17

    .line 35
    invoke-static {v8}, Lkotlin/collections/MapsKt;->mapOf([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v8

    const-string v9, "SHOVELER"

    const-string v15, "18"

    invoke-direct {v7, v9, v14, v15, v8}, Lcom/amazon/kcp/home/models/CardType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/util/Map;)V

    sput-object v7, Lcom/amazon/kcp/home/models/CardType;->SHOVELER:Lcom/amazon/kcp/home/models/CardType;

    aput-object v7, v6, v14

    new-instance v7, Lcom/amazon/kcp/home/models/CardType;

    const/16 v8, 0x18

    new-array v8, v8, [Lkotlin/Pair;

    .line 59
    const-class v9, Lcom/amazon/kindle/home/model/ColorZone;

    const-string v15, "COLOR_1"

    invoke-static {v15, v9}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v9

    aput-object v9, v8, v12

    .line 60
    const-class v9, Lcom/amazon/kindle/home/model/ThemedImageZone;

    const-string v15, "THEMED_IMAGE_1"

    invoke-static {v15, v9}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v9

    aput-object v9, v8, v14

    .line 61
    invoke-static {v11, v5}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v9

    const/4 v15, 0x2

    aput-object v9, v8, v15

    const-string v9, "IMAGE_1"

    .line 62
    invoke-static {v9, v4}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v9

    const/4 v15, 0x3

    aput-object v9, v8, v15

    const-string v9, "IMAGE_2"

    .line 63
    invoke-static {v9, v4}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v9

    const/4 v15, 0x4

    aput-object v9, v8, v15

    const-string v9, "IMAGE_3"

    .line 64
    invoke-static {v9, v4}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v9

    const/4 v15, 0x5

    aput-object v9, v8, v15

    const-string v9, "IMAGE_4"

    .line 65
    invoke-static {v9, v4}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v9

    const/4 v15, 0x6

    aput-object v9, v8, v15

    const-string v9, "IMAGE_5"

    .line 66
    invoke-static {v9, v4}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v9

    const/4 v15, 0x7

    aput-object v9, v8, v15

    const-string v9, "IMAGE_6"

    .line 67
    invoke-static {v9, v4}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v9

    const/16 v15, 0x8

    aput-object v9, v8, v15

    const-string v9, "IMAGE_7"

    .line 68
    invoke-static {v9, v4}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v9

    const/16 v15, 0x9

    aput-object v9, v8, v15

    const-string v9, "IMAGE_8"

    .line 69
    invoke-static {v9, v4}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v9

    const/16 v15, 0xa

    aput-object v9, v8, v15

    const-string v9, "IMAGE_9"

    .line 70
    invoke-static {v9, v4}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v9

    const/16 v15, 0xb

    aput-object v9, v8, v15

    const-string v9, "IMAGE_10"

    .line 71
    invoke-static {v9, v4}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v9

    const/16 v15, 0xc

    aput-object v9, v8, v15

    const-string v9, "IMAGE_11"

    .line 72
    invoke-static {v9, v4}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v9

    const/16 v15, 0xd

    aput-object v9, v8, v15

    const-string v9, "IMAGE_12"

    .line 73
    invoke-static {v9, v4}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v9

    const/16 v15, 0xe

    aput-object v9, v8, v15

    const-string v9, "IMAGE_13"

    .line 74
    invoke-static {v9, v4}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v9

    const/16 v15, 0xf

    aput-object v9, v8, v15

    const-string v9, "IMAGE_14"

    .line 75
    invoke-static {v9, v4}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v9

    const/16 v15, 0x10

    aput-object v9, v8, v15

    const-string v9, "IMAGE_15"

    .line 76
    invoke-static {v9, v4}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v9

    const/16 v15, 0x11

    aput-object v9, v8, v15

    const-string v9, "IMAGE_16"

    .line 77
    invoke-static {v9, v4}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v9

    const/16 v15, 0x12

    aput-object v9, v8, v15

    const-string v9, "IMAGE_17"

    .line 78
    invoke-static {v9, v4}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v9

    const/16 v15, 0x13

    aput-object v9, v8, v15

    const-string v9, "IMAGE_18"

    .line 79
    invoke-static {v9, v4}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v9

    const/16 v15, 0x14

    aput-object v9, v8, v15

    const-string v9, "IMAGE_19"

    .line 80
    invoke-static {v9, v4}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v9

    const/16 v15, 0x15

    aput-object v9, v8, v15

    const-string v9, "IMAGE_20"

    .line 81
    invoke-static {v9, v4}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v9

    const/16 v15, 0x16

    aput-object v9, v8, v15

    .line 82
    invoke-static {v13, v0}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v9

    const/16 v15, 0x17

    aput-object v9, v8, v15

    .line 59
    invoke-static {v8}, Lkotlin/collections/MapsKt;->mapOf([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v8

    const-string v9, "BRANDED_SHOVELER"

    const-string v15, "3"

    const/4 v14, 0x2

    invoke-direct {v7, v9, v14, v15, v8}, Lcom/amazon/kcp/home/models/CardType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/util/Map;)V

    sput-object v7, Lcom/amazon/kcp/home/models/CardType;->BRANDED_SHOVELER:Lcom/amazon/kcp/home/models/CardType;

    aput-object v7, v6, v14

    new-instance v7, Lcom/amazon/kcp/home/models/CardType;

    .line 84
    const-class v8, Lcom/amazon/kindle/home/model/WebViewZone;

    const-string v9, "WEBVIEW_1"

    invoke-static {v9, v8}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v8

    invoke-static {v8}, Lkotlin/collections/MapsKt;->mapOf(Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v8

    const-string v9, "WEB"

    const-string v14, "4"

    const/4 v15, 0x3

    invoke-direct {v7, v9, v15, v14, v8}, Lcom/amazon/kcp/home/models/CardType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/util/Map;)V

    sput-object v7, Lcom/amazon/kcp/home/models/CardType;->WEB:Lcom/amazon/kcp/home/models/CardType;

    aput-object v7, v6, v15

    new-instance v7, Lcom/amazon/kcp/home/models/CardType;

    const/16 v8, 0x16

    new-array v8, v8, [Lkotlin/Pair;

    .line 86
    const-class v9, Lcom/amazon/kindle/home/model/ColorZone;

    const-string v14, "COLOR_1"

    invoke-static {v14, v9}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v9

    aput-object v9, v8, v12

    .line 87
    const-class v9, Lcom/amazon/kindle/home/model/ThemedImageZone;

    const-string v14, "THEMED_IMAGE_1"

    invoke-static {v14, v9}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v9

    const/4 v14, 0x1

    aput-object v9, v8, v14

    .line 88
    invoke-static {v11, v5}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v9

    const/4 v14, 0x2

    aput-object v9, v8, v14

    const-string v9, "TEXT_2"

    .line 89
    invoke-static {v9, v5}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v9

    const/4 v14, 0x3

    aput-object v9, v8, v14

    const-string v9, "TEXT_3"

    .line 90
    invoke-static {v9, v5}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v9

    const/4 v14, 0x4

    aput-object v9, v8, v14

    const-string v9, "TEXT_4"

    .line 91
    invoke-static {v9, v5}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v9

    const/4 v14, 0x5

    aput-object v9, v8, v14

    const-string v9, "TEXT_5"

    .line 92
    invoke-static {v9, v5}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v9

    const/4 v14, 0x6

    aput-object v9, v8, v14

    const-string v9, "TEXT_6"

    .line 93
    invoke-static {v9, v5}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v9

    const/4 v14, 0x7

    aput-object v9, v8, v14

    const-string v9, "TEXT_7"

    .line 94
    invoke-static {v9, v5}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v9

    const/16 v14, 0x8

    aput-object v9, v8, v14

    const-string v9, "TEXT_8"

    .line 95
    invoke-static {v9, v5}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v9

    const/16 v14, 0x9

    aput-object v9, v8, v14

    const-string v9, "TEXT_9"

    .line 96
    invoke-static {v9, v5}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v9

    const/16 v14, 0xa

    aput-object v9, v8, v14

    const-string v9, "TEXT_10"

    .line 97
    invoke-static {v9, v5}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v9

    const/16 v14, 0xb

    aput-object v9, v8, v14

    const-string v9, "TEXT_11"

    .line 98
    invoke-static {v9, v5}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v9

    const/16 v14, 0xc

    aput-object v9, v8, v14

    const-string v9, "TEXT_12"

    .line 99
    invoke-static {v9, v5}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v9

    const/16 v14, 0xd

    aput-object v9, v8, v14

    const-string v9, "TEXT_13"

    .line 100
    invoke-static {v9, v5}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v9

    const/16 v14, 0xe

    aput-object v9, v8, v14

    const-string v9, "TEXT_14"

    .line 101
    invoke-static {v9, v5}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v9

    const/16 v14, 0xf

    aput-object v9, v8, v14

    const-string v9, "TEXT_15"

    .line 102
    invoke-static {v9, v5}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v9

    const/16 v14, 0x10

    aput-object v9, v8, v14

    const-string v9, "TEXT_16"

    .line 103
    invoke-static {v9, v5}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v9

    const/16 v14, 0x11

    aput-object v9, v8, v14

    const-string v9, "IMAGE_1"

    .line 104
    invoke-static {v9, v4}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v9

    const/16 v14, 0x12

    aput-object v9, v8, v14

    const-string v9, "IMAGE_2"

    .line 105
    invoke-static {v9, v4}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v9

    const/16 v14, 0x13

    aput-object v9, v8, v14

    const-string v9, "IMAGE_3"

    .line 106
    invoke-static {v9, v4}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v9

    const/16 v14, 0x14

    aput-object v9, v8, v14

    .line 107
    invoke-static {v13, v0}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v9

    const/16 v14, 0x15

    aput-object v9, v8, v14

    .line 86
    invoke-static {v8}, Lkotlin/collections/MapsKt;->mapOf([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v8

    const-string v9, "CHARTS"

    const-string v14, "10"

    const/4 v15, 0x4

    invoke-direct {v7, v9, v15, v14, v8}, Lcom/amazon/kcp/home/models/CardType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/util/Map;)V

    sput-object v7, Lcom/amazon/kcp/home/models/CardType;->CHARTS:Lcom/amazon/kcp/home/models/CardType;

    aput-object v7, v6, v15

    new-instance v7, Lcom/amazon/kcp/home/models/CardType;

    const/16 v8, 0x17

    new-array v8, v8, [Lkotlin/Pair;

    .line 110
    const-class v9, Lcom/amazon/kindle/home/model/ColorZone;

    const-string v14, "COLOR_1"

    invoke-static {v14, v9}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v9

    aput-object v9, v8, v12

    .line 111
    const-class v9, Lcom/amazon/kindle/home/model/ThemedImageZone;

    const-string v14, "THEMED_IMAGE_1"

    invoke-static {v14, v9}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v9

    const/4 v14, 0x1

    aput-object v9, v8, v14

    .line 112
    invoke-static {v11, v5}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v9

    const/4 v14, 0x2

    aput-object v9, v8, v14

    const-string v9, "ARTICLE_1"

    .line 113
    invoke-static {v9, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v9

    const/4 v14, 0x3

    aput-object v9, v8, v14

    const-string v9, "ARTICLE_2"

    .line 114
    invoke-static {v9, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v9

    const/4 v14, 0x4

    aput-object v9, v8, v14

    const-string v9, "ARTICLE_3"

    .line 115
    invoke-static {v9, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v9

    const/4 v14, 0x5

    aput-object v9, v8, v14

    const-string v9, "ARTICLE_4"

    .line 116
    invoke-static {v9, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v9

    const/4 v14, 0x6

    aput-object v9, v8, v14

    const-string v9, "ARTICLE_5"

    .line 117
    invoke-static {v9, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v9

    const/4 v14, 0x7

    aput-object v9, v8, v14

    const-string v9, "ARTICLE_6"

    .line 118
    invoke-static {v9, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v9

    const/16 v14, 0x8

    aput-object v9, v8, v14

    const-string v9, "ARTICLE_7"

    .line 119
    invoke-static {v9, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v9

    const/16 v14, 0x9

    aput-object v9, v8, v14

    const-string v9, "ARTICLE_8"

    .line 120
    invoke-static {v9, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v9

    const/16 v14, 0xa

    aput-object v9, v8, v14

    const-string v9, "ARTICLE_9"

    .line 121
    invoke-static {v9, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v9

    const/16 v14, 0xb

    aput-object v9, v8, v14

    const-string v9, "ARTICLE_10"

    .line 122
    invoke-static {v9, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v9

    const/16 v14, 0xc

    aput-object v9, v8, v14

    const-string v9, "ARTICLE_11"

    .line 123
    invoke-static {v9, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v9

    const/16 v14, 0xd

    aput-object v9, v8, v14

    const-string v9, "ARTICLE_12"

    .line 124
    invoke-static {v9, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v9

    const/16 v14, 0xe

    aput-object v9, v8, v14

    const-string v9, "ARTICLE_13"

    .line 125
    invoke-static {v9, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v9

    const/16 v14, 0xf

    aput-object v9, v8, v14

    const-string v9, "ARTICLE_14"

    .line 126
    invoke-static {v9, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v9

    const/16 v14, 0x10

    aput-object v9, v8, v14

    const-string v9, "ARTICLE_15"

    .line 127
    invoke-static {v9, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v9

    const/16 v14, 0x11

    aput-object v9, v8, v14

    const-string v9, "ARTICLE_16"

    .line 128
    invoke-static {v9, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v9

    const/16 v14, 0x12

    aput-object v9, v8, v14

    const-string v9, "ARTICLE_17"

    .line 129
    invoke-static {v9, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v9

    const/16 v14, 0x13

    aput-object v9, v8, v14

    const-string v9, "ARTICLE_18"

    .line 130
    invoke-static {v9, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v9

    const/16 v14, 0x14

    aput-object v9, v8, v14

    const-string v9, "ARTICLE_19"

    .line 131
    invoke-static {v9, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v9

    const/16 v14, 0x15

    aput-object v9, v8, v14

    const-string v9, "ARTICLE_20"

    .line 132
    invoke-static {v9, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    const/16 v9, 0x16

    aput-object v2, v8, v9

    .line 110
    invoke-static {v8}, Lkotlin/collections/MapsKt;->mapOf([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v2

    const-string v8, "ARTICLE_SHOVELER"

    const-string v9, "23"

    const/4 v14, 0x5

    invoke-direct {v7, v8, v14, v9, v2}, Lcom/amazon/kcp/home/models/CardType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/util/Map;)V

    sput-object v7, Lcom/amazon/kcp/home/models/CardType;->ARTICLE_SHOVELER:Lcom/amazon/kcp/home/models/CardType;

    aput-object v7, v6, v14

    new-instance v2, Lcom/amazon/kcp/home/models/CardType;

    const/4 v7, 0x7

    new-array v8, v7, [Lkotlin/Pair;

    .line 134
    invoke-static {v10, v5}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v7

    aput-object v7, v8, v12

    .line 135
    invoke-static {v11, v5}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v7

    const/4 v9, 0x1

    aput-object v7, v8, v9

    const-string v7, "TEXT_2"

    .line 136
    invoke-static {v7, v5}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v7

    const/4 v9, 0x2

    aput-object v7, v8, v9

    const-string v7, "TEXT_3"

    .line 137
    invoke-static {v7, v5}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v7

    const/4 v9, 0x3

    aput-object v7, v8, v9

    const-string v7, "IMAGE_1"

    .line 138
    invoke-static {v7, v4}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v4

    const/4 v7, 0x4

    aput-object v4, v8, v7

    .line 139
    const-class v4, Lcom/amazon/kindle/home/model/TwoStateButtonZone;

    const-string v7, "TWO_STATE_BUTTON_1"

    invoke-static {v7, v4}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v4

    const/4 v7, 0x5

    aput-object v4, v8, v7

    .line 140
    const-class v4, Lcom/amazon/kindle/home/model/TwoStateButtonZone;

    const-string v7, "TWO_STATE_BUTTON_2"

    invoke-static {v7, v4}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v4

    const/4 v7, 0x6

    aput-object v4, v8, v7

    .line 134
    invoke-static {v8}, Lkotlin/collections/MapsKt;->mapOf([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v4

    const-string v8, "AUTHOR_FOLLOW"

    const-string v9, "26"

    invoke-direct {v2, v8, v7, v9, v4}, Lcom/amazon/kcp/home/models/CardType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/util/Map;)V

    sput-object v2, Lcom/amazon/kcp/home/models/CardType;->AUTHOR_FOLLOW:Lcom/amazon/kcp/home/models/CardType;

    aput-object v2, v6, v7

    new-instance v2, Lcom/amazon/kcp/home/models/CardType;

    const/4 v4, 0x3

    new-array v7, v4, [Lkotlin/Pair;

    .line 144
    const-class v4, Lcom/amazon/kindle/home/model/ThemedImageZone;

    const-string v8, "THEMED_IMAGE_1"

    invoke-static {v8, v4}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v4

    aput-object v4, v7, v12

    .line 145
    invoke-static {v10, v5}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v4

    const/4 v8, 0x1

    aput-object v4, v7, v8

    .line 146
    invoke-static {v11, v5}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v4

    const/4 v8, 0x2

    aput-object v4, v7, v8

    .line 143
    invoke-static {v7}, Lkotlin/collections/MapsKt;->mapOf([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v4

    const-string v7, "FREE_BOOKS"

    const-string v8, "37"

    const/4 v9, 0x7

    invoke-direct {v2, v7, v9, v8, v4}, Lcom/amazon/kcp/home/models/CardType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/util/Map;)V

    sput-object v2, Lcom/amazon/kcp/home/models/CardType;->FREE_BOOKS:Lcom/amazon/kcp/home/models/CardType;

    aput-object v2, v6, v9

    new-instance v2, Lcom/amazon/kcp/home/models/CardType;

    .line 150
    invoke-static {v11, v5}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v4

    .line 149
    invoke-static {v4}, Lkotlin/collections/MapsKt;->mapOf(Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v4

    const-string v7, "ANNOUNCEMENT"

    const-string v8, "38"

    const/16 v9, 0x8

    invoke-direct {v2, v7, v9, v8, v4}, Lcom/amazon/kcp/home/models/CardType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/util/Map;)V

    sput-object v2, Lcom/amazon/kcp/home/models/CardType;->ANNOUNCEMENT:Lcom/amazon/kcp/home/models/CardType;

    aput-object v2, v6, v9

    new-instance v2, Lcom/amazon/kcp/home/models/CardType;

    const/4 v4, 0x4

    new-array v7, v4, [Lkotlin/Pair;

    .line 154
    const-class v4, Lcom/amazon/kindle/home/model/ThemedImageZone;

    const-string v8, "THEMED_IMAGE_1"

    invoke-static {v8, v4}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v4

    aput-object v4, v7, v12

    .line 155
    invoke-static {v11, v5}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v4

    const/4 v8, 0x1

    aput-object v4, v7, v8

    const-string v4, "TEXT_2"

    .line 156
    invoke-static {v4, v5}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v4

    const/4 v8, 0x2

    aput-object v4, v7, v8

    .line 157
    invoke-static {v13, v0}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v4

    const/4 v8, 0x3

    aput-object v4, v7, v8

    .line 153
    invoke-static {v7}, Lkotlin/collections/MapsKt;->mapOf([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v4

    const-string v7, "DONATION"

    const-string v8, "39"

    const/16 v9, 0x9

    invoke-direct {v2, v7, v9, v8, v4}, Lcom/amazon/kcp/home/models/CardType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/util/Map;)V

    sput-object v2, Lcom/amazon/kcp/home/models/CardType;->DONATION:Lcom/amazon/kcp/home/models/CardType;

    aput-object v2, v6, v9

    new-instance v2, Lcom/amazon/kcp/home/models/CardType;

    const/4 v4, 0x6

    new-array v7, v4, [Lkotlin/Pair;

    .line 160
    invoke-static {v10, v5}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v4

    aput-object v4, v7, v12

    .line 161
    const-class v4, Lcom/amazon/kindle/home/model/ThemedImageZone;

    const-string v8, "THEMED_IMAGE_1"

    invoke-static {v8, v4}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v4

    const/4 v8, 0x1

    aput-object v4, v7, v8

    .line 162
    invoke-static {v11, v5}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v4

    const/4 v8, 0x2

    aput-object v4, v7, v8

    const-string v4, "TEXT_2"

    .line 163
    invoke-static {v4, v5}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v4

    const/4 v8, 0x3

    aput-object v4, v7, v8

    const-string v4, "TEXT_3"

    .line 164
    invoke-static {v4, v5}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v4

    const/4 v8, 0x4

    aput-object v4, v7, v8

    .line 165
    invoke-static {v13, v0}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v4

    const/4 v8, 0x5

    aput-object v4, v7, v8

    .line 160
    invoke-static {v7}, Lkotlin/collections/MapsKt;->mapOf([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v4

    const-string v7, "FALKOR_DISCOVER"

    const-string v8, "40"

    const/16 v9, 0xa

    invoke-direct {v2, v7, v9, v8, v4}, Lcom/amazon/kcp/home/models/CardType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/util/Map;)V

    sput-object v2, Lcom/amazon/kcp/home/models/CardType;->FALKOR_DISCOVER:Lcom/amazon/kcp/home/models/CardType;

    aput-object v2, v6, v9

    new-instance v2, Lcom/amazon/kcp/home/models/CardType;

    const/4 v4, 0x7

    new-array v7, v4, [Lkotlin/Pair;

    .line 169
    const-class v4, Lcom/amazon/kindle/home/model/ColorZone;

    const-string v8, "COLOR_1"

    invoke-static {v8, v4}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v4

    aput-object v4, v7, v12

    .line 170
    const-class v4, Lcom/amazon/kindle/home/model/ThemedImageZone;

    const-string v8, "THEMED_IMAGE_1"

    invoke-static {v8, v4}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v4

    const/4 v8, 0x1

    aput-object v4, v7, v8

    .line 171
    invoke-static {v11, v5}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v4

    const/4 v8, 0x2

    aput-object v4, v7, v8

    .line 172
    const-class v4, Lcom/amazon/kindle/home/model/ThemedImageZone;

    const-string v8, "THEMED_IMAGE_2"

    invoke-static {v8, v4}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v4

    const/4 v8, 0x3

    aput-object v4, v7, v8

    const-string v4, "TEXT_2"

    .line 173
    invoke-static {v4, v5}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v4

    const/4 v8, 0x4

    aput-object v4, v7, v8

    const-string v4, "TEXT_3"

    .line 174
    invoke-static {v4, v5}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v4

    const/4 v8, 0x5

    aput-object v4, v7, v8

    .line 175
    invoke-static {v13, v0}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v4

    const/4 v8, 0x6

    aput-object v4, v7, v8

    .line 168
    invoke-static {v7}, Lkotlin/collections/MapsKt;->mapOf([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v4

    const-string v7, "KU_UPSELL"

    const-string v8, "41"

    const/16 v9, 0xb

    invoke-direct {v2, v7, v9, v8, v4}, Lcom/amazon/kcp/home/models/CardType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/util/Map;)V

    sput-object v2, Lcom/amazon/kcp/home/models/CardType;->KU_UPSELL:Lcom/amazon/kcp/home/models/CardType;

    aput-object v2, v6, v9

    new-instance v2, Lcom/amazon/kcp/home/models/CardType;

    const/16 v4, 0x16

    new-array v4, v4, [Lkotlin/Pair;

    .line 179
    invoke-static {v10, v5}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v7

    aput-object v7, v4, v12

    .line 180
    invoke-static {v11, v5}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v7

    const/4 v8, 0x1

    aput-object v7, v4, v8

    const-string v7, "WAYS_TO_READ_BLOCK_1"

    .line 181
    invoke-static {v7, v3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v7

    const/4 v8, 0x2

    aput-object v7, v4, v8

    const-string v7, "WAYS_TO_READ_BLOCK_2"

    .line 182
    invoke-static {v7, v3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v7

    const/4 v8, 0x3

    aput-object v7, v4, v8

    const-string v7, "WAYS_TO_READ_BLOCK_3"

    .line 183
    invoke-static {v7, v3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v7

    const/4 v8, 0x4

    aput-object v7, v4, v8

    const-string v7, "WAYS_TO_READ_BLOCK_4"

    .line 184
    invoke-static {v7, v3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v7

    const/4 v8, 0x5

    aput-object v7, v4, v8

    const-string v7, "WAYS_TO_READ_BLOCK_5"

    .line 185
    invoke-static {v7, v3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v7

    const/4 v8, 0x6

    aput-object v7, v4, v8

    const-string v7, "WAYS_TO_READ_BLOCK_6"

    .line 186
    invoke-static {v7, v3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v7

    const/4 v8, 0x7

    aput-object v7, v4, v8

    const-string v7, "WAYS_TO_READ_BLOCK_7"

    .line 187
    invoke-static {v7, v3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v7

    const/16 v8, 0x8

    aput-object v7, v4, v8

    const-string v7, "WAYS_TO_READ_BLOCK_8"

    .line 188
    invoke-static {v7, v3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v7

    const/16 v8, 0x9

    aput-object v7, v4, v8

    const-string v7, "WAYS_TO_READ_BLOCK_9"

    .line 189
    invoke-static {v7, v3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v7

    const/16 v8, 0xa

    aput-object v7, v4, v8

    const-string v7, "WAYS_TO_READ_BLOCK_10"

    .line 190
    invoke-static {v7, v3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v7

    const/16 v8, 0xb

    aput-object v7, v4, v8

    const-string v7, "WAYS_TO_READ_BLOCK_11"

    .line 191
    invoke-static {v7, v3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v7

    const/16 v8, 0xc

    aput-object v7, v4, v8

    const-string v7, "WAYS_TO_READ_BLOCK_12"

    .line 192
    invoke-static {v7, v3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v7

    const/16 v8, 0xd

    aput-object v7, v4, v8

    const-string v7, "WAYS_TO_READ_BLOCK_13"

    .line 193
    invoke-static {v7, v3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v7

    const/16 v8, 0xe

    aput-object v7, v4, v8

    const-string v7, "WAYS_TO_READ_BLOCK_14"

    .line 194
    invoke-static {v7, v3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v7

    const/16 v8, 0xf

    aput-object v7, v4, v8

    const-string v7, "WAYS_TO_READ_BLOCK_15"

    .line 195
    invoke-static {v7, v3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v7

    const/16 v8, 0x10

    aput-object v7, v4, v8

    const-string v7, "WAYS_TO_READ_BLOCK_16"

    .line 196
    invoke-static {v7, v3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v7

    const/16 v8, 0x11

    aput-object v7, v4, v8

    const-string v7, "WAYS_TO_READ_BLOCK_17"

    .line 197
    invoke-static {v7, v3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v7

    const/16 v8, 0x12

    aput-object v7, v4, v8

    const-string v7, "WAYS_TO_READ_BLOCK_18"

    .line 198
    invoke-static {v7, v3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v7

    const/16 v8, 0x13

    aput-object v7, v4, v8

    const-string v7, "WAYS_TO_READ_BLOCK_19"

    .line 199
    invoke-static {v7, v3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v7

    const/16 v8, 0x14

    aput-object v7, v4, v8

    const-string v7, "WAYS_TO_READ_BLOCK_20"

    .line 200
    invoke-static {v7, v3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v7

    const/16 v8, 0x15

    aput-object v7, v4, v8

    .line 178
    invoke-static {v4}, Lkotlin/collections/MapsKt;->mapOf([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v4

    const-string v7, "WAYS_TO_READ"

    const/16 v8, 0xc

    const-string v9, "46"

    invoke-direct {v2, v7, v8, v9, v4}, Lcom/amazon/kcp/home/models/CardType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/util/Map;)V

    sput-object v2, Lcom/amazon/kcp/home/models/CardType;->WAYS_TO_READ:Lcom/amazon/kcp/home/models/CardType;

    const/16 v4, 0xc

    aput-object v2, v6, v4

    new-instance v2, Lcom/amazon/kcp/home/models/CardType;

    const/16 v4, 0x16

    new-array v4, v4, [Lkotlin/Pair;

    .line 204
    invoke-static {v10, v5}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v7

    aput-object v7, v4, v12

    .line 205
    invoke-static {v11, v5}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v7

    const/4 v8, 0x1

    aput-object v7, v4, v8

    const-string v7, "WAYS_TO_READ_BLOCK_1"

    .line 206
    invoke-static {v7, v3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v7

    const/4 v8, 0x2

    aput-object v7, v4, v8

    const-string v7, "WAYS_TO_READ_BLOCK_2"

    .line 207
    invoke-static {v7, v3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v7

    const/4 v8, 0x3

    aput-object v7, v4, v8

    const-string v7, "WAYS_TO_READ_BLOCK_3"

    .line 208
    invoke-static {v7, v3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v7

    const/4 v8, 0x4

    aput-object v7, v4, v8

    const-string v7, "WAYS_TO_READ_BLOCK_4"

    .line 209
    invoke-static {v7, v3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v7

    const/4 v8, 0x5

    aput-object v7, v4, v8

    const-string v7, "WAYS_TO_READ_BLOCK_5"

    .line 210
    invoke-static {v7, v3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v7

    const/4 v8, 0x6

    aput-object v7, v4, v8

    const-string v7, "WAYS_TO_READ_BLOCK_6"

    .line 211
    invoke-static {v7, v3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v7

    const/4 v8, 0x7

    aput-object v7, v4, v8

    const-string v7, "WAYS_TO_READ_BLOCK_7"

    .line 212
    invoke-static {v7, v3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v7

    const/16 v8, 0x8

    aput-object v7, v4, v8

    const-string v7, "WAYS_TO_READ_BLOCK_8"

    .line 213
    invoke-static {v7, v3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v7

    const/16 v8, 0x9

    aput-object v7, v4, v8

    const-string v7, "WAYS_TO_READ_BLOCK_9"

    .line 214
    invoke-static {v7, v3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v7

    const/16 v8, 0xa

    aput-object v7, v4, v8

    const-string v7, "WAYS_TO_READ_BLOCK_10"

    .line 215
    invoke-static {v7, v3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v7

    const/16 v8, 0xb

    aput-object v7, v4, v8

    const-string v7, "WAYS_TO_READ_BLOCK_11"

    .line 216
    invoke-static {v7, v3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v7

    const/16 v8, 0xc

    aput-object v7, v4, v8

    const-string v7, "WAYS_TO_READ_BLOCK_12"

    .line 217
    invoke-static {v7, v3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v7

    const/16 v8, 0xd

    aput-object v7, v4, v8

    const-string v7, "WAYS_TO_READ_BLOCK_13"

    .line 218
    invoke-static {v7, v3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v7

    const/16 v8, 0xe

    aput-object v7, v4, v8

    const-string v7, "WAYS_TO_READ_BLOCK_14"

    .line 219
    invoke-static {v7, v3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v7

    const/16 v8, 0xf

    aput-object v7, v4, v8

    const-string v7, "WAYS_TO_READ_BLOCK_15"

    .line 220
    invoke-static {v7, v3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v7

    const/16 v8, 0x10

    aput-object v7, v4, v8

    const-string v7, "WAYS_TO_READ_BLOCK_16"

    .line 221
    invoke-static {v7, v3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v7

    const/16 v8, 0x11

    aput-object v7, v4, v8

    const-string v7, "WAYS_TO_READ_BLOCK_17"

    .line 222
    invoke-static {v7, v3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v7

    const/16 v8, 0x12

    aput-object v7, v4, v8

    const-string v7, "WAYS_TO_READ_BLOCK_18"

    .line 223
    invoke-static {v7, v3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v7

    const/16 v8, 0x13

    aput-object v7, v4, v8

    const-string v7, "WAYS_TO_READ_BLOCK_20"

    .line 224
    invoke-static {v7, v3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v3

    const/16 v7, 0x14

    aput-object v3, v4, v7

    .line 225
    invoke-static {v13, v0}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v3

    const/16 v7, 0x15

    aput-object v3, v4, v7

    .line 203
    invoke-static {v4}, Lkotlin/collections/MapsKt;->mapOf([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v3

    const-string v4, "TIPS_AND_TRICKS"

    const/16 v7, 0xd

    const-string v8, "47"

    invoke-direct {v2, v4, v7, v8, v3}, Lcom/amazon/kcp/home/models/CardType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/util/Map;)V

    sput-object v2, Lcom/amazon/kcp/home/models/CardType;->TIPS_AND_TRICKS:Lcom/amazon/kcp/home/models/CardType;

    const/16 v3, 0xd

    aput-object v2, v6, v3

    new-instance v2, Lcom/amazon/kcp/home/models/CardType;

    const/4 v3, 0x4

    new-array v4, v3, [Lkotlin/Pair;

    .line 229
    invoke-static {v10, v5}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v3

    aput-object v3, v4, v12

    .line 230
    invoke-static {v11, v5}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v3

    const/4 v7, 0x1

    aput-object v3, v4, v7

    .line 231
    const-class v3, Lcom/amazon/kindle/home/model/BookEntityListZone;

    const-string v7, "BOOK_ENTITY_LIST"

    invoke-static {v7, v3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v3

    const/4 v7, 0x2

    aput-object v3, v4, v7

    .line 232
    invoke-static {v13, v0}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v3

    const/4 v7, 0x3

    aput-object v3, v4, v7

    .line 228
    invoke-static {v4}, Lkotlin/collections/MapsKt;->mapOf([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v3

    const-string v4, "BOOK_ENTITY_SHOVELER"

    const/16 v7, 0xe

    const-string v8, "50"

    invoke-direct {v2, v4, v7, v8, v3}, Lcom/amazon/kcp/home/models/CardType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/util/Map;)V

    sput-object v2, Lcom/amazon/kcp/home/models/CardType;->BOOK_ENTITY_SHOVELER:Lcom/amazon/kcp/home/models/CardType;

    const/16 v3, 0xe

    aput-object v2, v6, v3

    new-instance v2, Lcom/amazon/kcp/home/models/CardType;

    const/4 v3, 0x4

    new-array v4, v3, [Lkotlin/Pair;

    .line 236
    invoke-static {v10, v5}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v3

    aput-object v3, v4, v12

    .line 237
    invoke-static {v11, v5}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v3

    const/4 v7, 0x1

    aput-object v3, v4, v7

    .line 238
    const-class v3, Lcom/amazon/kindle/home/model/ThemedImageZone;

    const-string v7, "THEMED_IMAGE_1"

    invoke-static {v7, v3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v3

    const/4 v7, 0x2

    aput-object v3, v4, v7

    .line 239
    invoke-static {v13, v0}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v3

    const/4 v7, 0x3

    aput-object v3, v4, v7

    .line 235
    invoke-static {v4}, Lkotlin/collections/MapsKt;->mapOf([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v3

    const-string v4, "HERO_CARD"

    const/16 v7, 0xf

    const-string v8, "51"

    invoke-direct {v2, v4, v7, v8, v3}, Lcom/amazon/kcp/home/models/CardType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/util/Map;)V

    sput-object v2, Lcom/amazon/kcp/home/models/CardType;->HERO_CARD:Lcom/amazon/kcp/home/models/CardType;

    const/16 v3, 0xf

    aput-object v2, v6, v3

    new-instance v2, Lcom/amazon/kcp/home/models/CardType;

    const/16 v3, 0x19

    new-array v3, v3, [Lkotlin/Pair;

    .line 243
    invoke-static {v10, v5}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v4

    aput-object v4, v3, v12

    .line 244
    invoke-static {v11, v5}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v4

    const/4 v7, 0x1

    aput-object v4, v3, v7

    const-string v4, "TEXT_2"

    .line 245
    invoke-static {v4, v5}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v4

    const/4 v5, 0x2

    aput-object v4, v3, v5

    .line 246
    const-class v4, Lcom/amazon/kindle/home/model/ThemedImageZone;

    const-string v5, "THEMED_IMAGE_1"

    invoke-static {v5, v4}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v4

    const/4 v5, 0x3

    aput-object v4, v3, v5

    const-string v4, "BLURB_IMAGE_1"

    .line 247
    invoke-static {v4, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v4

    const/4 v5, 0x4

    aput-object v4, v3, v5

    const-string v4, "BLURB_IMAGE_2"

    .line 248
    invoke-static {v4, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v4

    const/4 v5, 0x5

    aput-object v4, v3, v5

    const-string v4, "BLURB_IMAGE_3"

    .line 249
    invoke-static {v4, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v4

    const/4 v5, 0x6

    aput-object v4, v3, v5

    const-string v4, "BLURB_IMAGE_4"

    .line 250
    invoke-static {v4, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v4

    const/4 v5, 0x7

    aput-object v4, v3, v5

    const-string v4, "BLURB_IMAGE_5"

    .line 251
    invoke-static {v4, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v4

    const/16 v5, 0x8

    aput-object v4, v3, v5

    const-string v4, "BLURB_IMAGE_6"

    .line 252
    invoke-static {v4, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v4

    const/16 v5, 0x9

    aput-object v4, v3, v5

    const-string v4, "BLURB_IMAGE_7"

    .line 253
    invoke-static {v4, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v4

    const/16 v5, 0xa

    aput-object v4, v3, v5

    const-string v4, "BLURB_IMAGE_8"

    .line 254
    invoke-static {v4, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v4

    const/16 v5, 0xb

    aput-object v4, v3, v5

    const-string v4, "BLURB_IMAGE_9"

    .line 255
    invoke-static {v4, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v4

    const/16 v5, 0xc

    aput-object v4, v3, v5

    const-string v4, "BLURB_IMAGE_10"

    .line 256
    invoke-static {v4, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v4

    const/16 v5, 0xd

    aput-object v4, v3, v5

    const-string v4, "BLURB_IMAGE_11"

    .line 257
    invoke-static {v4, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v4

    const/16 v5, 0xe

    aput-object v4, v3, v5

    const-string v4, "BLURB_IMAGE_12"

    .line 258
    invoke-static {v4, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v4

    const/16 v5, 0xf

    aput-object v4, v3, v5

    const-string v4, "BLURB_IMAGE_13"

    .line 259
    invoke-static {v4, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v4

    const/16 v5, 0x10

    aput-object v4, v3, v5

    const-string v4, "BLURB_IMAGE_14"

    .line 260
    invoke-static {v4, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v4

    const/16 v5, 0x11

    aput-object v4, v3, v5

    const-string v4, "BLURB_IMAGE_15"

    .line 261
    invoke-static {v4, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v4

    const/16 v5, 0x12

    aput-object v4, v3, v5

    const-string v4, "BLURB_IMAGE_16"

    .line 262
    invoke-static {v4, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v4

    const/16 v5, 0x13

    aput-object v4, v3, v5

    const-string v4, "BLURB_IMAGE_17"

    .line 263
    invoke-static {v4, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v4

    const/16 v5, 0x14

    aput-object v4, v3, v5

    const-string v4, "BLURB_IMAGE_18"

    .line 264
    invoke-static {v4, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v4

    const/16 v5, 0x15

    aput-object v4, v3, v5

    const-string v4, "BLURB_IMAGE_19"

    .line 265
    invoke-static {v4, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v4

    const/16 v5, 0x16

    aput-object v4, v3, v5

    const-string v4, "BLURB_IMAGE_20"

    .line 266
    invoke-static {v4, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/16 v4, 0x17

    aput-object v1, v3, v4

    .line 267
    invoke-static {v13, v0}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    const/16 v1, 0x18

    aput-object v0, v3, v1

    .line 242
    invoke-static {v3}, Lkotlin/collections/MapsKt;->mapOf([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v0

    const-string v1, "BOOKS_BLURB_CARD"

    const-string v3, "45"

    const/16 v4, 0x10

    invoke-direct {v2, v1, v4, v3, v0}, Lcom/amazon/kcp/home/models/CardType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/util/Map;)V

    sput-object v2, Lcom/amazon/kcp/home/models/CardType;->BOOKS_BLURB_CARD:Lcom/amazon/kcp/home/models/CardType;

    aput-object v2, v6, v4

    sput-object v6, Lcom/amazon/kcp/home/models/CardType;->$VALUES:[Lcom/amazon/kcp/home/models/CardType;

    new-instance v0, Lcom/amazon/kcp/home/models/CardType$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/amazon/kcp/home/models/CardType$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/amazon/kcp/home/models/CardType;->Companion:Lcom/amazon/kcp/home/models/CardType$Companion;

    .line 271
    invoke-static {}, Lcom/amazon/kcp/home/models/CardType;->values()[Lcom/amazon/kcp/home/models/CardType;

    move-result-object v0

    .line 278
    array-length v1, v0

    invoke-static {v1}, Lkotlin/collections/MapsKt;->mapCapacity(I)I

    move-result v1

    invoke-static {v1, v4}, Lkotlin/ranges/RangesKt;->coerceAtLeast(II)I

    move-result v1

    .line 279
    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2, v1}, Ljava/util/LinkedHashMap;-><init>(I)V

    .line 280
    array-length v1, v0

    :goto_0
    if-ge v12, v1, :cond_0

    aget-object v3, v0, v12

    .line 271
    iget-object v4, v3, Lcom/amazon/kcp/home/models/CardType;->templateId:Ljava/lang/String;

    invoke-interface {v2, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    .line 279
    :cond_0
    sput-object v2, Lcom/amazon/kcp/home/models/CardType;->ID_MAP:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Ljava/lang/reflect/Type;",
            ">;)V"
        }
    .end annotation

    .line 21
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/amazon/kcp/home/models/CardType;->templateId:Ljava/lang/String;

    iput-object p4, p0, Lcom/amazon/kcp/home/models/CardType;->zoneMap:Ljava/util/Map;

    return-void
.end method

.method public static final synthetic access$getID_MAP$cp()Ljava/util/Map;
    .locals 1

    .line 21
    sget-object v0, Lcom/amazon/kcp/home/models/CardType;->ID_MAP:Ljava/util/Map;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/kcp/home/models/CardType;
    .locals 1

    const-class v0, Lcom/amazon/kcp/home/models/CardType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/kcp/home/models/CardType;

    return-object p0
.end method

.method public static values()[Lcom/amazon/kcp/home/models/CardType;
    .locals 1

    sget-object v0, Lcom/amazon/kcp/home/models/CardType;->$VALUES:[Lcom/amazon/kcp/home/models/CardType;

    invoke-virtual {v0}, [Lcom/amazon/kcp/home/models/CardType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/kcp/home/models/CardType;

    return-object v0
.end method


# virtual methods
.method public final getTemplateId()Ljava/lang/String;
    .locals 1

    .line 21
    iget-object v0, p0, Lcom/amazon/kcp/home/models/CardType;->templateId:Ljava/lang/String;

    return-object v0
.end method

.method public final getZoneMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Type;",
            ">;"
        }
    .end annotation

    .line 21
    iget-object v0, p0, Lcom/amazon/kcp/home/models/CardType;->zoneMap:Ljava/util/Map;

    return-object v0
.end method
