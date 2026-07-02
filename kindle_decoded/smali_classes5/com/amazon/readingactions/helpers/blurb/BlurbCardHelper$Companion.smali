.class public final Lcom/amazon/readingactions/helpers/blurb/BlurbCardHelper$Companion;
.super Ljava/lang/Object;
.source "BlurbCardHelper.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/readingactions/helpers/blurb/BlurbCardHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nBlurbCardHelper.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BlurbCardHelper.kt\ncom/amazon/readingactions/helpers/blurb/BlurbCardHelper$Companion\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,40:1\n1405#2,3:41\n*E\n*S KotlinDebug\n*F\n+ 1 BlurbCardHelper.kt\ncom/amazon/readingactions/helpers/blurb/BlurbCardHelper$Companion\n*L\n23#1,3:41\n*E\n"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 7
    invoke-direct {p0}, Lcom/amazon/readingactions/helpers/blurb/BlurbCardHelper$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final checkAndFilterLayoutModelForBlurbCardExperiment(Lcom/amazon/ea/model/layout/LayoutModel;)V
    .locals 7

    const-string v0, "layoutModel"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    invoke-virtual {p1}, Lcom/amazon/ea/model/layout/LayoutModel;->getWidgets()Ljava/util/List;

    move-result-object v0

    const-string v1, "layoutModel.widgets"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    instance-of v2, v0, Ljava/util/Collection;

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    const/4 v3, 0x0

    goto :goto_2

    .line 42
    :cond_1
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazon/ea/model/widget/WidgetModel;

    .line 25
    iget-object v5, v2, Lcom/amazon/ea/model/widget/WidgetModel;->id:Ljava/lang/String;

    const-string v6, "editorsPickBookGridWidget"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    iget-object v2, v2, Lcom/amazon/ea/model/widget/WidgetModel;->id:Ljava/lang/String;

    const-string v5, "editorsPickBlurbCardWidget"

    invoke-static {v2, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_0

    :cond_3
    const/4 v2, 0x0

    goto :goto_1

    :cond_4
    :goto_0
    const/4 v2, 0x1

    :goto_1
    if-eqz v2, :cond_2

    :goto_2
    if-eqz v3, :cond_8

    .line 28
    sget-object v0, Lcom/amazon/readingactions/helpers/blurb/BlurbWeblabManager;->Companion:Lcom/amazon/readingactions/helpers/blurb/BlurbWeblabManager$Companion;

    invoke-virtual {v0}, Lcom/amazon/readingactions/helpers/blurb/BlurbWeblabManager$Companion;->getBlurbExperimentWeblabTreatment()Ljava/lang/String;

    move-result-object v0

    .line 29
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/16 v3, 0xa5d

    if-eq v2, v3, :cond_6

    const/16 v3, 0xa5e

    if-eq v2, v3, :cond_5

    goto :goto_3

    :cond_5
    const-string v2, "T2"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 31
    invoke-virtual {p1}, Lcom/amazon/ea/model/layout/LayoutModel;->getWidgets()Ljava/util/List;

    move-result-object p1

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/amazon/readingactions/helpers/blurb/BlurbCardHelper$Companion$checkAndFilterLayoutModelForBlurbCardExperiment$2;->INSTANCE:Lcom/amazon/readingactions/helpers/blurb/BlurbCardHelper$Companion$checkAndFilterLayoutModelForBlurbCardExperiment$2;

    invoke-static {p1, v0}, Lkotlin/collections/CollectionsKt;->removeAll(Ljava/util/List;Lkotlin/jvm/functions/Function1;)Z

    goto :goto_4

    :cond_6
    const-string v2, "T1"

    .line 29
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 30
    invoke-virtual {p1}, Lcom/amazon/ea/model/layout/LayoutModel;->getWidgets()Ljava/util/List;

    move-result-object p1

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/amazon/readingactions/helpers/blurb/BlurbCardHelper$Companion$checkAndFilterLayoutModelForBlurbCardExperiment$1;->INSTANCE:Lcom/amazon/readingactions/helpers/blurb/BlurbCardHelper$Companion$checkAndFilterLayoutModelForBlurbCardExperiment$1;

    invoke-static {p1, v0}, Lkotlin/collections/CollectionsKt;->removeAll(Ljava/util/List;Lkotlin/jvm/functions/Function1;)Z

    goto :goto_4

    .line 32
    :cond_7
    :goto_3
    invoke-virtual {p1}, Lcom/amazon/ea/model/layout/LayoutModel;->getWidgets()Ljava/util/List;

    move-result-object p1

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/amazon/readingactions/helpers/blurb/BlurbCardHelper$Companion$checkAndFilterLayoutModelForBlurbCardExperiment$3;->INSTANCE:Lcom/amazon/readingactions/helpers/blurb/BlurbCardHelper$Companion$checkAndFilterLayoutModelForBlurbCardExperiment$3;

    invoke-static {p1, v0}, Lkotlin/collections/CollectionsKt;->removeAll(Ljava/util/List;Lkotlin/jvm/functions/Function1;)Z

    :cond_8
    :goto_4
    return-void
.end method

.method public final isBlurbCardWidget(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    const-string v0, "id"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "type"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "editorsPickBookGridWidget"

    .line 18
    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "editorsPickBlurbCardWidget"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    const-string p1, "blurbCard"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method
