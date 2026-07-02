.class public final Lcom/amazon/kcp/home/widget/resume/LargeLibraryResumeWidgetProvider$LargeLibraryResumeAdapter;
.super Lcom/amazon/kcp/library/FastRecyclerAdapter;
.source "LargeLibraryResumeWidgetProvider.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/home/widget/resume/LargeLibraryResumeWidgetProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "LargeLibraryResumeAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/amazon/kcp/library/FastRecyclerAdapter<",
        "Lcom/amazon/kindle/observablemodel/ItemID;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/home/widget/resume/LargeLibraryResumeWidgetProvider;


# direct methods
.method public constructor <init>(Lcom/amazon/kcp/home/widget/resume/LargeLibraryResumeWidgetProvider;Landroid/app/Activity;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            ")V"
        }
    .end annotation

    const-string v0, "activity"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 231
    iput-object p1, p0, Lcom/amazon/kcp/home/widget/resume/LargeLibraryResumeWidgetProvider$LargeLibraryResumeAdapter;->this$0:Lcom/amazon/kcp/home/widget/resume/LargeLibraryResumeWidgetProvider;

    const/4 p1, 0x0

    invoke-direct {p0, p2, p1}, Lcom/amazon/kcp/library/FastRecyclerAdapter;-><init>(Landroid/app/Activity;Landroid/view/ActionMode$Callback;)V

    return-void
.end method

.method public static synthetic applyFilter$LargeLibraryImplementation_release$default(Lcom/amazon/kcp/home/widget/resume/LargeLibraryResumeWidgetProvider$LargeLibraryResumeAdapter;Lcom/amazon/kcp/library/ILibraryDisplayItem;Lcom/amazon/kindle/content/ILibraryService;ILjava/lang/Object;)Lcom/amazon/kcp/library/ILibraryDisplayItem;
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    .line 261
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object p2

    const-string p3, "Utils.getFactory()"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p2}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getLibraryService()Lcom/amazon/kindle/content/ILibraryService;

    move-result-object p2

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/amazon/kcp/home/widget/resume/LargeLibraryResumeWidgetProvider$LargeLibraryResumeAdapter;->applyFilter$LargeLibraryImplementation_release(Lcom/amazon/kcp/library/ILibraryDisplayItem;Lcom/amazon/kindle/content/ILibraryService;)Lcom/amazon/kcp/library/ILibraryDisplayItem;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final applyFilter$LargeLibraryImplementation_release(Lcom/amazon/kcp/library/ILibraryDisplayItem;Lcom/amazon/kindle/content/ILibraryService;)Lcom/amazon/kcp/library/ILibraryDisplayItem;
    .locals 2

    const-string v0, "displayItem"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p2, :cond_1

    .line 262
    instance-of v0, p1, Lcom/amazon/kcp/library/GroupMetadataDisplayItem;

    if-eqz v0, :cond_1

    .line 263
    move-object v0, p1

    check-cast v0, Lcom/amazon/kcp/library/GroupMetadataDisplayItem;

    sget-object v1, Lcom/amazon/kcp/library/LibraryContentFilter;->CAROUSEL_ITEMS_FILTER:Lcom/amazon/kcp/library/LibraryContentFilter;

    invoke-virtual {v0, v1, p2}, Lcom/amazon/kcp/library/GroupMetadataDisplayItem;->applyFilter(Lcom/amazon/kcp/library/LibraryContentFilter;Lcom/amazon/kindle/content/ILibraryService;)Lcom/amazon/kcp/library/ILibraryDisplayItem;

    move-result-object p2

    if-eqz p2, :cond_0

    move-object p1, p2

    :cond_0
    const-string p2, "displayItem.applyFilter(\u2026ryService) ?: displayItem"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_1
    return-object p1
.end method

