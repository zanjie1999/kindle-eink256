.class Lcom/amazon/kcp/home/widget/resume/RubyResumeWidgetProvider$5;
.super Ljava/lang/Object;
.source "RubyResumeWidgetProvider.java"

# interfaces
.implements Lcom/amazon/kcp/home/widget/resume/LibraryLoadCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/home/widget/resume/RubyResumeWidgetProvider;->refreshLibraryContentFromDB()V
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

    .line 448
    iput-object p1, p0, Lcom/amazon/kcp/home/widget/resume/RubyResumeWidgetProvider$5;->this$0:Lcom/amazon/kcp/home/widget/resume/RubyResumeWidgetProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLibraryLoad(Z)V
    .locals 1

    .line 451
    invoke-static {}, Lcom/amazon/kcp/home/util/HomeContext;->isHomeVisible()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 455
    :cond_0
    iget-object v0, p0, Lcom/amazon/kcp/home/widget/resume/RubyResumeWidgetProvider$5;->this$0:Lcom/amazon/kcp/home/widget/resume/RubyResumeWidgetProvider;

    invoke-static {v0}, Lcom/amazon/kcp/home/widget/resume/RubyResumeWidgetProvider;->access$000(Lcom/amazon/kcp/home/widget/resume/RubyResumeWidgetProvider;)Lcom/amazon/kcp/home/ui/ResumeShovelerView;

    move-result-object v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    .line 456
    iget-object p1, p0, Lcom/amazon/kcp/home/widget/resume/RubyResumeWidgetProvider$5;->this$0:Lcom/amazon/kcp/home/widget/resume/RubyResumeWidgetProvider;

    invoke-static {p1}, Lcom/amazon/kcp/home/widget/resume/RubyResumeWidgetProvider;->access$000(Lcom/amazon/kcp/home/widget/resume/RubyResumeWidgetProvider;)Lcom/amazon/kcp/home/ui/ResumeShovelerView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/amazon/kcp/home/ui/ResumeShovelerView;->scrollToBeginning()V

    :cond_1
    return-void
.end method
