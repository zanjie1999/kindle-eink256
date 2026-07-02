.class public Lcom/amazon/sitb/android/plugin/content/ActionBarDecoration;
.super Ljava/lang/Object;
.source "ActionBarDecoration.java"

# interfaces
.implements Lcom/amazon/kindle/krx/ui/IActionBarDecoration;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<M:",
        "Ljava/lang/Object;",
        "P:",
        "Ljava/lang/Object;",
        "V:",
        "Lcom/amazon/kindle/krx/ui/ColorCodedView;",
        ":",
        "Lcom/amazon/sitb/android/view/HasPresenter<",
        "TP;>;:",
        "Lcom/amazon/sitb/android/view/ShowsModel<",
        "TM;>;>",
        "Ljava/lang/Object;",
        "Lcom/amazon/kindle/krx/ui/IActionBarDecoration;"
    }
.end annotation


# static fields
.field private static final log:Lcom/amazon/sitb/android/ISamplingLogger;


# instance fields
.field private final model:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TM;"
        }
    .end annotation
.end field

.field private final showBarDecider:Lcom/amazon/sitb/android/plugin/content/ShowBarDecider;

.field private final showPosition:Lcom/amazon/kindle/krx/ui/IActionBarDecoration$ActionBarDecorationPosition;

.field private final viewManager:Lcom/amazon/sitb/android/view/ViewManager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/amazon/sitb/android/view/ViewManager<",
            "TP;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 18
    invoke-static {}, Lcom/amazon/sitb/android/impl/LoggerManager;->getInstance()Lcom/amazon/sitb/android/impl/LoggerManager;

    move-result-object v0

    const-class v1, Lcom/amazon/sitb/android/plugin/content/ActionBarDecoration;

    invoke-virtual {v0, v1}, Lcom/amazon/sitb/android/impl/LoggerManager;->getLogger(Ljava/lang/Class;)Lcom/amazon/sitb/android/ISamplingLogger;

    move-result-object v0

    sput-object v0, Lcom/amazon/sitb/android/plugin/content/ActionBarDecoration;->log:Lcom/amazon/sitb/android/ISamplingLogger;

    return-void
.end method

.method public constructor <init>(Lcom/amazon/sitb/android/view/ViewManager;Ljava/lang/Object;Lcom/amazon/sitb/android/plugin/content/ShowBarDecider;Lcom/amazon/kindle/krx/ui/IActionBarDecoration$ActionBarDecorationPosition;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/sitb/android/view/ViewManager<",
            "TP;TV;>;TM;",
            "Lcom/amazon/sitb/android/plugin/content/ShowBarDecider;",
            "Lcom/amazon/kindle/krx/ui/IActionBarDecoration$ActionBarDecorationPosition;",
            ")V"
        }
    .end annotation

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/amazon/sitb/android/plugin/content/ActionBarDecoration;->viewManager:Lcom/amazon/sitb/android/view/ViewManager;

    .line 31
    iput-object p2, p0, Lcom/amazon/sitb/android/plugin/content/ActionBarDecoration;->model:Ljava/lang/Object;

    .line 32
    iput-object p3, p0, Lcom/amazon/sitb/android/plugin/content/ActionBarDecoration;->showBarDecider:Lcom/amazon/sitb/android/plugin/content/ShowBarDecider;

    .line 33
    iput-object p4, p0, Lcom/amazon/sitb/android/plugin/content/ActionBarDecoration;->showPosition:Lcom/amazon/kindle/krx/ui/IActionBarDecoration$ActionBarDecorationPosition;

    return-void
.end method


# virtual methods
.method public getContentDescription()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getDecoration(Lcom/amazon/kindle/krx/ui/IActionBarDecoration$ActionBarDecorationPosition;)Lcom/amazon/kindle/krx/ui/ColorCodedView;
    .locals 5

    .line 39
    iget-object v0, p0, Lcom/amazon/sitb/android/plugin/content/ActionBarDecoration;->showPosition:Lcom/amazon/kindle/krx/ui/IActionBarDecoration$ActionBarDecorationPosition;

    invoke-virtual {v0, p1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazon/sitb/android/plugin/content/ActionBarDecoration;->showBarDecider:Lcom/amazon/sitb/android/plugin/content/ShowBarDecider;

    invoke-interface {v0}, Lcom/amazon/sitb/android/plugin/content/ShowBarDecider;->showBar()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 41
    iget-object v0, p0, Lcom/amazon/sitb/android/plugin/content/ActionBarDecoration;->viewManager:Lcom/amazon/sitb/android/view/ViewManager;

    invoke-virtual {v0}, Lcom/amazon/sitb/android/view/ViewManager;->create()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/amazon/kindle/krx/ui/ColorCodedView;

    .line 42
    move-object v3, v0

    check-cast v3, Lcom/amazon/sitb/android/view/ShowsModel;

    iget-object v4, p0, Lcom/amazon/sitb/android/plugin/content/ActionBarDecoration;->model:Ljava/lang/Object;

    invoke-interface {v3, v4}, Lcom/amazon/sitb/android/view/ShowsModel;->updateViewModel(Ljava/lang/Object;)V

    .line 43
    sget-object v3, Lcom/amazon/sitb/android/plugin/content/ActionBarDecoration;->log:Lcom/amazon/sitb/android/ISamplingLogger;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v0, v4, v1

    aput-object p1, v4, v2

    const-string p1, "Returning view %s for position %s"

    invoke-static {p1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v3, p1}, Lcom/amazon/sitb/android/ISamplingLogger;->debug(Ljava/lang/String;)V

    return-object v0

    .line 47
    :cond_0
    sget-object v0, Lcom/amazon/sitb/android/plugin/content/ActionBarDecoration;->log:Lcom/amazon/sitb/android/ISamplingLogger;

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v1

    const-string p1, "Returning no view for position %s"

    invoke-static {p1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/amazon/sitb/android/ISamplingLogger;->debug(Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1
.end method
