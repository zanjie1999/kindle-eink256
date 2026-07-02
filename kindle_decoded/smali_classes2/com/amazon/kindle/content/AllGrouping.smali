.class public final Lcom/amazon/kindle/content/AllGrouping;
.super Ljava/lang/Object;
.source "GroupingQueryProvider.kt"

# interfaces
.implements Lcom/amazon/kindle/content/GroupingQueryProvider;


# static fields
.field public static final INSTANCE:Lcom/amazon/kindle/content/AllGrouping;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 103
    new-instance v0, Lcom/amazon/kindle/content/AllGrouping;

    invoke-direct {v0}, Lcom/amazon/kindle/content/AllGrouping;-><init>()V

    sput-object v0, Lcom/amazon/kindle/content/AllGrouping;->INSTANCE:Lcom/amazon/kindle/content/AllGrouping;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getVisibleGroupItemsQuery(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 118
    sget-object v0, Lcom/amazon/kindle/content/SeriesGrouping;->INSTANCE:Lcom/amazon/kindle/content/SeriesGrouping;

    invoke-virtual {v0, p1}, Lcom/amazon/kindle/content/SeriesGrouping;->getVisibleGroupItemsQuery(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 119
    sget-object v1, Lcom/amazon/kindle/content/FalkorStoryGrouping;->INSTANCE:Lcom/amazon/kindle/content/FalkorStoryGrouping;

    invoke-virtual {v1, p1}, Lcom/amazon/kindle/content/FalkorStoryGrouping;->getVisibleGroupItemsQuery(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 120
    sget-object v1, Lkotlin/jvm/internal/StringCompanionObject;->INSTANCE:Lkotlin/jvm/internal/StringCompanionObject;

    const/4 v1, 0x2

    new-array v2, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const/4 v0, 0x1

    aput-object p1, v2, v0

    invoke-static {v2, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    const-string v0, "%s UNION %s"

    invoke-static {v0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "java.lang.String.format(format, *args)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public getVisibleGroupItemsQuerySelectionCount()I
    .locals 2

    .line 123
    sget-object v0, Lcom/amazon/kindle/content/SeriesGrouping;->INSTANCE:Lcom/amazon/kindle/content/SeriesGrouping;

    invoke-virtual {v0}, Lcom/amazon/kindle/content/SeriesGrouping;->getVisibleGroupItemsQuerySelectionCount()I

    move-result v0

    sget-object v1, Lcom/amazon/kindle/content/FalkorStoryGrouping;->INSTANCE:Lcom/amazon/kindle/content/FalkorStoryGrouping;

    invoke-virtual {v1}, Lcom/amazon/kindle/content/FalkorStoryGrouping;->getVisibleGroupItemsQuerySelectionCount()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public getVisibleGroupsQuery(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    const-string v0, "extraProjectionIn"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 107
    new-instance v1, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v1}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 108
    sget-object v0, Lcom/amazon/kindle/content/dao/LibraryContentDAO;->JOINED_GROUPITEMS_KINDLECONTENT:Ljava/lang/String;

    invoke-virtual {v1, v0}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    .line 110
    sget-object v3, Lcom/amazon/kindle/content/ContentMetadataField;->GROUP_ID:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {v2, p4}, Lkotlin/collections/ArraysKt;->plus([Ljava/lang/Object;[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p4

    move-object v2, p4

    check-cast v2, [Ljava/lang/String;

    sget-object p4, Lcom/amazon/kindle/content/ContentMetadataField;->GROUP_ID:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-virtual {p4}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p4

    .line 111
    sget-object v3, Lkotlin/jvm/internal/StringCompanionObject;->INSTANCE:Lkotlin/jvm/internal/StringCompanionObject;

    new-array v3, v0, [Ljava/lang/Object;

    sget-object v5, Lcom/amazon/kindle/content/ContentMetadataField;->IS_FALKOR_EPISODE:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-virtual {v5}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v3, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    const-string v3, "COUNT(1) > 1 OR SUM(%s) > 0"

    invoke-static {v3, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    const-string v0, "java.lang.String.format(format, *args)"

    invoke-static {v5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v3, p1

    move-object v4, p4

    move-object v6, p2

    move-object v7, p3

    .line 109
    invoke-virtual/range {v1 .. v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->buildQuery([Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "builder.buildQuery(\n    \u2026        sortOrder, limit)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public getVisibleGroupsQuerySelectionCount()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "AllGrouping"

    return-object v0
.end method
