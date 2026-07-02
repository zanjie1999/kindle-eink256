.class public final Lcom/amazon/kcp/reader/ui/DisplayMaskAwareColumnConfig;
.super Lcom/amazon/kcp/reader/ui/DefaultColumnConfig;
.source "ReaderColumnConfig.kt"


# instance fields
.field private final foldUtil:Lcom/amazon/kindle/displaymask/DisplayMaskUtils;


# direct methods
.method public constructor <init>(Lcom/amazon/kindle/displaymask/DisplayMaskUtils;)V
    .locals 1

    const-string v0, "foldUtil"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 113
    invoke-direct {p0}, Lcom/amazon/kcp/reader/ui/DefaultColumnConfig;-><init>()V

    iput-object p1, p0, Lcom/amazon/kcp/reader/ui/DisplayMaskAwareColumnConfig;->foldUtil:Lcom/amazon/kindle/displaymask/DisplayMaskUtils;

    return-void
.end method


# virtual methods
.method public getMinimumColumnSpacing(Landroid/content/Context;)I
    .locals 4

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 115
    invoke-super {p0, p1}, Lcom/amazon/kcp/reader/ui/DefaultColumnConfig;->getMinimumColumnSpacing(Landroid/content/Context;)I

    move-result v0

    .line 117
    iget-object v1, p0, Lcom/amazon/kcp/reader/ui/DisplayMaskAwareColumnConfig;->foldUtil:Lcom/amazon/kindle/displaymask/DisplayMaskUtils;

    invoke-interface {v1, p1}, Lcom/amazon/kindle/displaymask/DisplayMaskUtils;->getNonFunctionalAreas(Landroid/content/Context;)Ljava/util/List;

    move-result-object p1

    .line 118
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    if-eqz v1, :cond_1

    .line 119
    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/Rect;

    .line 120
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v3

    if-le v1, v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_1

    .line 122
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result p1

    add-int/2addr v0, p1

    :cond_1
    return v0
.end method

.method public getMultiColumnStatus(ILandroid/content/Context;Lcom/amazon/kindle/model/content/ILocalBookItem;)Lcom/amazon/kcp/reader/ui/MultiColumnStatus;
    .locals 1

    const-string v0, "context"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "book"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 148
    invoke-super {p0, p1, p2, p3}, Lcom/amazon/kcp/reader/ui/DefaultColumnConfig;->getMultiColumnStatus(ILandroid/content/Context;Lcom/amazon/kindle/model/content/ILocalBookItem;)Lcom/amazon/kcp/reader/ui/MultiColumnStatus;

    move-result-object p1

    .line 149
    iget-object p3, p0, Lcom/amazon/kcp/reader/ui/DisplayMaskAwareColumnConfig;->foldUtil:Lcom/amazon/kindle/displaymask/DisplayMaskUtils;

    invoke-interface {p3, p2}, Lcom/amazon/kindle/displaymask/DisplayMaskUtils;->getNonFunctionalAreas(Landroid/content/Context;)Ljava/util/List;

    move-result-object p2

    .line 151
    sget-object p3, Lcom/amazon/kcp/reader/ui/MultiColumnStatus;->DISABLED:Lcom/amazon/kcp/reader/ui/MultiColumnStatus;

    if-eq p1, p3, :cond_1

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 154
    :cond_0
    sget-object p1, Lcom/amazon/kcp/reader/ui/MultiColumnStatus;->ENFORCED:Lcom/amazon/kcp/reader/ui/MultiColumnStatus;

    goto :goto_1

    .line 152
    :cond_1
    :goto_0
    sget-object p1, Lcom/amazon/kcp/reader/ui/MultiColumnStatus;->DISABLED:Lcom/amazon/kcp/reader/ui/MultiColumnStatus;

    :goto_1
    return-object p1
.end method

.method public getSuggestedColumnSpacing(Landroid/content/Context;Lcom/amazon/android/docviewer/KindleDocLineSettings;Lcom/amazon/android/docviewer/KindleDocLineSettings$Margin;)I
    .locals 2

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "lineSettings"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "margin"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 130
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/DisplayMaskAwareColumnConfig;->foldUtil:Lcom/amazon/kindle/displaymask/DisplayMaskUtils;

    invoke-interface {v0, p1}, Lcom/amazon/kindle/displaymask/DisplayMaskUtils;->getNonFunctionalAreas(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    .line 131
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Rect;

    invoke-static {v1}, Lcom/amazon/kindle/displaymask/DisplayMaskUtilsKt;->isVertical(Landroid/graphics/Rect;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    .line 143
    invoke-virtual {p2, p3, p1}, Lcom/amazon/android/docviewer/KindleDocLineSettings;->getCalculatedHorizontalMargins(Lcom/amazon/android/docviewer/KindleDocLineSettings$Margin;I)I

    move-result p1

    mul-int/lit8 p1, p1, 0x2

    .line 144
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/graphics/Rect;

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result p2

    add-int/2addr p1, p2

    return p1

    .line 132
    :cond_1
    :goto_0
    invoke-super {p0, p1, p2, p3}, Lcom/amazon/kcp/reader/ui/DefaultColumnConfig;->getSuggestedColumnSpacing(Landroid/content/Context;Lcom/amazon/android/docviewer/KindleDocLineSettings;Lcom/amazon/android/docviewer/KindleDocLineSettings$Margin;)I

    move-result p1

    return p1
.end method
