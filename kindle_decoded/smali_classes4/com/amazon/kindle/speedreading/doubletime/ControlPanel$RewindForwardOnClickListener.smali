.class Lcom/amazon/kindle/speedreading/doubletime/ControlPanel$RewindForwardOnClickListener;
.super Ljava/lang/Object;
.source "ControlPanel.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kindle/speedreading/doubletime/ControlPanel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "RewindForwardOnClickListener"
.end annotation


# instance fields
.field private final MAX_INCREMENT:I

.field private final breakIterator:Ljava/text/BreakIterator;

.field private final isRewind:Z

.field final synthetic this$0:Lcom/amazon/kindle/speedreading/doubletime/ControlPanel;


# direct methods
.method constructor <init>(Lcom/amazon/kindle/speedreading/doubletime/ControlPanel;Z)V
    .locals 0

    .line 971
    iput-object p1, p0, Lcom/amazon/kindle/speedreading/doubletime/ControlPanel$RewindForwardOnClickListener;->this$0:Lcom/amazon/kindle/speedreading/doubletime/ControlPanel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 p1, 0x32

    .line 967
    iput p1, p0, Lcom/amazon/kindle/speedreading/doubletime/ControlPanel$RewindForwardOnClickListener;->MAX_INCREMENT:I

    .line 972
    iput-boolean p2, p0, Lcom/amazon/kindle/speedreading/doubletime/ControlPanel$RewindForwardOnClickListener;->isRewind:Z

    .line 973
    invoke-static {}, Ljava/text/BreakIterator;->getSentenceInstance()Ljava/text/BreakIterator;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kindle/speedreading/doubletime/ControlPanel$RewindForwardOnClickListener;->breakIterator:Ljava/text/BreakIterator;

    return-void
.end method

