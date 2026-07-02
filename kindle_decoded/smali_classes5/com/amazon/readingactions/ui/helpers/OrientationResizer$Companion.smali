.class public final Lcom/amazon/readingactions/ui/helpers/OrientationResizer$Companion;
.super Ljava/lang/Object;
.source "OrientationResizer.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/readingactions/ui/helpers/OrientationResizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nOrientationResizer.kt\nKotlin\n*S Kotlin\n*F\n+ 1 OrientationResizer.kt\ncom/amazon/readingactions/ui/helpers/OrientationResizer$Companion\n*L\n1#1,54:1\n*E\n"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 10
    invoke-direct {p0}, Lcom/amazon/readingactions/ui/helpers/OrientationResizer$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final setAlignmentOrientationListener(Landroid/content/Context;Landroid/view/View;Lcom/amazon/readingactions/helpers/AlignmentChangeDelegate;)V
    .locals 9

    const-string/jumbo v0, "view"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "alignmentChangeDelegate"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p1, :cond_1

    .line 46
    new-instance v0, Lcom/amazon/readingactions/helpers/OrientationBasedViewResizer;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, v0

    move-object v2, p1

    move-object v3, p2

    move-object v8, p3

    invoke-direct/range {v1 .. v8}, Lcom/amazon/readingactions/helpers/OrientationBasedViewResizer;-><init>(Landroid/content/Context;Landroid/view/View;ZZZZLcom/amazon/readingactions/helpers/AlignmentChangeDelegate;)V

    .line 47
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const-string p2, "it.resources"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 p2, 0x1

    if-ne p1, p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    .line 48
    :goto_0
    invoke-virtual {v0, p2}, Lcom/amazon/readingactions/helpers/OrientationBasedViewResizer;->setAlignment(Z)V

    .line 49
    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->enable()V

    :cond_1
    return-void
.end method

.method public final setPaddingOrientationListener(Landroid/content/Context;Landroid/view/View;)V
    .locals 9

    const-string/jumbo v0, "view"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p1, :cond_1

    .line 32
    new-instance v0, Lcom/amazon/readingactions/helpers/OrientationBasedViewResizer;

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v1, v0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v1 .. v8}, Lcom/amazon/readingactions/helpers/OrientationBasedViewResizer;-><init>(Landroid/content/Context;Landroid/view/View;ZZZZLcom/amazon/readingactions/helpers/AlignmentChangeDelegate;)V

    .line 33
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const-string p2, "it.resources"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 p2, 0x1

    if-ne p1, p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    .line 34
    :goto_0
    invoke-virtual {v0, p2}, Lcom/amazon/readingactions/helpers/OrientationBasedViewResizer;->setAsymmetricPadding(Z)V

    .line 35
    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->enable()V

    :cond_1
    return-void
.end method

.method public final setWidthOrientationListener(Landroid/content/Context;Landroid/view/View;)V
    .locals 9

    const-string/jumbo v0, "view"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p1, :cond_1

    .line 18
    new-instance v0, Lcom/amazon/readingactions/helpers/OrientationBasedViewResizer;

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v1, v0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v1 .. v8}, Lcom/amazon/readingactions/helpers/OrientationBasedViewResizer;-><init>(Landroid/content/Context;Landroid/view/View;ZZZZLcom/amazon/readingactions/helpers/AlignmentChangeDelegate;)V

    .line 19
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const-string p2, "it.resources"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 p2, 0x1

    if-ne p1, p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    .line 20
    :goto_0
    invoke-virtual {v0, p2}, Lcom/amazon/readingactions/helpers/OrientationBasedViewResizer;->setWidth(Z)V

    .line 21
    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->enable()V

    :cond_1
    return-void
.end method
