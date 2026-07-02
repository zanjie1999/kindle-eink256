.class public Lcom/amazon/kcp/reader/ui/dictionary/DefinitionViewController;
.super Ljava/lang/Object;
.source "DefinitionViewController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kcp/reader/ui/dictionary/DefinitionViewController$TabletDictionaryDownloadObserver;,
        Lcom/amazon/kcp/reader/ui/dictionary/DefinitionViewController$DefinitionLinkClickListener;
    }
.end annotation


# static fields
.field private static final AMAZON_EMBER_REGULAR_FONT_FILE_NAME:Ljava/lang/String; = "Amazon-Ember-Regular.ttf"

.field private static final METRICS_CLASS_NAME:Ljava/lang/String; = "InfoCardDictionary"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private cardTitle:Landroid/widget/TextView;

.field private context:Landroid/content/Context;

.field private currentSelection:Lcom/amazon/kindle/krx/content/IContentSelection;

.field private final definitionContainer:Landroid/view/ViewGroup;

.field private definitionLoadingIndicator:Landroid/widget/ImageView;

.field private definitionPopupMessage:Landroid/widget/TextView;

.field private definitionPopupMessageTitle:Landroid/widget/TextView;

.field private definitionScrollView:Lcom/amazon/android/widget/ScrollListenerScrollView;

.field protected definitionView:Lcom/amazon/android/docviewer/KindleDocDefinitionView;

.field protected definitionViewFrame:Landroid/widget/FrameLayout;

.field private definitionViewFrameParent:Landroid/view/ViewGroup;

.field private dictionaryDownloadButton:Landroid/view/View;

.field private dictionaryDownloadButtonText:Landroid/widget/TextView;

.field private dictionaryDownloadContent:Landroid/view/View;

.field private dictionaryFullDefinitionButtonText:Landroid/widget/TextView;

.field protected dictionaryManager:Lcom/amazon/kcp/reader/ui/dictionary/internal/DictionaryManager;

.field private dictionaryPresenter:Lcom/amazon/kcp/reader/ui/dictionary/internal/DictionaryPresenter;

.field private dictionarySelectionButton:Landroid/view/View;

.field private dictionarySelectionButtonText:Landroid/widget/TextView;

.field private downloadButton:Landroid/widget/ImageView;

.field private downloadProgressBar:Landroid/widget/ProgressBar;

.field protected downloadTracker:Lcom/amazon/kcp/library/models/internal/BookDownloadTracker;

.field private fullDefinitionButton:Landroid/view/View;

.field private fullDefinitionLoadingIndicator:Landroid/widget/ImageView;

.field private historyManager:Lcom/amazon/kcp/application/HistoryManager;

.field private inlineGoToDictionaryLink:Landroid/widget/TextView;

.field private libraryService:Lcom/amazon/kindle/content/ILibraryService;

.field private lookUpResult:Lcom/amazon/kindle/dictionary/IDictionaryResult;

.field private networkService:Lcom/amazon/kindle/krx/network/INetworkService;

.field protected readerController:Lcom/amazon/kcp/reader/IReaderController;

.field private selectedDictionaryAsin:Ljava/lang/String;

.field private selectedDictionaryId:Ljava/lang/String;

.field private selectedDictionaryName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 86
    const-class v0, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionViewController;

    invoke-static {v0}, Lcom/amazon/kindle/log/Log;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionViewController;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup;)V
    .locals 1

    .line 151
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 97
    iput-object v0, p0, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionViewController;->lookUpResult:Lcom/amazon/kindle/dictionary/IDictionaryResult;

    .line 152
    iput-object p1, p0, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionViewController;->definitionContainer:Landroid/view/ViewGroup;

    const-string p1, ""

    .line 153
    iput-object p1, p0, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionViewController;->selectedDictionaryName:Ljava/lang/String;

    .line 154
    iput-object p1, p0, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionViewController;->selectedDictionaryAsin:Ljava/lang/String;

    .line 155
    iput-object p1, p0, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionViewController;->selectedDictionaryId:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/amazon/kcp/reader/ui/dictionary/DefinitionViewController;)Ljava/lang/String;
    .locals 0

    .line 84
    iget-object p0, p0, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionViewController;->selectedDictionaryName:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$002(Lcom/amazon/kcp/reader/ui/dictionary/DefinitionViewController;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 84
    iput-object p1, p0, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionViewController;->selectedDictionaryName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .line 84
    sget-object v0, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionViewController;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/amazon/kcp/reader/ui/dictionary/DefinitionViewController;)Lcom/amazon/kcp/reader/ui/dictionary/internal/DictionaryPresenter;
    .locals 0

    .line 84
    iget-object p0, p0, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionViewController;->dictionaryPresenter:Lcom/amazon/kcp/reader/ui/dictionary/internal/DictionaryPresenter;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/amazon/kcp/reader/ui/dictionary/DefinitionViewController;)Lcom/amazon/kindle/dictionary/IDictionaryResult;
    .locals 0

    .line 84
    iget-object p0, p0, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionViewController;->lookUpResult:Lcom/amazon/kindle/dictionary/IDictionaryResult;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/amazon/kcp/reader/ui/dictionary/DefinitionViewController;)Lcom/amazon/kcp/application/HistoryManager;
    .locals 0

    .line 84
    iget-object p0, p0, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionViewController;->historyManager:Lcom/amazon/kcp/application/HistoryManager;

    return-object p0
.end method

.method static synthetic access$1400(Lcom/amazon/kcp/reader/ui/dictionary/DefinitionViewController;Ljava/lang/String;Lcom/amazon/kcp/reader/ui/dictionary/IDictionaryLocator;)V
    .locals 0

    .line 84
    invoke-direct {p0, p1, p2}, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionViewController;->showDictionaryDownloadingView(Ljava/lang/String;Lcom/amazon/kcp/reader/ui/dictionary/IDictionaryLocator;)V

    return-void
.end method

.method static synthetic access$200(Lcom/amazon/kcp/reader/ui/dictionary/DefinitionViewController;)Ljava/lang/String;
    .locals 0

    .line 84
    iget-object p0, p0, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionViewController;->selectedDictionaryAsin:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$300(Lcom/amazon/kcp/reader/ui/dictionary/DefinitionViewController;)Landroid/widget/ProgressBar;
    .locals 0

    .line 84
    iget-object p0, p0, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionViewController;->downloadProgressBar:Landroid/widget/ProgressBar;

    return-object p0
.end method

