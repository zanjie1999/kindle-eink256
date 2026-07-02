.class public Lcom/amazon/kcp/debug/NotesAndHighlightDebugMenuPageProvider;
.super Lcom/amazon/kindle/krx/debug/AbstractDebugMenuPage;
.source "NotesAndHighlightDebugMenuPageProvider.java"


# instance fields
.field private final context:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 23
    invoke-direct {p0}, Lcom/amazon/kindle/krx/debug/AbstractDebugMenuPage;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/amazon/kcp/debug/NotesAndHighlightDebugMenuPageProvider;->context:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$000(Lcom/amazon/kcp/debug/NotesAndHighlightDebugMenuPageProvider;)Landroid/content/Context;
    .locals 0

    .line 18
    iget-object p0, p0, Lcom/amazon/kcp/debug/NotesAndHighlightDebugMenuPageProvider;->context:Landroid/content/Context;

    return-object p0
.end method

.method private configureHighlightTutorialOption(Landroid/view/ViewGroup;)V
    .locals 1

    .line 56
    sget v0, Lcom/amazon/kindle/krl/R$id;->enable_highlight_tutorial:I

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/CheckBox;

    if-nez p1, :cond_0

    return-void

    .line 60
    :cond_0
    invoke-static {}, Lcom/amazon/kcp/debug/DebugUtils;->isHighlightTutorialEnabled()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 61
    new-instance v0, Lcom/amazon/kcp/debug/NotesAndHighlightDebugMenuPageProvider$2;

    invoke-direct {v0, p0, p1}, Lcom/amazon/kcp/debug/NotesAndHighlightDebugMenuPageProvider$2;-><init>(Lcom/amazon/kcp/debug/NotesAndHighlightDebugMenuPageProvider;Landroid/widget/CheckBox;)V

    invoke-virtual {p1, v0}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private configureNotebookTutorialOption(Landroid/view/ViewGroup;)V
    .locals 1

    .line 42
    sget v0, Lcom/amazon/kindle/krl/R$id;->enable_notebook_tutorial:I

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/CheckBox;

    if-nez p1, :cond_0

    return-void

    .line 46
    :cond_0
    invoke-static {}, Lcom/amazon/kcp/debug/DebugUtils;->isNotebookTutorialEnabled()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 47
    new-instance v0, Lcom/amazon/kcp/debug/NotesAndHighlightDebugMenuPageProvider$1;

    invoke-direct {v0, p0, p1}, Lcom/amazon/kcp/debug/NotesAndHighlightDebugMenuPageProvider$1;-><init>(Lcom/amazon/kcp/debug/NotesAndHighlightDebugMenuPageProvider;Landroid/widget/CheckBox;)V

    invoke-virtual {p1, v0}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    const-string v0, "Notes&Highlight debug options"

    return-object v0
.end method

.method public getView()Landroid/view/View;
    .locals 3

    .line 34
    iget-object v0, p0, Lcom/amazon/kcp/debug/NotesAndHighlightDebugMenuPageProvider;->context:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 35
    sget v1, Lcom/amazon/kindle/krl/R$layout;->debug_notes_and_highlight:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 36
    invoke-direct {p0, v0}, Lcom/amazon/kcp/debug/NotesAndHighlightDebugMenuPageProvider;->configureNotebookTutorialOption(Landroid/view/ViewGroup;)V

    .line 37
    invoke-direct {p0, v0}, Lcom/amazon/kcp/debug/NotesAndHighlightDebugMenuPageProvider;->configureHighlightTutorialOption(Landroid/view/ViewGroup;)V

    return-object v0
.end method
