.class public Lcom/amazon/kcp/reader/notebook/NotebookTutorialProvider;
.super Ljava/lang/Object;
.source "NotebookTutorialProvider.java"

# interfaces
.implements Lcom/amazon/kcp/reader/notebook/INotebookTutorialProvider;


# static fields
.field private static final INSTANCE:Lcom/amazon/kcp/reader/notebook/NotebookTutorialProvider;


# instance fields
.field private wasOpened:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 30
    new-instance v0, Lcom/amazon/kcp/reader/notebook/NotebookTutorialProvider;

    invoke-direct {v0}, Lcom/amazon/kcp/reader/notebook/NotebookTutorialProvider;-><init>()V

    sput-object v0, Lcom/amazon/kcp/reader/notebook/NotebookTutorialProvider;->INSTANCE:Lcom/amazon/kcp/reader/notebook/NotebookTutorialProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/amazon/kcp/reader/notebook/NotebookTutorialProvider;
    .locals 1

    .line 137
    sget-object v0, Lcom/amazon/kcp/reader/notebook/NotebookTutorialProvider;->INSTANCE:Lcom/amazon/kcp/reader/notebook/NotebookTutorialProvider;

    return-object v0
.end method


# virtual methods
.method public registerNotebookFTUETutorial(Landroid/content/Context;)V
    .locals 14

    .line 58
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 60
    new-instance v0, Lcom/amazon/kedu/ftue/events/TutorialPage;

    sget v1, Lcom/amazon/kindle/krl/R$string;->notebook_tutorial_page_1:I

    sget v2, Lcom/amazon/kindle/krl/R$string;->notebook_tutorial_1:I

    .line 61
    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3, v2}, Lcom/amazon/kedu/ftue/events/TutorialPage;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 62
    new-instance v1, Lcom/amazon/kedu/ftue/events/TutorialPage;

    sget v2, Lcom/amazon/kindle/krl/R$string;->notebook_tutorial_page_1:I

    sget v4, Lcom/amazon/kindle/krl/R$string;->notebook_tutorial_1_reflowable:I

    .line 63
    invoke-virtual {p1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lcom/amazon/kedu/ftue/events/TutorialPage;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 65
    sget v2, Lcom/amazon/kindle/krl/R$string;->notebook_edu_sequence_event_key_default:I

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 66
    sget v3, Lcom/amazon/kindle/krl/R$string;->notebook_edu_sequence_event_key_noxray:I

    invoke-virtual {p1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 68
    sget v4, Lcom/amazon/kindle/krl/R$string;->notebook_tutorial_key:I

    invoke-virtual {p1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 69
    sget v5, Lcom/amazon/kindle/krl/R$string;->notebook_tutorial_metric_key:I

    invoke-virtual {p1, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 70
    sget v6, Lcom/amazon/kindle/krl/R$integer;->notebook_tutorial_priority:I

    invoke-virtual {p1, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v10

    .line 72
    new-instance v6, Lcom/amazon/kcp/reader/notebook/NotebookTutorial;

    new-instance v7, Lcom/amazon/kcp/reader/notebook/NotebookTutorialProvider$1;

    invoke-direct {v7, p0, v1, v0}, Lcom/amazon/kcp/reader/notebook/NotebookTutorialProvider$1;-><init>(Lcom/amazon/kcp/reader/notebook/NotebookTutorialProvider;Lcom/amazon/kedu/ftue/events/TutorialPage;Lcom/amazon/kedu/ftue/events/TutorialPage;)V

    invoke-direct {v6, v4, v10, v5, v7}, Lcom/amazon/kcp/reader/notebook/NotebookTutorial;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/amazon/kedu/ftue/events/TutorialPageProvider;)V

    .line 82
    sget v0, Lcom/amazon/kindle/krl/R$string;->notebook_jit_key:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 83
    sget v0, Lcom/amazon/kindle/krl/R$string;->notebook_jit_metric_key:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 85
    new-instance p1, Lcom/amazon/kcp/reader/notebook/NotebookTutorialProvider$2;

    sget v0, Lcom/amazon/kindle/krl/R$id;->menuitem_notes:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v12

    sget v13, Lcom/amazon/kindle/krl/R$string;->notebook_ftue_jit_message:I

    move-object v7, p1

    move-object v8, p0

    invoke-direct/range {v7 .. v13}, Lcom/amazon/kcp/reader/notebook/NotebookTutorialProvider$2;-><init>(Lcom/amazon/kcp/reader/notebook/NotebookTutorialProvider;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    .line 128
    invoke-static {}, Lcom/amazon/kedu/ftue/Plugin;->getFTUEManager()Lcom/amazon/kedu/ftue/IFTUEManager;

    move-result-object v0

    invoke-interface {v0, v2, v6}, Lcom/amazon/kedu/ftue/IFTUEManager;->registerTutorialForSequence(Ljava/lang/String;Lcom/amazon/kedu/ftue/events/Tutorial;)V

    .line 129
    invoke-static {}, Lcom/amazon/kedu/ftue/Plugin;->getFTUEManager()Lcom/amazon/kedu/ftue/IFTUEManager;

    move-result-object v0

    invoke-interface {v0, v3, v6}, Lcom/amazon/kedu/ftue/IFTUEManager;->registerTutorialForSequence(Ljava/lang/String;Lcom/amazon/kedu/ftue/events/Tutorial;)V

    .line 130
    invoke-static {}, Lcom/amazon/kedu/ftue/Plugin;->getFTUEManager()Lcom/amazon/kedu/ftue/IFTUEManager;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/amazon/kedu/ftue/IFTUEManager;->registerJit(Lcom/amazon/kedu/ftue/events/JIT;)V

    return-void
.end method

.method public declared-synchronized reportNotebookOpened()V
    .locals 2

    monitor-enter p0

    .line 47
    :try_start_0
    iget-boolean v0, p0, Lcom/amazon/kcp/reader/notebook/NotebookTutorialProvider;->wasOpened:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 48
    iput-boolean v0, p0, Lcom/amazon/kcp/reader/notebook/NotebookTutorialProvider;->wasOpened:Z

    .line 49
    invoke-static {}, Lcom/amazon/kedu/ftue/Plugin;->getFTUEManager()Lcom/amazon/kedu/ftue/IFTUEManager;

    move-result-object v0

    const-string v1, "notebook_opened"

    invoke-interface {v0, v1}, Lcom/amazon/kedu/ftue/IFTUEManager;->publishEvent(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 51
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized resetLastOpened()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x0

    .line 38
    :try_start_0
    iput-boolean v0, p0, Lcom/amazon/kcp/reader/notebook/NotebookTutorialProvider;->wasOpened:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 39
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
