.class public final Lcom/amazon/kcp/home/widget/resume/LargeLibraryResumeWidgetProvider$newResumeWidget$1;
.super Lcom/amazon/kcp/home/widget/resume/ResumeShovelerWidget;
.source "LargeLibraryResumeWidgetProvider.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/home/widget/resume/LargeLibraryResumeWidgetProvider;->newResumeWidget()Lcom/amazon/kindle/home/card/HomeCard;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/home/widget/resume/LargeLibraryResumeWidgetProvider;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/home/widget/resume/LargeLibraryResumeWidgetProvider;ILcom/amazon/kcp/home/widget/resume/ResumeWidgetHelper;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/amazon/kcp/home/widget/resume/ResumeWidgetHelper;",
            ")V"
        }
    .end annotation

    .line 147
    iput-object p1, p0, Lcom/amazon/kcp/home/widget/resume/LargeLibraryResumeWidgetProvider$newResumeWidget$1;->this$0:Lcom/amazon/kcp/home/widget/resume/LargeLibraryResumeWidgetProvider;

    invoke-direct {p0, p2, p3}, Lcom/amazon/kcp/home/widget/resume/ResumeShovelerWidget;-><init>(ILcom/amazon/kcp/home/widget/resume/ResumeWidgetHelper;)V

    return-void
.end method


# virtual methods
.method public refreshResumeWidgetView()V
    .locals 2

    .line 149
    invoke-virtual {p0}, Lcom/amazon/kcp/home/widget/resume/ResumeShovelerWidget;->isWidgetViewBound()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 150
    :cond_0
    invoke-static {}, Lcom/amazon/foundation/internal/ThreadPoolManager;->getInstance()Lcom/amazon/foundation/internal/IThreadPoolManager;

    move-result-object v0

    new-instance v1, Lcom/amazon/kcp/home/widget/resume/LargeLibraryResumeWidgetProvider$newResumeWidget$1$refreshResumeWidgetView$1;

    invoke-direct {v1, p0}, Lcom/amazon/kcp/home/widget/resume/LargeLibraryResumeWidgetProvider$newResumeWidget$1$refreshResumeWidgetView$1;-><init>(Lcom/amazon/kcp/home/widget/resume/LargeLibraryResumeWidgetProvider$newResumeWidget$1;)V

    invoke-interface {v0, v1}, Lcom/amazon/kindle/krx/thread/IThreadPoolManager;->submitOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public shovelerSettingsOnBindView(Lcom/amazon/kcp/home/ui/ResumeShovelerView;Landroidx/recyclerview/widget/RecyclerView$Adapter;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kcp/home/ui/ResumeShovelerView;",
            "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
            "+",
            "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
            ">;)V"
        }
    .end annotation

    const-string/jumbo v0, "shovelerView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 169
    invoke-virtual {p1}, Lcom/amazon/kcp/home/ui/ShovelerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/amazon/kcp/home/ui/ShovelerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    invoke-static {v0, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    goto :goto_0

    .line 182
    :cond_0
    invoke-virtual {p1}, Lcom/amazon/kcp/home/ui/ShovelerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    goto :goto_1

    .line 171
    :cond_1
    :goto_0
    new-instance v0, Lcom/amazon/kcp/home/widget/resume/LargeLibraryResumeWidgetProvider$newResumeWidget$1$shovelerSettingsOnBindView$1;

    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v1

    const-string v2, "Utils.getFactory()"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/amazon/kcp/home/widget/resume/LargeLibraryResumeWidgetProvider$newResumeWidget$1$shovelerSettingsOnBindView$1;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {p1, v0}, Lcom/amazon/kcp/home/ui/ResumeShovelerView;->setLayoutManager(Landroidx/recyclerview/widget/LinearLayoutManager;)V

    .line 176
    invoke-virtual {p1, p2}, Lcom/amazon/kcp/home/ui/ResumeShovelerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    :cond_2
    :goto_1
    return-void
.end method
