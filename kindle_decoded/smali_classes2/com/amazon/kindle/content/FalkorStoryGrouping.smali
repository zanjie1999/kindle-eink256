.class public final Lcom/amazon/kindle/content/FalkorStoryGrouping;
.super Ljava/lang/Object;
.source "GroupingQueryProvider.kt"

# interfaces
.implements Lcom/amazon/kindle/content/GroupingQueryProvider;


# static fields
.field public static final INSTANCE:Lcom/amazon/kindle/content/FalkorStoryGrouping;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 46
    new-instance v0, Lcom/amazon/kindle/content/FalkorStoryGrouping;

    invoke-direct {v0}, Lcom/amazon/kindle/content/FalkorStoryGrouping;-><init>()V

    sput-object v0, Lcom/amazon/kindle/content/FalkorStoryGrouping;->INSTANCE:Lcom/amazon/kindle/content/FalkorStoryGrouping;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getVisibleGroupItemsQuery(Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    .line 61
    new-instance v0, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v0}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 62
    sget-object p1, Lcom/amazon/kindle/content/dao/LibraryContentDAO;->JOINED_KINDLECONTENT_USERCONTENT:Ljava/lang/String;

    invoke-virtual {v0, p1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    const/4 p1, 0x1

    new-array v1, p1, [Ljava/lang/String;

    .line 64
    sget-object v2, Lcom/amazon/kindle/content/ContentMetadataField;->ID:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 65
    sget-object v2, Lkotlin/jvm/internal/StringCompanionObject;->INSTANCE:Lkotlin/jvm/internal/StringCompanionObject;

    new-array v2, p1, [Ljava/lang/Object;

    sget-object v4, Lcom/amazon/kindle/content/ContentMetadataField;->IS_FALKOR_EPISODE:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-virtual {v4}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v2, p1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    const-string v2, "%s = 1"

    invoke-static {v2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string p1, "java.lang.String.format(format, *args)"

    invoke-static {v2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 63
    invoke-virtual/range {v0 .. v6}, Landroid/database/sqlite/SQLiteQueryBuilder;->buildQuery([Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "builder.buildQuery(\n    \u2026  null, null, null, null)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public getVisibleGroupItemsQuerySelectionCount()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getVisibleGroupsQuery(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    const-string v0, "extraProjectionIn"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50
    new-instance v1, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v1}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 51
    sget-object v0, Lcom/amazon/kindle/content/dao/LibraryContentDAO;->JOINED_GROUPITEMS_KINDLECONTENT:Ljava/lang/String;

    invoke-virtual {v1, v0}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    .line 53
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

    .line 54
    sget-object v3, Lkotlin/jvm/internal/StringCompanionObject;->INSTANCE:Lkotlin/jvm/internal/StringCompanionObject;

    new-array v3, v0, [Ljava/lang/Object;

    sget-object v5, Lcom/amazon/kindle/content/ContentMetadataField;->IS_FALKOR_EPISODE:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-virtual {v5}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v3, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    const-string v3, "SUM(%s) > 0"

    invoke-static {v3, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    const-string v0, "java.lang.String.format(format, *args)"

    invoke-static {v5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v3, p1

    move-object v4, p4

    move-object v6, p2

    move-object v7, p3

    .line 52
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

    const-string v0, "FalkorStoryGrouping"

    return-object v0
.end method
