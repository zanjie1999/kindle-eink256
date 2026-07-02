.class public final Lcom/amazon/kcp/search/wayfinder/SearchFilterSortItemConstants;
.super Ljava/lang/Object;
.source "SearchFilterSortItemConstants.kt"


# static fields
.field private static final COMMON_READING_PROGRAMS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final INSTANCE:Lcom/amazon/kcp/search/wayfinder/SearchFilterSortItemConstants;

.field private static final MARKETPLACE_TO_FORMAT:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcom/amazon/kcp/application/Marketplace;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final MARKETPLACE_TO_GENRE:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcom/amazon/kcp/application/Marketplace;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final MARKETPLACE_TO_READING_PROGRAM:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcom/amazon/kcp/application/Marketplace;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final falkorEnabled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 29

    .line 6
    new-instance v0, Lcom/amazon/kcp/search/wayfinder/SearchFilterSortItemConstants;

    invoke-direct {v0}, Lcom/amazon/kcp/search/wayfinder/SearchFilterSortItemConstants;-><init>()V

    sput-object v0, Lcom/amazon/kcp/search/wayfinder/SearchFilterSortItemConstants;->INSTANCE:Lcom/amazon/kcp/search/wayfinder/SearchFilterSortItemConstants;

    const-string v1, "PrimeReading"

    const-string v2, "KindleUnlimited"

    .line 67
    filled-new-array {v2, v1}, [Ljava/lang/String;

    move-result-object v3

    .line 65
    invoke-static {v3}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    sput-object v3, Lcom/amazon/kcp/search/wayfinder/SearchFilterSortItemConstants;->COMMON_READING_PROGRAMS:Ljava/util/List;

    const/16 v3, 0xd

    new-array v4, v3, [Lkotlin/Pair;

    .line 72
    sget-object v5, Lcom/amazon/kcp/application/Marketplace;->US:Lcom/amazon/kcp/application/Marketplace;

    const-string v6, "ComixologyUnlimied"

    filled-new-array {v2, v1, v6}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-static {v5, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/4 v5, 0x0

    aput-object v1, v4, v5

    .line 73
    sget-object v1, Lcom/amazon/kcp/application/Marketplace;->CA:Lcom/amazon/kcp/application/Marketplace;

    sget-object v6, Lcom/amazon/kcp/search/wayfinder/SearchFilterSortItemConstants;->COMMON_READING_PROGRAMS:Ljava/util/List;

    invoke-static {v1, v6}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/4 v6, 0x1

    aput-object v1, v4, v6

    .line 74
    sget-object v1, Lcom/amazon/kcp/application/Marketplace;->UK:Lcom/amazon/kcp/application/Marketplace;

    sget-object v7, Lcom/amazon/kcp/search/wayfinder/SearchFilterSortItemConstants;->COMMON_READING_PROGRAMS:Ljava/util/List;

    invoke-static {v1, v7}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/4 v7, 0x2

    aput-object v1, v4, v7

    .line 75
    sget-object v1, Lcom/amazon/kcp/application/Marketplace;->IN:Lcom/amazon/kcp/application/Marketplace;

    sget-object v8, Lcom/amazon/kcp/search/wayfinder/SearchFilterSortItemConstants;->COMMON_READING_PROGRAMS:Ljava/util/List;

    invoke-static {v1, v8}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/4 v8, 0x3

    aput-object v1, v4, v8

    .line 76
    sget-object v1, Lcom/amazon/kcp/application/Marketplace;->AU:Lcom/amazon/kcp/application/Marketplace;

    sget-object v9, Lcom/amazon/kcp/search/wayfinder/SearchFilterSortItemConstants;->COMMON_READING_PROGRAMS:Ljava/util/List;

    invoke-static {v1, v9}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/4 v9, 0x4

    aput-object v1, v4, v9

    .line 77
    sget-object v1, Lcom/amazon/kcp/application/Marketplace;->MX:Lcom/amazon/kcp/application/Marketplace;

    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v10

    invoke-static {v1, v10}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/4 v10, 0x5

    aput-object v1, v4, v10

    .line 78
    sget-object v1, Lcom/amazon/kcp/application/Marketplace;->ES:Lcom/amazon/kcp/application/Marketplace;

    sget-object v11, Lcom/amazon/kcp/search/wayfinder/SearchFilterSortItemConstants;->COMMON_READING_PROGRAMS:Ljava/util/List;

    invoke-static {v1, v11}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/4 v11, 0x6

    aput-object v1, v4, v11

    .line 79
    sget-object v1, Lcom/amazon/kcp/application/Marketplace;->BR:Lcom/amazon/kcp/application/Marketplace;

    sget-object v12, Lcom/amazon/kcp/search/wayfinder/SearchFilterSortItemConstants;->COMMON_READING_PROGRAMS:Ljava/util/List;

    invoke-static {v1, v12}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/4 v12, 0x7

    aput-object v1, v4, v12

    .line 80
    sget-object v1, Lcom/amazon/kcp/application/Marketplace;->DE:Lcom/amazon/kcp/application/Marketplace;

    sget-object v13, Lcom/amazon/kcp/search/wayfinder/SearchFilterSortItemConstants;->COMMON_READING_PROGRAMS:Ljava/util/List;

    invoke-static {v1, v13}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/16 v13, 0x8

    aput-object v1, v4, v13

    .line 81
    sget-object v1, Lcom/amazon/kcp/application/Marketplace;->FR:Lcom/amazon/kcp/application/Marketplace;

    sget-object v14, Lcom/amazon/kcp/search/wayfinder/SearchFilterSortItemConstants;->COMMON_READING_PROGRAMS:Ljava/util/List;

    invoke-static {v1, v14}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/16 v14, 0x9

    aput-object v1, v4, v14

    .line 82
    sget-object v1, Lcom/amazon/kcp/application/Marketplace;->IT:Lcom/amazon/kcp/application/Marketplace;

    sget-object v15, Lcom/amazon/kcp/search/wayfinder/SearchFilterSortItemConstants;->COMMON_READING_PROGRAMS:Ljava/util/List;

    invoke-static {v1, v15}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/16 v15, 0xa

    aput-object v1, v4, v15

    .line 83
    sget-object v1, Lcom/amazon/kcp/application/Marketplace;->JP:Lcom/amazon/kcp/application/Marketplace;

    sget-object v15, Lcom/amazon/kcp/search/wayfinder/SearchFilterSortItemConstants;->COMMON_READING_PROGRAMS:Ljava/util/List;

    invoke-static {v1, v15}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/16 v15, 0xb

    aput-object v1, v4, v15

    .line 84
    sget-object v1, Lcom/amazon/kcp/application/Marketplace;->CN:Lcom/amazon/kcp/application/Marketplace;

    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-static {v1, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/16 v2, 0xc

    aput-object v1, v4, v2

    .line 71
    invoke-static {v4}, Lkotlin/collections/MapsKt;->hashMapOf([Lkotlin/Pair;)Ljava/util/HashMap;

    move-result-object v1

    sput-object v1, Lcom/amazon/kcp/search/wayfinder/SearchFilterSortItemConstants;->MARKETPLACE_TO_READING_PROGRAM:Ljava/util/HashMap;

    .line 89
    invoke-static {}, Lcom/amazon/kcp/util/FalkorUtils;->isFalkorEnabled()Z

    move-result v1

    sput-boolean v1, Lcom/amazon/kcp/search/wayfinder/SearchFilterSortItemConstants;->falkorEnabled:Z

    new-array v1, v3, [Lkotlin/Pair;

    .line 98
    sget-object v4, Lcom/amazon/kcp/application/Marketplace;->US:Lcom/amazon/kcp/application/Marketplace;

    invoke-direct {v0}, Lcom/amazon/kcp/search/wayfinder/SearchFilterSortItemConstants;->formatOptionsForUS()Ljava/util/List;

    move-result-object v0

    invoke-static {v4, v0}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    aput-object v0, v1, v5

    .line 99
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->CA:Lcom/amazon/kcp/application/Marketplace;

    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v4

    invoke-static {v0, v4}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    aput-object v0, v1, v6

    .line 100
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->UK:Lcom/amazon/kcp/application/Marketplace;

    const-string v4, "Audible"

    const-string v6, "Newsstand"

    filled-new-array {v6, v4}, [Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-static {v0, v5}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    aput-object v0, v1, v7

    .line 101
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->IN:Lcom/amazon/kcp/application/Marketplace;

    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v5

    invoke-static {v0, v5}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    aput-object v0, v1, v8

    .line 102
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->AU:Lcom/amazon/kcp/application/Marketplace;

    invoke-static {v4}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-static {v0, v5}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    aput-object v0, v1, v9

    .line 103
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->MX:Lcom/amazon/kcp/application/Marketplace;

    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v5

    invoke-static {v0, v5}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    aput-object v0, v1, v10

    .line 104
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->ES:Lcom/amazon/kcp/application/Marketplace;

    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v5

    invoke-static {v0, v5}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    aput-object v0, v1, v11

    .line 105
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->BR:Lcom/amazon/kcp/application/Marketplace;

    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v5

    invoke-static {v0, v5}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    aput-object v0, v1, v12

    .line 106
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->DE:Lcom/amazon/kcp/application/Marketplace;

    filled-new-array {v6, v4}, [Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-static {v0, v4}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    aput-object v0, v1, v13

    .line 107
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->FR:Lcom/amazon/kcp/application/Marketplace;

    invoke-static {v6}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-static {v0, v4}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    aput-object v0, v1, v14

    .line 108
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->IT:Lcom/amazon/kcp/application/Marketplace;

    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v4

    invoke-static {v0, v4}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    const/16 v4, 0xa

    aput-object v0, v1, v4

    .line 109
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->JP:Lcom/amazon/kcp/application/Marketplace;

    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v4

    invoke-static {v0, v4}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    aput-object v0, v1, v15

    .line 110
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->CN:Lcom/amazon/kcp/application/Marketplace;

    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v4

    invoke-static {v0, v4}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    aput-object v0, v1, v2

    .line 97
    invoke-static {v1}, Lkotlin/collections/MapsKt;->hashMapOf([Lkotlin/Pair;)Ljava/util/HashMap;

    move-result-object v0

    sput-object v0, Lcom/amazon/kcp/search/wayfinder/SearchFilterSortItemConstants;->MARKETPLACE_TO_FORMAT:Ljava/util/HashMap;

    new-array v0, v3, [Lkotlin/Pair;

    .line 115
    sget-object v1, Lcom/amazon/kcp/application/Marketplace;->US:Lcom/amazon/kcp/application/Marketplace;

    const-string v19, "Romance"

    const-string v20, "CrimeThrillerMystery"

    const-string v21, "LiteratureFiction"

    const-string v22, "SciFiFantasy"

    const-string v23, "BiographiesMemoirs"

    const-string v24, "History"

    const-string v25, "BusinessInvesting"

    const-string v26, "ReligionSpirituality"

    const-string v27, "HealthFitnessDieting"

    const-string v28, "TeenYoungAdult"

    .line 117
    filled-new-array/range {v19 .. v28}, [Ljava/lang/String;

    move-result-object v3

    .line 115
    invoke-static {v3}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-static {v1, v3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/4 v3, 0x0

    aput-object v1, v0, v3

    .line 118
    sget-object v1, Lcom/amazon/kcp/application/Marketplace;->CA:Lcom/amazon/kcp/application/Marketplace;

    const-string v17, "BiographiesMemoirs"

    const-string v18, "BusinessInvesting"

    const-string v19, "HealthFitnessDieting"

    const-string v20, "History"

    const-string v21, "LiteratureFiction"

    const-string v22, "CrimeThrillerMystery"

    const-string v23, "ReligionSpirituality"

    const-string v24, "Romance"

    const-string v25, "SciFiFantasy"

    const-string v26, "PoliticsSocialSciences"

    .line 120
    filled-new-array/range {v17 .. v26}, [Ljava/lang/String;

    move-result-object v3

    .line 118
    invoke-static {v3}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-static {v1, v3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/4 v3, 0x1

    aput-object v1, v0, v3

    .line 121
    sget-object v1, Lcom/amazon/kcp/application/Marketplace;->UK:Lcom/amazon/kcp/application/Marketplace;

    const-string v16, "BiographiesMemoirs"

    const-string v17, "BusinessInvesting"

    const-string v18, "CrimeThrillerMystery"

    const-string v19, "LiteratureFiction"

    const-string v20, "HealthFitnessDieting"

    const-string v21, "History"

    const-string v22, "ReligionSpirituality"

    const-string v23, "Romance"

    const-string v24, "SciFiFantasy"

    const-string v25, "TeenYoungAdult"

    .line 123
    filled-new-array/range {v16 .. v25}, [Ljava/lang/String;

    move-result-object v3

    .line 121
    invoke-static {v3}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-static {v1, v3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    aput-object v1, v0, v7

    .line 124
    sget-object v1, Lcom/amazon/kcp/application/Marketplace;->IN:Lcom/amazon/kcp/application/Marketplace;

    const-string v16, "BiographiesMemoirs"

    const-string v17, "BusinessInvesting"

    const-string v18, "HealthFamilyPersonalDevelopment"

    const-string v19, "History"

    const-string v20, "LiteratureFiction"

    const-string v21, "CrimeThrillerMystery"

    const-string v22, "ReligionSpirituality"

    const-string v23, "Romance"

    const-string v24, "FantasySicenceFictionHorror"

    const-string v25, "ChildrenYoungAdult"

    .line 126
    filled-new-array/range {v16 .. v25}, [Ljava/lang/String;

    move-result-object v3

    .line 124
    invoke-static {v3}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-static {v1, v3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    aput-object v1, v0, v8

    .line 127
    sget-object v1, Lcom/amazon/kcp/application/Marketplace;->AU:Lcom/amazon/kcp/application/Marketplace;

    const-string v16, "BiographiesMemoirs"

    const-string v17, "BusinessInvesting"

    const-string v18, "HealthFitnessDieting"

    const-string v19, "History"

    const-string v20, "LiteratureFiction"

    const-string v21, "CrimeThrillerMystery"

    const-string v22, "ReligionSpirituality"

    const-string v23, "Romance"

    const-string v24, "SciFiFantasy"

    const-string v25, "TeenYoungAdult"

    .line 129
    filled-new-array/range {v16 .. v25}, [Ljava/lang/String;

    move-result-object v3

    .line 127
    invoke-static {v3}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-static {v1, v3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    aput-object v1, v0, v9

    .line 130
    sget-object v1, Lcom/amazon/kcp/application/Marketplace;->MX:Lcom/amazon/kcp/application/Marketplace;

    const-string v16, "BiographiesMemoirs"

    const-string v17, "BusinessInvesting"

    const-string v18, "ForeignLanguage"

    const-string v19, "History"

    const-string v20, "LiteratureFiction"

    const-string v21, "CrimeThrillerMystery"

    const-string v22, "ReligionSpirituality"

    const-string v23, "Romance"

    const-string v24, "SciFiFantasy"

    const-string v25, "TeenYoungAdult"

    .line 132
    filled-new-array/range {v16 .. v25}, [Ljava/lang/String;

    move-result-object v3

    .line 130
    invoke-static {v3}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-static {v1, v3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    aput-object v1, v0, v10

    .line 133
    sget-object v1, Lcom/amazon/kcp/application/Marketplace;->ES:Lcom/amazon/kcp/application/Marketplace;

    const-string v16, "BiographiesMemoirs"

    const-string v17, "BusinessInvesting"

    const-string v18, "TeenYoungAdult"

    const-string v19, "HealthFamilyPersonalDevelopment"

    const-string v20, "History"

    const-string v21, "LiteratureFiction"

    const-string v22, "CrimeThrillerMystery"

    const-string v23, "ReligionSpirituality"

    const-string v24, "Romance"

    const-string v25, "FantasySicenceFictionHorror"

    .line 135
    filled-new-array/range {v16 .. v25}, [Ljava/lang/String;

    move-result-object v3

    .line 133
    invoke-static {v3}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-static {v1, v3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    aput-object v1, v0, v11

    .line 136
    sget-object v1, Lcom/amazon/kcp/application/Marketplace;->BR:Lcom/amazon/kcp/application/Marketplace;

    const-string v16, "BiographiesMemoirs"

    const-string v17, "BusinessInvesting"

    const-string v18, "HealthFamily"

    const-string v19, "History"

    const-string v20, "LiteratureFiction"

    const-string v21, "CrimeThrillerMystery"

    const-string v22, "ReligionSpirituality"

    const-string v23, "Romance"

    const-string v24, "FantasySicenceFictionHorror"

    const-string v25, "TeenYoungAdult"

    .line 137
    filled-new-array/range {v16 .. v25}, [Ljava/lang/String;

    move-result-object v3

    .line 136
    invoke-static {v3}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-static {v1, v3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    aput-object v1, v0, v12

    .line 138
    sget-object v1, Lcom/amazon/kcp/application/Marketplace;->DE:Lcom/amazon/kcp/application/Marketplace;

    const-string v3, "SelfHelp"

    const-string v4, "BiographiesMemoirs"

    const-string v5, "BusinessCareers"

    const-string v6, "EnglishEbooks"

    const-string v7, "LiteratureFiction"

    const-string v8, "CrimeThrillerMystery"

    const-string v9, "PoliticsHistory"

    const-string v10, "ReligionSpirituality"

    const-string v11, "SciFiFantasy"

    const-string v12, "TravelTourism"

    .line 139
    filled-new-array/range {v3 .. v12}, [Ljava/lang/String;

    move-result-object v3

    .line 138
    invoke-static {v3}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-static {v1, v3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    aput-object v1, v0, v13

    .line 140
    sget-object v1, Lcom/amazon/kcp/application/Marketplace;->FR:Lcom/amazon/kcp/application/Marketplace;

    const-string v3, "BusinessInvesting"

    const-string v4, "HealthFitnessDieting"

    const-string v5, "History"

    const-string v6, "LiteratureFiction"

    const-string v7, "CrimeThrillerMystery"

    const-string v8, "ReligionSpirituality"

    const-string v9, "Romance"

    const-string v10, "FantasySicenceFictionHorror"

    const-string v11, "ScienceTechnologyMedicine"

    const-string v12, "Sociology"

    .line 141
    filled-new-array/range {v3 .. v12}, [Ljava/lang/String;

    move-result-object v3

    .line 140
    invoke-static {v3}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-static {v1, v3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    aput-object v1, v0, v14

    .line 142
    sget-object v1, Lcom/amazon/kcp/application/Marketplace;->IT:Lcom/amazon/kcp/application/Marketplace;

    const-string v3, "BiographiesMemoirs"

    const-string v4, "BusinessInvesting"

    const-string v5, "TeenYoungAdult"

    const-string v6, "HealthFamilyPersonalDevelopment"

    const-string v7, "History"

    const-string v8, "LiteratureFiction"

    const-string v9, "CrimeThrillerMystery"

    const-string v10, "ReligionSpirituality"

    const-string v11, "Romance"

    const-string v12, "FantasySicenceFictionHorror"

    .line 143
    filled-new-array/range {v3 .. v12}, [Ljava/lang/String;

    move-result-object v3

    .line 142
    invoke-static {v3}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-static {v1, v3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/16 v3, 0xa

    aput-object v1, v0, v3

    .line 144
    sget-object v1, Lcom/amazon/kcp/application/Marketplace;->JP:Lcom/amazon/kcp/application/Marketplace;

    const-string v3, "ArtPhotography"

    const-string v4, "BusinessInvesting"

    const-string v5, "ComputerTechnology"

    const-string v6, "HealthFitnessDieting"

    const-string v7, "HistoryGeography"

    const-string v8, "ForeignLanguageStudyReference"

    const-string v9, "LiteratureLiteraryCriticism"

    const-string v10, "ComicsGraphicNovels"

    const-string v11, "NonfictionJapaneseBook"

    const-string v12, "HobbiesPracticalUsesSportsOutdoors"

    .line 146
    filled-new-array/range {v3 .. v12}, [Ljava/lang/String;

    move-result-object v3

    .line 144
    invoke-static {v3}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-static {v1, v3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    aput-object v1, v0, v15

    .line 147
    sget-object v1, Lcom/amazon/kcp/application/Marketplace;->CN:Lcom/amazon/kcp/application/Marketplace;

    const-string v3, "BiographiesMemoirs"

    const-string v4, "Childrens"

    const-string v5, "Fiction"

    const-string v6, "History"

    const-string v7, "Literature"

    const-string v8, "EconomicManagement"

    const-string v9, "PhilosophyReligion"

    const-string v10, "Psychology"

    const-string v11, "PsychologicalSelfHelpTesting"

    .line 148
    filled-new-array/range {v3 .. v11}, [Ljava/lang/String;

    move-result-object v3

    .line 147
    invoke-static {v3}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-static {v1, v3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    aput-object v1, v0, v2

    .line 114
    invoke-static {v0}, Lkotlin/collections/MapsKt;->hashMapOf([Lkotlin/Pair;)Ljava/util/HashMap;

    move-result-object v0

    sput-object v0, Lcom/amazon/kcp/search/wayfinder/SearchFilterSortItemConstants;->MARKETPLACE_TO_GENRE:Ljava/util/HashMap;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final formatOptionsForUS()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 91
    sget-boolean v0, Lcom/amazon/kcp/search/wayfinder/SearchFilterSortItemConstants;->falkorEnabled:Z

    const-string v1, "Audible"

    const-string v2, "Newsstand"

    const/4 v3, 0x1

    if-ne v0, v3, :cond_0

    const-string v0, "KindleVella"

    .line 92
    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    goto :goto_0

    :cond_0
    if-nez v0, :cond_1

    .line 93
    filled-new-array {v2, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_1
    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v0
.end method


# virtual methods
.method public final getMARKETPLACE_TO_FORMAT()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Lcom/amazon/kcp/application/Marketplace;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 97
    sget-object v0, Lcom/amazon/kcp/search/wayfinder/SearchFilterSortItemConstants;->MARKETPLACE_TO_FORMAT:Ljava/util/HashMap;

    return-object v0
.end method

.method public final getMARKETPLACE_TO_GENRE()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Lcom/amazon/kcp/application/Marketplace;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 114
    sget-object v0, Lcom/amazon/kcp/search/wayfinder/SearchFilterSortItemConstants;->MARKETPLACE_TO_GENRE:Ljava/util/HashMap;

    return-object v0
.end method

.method public final getMARKETPLACE_TO_READING_PROGRAM()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Lcom/amazon/kcp/application/Marketplace;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 71
    sget-object v0, Lcom/amazon/kcp/search/wayfinder/SearchFilterSortItemConstants;->MARKETPLACE_TO_READING_PROGRAM:Ljava/util/HashMap;

    return-object v0
.end method
