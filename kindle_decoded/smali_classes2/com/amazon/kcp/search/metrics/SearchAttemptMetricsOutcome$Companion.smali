.class public final Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsOutcome$Companion;
.super Ljava/lang/Object;
.source "SearchAttemptMetricsOutcome.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsOutcome;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 21
    invoke-direct {p0}, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsOutcome$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final initialize(Ljava/util/UUID;Ljava/util/UUID;Lcom/amazon/kcp/search/metrics/LibrarySearchOutcome;ILjava/lang/String;I)Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsOutcome;
    .locals 14

    const-string v0, "searchId"

    move-object v2, p1

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "searchSessionId"

    move-object/from16 v3, p2

    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "outcome"

    move-object/from16 v4, p3

    invoke-static {v4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    new-instance v0, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsOutcome;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/16 v12, 0x3c0

    const/4 v13, 0x0

    move-object v1, v0

    move/from16 v5, p4

    move-object/from16 v6, p5

    move/from16 v7, p6

    invoke-direct/range {v1 .. v13}, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsOutcome;-><init>(Ljava/util/UUID;Ljava/util/UUID;Lcom/amazon/kcp/search/metrics/LibrarySearchOutcome;ILjava/lang/String;ILjava/lang/String;Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsSection$ItemType;Ljava/lang/Integer;Ljava/lang/Integer;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0
.end method
