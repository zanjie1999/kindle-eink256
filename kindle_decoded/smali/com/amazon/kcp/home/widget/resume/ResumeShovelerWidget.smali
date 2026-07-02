.class public abstract Lcom/amazon/kcp/home/widget/resume/ResumeShovelerWidget;
.super Lcom/amazon/kindle/home/card/AbstractHomeCard;
.source "BaseResumeWidgetProvider.kt"


# instance fields
.field private isWidgetViewBound:Z

.field private final priority:I

.field private resumeShoveler:Lcom/amazon/kcp/home/ui/ResumeShovelerView;

.field private resumeWidgetEmpty:Landroid/widget/LinearLayout;

.field private resumeWidgetEmptyLink:Landroid/widget/TextView;

.field private resumeWidgetEmptyNotice:Landroid/widget/TextView;

.field private resumeWidgetEmptyTitle:Landroid/widget/TextView;

.field private final viewLayoutId:I

.field private final widgetHelper:Lcom/amazon/kcp/home/widget/resume/ResumeWidgetHelper;


# direct methods
.method public constructor <init>(ILcom/amazon/kcp/home/widget/resume/ResumeWidgetHelper;)V
    .locals 1

    const-string/jumbo v0, "widgetHelper"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 85
    invoke-direct {p0}, Lcom/amazon/kindle/home/card/AbstractHomeCard;-><init>()V

    iput-object p2, p0, Lcom/amazon/kcp/home/widget/resume/ResumeShovelerWidget;->widgetHelper:Lcom/amazon/kcp/home/widget/resume/ResumeWidgetHelper;

    .line 94
    iput p1, p0, Lcom/amazon/kcp/home/widget/resume/ResumeShovelerWidget;->priority:I

    .line 96
    sget p1, Lcom/amazon/kindle/librarymodule/R$layout;->resume_card:I

    iput p1, p0, Lcom/amazon/kcp/home/widget/resume/ResumeShovelerWidget;->viewLayoutId:I

    return-void
.end method

.method private final setRemovedEmptyView()V
    .locals 5

    .line 148
    sget-object v0, Lcom/amazon/kcp/home/util/HomeContext;->INSTANCE:Lcom/amazon/kcp/home/util/HomeContext;

    invoke-virtual {v0}, Lcom/amazon/kcp/home/util/HomeContext;->getScreenletContext()Lcom/amazon/kindle/krx/ui/ScreenletContext;

    move-result-object v0

    const-string/jumbo v1, "resumeWidgetEmptyLink"

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    invoke-interface {v0}, Lcom/amazon/kindle/krx/ui/ScreenletContext;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 149
    iget-object v3, p0, Lcom/amazon/kcp/home/widget/resume/ResumeShovelerWidget;->resumeWidgetEmptyTitle:Landroid/widget/TextView;

    if-eqz v3, :cond_2

    sget v4, Lcom/amazon/kindle/librarymodule/R$string;->removed_empty_view_title:I

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 150
    iget-object v3, p0, Lcom/amazon/kcp/home/widget/resume/ResumeShovelerWidget;->resumeWidgetEmptyNotice:Landroid/widget/TextView;

    if-eqz v3, :cond_1

    sget v4, Lcom/amazon/kindle/librarymodule/R$string;->removed_empty_view_notice:I

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 151
    iget-object v3, p0, Lcom/amazon/kcp/home/widget/resume/ResumeShovelerWidget;->resumeWidgetEmptyLink:Landroid/widget/TextView;

    if-eqz v3, :cond_0

    sget v4, Lcom/amazon/kindle/librarymodule/R$string;->removed_empty_view_link_to_library:I

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2

    :cond_1
    const-string/jumbo v0, "resumeWidgetEmptyNotice"

    .line 150
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2

    :cond_2
    const-string/jumbo v0, "resumeWidgetEmptyTitle"

    .line 149
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2

    .line 153
    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/amazon/kcp/home/widget/resume/ResumeShovelerWidget;->resumeWidgetEmptyLink:Landroid/widget/TextView;

    if-eqz v0, :cond_5

    sget-object v3, Lcom/amazon/kcp/home/widget/resume/ResumeShovelerWidget$setRemovedEmptyView$2;->INSTANCE:Lcom/amazon/kcp/home/widget/resume/ResumeShovelerWidget$setRemovedEmptyView$2;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 156
    iget-object v0, p0, Lcom/amazon/kcp/home/widget/resume/ResumeShovelerWidget;->resumeWidgetEmptyLink:Landroid/widget/TextView;

    if-eqz v0, :cond_4

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    return-void

    :cond_4
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2

    .line 153
    :cond_5
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2
.end method

