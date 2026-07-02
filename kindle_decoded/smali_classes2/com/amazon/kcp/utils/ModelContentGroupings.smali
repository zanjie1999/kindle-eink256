.class public final Lcom/amazon/kcp/utils/ModelContentGroupings;
.super Ljava/lang/Object;
.source "ModelContentGroupings.kt"


# static fields
.field private static final BACK_ISSUES_GROUPING:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final COLLECTION_ITEMS_GROUPING:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final COMICS_NARRATIVES_GROUPING:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final INSTANCE:Lcom/amazon/kcp/utils/ModelContentGroupings;

.field private static final KINDLE_SERIES_GROUPING:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final NON_SERIES_GROUPING:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 5
    new-instance v0, Lcom/amazon/kcp/utils/ModelContentGroupings;

    invoke-direct {v0}, Lcom/amazon/kcp/utils/ModelContentGroupings;-><init>()V

    sput-object v0, Lcom/amazon/kcp/utils/ModelContentGroupings;->INSTANCE:Lcom/amazon/kcp/utils/ModelContentGroupings;

    const/4 v0, 0x0

    .line 7
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Lkotlin/collections/SetsKt;->setOf(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v2

    sput-object v2, Lcom/amazon/kcp/utils/ModelContentGroupings;->BACK_ISSUES_GROUPING:Ljava/util/Set;

    .line 9
    invoke-static {v1}, Lkotlin/collections/SetsKt;->setOf(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v2

    sput-object v2, Lcom/amazon/kcp/utils/ModelContentGroupings;->COLLECTION_ITEMS_GROUPING:Ljava/util/Set;

    const/4 v2, 0x3

    new-array v3, v2, [Ljava/lang/Integer;

    aput-object v1, v3, v0

    const/4 v4, 0x2

    .line 13
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x1

    aput-object v5, v3, v6

    .line 14
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v3, v4

    .line 11
    invoke-static {v3}, Lkotlin/collections/SetsKt;->setOf([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v3

    sput-object v3, Lcom/amazon/kcp/utils/ModelContentGroupings;->KINDLE_SERIES_GROUPING:Ljava/util/Set;

    new-array v2, v2, [Ljava/lang/Integer;

    aput-object v1, v2, v0

    aput-object v5, v2, v6

    const/4 v3, 0x5

    .line 21
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    .line 18
    invoke-static {v2}, Lkotlin/collections/SetsKt;->setOf([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v2

    sput-object v2, Lcom/amazon/kcp/utils/ModelContentGroupings;->COMICS_NARRATIVES_GROUPING:Ljava/util/Set;

    new-array v2, v4, [Ljava/lang/Integer;

    aput-object v1, v2, v0

    aput-object v5, v2, v6

    .line 24
    invoke-static {v2}, Lkotlin/collections/SetsKt;->setOf([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/amazon/kcp/utils/ModelContentGroupings;->NON_SERIES_GROUPING:Ljava/util/Set;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getBACK_ISSUES_GROUPING()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 7
    sget-object v0, Lcom/amazon/kcp/utils/ModelContentGroupings;->BACK_ISSUES_GROUPING:Ljava/util/Set;

    return-object v0
.end method

.method public final getCOLLECTION_ITEMS_GROUPING()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 9
    sget-object v0, Lcom/amazon/kcp/utils/ModelContentGroupings;->COLLECTION_ITEMS_GROUPING:Ljava/util/Set;

    return-object v0
.end method

.method public final getCOMICS_NARRATIVES_GROUPING()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 17
    sget-object v0, Lcom/amazon/kcp/utils/ModelContentGroupings;->COMICS_NARRATIVES_GROUPING:Ljava/util/Set;

    return-object v0
.end method

.method public final getKINDLE_SERIES_GROUPING()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 11
    sget-object v0, Lcom/amazon/kcp/utils/ModelContentGroupings;->KINDLE_SERIES_GROUPING:Ljava/util/Set;

    return-object v0
.end method

.method public final getNON_SERIES_GROUPING()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 24
    sget-object v0, Lcom/amazon/kcp/utils/ModelContentGroupings;->NON_SERIES_GROUPING:Ljava/util/Set;

    return-object v0
.end method
