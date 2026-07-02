.class Lcom/amazon/kcp/home/widget/resume/RubyResumeWidgetProvider$ResumeAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "RubyResumeWidgetProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/home/widget/resume/RubyResumeWidgetProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ResumeAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/amazon/kcp/home/widget/resume/RubyResumeWidgetProvider$ResumeViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private bookMetadataList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amazon/kcp/library/ILibraryDisplayItem;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/amazon/kcp/home/widget/resume/RubyResumeWidgetProvider;


# direct methods
.method public constructor <init>(Lcom/amazon/kcp/home/widget/resume/RubyResumeWidgetProvider;)V
    .locals 0

    .line 530
    iput-object p1, p0, Lcom/amazon/kcp/home/widget/resume/RubyResumeWidgetProvider$ResumeAdapter;->this$0:Lcom/amazon/kcp/home/widget/resume/RubyResumeWidgetProvider;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 531
    invoke-static {}, Lcom/amazon/kindle/services/events/PubSubMessageService;->getInstance()Lcom/amazon/kindle/krx/events/IPubSubEventsManager;

    move-result-object p1

    invoke-interface {p1, p0}, Lcom/amazon/kindle/krx/events/IPubSubEventsManager;->subscribe(Ljava/lang/Object;)V

    .line 532
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/amazon/kcp/home/widget/resume/RubyResumeWidgetProvider$ResumeAdapter;->bookMetadataList:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 637
    iget-object v0, p0, Lcom/amazon/kcp/home/widget/resume/RubyResumeWidgetProvider$ResumeAdapter;->bookMetadataList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 524
    check-cast p1, Lcom/amazon/kcp/home/widget/resume/RubyResumeWidgetProvider$ResumeViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/amazon/kcp/home/widget/resume/RubyResumeWidgetProvider$ResumeAdapter;->onBindViewHolder(Lcom/amazon/kcp/home/widget/resume/RubyResumeWidgetProvider$ResumeViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/amazon/kcp/home/widget/resume/RubyResumeWidgetProvider$ResumeViewHolder;I)V
    .locals 10

    .line 601
    iget-object v0, p0, Lcom/amazon/kcp/home/widget/resume/RubyResumeWidgetProvider$ResumeAdapter;->bookMetadataList:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kcp/library/ILibraryDisplayItem;

    .line 602
    invoke-static {p1}, Lcom/amazon/kcp/home/widget/resume/RubyResumeWidgetProvider$ResumeViewHolder;->access$900(Lcom/amazon/kcp/home/widget/resume/RubyResumeWidgetProvider$ResumeViewHolder;)Landroid/view/View;

    move-result-object v3

    .line 603
    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 604
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v4, Lcom/amazon/kindle/librarymodule/R$dimen;->shoveler_default_cover_width:I

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v6

    .line 605
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v4, Lcom/amazon/kindle/librarymodule/R$dimen;->shoveler_default_cover_height:I

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v5

    .line 606
    sget-object v9, Lcom/amazon/kcp/cover/badge/BadgeSource;->HOME:Lcom/amazon/kcp/cover/badge/BadgeSource;

    const/4 v4, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v2, v0

    invoke-static/range {v1 .. v9}, Lcom/amazon/kcp/cover/LibraryCoverFactory;->bindResumeCover(Landroid/content/Context;Lcom/amazon/kcp/library/ILibraryDisplayItem;Landroid/view/View;ZIIIILcom/amazon/kcp/cover/badge/BadgeSource;)Landroid/view/View;

    .line 610
    invoke-static {p1}, Lcom/amazon/kcp/home/widget/resume/RubyResumeWidgetProvider$ResumeViewHolder;->access$900(Lcom/amazon/kcp/home/widget/resume/RubyResumeWidgetProvider$ResumeViewHolder;)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/amazon/kcp/home/widget/resume/RubyResumeWidgetProvider$ResumeAdapter$2;

    invoke-direct {v2, p0, p2, v0}, Lcom/amazon/kcp/home/widget/resume/RubyResumeWidgetProvider$ResumeAdapter$2;-><init>(Lcom/amazon/kcp/home/widget/resume/RubyResumeWidgetProvider$ResumeAdapter;ILcom/amazon/kcp/library/ILibraryDisplayItem;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 619
    invoke-static {p1}, Lcom/amazon/kcp/home/widget/resume/RubyResumeWidgetProvider$ResumeViewHolder;->access$900(Lcom/amazon/kcp/home/widget/resume/RubyResumeWidgetProvider$ResumeViewHolder;)Landroid/view/View;

    move-result-object p1

    new-instance v1, Lcom/amazon/kcp/home/widget/resume/RubyResumeWidgetProvider$ResumeAdapter$3;

    invoke-direct {v1, p0, p2, v0}, Lcom/amazon/kcp/home/widget/resume/RubyResumeWidgetProvider$ResumeAdapter$3;-><init>(Lcom/amazon/kcp/home/widget/resume/RubyResumeWidgetProvider$ResumeAdapter;ILcom/amazon/kcp/library/ILibraryDisplayItem;)V

    invoke-virtual {p1, v1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 524
    invoke-virtual {p0, p1, p2}, Lcom/amazon/kcp/home/widget/resume/RubyResumeWidgetProvider$ResumeAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/amazon/kcp/home/widget/resume/RubyResumeWidgetProvider$ResumeViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/amazon/kcp/home/widget/resume/RubyResumeWidgetProvider$ResumeViewHolder;
    .locals 3

    .line 582
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    .line 583
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 584
    sget v1, Lcom/amazon/kindle/librarymodule/R$layout;->resume_cover:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 585
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/amazon/kindle/librarymodule/R$dimen;->shoveler_default_cover_width:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    .line 586
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v1, Lcom/amazon/kindle/librarymodule/R$dimen;->shoveler_default_cover_height:I

    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p2

    .line 587
    new-instance v1, Lcom/amazon/kcp/home/widget/resume/RubyResumeWidgetProvider$ResumeViewHolder;

    invoke-static {p1, p2, v0}, Lcom/amazon/kcp/cover/LibraryCoverFactory;->setUpResumeCover(Landroid/view/View;II)Landroid/view/View;

    invoke-direct {v1, p1}, Lcom/amazon/kcp/home/widget/resume/RubyResumeWidgetProvider$ResumeViewHolder;-><init>(Landroid/view/View;)V

    return-object v1
.end method

.method public updateAdapterAndNotify(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/amazon/kcp/library/ILibraryDisplayItem;",
            ">;)V"
        }
    .end annotation

    .line 556
    iget-object v0, p0, Lcom/amazon/kcp/home/widget/resume/RubyResumeWidgetProvider$ResumeAdapter;->bookMetadataList:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 558
    iput-object p1, p0, Lcom/amazon/kcp/home/widget/resume/RubyResumeWidgetProvider$ResumeAdapter;->bookMetadataList:Ljava/util/List;

    .line 559
    invoke-static {}, Lcom/amazon/foundation/internal/ThreadPoolManager;->getInstance()Lcom/amazon/foundation/internal/IThreadPoolManager;

    move-result-object p1

    new-instance v0, Lcom/amazon/kcp/home/widget/resume/RubyResumeWidgetProvider$ResumeAdapter$1;

    invoke-direct {v0, p0}, Lcom/amazon/kcp/home/widget/resume/RubyResumeWidgetProvider$ResumeAdapter$1;-><init>(Lcom/amazon/kcp/home/widget/resume/RubyResumeWidgetProvider$ResumeAdapter;)V

    invoke-interface {p1, v0}, Lcom/amazon/kindle/krx/thread/IThreadPoolManager;->submitOnMainThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public updateAdapterMaintainingOrder(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/amazon/kcp/library/ILibraryDisplayItem;",
            ">;)V"
        }
    .end annotation

    .line 544
    iget-object v0, p0, Lcom/amazon/kcp/home/widget/resume/RubyResumeWidgetProvider$ResumeAdapter;->this$0:Lcom/amazon/kcp/home/widget/resume/RubyResumeWidgetProvider;

    iget-object v1, p0, Lcom/amazon/kcp/home/widget/resume/RubyResumeWidgetProvider$ResumeAdapter;->bookMetadataList:Ljava/util/List;

    invoke-virtual {v0, v1, p1}, Lcom/amazon/kcp/home/widget/resume/RubyResumeWidgetProvider;->updateMetadataList(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kcp/home/widget/resume/RubyResumeWidgetProvider$ResumeAdapter;->bookMetadataList:Ljava/util/List;

    return-void
.end method
