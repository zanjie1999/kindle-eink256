.class public final Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsRecord$Companion;
.super Ljava/lang/Object;
.source "SearchAttemptMetricsRecord.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsRecord;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 34
    invoke-direct {p0}, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsRecord$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final initialize(Ljava/util/UUID;Ljava/util/UUID;)Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsRecord;
    .locals 24

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    const-string v0, "searchId"

    move-object/from16 v3, p1

    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "searchSessionId"

    move-object/from16 v3, p2

    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 43
    new-instance v23, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsRecord;

    move-object/from16 v0, v23

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const v21, 0xffffc

    const/16 v22, 0x0

    invoke-direct/range {v0 .. v22}, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsRecord;-><init>(Ljava/util/UUID;Ljava/util/UUID;Ljava/lang/String;Lcom/amazon/kcp/search/metrics/LibrarySearchOutcome;ILjava/util/List;Ljava/util/List;Ljava/util/List;IIIIILjava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v23
.end method
