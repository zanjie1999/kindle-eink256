.class Lcom/amazon/kcp/home/widget/resume/RubyResumeWidgetProvider$ResumeAdapter$1;
.super Ljava/lang/Object;
.source "RubyResumeWidgetProvider.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/home/widget/resume/RubyResumeWidgetProvider$ResumeAdapter;->updateAdapterAndNotify(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/amazon/kcp/home/widget/resume/RubyResumeWidgetProvider$ResumeAdapter;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/home/widget/resume/RubyResumeWidgetProvider$ResumeAdapter;)V
    .locals 0

    .line 559
    iput-object p1, p0, Lcom/amazon/kcp/home/widget/resume/RubyResumeWidgetProvider$ResumeAdapter$1;->this$1:Lcom/amazon/kcp/home/widget/resume/RubyResumeWidgetProvider$ResumeAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 562
    iget-object v0, p0, Lcom/amazon/kcp/home/widget/resume/RubyResumeWidgetProvider$ResumeAdapter$1;->this$1:Lcom/amazon/kcp/home/widget/resume/RubyResumeWidgetProvider$ResumeAdapter;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method