.method private containsSentenceBreak(Ljava/lang/String;)Z
    .locals 1

    .line 981
    iget-object v0, p0, Lcom/amazon/kindle/speedreading/doubletime/ControlPanel$RewindForwardOnClickListener;->breakIterator:Ljava/text/BreakIterator;

    invoke-virtual {v0, p1}, Ljava/text/BreakIterator;->setText(Ljava/lang/String;)V

    .line 982
    iget-object v0, p0, Lcom/amazon/kindle/speedreading/doubletime/ControlPanel$RewindForwardOnClickListener;->breakIterator:Ljava/text/BreakIterator;

    invoke-virtual {v0}, Ljava/text/BreakIterator;->next()I

    move-result v0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-ge v0, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private forwardFrom(Lcom/amazon/kindle/speedreading/doubletime/framework/Word;)Lcom/amazon/kindle/speedreading/doubletime/framework/Word;
    .locals 3

    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0x32

    if-ge v0, v1, :cond_2

    .line 1025
    iget-object v1, p0, Lcom/amazon/kindle/speedreading/doubletime/ControlPanel$RewindForwardOnClickListener;->this$0:Lcom/amazon/kindle/speedreading/doubletime/ControlPanel;

    invoke-static {v1}, Lcom/amazon/kindle/speedreading/doubletime/ControlPanel;->access$2600(Lcom/amazon/kindle/speedreading/doubletime/ControlPanel;)Lcom/amazon/kindle/speedreading/doubletime/framework/IWordProvider;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/amazon/kindle/speedreading/doubletime/framework/IWordProvider;->getNextWord(Lcom/amazon/kindle/speedreading/doubletime/framework/Word;)Lcom/amazon/kindle/speedreading/doubletime/framework/Word;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_1

    .line 1034
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/amazon/kindle/speedreading/doubletime/framework/Word;->getText()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/amazon/kindle/speedreading/doubletime/framework/Word;->getText()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/amazon/kindle/speedreading/doubletime/ControlPanel$RewindForwardOnClickListener;->containsSentenceBreak(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    move-object p1, v1

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    move-object p1, v1

    goto :goto_0

    :cond_2
    :goto_1
    return-object p1
.end method

.method private rewindFrom(Lcom/amazon/kindle/speedreading/doubletime/framework/Word;)Lcom/amazon/kindle/speedreading/doubletime/framework/Word;
    .locals 4

    .line 990
    iget-object v0, p0, Lcom/amazon/kindle/speedreading/doubletime/ControlPanel$RewindForwardOnClickListener;->this$0:Lcom/amazon/kindle/speedreading/doubletime/ControlPanel;

    invoke-static {v0}, Lcom/amazon/kindle/speedreading/doubletime/ControlPanel;->access$2600(Lcom/amazon/kindle/speedreading/doubletime/ControlPanel;)Lcom/amazon/kindle/speedreading/doubletime/framework/IWordProvider;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/amazon/kindle/speedreading/doubletime/framework/IWordProvider;->getPreviousWord(Lcom/amazon/kindle/speedreading/doubletime/framework/Word;)Lcom/amazon/kindle/speedreading/doubletime/framework/Word;

    move-result-object v0

    if-eqz v0, :cond_2

    const/4 p1, 0x0

    :goto_0
    const/16 v1, 0x32

    if-ge p1, v1, :cond_1

    .line 1002
    iget-object v1, p0, Lcom/amazon/kindle/speedreading/doubletime/ControlPanel$RewindForwardOnClickListener;->this$0:Lcom/amazon/kindle/speedreading/doubletime/ControlPanel;

    invoke-static {v1}, Lcom/amazon/kindle/speedreading/doubletime/ControlPanel;->access$2600(Lcom/amazon/kindle/speedreading/doubletime/ControlPanel;)Lcom/amazon/kindle/speedreading/doubletime/framework/IWordProvider;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/amazon/kindle/speedreading/doubletime/framework/IWordProvider;->getPreviousWord(Lcom/amazon/kindle/speedreading/doubletime/framework/Word;)Lcom/amazon/kindle/speedreading/doubletime/framework/Word;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 1006
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1007
    invoke-virtual {v1}, Lcom/amazon/kindle/speedreading/doubletime/framework/Word;->getText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/amazon/kindle/speedreading/doubletime/framework/Word;->getText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/amazon/kindle/speedreading/doubletime/ControlPanel$RewindForwardOnClickListener;->containsSentenceBreak(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 p1, p1, 0x1

    move-object v0, v1

    goto :goto_0

    :cond_1
    :goto_1
    return-object v0

    :cond_2
    return-object p1
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1050
    :try_start_0
    iget-object p1, p0, Lcom/amazon/kindle/speedreading/doubletime/ControlPanel$RewindForwardOnClickListener;->this$0:Lcom/amazon/kindle/speedreading/doubletime/ControlPanel;

    invoke-static {p1}, Lcom/amazon/kindle/speedreading/doubletime/ControlPanel;->access$500(Lcom/amazon/kindle/speedreading/doubletime/ControlPanel;)Lcom/amazon/kindle/speedreading/doubletime/framework/DoubletimeLooper;

    move-result-object p1

    invoke-virtual {p1}, Lcom/amazon/kindle/speedreading/doubletime/framework/DoubletimeLooper;->isDoubletimePaused()Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 1059
    :cond_0
    iget-object p1, p0, Lcom/amazon/kindle/speedreading/doubletime/ControlPanel$RewindForwardOnClickListener;->this$0:Lcom/amazon/kindle/speedreading/doubletime/ControlPanel;

    invoke-static {p1}, Lcom/amazon/kindle/speedreading/doubletime/ControlPanel;->access$1100(Lcom/amazon/kindle/speedreading/doubletime/ControlPanel;)Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/amazon/kindle/speedreading/doubletime/ControlPanel$RewindForwardOnClickListener;->this$0:Lcom/amazon/kindle/speedreading/doubletime/ControlPanel;

    invoke-static {p1}, Lcom/amazon/kindle/speedreading/doubletime/ControlPanel;->access$1200(Lcom/amazon/kindle/speedreading/doubletime/ControlPanel;)Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object p1

    if-nez p1, :cond_2

    .line 1061
    :cond_1
    iget-object p1, p0, Lcom/amazon/kindle/speedreading/doubletime/ControlPanel$RewindForwardOnClickListener;->this$0:Lcom/amazon/kindle/speedreading/doubletime/ControlPanel;

    invoke-static {p1}, Lcom/amazon/kindle/speedreading/doubletime/ControlPanel;->access$600(Lcom/amazon/kindle/speedreading/doubletime/ControlPanel;)V

    .line 1064
    :cond_2
    iget-object p1, p0, Lcom/amazon/kindle/speedreading/doubletime/ControlPanel$RewindForwardOnClickListener;->this$0:Lcom/amazon/kindle/speedreading/doubletime/ControlPanel;

    invoke-static {p1}, Lcom/amazon/kindle/speedreading/doubletime/ControlPanel;->access$500(Lcom/amazon/kindle/speedreading/doubletime/ControlPanel;)Lcom/amazon/kindle/speedreading/doubletime/framework/DoubletimeLooper;

    move-result-object p1

    invoke-virtual {p1}, Lcom/amazon/kindle/speedreading/doubletime/framework/DoubletimeLooper;->getCurrentWord()Lcom/amazon/kindle/speedreading/doubletime/framework/Word;

    move-result-object p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/amazon/kindle/speedreading/doubletime/ControlPanel$RewindForwardOnClickListener;->this$0:Lcom/amazon/kindle/speedreading/doubletime/ControlPanel;

    .line 1065
    invoke-static {p1}, Lcom/amazon/kindle/speedreading/doubletime/ControlPanel;->access$500(Lcom/amazon/kindle/speedreading/doubletime/ControlPanel;)Lcom/amazon/kindle/speedreading/doubletime/framework/DoubletimeLooper;

    move-result-object p1

    invoke-virtual {p1}, Lcom/amazon/kindle/speedreading/doubletime/framework/DoubletimeLooper;->getCurrentWord()Lcom/amazon/kindle/speedreading/doubletime/framework/Word;

    move-result-object p1

    iget-object v0, p0, Lcom/amazon/kindle/speedreading/doubletime/ControlPanel$RewindForwardOnClickListener;->this$0:Lcom/amazon/kindle/speedreading/doubletime/ControlPanel;

    invoke-static {v0}, Lcom/amazon/kindle/speedreading/doubletime/ControlPanel;->access$1200(Lcom/amazon/kindle/speedreading/doubletime/ControlPanel;)Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kindle/speedreading/doubletime/ControlPanel$RewindForwardOnClickListener;->this$0:Lcom/amazon/kindle/speedreading/doubletime/ControlPanel;

    invoke-static {v1}, Lcom/amazon/kindle/speedreading/doubletime/ControlPanel;->access$1100(Lcom/amazon/kindle/speedreading/doubletime/ControlPanel;)Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/amazon/kindle/speedreading/doubletime/framework/Word;->isBetween(Lcom/amazon/kindle/krx/reader/IPosition;Lcom/amazon/kindle/krx/reader/IPosition;)Z

    move-result p1

    if-nez p1, :cond_4

    .line 1067
    :cond_3
    iget-object p1, p0, Lcom/amazon/kindle/speedreading/doubletime/ControlPanel$RewindForwardOnClickListener;->this$0:Lcom/amazon/kindle/speedreading/doubletime/ControlPanel;

    invoke-static {p1}, Lcom/amazon/kindle/speedreading/doubletime/ControlPanel;->access$1300(Lcom/amazon/kindle/speedreading/doubletime/ControlPanel;)V

    .line 1072
    :cond_4
    iget-object p1, p0, Lcom/amazon/kindle/speedreading/doubletime/ControlPanel$RewindForwardOnClickListener;->this$0:Lcom/amazon/kindle/speedreading/doubletime/ControlPanel;

    invoke-static {p1}, Lcom/amazon/kindle/speedreading/doubletime/ControlPanel;->access$700(Lcom/amazon/kindle/speedreading/doubletime/ControlPanel;)Lcom/amazon/kindle/speedreading/doubletime/DoubletimeController;

    move-result-object p1

    invoke-virtual {p1}, Lcom/amazon/kindle/speedreading/doubletime/DoubletimeController;->getClutchTouchListener()Lcom/amazon/kindle/speedreading/clutch/ClutchTouchListener;

    move-result-object p1

    invoke-virtual {p1}, Lcom/amazon/kindle/speedreading/clutch/ClutchTouchListener;->isFlingMode()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 1075
    iget-object v0, p0, Lcom/amazon/kindle/speedreading/doubletime/ControlPanel$RewindForwardOnClickListener;->this$0:Lcom/amazon/kindle/speedreading/doubletime/ControlPanel;

    invoke-static {v0}, Lcom/amazon/kindle/speedreading/doubletime/ControlPanel;->access$500(Lcom/amazon/kindle/speedreading/doubletime/ControlPanel;)Lcom/amazon/kindle/speedreading/doubletime/framework/DoubletimeLooper;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kindle/speedreading/doubletime/ControlPanel$RewindForwardOnClickListener;->this$0:Lcom/amazon/kindle/speedreading/doubletime/ControlPanel;

    invoke-static {v1}, Lcom/amazon/kindle/speedreading/doubletime/ControlPanel;->access$2300(Lcom/amazon/kindle/speedreading/doubletime/ControlPanel;)Lcom/amazon/kindle/speedreading/doubletime/framework/Word;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/kindle/speedreading/doubletime/framework/DoubletimeLooper;->setCurrentWord(Lcom/amazon/kindle/speedreading/doubletime/framework/Word;)V

    .line 1078
    :cond_5
    iget-object v0, p0, Lcom/amazon/kindle/speedreading/doubletime/ControlPanel$RewindForwardOnClickListener;->this$0:Lcom/amazon/kindle/speedreading/doubletime/ControlPanel;

    invoke-static {v0}, Lcom/amazon/kindle/speedreading/doubletime/ControlPanel;->access$500(Lcom/amazon/kindle/speedreading/doubletime/ControlPanel;)Lcom/amazon/kindle/speedreading/doubletime/framework/DoubletimeLooper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/kindle/speedreading/doubletime/framework/DoubletimeLooper;->getCurrentWord()Lcom/amazon/kindle/speedreading/doubletime/framework/Word;

    move-result-object v0

    .line 1079
    iget-boolean v1, p0, Lcom/amazon/kindle/speedreading/doubletime/ControlPanel$RewindForwardOnClickListener;->isRewind:Z

    if-eqz v1, :cond_6

    invoke-direct {p0, v0}, Lcom/amazon/kindle/speedreading/doubletime/ControlPanel$RewindForwardOnClickListener;->rewindFrom(Lcom/amazon/kindle/speedreading/doubletime/framework/Word;)Lcom/amazon/kindle/speedreading/doubletime/framework/Word;

    move-result-object v1

    goto :goto_0

    :cond_6
    invoke-direct {p0, v0}, Lcom/amazon/kindle/speedreading/doubletime/ControlPanel$RewindForwardOnClickListener;->forwardFrom(Lcom/amazon/kindle/speedreading/doubletime/framework/Word;)Lcom/amazon/kindle/speedreading/doubletime/framework/Word;

    move-result-object v1

    .line 1083
    :goto_0
    invoke-virtual {v1, v0}, Lcom/amazon/kindle/speedreading/doubletime/framework/Word;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 1085
    iget-object v0, p0, Lcom/amazon/kindle/speedreading/doubletime/ControlPanel$RewindForwardOnClickListener;->this$0:Lcom/amazon/kindle/speedreading/doubletime/ControlPanel;

    invoke-static {v0}, Lcom/amazon/kindle/speedreading/doubletime/ControlPanel;->access$500(Lcom/amazon/kindle/speedreading/doubletime/ControlPanel;)Lcom/amazon/kindle/speedreading/doubletime/framework/DoubletimeLooper;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/amazon/kindle/speedreading/doubletime/framework/DoubletimeLooper;->setCurrentWord(Lcom/amazon/kindle/speedreading/doubletime/framework/Word;)V

    if-eqz p1, :cond_7

    .line 1089
    iget-object v0, p0, Lcom/amazon/kindle/speedreading/doubletime/ControlPanel$RewindForwardOnClickListener;->this$0:Lcom/amazon/kindle/speedreading/doubletime/ControlPanel;

    iget-object v1, p0, Lcom/amazon/kindle/speedreading/doubletime/ControlPanel$RewindForwardOnClickListener;->this$0:Lcom/amazon/kindle/speedreading/doubletime/ControlPanel;

    invoke-static {v1}, Lcom/amazon/kindle/speedreading/doubletime/ControlPanel;->access$500(Lcom/amazon/kindle/speedreading/doubletime/ControlPanel;)Lcom/amazon/kindle/speedreading/doubletime/framework/DoubletimeLooper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazon/kindle/speedreading/doubletime/framework/DoubletimeLooper;->getCurrentWord()Lcom/amazon/kindle/speedreading/doubletime/framework/Word;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/amazon/kindle/speedreading/doubletime/ControlPanel;->access$2700(Lcom/amazon/kindle/speedreading/doubletime/ControlPanel;Lcom/amazon/kindle/speedreading/doubletime/framework/Word;)V

    .line 1092
    :cond_7
    iget-object v0, p0, Lcom/amazon/kindle/speedreading/doubletime/ControlPanel$RewindForwardOnClickListener;->this$0:Lcom/amazon/kindle/speedreading/doubletime/ControlPanel;

    invoke-static {v0}, Lcom/amazon/kindle/speedreading/doubletime/ControlPanel;->access$000(Lcom/amazon/kindle/speedreading/doubletime/ControlPanel;)V

    .line 1093
    iget-object v0, p0, Lcom/amazon/kindle/speedreading/doubletime/ControlPanel$RewindForwardOnClickListener;->this$0:Lcom/amazon/kindle/speedreading/doubletime/ControlPanel;

    invoke-static {v0}, Lcom/amazon/kindle/speedreading/doubletime/ControlPanel;->access$200(Lcom/amazon/kindle/speedreading/doubletime/ControlPanel;)V

    .line 1096
    iget-object v0, p0, Lcom/amazon/kindle/speedreading/doubletime/ControlPanel$RewindForwardOnClickListener;->this$0:Lcom/amazon/kindle/speedreading/doubletime/ControlPanel;

    invoke-static {v0}, Lcom/amazon/kindle/speedreading/doubletime/ControlPanel;->access$300(Lcom/amazon/kindle/speedreading/doubletime/ControlPanel;)Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderUIManager()Lcom/amazon/kindle/krx/ui/IReaderUIManager;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kindle/speedreading/doubletime/ControlPanel$RewindForwardOnClickListener;->this$0:Lcom/amazon/kindle/speedreading/doubletime/ControlPanel;

    invoke-static {v1}, Lcom/amazon/kindle/speedreading/doubletime/ControlPanel;->access$700(Lcom/amazon/kindle/speedreading/doubletime/ControlPanel;)Lcom/amazon/kindle/speedreading/doubletime/DoubletimeController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazon/kindle/speedreading/doubletime/DoubletimeController;->getHighlightDecorationProvider()Lcom/amazon/kindle/speedreading/doubletime/HighlightDecorationProvider;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/amazon/kindle/krx/ui/IReaderUIManager;->refreshDecorationProvider(Lcom/amazon/kindle/krx/ui/IContentDecorationProvider;)V

    .line 1100
    iget-boolean v0, p0, Lcom/amazon/kindle/speedreading/doubletime/ControlPanel$RewindForwardOnClickListener;->isRewind:Z

    if-eqz v0, :cond_8

    .line 1102
    iget-object v0, p0, Lcom/amazon/kindle/speedreading/doubletime/ControlPanel$RewindForwardOnClickListener;->this$0:Lcom/amazon/kindle/speedreading/doubletime/ControlPanel;

    invoke-static {v0}, Lcom/amazon/kindle/speedreading/doubletime/ControlPanel;->access$700(Lcom/amazon/kindle/speedreading/doubletime/ControlPanel;)Lcom/amazon/kindle/speedreading/doubletime/DoubletimeController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/kindle/speedreading/doubletime/DoubletimeController;->getMetricsHandler()Lcom/amazon/kindle/speedreading/metric/DoubleTimeMetrics;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/amazon/kindle/speedreading/metric/DoubleTimeMetrics;->reportBackButtonMetric(Z)V

    goto :goto_1

    .line 1105
    :cond_8
    iget-object v0, p0, Lcom/amazon/kindle/speedreading/doubletime/ControlPanel$RewindForwardOnClickListener;->this$0:Lcom/amazon/kindle/speedreading/doubletime/ControlPanel;

    invoke-static {v0}, Lcom/amazon/kindle/speedreading/doubletime/ControlPanel;->access$700(Lcom/amazon/kindle/speedreading/doubletime/ControlPanel;)Lcom/amazon/kindle/speedreading/doubletime/DoubletimeController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/kindle/speedreading/doubletime/DoubletimeController;->getMetricsHandler()Lcom/amazon/kindle/speedreading/metric/DoubleTimeMetrics;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/amazon/kindle/speedreading/metric/DoubleTimeMetrics;->reportForwardButtonMetric(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_9
    :goto_1
    return-void
.end method
