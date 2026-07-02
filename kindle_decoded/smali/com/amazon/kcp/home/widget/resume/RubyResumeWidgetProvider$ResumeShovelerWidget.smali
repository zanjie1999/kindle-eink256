.class Lcom/amazon/kcp/home/widget/resume/RubyResumeWidgetProvider$ResumeShovelerWidget;
.super Lcom/amazon/kindle/home/card/AbstractHomeCard;
.source "RubyResumeWidgetProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/home/widget/resume/RubyResumeWidgetProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ResumeShovelerWidget"
.end annotation


# instance fields
.field private index:I

.field final synthetic this$0:Lcom/amazon/kcp/home/widget/resume/RubyResumeWidgetProvider;


# direct methods
.method private constructor <init>(Lcom/amazon/kcp/home/widget/resume/RubyResumeWidgetProvider;I)V
    .locals 0

    .line 465
    iput-object p1, p0, Lcom/amazon/kcp/home/widget/resume/RubyResumeWidgetProvider$ResumeShovelerWidget;->this$0:Lcom/amazon/kcp/home/widget/resume/RubyResumeWidgetProvider;

    invoke-direct {p0}, Lcom/amazon/kindle/home/card/AbstractHomeCard;-><init>()V

    .line 466
    iput p2, p0, Lcom/amazon/kcp/home/widget/resume/RubyResumeWidgetProvider$ResumeShovelerWidget;->index:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/amazon/kcp/home/widget/resume/RubyResumeWidgetProvider;ILcom/amazon/kcp/home/widget/resume/RubyResumeWidgetProvider$1;)V
    .locals 0

    .line 462
    invoke-direct {p0, p1, p2}, Lcom/amazon/kcp/home/widget/resume/RubyResumeWidgetProvider$ResumeShovelerWidget;-><init>(Lcom/amazon/kcp/home/widget/resume/RubyResumeWidgetProvider;I)V

    return-void
.end method


# virtual methods
.method public bindView(Landroid/view/View;Lcom/amazon/kindle/home/card/HomeWidgetListener;Lcom/amazon/kindle/home/action/HomeActionManager;)V
    .locals 0

    .line 476
    iget-object p3, p0, Lcom/amazon/kcp/home/widget/resume/RubyResumeWidgetProvider$ResumeShovelerWidget;->this$0:Lcom/amazon/kcp/home/widget/resume/RubyResumeWidgetProvider;

    invoke-virtual {p3, p1, p2}, Lcom/amazon/kcp/home/widget/resume/RubyResumeWidgetProvider;->bindWidgetView(Landroid/view/View;Lcom/amazon/kindle/home/card/HomeWidgetListener;)V

    return-void
.end method

.method public getPriority()I
    .locals 1

    .line 471
    iget v0, p0, Lcom/amazon/kcp/home/widget/resume/RubyResumeWidgetProvider$ResumeShovelerWidget;->index:I

    return v0
.end method

.method public getState()Lcom/amazon/kindle/home/card/HomeCardState;
    .locals 1

    .line 516
    iget-object v0, p0, Lcom/amazon/kcp/home/widget/resume/RubyResumeWidgetProvider$ResumeShovelerWidget;->this$0:Lcom/amazon/kcp/home/widget/resume/RubyResumeWidgetProvider;

    iget-object v0, v0, Lcom/amazon/kcp/home/widget/resume/RubyResumeWidgetProvider;->dataProvider:Lcom/amazon/kcp/home/widget/resume/LibraryCardDataProvider;

    invoke-virtual {v0}, Lcom/amazon/kcp/home/widget/resume/LibraryCardDataProvider;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 517
    sget-object v0, Lcom/amazon/kindle/home/card/HomeCardState;->READY:Lcom/amazon/kindle/home/card/HomeCardState;

    return-object v0

    .line 519
    :cond_0
    sget-object v0, Lcom/amazon/kindle/home/card/HomeCardState;->LOADING:Lcom/amazon/kindle/home/card/HomeCardState;

    return-object v0
.end method

.method public getViewLayoutId()I
    .locals 1

    .line 481
    sget v0, Lcom/amazon/kindle/librarymodule/R$layout;->resume_card:I

    return v0
