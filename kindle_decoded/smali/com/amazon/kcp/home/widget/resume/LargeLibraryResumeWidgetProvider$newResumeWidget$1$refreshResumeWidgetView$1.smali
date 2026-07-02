.class final Lcom/amazon/kcp/home/widget/resume/LargeLibraryResumeWidgetProvider$newResumeWidget$1$refreshResumeWidgetView$1;
.super Ljava/lang/Object;
.source "LargeLibraryResumeWidgetProvider.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/home/widget/resume/LargeLibraryResumeWidgetProvider$newResumeWidget$1;->refreshResumeWidgetView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/home/widget/resume/LargeLibraryResumeWidgetProvider$newResumeWidget$1;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/home/widget/resume/LargeLibraryResumeWidgetProvider$newResumeWidget$1;)V
    .locals 0

    iput-object p1, p0, Lcom/amazon/kcp/home/widget/resume/LargeLibraryResumeWidgetProvider$newResumeWidget$1$refreshResumeWidgetView$1;->this$0:Lcom/amazon/kcp/home/widget/resume/LargeLibraryResumeWidgetProvider$newResumeWidget$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 151
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    const-string v1, "Utils.getFactory()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getAuthenticationManager()Lcom/amazon/kcp/application/IAuthenticationManager;

    move-result-object v0

    const-string v1, "Utils.getFactory().authenticationManager"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Lcom/amazon/kcp/application/IAuthenticationManager;->isAuthenticated()Z

    move-result v0

    .line 152
    iget-object v1, p0, Lcom/amazon/kcp/home/widget/resume/LargeLibraryResumeWidgetProvider$newResumeWidget$1$refreshResumeWidgetView$1;->this$0:Lcom/amazon/kcp/home/widget/resume/LargeLibraryResumeWidgetProvider$newResumeWidget$1;

    iget-object v1, v1, Lcom/amazon/kcp/home/widget/resume/LargeLibraryResumeWidgetProvider$newResumeWidget$1;->this$0:Lcom/amazon/kcp/home/widget/resume/LargeLibraryResumeWidgetProvider;

    invoke-static {v1}, Lcom/amazon/kcp/home/widget/resume/LargeLibraryResumeWidgetProvider;->access$getDataProvider$p(Lcom/amazon/kcp/home/widget/resume/LargeLibraryResumeWidgetProvider;)Lcom/amazon/kcp/library/fragments/LargeLibraryCardDataProvider;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazon/kcp/library/fragments/LargeLibraryCardDataProvider;->getItemsCount()I

    move-result v1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 154
    iget-object v0, p0, Lcom/amazon/kcp/home/widget/resume/LargeLibraryResumeWidgetProvider$newResumeWidget$1$refreshResumeWidgetView$1;->this$0:Lcom/amazon/kcp/home/widget/resume/LargeLibraryResumeWidgetProvider$newResumeWidget$1;

    invoke-virtual {v0, v2}, Lcom/amazon/kcp/home/widget/resume/ResumeShovelerWidget;->setShovelerVisibility(Z)V

    .line 155
    iget-object v0, p0, Lcom/amazon/kcp/home/widget/resume/LargeLibraryResumeWidgetProvider$newResumeWidget$1$refreshResumeWidgetView$1;->this$0:Lcom/amazon/kcp/home/widget/resume/LargeLibraryResumeWidgetProvider$newResumeWidget$1;

    invoke-virtual {v0}, Lcom/amazon/kcp/home/widget/resume/ResumeShovelerWidget;->setResumeWidgetTrialView()V

    goto :goto_0

    :cond_0
    if-lez v1, :cond_1

    .line 157
    iget-object v0, p0, Lcom/amazon/kcp/home/widget/resume/LargeLibraryResumeWidgetProvider$newResumeWidget$1$refreshResumeWidgetView$1;->this$0:Lcom/amazon/kcp/home/widget/resume/LargeLibraryResumeWidgetProvider$newResumeWidget$1;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/amazon/kcp/home/widget/resume/ResumeShovelerWidget;->setShovelerVisibility(Z)V

    goto :goto_0

    :cond_1
    if-gez v1, :cond_2

    .line 159
    iget-object v0, p0, Lcom/amazon/kcp/home/widget/resume/LargeLibraryResumeWidgetProvider$newResumeWidget$1$refreshResumeWidgetView$1;->this$0:Lcom/amazon/kcp/home/widget/resume/LargeLibraryResumeWidgetProvider$newResumeWidget$1;

    invoke-virtual {v0}, Lcom/amazon/kcp/home/widget/resume/ResumeShovelerWidget;->hideResumeWidget()V

    goto :goto_0

    .line 161
    :cond_2
    iget-object v0, p0, Lcom/amazon/kcp/home/widget/resume/LargeLibraryResumeWidgetProvider$newResumeWidget$1$refreshResumeWidgetView$1;->this$0:Lcom/amazon/kcp/home/widget/resume/LargeLibraryResumeWidgetProvider$newResumeWidget$1;

    invoke-virtual {v0, v2}, Lcom/amazon/kcp/home/widget/resume/ResumeShovelerWidget;->setShovelerVisibility(Z)V

    .line 162
    iget-object v0, p0, Lcom/amazon/kcp/home/widget/resume/LargeLibraryResumeWidgetProvider$newResumeWidget$1$refreshResumeWidgetView$1;->this$0:Lcom/amazon/kcp/home/widget/resume/LargeLibraryResumeWidgetProvider$newResumeWidget$1;

    invoke-virtual {v0}, Lcom/amazon/kcp/home/widget/resume/ResumeShovelerWidget;->setEmptyView()V

    :goto_0
    return-void
.end method
