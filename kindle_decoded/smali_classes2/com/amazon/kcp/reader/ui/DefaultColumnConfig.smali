.class public Lcom/amazon/kcp/reader/ui/DefaultColumnConfig;
.super Ljava/lang/Object;
.source "ReaderColumnConfig.kt"

# interfaces
.implements Lcom/amazon/kcp/reader/ui/ColumnConfigProvider;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 165
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getMinimumColumnSpacing(Landroid/content/Context;)I
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 167
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/amazon/kindle/krl/R$dimen;->minimum_column_spacing:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    return p1
.end method

.method public getMultiColumnStatus(ILandroid/content/Context;Lcom/amazon/kindle/model/content/ILocalBookItem;)Lcom/amazon/kcp/reader/ui/MultiColumnStatus;
    .locals 1

    const-string v0, "context"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "book"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 175
    invoke-static {p3}, Lcom/amazon/kcp/reader/ui/ReaderColumnConfigKt;->access$isMultiColumnSupported(Lcom/amazon/kindle/model/content/ILocalBookItem;)Z

    move-result p3

    if-nez p3, :cond_0

    .line 178
    sget-object p1, Lcom/amazon/kcp/reader/ui/MultiColumnStatus;->DISABLED:Lcom/amazon/kcp/reader/ui/MultiColumnStatus;

    return-object p1

    :cond_0
    if-eqz p1, :cond_1

    goto :goto_0

    .line 184
    :cond_1
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const-string p2, "context.resources"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    :goto_0
    const/4 p2, 0x2

    if-eq p1, p2, :cond_2

    .line 188
    sget-object p1, Lcom/amazon/kcp/reader/ui/MultiColumnStatus;->DISABLED:Lcom/amazon/kcp/reader/ui/MultiColumnStatus;

    return-object p1

    .line 192
    :cond_2
    sget-object p1, Lcom/amazon/kcp/reader/ui/MultiColumnStatus;->USER_SPECIFIED:Lcom/amazon/kcp/reader/ui/MultiColumnStatus;

    return-object p1
.end method

.method public getSuggestedColumnSpacing(Landroid/content/Context;Lcom/amazon/android/docviewer/KindleDocLineSettings;Lcom/amazon/android/docviewer/KindleDocLineSettings$Margin;)I
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "lineSettings"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "margin"

    invoke-static {p3, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 171
    invoke-virtual {p2, p3}, Lcom/amazon/android/docviewer/KindleDocLineSettings;->twoPageMarginTypeToValue(Lcom/amazon/android/docviewer/KindleDocLineSettings$Margin;)I

    move-result p1

    mul-int/lit8 p1, p1, 0x2

    return p1
.end method
