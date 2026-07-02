.class public final Lcom/amazon/kcp/library/CUFilterItem;
.super Lcom/amazon/kcp/library/LibraryFilterItem;
.source "CUFilterItem.kt"


# direct methods
.method public constructor <init>(Ljava/lang/String;ILcom/amazon/kcp/library/LibraryContentFilter;IIILcom/amazon/kcp/library/CUVisibilityStrategy;Lcom/amazon/kcp/library/LibraryFilterItem$FilterViewType;)V
    .locals 13

    const-string v0, "id"

    move-object v2, p1

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "constraint"

    move-object/from16 v4, p3

    invoke-static {v4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "comixologyVisibilityStrategy"

    move-object/from16 v10, p7

    invoke-static {v10, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "checked"

    move-object/from16 v11, p8

    invoke-static {v11, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v12, 0x1

    move-object v1, p0

    move v3, p2

    move/from16 v5, p4

    move/from16 v7, p5

    move/from16 v9, p6

    .line 13
    invoke-direct/range {v1 .. v12}, Lcom/amazon/kcp/library/LibraryFilterItem;-><init>(Ljava/lang/String;ILcom/amazon/kcp/library/LibraryContentFilter;I[Ljava/lang/Object;I[Ljava/lang/Object;ILcom/amazon/kcp/library/LibraryFilterItem$LibraryFilterVisibilityStrategy;Lcom/amazon/kcp/library/LibraryFilterItem$FilterViewType;Z)V

    return-void
.end method


# virtual methods
.method public getImageResId(Lcom/amazon/kindle/krx/theme/Theme;)I
    .locals 1

    const-string/jumbo v0, "theme"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    invoke-static {p1}, Lcom/amazon/kcp/util/LibraryUtils;->getCUBadgeDrawable(Lcom/amazon/kindle/krx/theme/Theme;)I

    move-result p1

    return p1
.end method
