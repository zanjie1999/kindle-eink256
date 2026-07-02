.class public Lcom/amazon/kcp/reader/ui/dictionary/mobi/MobiDefinitionView;
.super Lcom/amazon/kcp/reader/ui/dictionary/DefinitionView;
.source "MobiDefinitionView.java"


# instance fields
.field krfThread:Lcom/amazon/android/docviewer/mobi/KRFExecutorService;


# direct methods
.method constructor <init>(Lcom/amazon/kindle/model/content/ILocalBookItem;Lcom/amazon/kindle/dictionary/IDictionaryDoc;Lcom/amazon/kindle/dictionary/IDictionaryResult;Landroid/content/Context;Lcom/amazon/android/docviewer/mobi/KRFExecutorService;Lcom/amazon/kcp/reader/ui/dictionary/DefinitionViewController;)V
    .locals 7

    .line 26
    sget v5, Lcom/amazon/kindle/dcm/R$integer;->default_extra_line_spacing_definition_popup:I

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionView;-><init>(Lcom/amazon/kindle/model/content/ILocalBookItem;Lcom/amazon/kindle/dictionary/IDictionaryDoc;Lcom/amazon/kindle/dictionary/IDictionaryResult;Landroid/content/Context;ILcom/amazon/kcp/reader/ui/dictionary/DefinitionViewController;)V

    .line 29
    iget-object p1, p0, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionView;->m_settings:Lcom/amazon/kindle/dictionary/DictionaryRenderingSettings;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p3, Lcom/amazon/kindle/dcm/R$integer;->yj_extra_line_spacing_definition_popup:I

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/amazon/kindle/dictionary/DictionaryRenderingSettings;->setAdditionalLineSpacing(I)V

    const/4 p1, 0x1

    .line 30
    iput-boolean p1, p0, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionView;->isTwoStepLoadingSupported:Z

    .line 32
    iput-object p5, p0, Lcom/amazon/kcp/reader/ui/dictionary/mobi/MobiDefinitionView;->krfThread:Lcom/amazon/android/docviewer/mobi/KRFExecutorService;

    return-void
.end method

.method static synthetic access$001(Lcom/amazon/kcp/reader/ui/dictionary/mobi/MobiDefinitionView;)V
    .locals 0

    .line 18
    invoke-super {p0}, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionView;->updateOffscreenBitmap()V

    return-void
.end method


# virtual methods
.method protected updateOffscreenBitmap()V
    .locals 3

    .line 38
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/dictionary/mobi/MobiDefinitionView;->krfThread:Lcom/amazon/android/docviewer/mobi/KRFExecutorService;

    new-instance v1, Lcom/amazon/android/docviewer/mobi/KRFExecutorService$KRFTask;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Lcom/amazon/kcp/reader/ui/dictionary/mobi/MobiDefinitionView$1;

    invoke-direct {v2, p0}, Lcom/amazon/kcp/reader/ui/dictionary/mobi/MobiDefinitionView$1;-><init>(Lcom/amazon/kcp/reader/ui/dictionary/mobi/MobiDefinitionView;)V

    invoke-direct {v1, v0, v2}, Lcom/amazon/android/docviewer/mobi/KRFExecutorService$KRFTask;-><init>(Lcom/amazon/android/docviewer/mobi/KRFExecutorService;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1}, Lcom/amazon/android/docviewer/mobi/KRFExecutorService;->submitBlockingTaskToKRFThread(Lcom/amazon/android/docviewer/mobi/KRFExecutorService$KRFTask;)Ljava/lang/Object;

    return-void
.end method
