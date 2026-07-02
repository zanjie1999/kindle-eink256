.class public Lcom/amazon/kcp/home/widget/resume/RubyResumeWidgetProvider$ResumeViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "RubyResumeWidgetProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/home/widget/resume/RubyResumeWidgetProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ResumeViewHolder"
.end annotation


# instance fields
.field private final badgeableCover:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 0

    .line 399
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 400
    iput-object p1, p0, Lcom/amazon/kcp/home/widget/resume/RubyResumeWidgetProvider$ResumeViewHolder;->badgeableCover:Landroid/view/View;

    return-void
.end method

.method static synthetic access$900(Lcom/amazon/kcp/home/widget/resume/RubyResumeWidgetProvider$ResumeViewHolder;)Landroid/view/View;
    .locals 0

    .line 395
    iget-object p0, p0, Lcom/amazon/kcp/home/widget/resume/RubyResumeWidgetProvider$ResumeViewHolder;->badgeableCover:Landroid/view/View;

    return-object p0
.end method
