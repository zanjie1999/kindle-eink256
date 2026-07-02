.class public final Lcom/amazon/kcp/home/widget/resume/LargeLibraryResumeWidgetProvider$1;
.super Ljava/lang/Object;
.source "LargeLibraryResumeWidgetProvider.kt"

# interfaces
.implements Lcom/amazon/kcp/library/FastRecyclerItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/home/widget/resume/LargeLibraryResumeWidgetProvider;-><init>(Landroid/app/Activity;Lcom/amazon/kcp/library/fragments/RubyHomeFragment;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/amazon/kcp/library/FastRecyclerItemClickListener<",
        "Lcom/amazon/kindle/observablemodel/ItemID;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/home/widget/resume/LargeLibraryResumeWidgetProvider;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/home/widget/resume/LargeLibraryResumeWidgetProvider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 88
    iput-object p1, p0, Lcom/amazon/kcp/home/widget/resume/LargeLibraryResumeWidgetProvider$1;->this$0:Lcom/amazon/kcp/home/widget/resume/LargeLibraryResumeWidgetProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(ILcom/amazon/kindle/observablemodel/ItemID;Landroid/view/View;)V
    .locals 5

    const-string v0, "item"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "view"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 90
    iget-object v0, p0, Lcom/amazon/kcp/home/widget/resume/LargeLibraryResumeWidgetProvider$1;->this$0:Lcom/amazon/kcp/home/widget/resume/LargeLibraryResumeWidgetProvider;

    invoke-static {v0}, Lcom/amazon/kcp/home/widget/resume/LargeLibraryResumeWidgetProvider;->access$getRepository$p(Lcom/amazon/kcp/home/widget/resume/LargeLibraryResumeWidgetProvider;)Lcom/amazon/kcp/integrator/LargeLibraryRepositoryImpl;

    move-result-object v0

    new-instance v1, Lcom/amazon/kcp/integrator/PeriodicalArguments;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x3

    invoke-direct {v1, v3, v2, v4, v2}, Lcom/amazon/kcp/integrator/PeriodicalArguments;-><init>(ZLcom/amazon/kindle/krx/content/IBook$ReadState;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {v0, v2, p2, v1}, Lcom/amazon/kcp/integrator/LargeLibraryRepositoryImpl;->retrieveLibraryItemByID(Lcom/amazon/kcp/integrator/LibraryModelFormula;Lcom/amazon/kindle/observablemodel/ItemID;Lcom/amazon/kcp/integrator/PeriodicalArguments;)Lcom/amazon/kcp/library/ILibraryDisplayItem;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 91
    iget-object v0, p0, Lcom/amazon/kcp/home/widget/resume/LargeLibraryResumeWidgetProvider$1;->this$0:Lcom/amazon/kcp/home/widget/resume/LargeLibraryResumeWidgetProvider;

    invoke-virtual {v0}, Lcom/amazon/kcp/home/widget/resume/BaseResumeWidgetProvider;->getOnClickHandler()Lcom/amazon/kcp/home/widget/resume/ResumeOnClickHandler;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/amazon/kcp/home/widget/resume/ResumeOnClickHandler;->onClick(ILcom/amazon/kcp/library/ILibraryDisplayItem;Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public bridge synthetic onItemClick(ILjava/lang/Object;Landroid/view/View;)V
    .locals 0

    .line 88
    check-cast p2, Lcom/amazon/kindle/observablemodel/ItemID;

    invoke-virtual {p0, p1, p2, p3}, Lcom/amazon/kcp/home/widget/resume/LargeLibraryResumeWidgetProvider$1;->onItemClick(ILcom/amazon/kindle/observablemodel/ItemID;Landroid/view/View;)V

    return-void
.end method
