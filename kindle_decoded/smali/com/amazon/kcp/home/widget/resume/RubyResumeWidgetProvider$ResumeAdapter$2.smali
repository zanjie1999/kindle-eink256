.class Lcom/amazon/kcp/home/widget/resume/RubyResumeWidgetProvider$ResumeAdapter$2;
.super Ljava/lang/Object;
.source "RubyResumeWidgetProvider.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/home/widget/resume/RubyResumeWidgetProvider$ResumeAdapter;->onBindViewHolder(Lcom/amazon/kcp/home/widget/resume/RubyResumeWidgetProvider$ResumeViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/amazon/kcp/home/widget/resume/RubyResumeWidgetProvider$ResumeAdapter;

.field final synthetic val$bookMetadata:Lcom/amazon/kcp/library/ILibraryDisplayItem;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/amazon/kcp/home/widget/resume/RubyResumeWidgetProvider$ResumeAdapter;ILcom/amazon/kcp/library/ILibraryDisplayItem;)V
    .locals 0

    .line 610
    iput-object p1, p0, Lcom/amazon/kcp/home/widget/resume/RubyResumeWidgetProvider$ResumeAdapter$2;->this$1:Lcom/amazon/kcp/home/widget/resume/RubyResumeWidgetProvider$ResumeAdapter;

    iput p2, p0, Lcom/amazon/kcp/home/widget/resume/RubyResumeWidgetProvider$ResumeAdapter$2;->val$position:I

    iput-object p3, p0, Lcom/amazon/kcp/home/widget/resume/RubyResumeWidgetProvider$ResumeAdapter$2;->val$bookMetadata:Lcom/amazon/kcp/library/ILibraryDisplayItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 613
    iget-object v0, p0, Lcom/amazon/kcp/home/widget/resume/RubyResumeWidgetProvider$ResumeAdapter$2;->this$1:Lcom/amazon/kcp/home/widget/resume/RubyResumeWidgetProvider$ResumeAdapter;

    iget-object v0, v0, Lcom/amazon/kcp/home/widget/resume/RubyResumeWidgetProvider$ResumeAdapter;->this$0:Lcom/amazon/kcp/home/widget/resume/RubyResumeWidgetProvider;

    invoke-static {v0}, Lcom/amazon/kcp/home/widget/resume/RubyResumeWidgetProvider;->access$1000(Lcom/amazon/kcp/home/widget/resume/RubyResumeWidgetProvider;)Lcom/amazon/kcp/home/widget/resume/ResumeOnClickHandler;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 614
    iget-object v0, p0, Lcom/amazon/kcp/home/widget/resume/RubyResumeWidgetProvider$ResumeAdapter$2;->this$1:Lcom/amazon/kcp/home/widget/resume/RubyResumeWidgetProvider$ResumeAdapter;

    iget-object v0, v0, Lcom/amazon/kcp/home/widget/resume/RubyResumeWidgetProvider$ResumeAdapter;->this$0:Lcom/amazon/kcp/home/widget/resume/RubyResumeWidgetProvider;

    invoke-static {v0}, Lcom/amazon/kcp/home/widget/resume/RubyResumeWidgetProvider;->access$1000(Lcom/amazon/kcp/home/widget/resume/RubyResumeWidgetProvider;)Lcom/amazon/kcp/home/widget/resume/ResumeOnClickHandler;

    move-result-object v0

    iget v1, p0, Lcom/amazon/kcp/home/widget/resume/RubyResumeWidgetProvider$ResumeAdapter$2;->val$position:I

    iget-object v2, p0, Lcom/amazon/kcp/home/widget/resume/RubyResumeWidgetProvider$ResumeAdapter$2;->val$bookMetadata:Lcom/amazon/kcp/library/ILibraryDisplayItem;

    invoke-virtual {v0, v1, v2, p1}, Lcom/amazon/kcp/home/widget/resume/ResumeOnClickHandler;->onClick(ILcom/amazon/kcp/library/ILibraryDisplayItem;Landroid/view/View;)V

    :cond_0
    return-void
.end method
