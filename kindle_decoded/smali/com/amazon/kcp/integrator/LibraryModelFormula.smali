.class public final Lcom/amazon/kcp/integrator/LibraryModelFormula;
.super Ljava/lang/Object;
.source "LibraryModelFormula.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kcp/integrator/LibraryModelFormula$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/amazon/kcp/integrator/LibraryModelFormula$Companion;


# instance fields
.field private final content:Lcom/amazon/kindle/observablemodel/ModelContent;

.field private final filter:Lcom/amazon/kindle/observablemodel/ModelFilter;

.field private final sorting:Lcom/amazon/kindle/observablemodel/ModelSorting;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/amazon/kcp/integrator/LibraryModelFormula$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/amazon/kcp/integrator/LibraryModelFormula$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/amazon/kcp/integrator/LibraryModelFormula;->Companion:Lcom/amazon/kcp/integrator/LibraryModelFormula$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/amazon/kindle/observablemodel/ModelContent;Lcom/amazon/kindle/observablemodel/ModelFilter;Lcom/amazon/kindle/observablemodel/ModelSorting;)V
    .locals 1

    const-string v0, "content"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "filter"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "sorting"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/amazon/kcp/integrator/LibraryModelFormula;->content:Lcom/amazon/kindle/observablemodel/ModelContent;

    iput-object p2, p0, Lcom/amazon/kcp/integrator/LibraryModelFormula;->filter:Lcom/amazon/kindle/observablemodel/ModelFilter;

    iput-object p3, p0, Lcom/amazon/kcp/integrator/LibraryModelFormula;->sorting:Lcom/amazon/kindle/observablemodel/ModelSorting;

    return-void
.end method

.method private final modelContentWithAllCategories()Lcom/amazon/kindle/observablemodel/ModelContent;
    .locals 2

    .line 57
    iget-object v0, p0, Lcom/amazon/kcp/integrator/LibraryModelFormula;->content:Lcom/amazon/kindle/observablemodel/ModelContent;

    sget-object v1, Lcom/amazon/kcp/integrator/LibraryModelFormula;->Companion:Lcom/amazon/kcp/integrator/LibraryModelFormula$Companion;

    invoke-virtual {v1}, Lcom/amazon/kcp/integrator/LibraryModelFormula$Companion;->allContentCategories()Ljava/util/Set;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/kindle/observablemodel/ModelContent;->modelContentWithCategorySet(Ljava/util/Set;)Lcom/amazon/kindle/observablemodel/ModelContent;

    move-result-object v0

    const-string v1, "content.modelContentWith\u2026t(allContentCategories())"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public final modelFormulaWithAllContentCategories()Lcom/amazon/kcp/integrator/LibraryModelFormula;
    .locals 4

    .line 64
    new-instance v0, Lcom/amazon/kcp/integrator/LibraryModelFormula;

    invoke-direct {p0}, Lcom/amazon/kcp/integrator/LibraryModelFormula;->modelContentWithAllCategories()Lcom/amazon/kindle/observablemodel/ModelContent;

    move-result-object v1

    iget-object v2, p0, Lcom/amazon/kcp/integrator/LibraryModelFormula;->filter:Lcom/amazon/kindle/observablemodel/ModelFilter;

    iget-object v3, p0, Lcom/amazon/kcp/integrator/LibraryModelFormula;->sorting:Lcom/amazon/kindle/observablemodel/ModelSorting;

    invoke-direct {v0, v1, v2, v3}, Lcom/amazon/kcp/integrator/LibraryModelFormula;-><init>(Lcom/amazon/kindle/observablemodel/ModelContent;Lcom/amazon/kindle/observablemodel/ModelFilter;Lcom/amazon/kindle/observablemodel/ModelSorting;)V

    return-object v0
.end method

.method public final modelFormulaWithParentGroupID(Lcom/amazon/kindle/observablemodel/ItemID;)Lcom/amazon/kcp/integrator/LibraryModelFormula;
    .locals 3

    const-string/jumbo v0, "parent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 85
    iget-object v0, p0, Lcom/amazon/kcp/integrator/LibraryModelFormula;->content:Lcom/amazon/kindle/observablemodel/ModelContent;

    invoke-virtual {v0, p1}, Lcom/amazon/kindle/observablemodel/ModelContent;->modelContentWithParentGroup(Lcom/amazon/kindle/observablemodel/ItemID;)Lcom/amazon/kindle/observablemodel/ModelContent;

    move-result-object p1

    .line 87
    new-instance v0, Lcom/amazon/kcp/integrator/LibraryModelFormula;

    const-string/jumbo v1, "replace"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/amazon/kcp/integrator/LibraryModelFormula;->filter:Lcom/amazon/kindle/observablemodel/ModelFilter;

    iget-object v2, p0, Lcom/amazon/kcp/integrator/LibraryModelFormula;->sorting:Lcom/amazon/kindle/observablemodel/ModelSorting;

    invoke-direct {v0, p1, v1, v2}, Lcom/amazon/kcp/integrator/LibraryModelFormula;-><init>(Lcom/amazon/kindle/observablemodel/ModelContent;Lcom/amazon/kindle/observablemodel/ModelFilter;Lcom/amazon/kindle/observablemodel/ModelSorting;)V

    return-object v0
.end method

.method public final modelFormulaWithSorting(Lcom/amazon/kindle/observablemodel/ModelSorting;)Lcom/amazon/kcp/integrator/LibraryModelFormula;
    .locals 3

    const-string/jumbo v0, "replace"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 78
    new-instance v0, Lcom/amazon/kcp/integrator/LibraryModelFormula;

    iget-object v1, p0, Lcom/amazon/kcp/integrator/LibraryModelFormula;->content:Lcom/amazon/kindle/observablemodel/ModelContent;

    iget-object v2, p0, Lcom/amazon/kcp/integrator/LibraryModelFormula;->filter:Lcom/amazon/kindle/observablemodel/ModelFilter;

    invoke-direct {v0, v1, v2, p1}, Lcom/amazon/kcp/integrator/LibraryModelFormula;-><init>(Lcom/amazon/kindle/observablemodel/ModelContent;Lcom/amazon/kindle/observablemodel/ModelFilter;Lcom/amazon/kindle/observablemodel/ModelSorting;)V

    return-object v0
.end method