.method static synthetic access$400(Lcom/amazon/kcp/reader/ui/dictionary/DefinitionViewController;)Ljava/util/ArrayList;
    .locals 0

    .line 84
    invoke-direct {p0}, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionViewController;->getDictionaries()Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$500(Lcom/amazon/kcp/reader/ui/dictionary/DefinitionViewController;)Ljava/lang/String;
    .locals 0

    .line 84
    iget-object p0, p0, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionViewController;->selectedDictionaryId:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$502(Lcom/amazon/kcp/reader/ui/dictionary/DefinitionViewController;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 84
    iput-object p1, p0, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionViewController;->selectedDictionaryId:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$600(Lcom/amazon/kcp/reader/ui/dictionary/DefinitionViewController;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 84
    invoke-direct {p0, p1}, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionViewController;->getDictShortTitle(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$700(Lcom/amazon/kcp/reader/ui/dictionary/DefinitionViewController;[Ljava/lang/String;ILjava/util/ArrayList;)Landroidx/appcompat/app/AlertDialog$Builder;
    .locals 0

    .line 84
    invoke-direct {p0, p1, p2, p3}, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionViewController;->getAlertDialogBuilderForDictionarySelect([Ljava/lang/String;ILjava/util/ArrayList;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$800(Lcom/amazon/kcp/reader/ui/dictionary/DefinitionViewController;)Landroid/content/Context;
    .locals 0

    .line 84
    iget-object p0, p0, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionViewController;->context:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$900(Lcom/amazon/kcp/reader/ui/dictionary/DefinitionViewController;)Landroid/view/ViewGroup;
    .locals 0

    .line 84
    iget-object p0, p0, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionViewController;->definitionContainer:Landroid/view/ViewGroup;

    return-object p0
.end method

.method public static checkAndGetSingleWord(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 187
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    .line 189
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v3

    if-eqz v3, :cond_1

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    if-ne v2, v1, :cond_2

    return-object v0

    .line 198
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    :goto_1
    if-ge v2, v1, :cond_3

    .line 199
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v4

    if-nez v4, :cond_3

    .line 200
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    :goto_2
    if-ge v2, v1, :cond_4

    .line 205
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v4

    if-eqz v4, :cond_4

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_4
    if-ne v2, v1, :cond_5

    .line 211
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_5
    return-object v0
.end method

.method private createDictionaryView(Lcom/amazon/kindle/dictionary/IDictionaryResult;)V
    .locals 2

    .line 768
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionViewController;->dictionaryPresenter:Lcom/amazon/kcp/reader/ui/dictionary/internal/DictionaryPresenter;

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/ui/dictionary/internal/DictionaryPresenter;->getOpenedDictionaryDocument()Lcom/amazon/kcp/reader/ui/dictionary/IDictionaryDocument;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 770
    iget-object v1, p0, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionViewController;->context:Landroid/content/Context;

    invoke-interface {v0, v1, p1, p0}, Lcom/amazon/kcp/reader/ui/dictionary/IDictionaryDocument;->createDefinitionView(Landroid/content/Context;Lcom/amazon/kindle/dictionary/IDictionaryResult;Lcom/amazon/kcp/reader/ui/dictionary/DefinitionViewController;)Lcom/amazon/android/docviewer/KindleDocDefinitionView;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionViewController;->definitionView:Lcom/amazon/android/docviewer/KindleDocDefinitionView;

    if-eqz p1, :cond_0

    const/16 v0, 0x8

    .line 772
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 774
    invoke-direct {p0}, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionViewController;->getColorMode()Lcom/amazon/kindle/krx/ui/ColorMode;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionViewController;->setColorMode(Lcom/amazon/kindle/krx/ui/ColorMode;)V

    .line 777
    invoke-direct {p0}, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionViewController;->setupScrollViewMetric()V

    .line 781
    new-instance p1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v0, -0x1

    invoke-direct {p1, v0, v0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 783
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionViewController;->definitionViewFrame:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionViewController;->definitionView:Lcom/amazon/android/docviewer/KindleDocDefinitionView;

    invoke-virtual {v0, v1, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    return-void
.end method

.method private getAlertDialogBuilderForDictionarySelect([Ljava/lang/String;ILjava/util/ArrayList;)Landroidx/appcompat/app/AlertDialog$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/ArrayList<",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;)",
            "Landroidx/appcompat/app/AlertDialog$Builder;"
        }
    .end annotation

    .line 502
    new-instance v0, Landroidx/appcompat/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionViewController;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 503
    sget v1, Lcom/amazon/kindle/dcm/R$string;->select_dictionary_list_title:I

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(I)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 505
    new-instance v1, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionViewController$7;

    invoke-direct {v1, p0}, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionViewController$7;-><init>(Lcom/amazon/kcp/reader/ui/dictionary/DefinitionViewController;)V

    .line 521
    invoke-virtual {v0, p1, p2, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 523
    sget p1, Lcom/amazon/kindle/dcm/R$string;->select:I

    new-instance p2, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionViewController$8;

    invoke-direct {p2, p0, p3}, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionViewController$8;-><init>(Lcom/amazon/kcp/reader/ui/dictionary/DefinitionViewController;Ljava/util/ArrayList;)V

    invoke-virtual {v0, p1, p2}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 599
    sget p1, Lcom/amazon/kindle/dcm/R$string;->cancel:I

    new-instance p2, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionViewController$9;

    invoke-direct {p2, p0}, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionViewController$9;-><init>(Lcom/amazon/kcp/reader/ui/dictionary/DefinitionViewController;)V

    invoke-virtual {v0, p1, p2}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    return-object v0
.end method

.method private getColorMode()Lcom/amazon/kindle/krx/ui/ColorMode;
    .locals 1

    .line 1481
    invoke-static {}, Lcom/amazon/kcp/util/DocViewerUtils;->getColorModeId()Lcom/amazon/android/docviewer/KindleDocColorMode$Id;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/kcp/ui/ColorModeUtil;->getColorMode(Lcom/amazon/android/docviewer/KindleDocColorMode$Id;)Lcom/amazon/kindle/krx/ui/ColorMode;

    move-result-object v0

    return-object v0
.end method

.method private getDefinitionLinkClickListener(Z)Landroid/view/View$OnClickListener;
    .locals 2

    .line 1156
    new-instance v0, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionViewController$DefinitionLinkClickListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionViewController$DefinitionLinkClickListener;-><init>(Lcom/amazon/kcp/reader/ui/dictionary/DefinitionViewController;ZLcom/amazon/kcp/reader/ui/dictionary/DefinitionViewController$1;)V

    return-object v0
.end method

.method private getDictShortTitle(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1449
    invoke-direct {p0}, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionViewController;->getLibraryService()Lcom/amazon/kindle/content/ILibraryService;

    move-result-object v0

    sget-object v1, Lcom/amazon/kindle/content/ContentMetadataField;->SHORT_TITLE:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lcom/amazon/kindle/content/ILibraryService;->getDictionaryFieldFromAsin(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private getDictionaries()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 1432
    invoke-static {}, Lcom/amazon/kcp/reader/ui/dictionary/TabletDefinitionContainer;->getDictionaries()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method private getDictionaryDownloadObserver(Ljava/lang/String;Landroid/widget/ProgressBar;Lcom/amazon/kcp/reader/ui/dictionary/IDictionaryLocator;)Lcom/amazon/kcp/library/models/internal/IBookDownloadObserver;
    .locals 1

    .line 931
    new-instance v0, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionViewController$TabletDictionaryDownloadObserver;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionViewController$TabletDictionaryDownloadObserver;-><init>(Lcom/amazon/kcp/reader/ui/dictionary/DefinitionViewController;Ljava/lang/String;Landroid/widget/ProgressBar;Lcom/amazon/kcp/reader/ui/dictionary/IDictionaryLocator;)V

    return-object v0
.end method

.method private getLibraryService()Lcom/amazon/kindle/content/ILibraryService;
    .locals 1

    .line 1453
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionViewController;->libraryService:Lcom/amazon/kindle/content/ILibraryService;

    if-nez v0, :cond_0

    .line 1454
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getLibraryService()Lcom/amazon/kindle/content/ILibraryService;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionViewController;->libraryService:Lcom/amazon/kindle/content/ILibraryService;

    .line 1456
    :cond_0
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionViewController;->libraryService:Lcom/amazon/kindle/content/ILibraryService;

    return-object v0
.end method

.method private openDictionary(Lcom/amazon/kindle/content/ContentMetadata;)V
    .locals 1

    .line 754
    invoke-direct {p0}, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionViewController;->removeDefinitionView()V

    .line 755
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionViewController;->dictionaryPresenter:Lcom/amazon/kcp/reader/ui/dictionary/internal/DictionaryPresenter;

    invoke-virtual {v0, p1}, Lcom/amazon/kcp/reader/ui/dictionary/internal/DictionaryPresenter;->openDictionary(Lcom/amazon/kindle/content/ContentMetadata;)V

    return-void
.end method

.method private removeDefinitionView()V
    .locals 2

    .line 759
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionViewController;->definitionView:Lcom/amazon/android/docviewer/KindleDocDefinitionView;

    if-eqz v0, :cond_0

    .line 760
    iget-object v1, p0, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionViewController;->definitionViewFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 761
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionViewController;->definitionView:Lcom/amazon/android/docviewer/KindleDocDefinitionView;

    invoke-virtual {v0}, Lcom/amazon/android/docviewer/KindleDocDefinitionView;->destroy()V

    const/4 v0, 0x0

    .line 762
    iput-object v0, p0, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionViewController;->definitionView:Lcom/amazon/android/docviewer/KindleDocDefinitionView;

    :cond_0
    return-void
.end method

.method private resetChildViews()V
    .locals 2

    .line 1160
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionViewController;->definitionViewFrame:Landroid/widget/FrameLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 1161
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionViewController;->definitionViewFrameParent:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 1163
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionViewController;->fullDefinitionButton:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1164
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionViewController;->definitionPopupMessageTitle:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1165
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionViewController;->definitionPopupMessage:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1166
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionViewController;->dictionaryDownloadContent:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1167
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionViewController;->dictionaryDownloadButton:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private setDictionaryDownloadProgressBarColor(Lcom/amazon/kindle/krx/ui/ColorMode;Landroid/widget/ProgressBar;)V
    .locals 1

    .line 862
    sget-object v0, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionViewController$13;->$SwitchMap$com$amazon$kindle$krx$ui$ColorMode:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    .line 870
    iget-object p1, p0, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionViewController;->context:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/amazon/kindle/dcm/R$color;->info_card_v2_content_text_color_white_mode:I

    .line 871
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    .line 870
    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/ProgressBar;->setProgressTintList(Landroid/content/res/ColorStateList;)V

    .line 872
    iget-object p1, p0, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionViewController;->context:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/amazon/kindle/dcm/R$color;->info_card_v2_content_secondary_text_color_white_mode:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    invoke-virtual {p2, p1}, Landroid/widget/ProgressBar;->setBackgroundColor(I)V

    goto :goto_0

    .line 866
    :cond_0
    iget-object p1, p0, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionViewController;->context:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/amazon/kindle/dcm/R$color;->info_card_v2_dark_mode_text_color:I

    .line 867
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    .line 866
    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/ProgressBar;->setProgressTintList(Landroid/content/res/ColorStateList;)V

    :goto_0
    return-void
.end method

.method private setTypeface()V
    .locals 3

    .line 1468
    invoke-static {}, Lcom/amazon/kindle/build/BuildInfo;->isFirstPartyBuild()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1469
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionViewController;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const-string v1, "Amazon-Ember-Regular.ttf"

    invoke-static {v0, v1}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    const/4 v1, 0x1

    .line 1470
    invoke-static {v0, v1}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v1

    .line 1471
    iget-object v2, p0, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionViewController;->cardTitle:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 1472
    iget-object v2, p0, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionViewController;->definitionPopupMessageTitle:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 1473
    iget-object v2, p0, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionViewController;->definitionPopupMessage:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 1474
    iget-object v2, p0, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionViewController;->dictionaryDownloadButtonText:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 1475
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionViewController;->dictionarySelectionButtonText:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 1476
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionViewController;->dictionaryFullDefinitionButtonText:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    :cond_0
    return-void
.end method

.method private setupAccessibility()V
    .locals 2

    .line 252
    new-instance v0, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionViewController$1;

    invoke-direct {v0, p0}, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionViewController$1;-><init>(Lcom/amazon/kcp/reader/ui/dictionary/DefinitionViewController;)V

    .line 266
    iget-object v1, p0, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionViewController;->definitionPopupMessageTitle:Landroid/widget/TextView;

    invoke-static {v1, v0}, Landroidx/core/view/ViewCompat;->setAccessibilityDelegate(Landroid/view/View;Landroidx/core/view/AccessibilityDelegateCompat;)V

    .line 267
    iget-object v1, p0, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionViewController;->definitionPopupMessage:Landroid/widget/TextView;

    invoke-static {v1, v0}, Landroidx/core/view/ViewCompat;->setAccessibilityDelegate(Landroid/view/View;Landroidx/core/view/AccessibilityDelegateCompat;)V

    .line 269
    new-instance v0, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionViewController$2;

    invoke-direct {v0, p0}, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionViewController$2;-><init>(Lcom/amazon/kcp/reader/ui/dictionary/DefinitionViewController;)V

    .line 282
    iget-object v1, p0, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionViewController;->dictionarySelectionButton:Landroid/view/View;

    invoke-static {v1, v0}, Landroidx/core/view/ViewCompat;->setAccessibilityDelegate(Landroid/view/View;Landroidx/core/view/AccessibilityDelegateCompat;)V

    return-void
.end method

.method private setupDictionarySelectionButtonText(Ljava/lang/String;)V
    .locals 1

    .line 1424
    invoke-static {p1}, Lcom/amazon/kcp/util/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1425
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionViewController;->dictionarySelectionButtonText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1427
    :cond_0
    iget-object p1, p0, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionViewController;->dictionarySelectionButtonText:Landroid/widget/TextView;

    sget v0, Lcom/amazon/kindle/dcm/R$string;->select_dictionary:I

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    :goto_0
    return-void
.end method

.method private setupScrollViewMetric()V
    .locals 3

    .line 350
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 351
    iget-object v1, p0, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionViewController;->definitionScrollView:Lcom/amazon/android/widget/ScrollListenerScrollView;

    new-instance v2, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionViewController$3;

    invoke-direct {v2, p0, v0}, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionViewController$3;-><init>(Lcom/amazon/kcp/reader/ui/dictionary/DefinitionViewController;Ljava/util/concurrent/atomic/AtomicBoolean;)V

    invoke-virtual {v1, v2}, Lcom/amazon/android/widget/ScrollListenerScrollView;->addScrollChangedListener(Lcom/amazon/android/widget/ScrollListenerScrollView$onScrollChangedListener;)V

    .line 361
    iget-object v1, p0, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionViewController;->definitionScrollView:Lcom/amazon/android/widget/ScrollListenerScrollView;

    new-instance v2, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionViewController$4;

    invoke-direct {v2, p0, v0}, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionViewController$4;-><init>(Lcom/amazon/kcp/reader/ui/dictionary/DefinitionViewController;Ljava/util/concurrent/atomic/AtomicBoolean;)V

    invoke-virtual {v1, v2}, Landroid/widget/ScrollView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method private showCustomMessage(I)V
    .locals 2

    .line 669
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionViewController;->definitionPopupMessageTitle:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 670
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionViewController;->definitionPopupMessageTitle:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    return-void
.end method

.method private showDefinitionFoundView()V
    .locals 2

    .line 655
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionViewController;->definitionViewFrameParent:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 656
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionViewController;->definitionViewFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 657
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionViewController;->definitionView:Lcom/amazon/android/docviewer/KindleDocDefinitionView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 658
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionViewController;->definitionView:Lcom/amazon/android/docviewer/KindleDocDefinitionView;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method private showDefinitionNotFoundView()V
    .locals 2

    .line 663
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionViewController;->definitionPopupMessageTitle:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 664
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionViewController;->definitionPopupMessageTitle:Landroid/widget/TextView;

    sget v1, Lcom/amazon/kindle/dcm/R$string;->definition_not_available_title:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    return-void
.end method

.method private showDictionaryCorruptView(Ljava/lang/String;Lcom/amazon/kcp/reader/ui/dictionary/IDictionaryLocator;)V
    .locals 3

    .line 893
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionViewController;->definitionPopupMessageTitle:Landroid/widget/TextView;

    invoke-direct {p0}, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionViewController;->useCompactView()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    const/16 v1, 0x8

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 894
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionViewController;->definitionPopupMessage:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 895
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionViewController;->dictionaryDownloadContent:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 897
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionViewController;->definitionPopupMessageTitle:Landroid/widget/TextView;

    sget v1, Lcom/amazon/kindle/dcm/R$string;->dictionary_corrupt_title:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 898
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionViewController;->definitionPopupMessage:Landroid/widget/TextView;

    sget v1, Lcom/amazon/kindle/dcm/R$string;->dictionary_corrupt_message:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 899
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionViewController;->downloadButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setActivated(Z)V

    .line 902
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionViewController;->downloadProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 903
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionViewController;->downloadProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getMax()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setSecondaryProgress(I)V

    .line 905
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionViewController;->downloadButton:Landroid/widget/ImageView;

    new-instance v1, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionViewController$12;

    invoke-direct {v1, p0, p2, p1}, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionViewController$12;-><init>(Lcom/amazon/kcp/reader/ui/dictionary/DefinitionViewController;Lcom/amazon/kcp/reader/ui/dictionary/IDictionaryLocator;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private showDictionaryDownloadFailedView(Ljava/lang/String;Lcom/amazon/kcp/reader/ui/dictionary/IDictionaryLocator;Ljava/lang/String;)V
    .locals 4

    const/4 v0, 0x0

    .line 681
    invoke-interface {p2, v0}, Lcom/amazon/kcp/reader/ui/dictionary/IDictionaryLocator;->getBoundDictionary(Z)Lcom/amazon/kindle/content/ContentMetadata;

    move-result-object v1

    .line 682
    invoke-virtual {v1}, Lcom/amazon/kindle/content/ContentMetadata;->getState()Lcom/amazon/kindle/model/content/ContentState;

    move-result-object v2

    .line 685
    invoke-static {p3}, Lcom/amazon/kcp/util/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 686
    invoke-virtual {v1}, Lcom/amazon/kindle/content/ContentMetadata;->getError()I

    move-result v1

    invoke-static {v1}, Lcom/amazon/kindle/krx/download/KRXRequestErrorState;->getFromSerialized(I)Lcom/amazon/kindle/krx/download/KRXRequestErrorState;

    move-result-object v1

    sget-object v3, Lcom/amazon/kindle/krx/download/KRXRequestErrorState;->CDE_ERROR:Lcom/amazon/kindle/krx/download/KRXRequestErrorState;

    if-ne v1, v3, :cond_0

    .line 687
    iget-object v1, p0, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionViewController;->definitionPopupMessage:Landroid/widget/TextView;

    invoke-virtual {v1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 691
    :cond_0
    sget-object p3, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionViewController$13;->$SwitchMap$com$amazon$kindle$model$content$ContentState:[I

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget p3, p3, v1

    packed-switch p3, :pswitch_data_0

    .line 717
    sget p3, Lcom/amazon/kindle/dcm/R$string;->dictionary_download_failed_message:I

    goto :goto_0

    .line 709
    :pswitch_0
    iget-object p3, p0, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionViewController;->networkService:Lcom/amazon/kindle/krx/network/INetworkService;

    invoke-interface {p3}, Lcom/amazon/kindle/krx/network/INetworkService;->hasNetworkConnectivity()Z

    move-result p3

    if-nez p3, :cond_1

    .line 710
    sget p3, Lcom/amazon/kindle/dcm/R$string;->dictionary_download_no_connection_message:I

    goto :goto_0

    .line 712
    :cond_1
    sget p3, Lcom/amazon/kindle/dcm/R$string;->dictionary_download_failed_message:I

    goto :goto_0

    .line 701
    :pswitch_1
    sget-object p3, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionViewController;->TAG:Ljava/lang/String;

    const-string v1, "Showing DictionaryDownloadFailedView for a dictionary in a QUEUED, DOWNLOADING, or LOCAL state."

    invoke-static {p3, v1}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 703
    sget p3, Lcom/amazon/kindle/dcm/R$string;->dictionary_download_failed_message:I

    goto :goto_0

    .line 694
    :pswitch_2
    sget p3, Lcom/amazon/kindle/dcm/R$string;->dictionary_download_canceled_message:I

    .line 720
    :goto_0
    iget-object v1, p0, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionViewController;->definitionPopupMessage:Landroid/widget/TextView;

    invoke-virtual {v1, p3}, Landroid/widget/TextView;->setText(I)V

    .line 723
    :goto_1
    iget-object p3, p0, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionViewController;->definitionPopupMessageTitle:Landroid/widget/TextView;

    invoke-direct {p0}, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionViewController;->useCompactView()Z

    move-result v1

    if-eqz v1, :cond_2

    const/16 v1, 0x8

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    :goto_2
    invoke-virtual {p3, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 724
    iget-object p3, p0, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionViewController;->definitionPopupMessage:Landroid/widget/TextView;

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 725
    iget-object p3, p0, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionViewController;->dictionaryDownloadContent:Landroid/view/View;

    invoke-virtual {p3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 726
    iget-object p3, p0, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionViewController;->definitionPopupMessageTitle:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionViewController;->context:Landroid/content/Context;

    sget v3, Lcom/amazon/kindle/dcm/R$string;->dictionary_downloading_title:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionViewController;->selectedDictionaryName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 729
    iget-object p3, p0, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionViewController;->downloadProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {p3}, Landroid/widget/ProgressBar;->getProgress()I

    move-result v1

    invoke-virtual {p3, v1}, Landroid/widget/ProgressBar;->setSecondaryProgress(I)V

    .line 730
    iget-object p3, p0, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionViewController;->downloadProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {p3, v0}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 732
    iget-object p3, p0, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionViewController;->downloadButton:Landroid/widget/ImageView;

    invoke-virtual {p3, v0}, Landroid/widget/ImageView;->setActivated(Z)V

    .line 733
    iget-object p3, p0, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionViewController;->downloadButton:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionViewController;->context:Landroid/content/Context;

    sget v1, Lcom/amazon/kindle/dcm/R$string;->resume_download_description:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 734
    iget-object p3, p0, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionViewController;->downloadButton:Landroid/widget/ImageView;

    new-instance v0, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionViewController$10;

    invoke-direct {v0, p0, p2, p1}, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionViewController$10;-><init>(Lcom/amazon/kcp/reader/ui/dictionary/DefinitionViewController;Lcom/amazon/kcp/reader/ui/dictionary/IDictionaryLocator;Ljava/lang/String;)V

    invoke-virtual {p3, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private showDictionaryDownloadingView(Ljava/lang/String;Lcom/amazon/kcp/reader/ui/dictionary/IDictionaryLocator;)V
    .locals 5

    .line 794
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionViewController;->definitionPopupMessageTitle:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 795
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionViewController;->definitionPopupMessage:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 796
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionViewController;->dictionaryDownloadContent:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 798
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionViewController;->definitionPopupMessageTitle:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionViewController;->context:Landroid/content/Context;

    sget v4, Lcom/amazon/kindle/dcm/R$string;->dictionary_downloading_title:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionViewController;->selectedDictionaryName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 799
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionViewController;->selectedDictionaryName:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionViewController;->setupDictionarySelectionButtonText(Ljava/lang/String;)V

    .line 800
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionViewController;->downloadButton:Landroid/widget/ImageView;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setActivated(Z)V

    .line 802
    invoke-direct {p0}, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionViewController;->getColorMode()Lcom/amazon/kindle/krx/ui/ColorMode;

    move-result-object v0

    iget-object v2, p0, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionViewController;->downloadProgressBar:Landroid/widget/ProgressBar;

    invoke-direct {p0, v0, v2}, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionViewController;->setDictionaryDownloadProgressBarColor(Lcom/amazon/kindle/krx/ui/ColorMode;Landroid/widget/ProgressBar;)V

    .line 804
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionViewController;->downloadProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getProgress()I

    move-result v0

    .line 806
    sget v2, Lcom/amazon/kindle/dcm/R$string;->dictionary_downloading_message:I

    .line 808
    invoke-interface {p2, v1}, Lcom/amazon/kcp/reader/ui/dictionary/IDictionaryLocator;->getBoundDictionary(Z)Lcom/amazon/kindle/content/ContentMetadata;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 809
    invoke-virtual {v3}, Lcom/amazon/kindle/content/ContentMetadata;->getState()Lcom/amazon/kindle/model/content/ContentState;

    move-result-object v3

    sget-object v4, Lcom/amazon/kindle/model/content/ContentState;->QUEUED:Lcom/amazon/kindle/model/content/ContentState;

    if-ne v3, v4, :cond_0

    .line 810
    sget v2, Lcom/amazon/kindle/dcm/R$string;->download_queued:I

    goto :goto_0

    :cond_0
    move v1, v0

    const/4 v0, 0x0

    .line 816
    :goto_0
    iget-object v3, p0, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionViewController;->downloadProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v3, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 817
    iget-object v1, p0, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionViewController;->downloadProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v0}, Landroid/widget/ProgressBar;->setSecondaryProgress(I)V

    .line 818
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionViewController;->definitionPopupMessage:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 821
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionViewController;->downloadTracker:Lcom/amazon/kcp/library/models/internal/BookDownloadTracker;

    invoke-virtual {v0}, Lcom/amazon/kcp/library/models/internal/BookDownloadTracker;->isTrackingOn()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 822
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionViewController;->stopTrackingDownload()V

    .line 834
    :cond_1
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionViewController;->downloadProgressBar:Landroid/widget/ProgressBar;

    invoke-direct {p0, p1, p2, v0}, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionViewController;->startTrackingDownload(Ljava/lang/String;Lcom/amazon/kcp/reader/ui/dictionary/IDictionaryLocator;Landroid/widget/ProgressBar;)V

    .line 835
    invoke-interface {p2}, Lcom/amazon/kcp/reader/ui/dictionary/IDictionaryLocator;->isDownloading()Z

    move-result v0

    if-nez v0, :cond_2

    .line 838
    invoke-interface {p2}, Lcom/amazon/kcp/reader/ui/dictionary/IDictionaryLocator;->downloadDictionary()Z

    .line 842
    :cond_2
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionViewController;->downloadButton:Landroid/widget/ImageView;

    new-instance v1, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionViewController$11;

    invoke-direct {v1, p0, p2, p1}, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionViewController$11;-><init>(Lcom/amazon/kcp/reader/ui/dictionary/DefinitionViewController;Lcom/amazon/kcp/reader/ui/dictionary/IDictionaryLocator;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 858
    iget-object p1, p0, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionViewController;->downloadButton:Landroid/widget/ImageView;

    iget-object p2, p0, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionViewController;->context:Landroid/content/Context;

    sget v0, Lcom/amazon/kindle/dcm/R$string;->cancel_download_description:I

    invoke-virtual {p2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private showDownloadDictionaryView()V
    .locals 3

    .line 882
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionViewController;->definitionPopupMessageTitle:Landroid/widget/TextView;

    invoke-direct {p0}, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionViewController;->useCompactView()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    const/16 v1, 0x8

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 883
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionViewController;->dictionaryDownloadButton:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 885
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionViewController;->dictionaryDownloadButtonText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionViewController;->context:Landroid/content/Context;

    sget v2, Lcom/amazon/kindle/dcm/R$string;->dictionary_not_available_button_v2:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 886
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionViewController;->definitionPopupMessageTitle:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private startTrackingDownload(Ljava/lang/String;Lcom/amazon/kcp/reader/ui/dictionary/IDictionaryLocator;Landroid/widget/ProgressBar;)V
    .locals 3

    .line 1438
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionViewController;->downloadTracker:Lcom/amazon/kcp/library/models/internal/BookDownloadTracker;

    invoke-interface {p2}, Lcom/amazon/kcp/reader/ui/dictionary/IDictionaryLocator;->getAsin()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/amazon/kcp/library/models/BookType;->BT_EBOOK:Lcom/amazon/kcp/library/models/BookType;

    .line 1439
    invoke-direct {p0, p1, p3, p2}, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionViewController;->getDictionaryDownloadObserver(Ljava/lang/String;Landroid/widget/ProgressBar;Lcom/amazon/kcp/reader/ui/dictionary/IDictionaryLocator;)Lcom/amazon/kcp/library/models/internal/IBookDownloadObserver;

    move-result-object p1

    .line 1438
    invoke-virtual {v0, v1, v2, p1}, Lcom/amazon/kcp/library/models/internal/BookDownloadTracker;->startTracking(Ljava/lang/String;Lcom/amazon/kcp/library/models/BookType;Lcom/amazon/kcp/library/models/internal/IBookDownloadObserver;)V

    return-void
.end method

.method private updateDefinitionLinks(Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 922
    iget-object p1, p0, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionViewController;->fullDefinitionButton:Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 924
    :cond_0
    iget-object p1, p0, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionViewController;->fullDefinitionButton:Landroid/view/View;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method private updateUIForSelectedDictionary(Lcom/amazon/kcp/reader/ui/dictionary/IDictionaryLocator;)V
    .locals 4

    .line 940
    invoke-interface {p1}, Lcom/amazon/kcp/reader/ui/dictionary/IDictionaryLocator;->getLanguageCode()Ljava/lang/String;

    move-result-object v0

    .line 941
    invoke-interface {p1}, Lcom/amazon/kcp/reader/ui/dictionary/IDictionaryLocator;->getAsin()Ljava/lang/String;

    move-result-object v1

    .line 944
    iput-object v0, p0, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionViewController;->selectedDictionaryName:Ljava/lang/String;

    .line 945
    iput-object v1, p0, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionViewController;->selectedDictionaryAsin:Ljava/lang/String;

    const/4 v2, 0x0

    .line 947
    invoke-interface {p1, v2}, Lcom/amazon/kcp/reader/ui/dictionary/IDictionaryLocator;->getBoundDictionary(Z)Lcom/amazon/kindle/content/ContentMetadata;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 955
    invoke-virtual {p1}, Lcom/amazon/kindle/content/ContentMetadata;->getDictionaryType()Lcom/amazon/kindle/model/content/DictionaryType;

    move-result-object v2

    sget-object v3, Lcom/amazon/kindle/model/content/DictionaryType;->FREE_DICT:Lcom/amazon/kindle/model/content/DictionaryType;

    if-ne v2, v3, :cond_1

    .line 960
    invoke-virtual {p1}, Lcom/amazon/kindle/content/ContentMetadata;->getAsin()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionViewController;->getDictShortTitle(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 961
    invoke-static {p1}, Lcom/amazon/kcp/util/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 962
    iput-object p1, p0, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionViewController;->selectedDictionaryName:Ljava/lang/String;

    .line 966
    :cond_0
    iput-object v0, p0, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionViewController;->selectedDictionaryId:Ljava/lang/String;

    goto :goto_0

    .line 968
    :cond_1
    invoke-virtual {p1}, Lcom/amazon/kindle/content/ContentMetadata;->getTitle()Ljava/lang/String;

    move-result-object p1

    .line 969
    invoke-static {p1}, Lcom/amazon/kcp/util/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 970
    iput-object p1, p0, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionViewController;->selectedDictionaryName:Ljava/lang/String;

    .line 973
    :cond_2
    iput-object v1, p0, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionViewController;->selectedDictionaryId:Ljava/lang/String;

    goto :goto_0

    .line 977
    :cond_3
    iput-object v0, p0, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionViewController;->selectedDictionaryId:Ljava/lang/String;

    .line 980
    :goto_0
    iget-object p1, p0, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionViewController;->selectedDictionaryAsin:Ljava/lang/String;

    invoke-static {p1}, Lcom/amazon/kcp/reader/InfoCardMetricsManager;->setDictionaryASIN(Ljava/lang/String;)V

    return-void
.end method

.method private useCompactView()Z
    .locals 2

    .line 1464
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionViewController;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/amazon/kindle/dcm/R$bool;->use_compact_dictionary_view:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public close()V
    .locals 1

    .line 1237
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionViewController;->definitionView:Lcom/amazon/android/docviewer/KindleDocDefinitionView;

    if-eqz v0, :cond_0

    .line 1238
    invoke-virtual {v0}, Lcom/amazon/android/docviewer/KindleDocDefinitionView;->destroy()V

    :cond_0
    const/4 v0, 0x0

    .line 1240
    iput-object v0, p0, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionViewController;->lookUpResult:Lcom/amazon/kindle/dictionary/IDictionaryResult;

    .line 1246
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionViewController;->dictionaryPresenter:Lcom/amazon/kcp/reader/ui/dictionary/internal/DictionaryPresenter;

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/ui/dictionary/internal/DictionaryPresenter;->closeDictionary()V

    return-void
.end method

.method public getChildViews()V
    .locals 2

    .line 221
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionViewController;->definitionContainer:Landroid/view/ViewGroup;

    sget v1, Lcom/amazon/kindle/dcm/R$id;->definition_card_title:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionViewController;->cardTitle:Landroid/widget/TextView;

    .line 224
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionViewController;->definitionContainer:Landroid/view/ViewGroup;

    sget v1, Lcom/amazon/kindle/dcm/R$id;->definition_view_container_parent:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionViewController;->definitionViewFrameParent:Landroid/view/ViewGroup;

    .line 225
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionViewController;->definitionContainer:Landroid/view/ViewGroup;

    sget v1, Lcom/amazon/kindle/dcm/R$id;->definition_view_container:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionViewController;->definitionViewFrame:Landroid/widget/FrameLayout;

    .line 226
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionViewController;->definitionContainer:Landroid/view/ViewGroup;

    sget v1, Lcom/amazon/kindle/dcm/R$id;->definition_loading_indicator:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionViewController;->definitionLoadingIndicator:Landroid/widget/ImageView;

    .line 227
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionViewController;->definitionContainer:Landroid/view/ViewGroup;

    sget v1, Lcom/amazon/kindle/dcm/R$id;->full_definition_loading_indicator:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionViewController;->fullDefinitionLoadingIndicator:Landroid/widget/ImageView;

    .line 228
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionViewController;->definitionViewFrameParent:Landroid/view/ViewGroup;

    sget v1, Lcom/amazon/kindle/dcm/R$id;->inline_go_to_dictionary_link:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionViewController;->inlineGoToDictionaryLink:Landroid/widget/TextView;

    .line 229
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionViewController;->definitionContainer:Landroid/view/ViewGroup;

    sget v1, Lcom/amazon/kindle/dcm/R$id;->definition_scrollView:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/amazon/android/widget/ScrollListenerScrollView;

    iput-object v0, p0, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionViewController;->definitionScrollView:Lcom/amazon/android/widget/ScrollListenerScrollView;

    .line 231
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionViewController;->definitionContainer:Landroid/view/ViewGroup;

    sget v1, Lcom/amazon/kindle/dcm/R$id;->definition_container_message_title:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionViewController;->definitionPopupMessageTitle:Landroid/widget/TextView;

    .line 232
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionViewController;->definitionContainer:Landroid/view/ViewGroup;

    sget v1, Lcom/amazon/kindle/dcm/R$id;->definition_container_message:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionViewController;->definitionPopupMessage:Landroid/widget/TextView;

    .line 234
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionViewController;->definitionContainer:Landroid/view/ViewGroup;

    sget v1, Lcom/amazon/kindle/dcm/R$id;->dictionary_direct_download_button:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionViewController;->dictionaryDownloadButton:Landroid/view/View;

    .line 235
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionViewController;->definitionContainer:Landroid/view/ViewGroup;

    sget v1, Lcom/amazon/kindle/dcm/R$id;->dictionary_download_text:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionViewController;->dictionaryDownloadButtonText:Landroid/widget/TextView;

    .line 237
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionViewController;->definitionContainer:Landroid/view/ViewGroup;

    sget v1, Lcom/amazon/kindle/dcm/R$id;->dictionary_downloading_content:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionViewController;->dictionaryDownloadContent:Landroid/view/View;

    .line 238
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionViewController;->definitionContainer:Landroid/view/ViewGroup;

    sget v1, Lcom/amazon/kindle/dcm/R$id;->dictionary_downloading_progress:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionViewController;->downloadProgressBar:Landroid/widget/ProgressBar;

    .line 239
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionViewController;->definitionContainer:Landroid/view/ViewGroup;

    sget v1, Lcom/amazon/kindle/dcm/R$id;->dictionary_download_button:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionViewController;->downloadButton:Landroid/widget/ImageView;

    .line 242
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionViewController;->definitionContainer:Landroid/view/ViewGroup;

    sget v1, Lcom/amazon/kindle/dcm/R$id;->definition_choose_dictionary_button:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionViewController;->dictionarySelectionButton:Landroid/view/View;

    .line 243
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionViewController;->definitionContainer:Landroid/view/ViewGroup;

    sget v1, Lcom/amazon/kindle/dcm/R$id;->dictionary_selection_text:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionViewController;->dictionarySelectionButtonText:Landroid/widget/TextView;

    .line 244
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionViewController;->definitionContainer:Landroid/view/ViewGroup;

    sget v1, Lcom/amazon/kindle/dcm/R$id;->definition_links:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionViewController;->fullDefinitionButton:Landroid/view/View;

    .line 245
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionViewController;->definitionContainer:Landroid/view/ViewGroup;

    sget v1, Lcom/amazon/kindle/dcm/R$id;->definition_dictionary_Link:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionViewController;->dictionaryFullDefinitionButtonText:Landroid/widget/TextView;

    .line 247
    invoke-direct {p0}, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionViewController;->setTypeface()V

    .line 248
    invoke-direct {p0}, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionViewController;->setupAccessibility()V

    return-void
.end method

.method public getDefinitionLoadingIndicator()Landroid/widget/ImageView;
    .locals 1

    .line 1393
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionViewController;->definitionLoadingIndicator:Landroid/widget/ImageView;

    return-object v0
.end method

.method public getFullDefinitionLoadingIndicator()Landroid/widget/ImageView;
    .locals 1

    .line 1403
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionViewController;->fullDefinitionLoadingIndicator:Landroid/widget/ImageView;

    return-object v0
.end method

.method public getInlineGoToDictionaryLink()Landroid/widget/TextView;
    .locals 1

    .line 1415
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionViewController;->inlineGoToDictionaryLink:Landroid/widget/TextView;

    return-object v0
.end method

.method public init()V
    .locals 1

    .line 160
    invoke-static {}, Lcom/amazon/kcp/reader/ui/dictionary/internal/DictionaryManager;->getInstance()Lcom/amazon/kcp/reader/ui/dictionary/internal/DictionaryManager;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionViewController;->dictionaryManager:Lcom/amazon/kcp/reader/ui/dictionary/internal/DictionaryManager;

    .line 161
    new-instance v0, Lcom/amazon/kcp/library/models/internal/BookDownloadTracker;

    invoke-direct {v0}, Lcom/amazon/kcp/library/models/internal/BookDownloadTracker;-><init>()V

    iput-object v0, p0, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionViewController;->downloadTracker:Lcom/amazon/kcp/library/models/internal/BookDownloadTracker;

    .line 162
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getReaderController()Lcom/amazon/kcp/reader/IReaderController;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionViewController;->readerController:Lcom/amazon/kcp/reader/IReaderController;

    .line 163
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getHistoryManager()Lcom/amazon/kcp/application/HistoryManager;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionViewController;->historyManager:Lcom/amazon/kcp/application/HistoryManager;

    .line 164
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/services/IReaderServicesObjectFactory;->getNetworkService()Lcom/amazon/kindle/network/INetworkService;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionViewController;->networkService:Lcom/amazon/kindle/krx/network/INetworkService;

    .line 165
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionViewController;->definitionContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionViewController;->context:Landroid/content/Context;

    return-void
.end method

.method public setColorMode(Lcom/amazon/kindle/krx/ui/ColorMode;)V
    .locals 7

    .line 286
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionViewController;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 287
    iget-object v1, p0, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionViewController;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/amazon/kcp/application/KindleObjectFactorySingleton;->getInstance(Landroid/content/Context;)Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getColorModeFactory()Lcom/amazon/android/docviewer/KindleDocColorModeFactory;

    move-result-object v1

    .line 296
    sget-object v2, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionViewController$13;->$SwitchMap$com$amazon$kindle$krx$ui$ColorMode:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v2, p1

    const/4 v2, 0x1

    if-eq p1, v2, :cond_0

    const/4 v2, 0x2

    if-eq p1, v2, :cond_0

    .line 309
    sget p1, Lcom/amazon/kindle/dcm/R$color;->info_card_v2_title_text_color_white_mode:I

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    .line 310
    sget v2, Lcom/amazon/kindle/dcm/R$color;->info_card_v2_content_text_color_white_mode:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    .line 311
    sget v3, Lcom/amazon/kindle/dcm/R$color;->info_card_v2_link_button_text_color_white_mode:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    .line 313
    sget v4, Lcom/amazon/kindle/dcm/R$drawable;->bg_info_card_text_view_light:I

    .line 314
    sget v5, Lcom/amazon/kindle/dcm/R$drawable;->button_light:I

    .line 315
    sget-object v6, Lcom/amazon/android/docviewer/KindleDocColorMode$Id;->WHITE:Lcom/amazon/android/docviewer/KindleDocColorMode$Id;

    invoke-virtual {v1, v6, v0}, Lcom/amazon/android/docviewer/KindleDocColorModeFactory;->getColorMode(Lcom/amazon/android/docviewer/KindleDocColorMode$Id;Landroid/content/res/Resources;)Lcom/amazon/android/docviewer/KindleDocColorMode;

    move-result-object v1

    goto :goto_0

    .line 299
    :cond_0
    sget p1, Lcom/amazon/kindle/dcm/R$color;->info_card_v2_dark_mode_text_color:I

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    .line 301
    sget v2, Lcom/amazon/kindle/dcm/R$color;->info_card_v2_link_button_text_color_white_mode:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    .line 303
    sget v4, Lcom/amazon/kindle/dcm/R$drawable;->bg_info_card_text_view_dark:I

    .line 304
    sget v5, Lcom/amazon/kindle/dcm/R$drawable;->button_dark:I

    .line 305
    sget-object v2, Lcom/amazon/android/docviewer/KindleDocColorMode$Id;->BLACK:Lcom/amazon/android/docviewer/KindleDocColorMode$Id;

    invoke-virtual {v1, v2, v0}, Lcom/amazon/android/docviewer/KindleDocColorModeFactory;->getColorMode(Lcom/amazon/android/docviewer/KindleDocColorMode$Id;Landroid/content/res/Resources;)Lcom/amazon/android/docviewer/KindleDocColorMode;

    move-result-object v1

    move v2, p1

    .line 319
    :goto_0
    iget-object v6, p0, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionViewController;->definitionView:Lcom/amazon/android/docviewer/KindleDocDefinitionView;

    if-eqz v6, :cond_1

    .line 320
    invoke-virtual {v6, v1}, Lcom/amazon/android/docviewer/KindleDocDefinitionView;->setColorMode(Lcom/amazon/android/docviewer/KindleDocColorMode;)V

    .line 323
    :cond_1
    iget-object v1, p0, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionViewController;->cardTitle:Landroid/widget/TextView;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 324
    iget-object p1, p0, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionViewController;->definitionPopupMessageTitle:Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 325
    iget-object p1, p0, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionViewController;->definitionPopupMessage:Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 326
    iget-object p1, p0, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionViewController;->dictionaryDownloadButtonText:Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 328
    sget p1, Lcom/amazon/kindle/dcm/R$dimen;->drop_down_side_padding:I

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    .line 329
    sget v1, Lcom/amazon/kindle/dcm/R$dimen;->drop_down_vert_padding:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 330
    iget-object v6, p0, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionViewController;->dictionarySelectionButtonText:Landroid/widget/TextView;

    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 331
    iget-object v6, p0, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionViewController;->dictionarySelectionButtonText:Landroid/widget/TextView;

    invoke-virtual {v6, p1, v1, p1, v1}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 332
    iget-object v6, p0, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionViewController;->dictionarySelectionButtonText:Landroid/widget/TextView;

    invoke-virtual {v6, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 333
    iget-object v6, p0, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionViewController;->dictionarySelectionButtonText:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->requestLayout()V

    .line 335
    iget-object v6, p0, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionViewController;->dictionaryFullDefinitionButtonText:Landroid/widget/TextView;

    invoke-virtual {v6, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 337
    iget-object v3, p0, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionViewController;->dictionaryDownloadButtonText:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout$LayoutParams;

    .line 338
    sget v6, Lcom/amazon/kindle/dcm/R$dimen;->default_button_image_side_padding:I

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    mul-int/lit8 v0, v0, -0x1

    .line 339
    iget-object v6, p0, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionViewController;->dictionaryDownloadButtonText:Landroid/widget/TextView;

    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 340
    iget-object v5, p0, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionViewController;->dictionaryDownloadButtonText:Landroid/widget/TextView;

    invoke-virtual {v5, p1, v1, p1, v1}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 341
    iget-object p1, p0, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionViewController;->dictionaryDownloadButtonText:Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    const/4 p1, 0x0

    .line 342
    invoke-virtual {v3, v0, p1, p1, p1}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 343
    iget-object p1, p0, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionViewController;->dictionaryDownloadButtonText:Landroid/widget/TextView;

    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 344
    iget-object p1, p0, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionViewController;->dictionaryDownloadButtonText:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->requestLayout()V

    .line 346
    iget-object p1, p0, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionViewController;->definitionScrollView:Lcom/amazon/android/widget/ScrollListenerScrollView;

    invoke-virtual {p1, v4}, Landroid/widget/ScrollView;->setBackgroundResource(I)V

    return-void
.end method

.method public setCurrentSelection(Lcom/amazon/kindle/krx/content/IContentSelection;)V
    .locals 0

    .line 389
    iput-object p1, p0, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionViewController;->currentSelection:Lcom/amazon/kindle/krx/content/IContentSelection;

    return-void
.end method

.method setDictionaryPresenter(Lcom/amazon/kcp/reader/ui/dictionary/internal/DictionaryPresenter;)V
    .locals 0

    .line 174
    iput-object p1, p0, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionViewController;->dictionaryPresenter:Lcom/amazon/kcp/reader/ui/dictionary/internal/DictionaryPresenter;

    return-void
.end method

.method public setupTabletCardLinks()V
    .locals 2

    .line 393
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionViewController;->fullDefinitionButton:Landroid/view/View;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 394
    invoke-direct {p0, v1}, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionViewController;->getDefinitionLinkClickListener(Z)Landroid/view/View$OnClickListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 397
    :cond_0
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionViewController;->inlineGoToDictionaryLink:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    .line 398
    invoke-direct {p0, v1}, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionViewController;->getDefinitionLinkClickListener(Z)Landroid/view/View$OnClickListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 401
    :cond_1
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionViewController;->dictionaryDownloadButton:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 402
    new-instance v1, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionViewController$5;

    invoke-direct {v1, p0}, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionViewController$5;-><init>(Lcom/amazon/kcp/reader/ui/dictionary/DefinitionViewController;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 417
    :cond_2
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionViewController;->dictionarySelectionButton:Landroid/view/View;

    if-eqz v0, :cond_3

    .line 418
    new-instance v1, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionViewController$6;

    invoke-direct {v1, p0}, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionViewController$6;-><init>(Lcom/amazon/kcp/reader/ui/dictionary/DefinitionViewController;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_3
    return-void
.end method

.method protected stopTrackingDownload()V
    .locals 1

    .line 1443
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionViewController;->downloadTracker:Lcom/amazon/kcp/library/models/internal/BookDownloadTracker;

    invoke-virtual {v0}, Lcom/amazon/kcp/library/models/internal/BookDownloadTracker;->isTrackingOn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1444
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionViewController;->downloadTracker:Lcom/amazon/kcp/library/models/internal/BookDownloadTracker;

    invoke-virtual {v0}, Lcom/amazon/kcp/library/models/internal/BookDownloadTracker;->stopTracking()V

    :cond_0
    return-void
.end method

.method protected updatePopupContents(Ljava/lang/String;Z)Z
    .locals 7

    .line 997
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionViewController;->dictionaryPresenter:Lcom/amazon/kcp/reader/ui/dictionary/internal/DictionaryPresenter;

    invoke-virtual {v0, p1}, Lcom/amazon/kcp/reader/ui/dictionary/internal/DictionaryPresenter;->getLanguageCode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1000
    invoke-static {p1, v0}, Lcom/amazon/kcp/reader/ui/dictionary/internal/DictionaryPresenter;->alterSelected(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1001
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return v2

    .line 1007
    :cond_0
    invoke-direct {p0}, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionViewController;->resetChildViews()V

    .line 1010
    invoke-static {v0}, Lcom/amazon/kcp/reader/ui/dictionary/CustomDictionaryMessageLanguage;->getCustomMessageResourceId(Ljava/lang/String;)I

    move-result v1

    const/4 v3, -0x1

    const/4 v4, 0x1

    if-eq v1, v3, :cond_1

    const/4 v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :goto_0
    if-eqz v3, :cond_2

    const-string p1, ""

    .line 1015
    iput-object p1, p0, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionViewController;->selectedDictionaryId:Ljava/lang/String;

    .line 1016
    iput-object p1, p0, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionViewController;->selectedDictionaryAsin:Ljava/lang/String;

    .line 1017
    iput-object p1, p0, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionViewController;->selectedDictionaryName:Ljava/lang/String;

    .line 1018
    invoke-direct {p0, p1}, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionViewController;->setupDictionarySelectionButtonText(Ljava/lang/String;)V

    .line 1019
    invoke-direct {p0, v1}, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionViewController;->showCustomMessage(I)V

    return v4

    .line 1025
    :cond_2
    iget-object v1, p0, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionViewController;->dictionaryManager:Lcom/amazon/kcp/reader/ui/dictionary/internal/DictionaryManager;

    invoke-virtual {v1, v0}, Lcom/amazon/kcp/reader/ui/dictionary/internal/DictionaryManager;->getDictionaryLocator(Ljava/lang/String;)Lcom/amazon/kcp/reader/ui/dictionary/IDictionaryLocator;

    move-result-object v1

    if-eqz v1, :cond_10

    .line 1027
    invoke-direct {p0, v1}, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionViewController;->updateUIForSelectedDictionary(Lcom/amazon/kcp/reader/ui/dictionary/IDictionaryLocator;)V

    .line 1028
    iget-object v3, p0, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionViewController;->selectedDictionaryName:Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionViewController;->setupDictionarySelectionButtonText(Ljava/lang/String;)V

    .line 1034
    invoke-interface {v1, p2}, Lcom/amazon/kcp/reader/ui/dictionary/IDictionaryLocator;->getBoundDictionary(Z)Lcom/amazon/kindle/content/ContentMetadata;

    move-result-object p2

    if-nez p2, :cond_4

    .line 1039
    invoke-interface {v1}, Lcom/amazon/kcp/reader/ui/dictionary/IDictionaryLocator;->isDownloading()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1042
    invoke-direct {p0, p1, v1}, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionViewController;->showDictionaryDownloadingView(Ljava/lang/String;Lcom/amazon/kcp/reader/ui/dictionary/IDictionaryLocator;)V

    goto/16 :goto_2

    .line 1045
    :cond_3
    invoke-direct {p0}, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionViewController;->showDownloadDictionaryView()V

    goto/16 :goto_2

    .line 1047
    :cond_4
    invoke-virtual {p2}, Lcom/amazon/kindle/content/ContentMetadata;->isLocal()Z

    move-result v3

    const-string v5, "DictionaryInfoCard"

    if-eqz v3, :cond_a

    .line 1049
    iget-object v3, p0, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionViewController;->dictionaryPresenter:Lcom/amazon/kcp/reader/ui/dictionary/internal/DictionaryPresenter;

    invoke-virtual {v3, p2}, Lcom/amazon/kcp/reader/ui/dictionary/internal/DictionaryPresenter;->isSelectedDictionaryClosed(Lcom/amazon/kindle/content/ContentMetadata;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 1050
    invoke-direct {p0, p2}, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionViewController;->openDictionary(Lcom/amazon/kindle/content/ContentMetadata;)V

    .line 1053
    :cond_5
    iget-object v3, p0, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionViewController;->dictionaryPresenter:Lcom/amazon/kcp/reader/ui/dictionary/internal/DictionaryPresenter;

    invoke-virtual {v3}, Lcom/amazon/kcp/reader/ui/dictionary/internal/DictionaryPresenter;->getOpenedDictionaryDocument()Lcom/amazon/kcp/reader/ui/dictionary/IDictionaryDocument;

    move-result-object v3

    if-eqz v3, :cond_9

    .line 1055
    invoke-interface {v3, p1, v0}, Lcom/amazon/kcp/reader/ui/dictionary/IDictionaryDocument;->lookupDefinition(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/kindle/dictionary/IDictionaryResult;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionViewController;->lookUpResult:Lcom/amazon/kindle/dictionary/IDictionaryResult;

    const-string v1, "InfoCardDictionary"

    if-eqz v0, :cond_8

    .line 1056
    invoke-virtual {v0}, Lcom/amazon/kindle/dictionary/IDictionaryResult;->getDictionaryWord()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_8

    .line 1057
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionViewController;->definitionView:Lcom/amazon/android/docviewer/KindleDocDefinitionView;

    if-nez v0, :cond_6

    .line 1058
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Lookup result available for selected text, creating definition view: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1060
    iget-object p1, p0, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionViewController;->lookUpResult:Lcom/amazon/kindle/dictionary/IDictionaryResult;

    invoke-direct {p0, p1}, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionViewController;->createDictionaryView(Lcom/amazon/kindle/dictionary/IDictionaryResult;)V

    .line 1064
    :cond_6
    invoke-direct {p0}, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionViewController;->showDefinitionFoundView()V

    .line 1067
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object p1

    sget-object v0, Lcom/amazon/kindle/krx/metrics/MetricType;->INFO:Lcom/amazon/kindle/krx/metrics/MetricType;

    const-string v3, "DictionaryFoundDefinition"

    invoke-virtual {p1, v1, v3, v0}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/krx/metrics/MetricType;)V

    .line 1069
    invoke-virtual {p2}, Lcom/amazon/kindle/content/ContentMetadata;->getDictionaryType()Lcom/amazon/kindle/model/content/DictionaryType;

    move-result-object p1

    sget-object v0, Lcom/amazon/kindle/model/content/DictionaryType;->USER_DICT:Lcom/amazon/kindle/model/content/DictionaryType;

    if-ne p1, v0, :cond_7

    .line 1070
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object p1

    sget-object v0, Lcom/amazon/kindle/krx/metrics/MetricType;->INFO:Lcom/amazon/kindle/krx/metrics/MetricType;

    const-string v1, "DICTIONARY_PURCHASED"

    const-string v3, "DefinitionFoundInPurchasedDictionary"

    invoke-virtual {p1, v1, v3, v0}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/krx/metrics/MetricType;)V

    goto :goto_1

    .line 1074
    :cond_7
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object p1

    sget-object v0, Lcom/amazon/kindle/krx/metrics/MetricType;->INFO:Lcom/amazon/kindle/krx/metrics/MetricType;

    const-string v1, "DICTIONARY_FREE"

    const-string v3, "DefinitionFoundInFreeDictionary"

    invoke-virtual {p1, v1, v3, v0}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/krx/metrics/MetricType;)V

    :goto_1
    const-string p1, "Success"

    .line 1078
    invoke-static {v5, p1}, Lcom/amazon/kcp/reader/InfoCardMetricsManager;->setLookupResult(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x1

    goto/16 :goto_3

    .line 1081
    :cond_8
    invoke-direct {p0}, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionViewController;->showDefinitionNotFoundView()V

    const-string p1, "FailureDefinitionNotFound"

    .line 1082
    invoke-static {v5, p1}, Lcom/amazon/kcp/reader/InfoCardMetricsManager;->setLookupResult(Ljava/lang/String;Ljava/lang/String;)V

    .line 1085
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object p1

    sget-object v0, Lcom/amazon/kindle/krx/metrics/MetricType;->INFO:Lcom/amazon/kindle/krx/metrics/MetricType;

    const-string v3, "DictionaryNoDefinition"

    invoke-virtual {p1, v1, v3, v0}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/krx/metrics/MetricType;)V

    goto :goto_2

    :cond_9
    const-string v0, "FailureDictionaryOpenError"

    .line 1089
    invoke-static {v5, v0}, Lcom/amazon/kcp/reader/InfoCardMetricsManager;->setLookupResult(Ljava/lang/String;Ljava/lang/String;)V

    .line 1092
    invoke-direct {p0, p1, v1}, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionViewController;->showDictionaryCorruptView(Ljava/lang/String;Lcom/amazon/kcp/reader/ui/dictionary/IDictionaryLocator;)V

    goto :goto_2

    .line 1095
    :cond_a
    sget-object v0, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionViewController$13;->$SwitchMap$com$amazon$kindle$model$content$ContentState:[I

    invoke-virtual {p2}, Lcom/amazon/kindle/content/ContentMetadata;->getState()Lcom/amazon/kindle/model/content/ContentState;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget v0, v0, v3

    if-eq v0, v4, :cond_e

    const/16 v3, 0x8

    const-string v6, "FailureDictionaryDownloadFailed"

    if-eq v0, v3, :cond_c

    const/16 v3, 0xa

    if-eq v0, v3, :cond_b

    const/4 v3, 0x3

    if-eq v0, v3, :cond_b

    const/4 v3, 0x4

    if-eq v0, v3, :cond_b

    .line 1122
    invoke-static {v5, v6}, Lcom/amazon/kcp/reader/InfoCardMetricsManager;->setLookupResult(Ljava/lang/String;Ljava/lang/String;)V

    .line 1124
    invoke-virtual {p2}, Lcom/amazon/kindle/content/ContentMetadata;->getErrorMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v1, v0}, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionViewController;->showDictionaryDownloadFailedView(Ljava/lang/String;Lcom/amazon/kcp/reader/ui/dictionary/IDictionaryLocator;Ljava/lang/String;)V

    goto :goto_2

    .line 1099
    :cond_b
    invoke-direct {p0, p1, v1}, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionViewController;->showDictionaryDownloadingView(Ljava/lang/String;Lcom/amazon/kcp/reader/ui/dictionary/IDictionaryLocator;)V

    goto :goto_2

    .line 1107
    :cond_c
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionViewController;->networkService:Lcom/amazon/kindle/krx/network/INetworkService;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/network/INetworkService;->hasNetworkConnectivity()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 1108
    invoke-virtual {p2}, Lcom/amazon/kindle/content/ContentMetadata;->getError()I

    move-result v0

    sget-object v3, Lcom/amazon/kindle/krx/download/KRXRequestErrorState;->WAN_CONTENT_DOWNLOAD_LIMIT_ERROR:Lcom/amazon/kindle/krx/download/KRXRequestErrorState;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    if-ne v0, v3, :cond_d

    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionViewController;->networkService:Lcom/amazon/kindle/krx/network/INetworkService;

    .line 1109
    invoke-interface {v0}, Lcom/amazon/kindle/krx/network/INetworkService;->isWifiConnected()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 1111
    invoke-interface {v1}, Lcom/amazon/kcp/reader/ui/dictionary/IDictionaryLocator;->downloadDictionary()Z

    .line 1112
    invoke-direct {p0, p1, v1}, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionViewController;->showDictionaryDownloadingView(Ljava/lang/String;Lcom/amazon/kcp/reader/ui/dictionary/IDictionaryLocator;)V

    const/4 p1, 0x0

    const/4 v0, 0x1

    goto :goto_4

    .line 1115
    :cond_d
    invoke-static {v5, v6}, Lcom/amazon/kcp/reader/InfoCardMetricsManager;->setLookupResult(Ljava/lang/String;Ljava/lang/String;)V

    .line 1118
    invoke-virtual {p2}, Lcom/amazon/kindle/content/ContentMetadata;->getErrorMessage()Ljava/lang/String;

    move-result-object v0

    .line 1117
    invoke-direct {p0, p1, v1, v0}, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionViewController;->showDictionaryDownloadFailedView(Ljava/lang/String;Lcom/amazon/kcp/reader/ui/dictionary/IDictionaryLocator;Ljava/lang/String;)V

    goto :goto_2

    .line 1102
    :cond_e
    invoke-direct {p0}, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionViewController;->showDownloadDictionaryView()V

    :goto_2
    const/4 p1, 0x0

    :goto_3
    const/4 v0, 0x0

    .line 1130
    :goto_4
    invoke-static {}, Lcom/amazon/kcp/reader/InfoCardMetricsManager;->getDictCardImpressionPending()Z

    move-result v1

    if-eqz v1, :cond_f

    if-eqz p2, :cond_f

    .line 1132
    invoke-virtual {p2}, Lcom/amazon/kindle/content/ContentMetadata;->getState()Lcom/amazon/kindle/model/content/ContentState;

    move-result-object v1

    sget-object v3, Lcom/amazon/kindle/model/content/ContentState;->QUEUED:Lcom/amazon/kindle/model/content/ContentState;

    if-eq v1, v3, :cond_f

    .line 1133
    invoke-virtual {p2}, Lcom/amazon/kindle/content/ContentMetadata;->getState()Lcom/amazon/kindle/model/content/ContentState;

    move-result-object v1

    sget-object v3, Lcom/amazon/kindle/model/content/ContentState;->DOWNLOADING:Lcom/amazon/kindle/model/content/ContentState;

    if-eq v1, v3, :cond_f

    .line 1134
    invoke-virtual {p2}, Lcom/amazon/kindle/content/ContentMetadata;->getState()Lcom/amazon/kindle/model/content/ContentState;

    move-result-object p2

    sget-object v1, Lcom/amazon/kindle/model/content/ContentState;->REMOTE:Lcom/amazon/kindle/model/content/ContentState;

    if-eq p2, v1, :cond_f

    if-nez v0, :cond_f

    .line 1136
    iget-object p2, p0, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionViewController;->selectedDictionaryAsin:Ljava/lang/String;

    invoke-static {p2}, Lcom/amazon/kcp/reader/InfoCardMetricsManager;->setDictionaryASIN(Ljava/lang/String;)V

    .line 1137
    invoke-static {}, Lcom/amazon/kcp/reader/InfoCardMetricsManager;->emitPendingDictionaryImpression()V

    .line 1138
    invoke-static {v2}, Lcom/amazon/kcp/reader/InfoCardMetricsManager;->setDictCardImpressionPending(Z)V

    :cond_f
    const/4 v2, 0x1

    goto :goto_5

    .line 1143
    :cond_10
    sget-object p1, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionViewController;->TAG:Ljava/lang/String;

    const-string p2, "DictionaryLocator returned was null"

    invoke-static {p1, p2}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    :goto_5
    if-eqz v2, :cond_11

    .line 1149
    invoke-direct {p0, p1}, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionViewController;->updateDefinitionLinks(Z)V

    :cond_11
    return v2
.end method

.method public updatePopupVisibility()Z
    .locals 7

    .line 615
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionViewController;->readerController:Lcom/amazon/kcp/reader/IReaderController;

    invoke-interface {v0}, Lcom/amazon/kcp/reader/IReaderController;->getDocViewer()Lcom/amazon/android/docviewer/KindleDocViewer;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 622
    :cond_0
    invoke-interface {v0}, Lcom/amazon/android/docviewer/KindleDocViewer;->getBookInfo()Lcom/amazon/kindle/model/content/ILocalBookItem;

    move-result-object v2

    invoke-interface {v2}, Lcom/amazon/kindle/model/content/ILocalBookItem;->hasDictionaryLookups()Z

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_1

    .line 624
    iget-object v2, p0, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionViewController;->currentSelection:Lcom/amazon/kindle/krx/content/IContentSelection;

    invoke-interface {v2}, Lcom/amazon/kindle/krx/content/IContentSelection;->getSelectedText()Ljava/lang/String;

    move-result-object v2

    .line 627
    invoke-static {v2}, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionViewController;->checkAndGetSingleWord(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 629
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "selectedText: ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 630
    invoke-virtual {p0, v2, v3}, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionViewController;->updatePopupContents(Ljava/lang/String;Z)Z

    move-result v4

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :cond_2
    const/4 v4, 0x0

    .line 635
    :goto_0
    iget-object v5, p0, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionViewController;->definitionContainer:Landroid/view/ViewGroup;

    if-eqz v4, :cond_3

    const/4 v6, 0x0

    goto :goto_1

    :cond_3
    const/16 v6, 0x8

    :goto_1
    invoke-virtual {v5, v6}, Landroid/view/ViewGroup;->setVisibility(I)V

    if-nez v4, :cond_5

    .line 640
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionViewController;->downloadTracker:Lcom/amazon/kcp/library/models/internal/BookDownloadTracker;

    invoke-virtual {v0}, Lcom/amazon/kcp/library/models/internal/BookDownloadTracker;->isTrackingOn()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 641
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionViewController;->stopTrackingDownload()V

    .line 643
    :cond_4
    sget-object v0, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionViewController;->TAG:Ljava/lang/String;

    const-string v1, "Closing the dictionary as we dont have popup to show"

    invoke-static {v0, v1}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 644
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionViewController;->close()V

    goto :goto_2

    :cond_5
    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    .line 647
    invoke-interface {v0}, Lcom/amazon/android/docviewer/KindleDocViewer;->getDocument()Lcom/amazon/android/docviewer/KindleDoc;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/android/docviewer/KindleDoc;->getBookInfo()Lcom/amazon/kindle/model/content/ILocalBookItem;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/model/content/IListableBook;->getAsin()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v1

    aput-object v2, v5, v3

    const-string v0, "QUICK_LOOKUP:asin= %s, word= %s:"

    .line 646
    invoke-static {v0, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    :goto_2
    return v4
.end method
