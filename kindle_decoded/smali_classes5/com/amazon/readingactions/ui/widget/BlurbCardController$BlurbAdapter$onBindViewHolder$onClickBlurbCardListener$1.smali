.class final Lcom/amazon/readingactions/ui/widget/BlurbCardController$BlurbAdapter$onBindViewHolder$onClickBlurbCardListener$1;
.super Ljava/lang/Object;
.source "BlurbCardController.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/readingactions/ui/widget/BlurbCardController$BlurbAdapter;->onBindViewHolder(Lcom/amazon/readingactions/ui/widget/BlurbCardController$BlurbHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $index:I

.field final synthetic this$0:Lcom/amazon/readingactions/ui/widget/BlurbCardController$BlurbAdapter;


# direct methods
.method constructor <init>(Lcom/amazon/readingactions/ui/widget/BlurbCardController$BlurbAdapter;I)V
    .locals 0

    iput-object p1, p0, Lcom/amazon/readingactions/ui/widget/BlurbCardController$BlurbAdapter$onBindViewHolder$onClickBlurbCardListener$1;->this$0:Lcom/amazon/readingactions/ui/widget/BlurbCardController$BlurbAdapter;

    iput p2, p0, Lcom/amazon/readingactions/ui/widget/BlurbCardController$BlurbAdapter$onBindViewHolder$onClickBlurbCardListener$1;->$index:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    .line 278
    iget-object p1, p0, Lcom/amazon/readingactions/ui/widget/BlurbCardController$BlurbAdapter$onBindViewHolder$onClickBlurbCardListener$1;->this$0:Lcom/amazon/readingactions/ui/widget/BlurbCardController$BlurbAdapter;

    iget-object p1, p1, Lcom/amazon/readingactions/ui/widget/BlurbCardController$BlurbAdapter;->this$0:Lcom/amazon/readingactions/ui/widget/BlurbCardController;

    invoke-static {p1}, Lcom/amazon/readingactions/ui/widget/BlurbCardController;->access$getDef$p(Lcom/amazon/readingactions/ui/widget/BlurbCardController;)Lcom/amazon/readingactions/sidecar/def/widgets/BlurbCardWidgetDef;

    move-result-object p1

    iget-object p1, p1, Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;->metricsTag:Ljava/lang/String;

    sget-object v0, Lcom/amazon/ea/metrics/BlurbCardActions;->CLICK_BLURB_CARD:Lcom/amazon/ea/metrics/BlurbCardActions;

    invoke-static {p1, v0}, Lcom/amazon/ea/metrics/ReadingActionsFastMetrics;->emit(Ljava/lang/String;Lcom/amazon/ea/metrics/WidgetActions;)V

    .line 279
    iget-object p1, p0, Lcom/amazon/readingactions/ui/widget/BlurbCardController$BlurbAdapter$onBindViewHolder$onClickBlurbCardListener$1;->this$0:Lcom/amazon/readingactions/ui/widget/BlurbCardController$BlurbAdapter;

    iget-object p1, p1, Lcom/amazon/readingactions/ui/widget/BlurbCardController$BlurbAdapter;->this$0:Lcom/amazon/readingactions/ui/widget/BlurbCardController;

    iget v0, p0, Lcom/amazon/readingactions/ui/widget/BlurbCardController$BlurbAdapter$onBindViewHolder$onClickBlurbCardListener$1;->$index:I

    const-string v1, "ClickedBlurbCard"

    const-string v2, "bv"

    invoke-static {p1, v0, v1, v2}, Lcom/amazon/readingactions/ui/widget/BlurbCardController;->access$loadDetailPage(Lcom/amazon/readingactions/ui/widget/BlurbCardController;ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method
