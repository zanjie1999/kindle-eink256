.class Lcom/amazon/kcp/home/widget/resume/RubyResumeWidgetProvider$3;
.super Ljava/lang/Object;
.source "RubyResumeWidgetProvider.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/home/widget/resume/RubyResumeWidgetProvider;->refreshResumeWidgetView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/home/widget/resume/RubyResumeWidgetProvider;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/home/widget/resume/RubyResumeWidgetProvider;)V
    .locals 0

    .line 228
    iput-object p1, p0, Lcom/amazon/kcp/home/widget/resume/RubyResumeWidgetProvider$3;->this$0:Lcom/amazon/kcp/home/widget/resume/RubyResumeWidgetProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 230
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getAuthenticationManager()Lcom/amazon/kcp/application/IAuthenticationManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IAuthenticationManager;->isAuthenticated()Z

    move-result v0

    .line 231
    iget-object v1, p0, Lcom/amazon/kcp/home/widget/resume/RubyResumeWidgetProvider$3;->this$0:Lcom/amazon/kcp/home/widget/resume/RubyResumeWidgetProvider;

    iget-object v1, v1, Lcom/amazon/kcp/home/widget/resume/RubyResumeWidgetProvider;->dataProvider:Lcom/amazon/kcp/home/widget/resume/LibraryCardDataProvider;

    invoke-virtual {v1}, Lcom/amazon/kcp/home/widget/resume/LibraryCardDataProvider;->getBooks()Ljava/util/List;

    move-result-object v1

    .line 232
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    const/4 v3, 0x0

    const/16 v4, 0x8

    if-nez v2, :cond_0

    if-eqz v0, :cond_0

    .line 233
    iget-object v0, p0, Lcom/amazon/kcp/home/widget/resume/RubyResumeWidgetProvider$3;->this$0:Lcom/amazon/kcp/home/widget/resume/RubyResumeWidgetProvider;

    invoke-static {v0}, Lcom/amazon/kcp/home/widget/resume/RubyResumeWidgetProvider;->access$000(Lcom/amazon/kcp/home/widget/resume/RubyResumeWidgetProvider;)Lcom/amazon/kcp/home/ui/ResumeShovelerView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 234
    iget-object v0, p0, Lcom/amazon/kcp/home/widget/resume/RubyResumeWidgetProvider$3;->this$0:Lcom/amazon/kcp/home/widget/resume/RubyResumeWidgetProvider;

    invoke-static {v0}, Lcom/amazon/kcp/home/widget/resume/RubyResumeWidgetProvider;->access$100(Lcom/amazon/kcp/home/widget/resume/RubyResumeWidgetProvider;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 236
    iget-object v0, p0, Lcom/amazon/kcp/home/widget/resume/RubyResumeWidgetProvider$3;->this$0:Lcom/amazon/kcp/home/widget/resume/RubyResumeWidgetProvider;

    invoke-static {v0, v1}, Lcom/amazon/kcp/home/widget/resume/RubyResumeWidgetProvider;->access$200(Lcom/amazon/kcp/home/widget/resume/RubyResumeWidgetProvider;Ljava/util/List;)V

    .line 237
    iget-object v0, p0, Lcom/amazon/kcp/home/widget/resume/RubyResumeWidgetProvider$3;->this$0:Lcom/amazon/kcp/home/widget/resume/RubyResumeWidgetProvider;

    invoke-static {v0, v1}, Lcom/amazon/kcp/home/widget/resume/RubyResumeWidgetProvider;->access$300(Lcom/amazon/kcp/home/widget/resume/RubyResumeWidgetProvider;Ljava/util/List;)V

    goto :goto_1

    .line 239
    :cond_0
    iget-object v1, p0, Lcom/amazon/kcp/home/widget/resume/RubyResumeWidgetProvider$3;->this$0:Lcom/amazon/kcp/home/widget/resume/RubyResumeWidgetProvider;

    invoke-static {v1}, Lcom/amazon/kcp/home/widget/resume/RubyResumeWidgetProvider;->access$000(Lcom/amazon/kcp/home/widget/resume/RubyResumeWidgetProvider;)Lcom/amazon/kcp/home/ui/ResumeShovelerView;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 240
    iget-object v1, p0, Lcom/amazon/kcp/home/widget/resume/RubyResumeWidgetProvider$3;->this$0:Lcom/amazon/kcp/home/widget/resume/RubyResumeWidgetProvider;

    invoke-static {v1}, Lcom/amazon/kcp/home/widget/resume/RubyResumeWidgetProvider;->access$100(Lcom/amazon/kcp/home/widget/resume/RubyResumeWidgetProvider;)Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    if-eqz v0, :cond_1

    .line 242
    iget-object v0, p0, Lcom/amazon/kcp/home/widget/resume/RubyResumeWidgetProvider$3;->this$0:Lcom/amazon/kcp/home/widget/resume/RubyResumeWidgetProvider;

    invoke-static {v0}, Lcom/amazon/kcp/home/widget/resume/RubyResumeWidgetProvider;->access$400(Lcom/amazon/kcp/home/widget/resume/RubyResumeWidgetProvider;)V

    goto :goto_0

    .line 244
    :cond_1
    iget-object v0, p0, Lcom/amazon/kcp/home/widget/resume/RubyResumeWidgetProvider$3;->this$0:Lcom/amazon/kcp/home/widget/resume/RubyResumeWidgetProvider;

    invoke-static {v0}, Lcom/amazon/kcp/home/widget/resume/RubyResumeWidgetProvider;->access$500(Lcom/amazon/kcp/home/widget/resume/RubyResumeWidgetProvider;)V

    .line 246
    :goto_0
    iget-object v0, p0, Lcom/amazon/kcp/home/widget/resume/RubyResumeWidgetProvider$3;->this$0:Lcom/amazon/kcp/home/widget/resume/RubyResumeWidgetProvider;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/amazon/kcp/home/widget/resume/RubyResumeWidgetProvider;->access$300(Lcom/amazon/kcp/home/widget/resume/RubyResumeWidgetProvider;Ljava/util/List;)V

    :goto_1
    return-void
.end method
