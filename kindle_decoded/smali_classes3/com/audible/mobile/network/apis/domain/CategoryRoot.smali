.class public final enum Lcom/audible/mobile/network/apis/domain/CategoryRoot;
.super Ljava/lang/Enum;
.source "CategoryRoot.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/audible/mobile/network/apis/domain/CategoryRoot$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/audible/mobile/network/apis/domain/CategoryRoot;",
        ">;",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/audible/mobile/network/apis/domain/CategoryRoot;

.field public static final Companion:Lcom/audible/mobile/network/apis/domain/CategoryRoot$Companion;


# instance fields
.field private final root:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/16 v0, 0xa

    new-array v0, v0, [Lcom/audible/mobile/network/apis/domain/CategoryRoot;

    new-instance v1, Lcom/audible/mobile/network/apis/domain/CategoryRoot;

    const/4 v2, 0x0

    const-string v3, "GENRES"

    const-string v4, "Genres"

    .line 6
    invoke-direct {v1, v3, v2, v4}, Lcom/audible/mobile/network/apis/domain/CategoryRoot;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    aput-object v1, v0, v2

    new-instance v1, Lcom/audible/mobile/network/apis/domain/CategoryRoot;

    const/4 v2, 0x1

    const-string v3, "EXPLORE_BY"

    const-string v4, "ExploreBy"

    .line 7
    invoke-direct {v1, v3, v2, v4}, Lcom/audible/mobile/network/apis/domain/CategoryRoot;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    aput-object v1, v0, v2

    new-instance v1, Lcom/audible/mobile/network/apis/domain/CategoryRoot;

    const/4 v2, 0x2

    const-string v3, "EDITORS_PICKS"

    const-string v4, "EditorsPicks"

    .line 8
    invoke-direct {v1, v3, v2, v4}, Lcom/audible/mobile/network/apis/domain/CategoryRoot;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    aput-object v1, v0, v2

    new-instance v1, Lcom/audible/mobile/network/apis/domain/CategoryRoot;

    const/4 v2, 0x3

    const-string v3, "RODIZIO_GENRES"

    const-string v4, "RodizioGenres"

    .line 9
    invoke-direct {v1, v3, v2, v4}, Lcom/audible/mobile/network/apis/domain/CategoryRoot;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    aput-object v1, v0, v2

    new-instance v1, Lcom/audible/mobile/network/apis/domain/CategoryRoot;

    const/4 v2, 0x4

    const-string v3, "RODIZIO_EPISODES_AND_SERIES"

    const-string v4, "RodizioEpisodesAndSeries"

    .line 10
    invoke-direct {v1, v3, v2, v4}, Lcom/audible/mobile/network/apis/domain/CategoryRoot;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    aput-object v1, v0, v2

    new-instance v1, Lcom/audible/mobile/network/apis/domain/CategoryRoot;

    const/4 v2, 0x5

    const-string v3, "RODIZIO_BUCKETS"

    const-string v4, "RodizioBuckets"

    .line 11
    invoke-direct {v1, v3, v2, v4}, Lcom/audible/mobile/network/apis/domain/CategoryRoot;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    aput-object v1, v0, v2

    new-instance v1, Lcom/audible/mobile/network/apis/domain/CategoryRoot;

    const/4 v2, 0x6

    const-string v3, "SHORTS"

    const-string v4, "Shorts"

    .line 12
    invoke-direct {v1, v3, v2, v4}, Lcom/audible/mobile/network/apis/domain/CategoryRoot;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    aput-object v1, v0, v2

    new-instance v1, Lcom/audible/mobile/network/apis/domain/CategoryRoot;

    const/4 v2, 0x7

    const-string v3, "CURATED"

    const-string v4, "Curated"

    .line 13
    invoke-direct {v1, v3, v2, v4}, Lcom/audible/mobile/network/apis/domain/CategoryRoot;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    aput-object v1, v0, v2

    new-instance v1, Lcom/audible/mobile/network/apis/domain/CategoryRoot;

    const/16 v2, 0x8

    const-string v3, "SHORTS_CURATED"

    const-string v4, "ShortsCurated"

    .line 14
    invoke-direct {v1, v3, v2, v4}, Lcom/audible/mobile/network/apis/domain/CategoryRoot;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    aput-object v1, v0, v2

    new-instance v1, Lcom/audible/mobile/network/apis/domain/CategoryRoot;

    const/16 v2, 0x9

    const-string v3, "SHORTS_PRIME"

    const-string v4, "ShortsPrime"

    .line 15
    invoke-direct {v1, v3, v2, v4}, Lcom/audible/mobile/network/apis/domain/CategoryRoot;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    aput-object v1, v0, v2

    sput-object v0, Lcom/audible/mobile/network/apis/domain/CategoryRoot;->$VALUES:[Lcom/audible/mobile/network/apis/domain/CategoryRoot;

    new-instance v0, Lcom/audible/mobile/network/apis/domain/CategoryRoot$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/audible/mobile/network/apis/domain/CategoryRoot$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/audible/mobile/network/apis/domain/CategoryRoot;->Companion:Lcom/audible/mobile/network/apis/domain/CategoryRoot$Companion;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 5
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/audible/mobile/network/apis/domain/CategoryRoot;->root:Ljava/lang/String;

    return-void
.end method

.method public static final synthetic access$getRoot$p(Lcom/audible/mobile/network/apis/domain/CategoryRoot;)Ljava/lang/String;
    .locals 0

    .line 5
    iget-object p0, p0, Lcom/audible/mobile/network/apis/domain/CategoryRoot;->root:Ljava/lang/String;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/audible/mobile/network/apis/domain/CategoryRoot;
    .locals 1

    const-class v0, Lcom/audible/mobile/network/apis/domain/CategoryRoot;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/audible/mobile/network/apis/domain/CategoryRoot;

    return-object p0
.end method

.method public static values()[Lcom/audible/mobile/network/apis/domain/CategoryRoot;
    .locals 1

    sget-object v0, Lcom/audible/mobile/network/apis/domain/CategoryRoot;->$VALUES:[Lcom/audible/mobile/network/apis/domain/CategoryRoot;

    invoke-virtual {v0}, [Lcom/audible/mobile/network/apis/domain/CategoryRoot;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/audible/mobile/network/apis/domain/CategoryRoot;

    return-object v0
.end method


# virtual methods
.method public getValue()Ljava/lang/String;
    .locals 1

    .line 17
    iget-object v0, p0, Lcom/audible/mobile/network/apis/domain/CategoryRoot;->root:Ljava/lang/String;

    return-object v0
.end method