.end method

.method public onConfigurationChange()V
    .locals 2

    .line 500
    iget-object v0, p0, Lcom/amazon/kcp/home/widget/resume/RubyResumeWidgetProvider$ResumeShovelerWidget;->this$0:Lcom/amazon/kcp/home/widget/resume/RubyResumeWidgetProvider;

    invoke-static {v0}, Lcom/amazon/kcp/home/widget/resume/RubyResumeWidgetProvider;->access$000(Lcom/amazon/kcp/home/widget/resume/RubyResumeWidgetProvider;)Lcom/amazon/kcp/home/ui/ResumeShovelerView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 501
    iget-object v0, p0, Lcom/amazon/kcp/home/widget/resume/RubyResumeWidgetProvider$ResumeShovelerWidget;->this$0:Lcom/amazon/kcp/home/widget/resume/RubyResumeWidgetProvider;

    invoke-static {v0}, Lcom/amazon/kcp/home/widget/resume/RubyResumeWidgetProvider;->access$000(Lcom/amazon/kcp/home/widget/resume/RubyResumeWidgetProvider;)Lcom/amazon/kcp/home/ui/ResumeShovelerView;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kcp/home/widget/resume/RubyResumeWidgetProvider$ResumeShovelerWidget;->this$0:Lcom/amazon/kcp/home/widget/resume/RubyResumeWidgetProvider;

    invoke-static {v1}, Lcom/amazon/kcp/home/widget/resume/RubyResumeWidgetProvider;->access$800(Lcom/amazon/kcp/home/widget/resume/RubyResumeWidgetProvider;)Lcom/amazon/kcp/home/widget/resume/RubyResumeWidgetProvider$ResumeAdapter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/kcp/home/ui/ResumeShovelerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 502
    iget-object v0, p0, Lcom/amazon/kcp/home/widget/resume/RubyResumeWidgetProvider$ResumeShovelerWidget;->this$0:Lcom/amazon/kcp/home/widget/resume/RubyResumeWidgetProvider;

    invoke-static {v0}, Lcom/amazon/kcp/home/widget/resume/RubyResumeWidgetProvider;->access$000(Lcom/amazon/kcp/home/widget/resume/RubyResumeWidgetProvider;)Lcom/amazon/kcp/home/ui/ResumeShovelerView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/kcp/home/ui/ResumeShovelerView;->updateShovelerHeight()V

    .line 506
    iget-object v0, p0, Lcom/amazon/kcp/home/widget/resume/RubyResumeWidgetProvider$ResumeShovelerWidget;->this$0:Lcom/amazon/kcp/home/widget/resume/RubyResumeWidgetProvider;

    iget-object v0, v0, Lcom/amazon/kcp/home/widget/resume/RubyResumeWidgetProvider;->dataProvider:Lcom/amazon/kcp/home/widget/resume/LibraryCardDataProvider;

    invoke-virtual {v0}, Lcom/amazon/kcp/home/widget/resume/LibraryCardDataProvider;->getBooks()Ljava/util/List;

    move-result-object v0

    .line 507
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 508
    iget-object v1, p0, Lcom/amazon/kcp/home/widget/resume/RubyResumeWidgetProvider$ResumeShovelerWidget;->this$0:Lcom/amazon/kcp/home/widget/resume/RubyResumeWidgetProvider;

    invoke-static {v1, v0}, Lcom/amazon/kcp/home/widget/resume/RubyResumeWidgetProvider;->access$200(Lcom/amazon/kcp/home/widget/resume/RubyResumeWidgetProvider;Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method public reportImpressionData(Z)V
    .locals 0

    if-nez p1, :cond_0

    .line 494
    iget-object p1, p0, Lcom/amazon/kcp/home/widget/resume/RubyResumeWidgetProvider$ResumeShovelerWidget;->this$0:Lcom/amazon/kcp/home/widget/resume/RubyResumeWidgetProvider;

    invoke-static {p1}, Lcom/amazon/kcp/home/widget/resume/RubyResumeWidgetProvider;->access$700(Lcom/amazon/kcp/home/widget/resume/RubyResumeWidgetProvider;)V

    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "Resume Widget"

    return-object v0
.end method
