.class Lcom/amazon/kcp/home/widget/resume/RubyResumeWidgetProvider$ResumeAdapter$3;
.super Ljava/lang/Object;
.source "RubyResumeWidgetProvider.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


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

    .line 619
    iput-object p1, p0, Lcom/amazon/kcp/home/widget/resume/RubyResumeWidgetProvider$ResumeAdapter$3;->this$1:Lcom/amazon/kcp/home/widget/resume/RubyResumeWidgetProvider$ResumeAdapter;

    iput p2, p0, Lcom/amazon/kcp/home/widget/resume/RubyResumeWidgetProvider$ResumeAdapter$3;->val$position:I

    iput-object p3, p0, Lcom/amazon/kcp/home/widget/resume/RubyResumeWidgetProvider$ResumeAdapter$3;->val$bookMetadata:Lcom/amazon/kcp/library/ILibraryDisplayItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 3

    .line 622
    iget-object v0, p0, Lcom/amazon/kcp/home/widget/resume/RubyResumeWidgetProvider$ResumeAdapter$3;->this$1:Lcom/amazon/kcp/home/widget/resume/RubyResumeWidgetProvider$ResumeAdapter;

    iget-object v0, v0, Lcom/amazon/kcp/home/widget/resume/RubyResumeWidgetProvider$ResumeAdapter;->this$0:Lcom/amazon/kcp/home/widget/resume/RubyResumeWidgetProvider;

    invoke-static {v0}, Lcom/amazon/kcp/home/widget/resume/RubyResumeWidgetProvider;->access$1000(Lcom/amazon/kcp/home/widget/resume/RubyResumeWidgetProvider;)Lcom/amazon/kcp/home/widget/resume/ResumeOnClickHandler;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 623
    iget-object v0, p0, Lcom/amazon/kcp/home/widget/resume/RubyResumeWidgetProvider$ResumeAdapter$3;->this$1:Lcom/amazon/kcp/home/widget/resume/RubyResumeWidgetProvider$ResumeAdapter;

    iget-object v0, v0, Lcom/amazon/kcp/home/widget/resume/RubyResumeWidgetProvider$ResumeAdapter;->this$0:Lcom/amazon/kcp/home/widget/resume/RubyResumeWidgetProvider;

    invoke-static {v0}, Lcom/amazon/kcp/home/widget/resume/RubyResumeWidgetProvider;->access$1000(Lcom/amazon/kcp/home/widget/resume/RubyResumeWidgetProvider;)Lcom/amazon/kcp/home/widget/resume/ResumeOnClickHandler;

    move-result-object v0

    iget v1, p0, Lcom/amazon/kcp/home/widget/resume/RubyResumeWidgetProvider$ResumeAdapter$3;->val$position:I

    iget-object v2, p0, Lcom/amazon/kcp/home/widget/resume/RubyResumeWidgetProvider$ResumeAdapter$3;->val$bookMetadata:Lcom/amazon/kcp/library/ILibraryDisplayItem;

    invoke-virtual {v0, v1, v2, p1}, Lcom/amazon/kcp/home/widget/resume/ResumeOnClickHandler;->onLongClick(ILcom/amazon/kcp/library/ILibraryDisplayItem;Landroid/view/View;)V

    :cond_0
    const/4 p1, 0x1

    return p1
.end method