.method private final setWelcomeEmptyView()V
    .locals 4

    .line 160
    sget-object v0, Lcom/amazon/kcp/home/util/HomeContext;->INSTANCE:Lcom/amazon/kcp/home/util/HomeContext;

    invoke-virtual {v0}, Lcom/amazon/kcp/home/util/HomeContext;->getScreenletContext()Lcom/amazon/kindle/krx/ui/ScreenletContext;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-interface {v0}, Lcom/amazon/kindle/krx/ui/ScreenletContext;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 161
    iget-object v2, p0, Lcom/amazon/kcp/home/widget/resume/ResumeShovelerWidget;->resumeWidgetEmptyTitle:Landroid/widget/TextView;

    if-eqz v2, :cond_1

    sget v3, Lcom/amazon/kindle/librarymodule/R$string;->empty_view_title:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 162
    iget-object v2, p0, Lcom/amazon/kcp/home/widget/resume/ResumeShovelerWidget;->resumeWidgetEmptyNotice:Landroid/widget/TextView;

    if-eqz v2, :cond_0

    sget v3, Lcom/amazon/kindle/librarymodule/R$string;->empty_view_notice:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    const-string/jumbo v0, "resumeWidgetEmptyNotice"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    :cond_1
    const-string/jumbo v0, "resumeWidgetEmptyTitle"

    .line 161
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    .line 164
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/amazon/kcp/home/widget/resume/ResumeShovelerWidget;->resumeWidgetEmptyLink:Landroid/widget/TextView;

    if-eqz v0, :cond_3

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    return-void

    :cond_3
    const-string/jumbo v0, "resumeWidgetEmptyLink"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public bindView(Landroid/view/View;Lcom/amazon/kindle/home/card/HomeWidgetListener;Lcom/amazon/kindle/home/action/HomeActionManager;)V
    .locals 1

    const-string/jumbo v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "listener"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "am"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 103
    iget-object p3, p0, Lcom/amazon/kcp/home/widget/resume/ResumeShovelerWidget;->widgetHelper:Lcom/amazon/kcp/home/widget/resume/ResumeWidgetHelper;

    new-instance v0, Lcom/amazon/kcp/home/widget/resume/ResumeOnClickHandler;

    invoke-direct {v0, p2}, Lcom/amazon/kcp/home/widget/resume/ResumeOnClickHandler;-><init>(Lcom/amazon/kindle/home/card/HomeWidgetListener;)V

    invoke-interface {p3, v0}, Lcom/amazon/kcp/home/widget/resume/ResumeWidgetHelper;->setResumeOnClickHandler(Lcom/amazon/kcp/home/widget/resume/ResumeOnClickHandler;)V

    .line 104
    sget p2, Lcom/amazon/kindle/librarymodule/R$id;->resume_widget_empty_view:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    const-string/jumbo p3, "view.findViewById(R.id.resume_widget_empty_view)"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Landroid/widget/LinearLayout;

    iput-object p2, p0, Lcom/amazon/kcp/home/widget/resume/ResumeShovelerWidget;->resumeWidgetEmpty:Landroid/widget/LinearLayout;

    .line 105
    sget p2, Lcom/amazon/kindle/librarymodule/R$id;->resume_shoveler_view:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    const-string/jumbo p3, "view.findViewById(R.id.resume_shoveler_view)"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Lcom/amazon/kcp/home/ui/ResumeShovelerView;

    iput-object p2, p0, Lcom/amazon/kcp/home/widget/resume/ResumeShovelerWidget;->resumeShoveler:Lcom/amazon/kcp/home/ui/ResumeShovelerView;

    .line 106
    sget p2, Lcom/amazon/kindle/librarymodule/R$id;->resume_empty_view_title:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    const-string/jumbo p3, "view.findViewById(R.id.resume_empty_view_title)"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/amazon/kcp/home/widget/resume/ResumeShovelerWidget;->resumeWidgetEmptyTitle:Landroid/widget/TextView;

    .line 107
    sget p2, Lcom/amazon/kindle/librarymodule/R$id;->resume_empty_view_notice:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    const-string/jumbo p3, "view.findViewById(R.id.resume_empty_view_notice)"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/amazon/kcp/home/widget/resume/ResumeShovelerWidget;->resumeWidgetEmptyNotice:Landroid/widget/TextView;

    .line 108
    sget p2, Lcom/amazon/kindle/librarymodule/R$id;->resume_empty_view_link:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string/jumbo p2, "view.findViewById(R.id.resume_empty_view_link)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/amazon/kcp/home/widget/resume/ResumeShovelerWidget;->resumeWidgetEmptyLink:Landroid/widget/TextView;

    .line 109
    iget-boolean p1, p0, Lcom/amazon/kcp/home/widget/resume/ResumeShovelerWidget;->isWidgetViewBound:Z

    if-nez p1, :cond_0

    const/4 p1, 0x1

    .line 110
    iput-boolean p1, p0, Lcom/amazon/kcp/home/widget/resume/ResumeShovelerWidget;->isWidgetViewBound:Z

    .line 113
    :cond_0
    iget-object p1, p0, Lcom/amazon/kcp/home/widget/resume/ResumeShovelerWidget;->resumeShoveler:Lcom/amazon/kcp/home/ui/ResumeShovelerView;

    if-eqz p1, :cond_1

    iget-object p2, p0, Lcom/amazon/kcp/home/widget/resume/ResumeShovelerWidget;->widgetHelper:Lcom/amazon/kcp/home/widget/resume/ResumeWidgetHelper;

    invoke-interface {p2}, Lcom/amazon/kcp/home/widget/resume/ResumeWidgetHelper;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/amazon/kcp/home/widget/resume/ResumeShovelerWidget;->shovelerSettingsOnBindView(Lcom/amazon/kcp/home/ui/ResumeShovelerView;Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 114
    invoke-virtual {p0}, Lcom/amazon/kcp/home/widget/resume/ResumeShovelerWidget;->refreshResumeWidgetView()V

    return-void

    :cond_1
    const-string/jumbo p1, "resumeShoveler"

    .line 113
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method

.method public getPriority()I
    .locals 1

    .line 94
    iget v0, p0, Lcom/amazon/kcp/home/widget/resume/ResumeShovelerWidget;->priority:I

    return v0
.end method

.method public getState()Lcom/amazon/kindle/home/card/HomeCardState;
    .locals 1

    .line 100
    sget-object v0, Lcom/amazon/kindle/home/card/HomeCardState;->READY:Lcom/amazon/kindle/home/card/HomeCardState;

    return-object v0
.end method

.method public getViewLayoutId()I
    .locals 1

    .line 96
    iget v0, p0, Lcom/amazon/kcp/home/widget/resume/ResumeShovelerWidget;->viewLayoutId:I

    return v0
.end method

.method public final hideResumeWidget()V
    .locals 3

    .line 192
    iget-boolean v0, p0, Lcom/amazon/kcp/home/widget/resume/ResumeShovelerWidget;->isWidgetViewBound:Z

    if-nez v0, :cond_0

    return-void

    .line 193
    :cond_0
    iget-object v0, p0, Lcom/amazon/kcp/home/widget/resume/ResumeShovelerWidget;->resumeShoveler:Lcom/amazon/kcp/home/ui/ResumeShovelerView;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 194
    iget-object v0, p0, Lcom/amazon/kcp/home/widget/resume/ResumeShovelerWidget;->resumeWidgetEmpty:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_1

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void

    :cond_1
    const-string/jumbo v0, "resumeWidgetEmpty"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    :cond_2
    const-string/jumbo v0, "resumeShoveler"

    .line 193
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1
.end method

.method protected final isWidgetViewBound()Z
    .locals 1

    .line 91
    iget-boolean v0, p0, Lcom/amazon/kcp/home/widget/resume/ResumeShovelerWidget;->isWidgetViewBound:Z

    return v0
.end method

.method public onConfigurationChange()V
    .locals 4

    .line 118
    iget-boolean v0, p0, Lcom/amazon/kcp/home/widget/resume/ResumeShovelerWidget;->isWidgetViewBound:Z

    if-nez v0, :cond_0

    return-void

    .line 119
    :cond_0
    iget-object v0, p0, Lcom/amazon/kcp/home/widget/resume/ResumeShovelerWidget;->resumeShoveler:Lcom/amazon/kcp/home/ui/ResumeShovelerView;

    const/4 v1, 0x0

    const-string/jumbo v2, "resumeShoveler"

    if-eqz v0, :cond_2

    iget-object v3, p0, Lcom/amazon/kcp/home/widget/resume/ResumeShovelerWidget;->widgetHelper:Lcom/amazon/kcp/home/widget/resume/ResumeWidgetHelper;

    invoke-interface {v3}, Lcom/amazon/kcp/home/widget/resume/ResumeWidgetHelper;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/amazon/kcp/home/ui/ResumeShovelerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 120
    iget-object v0, p0, Lcom/amazon/kcp/home/widget/resume/ResumeShovelerWidget;->resumeShoveler:Lcom/amazon/kcp/home/ui/ResumeShovelerView;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/amazon/kcp/home/ui/ResumeShovelerView;->updateShovelerHeight()V

    return-void

    :cond_1
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    .line 119
    :cond_2
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1
.end method

.method public abstract refreshResumeWidgetView()V
.end method

.method public final scrollToBeginning()V
    .locals 1

    .line 201
    iget-boolean v0, p0, Lcom/amazon/kcp/home/widget/resume/ResumeShovelerWidget;->isWidgetViewBound:Z

    if-eqz v0, :cond_1

    .line 202
    iget-object v0, p0, Lcom/amazon/kcp/home/widget/resume/ResumeShovelerWidget;->resumeShoveler:Lcom/amazon/kcp/home/ui/ResumeShovelerView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/amazon/kcp/home/ui/ResumeShovelerView;->scrollToBeginning()V

    goto :goto_0

    :cond_0
    const-string/jumbo v0, "resumeShoveler"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0

    :cond_1
    :goto_0
    return-void
.end method

.method public final setEmptyView()V
    .locals 1

    .line 139
    iget-boolean v0, p0, Lcom/amazon/kcp/home/widget/resume/ResumeShovelerWidget;->isWidgetViewBound:Z

    if-nez v0, :cond_0

    return-void

    .line 140
    :cond_0
    iget-object v0, p0, Lcom/amazon/kcp/home/widget/resume/ResumeShovelerWidget;->widgetHelper:Lcom/amazon/kcp/home/widget/resume/ResumeWidgetHelper;

    invoke-interface {v0}, Lcom/amazon/kcp/home/widget/resume/ResumeWidgetHelper;->getUserItemsCount()I

    move-result v0

    if-lez v0, :cond_1

    .line 141
    invoke-direct {p0}, Lcom/amazon/kcp/home/widget/resume/ResumeShovelerWidget;->setRemovedEmptyView()V

    goto :goto_0

    .line 143
    :cond_1
    invoke-direct {p0}, Lcom/amazon/kcp/home/widget/resume/ResumeShovelerWidget;->setWelcomeEmptyView()V

    :goto_0
    return-void
.end method

.method public final setResumeWidgetTrialView()V
    .locals 4

    .line 171
    iget-boolean v0, p0, Lcom/amazon/kcp/home/widget/resume/ResumeShovelerWidget;->isWidgetViewBound:Z

    if-nez v0, :cond_0

    return-void

    .line 172
    :cond_0
    sget-object v0, Lcom/amazon/kcp/home/util/HomeContext;->INSTANCE:Lcom/amazon/kcp/home/util/HomeContext;

    invoke-virtual {v0}, Lcom/amazon/kcp/home/util/HomeContext;->getScreenletContext()Lcom/amazon/kindle/krx/ui/ScreenletContext;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-interface {v0}, Lcom/amazon/kindle/krx/ui/ScreenletContext;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 173
    iget-object v1, p0, Lcom/amazon/kcp/home/widget/resume/ResumeShovelerWidget;->resumeWidgetEmptyTitle:Landroid/widget/TextView;

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    sget v3, Lcom/amazon/kindle/librarymodule/R$string;->empty_view_title:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 174
    iget-object v1, p0, Lcom/amazon/kcp/home/widget/resume/ResumeShovelerWidget;->resumeWidgetEmptyNotice:Landroid/widget/TextView;

    if-eqz v1, :cond_2

    sget v3, Lcom/amazon/kindle/librarymodule/R$string;->nuo_home_msg_text:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 175
    iget-object v0, p0, Lcom/amazon/kcp/home/widget/resume/ResumeShovelerWidget;->resumeWidgetEmptyLink:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    :cond_1
    const-string/jumbo v0, "resumeWidgetEmptyLink"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2

    :cond_2
    const-string/jumbo v0, "resumeWidgetEmptyNotice"

    .line 174
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2

    :cond_3
    const-string/jumbo v0, "resumeWidgetEmptyTitle"

    .line 173
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2

    :cond_4
    :goto_0
    return-void
.end method

.method public final setShovelerVisibility(Z)V
    .locals 5

    .line 183
    iget-boolean v0, p0, Lcom/amazon/kcp/home/widget/resume/ResumeShovelerWidget;->isWidgetViewBound:Z

    if-nez v0, :cond_0

    return-void

    .line 184
    :cond_0
    iget-object v0, p0, Lcom/amazon/kcp/home/widget/resume/ResumeShovelerWidget;->resumeShoveler:Lcom/amazon/kcp/home/ui/ResumeShovelerView;

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    const/4 v2, 0x0

    const/16 v3, 0x8

    if-eqz p1, :cond_1

    const/4 v4, 0x0

    goto :goto_0

    :cond_1
    const/16 v4, 0x8

    :goto_0
    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 185
    iget-object v0, p0, Lcom/amazon/kcp/home/widget/resume/ResumeShovelerWidget;->resumeWidgetEmpty:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_3

    if-eqz p1, :cond_2

    const/16 v2, 0x8

    :cond_2
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void

    :cond_3
    const-string/jumbo p1, "resumeWidgetEmpty"

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    :cond_4
    const-string/jumbo p1, "resumeShoveler"

    .line 184
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1
.end method

.method public abstract shovelerSettingsOnBindView(Lcom/amazon/kcp/home/ui/ResumeShovelerView;Landroidx/recyclerview/widget/RecyclerView$Adapter;)V
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
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "Resume Widget"

    return-object v0
.end method
