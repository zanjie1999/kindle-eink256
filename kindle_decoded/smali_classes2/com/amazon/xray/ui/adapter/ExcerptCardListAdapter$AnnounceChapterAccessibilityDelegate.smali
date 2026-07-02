.class Lcom/amazon/xray/ui/adapter/ExcerptCardListAdapter$AnnounceChapterAccessibilityDelegate;
.super Landroid/view/View$AccessibilityDelegate;
.source "ExcerptCardListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/xray/ui/adapter/ExcerptCardListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AnnounceChapterAccessibilityDelegate"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/xray/ui/adapter/ExcerptCardListAdapter;


# direct methods
.method private constructor <init>(Lcom/amazon/xray/ui/adapter/ExcerptCardListAdapter;)V
    .locals 0

    .line 943
    iput-object p1, p0, Lcom/amazon/xray/ui/adapter/ExcerptCardListAdapter$AnnounceChapterAccessibilityDelegate;->this$0:Lcom/amazon/xray/ui/adapter/ExcerptCardListAdapter;

    invoke-direct {p0}, Landroid/view/View$AccessibilityDelegate;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/amazon/xray/ui/adapter/ExcerptCardListAdapter;Lcom/amazon/xray/ui/adapter/ExcerptCardListAdapter$1;)V
    .locals 0

    .line 943
    invoke-direct {p0, p1}, Lcom/amazon/xray/ui/adapter/ExcerptCardListAdapter$AnnounceChapterAccessibilityDelegate;-><init>(Lcom/amazon/xray/ui/adapter/ExcerptCardListAdapter;)V

    return-void
.end method


# virtual methods
.method public onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 2

    .line 945
    invoke-super {p0, p1, p2}, Landroid/view/View$AccessibilityDelegate;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 947
    iget-object v0, p0, Lcom/amazon/xray/ui/adapter/ExcerptCardListAdapter$AnnounceChapterAccessibilityDelegate;->this$0:Lcom/amazon/xray/ui/adapter/ExcerptCardListAdapter;

    invoke-static {v0}, Lcom/amazon/xray/ui/adapter/ExcerptCardListAdapter;->access$1100(Lcom/amazon/xray/ui/adapter/ExcerptCardListAdapter;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazon/xray/ui/adapter/ExcerptCardListAdapter$AnnounceChapterAccessibilityDelegate;->this$0:Lcom/amazon/xray/ui/adapter/ExcerptCardListAdapter;

    invoke-static {v0}, Lcom/amazon/xray/ui/adapter/ExcerptCardListAdapter;->access$1200(Lcom/amazon/xray/ui/adapter/ExcerptCardListAdapter;)Lcom/amazon/xray/ui/widget/CardCarousel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/xray/ui/widget/CardCarousel;->getFocusedCardIndex()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 948
    iget-object v0, p0, Lcom/amazon/xray/ui/adapter/ExcerptCardListAdapter$AnnounceChapterAccessibilityDelegate;->this$0:Lcom/amazon/xray/ui/adapter/ExcerptCardListAdapter;

    invoke-static {v0}, Lcom/amazon/xray/ui/adapter/ExcerptCardListAdapter;->access$800(Lcom/amazon/xray/ui/adapter/ExcerptCardListAdapter;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/xray/ui/adapter/ExcerptCardListAdapter$AnnounceChapterAccessibilityDelegate;->this$0:Lcom/amazon/xray/ui/adapter/ExcerptCardListAdapter;

    invoke-static {v1}, Lcom/amazon/xray/ui/adapter/ExcerptCardListAdapter;->access$1200(Lcom/amazon/xray/ui/adapter/ExcerptCardListAdapter;)Lcom/amazon/xray/ui/widget/CardCarousel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazon/xray/ui/widget/CardCarousel;->getFocusedCardIndex()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/xray/model/object/Excerpt;

    .line 949
    invoke-virtual {v0}, Lcom/amazon/xray/model/object/Excerpt;->getStart()I

    move-result v0

    invoke-static {v0}, Lcom/amazon/xray/plugin/util/NavigatorUtil;->createPosition(I)Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/xray/plugin/util/TocUtil;->getTocLabel(Lcom/amazon/kindle/krx/reader/IPosition;)Ljava/lang/String;

    move-result-object v0

    .line 950
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ". "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method
