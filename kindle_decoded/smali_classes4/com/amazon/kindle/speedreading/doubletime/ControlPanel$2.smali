.class Lcom/amazon/kindle/speedreading/doubletime/ControlPanel$2;
.super Lcom/amazon/kindle/krx/reader/AbstractReaderNavigationListener;
.source "ControlPanel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kindle/speedreading/doubletime/ControlPanel;-><init>(Lcom/amazon/kindle/krx/IKindleReaderSDK;Lcom/amazon/kindle/speedreading/doubletime/DoubleTimeSpeedReadingBox;Lcom/amazon/kindle/speedreading/doubletime/DoubleTimeWordContainer;Lcom/amazon/kindle/speedreading/doubletime/DoubleTimeBackgroundLayer;Lcom/amazon/kindle/speedreading/doubletime/framework/DoubletimeLooper;Lcom/amazon/kindle/speedreading/doubletime/framework/IWordProvider;Lcom/amazon/kindle/speedreading/doubletime/DoubletimeController;Lcom/amazon/kindle/speedreading/doubletime/WordRunnerAnimationController;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kindle/speedreading/doubletime/ControlPanel;


# direct methods
.method constructor <init>(Lcom/amazon/kindle/speedreading/doubletime/ControlPanel;)V
    .locals 0

    .line 176
    iput-object p1, p0, Lcom/amazon/kindle/speedreading/doubletime/ControlPanel$2;->this$0:Lcom/amazon/kindle/speedreading/doubletime/ControlPanel;

    invoke-direct {p0}, Lcom/amazon/kindle/krx/reader/AbstractReaderNavigationListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onAfterNavigation(Lcom/amazon/kindle/krx/content/IBook;Lcom/amazon/kindle/krx/reader/IReaderNavigationListener$NavigationType;)V
    .locals 0

    .line 181
    iget-object p1, p0, Lcom/amazon/kindle/speedreading/doubletime/ControlPanel$2;->this$0:Lcom/amazon/kindle/speedreading/doubletime/ControlPanel;

    invoke-static {p1}, Lcom/amazon/kindle/speedreading/doubletime/ControlPanel;->access$600(Lcom/amazon/kindle/speedreading/doubletime/ControlPanel;)V

    return-void
.end method
