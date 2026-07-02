.class public final Lcom/amazon/kcp/home/widget/resume/LargeLibraryResumeWidgetProvider$LargeLibraryResumeAdapter$bindView$$inlined$let$lambda$1;
.super Ljava/lang/Object;
.source "LargeLibraryResumeWidgetProvider.kt"

# interfaces
.implements Lcom/amazon/kcp/integrator/ILibraryRetrievalListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/home/widget/resume/LargeLibraryResumeWidgetProvider$LargeLibraryResumeAdapter;->bindView(Lcom/amazon/kcp/library/FastRecyclerViewHolder;Landroid/view/View;Landroid/content/Context;ILcom/amazon/kindle/observablemodel/ItemID;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/amazon/kcp/integrator/ILibraryRetrievalListener<",
        "Lcom/amazon/kcp/library/ILibraryDisplayItem;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic $context$inlined:Landroid/content/Context;

.field final synthetic $item$inlined:Lcom/amazon/kindle/observablemodel/ItemID;

.field final synthetic $view$inlined:Landroid/view/View;

.field final synthetic this$0:Lcom/amazon/kcp/home/widget/resume/LargeLibraryResumeWidgetProvider$LargeLibraryResumeAdapter;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/home/widget/resume/LargeLibraryResumeWidgetProvider$LargeLibraryResumeAdapter;Lcom/amazon/kindle/observablemodel/ItemID;Landroid/content/Context;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/amazon/kcp/home/widget/resume/LargeLibraryResumeWidgetProvider$LargeLibraryResumeAdapter$bindView$$inlined$let$lambda$1;->this$0:Lcom/amazon/kcp/home/widget/resume/LargeLibraryResumeWidgetProvider$LargeLibraryResumeAdapter;

    iput-object p2, p0, Lcom/amazon/kcp/home/widget/resume/LargeLibraryResumeWidgetProvider$LargeLibraryResumeAdapter$bindView$$inlined$let$lambda$1;->$item$inlined:Lcom/amazon/kindle/observablemodel/ItemID;

    iput-object p3, p0, Lcom/amazon/kcp/home/widget/resume/LargeLibraryResumeWidgetProvider$LargeLibraryResumeAdapter$bindView$$inlined$let$lambda$1;->$context$inlined:Landroid/content/Context;

    iput-object p4, p0, Lcom/amazon/kcp/home/widget/resume/LargeLibraryResumeWidgetProvider$LargeLibraryResumeAdapter$bindView$$inlined$let$lambda$1;->$view$inlined:Landroid/view/View;

    .line 247
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onItemRetrieved(Lcom/amazon/kcp/integrator/ILargeLibraryDisplayItem;)V
    .locals 0

    .line 247
    check-cast p1, Lcom/amazon/kcp/library/ILibraryDisplayItem;

    invoke-virtual {p0, p1}, Lcom/amazon/kcp/home/widget/resume/LargeLibraryResumeWidgetProvider$LargeLibraryResumeAdapter$bindView$$inlined$let$lambda$1;->onItemRetrieved(Lcom/amazon/kcp/library/ILibraryDisplayItem;)V

    return-void
.end method

.method public onItemRetrieved(Lcom/amazon/kcp/library/ILibraryDisplayItem;)V
    .locals 11

    const-string v0, "libraryItem"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 249
    iget-object v0, p0, Lcom/amazon/kcp/home/widget/resume/LargeLibraryResumeWidgetProvider$LargeLibraryResumeAdapter$bindView$$inlined$let$lambda$1;->$context$inlined:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/amazon/kindle/librarymodule/R$dimen;->shoveler_default_cover_height:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v6

    .line 250
    iget-object v0, p0, Lcom/amazon/kcp/home/widget/resume/LargeLibraryResumeWidgetProvider$LargeLibraryResumeAdapter$bindView$$inlined$let$lambda$1;->$context$inlined:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/amazon/kindle/librarymodule/R$dimen;->shoveler_default_cover_width:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v7

    .line 251
    iget-object v0, p0, Lcom/amazon/kcp/home/widget/resume/LargeLibraryResumeWidgetProvider$LargeLibraryResumeAdapter$bindView$$inlined$let$lambda$1;->this$0:Lcom/amazon/kcp/home/widget/resume/LargeLibraryResumeWidgetProvider$LargeLibraryResumeAdapter;

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-static {v0, p1, v1, v2, v1}, Lcom/amazon/kcp/home/widget/resume/LargeLibraryResumeWidgetProvider$LargeLibraryResumeAdapter;->applyFilter$LargeLibraryImplementation_release$default(Lcom/amazon/kcp/home/widget/resume/LargeLibraryResumeWidgetProvider$LargeLibraryResumeAdapter;Lcom/amazon/kcp/library/ILibraryDisplayItem;Lcom/amazon/kindle/content/ILibraryService;ILjava/lang/Object;)Lcom/amazon/kcp/library/ILibraryDisplayItem;

    move-result-object v3

    .line 252
    iget-object v2, p0, Lcom/amazon/kcp/home/widget/resume/LargeLibraryResumeWidgetProvider$LargeLibraryResumeAdapter$bindView$$inlined$let$lambda$1;->$context$inlined:Landroid/content/Context;

    iget-object v4, p0, Lcom/amazon/kcp/home/widget/resume/LargeLibraryResumeWidgetProvider$LargeLibraryResumeAdapter$bindView$$inlined$let$lambda$1;->$view$inlined:Landroid/view/View;

    .line 253
    sget-object v10, Lcom/amazon/kcp/cover/badge/BadgeSource;->HOME:Lcom/amazon/kcp/cover/badge/BadgeSource;

    const/4 v5, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 252
    invoke-static/range {v2 .. v10}, Lcom/amazon/kcp/cover/LibraryCoverFactory;->bindResumeCover(Landroid/content/Context;Lcom/amazon/kcp/library/ILibraryDisplayItem;Landroid/view/View;ZIIIILcom/amazon/kcp/cover/badge/BadgeSource;)Landroid/view/View;

    return-void
.end method