.method public bindView(Lcom/amazon/kcp/library/FastRecyclerViewHolder;Landroid/view/View;Landroid/content/Context;ILcom/amazon/kindle/observablemodel/ItemID;)V
    .locals 3

    const-string/jumbo p4, "viewHolder"

    invoke-static {p1, p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo p4, "view"

    invoke-static {p2, p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p4, "context"

    invoke-static {p3, p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p4, "item"

    invoke-static {p5, p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 244
    instance-of p4, p1, Lcom/amazon/kcp/library/fragments/LargeLibraryRecyclerViewHolder;

    const/4 v0, 0x0

    if-nez p4, :cond_0

    move-object p1, v0

    :cond_0
    check-cast p1, Lcom/amazon/kcp/library/fragments/LargeLibraryRecyclerViewHolder;

    if-eqz p1, :cond_1

    .line 245
    iget-object p4, p0, Lcom/amazon/kcp/home/widget/resume/LargeLibraryResumeWidgetProvider$LargeLibraryResumeAdapter;->this$0:Lcom/amazon/kcp/home/widget/resume/LargeLibraryResumeWidgetProvider;

    invoke-static {p4}, Lcom/amazon/kcp/home/widget/resume/LargeLibraryResumeWidgetProvider;->access$getDataProvider$p(Lcom/amazon/kcp/home/widget/resume/LargeLibraryResumeWidgetProvider;)Lcom/amazon/kcp/library/fragments/LargeLibraryCardDataProvider;

    move-result-object p4

    invoke-virtual {p4, p1, p5}, Lcom/amazon/kcp/library/fragments/LargeLibraryCardDataProvider;->registerItemDetailListener(Lcom/amazon/kindle/observablemodel/LibraryItemDetailListener;Lcom/amazon/kindle/observablemodel/ItemID;)V

    .line 246
    invoke-virtual {p1, p5}, Lcom/amazon/kcp/library/fragments/LargeLibraryRecyclerViewHolder;->setItemId(Lcom/amazon/kindle/observablemodel/ItemID;)V

    .line 247
    iget-object p1, p0, Lcom/amazon/kcp/home/widget/resume/LargeLibraryResumeWidgetProvider$LargeLibraryResumeAdapter;->this$0:Lcom/amazon/kcp/home/widget/resume/LargeLibraryResumeWidgetProvider;

    invoke-static {p1}, Lcom/amazon/kcp/home/widget/resume/LargeLibraryResumeWidgetProvider;->access$getRepository$p(Lcom/amazon/kcp/home/widget/resume/LargeLibraryResumeWidgetProvider;)Lcom/amazon/kcp/integrator/LargeLibraryRepositoryImpl;

    move-result-object p1

    new-instance p4, Lcom/amazon/kcp/integrator/PeriodicalArguments;

    const/4 v1, 0x0

    const/4 v2, 0x3

    invoke-direct {p4, v1, v0, v2, v0}, Lcom/amazon/kcp/integrator/PeriodicalArguments;-><init>(ZLcom/amazon/kindle/krx/content/IBook$ReadState;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    new-instance v1, Lcom/amazon/kcp/home/widget/resume/LargeLibraryResumeWidgetProvider$LargeLibraryResumeAdapter$bindView$$inlined$let$lambda$1;

    invoke-direct {v1, p0, p5, p3, p2}, Lcom/amazon/kcp/home/widget/resume/LargeLibraryResumeWidgetProvider$LargeLibraryResumeAdapter$bindView$$inlined$let$lambda$1;-><init>(Lcom/amazon/kcp/home/widget/resume/LargeLibraryResumeWidgetProvider$LargeLibraryResumeAdapter;Lcom/amazon/kindle/observablemodel/ItemID;Landroid/content/Context;Landroid/view/View;)V

    invoke-virtual {p1, v0, p5, p4, v1}, Lcom/amazon/kcp/integrator/LargeLibraryRepositoryImpl;->retrieveLibraryItemByID(Lcom/amazon/kcp/integrator/LibraryModelFormula;Lcom/amazon/kindle/observablemodel/ItemID;Lcom/amazon/kcp/integrator/PeriodicalArguments;Lcom/amazon/kcp/integrator/ILibraryRetrievalListener;)V

    :cond_1
    return-void
.end method

.method public bridge synthetic bindView(Lcom/amazon/kcp/library/FastRecyclerViewHolder;Landroid/view/View;Landroid/content/Context;ILjava/lang/Object;)V
    .locals 0

    .line 231
    check-cast p5, Lcom/amazon/kindle/observablemodel/ItemID;

    invoke-virtual/range {p0 .. p5}, Lcom/amazon/kcp/home/widget/resume/LargeLibraryResumeWidgetProvider$LargeLibraryResumeAdapter;->bindView(Lcom/amazon/kcp/library/FastRecyclerViewHolder;Landroid/view/View;Landroid/content/Context;ILcom/amazon/kindle/observablemodel/ItemID;)V

    return-void
.end method

.method public canSelectItem(Lcom/amazon/kindle/observablemodel/ItemID;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public bridge synthetic canSelectItem(Ljava/lang/Object;)Z
    .locals 0

    .line 231
    check-cast p1, Lcom/amazon/kindle/observablemodel/ItemID;

    invoke-virtual {p0, p1}, Lcom/amazon/kcp/home/widget/resume/LargeLibraryResumeWidgetProvider$LargeLibraryResumeAdapter;->canSelectItem(Lcom/amazon/kindle/observablemodel/ItemID;)Z

    move-result p1

    return p1
.end method

.method public getItem(I)Lcom/amazon/kindle/observablemodel/ItemID;
    .locals 1

    .line 281
    iget-object v0, p0, Lcom/amazon/kcp/home/widget/resume/LargeLibraryResumeWidgetProvider$LargeLibraryResumeAdapter;->this$0:Lcom/amazon/kcp/home/widget/resume/LargeLibraryResumeWidgetProvider;

    invoke-static {v0}, Lcom/amazon/kcp/home/widget/resume/LargeLibraryResumeWidgetProvider;->access$getDataProvider$p(Lcom/amazon/kcp/home/widget/resume/LargeLibraryResumeWidgetProvider;)Lcom/amazon/kcp/library/fragments/LargeLibraryCardDataProvider;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/amazon/kcp/library/fragments/LargeLibraryCardDataProvider;->getItem(I)Lcom/amazon/kindle/observablemodel/ItemID;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 0

    .line 231
    invoke-virtual {p0, p1}, Lcom/amazon/kcp/home/widget/resume/LargeLibraryResumeWidgetProvider$LargeLibraryResumeAdapter;->getItem(I)Lcom/amazon/kindle/observablemodel/ItemID;

    move-result-object p1

    return-object p1
.end method

.method public getItemCount()I
    .locals 2

    .line 279
    iget-object v0, p0, Lcom/amazon/kcp/home/widget/resume/LargeLibraryResumeWidgetProvider$LargeLibraryResumeAdapter;->this$0:Lcom/amazon/kcp/home/widget/resume/LargeLibraryResumeWidgetProvider;

    invoke-static {v0}, Lcom/amazon/kcp/home/widget/resume/LargeLibraryResumeWidgetProvider;->access$getDataProvider$p(Lcom/amazon/kcp/home/widget/resume/LargeLibraryResumeWidgetProvider;)Lcom/amazon/kcp/library/fragments/LargeLibraryCardDataProvider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/kcp/library/fragments/LargeLibraryCardDataProvider;->itemCount()I

    move-result v0

    const/16 v1, 0x32

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    return v0
.end method

.method public itemId(Lcom/amazon/kindle/observablemodel/ItemID;)J
    .locals 2

    const-string v0, "item"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 277
    iget-object v0, p0, Lcom/amazon/kcp/home/widget/resume/LargeLibraryResumeWidgetProvider$LargeLibraryResumeAdapter;->this$0:Lcom/amazon/kcp/home/widget/resume/LargeLibraryResumeWidgetProvider;

    invoke-static {v0}, Lcom/amazon/kcp/home/widget/resume/LargeLibraryResumeWidgetProvider;->access$getDataProvider$p(Lcom/amazon/kcp/home/widget/resume/LargeLibraryResumeWidgetProvider;)Lcom/amazon/kcp/library/fragments/LargeLibraryCardDataProvider;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/amazon/kcp/library/fragments/LargeLibraryCardDataProvider;->itemId(Lcom/amazon/kindle/observablemodel/ItemID;)J

    move-result-wide v0

    return-wide v0
.end method

.method public bridge synthetic itemId(Ljava/lang/Object;)J
    .locals 2

    .line 231
    check-cast p1, Lcom/amazon/kindle/observablemodel/ItemID;

    invoke-virtual {p0, p1}, Lcom/amazon/kcp/home/widget/resume/LargeLibraryResumeWidgetProvider$LargeLibraryResumeAdapter;->itemId(Lcom/amazon/kindle/observablemodel/ItemID;)J

    move-result-wide v0

    return-wide v0
.end method

.method public newView(Landroid/content/Context;Landroid/view/ViewGroup;I)Landroid/view/View;
    .locals 2

    const-string p3, "context"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo p3, "parent"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 237
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p3

    sget v0, Lcom/amazon/kindle/librarymodule/R$layout;->resume_cover:I

    const/4 v1, 0x0

    invoke-virtual {p3, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 238
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    sget v0, Lcom/amazon/kindle/librarymodule/R$dimen;->shoveler_default_cover_height:I

    invoke-virtual {p3, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p3

    .line 239
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/amazon/kindle/librarymodule/R$dimen;->shoveler_default_cover_width:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    .line 240
    invoke-static {p2, p3, p1}, Lcom/amazon/kcp/cover/LibraryCoverFactory;->setUpResumeCover(Landroid/view/View;II)Landroid/view/View;

    const-string p1, "LibraryCoverFactory.setU\u2026 coverHeight, coverWidth)"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p2
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 231
    invoke-virtual {p0, p1, p2}, Lcom/amazon/kcp/home/widget/resume/LargeLibraryResumeWidgetProvider$LargeLibraryResumeAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/amazon/kcp/library/FastRecyclerViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/amazon/kcp/library/FastRecyclerViewHolder;
    .locals 1

    const-string/jumbo v0, "parent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 233
    new-instance v0, Lcom/amazon/kcp/library/fragments/LargeLibraryRecyclerViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/amazon/kcp/library/FastRecyclerAdapter;->createView(Landroid/view/ViewGroup;I)Landroid/view/View;

    move-result-object p1

    invoke-direct {v0, p0, p1}, Lcom/amazon/kcp/library/fragments/LargeLibraryRecyclerViewHolder;-><init>(Lcom/amazon/kcp/library/FastRecyclerAdapter;Landroid/view/View;)V

    return-object v0
.end method

.method public recycleView(Lcom/amazon/kcp/library/FastRecyclerViewHolder;Landroid/view/View;I)V
    .locals 1

    const-string/jumbo p3, "viewHolder"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo p3, "view"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 268
    instance-of p3, p1, Lcom/amazon/kcp/library/fragments/LargeLibraryRecyclerViewHolder;

    if-nez p3, :cond_0

    const/4 p1, 0x0

    :cond_0
    check-cast p1, Lcom/amazon/kcp/library/fragments/LargeLibraryRecyclerViewHolder;

    if-eqz p1, :cond_1

    .line 269
    invoke-virtual {p1}, Lcom/amazon/kcp/library/fragments/LargeLibraryRecyclerViewHolder;->getItemId()Lcom/amazon/kindle/observablemodel/ItemID;

    move-result-object p3

    if-eqz p3, :cond_1

    .line 270
    iget-object v0, p0, Lcom/amazon/kcp/home/widget/resume/LargeLibraryResumeWidgetProvider$LargeLibraryResumeAdapter;->this$0:Lcom/amazon/kcp/home/widget/resume/LargeLibraryResumeWidgetProvider;

    invoke-static {v0}, Lcom/amazon/kcp/home/widget/resume/LargeLibraryResumeWidgetProvider;->access$getDataProvider$p(Lcom/amazon/kcp/home/widget/resume/LargeLibraryResumeWidgetProvider;)Lcom/amazon/kcp/library/fragments/LargeLibraryCardDataProvider;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/amazon/kcp/library/fragments/LargeLibraryCardDataProvider;->clearStableId(Lcom/amazon/kindle/observablemodel/ItemID;)V

    .line 271
    iget-object v0, p0, Lcom/amazon/kcp/home/widget/resume/LargeLibraryResumeWidgetProvider$LargeLibraryResumeAdapter;->this$0:Lcom/amazon/kcp/home/widget/resume/LargeLibraryResumeWidgetProvider;

    invoke-static {v0}, Lcom/amazon/kcp/home/widget/resume/LargeLibraryResumeWidgetProvider;->access$getRepository$p(Lcom/amazon/kcp/home/widget/resume/LargeLibraryResumeWidgetProvider;)Lcom/amazon/kcp/integrator/LargeLibraryRepositoryImpl;

    move-result-object v0

    invoke-virtual {v0, p1, p3}, Lcom/amazon/kcp/integrator/LargeLibraryRepositoryImpl;->unregisterItemDetailListener(Lcom/amazon/kindle/observablemodel/LibraryItemDetailListener;Lcom/amazon/kindle/observablemodel/ItemID;)V

    .line 274
    :cond_1
    invoke-static {p2}, Lcom/amazon/kcp/cover/LibraryCoverFactory;->recycleGridCover(Landroid/view/View;)V

    return-void
.end method
