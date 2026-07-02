.class public final Lcom/amazon/kcp/application/LocaleMarketplaceMonitor;
.super Ljava/lang/Object;
.source "LocaleMarketplaceMonitor.kt"


# instance fields
.field private final countryCodeMappings:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final languageOnlyMappings:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final loadLocale:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Ljava/util/Locale;",
            ">;"
        }
    .end annotation
.end field

.field private final simpleLanguageMappings:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1, v0}, Lcom/amazon/kcp/application/LocaleMarketplaceMonitor;-><init>(Lkotlin/jvm/functions/Function0;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lkotlin/jvm/functions/Function0;)V
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "Ljava/util/Locale;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "loadLocale"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, v0, Lcom/amazon/kcp/application/LocaleMarketplaceMonitor;->loadLocale:Lkotlin/jvm/functions/Function0;

    const/16 v1, 0x42

    new-array v1, v1, [Lkotlin/Pair;

    .line 24
    sget-object v2, Lcom/amazon/kcp/application/Marketplace;->US:Lcom/amazon/kcp/application/Marketplace;

    invoke-virtual {v2}, Lcom/amazon/kcp/application/Marketplace;->getId()Ljava/lang/String;

    move-result-object v2

    const-string v3, "US"

    invoke-static {v3, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 25
    sget-object v2, Lcom/amazon/kcp/application/Marketplace;->CA:Lcom/amazon/kcp/application/Marketplace;

    invoke-virtual {v2}, Lcom/amazon/kcp/application/Marketplace;->getId()Ljava/lang/String;

    move-result-object v2

    const-string v4, "CA"

    invoke-static {v4, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    const/4 v5, 0x1

    aput-object v2, v1, v5

    .line 26
    sget-object v2, Lcom/amazon/kcp/application/Marketplace;->UK:Lcom/amazon/kcp/application/Marketplace;

    invoke-virtual {v2}, Lcom/amazon/kcp/application/Marketplace;->getId()Ljava/lang/String;

    move-result-object v2

    const-string v6, "GB"

    invoke-static {v6, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    const/4 v6, 0x2

    aput-object v2, v1, v6

    .line 27
    sget-object v2, Lcom/amazon/kcp/application/Marketplace;->DE:Lcom/amazon/kcp/application/Marketplace;

    invoke-virtual {v2}, Lcom/amazon/kcp/application/Marketplace;->getId()Ljava/lang/String;

    move-result-object v2

    const-string v7, "DE"

    invoke-static {v7, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    const/4 v8, 0x3

    aput-object v2, v1, v8

    .line 28
    sget-object v2, Lcom/amazon/kcp/application/Marketplace;->FR:Lcom/amazon/kcp/application/Marketplace;

    invoke-virtual {v2}, Lcom/amazon/kcp/application/Marketplace;->getId()Ljava/lang/String;

    move-result-object v2

    const-string v9, "FR"

    invoke-static {v9, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    const/4 v10, 0x4

    aput-object v2, v1, v10

    .line 29
    sget-object v2, Lcom/amazon/kcp/application/Marketplace;->IT:Lcom/amazon/kcp/application/Marketplace;

    invoke-virtual {v2}, Lcom/amazon/kcp/application/Marketplace;->getId()Ljava/lang/String;

    move-result-object v2

    const-string v11, "IT"

    invoke-static {v11, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    const/4 v12, 0x5

    aput-object v2, v1, v12

    .line 30
    sget-object v2, Lcom/amazon/kcp/application/Marketplace;->JP:Lcom/amazon/kcp/application/Marketplace;

    invoke-virtual {v2}, Lcom/amazon/kcp/application/Marketplace;->getId()Ljava/lang/String;

    move-result-object v2

    const-string v13, "JP"

    invoke-static {v13, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    const/4 v13, 0x6

    aput-object v2, v1, v13

    .line 31
    sget-object v2, Lcom/amazon/kcp/application/Marketplace;->CN:Lcom/amazon/kcp/application/Marketplace;

    invoke-virtual {v2}, Lcom/amazon/kcp/application/Marketplace;->getId()Ljava/lang/String;

    move-result-object v2

    const-string v14, "CN"

    invoke-static {v14, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    const/4 v14, 0x7

    aput-object v2, v1, v14

    .line 32
    sget-object v2, Lcom/amazon/kcp/application/Marketplace;->CN:Lcom/amazon/kcp/application/Marketplace;

    invoke-virtual {v2}, Lcom/amazon/kcp/application/Marketplace;->getId()Ljava/lang/String;

    move-result-object v2

    const-string v15, "TW"

    invoke-static {v15, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    const/16 v15, 0x8

    aput-object v2, v1, v15

    .line 33
    sget-object v2, Lcom/amazon/kcp/application/Marketplace;->MX:Lcom/amazon/kcp/application/Marketplace;

    invoke-virtual {v2}, Lcom/amazon/kcp/application/Marketplace;->getId()Ljava/lang/String;

    move-result-object v2

    const-string v14, "MX"

    invoke-static {v14, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    const/16 v14, 0x9

    aput-object v2, v1, v14

    .line 34
    sget-object v2, Lcom/amazon/kcp/application/Marketplace;->BR:Lcom/amazon/kcp/application/Marketplace;

    invoke-virtual {v2}, Lcom/amazon/kcp/application/Marketplace;->getId()Ljava/lang/String;

    move-result-object v2

    const-string v14, "BR"

    invoke-static {v14, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    const/16 v14, 0xa

    aput-object v2, v1, v14

    .line 35
    sget-object v2, Lcom/amazon/kcp/application/Marketplace;->IN:Lcom/amazon/kcp/application/Marketplace;

    invoke-virtual {v2}, Lcom/amazon/kcp/application/Marketplace;->getId()Ljava/lang/String;

    move-result-object v2

    const-string v14, "IN"

    invoke-static {v14, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    const/16 v14, 0xb

    aput-object v2, v1, v14

    .line 36
    sget-object v2, Lcom/amazon/kcp/application/Marketplace;->ES:Lcom/amazon/kcp/application/Marketplace;

    invoke-virtual {v2}, Lcom/amazon/kcp/application/Marketplace;->getId()Ljava/lang/String;

    move-result-object v2

    const-string v14, "ES"

    invoke-static {v14, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    const/16 v13, 0xc

    aput-object v2, v1, v13

    .line 37
    sget-object v2, Lcom/amazon/kcp/application/Marketplace;->AU:Lcom/amazon/kcp/application/Marketplace;

    invoke-virtual {v2}, Lcom/amazon/kcp/application/Marketplace;->getId()Ljava/lang/String;

    move-result-object v2

    const-string v13, "AU"

    invoke-static {v13, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    const/16 v13, 0xd

    aput-object v2, v1, v13

    .line 38
    sget-object v2, Lcom/amazon/kcp/application/Marketplace;->NL:Lcom/amazon/kcp/application/Marketplace;

    invoke-virtual {v2}, Lcom/amazon/kcp/application/Marketplace;->getId()Ljava/lang/String;

    move-result-object v2

    const-string v13, "NL"

    invoke-static {v13, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    const/16 v16, 0xe

    aput-object v2, v1, v16

    .line 41
    sget-object v2, Lcom/amazon/kcp/application/Marketplace;->FR:Lcom/amazon/kcp/application/Marketplace;

    invoke-virtual {v2}, Lcom/amazon/kcp/application/Marketplace;->getId()Ljava/lang/String;

    move-result-object v2

    const-string v12, "MC"

    invoke-static {v12, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    const/16 v12, 0xf

    aput-object v2, v1, v12

    .line 44
    sget-object v2, Lcom/amazon/kcp/application/Marketplace;->DE:Lcom/amazon/kcp/application/Marketplace;

    invoke-virtual {v2}, Lcom/amazon/kcp/application/Marketplace;->getId()Ljava/lang/String;

    move-result-object v2

    const-string v12, "CH"

    invoke-static {v12, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    const/16 v12, 0x10

    aput-object v2, v1, v12

    .line 45
    sget-object v2, Lcom/amazon/kcp/application/Marketplace;->DE:Lcom/amazon/kcp/application/Marketplace;

    invoke-virtual {v2}, Lcom/amazon/kcp/application/Marketplace;->getId()Ljava/lang/String;

    move-result-object v2

    const-string v12, "LU"

    invoke-static {v12, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    const/16 v12, 0x11

    aput-object v2, v1, v12

    .line 46
    sget-object v2, Lcom/amazon/kcp/application/Marketplace;->DE:Lcom/amazon/kcp/application/Marketplace;

    invoke-virtual {v2}, Lcom/amazon/kcp/application/Marketplace;->getId()Ljava/lang/String;

    move-result-object v2

    const-string v12, "AT"

    invoke-static {v12, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    const/16 v12, 0x12

    aput-object v2, v1, v12

    .line 49
    sget-object v2, Lcom/amazon/kcp/application/Marketplace;->IT:Lcom/amazon/kcp/application/Marketplace;

    invoke-virtual {v2}, Lcom/amazon/kcp/application/Marketplace;->getId()Ljava/lang/String;

    move-result-object v2

    const-string v12, "SM"

    invoke-static {v12, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    const/16 v12, 0x13

    aput-object v2, v1, v12

    .line 50
    sget-object v2, Lcom/amazon/kcp/application/Marketplace;->IT:Lcom/amazon/kcp/application/Marketplace;

    invoke-virtual {v2}, Lcom/amazon/kcp/application/Marketplace;->getId()Ljava/lang/String;

    move-result-object v2

    const-string v12, "VA"

    invoke-static {v12, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    const/16 v12, 0x14

    aput-object v2, v1, v12

    .line 53
    sget-object v2, Lcom/amazon/kcp/application/Marketplace;->ES:Lcom/amazon/kcp/application/Marketplace;

    invoke-virtual {v2}, Lcom/amazon/kcp/application/Marketplace;->getId()Ljava/lang/String;

    move-result-object v2

    const-string v12, "AD"

    invoke-static {v12, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    const/16 v12, 0x15

    aput-object v2, v1, v12

    .line 56
    sget-object v2, Lcom/amazon/kcp/application/Marketplace;->CN:Lcom/amazon/kcp/application/Marketplace;

    invoke-virtual {v2}, Lcom/amazon/kcp/application/Marketplace;->getId()Ljava/lang/String;

    move-result-object v2

    const-string v12, "MO"

    invoke-static {v12, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    const/16 v12, 0x16

    aput-object v2, v1, v12

    .line 57
    sget-object v2, Lcom/amazon/kcp/application/Marketplace;->CN:Lcom/amazon/kcp/application/Marketplace;

    invoke-virtual {v2}, Lcom/amazon/kcp/application/Marketplace;->getId()Ljava/lang/String;

    move-result-object v2

    const-string v12, "TH"

    invoke-static {v12, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    const/16 v17, 0x17

    aput-object v2, v1, v17

    .line 58
    sget-object v2, Lcom/amazon/kcp/application/Marketplace;->CN:Lcom/amazon/kcp/application/Marketplace;

    invoke-virtual {v2}, Lcom/amazon/kcp/application/Marketplace;->getId()Ljava/lang/String;

    move-result-object v2

    const-string v10, "HK"

    invoke-static {v10, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    const/16 v10, 0x18

    aput-object v2, v1, v10

    .line 61
    sget-object v2, Lcom/amazon/kcp/application/Marketplace;->UK:Lcom/amazon/kcp/application/Marketplace;

    invoke-virtual {v2}, Lcom/amazon/kcp/application/Marketplace;->getId()Ljava/lang/String;

    move-result-object v2

    const-string v10, "IE"

    invoke-static {v10, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    const/16 v10, 0x19

    aput-object v2, v1, v10

    .line 62
    sget-object v2, Lcom/amazon/kcp/application/Marketplace;->UK:Lcom/amazon/kcp/application/Marketplace;

    invoke-virtual {v2}, Lcom/amazon/kcp/application/Marketplace;->getId()Ljava/lang/String;

    move-result-object v2

    const-string v10, "GI"

    invoke-static {v10, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    const/16 v10, 0x1a

    aput-object v2, v1, v10

    .line 63
    sget-object v2, Lcom/amazon/kcp/application/Marketplace;->UK:Lcom/amazon/kcp/application/Marketplace;

    invoke-virtual {v2}, Lcom/amazon/kcp/application/Marketplace;->getId()Ljava/lang/String;

    move-result-object v2

    const-string v10, "GG"

    invoke-static {v10, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    const/16 v10, 0x1b

    aput-object v2, v1, v10

    .line 64
    sget-object v2, Lcom/amazon/kcp/application/Marketplace;->UK:Lcom/amazon/kcp/application/Marketplace;

    invoke-virtual {v2}, Lcom/amazon/kcp/application/Marketplace;->getId()Ljava/lang/String;

    move-result-object v2

    const-string v10, "IM"

    invoke-static {v10, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    const/16 v10, 0x1c

    aput-object v2, v1, v10

    .line 65
    sget-object v2, Lcom/amazon/kcp/application/Marketplace;->UK:Lcom/amazon/kcp/application/Marketplace;

    invoke-virtual {v2}, Lcom/amazon/kcp/application/Marketplace;->getId()Ljava/lang/String;

    move-result-object v2

    const-string v10, "JE"

    invoke-static {v10, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    const/16 v10, 0x1d

    aput-object v2, v1, v10

    .line 66
    sget-object v2, Lcom/amazon/kcp/application/Marketplace;->UK:Lcom/amazon/kcp/application/Marketplace;

    invoke-virtual {v2}, Lcom/amazon/kcp/application/Marketplace;->getId()Ljava/lang/String;

    move-result-object v2

    const-string v10, "IO"

    invoke-static {v10, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    const/16 v10, 0x1e

    aput-object v2, v1, v10

    .line 67
    sget-object v2, Lcom/amazon/kcp/application/Marketplace;->UK:Lcom/amazon/kcp/application/Marketplace;

    invoke-virtual {v2}, Lcom/amazon/kcp/application/Marketplace;->getId()Ljava/lang/String;

    move-result-object v2

    const-string v10, "VG"

    invoke-static {v10, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    const/16 v10, 0x1f

    aput-object v2, v1, v10

    .line 68
    sget-object v2, Lcom/amazon/kcp/application/Marketplace;->UK:Lcom/amazon/kcp/application/Marketplace;

    invoke-virtual {v2}, Lcom/amazon/kcp/application/Marketplace;->getId()Ljava/lang/String;

    move-result-object v2

    const-string v10, "PN"

    invoke-static {v10, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    const/16 v10, 0x20

    aput-object v2, v1, v10

    .line 71
    sget-object v2, Lcom/amazon/kcp/application/Marketplace;->AU:Lcom/amazon/kcp/application/Marketplace;

    invoke-virtual {v2}, Lcom/amazon/kcp/application/Marketplace;->getId()Ljava/lang/String;

    move-result-object v2

    const-string v10, "NF"

    invoke-static {v10, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    const/16 v10, 0x21

    aput-object v2, v1, v10

    .line 72
    sget-object v2, Lcom/amazon/kcp/application/Marketplace;->AU:Lcom/amazon/kcp/application/Marketplace;

    invoke-virtual {v2}, Lcom/amazon/kcp/application/Marketplace;->getId()Ljava/lang/String;

    move-result-object v2

    const-string v10, "CX"

    invoke-static {v10, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    const/16 v10, 0x22

    aput-object v2, v1, v10

    .line 73
    sget-object v2, Lcom/amazon/kcp/application/Marketplace;->AU:Lcom/amazon/kcp/application/Marketplace;

    invoke-virtual {v2}, Lcom/amazon/kcp/application/Marketplace;->getId()Ljava/lang/String;

    move-result-object v2

    const-string v10, "CC"

    invoke-static {v10, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    const/16 v10, 0x23

    aput-object v2, v1, v10

    .line 74
    sget-object v2, Lcom/amazon/kcp/application/Marketplace;->AU:Lcom/amazon/kcp/application/Marketplace;

    invoke-virtual {v2}, Lcom/amazon/kcp/application/Marketplace;->getId()Ljava/lang/String;

    move-result-object v2

    const-string v10, "HM"

    invoke-static {v10, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    const/16 v10, 0x24

    aput-object v2, v1, v10

    .line 77
    sget-object v2, Lcom/amazon/kcp/application/Marketplace;->US:Lcom/amazon/kcp/application/Marketplace;

    invoke-virtual {v2}, Lcom/amazon/kcp/application/Marketplace;->getId()Ljava/lang/String;

    move-result-object v2

    const-string v10, "PR"

    invoke-static {v10, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    const/16 v10, 0x25

    aput-object v2, v1, v10

    .line 78
    sget-object v2, Lcom/amazon/kcp/application/Marketplace;->US:Lcom/amazon/kcp/application/Marketplace;

    invoke-virtual {v2}, Lcom/amazon/kcp/application/Marketplace;->getId()Ljava/lang/String;

    move-result-object v2

    const-string v10, "BE"

    invoke-static {v10, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    const/16 v10, 0x26

    aput-object v2, v1, v10

    .line 79
    sget-object v2, Lcom/amazon/kcp/application/Marketplace;->US:Lcom/amazon/kcp/application/Marketplace;

    invoke-virtual {v2}, Lcom/amazon/kcp/application/Marketplace;->getId()Ljava/lang/String;

    move-result-object v2

    const-string v10, "BG"

    invoke-static {v10, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    const/16 v10, 0x27

    aput-object v2, v1, v10

    .line 80
    sget-object v2, Lcom/amazon/kcp/application/Marketplace;->US:Lcom/amazon/kcp/application/Marketplace;

    invoke-virtual {v2}, Lcom/amazon/kcp/application/Marketplace;->getId()Ljava/lang/String;

    move-result-object v2

    const-string v10, "HR"

    invoke-static {v10, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    const/16 v10, 0x28

    aput-object v2, v1, v10

    .line 81
    sget-object v2, Lcom/amazon/kcp/application/Marketplace;->US:Lcom/amazon/kcp/application/Marketplace;

    invoke-virtual {v2}, Lcom/amazon/kcp/application/Marketplace;->getId()Ljava/lang/String;

    move-result-object v2

    const-string v10, "CY"

    invoke-static {v10, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    const/16 v10, 0x29

    aput-object v2, v1, v10

    .line 82
    sget-object v2, Lcom/amazon/kcp/application/Marketplace;->US:Lcom/amazon/kcp/application/Marketplace;

    invoke-virtual {v2}, Lcom/amazon/kcp/application/Marketplace;->getId()Ljava/lang/String;

    move-result-object v2

    const-string v10, "CZ"

    invoke-static {v10, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    const/16 v10, 0x2a

    aput-object v2, v1, v10

    .line 83
    sget-object v2, Lcom/amazon/kcp/application/Marketplace;->US:Lcom/amazon/kcp/application/Marketplace;

    invoke-virtual {v2}, Lcom/amazon/kcp/application/Marketplace;->getId()Ljava/lang/String;

    move-result-object v2

    const-string v10, "DK"

    invoke-static {v10, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    const/16 v10, 0x2b

    aput-object v2, v1, v10

    .line 84
    sget-object v2, Lcom/amazon/kcp/application/Marketplace;->US:Lcom/amazon/kcp/application/Marketplace;

    invoke-virtual {v2}, Lcom/amazon/kcp/application/Marketplace;->getId()Ljava/lang/String;

    move-result-object v2

    const-string v10, "EE"

    invoke-static {v10, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    const/16 v10, 0x2c

    aput-object v2, v1, v10

    .line 85
    sget-object v2, Lcom/amazon/kcp/application/Marketplace;->US:Lcom/amazon/kcp/application/Marketplace;

    invoke-virtual {v2}, Lcom/amazon/kcp/application/Marketplace;->getId()Ljava/lang/String;

    move-result-object v2

    const-string v10, "FI"

    invoke-static {v10, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    const/16 v10, 0x2d

    aput-object v2, v1, v10

    .line 86
    sget-object v2, Lcom/amazon/kcp/application/Marketplace;->US:Lcom/amazon/kcp/application/Marketplace;

    invoke-virtual {v2}, Lcom/amazon/kcp/application/Marketplace;->getId()Ljava/lang/String;

    move-result-object v2

    const-string v10, "GR"

    invoke-static {v10, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    const/16 v10, 0x2e

    aput-object v2, v1, v10

    .line 87
    sget-object v2, Lcom/amazon/kcp/application/Marketplace;->US:Lcom/amazon/kcp/application/Marketplace;

    invoke-virtual {v2}, Lcom/amazon/kcp/application/Marketplace;->getId()Ljava/lang/String;

    move-result-object v2

    const-string v10, "HU"

    invoke-static {v10, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    const/16 v10, 0x2f

    aput-object v2, v1, v10

    .line 88
    sget-object v2, Lcom/amazon/kcp/application/Marketplace;->US:Lcom/amazon/kcp/application/Marketplace;

    invoke-virtual {v2}, Lcom/amazon/kcp/application/Marketplace;->getId()Ljava/lang/String;

    move-result-object v2

    const-string v10, "LV"

    invoke-static {v10, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    const/16 v10, 0x30

    aput-object v2, v1, v10

    .line 89
    sget-object v2, Lcom/amazon/kcp/application/Marketplace;->US:Lcom/amazon/kcp/application/Marketplace;

    invoke-virtual {v2}, Lcom/amazon/kcp/application/Marketplace;->getId()Ljava/lang/String;

    move-result-object v2

    const-string v10, "LT"

    invoke-static {v10, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    const/16 v10, 0x31

    aput-object v2, v1, v10

    .line 90
    sget-object v2, Lcom/amazon/kcp/application/Marketplace;->US:Lcom/amazon/kcp/application/Marketplace;

    invoke-virtual {v2}, Lcom/amazon/kcp/application/Marketplace;->getId()Ljava/lang/String;

    move-result-object v2

    const-string v10, "MT"

    invoke-static {v10, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    const/16 v10, 0x32

    aput-object v2, v1, v10

    .line 91
    sget-object v2, Lcom/amazon/kcp/application/Marketplace;->US:Lcom/amazon/kcp/application/Marketplace;

    invoke-virtual {v2}, Lcom/amazon/kcp/application/Marketplace;->getId()Ljava/lang/String;

    move-result-object v2

    const-string v10, "NO"

    invoke-static {v10, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    const/16 v10, 0x33

    aput-object v2, v1, v10

    .line 92
    sget-object v2, Lcom/amazon/kcp/application/Marketplace;->US:Lcom/amazon/kcp/application/Marketplace;

    invoke-virtual {v2}, Lcom/amazon/kcp/application/Marketplace;->getId()Ljava/lang/String;

    move-result-object v2

    const-string v10, "PL"

    invoke-static {v10, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    const/16 v10, 0x34

    aput-object v2, v1, v10

    .line 93
    sget-object v2, Lcom/amazon/kcp/application/Marketplace;->US:Lcom/amazon/kcp/application/Marketplace;

    invoke-virtual {v2}, Lcom/amazon/kcp/application/Marketplace;->getId()Ljava/lang/String;

    move-result-object v2

    const-string v10, "PT"

    invoke-static {v10, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    const/16 v10, 0x35

    aput-object v2, v1, v10

    .line 94
    sget-object v2, Lcom/amazon/kcp/application/Marketplace;->US:Lcom/amazon/kcp/application/Marketplace;

    invoke-virtual {v2}, Lcom/amazon/kcp/application/Marketplace;->getId()Ljava/lang/String;

    move-result-object v2

    const-string v10, "RO"

    invoke-static {v10, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    const/16 v10, 0x36

    aput-object v2, v1, v10

    .line 95
    sget-object v2, Lcom/amazon/kcp/application/Marketplace;->US:Lcom/amazon/kcp/application/Marketplace;

    invoke-virtual {v2}, Lcom/amazon/kcp/application/Marketplace;->getId()Ljava/lang/String;

    move-result-object v2

    const-string v10, "SK"

    invoke-static {v10, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    const/16 v10, 0x37

    aput-object v2, v1, v10

    .line 96
    sget-object v2, Lcom/amazon/kcp/application/Marketplace;->US:Lcom/amazon/kcp/application/Marketplace;

    invoke-virtual {v2}, Lcom/amazon/kcp/application/Marketplace;->getId()Ljava/lang/String;

    move-result-object v2

    const-string v10, "SI"

    invoke-static {v10, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    const/16 v10, 0x38

    aput-object v2, v1, v10

    .line 97
    sget-object v2, Lcom/amazon/kcp/application/Marketplace;->US:Lcom/amazon/kcp/application/Marketplace;

    invoke-virtual {v2}, Lcom/amazon/kcp/application/Marketplace;->getId()Ljava/lang/String;

    move-result-object v2

    const-string v10, "SE"

    invoke-static {v10, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    const/16 v10, 0x39

    aput-object v2, v1, v10

    .line 98
    sget-object v2, Lcom/amazon/kcp/application/Marketplace;->US:Lcom/amazon/kcp/application/Marketplace;

    invoke-virtual {v2}, Lcom/amazon/kcp/application/Marketplace;->getId()Ljava/lang/String;

    move-result-object v2

    const-string v10, "RU"

    invoke-static {v10, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    const/16 v10, 0x3a

    aput-object v2, v1, v10

    .line 99
    sget-object v2, Lcom/amazon/kcp/application/Marketplace;->US:Lcom/amazon/kcp/application/Marketplace;

    invoke-virtual {v2}, Lcom/amazon/kcp/application/Marketplace;->getId()Ljava/lang/String;

    move-result-object v2

    const-string v10, "UA"

    invoke-static {v10, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    const/16 v10, 0x3b

    aput-object v2, v1, v10

    .line 100
    sget-object v2, Lcom/amazon/kcp/application/Marketplace;->US:Lcom/amazon/kcp/application/Marketplace;

    invoke-virtual {v2}, Lcom/amazon/kcp/application/Marketplace;->getId()Ljava/lang/String;

    move-result-object v2

    const-string v10, "KZ"

    invoke-static {v10, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    const/16 v10, 0x3c

    aput-object v2, v1, v10

    .line 101
    sget-object v2, Lcom/amazon/kcp/application/Marketplace;->US:Lcom/amazon/kcp/application/Marketplace;

    invoke-virtual {v2}, Lcom/amazon/kcp/application/Marketplace;->getId()Ljava/lang/String;

    move-result-object v2

    const-string v10, "BY"

    invoke-static {v10, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    const/16 v10, 0x3d

    aput-object v2, v1, v10

    .line 102
    sget-object v2, Lcom/amazon/kcp/application/Marketplace;->US:Lcom/amazon/kcp/application/Marketplace;

    invoke-virtual {v2}, Lcom/amazon/kcp/application/Marketplace;->getId()Ljava/lang/String;

    move-result-object v2

    const-string v10, "NZ"

    invoke-static {v10, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    const/16 v10, 0x3e

    aput-object v2, v1, v10

    .line 103
    sget-object v2, Lcom/amazon/kcp/application/Marketplace;->US:Lcom/amazon/kcp/application/Marketplace;

    invoke-virtual {v2}, Lcom/amazon/kcp/application/Marketplace;->getId()Ljava/lang/String;

    move-result-object v2

    const-string v10, "CK"

    invoke-static {v10, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    const/16 v10, 0x3f

    aput-object v2, v1, v10

    .line 104
    sget-object v2, Lcom/amazon/kcp/application/Marketplace;->US:Lcom/amazon/kcp/application/Marketplace;

    invoke-virtual {v2}, Lcom/amazon/kcp/application/Marketplace;->getId()Ljava/lang/String;

    move-result-object v2

    const-string v10, "NU"

    invoke-static {v10, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    const/16 v10, 0x40

    aput-object v2, v1, v10

    .line 105
    sget-object v2, Lcom/amazon/kcp/application/Marketplace;->US:Lcom/amazon/kcp/application/Marketplace;

    invoke-virtual {v2}, Lcom/amazon/kcp/application/Marketplace;->getId()Ljava/lang/String;

    move-result-object v2

    const-string v10, "TK"

    invoke-static {v10, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    const/16 v10, 0x41

    aput-object v2, v1, v10

    .line 23
    invoke-static {v1}, Lkotlin/collections/MapsKt;->mapOf([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v1

    iput-object v1, v0, Lcom/amazon/kcp/application/LocaleMarketplaceMonitor;->countryCodeMappings:Ljava/util/Map;

    new-array v1, v15, [Lkotlin/Pair;

    .line 129
    new-instance v2, Ljava/util/Locale;

    invoke-direct {v2, v9}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    sget-object v9, Lcom/amazon/kcp/application/Marketplace;->FR:Lcom/amazon/kcp/application/Marketplace;

    invoke-virtual {v9}, Lcom/amazon/kcp/application/Marketplace;->getId()Ljava/lang/String;

    move-result-object v9

    invoke-static {v2, v9}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    aput-object v2, v1, v3

    .line 130
    new-instance v2, Ljava/util/Locale;

    invoke-direct {v2, v11}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    sget-object v9, Lcom/amazon/kcp/application/Marketplace;->IT:Lcom/amazon/kcp/application/Marketplace;

    invoke-virtual {v9}, Lcom/amazon/kcp/application/Marketplace;->getId()Ljava/lang/String;

    move-result-object v9

    invoke-static {v2, v9}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    aput-object v2, v1, v5

    .line 131
    new-instance v2, Ljava/util/Locale;

    const-string v9, "ZH"

    invoke-direct {v2, v9}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    sget-object v9, Lcom/amazon/kcp/application/Marketplace;->CN:Lcom/amazon/kcp/application/Marketplace;

    invoke-virtual {v9}, Lcom/amazon/kcp/application/Marketplace;->getId()Ljava/lang/String;

    move-result-object v9

    invoke-static {v2, v9}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    aput-object v2, v1, v6

    .line 132
    new-instance v2, Ljava/util/Locale;

    const-string v9, "JA"

    invoke-direct {v2, v9}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    sget-object v10, Lcom/amazon/kcp/application/Marketplace;->JP:Lcom/amazon/kcp/application/Marketplace;

    invoke-virtual {v10}, Lcom/amazon/kcp/application/Marketplace;->getId()Ljava/lang/String;

    move-result-object v10

    invoke-static {v2, v10}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    aput-object v2, v1, v8

    .line 133
    new-instance v2, Ljava/util/Locale;

    const-string v10, "EN"

    invoke-direct {v2, v10}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    sget-object v10, Lcom/amazon/kcp/application/Marketplace;->US:Lcom/amazon/kcp/application/Marketplace;

    invoke-virtual {v10}, Lcom/amazon/kcp/application/Marketplace;->getId()Ljava/lang/String;

    move-result-object v10

    invoke-static {v2, v10}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    const/4 v10, 0x4

    aput-object v2, v1, v10

    .line 135
    new-instance v2, Ljava/util/Locale;

    invoke-direct {v2, v14}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    sget-object v10, Lcom/amazon/kcp/application/Marketplace;->ES:Lcom/amazon/kcp/application/Marketplace;

    invoke-virtual {v10}, Lcom/amazon/kcp/application/Marketplace;->getId()Ljava/lang/String;

    move-result-object v10

    invoke-static {v2, v10}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    const/4 v10, 0x5

    aput-object v2, v1, v10

    .line 136
    new-instance v2, Ljava/util/Locale;

    invoke-direct {v2, v13}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    sget-object v10, Lcom/amazon/kcp/application/Marketplace;->NL:Lcom/amazon/kcp/application/Marketplace;

    invoke-virtual {v10}, Lcom/amazon/kcp/application/Marketplace;->getId()Ljava/lang/String;

    move-result-object v10

    invoke-static {v2, v10}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    const/4 v10, 0x6

    aput-object v2, v1, v10

    .line 137
    new-instance v2, Ljava/util/Locale;

    invoke-direct {v2, v12}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    sget-object v10, Lcom/amazon/kcp/application/Marketplace;->CN:Lcom/amazon/kcp/application/Marketplace;

    invoke-virtual {v10}, Lcom/amazon/kcp/application/Marketplace;->getId()Ljava/lang/String;

    move-result-object v10

    invoke-static {v2, v10}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    const/4 v10, 0x7

    aput-object v2, v1, v10

    .line 128
    invoke-static {v1}, Lkotlin/collections/MapsKt;->mapOf([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v1

    iput-object v1, v0, Lcom/amazon/kcp/application/LocaleMarketplaceMonitor;->languageOnlyMappings:Ljava/util/Map;

    const/16 v1, 0xc

    new-array v1, v1, [Lkotlin/Pair;

    .line 143
    new-instance v2, Ljava/util/Locale;

    invoke-direct {v2, v11}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    sget-object v10, Lcom/amazon/kcp/application/Marketplace;->IT:Lcom/amazon/kcp/application/Marketplace;

    invoke-virtual {v10}, Lcom/amazon/kcp/application/Marketplace;->getId()Ljava/lang/String;

    move-result-object v10

    invoke-static {v2, v10}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    aput-object v2, v1, v3

    .line 144
    new-instance v2, Ljava/util/Locale;

    invoke-direct {v2, v7}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/amazon/kcp/application/Marketplace;->DE:Lcom/amazon/kcp/application/Marketplace;

    invoke-virtual {v3}, Lcom/amazon/kcp/application/Marketplace;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    aput-object v2, v1, v5

    .line 145
    new-instance v2, Ljava/util/Locale;

    invoke-direct {v2, v9}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/amazon/kcp/application/Marketplace;->JP:Lcom/amazon/kcp/application/Marketplace;

    invoke-virtual {v3}, Lcom/amazon/kcp/application/Marketplace;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    aput-object v2, v1, v6

    .line 147
    new-instance v2, Ljava/util/Locale;

    invoke-direct {v2, v14}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/amazon/kcp/application/Marketplace;->US:Lcom/amazon/kcp/application/Marketplace;

    invoke-virtual {v3}, Lcom/amazon/kcp/application/Marketplace;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    aput-object v2, v1, v8

    .line 148
    new-instance v2, Ljava/util/Locale;

    invoke-direct {v2, v13}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/amazon/kcp/application/Marketplace;->NL:Lcom/amazon/kcp/application/Marketplace;

    invoke-virtual {v3}, Lcom/amazon/kcp/application/Marketplace;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    const/4 v3, 0x4

    aput-object v2, v1, v3

    .line 152
    new-instance v2, Ljava/util/Locale;

    invoke-direct {v2, v4}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/amazon/kcp/application/Marketplace;->ES:Lcom/amazon/kcp/application/Marketplace;

    invoke-virtual {v3}, Lcom/amazon/kcp/application/Marketplace;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    const/4 v3, 0x5

    aput-object v2, v1, v3

    .line 153
    new-instance v2, Ljava/util/Locale;

    const-string v3, "GL"

    invoke-direct {v2, v3}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/amazon/kcp/application/Marketplace;->ES:Lcom/amazon/kcp/application/Marketplace;

    invoke-virtual {v3}, Lcom/amazon/kcp/application/Marketplace;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    const/4 v3, 0x6

    aput-object v2, v1, v3

    .line 154
    new-instance v2, Ljava/util/Locale;

    const-string v3, "EU"

    invoke-direct {v2, v3}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/amazon/kcp/application/Marketplace;->ES:Lcom/amazon/kcp/application/Marketplace;

    invoke-virtual {v3}, Lcom/amazon/kcp/application/Marketplace;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    const/4 v3, 0x7

    aput-object v2, v1, v3

    .line 157
    new-instance v2, Ljava/util/Locale;

    const-string v3, "HI"

    invoke-direct {v2, v3}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/amazon/kcp/application/Marketplace;->IN:Lcom/amazon/kcp/application/Marketplace;

    invoke-virtual {v3}, Lcom/amazon/kcp/application/Marketplace;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    aput-object v2, v1, v15

    .line 158
    new-instance v2, Ljava/util/Locale;

    const-string v3, "GU"

    invoke-direct {v2, v3}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/amazon/kcp/application/Marketplace;->IN:Lcom/amazon/kcp/application/Marketplace;

    invoke-virtual {v3}, Lcom/amazon/kcp/application/Marketplace;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    const/16 v3, 0x9

    aput-object v2, v1, v3

    .line 159
    new-instance v2, Ljava/util/Locale;

    const-string v3, "KN"

    invoke-direct {v2, v3}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/amazon/kcp/application/Marketplace;->IN:Lcom/amazon/kcp/application/Marketplace;

    invoke-virtual {v3}, Lcom/amazon/kcp/application/Marketplace;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    const/16 v3, 0xa

    aput-object v2, v1, v3

    .line 160
    new-instance v2, Ljava/util/Locale;

    const-string v3, "TA"

    invoke-direct {v2, v3}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/amazon/kcp/application/Marketplace;->IN:Lcom/amazon/kcp/application/Marketplace;

    invoke-virtual {v3}, Lcom/amazon/kcp/application/Marketplace;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    const/16 v3, 0xb

    aput-object v2, v1, v3

    .line 142
    invoke-static {v1}, Lkotlin/collections/MapsKt;->mapOf([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v1

    iput-object v1, v0, Lcom/amazon/kcp/application/LocaleMarketplaceMonitor;->simpleLanguageMappings:Ljava/util/Map;

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/functions/Function0;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    .line 19
    sget-object p1, Lcom/amazon/kcp/application/LocaleMarketplaceMonitor$1;->INSTANCE:Lcom/amazon/kcp/application/LocaleMarketplaceMonitor$1;

    :cond_0
    invoke-direct {p0, p1}, Lcom/amazon/kcp/application/LocaleMarketplaceMonitor;-><init>(Lkotlin/jvm/functions/Function0;)V

    return-void
.end method


# virtual methods
.method public final determineDefaultMarketplace()Ljava/lang/String;
    .locals 4

    .line 169
    iget-object v0, p0, Lcom/amazon/kcp/application/LocaleMarketplaceMonitor;->loadLocale:Lkotlin/jvm/functions/Function0;

    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Locale;

    const-string v1, ""

    if-eqz v0, :cond_0

    .line 171
    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    move-object v2, v1

    :goto_0
    if-eqz v2, :cond_5

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    const-string v3, "(this as java.lang.String).toUpperCase()"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v0, :cond_1

    .line 172
    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    move-object v1, v0

    .line 175
    :cond_1
    iget-object v0, p0, Lcom/amazon/kcp/application/LocaleMarketplaceMonitor;->countryCodeMappings:Ljava/util/Map;

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_2

    return-object v0

    .line 181
    :cond_2
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_3

    .line 182
    iget-object v0, p0, Lcom/amazon/kcp/application/LocaleMarketplaceMonitor;->languageOnlyMappings:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_3

    return-object v0

    .line 189
    :cond_3
    iget-object v0, p0, Lcom/amazon/kcp/application/LocaleMarketplaceMonitor;->simpleLanguageMappings:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_4

    return-object v0

    .line 195
    :cond_4
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->US:Lcom/amazon/kcp/application/Marketplace;

    invoke-virtual {v0}, Lcom/amazon/kcp/application/Marketplace;->getId()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Marketplace.US.id"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0

    .line 171
    :cond_5
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "null cannot be cast to non-null type java.lang.String"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final onLocaleChangedEvent(Lcom/amazon/kindle/event/LocaleChangedEvent;)V
    .locals 1
    .annotation runtime Lcom/amazon/kindle/krx/events/Subscriber;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 207
    invoke-virtual {p0}, Lcom/amazon/kcp/application/LocaleMarketplaceMonitor;->determineDefaultMarketplace()Ljava/lang/String;

    move-result-object p1

    .line 208
    invoke-static {p1}, Lcom/amazon/kcp/application/Marketplace;->setDefaultMarketplaceId(Ljava/lang/String;)V

    return-void
.end method
