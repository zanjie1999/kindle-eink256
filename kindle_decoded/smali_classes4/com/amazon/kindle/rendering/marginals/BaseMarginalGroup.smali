.class public abstract Lcom/amazon/kindle/rendering/marginals/BaseMarginalGroup;
.super Ljava/lang/Object;
.source "MarginalGroupImplementations.kt"

# interfaces
.implements Lcom/amazon/kindle/rendering/marginals/MarginalGroup;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nMarginalGroupImplementations.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MarginalGroupImplementations.kt\ncom/amazon/kindle/rendering/marginals/BaseMarginalGroup\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,380:1\n1819#2,2:381\n1819#2,2:383\n1819#2,2:385\n1819#2,2:387\n*E\n*S KotlinDebug\n*F\n+ 1 MarginalGroupImplementations.kt\ncom/amazon/kindle/rendering/marginals/BaseMarginalGroup\n*L\n40#1,2:381\n41#1,2:383\n46#1,2:385\n49#1,2:387\n*E\n"
.end annotation


# instance fields
.field private final allViewSettings:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amazon/krf/platform/ViewSettings;",
            ">;"
        }
    .end annotation
.end field

.field private isVisible:Z


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amazon/kindle/rendering/marginals/BaseMarginalGroup;->allViewSettings:Ljava/util/List;

    const/4 v0, 0x1

    .line 38
    iput-boolean v0, p0, Lcom/amazon/kindle/rendering/marginals/BaseMarginalGroup;->isVisible:Z

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 31
    invoke-direct {p0}, Lcom/amazon/kindle/rendering/marginals/BaseMarginalGroup;-><init>()V

    return-void
.end method


# virtual methods
.method protected final getAllViewSettings()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/amazon/krf/platform/ViewSettings;",
            ">;"
        }
    .end annotation

    .line 37
    iget-object v0, p0, Lcom/amazon/kindle/rendering/marginals/BaseMarginalGroup;->allViewSettings:Ljava/util/List;

    return-object v0
.end method

.method public isVisible()Z
    .locals 1

    .line 38
    iget-boolean v0, p0, Lcom/amazon/kindle/rendering/marginals/BaseMarginalGroup;->isVisible:Z

    return v0
.end method

.method public setColorTheme(Lcom/amazon/krf/platform/theme/ColorTheme;I)V
    .locals 1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const-string p1, "Default"

    .line 44
    invoke-static {p1}, Lcom/amazon/krf/platform/theme/ColorThemeRepository;->getColorThemeByName(Ljava/lang/String;)Lcom/amazon/krf/platform/theme/ColorTheme;

    move-result-object p1

    :goto_0
    const-string v0, "ink"

    .line 45
    invoke-virtual {p1, v0, p2}, Lcom/amazon/krf/platform/theme/ColorTheme;->setColor(Ljava/lang/String;I)Lcom/amazon/krf/platform/theme/ColorTheme;

    .line 46
    iget-object p2, p0, Lcom/amazon/kindle/rendering/marginals/BaseMarginalGroup;->allViewSettings:Ljava/util/List;

    .line 385
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/krf/platform/ViewSettings;

    .line 46
    invoke-virtual {v0, p1}, Lcom/amazon/krf/platform/ViewSettings;->setColorTheme(Lcom/amazon/krf/platform/theme/ColorTheme;)V

    goto :goto_1

    :cond_1
    return-void
.end method

.method public setFont(Ljava/lang/String;)V
    .locals 2

    const-string v0, "font"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 40
    iget-object v0, p0, Lcom/amazon/kindle/rendering/marginals/BaseMarginalGroup;->allViewSettings:Ljava/util/List;

    .line 381
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/krf/platform/ViewSettings;

    .line 40
    invoke-virtual {v1, p1}, Lcom/amazon/krf/platform/ViewSettings;->setDefaultFontFace(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setFontSize(Lcom/amazon/krf/platform/ViewSettings$MeasureValue;)V
    .locals 2

    const-string v0, "fontSize"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    iget-object v0, p0, Lcom/amazon/kindle/rendering/marginals/BaseMarginalGroup;->allViewSettings:Ljava/util/List;

    .line 383
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/krf/platform/ViewSettings;

    .line 41
    invoke-virtual {v1, p1}, Lcom/amazon/krf/platform/ViewSettings;->setFontSize(Lcom/amazon/krf/platform/ViewSettings$MeasureValue;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setTopMargin(Lcom/amazon/krf/platform/ViewSettings$MeasureValue;)V
    .locals 2

    const-string v0, "topMargin"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 49
    iget-object v0, p0, Lcom/amazon/kindle/rendering/marginals/BaseMarginalGroup;->allViewSettings:Ljava/util/List;

    .line 387
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/krf/platform/ViewSettings;

    .line 50
    invoke-virtual {v1, p1}, Lcom/amazon/krf/platform/ViewSettings;->setTopMargin(Lcom/amazon/krf/platform/ViewSettings$MeasureValue;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setVisible(Z)V
    .locals 0

    .line 38
    iput-boolean p1, p0, Lcom/amazon/kindle/rendering/marginals/BaseMarginalGroup;->isVisible:Z

    return-void
.end method
