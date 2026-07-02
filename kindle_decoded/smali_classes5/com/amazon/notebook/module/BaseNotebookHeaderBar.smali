.class public Lcom/amazon/notebook/module/BaseNotebookHeaderBar;
.super Ljava/lang/Object;
.source "BaseNotebookHeaderBar.java"

# interfaces
.implements Lcom/amazon/notebook/module/NotebookHeaderBar;


# static fields
.field private static final DIVIDER_DARK_COLOR:I = -0xbfbfc0

.field private static final DIVIDER_LIGHT_COLOR:I = -0x1f1f20

.field private static final FILTER_NAME_SEPARATOR:Ljava/lang/String; = ", "

.field private static final MENU_DARK_BACKGROUND:I = -0xdcdcdd

.field private static final METRICS_FILTER_PREFIX:Ljava/lang/String; = "FilterSelected_"

.field private static final METRICS_FILTER_TOC:Ljava/lang/String; = "FilterSelected_TOC"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private activity:Lcom/amazon/notebook/module/NotebookActivity;

.field private final chapterFilters:Lcom/amazon/notebook/module/NotebookDropdownAdapter$FilterItem;

.field private dropdown:Landroid/view/View;

.field private exportButtonEnabled:Z

.field private flashcardsButtonEnabled:Z

.field private highlightFilterSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/amazon/notebook/module/NotebookFilter;",
            ">;"
        }
    .end annotation
.end field

.field private final highlightFilters:Lcom/amazon/notebook/module/NotebookDropdownAdapter$FilterItem;

.field private isTablet:Z

.field private listView:Landroid/widget/ExpandableListView;

.field private noteTools:Lcom/amazon/notebook/module/NotebookNoteTools;

.field private notebookFilter:Lcom/amazon/notebook/module/CompositeNotebookFilter;

.field private onShareMethodSelected:Lcom/amazon/notebook/module/NotebookShareHelper$OnSelectionListener;

.field private res:Landroid/content/res/Resources;

.field private shareHelper:Lcom/amazon/notebook/module/NotebookShareHelper;

.field private final starFilter:Lcom/amazon/notebook/module/NotebookDropdownAdapter$FilterItem;

.field private subTitle:Landroid/widget/TextView;

.field private themeProvider:Lcom/amazon/notebook/ThemeProvider;

.field private final topLevelFilters:Lcom/amazon/notebook/module/NotebookDropdownAdapter$FilterItem;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 72
    const-class v0, Lcom/amazon/notebook/module/BaseNotebookHeaderBar;

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/notebook/module/BaseNotebookHeaderBar;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/amazon/notebook/module/NotebookActivity;Lcom/amazon/notebook/module/NotebookNoteTools;Lcom/amazon/notebook/ThemeProvider;)V
    .locals 11

    .line 125
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 88
    iput-object v0, p0, Lcom/amazon/notebook/module/BaseNotebookHeaderBar;->listView:Landroid/widget/ExpandableListView;

    .line 91
    iput-object v0, p0, Lcom/amazon/notebook/module/BaseNotebookHeaderBar;->noteTools:Lcom/amazon/notebook/module/NotebookNoteTools;

    .line 97
    iput-object v0, p0, Lcom/amazon/notebook/module/BaseNotebookHeaderBar;->subTitle:Landroid/widget/TextView;

    .line 99
    new-instance v1, Lcom/amazon/notebook/module/CompositeNotebookFilter;

    invoke-direct {v1}, Lcom/amazon/notebook/module/CompositeNotebookFilter;-><init>()V

    iput-object v1, p0, Lcom/amazon/notebook/module/BaseNotebookHeaderBar;->notebookFilter:Lcom/amazon/notebook/module/CompositeNotebookFilter;

    .line 100
    new-instance v1, Ljava/util/HashSet;

    const/4 v2, 0x4

    new-array v2, v2, [Lcom/amazon/notebook/module/NotebookFilter;

    sget-object v3, Lcom/amazon/notebook/module/NotebookFilter;->HIGHLIGHTS_BLUE:Lcom/amazon/notebook/module/NotebookFilter;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    sget-object v3, Lcom/amazon/notebook/module/NotebookFilter;->HIGHLIGHTS_ORANGE:Lcom/amazon/notebook/module/NotebookFilter;

    const/4 v5, 0x1

    aput-object v3, v2, v5

    sget-object v3, Lcom/amazon/notebook/module/NotebookFilter;->HIGHLIGHTS_PINK:Lcom/amazon/notebook/module/NotebookFilter;

    const/4 v6, 0x2

    aput-object v3, v2, v6

    sget-object v3, Lcom/amazon/notebook/module/NotebookFilter;->HIGHLIGHTS_YELLOW:Lcom/amazon/notebook/module/NotebookFilter;

    const/4 v6, 0x3

    aput-object v3, v2, v6

    .line 101
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 100
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v1

    iput-object v1, p0, Lcom/amazon/notebook/module/BaseNotebookHeaderBar;->highlightFilterSet:Ljava/util/Set;

    .line 104
    iput-boolean v4, p0, Lcom/amazon/notebook/module/BaseNotebookHeaderBar;->flashcardsButtonEnabled:Z

    .line 105
    iput-boolean v4, p0, Lcom/amazon/notebook/module/BaseNotebookHeaderBar;->exportButtonEnabled:Z

    .line 109
    new-instance v1, Lcom/amazon/notebook/module/BaseNotebookHeaderBar$1;

    invoke-direct {v1, p0}, Lcom/amazon/notebook/module/BaseNotebookHeaderBar$1;-><init>(Lcom/amazon/notebook/module/BaseNotebookHeaderBar;)V

    iput-object v1, p0, Lcom/amazon/notebook/module/BaseNotebookHeaderBar;->onShareMethodSelected:Lcom/amazon/notebook/module/NotebookShareHelper$OnSelectionListener;

    .line 126
    iput-object p1, p0, Lcom/amazon/notebook/module/BaseNotebookHeaderBar;->activity:Lcom/amazon/notebook/module/NotebookActivity;

    .line 127
    invoke-virtual {p1}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/notebook/module/BaseNotebookHeaderBar;->res:Landroid/content/res/Resources;

    .line 128
    invoke-static {}, Lcom/amazon/notebook/module/NotebookPlugin;->getSdk()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getApplicationManager()Lcom/amazon/kindle/krx/application/IApplicationManager;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kindle/krx/application/IApplicationManager;->getAppType()Lcom/amazon/kindle/krx/application/AppType;

    move-result-object p1

    sget-object v1, Lcom/amazon/kindle/krx/application/AppType;->KRT:Lcom/amazon/kindle/krx/application/AppType;

    if-eq p1, v1, :cond_1

    iget-object p1, p0, Lcom/amazon/notebook/module/BaseNotebookHeaderBar;->res:Landroid/content/res/Resources;

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget p1, p1, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 p1, p1, 0xf

    if-lt p1, v6, :cond_0

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    :cond_1
    :goto_0
    iput-boolean v5, p0, Lcom/amazon/notebook/module/BaseNotebookHeaderBar;->isTablet:Z

    .line 130
    new-instance p1, Lcom/amazon/notebook/module/NotebookDropdownAdapter$FilterItem;

    const-string v1, ""

    invoke-direct {p1, v1, v0, v4, v0}, Lcom/amazon/notebook/module/NotebookDropdownAdapter$FilterItem;-><init>(Ljava/lang/String;Landroid/graphics/drawable/Drawable;ZLjava/lang/Object;)V

    iput-object p1, p0, Lcom/amazon/notebook/module/BaseNotebookHeaderBar;->topLevelFilters:Lcom/amazon/notebook/module/NotebookDropdownAdapter$FilterItem;

    .line 131
    new-instance p1, Lcom/amazon/notebook/module/NotebookDropdownAdapter$FilterItem;

    iget-object v1, p0, Lcom/amazon/notebook/module/BaseNotebookHeaderBar;->res:Landroid/content/res/Resources;

    sget v2, Lcom/amazon/notebook/module/R$string;->notebook_highlights:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, v1, v0, v4, v0}, Lcom/amazon/notebook/module/NotebookDropdownAdapter$FilterItem;-><init>(Ljava/lang/String;Landroid/graphics/drawable/Drawable;ZLjava/lang/Object;)V

    iput-object p1, p0, Lcom/amazon/notebook/module/BaseNotebookHeaderBar;->highlightFilters:Lcom/amazon/notebook/module/NotebookDropdownAdapter$FilterItem;

    .line 132
    new-instance p1, Lcom/amazon/notebook/module/NotebookDropdownAdapter$FilterItem;

    iget-object v1, p0, Lcom/amazon/notebook/module/BaseNotebookHeaderBar;->res:Landroid/content/res/Resources;

    sget v2, Lcom/amazon/notebook/module/R$string;->notebook_module_chapters_all_chapters:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, v1, v0, v4, v0}, Lcom/amazon/notebook/module/NotebookDropdownAdapter$FilterItem;-><init>(Ljava/lang/String;Landroid/graphics/drawable/Drawable;ZLjava/lang/Object;)V

    iput-object p1, p0, Lcom/amazon/notebook/module/BaseNotebookHeaderBar;->chapterFilters:Lcom/amazon/notebook/module/NotebookDropdownAdapter$FilterItem;

    .line 133
    new-instance p1, Lcom/amazon/notebook/module/NotebookDropdownAdapter$FilterItem;

    iget-object v0, p0, Lcom/amazon/notebook/module/BaseNotebookHeaderBar;->res:Landroid/content/res/Resources;

    sget v1, Lcom/amazon/notebook/module/R$string;->notebook_module_starred:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    sget-object v9, Lcom/amazon/notebook/module/NotebookFilter;->STARRED:Lcom/amazon/notebook/module/NotebookFilter;

    const/4 v10, 0x1

    move-object v5, p1

    invoke-direct/range {v5 .. v10}, Lcom/amazon/notebook/module/NotebookDropdownAdapter$FilterItem;-><init>(Ljava/lang/String;Landroid/graphics/drawable/Drawable;ZLjava/lang/Object;Z)V

    iput-object p1, p0, Lcom/amazon/notebook/module/BaseNotebookHeaderBar;->starFilter:Lcom/amazon/notebook/module/NotebookDropdownAdapter$FilterItem;

    .line 134
    new-instance p1, Lcom/amazon/notebook/module/NotebookShareHelper;

    invoke-direct {p1}, Lcom/amazon/notebook/module/NotebookShareHelper;-><init>()V

    iput-object p1, p0, Lcom/amazon/notebook/module/BaseNotebookHeaderBar;->shareHelper:Lcom/amazon/notebook/module/NotebookShareHelper;

    .line 135
    iput-object p2, p0, Lcom/amazon/notebook/module/BaseNotebookHeaderBar;->noteTools:Lcom/amazon/notebook/module/NotebookNoteTools;

    .line 136
    iput-object p3, p0, Lcom/amazon/notebook/module/BaseNotebookHeaderBar;->themeProvider:Lcom/amazon/notebook/ThemeProvider;

    return-void
.end method

.method static synthetic access$000(Lcom/amazon/notebook/module/BaseNotebookHeaderBar;)V
    .locals 0

    .line 71
    invoke-direct {p0}, Lcom/amazon/notebook/module/BaseNotebookHeaderBar;->exportNotebook()V

    return-void
.end method

.method static synthetic access$100(Lcom/amazon/notebook/module/BaseNotebookHeaderBar;)V
    .locals 0

    .line 71
    invoke-direct {p0}, Lcom/amazon/notebook/module/BaseNotebookHeaderBar;->createFlashcards()V

    return-void
.end method

.method static synthetic access$200(Lcom/amazon/notebook/module/BaseNotebookHeaderBar;)Landroid/widget/ExpandableListView;
    .locals 0

    .line 71
    iget-object p0, p0, Lcom/amazon/notebook/module/BaseNotebookHeaderBar;->listView:Landroid/widget/ExpandableListView;

    return-object p0
.end method

.method private areFlashCardsSupported()Z
    .locals 5

    .line 865
    iget-object v0, p0, Lcom/amazon/notebook/module/BaseNotebookHeaderBar;->activity:Lcom/amazon/notebook/module/NotebookActivity;

    invoke-virtual {v0}, Lcom/amazon/notebook/module/NotebookActivity;->getDocViewer()Lcom/amazon/android/docviewer/KindleDocViewer;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 866
    sget-object v0, Lcom/amazon/notebook/module/BaseNotebookHeaderBar;->TAG:Ljava/lang/String;

    const-string v2, "No doc viewer found"

    invoke-static {v0, v2}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 869
    :cond_0
    iget-object v0, p0, Lcom/amazon/notebook/module/BaseNotebookHeaderBar;->activity:Lcom/amazon/notebook/module/NotebookActivity;

    invoke-virtual {v0}, Lcom/amazon/notebook/module/NotebookActivity;->getDocViewer()Lcom/amazon/android/docviewer/KindleDocViewer;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/android/docviewer/KindleDocViewer;->getBookInfo()Lcom/amazon/kindle/model/content/ILocalBookItem;

    move-result-object v0

    .line 870
    invoke-interface {v0}, Lcom/amazon/kindle/model/content/ILocalBookInfo;->getContentClass()Lcom/amazon/kindle/model/content/ContentClass;

    move-result-object v2

    sget-object v3, Lcom/amazon/kindle/model/content/ContentClass;->CHILDREN:Lcom/amazon/kindle/model/content/ContentClass;

    const/4 v4, 0x1

    if-eq v2, v3, :cond_2

    .line 871
    invoke-interface {v0}, Lcom/amazon/kindle/model/content/ILocalBookInfo;->getContentClass()Lcom/amazon/kindle/model/content/ContentClass;

    move-result-object v2

    sget-object v3, Lcom/amazon/kindle/model/content/ContentClass;->MANGA:Lcom/amazon/kindle/model/content/ContentClass;

    if-eq v2, v3, :cond_2

    .line 872
    invoke-interface {v0}, Lcom/amazon/kindle/model/content/ILocalBookInfo;->getContentClass()Lcom/amazon/kindle/model/content/ContentClass;

    move-result-object v2

    sget-object v3, Lcom/amazon/kindle/model/content/ContentClass;->COMIC:Lcom/amazon/kindle/model/content/ContentClass;

    if-ne v2, v3, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v2, 0x1

    :goto_1
    if-nez v2, :cond_3

    .line 874
    invoke-interface {v0}, Lcom/amazon/kindle/model/content/ILocalBookInfo;->getMimeType()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/kindle/download/MimeTypeHelper;->isYellowJerseyPeriodicalsV2MagazineMimeType(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    const/4 v1, 0x1

    :cond_3
    return v1
.end method

.method private clearFilterMenuCheckboxes()V
    .locals 7

    .line 951
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 953
    iget-object v1, p0, Lcom/amazon/notebook/module/BaseNotebookHeaderBar;->topLevelFilters:Lcom/amazon/notebook/module/NotebookDropdownAdapter$FilterItem;

    invoke-virtual {v1}, Lcom/amazon/notebook/module/NotebookDropdownAdapter$FilterItem;->getSubFilters()Ljava/util/List;

    move-result-object v1

    .line 954
    iget-object v2, p0, Lcom/amazon/notebook/module/BaseNotebookHeaderBar;->highlightFilters:Lcom/amazon/notebook/module/NotebookDropdownAdapter$FilterItem;

    invoke-virtual {v2}, Lcom/amazon/notebook/module/NotebookDropdownAdapter$FilterItem;->getSubFilters()Ljava/util/List;

    move-result-object v2

    .line 955
    iget-object v3, p0, Lcom/amazon/notebook/module/BaseNotebookHeaderBar;->chapterFilters:Lcom/amazon/notebook/module/NotebookDropdownAdapter$FilterItem;

    invoke-virtual {v3}, Lcom/amazon/notebook/module/NotebookDropdownAdapter$FilterItem;->getSubFilters()Ljava/util/List;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 957
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_0

    .line 958
    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 961
    :goto_1
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    if-ge v1, v5, :cond_1

    .line 962
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    .line 965
    :goto_2
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 966
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 969
    :cond_2
    iget-object v1, p0, Lcom/amazon/notebook/module/BaseNotebookHeaderBar;->starFilter:Lcom/amazon/notebook/module/NotebookDropdownAdapter$FilterItem;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 971
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/notebook/module/NotebookDropdownAdapter$FilterItem;

    .line 972
    invoke-virtual {v1, v4}, Lcom/amazon/notebook/module/NotebookDropdownAdapter$FilterItem;->setChecked(Z)V

    goto :goto_3

    :cond_3
    return-void
.end method

.method private createFlashcards()V
    .locals 8

    .line 566
    iget-object v0, p0, Lcom/amazon/notebook/module/BaseNotebookHeaderBar;->activity:Lcom/amazon/notebook/module/NotebookActivity;

    iget-object v1, p0, Lcom/amazon/notebook/module/BaseNotebookHeaderBar;->notebookFilter:Lcom/amazon/notebook/module/CompositeNotebookFilter;

    invoke-virtual {v0, v1}, Lcom/amazon/notebook/module/NotebookActivity;->getAnnotations(Lcom/amazon/notebook/module/CompositeNotebookFilter;)Ljava/util/List;

    move-result-object v0

    .line 568
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ge v1, v2, :cond_0

    .line 570
    sget v0, Lcom/amazon/notebook/module/R$string;->flashcards_no_annotations_selected:I

    invoke-direct {p0, v0}, Lcom/amazon/notebook/module/BaseNotebookHeaderBar;->showAlert(I)V

    goto/16 :goto_1

    .line 572
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 573
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 574
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v1, 0x0

    .line 577
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/amazon/notebook/module/NotebookActivity$AnnotationReference;

    .line 578
    invoke-virtual {v5}, Lcom/amazon/notebook/module/NotebookActivity$AnnotationReference;->getType()Lcom/amazon/kindle/krx/content/KRXIAnnotation$AnnotationType;

    move-result-object v6

    sget-object v7, Lcom/amazon/kindle/krx/content/KRXIAnnotation$AnnotationType;->NOTE:Lcom/amazon/kindle/krx/content/KRXIAnnotation$AnnotationType;

    invoke-virtual {v6, v7}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 579
    invoke-virtual {v5}, Lcom/amazon/notebook/module/NotebookActivity$AnnotationReference;->getType()Lcom/amazon/kindle/krx/content/KRXIAnnotation$AnnotationType;

    move-result-object v6

    sget-object v7, Lcom/amazon/kindle/krx/content/KRXIAnnotation$AnnotationType;->HIGHLIGHT:Lcom/amazon/kindle/krx/content/KRXIAnnotation$AnnotationType;

    invoke-virtual {v6, v7}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 580
    invoke-virtual {v5}, Lcom/amazon/notebook/module/NotebookActivity$AnnotationReference;->getType()Lcom/amazon/kindle/krx/content/KRXIAnnotation$AnnotationType;

    move-result-object v6

    sget-object v7, Lcom/amazon/kindle/krx/content/KRXIAnnotation$AnnotationType;->GRAPHICAL_HIGHLIGHT:Lcom/amazon/kindle/krx/content/KRXIAnnotation$AnnotationType;

    invoke-virtual {v6, v7}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 581
    :cond_2
    invoke-virtual {v5}, Lcom/amazon/notebook/module/NotebookActivity$AnnotationReference;->getStartPosition()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object v6

    .line 582
    invoke-interface {v6}, Lcom/amazon/kindle/krx/reader/IPosition;->toSerializableString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 583
    invoke-interface {v6}, Lcom/amazon/kindle/krx/reader/IPosition;->getIntPosition()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 584
    invoke-virtual {v5}, Lcom/amazon/notebook/module/NotebookActivity$AnnotationReference;->getType()Lcom/amazon/kindle/krx/content/KRXIAnnotation$AnnotationType;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 589
    :cond_3
    invoke-virtual {v5}, Lcom/amazon/notebook/module/NotebookActivity$AnnotationReference;->getType()Lcom/amazon/kindle/krx/content/KRXIAnnotation$AnnotationType;

    move-result-object v5

    sget-object v6, Lcom/amazon/kindle/krx/content/KRXIAnnotation$AnnotationType;->BOOKMARK:Lcom/amazon/kindle/krx/content/KRXIAnnotation$AnnotationType;

    invoke-virtual {v5, v6}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 594
    :cond_4
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_6

    if-lez v1, :cond_5

    .line 597
    sget v0, Lcom/amazon/notebook/module/R$string;->flashcards_cannot_create_from_bookmarks:I

    invoke-direct {p0, v0}, Lcom/amazon/notebook/module/BaseNotebookHeaderBar;->showAlert(I)V

    goto :goto_1

    .line 599
    :cond_5
    sget v0, Lcom/amazon/notebook/module/R$string;->flashcards_no_annotations_selected:I

    invoke-direct {p0, v0}, Lcom/amazon/notebook/module/BaseNotebookHeaderBar;->showAlert(I)V

    goto :goto_1

    .line 601
    :cond_6
    invoke-static {}, Lcom/amazon/notebook/module/NotebookPlugin;->getSdk()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderManager()Lcom/amazon/kindle/krx/reader/IReaderManager;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 604
    invoke-virtual {p0}, Lcom/amazon/notebook/module/BaseNotebookHeaderBar;->disableFlashcardsButton()V

    .line 605
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-static {v0}, Lcom/amazon/notebook/module/metrics/NotebookClickstreamMetricManager;->logCreateFlashcardsFromNotebook(I)V

    .line 606
    invoke-static {}, Lcom/amazon/notebook/module/NotebookPlugin;->getSdk()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderManager()Lcom/amazon/kindle/krx/reader/IReaderManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/reader/IReaderManager;->getCurrentBook()Lcom/amazon/kindle/krx/content/IBook;

    move-result-object v0

    .line 608
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 610
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 612
    invoke-interface {v0}, Lcom/amazon/kindle/krx/content/IBook;->getASIN()Ljava/lang/String;

    move-result-object v6

    const-string v7, "flashcardBookAsin"

    invoke-virtual {v5, v7, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 613
    invoke-interface {v0}, Lcom/amazon/kindle/krx/content/IBook;->getGuid()Ljava/lang/String;

    move-result-object v6

    const-string v7, "flashcardBookGuid"

    invoke-virtual {v5, v7, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 614
    invoke-interface {v0}, Lcom/amazon/kindle/krx/content/IBook;->getTitle()Ljava/lang/String;

    move-result-object v0

    const-string v6, "flashcardDeckTitle"

    invoke-virtual {v5, v6, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "flashcardStartPositionsString"

    .line 615
    invoke-virtual {v5, v0, v2}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    const-string v0, "flashcardStartPositionsInt"

    .line 616
    invoke-virtual {v5, v0, v3}, Landroid/os/Bundle;->putIntegerArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    const-string v0, "flashcardTypes"

    .line 617
    invoke-virtual {v5, v0, v4}, Landroid/os/Bundle;->putIntegerArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 619
    invoke-direct {p0, v1, v5}, Lcom/amazon/notebook/module/BaseNotebookHeaderBar;->invokeFlashcardsActivity(Landroid/content/Intent;Landroid/os/Bundle;)V

    goto :goto_1

    .line 621
    :cond_7
    sget-object v0, Lcom/amazon/notebook/module/BaseNotebookHeaderBar;->TAG:Ljava/lang/String;

    const-string v1, "No reader manager found"

    invoke-static {v0, v1}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method private exportNotebook()V
    .locals 3

    .line 557
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/amazon/notebook/module/BaseNotebookHeaderBar;->activity:Lcom/amazon/notebook/module/NotebookActivity;

    const-class v2, Lcom/amazon/notebook/module/exporting/NotebookExportSelectionActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 559
    iget-object v1, p0, Lcom/amazon/notebook/module/BaseNotebookHeaderBar;->notebookFilter:Lcom/amazon/notebook/module/CompositeNotebookFilter;

    const-string v2, "CompositeFilter"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 561
    invoke-virtual {p0}, Lcom/amazon/notebook/module/BaseNotebookHeaderBar;->disableExportButton()V

    .line 562
    iget-object v1, p0, Lcom/amazon/notebook/module/BaseNotebookHeaderBar;->activity:Lcom/amazon/notebook/module/NotebookActivity;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroidx/fragment/app/FragmentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method private getLogNameForFilter(Lcom/amazon/notebook/module/NotebookFilter;)Ljava/lang/String;
    .locals 1

    .line 826
    sget-object v0, Lcom/amazon/notebook/module/NotebookFilter;->STARRED:Lcom/amazon/notebook/module/NotebookFilter;

    if-ne p1, v0, :cond_0

    const-string p1, "STARS"

    return-object p1

    :cond_0
    if-eqz p1, :cond_1

    .line 829
    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    const-string p1, "UNKNOWN_TYPE"

    return-object p1
.end method

.method private getSelectedFilterBarString(Lcom/amazon/notebook/module/NotebookFilter;)Ljava/lang/String;
    .locals 2

    .line 915
    sget-object v0, Lcom/amazon/notebook/module/BaseNotebookHeaderBar$9;->$SwitchMap$com$amazon$notebook$module$NotebookFilter:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 935
    invoke-virtual {p1}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 933
    :pswitch_0
    iget-object p1, p0, Lcom/amazon/notebook/module/BaseNotebookHeaderBar;->res:Landroid/content/res/Resources;

    sget v0, Lcom/amazon/notebook/module/R$string;->notebook_module_phl_title:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 931
    :pswitch_1
    iget-object p1, p0, Lcom/amazon/notebook/module/BaseNotebookHeaderBar;->res:Landroid/content/res/Resources;

    sget v0, Lcom/amazon/notebook/module/R$string;->notebook_module_starred:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 929
    :pswitch_2
    iget-object p1, p0, Lcom/amazon/notebook/module/BaseNotebookHeaderBar;->res:Landroid/content/res/Resources;

    sget v0, Lcom/amazon/notebook/module/R$string;->notebook_module_notes:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 927
    :pswitch_3
    iget-object p1, p0, Lcom/amazon/notebook/module/BaseNotebookHeaderBar;->res:Landroid/content/res/Resources;

    sget v0, Lcom/amazon/notebook/module/R$string;->notebook_module_highlights_yellow:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 925
    :pswitch_4
    iget-object p1, p0, Lcom/amazon/notebook/module/BaseNotebookHeaderBar;->res:Landroid/content/res/Resources;

    sget v0, Lcom/amazon/notebook/module/R$string;->notebook_module_highlights_pink:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 923
    :pswitch_5
    iget-object p1, p0, Lcom/amazon/notebook/module/BaseNotebookHeaderBar;->res:Landroid/content/res/Resources;

    sget v0, Lcom/amazon/notebook/module/R$string;->notebook_module_highlights_orange:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 921
    :pswitch_6
    iget-object p1, p0, Lcom/amazon/notebook/module/BaseNotebookHeaderBar;->res:Landroid/content/res/Resources;

    sget v0, Lcom/amazon/notebook/module/R$string;->notebook_module_highlights_blue:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 919
    :pswitch_7
    iget-object p1, p0, Lcom/amazon/notebook/module/BaseNotebookHeaderBar;->res:Landroid/content/res/Resources;

    sget v0, Lcom/amazon/notebook/module/R$string;->notebook_highlights_all:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 917
    :pswitch_8
    iget-object p1, p0, Lcom/amazon/notebook/module/BaseNotebookHeaderBar;->res:Landroid/content/res/Resources;

    sget v0, Lcom/amazon/notebook/module/R$string;->notebook_module_bookmark:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private invokeFlashcardsActivity(Landroid/content/Intent;Landroid/os/Bundle;)V
    .locals 6

    :try_start_0
    const-string v0, "com.amazon.kedu.flashcards.FlashcardsActivity"

    .line 636
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 637
    iget-object v1, p0, Lcom/amazon/notebook/module/BaseNotebookHeaderBar;->activity:Lcom/amazon/notebook/module/NotebookActivity;

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const-string/jumbo v1, "setFlashcardCreationData"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    .line 638
    const-class v4, Landroid/os/Bundle;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p2, v2, v5

    .line 639
    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 640
    iget-object p2, p0, Lcom/amazon/notebook/module/BaseNotebookHeaderBar;->activity:Lcom/amazon/notebook/module/NotebookActivity;

    invoke-virtual {p2, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 648
    :catch_0
    sget-object p1, Lcom/amazon/notebook/module/BaseNotebookHeaderBar;->TAG:Ljava/lang/String;

    const-string p2, "Cannot access setFlashcardCreationData method; cannot pass data to Flashcards"

    invoke-static {p1, p2}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 646
    :catch_1
    sget-object p1, Lcom/amazon/notebook/module/BaseNotebookHeaderBar;->TAG:Ljava/lang/String;

    const-string p2, "Cannot invoke setFlashcardCreationData method; cannot pass data to Flashcards"

    invoke-static {p1, p2}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 644
    :catch_2
    sget-object p1, Lcom/amazon/notebook/module/BaseNotebookHeaderBar;->TAG:Ljava/lang/String;

    const-string p2, "Cannot find setFlashcardCreationData method; cannot pass data to Flashcards"

    invoke-static {p1, p2}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 642
    :catch_3
    sget-object p1, Lcom/amazon/notebook/module/BaseNotebookHeaderBar;->TAG:Ljava/lang/String;

    const-string p2, "Cannot find FlashcardsActivity class; cannot start Flashcards"

    invoke-static {p1, p2}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private isExportSupported()Z
    .locals 7

    .line 845
    iget-object v0, p0, Lcom/amazon/notebook/module/BaseNotebookHeaderBar;->activity:Lcom/amazon/notebook/module/NotebookActivity;

    invoke-virtual {v0}, Lcom/amazon/notebook/module/NotebookActivity;->getDocViewer()Lcom/amazon/android/docviewer/KindleDocViewer;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_5

    .line 846
    iget-object v0, p0, Lcom/amazon/notebook/module/BaseNotebookHeaderBar;->activity:Lcom/amazon/notebook/module/NotebookActivity;

    invoke-virtual {v0}, Lcom/amazon/notebook/module/NotebookActivity;->getDocViewer()Lcom/amazon/android/docviewer/KindleDocViewer;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/android/docviewer/KindleDocViewer;->getBookInfo()Lcom/amazon/kindle/model/content/ILocalBookItem;

    move-result-object v0

    .line 847
    invoke-interface {v0}, Lcom/amazon/kindle/model/content/ILocalBookInfo;->getContentClass()Lcom/amazon/kindle/model/content/ContentClass;

    move-result-object v2

    sget-object v3, Lcom/amazon/kindle/model/content/ContentClass;->MANGA:Lcom/amazon/kindle/model/content/ContentClass;

    const/4 v4, 0x0

    if-eq v2, v3, :cond_1

    .line 848
    invoke-interface {v0}, Lcom/amazon/kindle/model/content/ILocalBookInfo;->getContentClass()Lcom/amazon/kindle/model/content/ContentClass;

    move-result-object v2

    sget-object v3, Lcom/amazon/kindle/model/content/ContentClass;->COMIC:Lcom/amazon/kindle/model/content/ContentClass;

    if-ne v2, v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v2, 0x1

    .line 849
    :goto_1
    invoke-interface {v0}, Lcom/amazon/kindle/model/content/ILocalBookInfo;->isFixedLayout()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Lcom/amazon/kindle/model/content/ILocalBookInfo;->isTextbook()Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v3, 0x1

    goto :goto_2

    :cond_2
    const/4 v3, 0x0

    :goto_2
    xor-int/lit8 v5, v3, 0x1

    if-nez v2, :cond_4

    .line 855
    invoke-interface {v0}, Lcom/amazon/kindle/model/content/ILocalBookInfo;->getOwnershipType()Lcom/amazon/kindle/model/content/ContentOwnershipType;

    move-result-object v2

    sget-object v6, Lcom/amazon/kindle/model/content/ContentOwnershipType;->FreeTrial:Lcom/amazon/kindle/model/content/ContentOwnershipType;

    if-eq v2, v6, :cond_4

    .line 856
    invoke-interface {v0}, Lcom/amazon/kindle/model/content/IListableBook;->isSample()Z

    move-result v0

    if-nez v0, :cond_4

    if-nez v3, :cond_3

    if-eqz v5, :cond_4

    :cond_3
    iget-object v0, p0, Lcom/amazon/notebook/module/BaseNotebookHeaderBar;->activity:Lcom/amazon/notebook/module/NotebookActivity;

    .line 858
    invoke-virtual {v0}, Lcom/amazon/notebook/module/NotebookActivity;->getDocViewer()Lcom/amazon/android/docviewer/KindleDocViewer;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/android/util/BookTypeUtil;->isLavaMagazine(Lcom/amazon/android/docviewer/KindleDocViewer;)Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_3

    :cond_4
    const/4 v1, 0x0

    :goto_3
    return v1

    .line 860
    :cond_5
    sget-object v0, Lcom/amazon/notebook/module/BaseNotebookHeaderBar;->TAG:Ljava/lang/String;

    const-string v2, "No doc viewer found, defaulting export to true"

    invoke-static {v0, v2}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    return v1
.end method

.method private showAlert(I)V
    .locals 2

    .line 627
    new-instance v0, Landroidx/appcompat/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/amazon/notebook/module/BaseNotebookHeaderBar;->activity:Lcom/amazon/notebook/module/NotebookActivity;

    invoke-direct {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 628
    invoke-virtual {v0, p1}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(I)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 629
    sget p1, Lcom/amazon/notebook/module/R$string;->ok:I

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 630
    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p1

    .line 631
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method private updateChapterSubMenuCheckboxes()V
    .locals 5

    .line 806
    iget-object v0, p0, Lcom/amazon/notebook/module/BaseNotebookHeaderBar;->chapterFilters:Lcom/amazon/notebook/module/NotebookDropdownAdapter$FilterItem;

    invoke-virtual {v0}, Lcom/amazon/notebook/module/NotebookDropdownAdapter$FilterItem;->getSubFilters()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    return-void

    .line 810
    :cond_0
    iget-object v0, p0, Lcom/amazon/notebook/module/BaseNotebookHeaderBar;->notebookFilter:Lcom/amazon/notebook/module/CompositeNotebookFilter;

    invoke-virtual {v0}, Lcom/amazon/notebook/module/CompositeNotebookFilter;->getSelectedChapters()Ljava/util/Set;

    move-result-object v0

    const/4 v2, 0x1

    .line 813
    :goto_0
    iget-object v3, p0, Lcom/amazon/notebook/module/BaseNotebookHeaderBar;->chapterFilters:Lcom/amazon/notebook/module/NotebookDropdownAdapter$FilterItem;

    invoke-virtual {v3}, Lcom/amazon/notebook/module/NotebookDropdownAdapter$FilterItem;->getSubFilters()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 814
    iget-object v3, p0, Lcom/amazon/notebook/module/BaseNotebookHeaderBar;->chapterFilters:Lcom/amazon/notebook/module/NotebookDropdownAdapter$FilterItem;

    invoke-virtual {v3}, Lcom/amazon/notebook/module/NotebookDropdownAdapter$FilterItem;->getSubFilters()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/amazon/notebook/module/NotebookDropdownAdapter$FilterItem;

    .line 815
    invoke-virtual {v3}, Lcom/amazon/notebook/module/NotebookDropdownAdapter$FilterItem;->getData()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/amazon/notebook/module/NotebookHeaderBar$ChapterFilter;

    iget-object v3, v3, Lcom/amazon/notebook/module/NotebookHeaderBar$ChapterFilter;->chapterName:Ljava/lang/String;

    invoke-interface {v0, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 816
    iget-object v3, p0, Lcom/amazon/notebook/module/BaseNotebookHeaderBar;->chapterFilters:Lcom/amazon/notebook/module/NotebookDropdownAdapter$FilterItem;

    invoke-virtual {v3}, Lcom/amazon/notebook/module/NotebookDropdownAdapter$FilterItem;->getSubFilters()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/amazon/notebook/module/NotebookDropdownAdapter$FilterItem;

    invoke-virtual {v3, v1}, Lcom/amazon/notebook/module/NotebookDropdownAdapter$FilterItem;->setChecked(Z)V

    goto :goto_1

    .line 818
    :cond_1
    iget-object v3, p0, Lcom/amazon/notebook/module/BaseNotebookHeaderBar;->chapterFilters:Lcom/amazon/notebook/module/NotebookDropdownAdapter$FilterItem;

    invoke-virtual {v3}, Lcom/amazon/notebook/module/NotebookDropdownAdapter$FilterItem;->getSubFilters()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/amazon/notebook/module/NotebookDropdownAdapter$FilterItem;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/amazon/notebook/module/NotebookDropdownAdapter$FilterItem;->setChecked(Z)V

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private updateFilterMenuCheckboxes()V
    .locals 8

    .line 750
    iget-object v0, p0, Lcom/amazon/notebook/module/BaseNotebookHeaderBar;->notebookFilter:Lcom/amazon/notebook/module/CompositeNotebookFilter;

    invoke-virtual {v0}, Lcom/amazon/notebook/module/CompositeNotebookFilter;->getSelectedFilters()Ljava/util/Set;

    move-result-object v0

    .line 751
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 753
    iget-object v2, p0, Lcom/amazon/notebook/module/BaseNotebookHeaderBar;->topLevelFilters:Lcom/amazon/notebook/module/NotebookDropdownAdapter$FilterItem;

    invoke-virtual {v2}, Lcom/amazon/notebook/module/NotebookDropdownAdapter$FilterItem;->getSubFilters()Ljava/util/List;

    move-result-object v2

    .line 754
    iget-object v3, p0, Lcom/amazon/notebook/module/BaseNotebookHeaderBar;->highlightFilters:Lcom/amazon/notebook/module/NotebookDropdownAdapter$FilterItem;

    invoke-virtual {v3}, Lcom/amazon/notebook/module/NotebookDropdownAdapter$FilterItem;->getSubFilters()Ljava/util/List;

    move-result-object v3

    .line 755
    iget-object v4, p0, Lcom/amazon/notebook/module/BaseNotebookHeaderBar;->chapterFilters:Lcom/amazon/notebook/module/NotebookDropdownAdapter$FilterItem;

    invoke-virtual {v4}, Lcom/amazon/notebook/module/NotebookDropdownAdapter$FilterItem;->getSubFilters()Ljava/util/List;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 757
    :goto_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v7

    if-ge v6, v7, :cond_0

    .line 758
    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 761
    :goto_1
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    if-ge v2, v6, :cond_1

    .line 762
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    .line 765
    :goto_2
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    if-ge v2, v6, :cond_2

    .line 766
    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 769
    :cond_2
    iget-object v2, p0, Lcom/amazon/notebook/module/BaseNotebookHeaderBar;->starFilter:Lcom/amazon/notebook/module/NotebookDropdownAdapter$FilterItem;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 771
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v4, 0x1

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazon/notebook/module/NotebookDropdownAdapter$FilterItem;

    .line 772
    invoke-virtual {v2}, Lcom/amazon/notebook/module/NotebookDropdownAdapter$FilterItem;->getData()Ljava/lang/Object;

    move-result-object v6

    instance-of v6, v6, Lcom/amazon/notebook/module/NotebookFilter;

    if-eqz v6, :cond_3

    .line 773
    invoke-virtual {v2}, Lcom/amazon/notebook/module/NotebookDropdownAdapter$FilterItem;->getData()Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v0, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 774
    invoke-virtual {v2, v4}, Lcom/amazon/notebook/module/NotebookDropdownAdapter$FilterItem;->setChecked(Z)V

    goto :goto_3

    .line 776
    :cond_4
    invoke-virtual {v2, v5}, Lcom/amazon/notebook/module/NotebookDropdownAdapter$FilterItem;->setChecked(Z)V

    goto :goto_3

    :cond_5
    const/4 v1, 0x0

    .line 782
    :goto_4
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    if-ge v5, v2, :cond_7

    .line 783
    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazon/notebook/module/NotebookDropdownAdapter$FilterItem;

    invoke-virtual {v2}, Lcom/amazon/notebook/module/NotebookDropdownAdapter$FilterItem;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_6

    add-int/lit8 v1, v1, 0x1

    :cond_6
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    .line 790
    :cond_7
    sget-object v2, Lcom/amazon/notebook/module/NotebookFilter;->HIGHLIGHTS:Lcom/amazon/notebook/module/NotebookFilter;

    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    const-string v5, ": "

    if-nez v2, :cond_a

    .line 791
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v2, v4

    if-eq v1, v2, :cond_a

    sget-object v2, Lcom/amazon/notebook/module/NotebookFilter;->ALL:Lcom/amazon/notebook/module/NotebookFilter;

    .line 792
    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    goto :goto_5

    :cond_8
    if-lez v1, :cond_9

    .line 796
    iget-object v0, p0, Lcom/amazon/notebook/module/BaseNotebookHeaderBar;->highlightFilters:Lcom/amazon/notebook/module/NotebookDropdownAdapter$FilterItem;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/amazon/notebook/module/BaseNotebookHeaderBar;->res:Landroid/content/res/Resources;

    sget v3, Lcom/amazon/notebook/module/R$string;->notebook_highlights:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/amazon/notebook/module/BaseNotebookHeaderBar;->res:Landroid/content/res/Resources;

    sget v3, Lcom/amazon/notebook/module/R$string;->notebook_highlights_filtered:I

    .line 797
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 796
    invoke-virtual {v0, v1}, Lcom/amazon/notebook/module/NotebookDropdownAdapter$FilterItem;->setFilterText(Ljava/lang/String;)V

    goto :goto_6

    .line 799
    :cond_9
    iget-object v0, p0, Lcom/amazon/notebook/module/BaseNotebookHeaderBar;->highlightFilters:Lcom/amazon/notebook/module/NotebookDropdownAdapter$FilterItem;

    iget-object v1, p0, Lcom/amazon/notebook/module/BaseNotebookHeaderBar;->res:Landroid/content/res/Resources;

    sget v2, Lcom/amazon/notebook/module/R$string;->notebook_highlights:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/notebook/module/NotebookDropdownAdapter$FilterItem;->setFilterText(Ljava/lang/String;)V

    goto :goto_6

    .line 793
    :cond_a
    :goto_5
    iget-object v0, p0, Lcom/amazon/notebook/module/BaseNotebookHeaderBar;->highlightFilters:Lcom/amazon/notebook/module/NotebookDropdownAdapter$FilterItem;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/amazon/notebook/module/BaseNotebookHeaderBar;->res:Landroid/content/res/Resources;

    sget v3, Lcom/amazon/notebook/module/R$string;->notebook_highlights:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/amazon/notebook/module/BaseNotebookHeaderBar;->res:Landroid/content/res/Resources;

    sget v3, Lcom/amazon/notebook/module/R$string;->notebook_highlights_all_items:I

    .line 794
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 793
    invoke-virtual {v0, v1}, Lcom/amazon/notebook/module/NotebookDropdownAdapter$FilterItem;->setFilterText(Ljava/lang/String;)V

    .line 802
    :goto_6
    invoke-direct {p0}, Lcom/amazon/notebook/module/BaseNotebookHeaderBar;->updateSelectedFilterBar()V

    return-void
.end method

.method private updateSelectedChaptersContainer(Lcom/amazon/notebook/module/NotebookHeaderBar$ChapterFilter;)Z
    .locals 4

    .line 725
    iget-object v0, p0, Lcom/amazon/notebook/module/BaseNotebookHeaderBar;->notebookFilter:Lcom/amazon/notebook/module/CompositeNotebookFilter;

    invoke-virtual {v0}, Lcom/amazon/notebook/module/CompositeNotebookFilter;->getSelectedChapters()Ljava/util/Set;

    move-result-object v0

    .line 726
    iget-object v1, p1, Lcom/amazon/notebook/module/NotebookHeaderBar$ChapterFilter;->chapterName:Ljava/lang/String;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_1

    .line 727
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    return v2

    .line 731
    :cond_0
    invoke-interface {v0}, Ljava/util/Set;->clear()V

    return v3

    .line 735
    :cond_1
    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 736
    iget-object p1, p1, Lcom/amazon/notebook/module/NotebookHeaderBar$ChapterFilter;->chapterName:Ljava/lang/String;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return v3

    .line 741
    :cond_2
    iget-object v1, p1, Lcom/amazon/notebook/module/NotebookHeaderBar$ChapterFilter;->chapterName:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v1

    if-lez v1, :cond_3

    .line 742
    iget-object p1, p1, Lcom/amazon/notebook/module/NotebookHeaderBar$ChapterFilter;->chapterName:Ljava/lang/String;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    return v3

    :cond_3
    return v2
.end method

.method private updateSelectedFilterBar()V
    .locals 10

    .line 878
    iget-object v0, p0, Lcom/amazon/notebook/module/BaseNotebookHeaderBar;->activity:Lcom/amazon/notebook/module/NotebookActivity;

    invoke-virtual {v0}, Lcom/amazon/notebook/module/NotebookActivity;->getNotesLayout()Lcom/amazon/notebook/module/NotebookScreenLayout;

    move-result-object v0

    sget v1, Lcom/amazon/notebook/module/R$id;->selected_filter_bar:I

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 879
    iget-object v1, p0, Lcom/amazon/notebook/module/BaseNotebookHeaderBar;->notebookFilter:Lcom/amazon/notebook/module/CompositeNotebookFilter;

    invoke-virtual {v1}, Lcom/amazon/notebook/module/CompositeNotebookFilter;->getSelectedFilters()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/amazon/notebook/module/BaseNotebookHeaderBar;->notebookFilter:Lcom/amazon/notebook/module/CompositeNotebookFilter;

    invoke-virtual {v1}, Lcom/amazon/notebook/module/CompositeNotebookFilter;->getSelectedFilters()Ljava/util/Set;

    move-result-object v1

    sget-object v3, Lcom/amazon/notebook/module/NotebookFilter;->ALL:Lcom/amazon/notebook/module/NotebookFilter;

    invoke-interface {v1, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/amazon/notebook/module/BaseNotebookHeaderBar;->notebookFilter:Lcom/amazon/notebook/module/CompositeNotebookFilter;

    invoke-virtual {v1}, Lcom/amazon/notebook/module/CompositeNotebookFilter;->getSelectedChapters()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x8

    .line 880
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_3

    .line 882
    :cond_0
    iget-object v1, p0, Lcom/amazon/notebook/module/BaseNotebookHeaderBar;->activity:Lcom/amazon/notebook/module/NotebookActivity;

    invoke-virtual {v1}, Lcom/amazon/notebook/module/NotebookActivity;->getNotesLayout()Lcom/amazon/notebook/module/NotebookScreenLayout;

    move-result-object v1

    sget v3, Lcom/amazon/notebook/module/R$id;->selected_filter_names:I

    invoke-virtual {v1, v3}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 883
    new-instance v3, Landroid/text/SpannableStringBuilder;

    invoke-direct {v3}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 884
    new-instance v4, Landroid/text/SpannableString;

    iget-object v5, p0, Lcom/amazon/notebook/module/BaseNotebookHeaderBar;->res:Landroid/content/res/Resources;

    sget v6, Lcom/amazon/notebook/module/R$string;->notebook_filter_showing:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 885
    new-instance v5, Landroid/text/style/StyleSpan;

    invoke-direct {v5, v2}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-virtual {v4}, Landroid/text/SpannableString;->length()I

    move-result v2

    const/16 v6, 0x21

    const/4 v7, 0x0

    invoke-virtual {v4, v5, v7, v2, v6}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 886
    iget-object v2, p0, Lcom/amazon/notebook/module/BaseNotebookHeaderBar;->notebookFilter:Lcom/amazon/notebook/module/CompositeNotebookFilter;

    invoke-virtual {v2}, Lcom/amazon/notebook/module/CompositeNotebookFilter;->getSelectedFilters()Ljava/util/Set;

    move-result-object v2

    .line 887
    iget-object v5, p0, Lcom/amazon/notebook/module/BaseNotebookHeaderBar;->notebookFilter:Lcom/amazon/notebook/module/CompositeNotebookFilter;

    invoke-virtual {v5}, Lcom/amazon/notebook/module/CompositeNotebookFilter;->getSelectedChapters()Ljava/util/Set;

    move-result-object v5

    .line 888
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 890
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/amazon/notebook/module/NotebookFilter;

    .line 891
    sget-object v9, Lcom/amazon/notebook/module/NotebookFilter;->ALL:Lcom/amazon/notebook/module/NotebookFilter;

    if-ne v8, v9, :cond_1

    goto :goto_0

    .line 892
    :cond_1
    invoke-direct {p0, v8}, Lcom/amazon/notebook/module/BaseNotebookHeaderBar;->getSelectedFilterBarString(Lcom/amazon/notebook/module/NotebookFilter;)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v6, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 895
    :cond_2
    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 896
    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 898
    :cond_3
    invoke-virtual {v3, v4}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v2

    const-string v4, " "

    invoke-virtual {v2, v4}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v2

    const-string v4, ", "

    invoke-static {v6, v4}, Lorg/apache/commons/lang3/StringUtils;->join(Ljava/lang/Iterable;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 899
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 900
    iget-object v2, p0, Lcom/amazon/notebook/module/BaseNotebookHeaderBar;->themeProvider:Lcom/amazon/notebook/ThemeProvider;

    invoke-interface {v2}, Lcom/amazon/notebook/ThemeProvider;->isDarkThemed()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 901
    iget-object v2, p0, Lcom/amazon/notebook/module/BaseNotebookHeaderBar;->res:Landroid/content/res/Resources;

    sget v3, Lcom/amazon/notebook/module/R$color;->notebook_selected_bar_text_dark:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 902
    iget-object v2, p0, Lcom/amazon/notebook/module/BaseNotebookHeaderBar;->res:Landroid/content/res/Resources;

    sget v3, Lcom/amazon/notebook/module/R$color;->notebook_selected_bar_background_dark:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 903
    iget-object v1, p0, Lcom/amazon/notebook/module/BaseNotebookHeaderBar;->res:Landroid/content/res/Resources;

    sget v2, Lcom/amazon/notebook/module/R$color;->notebook_selected_bar_background_dark:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    goto :goto_2

    .line 905
    :cond_4
    iget-object v2, p0, Lcom/amazon/notebook/module/BaseNotebookHeaderBar;->res:Landroid/content/res/Resources;

    sget v3, Lcom/amazon/notebook/module/R$color;->notebook_selected_bar_text_light:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 906
    iget-object v2, p0, Lcom/amazon/notebook/module/BaseNotebookHeaderBar;->res:Landroid/content/res/Resources;

    sget v3, Lcom/amazon/notebook/module/R$color;->notebook_selected_bar_background_light:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 907
    iget-object v1, p0, Lcom/amazon/notebook/module/BaseNotebookHeaderBar;->res:Landroid/content/res/Resources;

    sget v2, Lcom/amazon/notebook/module/R$color;->notebook_selected_bar_background_light:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 909
    :goto_2
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->requestLayout()V

    .line 910
    invoke-virtual {v0, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :goto_3
    return-void
.end method

.method private updateSelectedFiltersContainer(Lcom/amazon/notebook/module/NotebookFilter;)Z
    .locals 5

    .line 653
    iget-object v0, p0, Lcom/amazon/notebook/module/BaseNotebookHeaderBar;->notebookFilter:Lcom/amazon/notebook/module/CompositeNotebookFilter;

    invoke-virtual {v0}, Lcom/amazon/notebook/module/CompositeNotebookFilter;->getSelectedFilters()Ljava/util/Set;

    move-result-object v0

    .line 655
    sget-object v1, Lcom/amazon/notebook/module/NotebookFilter;->STARRED:Lcom/amazon/notebook/module/NotebookFilter;

    invoke-virtual {p1, v1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    .line 656
    sget-object p1, Lcom/amazon/notebook/module/NotebookFilter;->STARRED:Lcom/amazon/notebook/module/NotebookFilter;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 657
    sget-object p1, Lcom/amazon/notebook/module/NotebookFilter;->STARRED:Lcom/amazon/notebook/module/NotebookFilter;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 661
    :cond_0
    sget-object p1, Lcom/amazon/notebook/module/NotebookFilter;->STARRED:Lcom/amazon/notebook/module/NotebookFilter;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    :goto_0
    return v2

    .line 668
    :cond_1
    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 669
    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 672
    sget-object v1, Lcom/amazon/notebook/module/NotebookFilter;->ALL:Lcom/amazon/notebook/module/NotebookFilter;

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 673
    sget-object v1, Lcom/amazon/notebook/module/NotebookFilter;->ALL:Lcom/amazon/notebook/module/NotebookFilter;

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 678
    :cond_2
    sget-object v1, Lcom/amazon/notebook/module/NotebookFilter;->HIGHLIGHTS:Lcom/amazon/notebook/module/NotebookFilter;

    invoke-virtual {p1, v1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 679
    iget-object v1, p0, Lcom/amazon/notebook/module/BaseNotebookHeaderBar;->highlightFilterSet:Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    .line 682
    :cond_3
    iget-object v1, p0, Lcom/amazon/notebook/module/BaseNotebookHeaderBar;->highlightFilterSet:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    sget-object p1, Lcom/amazon/notebook/module/NotebookFilter;->HIGHLIGHTS:Lcom/amazon/notebook/module/NotebookFilter;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 683
    sget-object p1, Lcom/amazon/notebook/module/NotebookFilter;->HIGHLIGHTS:Lcom/amazon/notebook/module/NotebookFilter;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    :cond_4
    return v2

    .line 697
    :cond_5
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v1

    const/4 v3, 0x2

    if-ne v1, v3, :cond_6

    sget-object v1, Lcom/amazon/notebook/module/NotebookFilter;->STARRED:Lcom/amazon/notebook/module/NotebookFilter;

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    :cond_6
    sget-object v1, Lcom/amazon/notebook/module/NotebookFilter;->HIGHLIGHTS:Lcom/amazon/notebook/module/NotebookFilter;

    .line 698
    invoke-virtual {p1, v1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v1

    iget-object v4, p0, Lcom/amazon/notebook/module/BaseNotebookHeaderBar;->highlightFilterSet:Ljava/util/Set;

    invoke-interface {v4}, Ljava/util/Set;->size()I

    move-result v4

    add-int/2addr v4, v3

    if-ne v1, v4, :cond_8

    iget-object v1, p0, Lcom/amazon/notebook/module/BaseNotebookHeaderBar;->highlightFilterSet:Ljava/util/Set;

    .line 699
    invoke-interface {v0, v1}, Ljava/util/Set;->containsAll(Ljava/util/Collection;)Z

    move-result v1

    if-eqz v1, :cond_8

    sget-object v1, Lcom/amazon/notebook/module/NotebookFilter;->STARRED:Lcom/amazon/notebook/module/NotebookFilter;

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    goto :goto_1

    :cond_7
    const/4 p1, 0x0

    return p1

    .line 702
    :cond_8
    :goto_1
    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 704
    iget-object v1, p0, Lcom/amazon/notebook/module/BaseNotebookHeaderBar;->highlightFilterSet:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    sget-object v1, Lcom/amazon/notebook/module/NotebookFilter;->HIGHLIGHTS:Lcom/amazon/notebook/module/NotebookFilter;

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 705
    sget-object v1, Lcom/amazon/notebook/module/NotebookFilter;->HIGHLIGHTS:Lcom/amazon/notebook/module/NotebookFilter;

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 708
    :cond_9
    sget-object v1, Lcom/amazon/notebook/module/NotebookFilter;->HIGHLIGHTS:Lcom/amazon/notebook/module/NotebookFilter;

    invoke-virtual {p1, v1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 709
    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 710
    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 712
    :cond_a
    iget-object p1, p0, Lcom/amazon/notebook/module/BaseNotebookHeaderBar;->highlightFilterSet:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    .line 714
    :cond_b
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_c

    sget-object p1, Lcom/amazon/notebook/module/NotebookFilter;->ALL:Lcom/amazon/notebook/module/NotebookFilter;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_c
    return v2
.end method


# virtual methods
.method public clearFilter()V
    .locals 3

    .line 940
    iget-object v0, p0, Lcom/amazon/notebook/module/BaseNotebookHeaderBar;->notebookFilter:Lcom/amazon/notebook/module/CompositeNotebookFilter;

    invoke-virtual {v0}, Lcom/amazon/notebook/module/CompositeNotebookFilter;->getSelectedFilters()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 941
    iget-object v0, p0, Lcom/amazon/notebook/module/BaseNotebookHeaderBar;->notebookFilter:Lcom/amazon/notebook/module/CompositeNotebookFilter;

    invoke-virtual {v0}, Lcom/amazon/notebook/module/CompositeNotebookFilter;->getSelectedChapters()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 942
    iget-object v0, p0, Lcom/amazon/notebook/module/BaseNotebookHeaderBar;->notebookFilter:Lcom/amazon/notebook/module/CompositeNotebookFilter;

    invoke-virtual {v0}, Lcom/amazon/notebook/module/CompositeNotebookFilter;->getSelectedFilters()Ljava/util/Set;

    move-result-object v0

    sget-object v1, Lcom/amazon/notebook/module/NotebookFilter;->ALL:Lcom/amazon/notebook/module/NotebookFilter;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 943
    invoke-direct {p0}, Lcom/amazon/notebook/module/BaseNotebookHeaderBar;->clearFilterMenuCheckboxes()V

    .line 944
    iget-object v0, p0, Lcom/amazon/notebook/module/BaseNotebookHeaderBar;->activity:Lcom/amazon/notebook/module/NotebookActivity;

    invoke-virtual {p0}, Lcom/amazon/notebook/module/BaseNotebookHeaderBar;->getFilterBundle()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/notebook/module/NotebookActivity;->refreshAnnotations(Landroid/os/Bundle;)V

    .line 945
    iget-object v0, p0, Lcom/amazon/notebook/module/BaseNotebookHeaderBar;->listView:Landroid/widget/ExpandableListView;

    invoke-virtual {v0}, Landroid/widget/ExpandableListView;->getExpandableListAdapter()Landroid/widget/ExpandableListAdapter;

    move-result-object v0

    check-cast v0, Lcom/amazon/notebook/module/NotebookDropdownAdapter;

    invoke-virtual {v0}, Lcom/amazon/notebook/module/NotebookDropdownAdapter;->update()V

    .line 946
    invoke-static {}, Lcom/amazon/notebook/module/NotebookPlugin;->getSdk()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReadingStreamsEncoder()Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;

    move-result-object v0

    const-string v1, "NotebookFilter"

    const-string v2, "ClearFilter"

    invoke-interface {v0, v1, v2}, Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;->performAction(Ljava/lang/String;Ljava/lang/String;)V

    .line 947
    sget-object v0, Lcom/amazon/notebook/module/metrics/NotebookActionMetric$Filter;->CLEAR:Lcom/amazon/notebook/module/metrics/NotebookActionMetric$Filter;

    invoke-virtual {v0}, Lcom/amazon/notebook/module/metrics/NotebookActionMetric$Filter;->emit()Lkotlin/Unit;

    return-void
.end method

.method public disableExportButton()V
    .locals 1

    .line 287
    iget-boolean v0, p0, Lcom/amazon/notebook/module/BaseNotebookHeaderBar;->exportButtonEnabled:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 288
    iput-boolean v0, p0, Lcom/amazon/notebook/module/BaseNotebookHeaderBar;->exportButtonEnabled:Z

    .line 289
    iget-object v0, p0, Lcom/amazon/notebook/module/BaseNotebookHeaderBar;->activity:Lcom/amazon/notebook/module/NotebookActivity;

    invoke-virtual {v0}, Landroidx/appcompat/app/AppCompatActivity;->invalidateOptionsMenu()V

    :cond_0
    return-void
.end method

.method public disableFlashcardsButton()V
    .locals 1

    .line 303
    iget-boolean v0, p0, Lcom/amazon/notebook/module/BaseNotebookHeaderBar;->flashcardsButtonEnabled:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 304
    iput-boolean v0, p0, Lcom/amazon/notebook/module/BaseNotebookHeaderBar;->flashcardsButtonEnabled:Z

    .line 305
    iget-object v0, p0, Lcom/amazon/notebook/module/BaseNotebookHeaderBar;->activity:Lcom/amazon/notebook/module/NotebookActivity;

    invoke-virtual {v0}, Landroidx/appcompat/app/AppCompatActivity;->invalidateOptionsMenu()V

    :cond_0
    return-void
.end method

.method public enableExportButton()V
    .locals 1

    .line 295
    iget-boolean v0, p0, Lcom/amazon/notebook/module/BaseNotebookHeaderBar;->exportButtonEnabled:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 296
    iput-boolean v0, p0, Lcom/amazon/notebook/module/BaseNotebookHeaderBar;->exportButtonEnabled:Z

    .line 297
    iget-object v0, p0, Lcom/amazon/notebook/module/BaseNotebookHeaderBar;->activity:Lcom/amazon/notebook/module/NotebookActivity;

    invoke-virtual {v0}, Landroidx/appcompat/app/AppCompatActivity;->invalidateOptionsMenu()V

    :cond_0
    return-void
.end method

.method public enableFlashcardsButton()V
    .locals 1

    .line 311
    iget-boolean v0, p0, Lcom/amazon/notebook/module/BaseNotebookHeaderBar;->flashcardsButtonEnabled:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 312
    iput-boolean v0, p0, Lcom/amazon/notebook/module/BaseNotebookHeaderBar;->flashcardsButtonEnabled:Z

    .line 313
    iget-object v0, p0, Lcom/amazon/notebook/module/BaseNotebookHeaderBar;->activity:Lcom/amazon/notebook/module/NotebookActivity;

    invoke-virtual {v0}, Landroidx/appcompat/app/AppCompatActivity;->invalidateOptionsMenu()V

    :cond_0
    return-void
.end method

.method public getFilterBundle()Landroid/os/Bundle;
    .locals 3

    .line 550
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 551
    iget-object v1, p0, Lcom/amazon/notebook/module/BaseNotebookHeaderBar;->notebookFilter:Lcom/amazon/notebook/module/CompositeNotebookFilter;

    const-string v2, "CompositeFilter"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    return-object v0
.end method

.method protected getHeaderBarMenuResId()I
    .locals 1

    .line 841
    sget v0, Lcom/amazon/notebook/module/R$layout;->notebook_module_actions:I

    return v0
.end method

.method public handleListViewClick(Lcom/amazon/notebook/module/NotebookDropdownAdapter$FilterItem;)V
    .locals 6

    .line 513
    invoke-virtual {p1}, Lcom/amazon/notebook/module/NotebookDropdownAdapter$FilterItem;->getFilterText()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/notebook/module/BaseNotebookHeaderBar;->res:Landroid/content/res/Resources;

    sget v2, Lcom/amazon/notebook/module/R$string;->notebook_module_chapters_all_chapters:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    invoke-virtual {p1}, Lcom/amazon/notebook/module/NotebookDropdownAdapter$FilterItem;->getFilterText()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/notebook/module/BaseNotebookHeaderBar;->res:Landroid/content/res/Resources;

    sget v2, Lcom/amazon/notebook/module/R$string;->notebook_module_filter_title:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_2

    .line 517
    :cond_0
    invoke-virtual {p1}, Lcom/amazon/notebook/module/NotebookDropdownAdapter$FilterItem;->toggle()V

    .line 518
    invoke-virtual {p1}, Lcom/amazon/notebook/module/NotebookDropdownAdapter$FilterItem;->getData()Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    .line 521
    instance-of v2, v0, Lcom/amazon/notebook/module/NotebookFilter;

    const-string v3, "Notebook"

    if-eqz v2, :cond_1

    .line 522
    check-cast v0, Lcom/amazon/notebook/module/NotebookFilter;

    .line 523
    invoke-direct {p0, v0}, Lcom/amazon/notebook/module/BaseNotebookHeaderBar;->updateSelectedFiltersContainer(Lcom/amazon/notebook/module/NotebookFilter;)Z

    move-result v1

    .line 524
    invoke-direct {p0}, Lcom/amazon/notebook/module/BaseNotebookHeaderBar;->updateSelectedFilterBar()V

    .line 525
    invoke-direct {p0}, Lcom/amazon/notebook/module/BaseNotebookHeaderBar;->updateFilterMenuCheckboxes()V

    .line 527
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "FilterSelected_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, v0}, Lcom/amazon/notebook/module/BaseNotebookHeaderBar;->getLogNameForFilter(Lcom/amazon/notebook/module/NotebookFilter;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;)V

    .line 528
    iget-object v0, v0, Lcom/amazon/notebook/module/NotebookFilter;->metric:Lcom/amazon/notebook/module/metrics/NotebookActionMetric;

    invoke-interface {v0}, Lcom/amazon/notebook/module/metrics/NotebookActionMetric;->emit()Lkotlin/Unit;

    goto :goto_0

    .line 529
    :cond_1
    instance-of v2, v0, Lcom/amazon/notebook/module/NotebookHeaderBar$ChapterFilter;

    if-eqz v2, :cond_2

    .line 530
    check-cast v0, Lcom/amazon/notebook/module/NotebookHeaderBar$ChapterFilter;

    invoke-direct {p0, v0}, Lcom/amazon/notebook/module/BaseNotebookHeaderBar;->updateSelectedChaptersContainer(Lcom/amazon/notebook/module/NotebookHeaderBar$ChapterFilter;)Z

    move-result v1

    .line 531
    invoke-direct {p0}, Lcom/amazon/notebook/module/BaseNotebookHeaderBar;->updateChapterSubMenuCheckboxes()V

    .line 533
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v0

    const-string v2, "FilterSelected_TOC"

    invoke-virtual {v0, v3, v2}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;)V

    .line 534
    sget-object v0, Lcom/amazon/notebook/module/metrics/NotebookActionMetric$Filter;->CHAPTER_TOGGLED:Lcom/amazon/notebook/module/metrics/NotebookActionMetric$Filter;

    invoke-virtual {v0}, Lcom/amazon/notebook/module/metrics/NotebookActionMetric$Filter;->emit()Lkotlin/Unit;

    :cond_2
    :goto_0
    if-eqz v1, :cond_4

    .line 538
    iget-object v0, p0, Lcom/amazon/notebook/module/BaseNotebookHeaderBar;->activity:Lcom/amazon/notebook/module/NotebookActivity;

    invoke-virtual {p0}, Lcom/amazon/notebook/module/BaseNotebookHeaderBar;->getFilterBundle()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/notebook/module/NotebookActivity;->refreshAnnotations(Landroid/os/Bundle;)V

    .line 539
    invoke-virtual {p1}, Lcom/amazon/notebook/module/NotebookDropdownAdapter$FilterItem;->isChecked()Z

    move-result v0

    const-string v1, "NotebookFilter"

    if-eqz v0, :cond_3

    .line 540
    invoke-static {}, Lcom/amazon/notebook/module/NotebookPlugin;->getSdk()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReadingStreamsEncoder()Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/amazon/notebook/module/NotebookDropdownAdapter$FilterItem;->getFilterText()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " ON"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;->performAction(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 542
    :cond_3
    invoke-static {}, Lcom/amazon/notebook/module/NotebookPlugin;->getSdk()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReadingStreamsEncoder()Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/amazon/notebook/module/NotebookDropdownAdapter$FilterItem;->getFilterText()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " OFF"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;->performAction(Ljava/lang/String;Ljava/lang/String;)V

    .line 546
    :cond_4
    :goto_1
    iget-object p1, p0, Lcom/amazon/notebook/module/BaseNotebookHeaderBar;->listView:Landroid/widget/ExpandableListView;

    invoke-virtual {p1}, Landroid/widget/ExpandableListView;->getExpandableListAdapter()Landroid/widget/ExpandableListAdapter;

    move-result-object p1

    check-cast p1, Lcom/amazon/notebook/module/NotebookDropdownAdapter;

    invoke-virtual {p1}, Lcom/amazon/notebook/module/NotebookDropdownAdapter;->update()V

    :cond_5
    :goto_2
    return-void
.end method

.method public initialize()V
    .locals 18

    move-object/from16 v8, p0

    .line 141
    iget-object v0, v8, Lcom/amazon/notebook/module/BaseNotebookHeaderBar;->activity:Lcom/amazon/notebook/module/NotebookActivity;

    invoke-virtual {v0}, Landroidx/appcompat/app/AppCompatActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v9

    .line 142
    iget-object v0, v8, Lcom/amazon/notebook/module/BaseNotebookHeaderBar;->themeProvider:Lcom/amazon/notebook/ThemeProvider;

    invoke-interface {v0}, Lcom/amazon/notebook/ThemeProvider;->isDarkThemed()Z

    move-result v10

    if-nez v9, :cond_0

    .line 145
    sget-object v0, Lcom/amazon/notebook/module/BaseNotebookHeaderBar;->TAG:Ljava/lang/String;

    const-string v1, "Can\'t initialize BaseNotebookHeaderBar as ActionBar is null"

    invoke-static {v0, v1}, Lcom/amazon/kindle/log/Log;->warn(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 v11, 0x0

    .line 149
    invoke-virtual {v9, v11}, Landroidx/appcompat/app/ActionBar;->setNavigationMode(I)V

    .line 151
    iget-object v0, v8, Lcom/amazon/notebook/module/BaseNotebookHeaderBar;->topLevelFilters:Lcom/amazon/notebook/module/NotebookDropdownAdapter$FilterItem;

    invoke-virtual {v0}, Lcom/amazon/notebook/module/NotebookDropdownAdapter$FilterItem;->getSubFilters()Ljava/util/List;

    move-result-object v0

    .line 152
    iget-boolean v1, v8, Lcom/amazon/notebook/module/BaseNotebookHeaderBar;->isTablet:Z

    const/4 v12, 0x0

    if-eqz v1, :cond_1

    .line 153
    new-instance v1, Lcom/amazon/notebook/module/NotebookDropdownAdapter$FilterItem;

    iget-object v2, v8, Lcom/amazon/notebook/module/BaseNotebookHeaderBar;->res:Landroid/content/res/Resources;

    sget v3, Lcom/amazon/notebook/module/R$string;->notebook_module_filter_title:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v12, v11, v12}, Lcom/amazon/notebook/module/NotebookDropdownAdapter$FilterItem;-><init>(Ljava/lang/String;Landroid/graphics/drawable/Drawable;ZLjava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 155
    :cond_1
    iget-object v1, v8, Lcom/amazon/notebook/module/BaseNotebookHeaderBar;->starFilter:Lcom/amazon/notebook/module/NotebookDropdownAdapter$FilterItem;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 156
    iget-object v1, v8, Lcom/amazon/notebook/module/BaseNotebookHeaderBar;->activity:Lcom/amazon/notebook/module/NotebookActivity;

    invoke-virtual {v1}, Lcom/amazon/notebook/module/NotebookActivity;->getDocViewer()Lcom/amazon/android/docviewer/KindleDocViewer;

    move-result-object v1

    invoke-static {v1}, Lcom/amazon/android/util/BookTypeUtil;->isLavaMagazine(Lcom/amazon/android/docviewer/KindleDocViewer;)Z

    move-result v1

    const/4 v13, 0x1

    if-nez v1, :cond_7

    iget-object v1, v8, Lcom/amazon/notebook/module/BaseNotebookHeaderBar;->res:Landroid/content/res/Resources;

    sget v2, Lcom/amazon/notebook/module/R$bool;->show_highlights_and_notes_filter:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 157
    new-instance v1, Lcom/amazon/notebook/module/NotebookDropdownAdapter$FilterItem;

    iget-object v2, v8, Lcom/amazon/notebook/module/BaseNotebookHeaderBar;->res:Landroid/content/res/Resources;

    sget v3, Lcom/amazon/notebook/module/R$string;->notebook_highlights_all:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/amazon/notebook/module/NotebookFilter;->HIGHLIGHTS:Lcom/amazon/notebook/module/NotebookFilter;

    invoke-direct {v1, v2, v12, v11, v3}, Lcom/amazon/notebook/module/NotebookDropdownAdapter$FilterItem;-><init>(Ljava/lang/String;Landroid/graphics/drawable/Drawable;ZLjava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 158
    invoke-static {}, Lcom/amazon/notebook/module/ColorHighlightProperties;->values()[Lcom/amazon/notebook/module/ColorHighlightProperties;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_6

    aget-object v4, v1, v3

    .line 159
    iget-object v5, v8, Lcom/amazon/notebook/module/BaseNotebookHeaderBar;->res:Landroid/content/res/Resources;

    invoke-virtual {v4}, Lcom/amazon/notebook/module/ColorHighlightProperties;->getFilterIconResId()I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 161
    sget-object v6, Lcom/amazon/notebook/module/BaseNotebookHeaderBar$9;->$SwitchMap$com$amazon$notebook$module$ColorHighlightProperties:[I

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aget v4, v6, v4

    if-eq v4, v13, :cond_5

    const/4 v6, 0x2

    if-eq v4, v6, :cond_4

    const/4 v6, 0x3

    if-eq v4, v6, :cond_3

    const/4 v6, 0x4

    if-eq v4, v6, :cond_2

    .line 179
    sget-object v4, Lcom/amazon/notebook/module/BaseNotebookHeaderBar;->TAG:Ljava/lang/String;

    const-string v5, "There is a new highlight color property that the notebook view does not handle"

    invoke-static {v4, v5}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 175
    :cond_2
    new-instance v4, Lcom/amazon/notebook/module/NotebookDropdownAdapter$FilterItem;

    iget-object v6, v8, Lcom/amazon/notebook/module/BaseNotebookHeaderBar;->res:Landroid/content/res/Resources;

    sget v7, Lcom/amazon/notebook/module/R$string;->notebook_module_highlights_blue:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    sget-object v7, Lcom/amazon/notebook/module/NotebookFilter;->HIGHLIGHTS_BLUE:Lcom/amazon/notebook/module/NotebookFilter;

    invoke-direct {v4, v6, v5, v11, v7}, Lcom/amazon/notebook/module/NotebookDropdownAdapter$FilterItem;-><init>(Ljava/lang/String;Landroid/graphics/drawable/Drawable;ZLjava/lang/Object;)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 171
    :cond_3
    new-instance v4, Lcom/amazon/notebook/module/NotebookDropdownAdapter$FilterItem;

    iget-object v6, v8, Lcom/amazon/notebook/module/BaseNotebookHeaderBar;->res:Landroid/content/res/Resources;

    sget v7, Lcom/amazon/notebook/module/R$string;->notebook_module_highlights_orange:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    sget-object v7, Lcom/amazon/notebook/module/NotebookFilter;->HIGHLIGHTS_ORANGE:Lcom/amazon/notebook/module/NotebookFilter;

    invoke-direct {v4, v6, v5, v11, v7}, Lcom/amazon/notebook/module/NotebookDropdownAdapter$FilterItem;-><init>(Ljava/lang/String;Landroid/graphics/drawable/Drawable;ZLjava/lang/Object;)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 167
    :cond_4
    new-instance v4, Lcom/amazon/notebook/module/NotebookDropdownAdapter$FilterItem;

    iget-object v6, v8, Lcom/amazon/notebook/module/BaseNotebookHeaderBar;->res:Landroid/content/res/Resources;

    sget v7, Lcom/amazon/notebook/module/R$string;->notebook_module_highlights_pink:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    sget-object v7, Lcom/amazon/notebook/module/NotebookFilter;->HIGHLIGHTS_PINK:Lcom/amazon/notebook/module/NotebookFilter;

    invoke-direct {v4, v6, v5, v11, v7}, Lcom/amazon/notebook/module/NotebookDropdownAdapter$FilterItem;-><init>(Ljava/lang/String;Landroid/graphics/drawable/Drawable;ZLjava/lang/Object;)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 163
    :cond_5
    new-instance v4, Lcom/amazon/notebook/module/NotebookDropdownAdapter$FilterItem;

    iget-object v6, v8, Lcom/amazon/notebook/module/BaseNotebookHeaderBar;->res:Landroid/content/res/Resources;

    sget v7, Lcom/amazon/notebook/module/R$string;->notebook_module_highlights_yellow:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    sget-object v7, Lcom/amazon/notebook/module/NotebookFilter;->HIGHLIGHTS_YELLOW:Lcom/amazon/notebook/module/NotebookFilter;

    invoke-direct {v4, v6, v5, v11, v7}, Lcom/amazon/notebook/module/NotebookDropdownAdapter$FilterItem;-><init>(Ljava/lang/String;Landroid/graphics/drawable/Drawable;ZLjava/lang/Object;)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 182
    :cond_6
    new-instance v1, Lcom/amazon/notebook/module/NotebookDropdownAdapter$FilterItem;

    iget-object v2, v8, Lcom/amazon/notebook/module/BaseNotebookHeaderBar;->res:Landroid/content/res/Resources;

    sget v3, Lcom/amazon/notebook/module/R$string;->notebook_notes:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/amazon/notebook/module/NotebookFilter;->NOTES:Lcom/amazon/notebook/module/NotebookFilter;

    invoke-direct {v1, v2, v12, v11, v3}, Lcom/amazon/notebook/module/NotebookDropdownAdapter$FilterItem;-><init>(Ljava/lang/String;Landroid/graphics/drawable/Drawable;ZLjava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 184
    :cond_7
    iget-object v1, v8, Lcom/amazon/notebook/module/BaseNotebookHeaderBar;->res:Landroid/content/res/Resources;

    sget v2, Lcom/amazon/notebook/module/R$bool;->show_bookmarks_filter:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 185
    new-instance v1, Lcom/amazon/notebook/module/NotebookDropdownAdapter$FilterItem;

    iget-object v2, v8, Lcom/amazon/notebook/module/BaseNotebookHeaderBar;->res:Landroid/content/res/Resources;

    sget v3, Lcom/amazon/notebook/module/R$string;->notebook_bookmark:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/amazon/notebook/module/NotebookFilter;->BOOKMARKS:Lcom/amazon/notebook/module/NotebookFilter;

    invoke-direct {v1, v2, v12, v11, v3}, Lcom/amazon/notebook/module/NotebookDropdownAdapter$FilterItem;-><init>(Ljava/lang/String;Landroid/graphics/drawable/Drawable;ZLjava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 187
    :cond_8
    iget-object v1, v8, Lcom/amazon/notebook/module/BaseNotebookHeaderBar;->activity:Lcom/amazon/notebook/module/NotebookActivity;

    invoke-virtual {v1}, Lcom/amazon/notebook/module/NotebookActivity;->getDocViewer()Lcom/amazon/android/docviewer/KindleDocViewer;

    move-result-object v1

    invoke-static {v1}, Lcom/amazon/android/util/BookTypeUtil;->isLavaMagazine(Lcom/amazon/android/docviewer/KindleDocViewer;)Z

    move-result v1

    if-nez v1, :cond_9

    iget-object v1, v8, Lcom/amazon/notebook/module/BaseNotebookHeaderBar;->res:Landroid/content/res/Resources;

    sget v2, Lcom/amazon/notebook/module/R$bool;->show_chapters_filter:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 188
    iget-object v1, v8, Lcom/amazon/notebook/module/BaseNotebookHeaderBar;->chapterFilters:Lcom/amazon/notebook/module/NotebookDropdownAdapter$FilterItem;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 191
    :cond_9
    invoke-virtual {v9, v13}, Landroidx/appcompat/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    .line 192
    invoke-virtual {v9, v13}, Landroidx/appcompat/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 194
    iget-object v0, v8, Lcom/amazon/notebook/module/BaseNotebookHeaderBar;->activity:Lcom/amazon/notebook/module/NotebookActivity;

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move-object v14, v0

    check-cast v14, Landroid/view/LayoutInflater;

    .line 196
    sget v0, Lcom/amazon/notebook/module/R$layout;->notebook_module_actionbar:I

    invoke-virtual {v14, v0, v12}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 197
    sget v1, Lcom/amazon/notebook/module/R$id;->module_dropdown:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 198
    sget v1, Lcom/amazon/notebook/module/R$id;->module_nav_spinner_subtitle:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v8, Lcom/amazon/notebook/module/BaseNotebookHeaderBar;->subTitle:Landroid/widget/TextView;

    .line 202
    sget v0, Lcom/amazon/notebook/module/R$layout;->notebook_module_dropdown:I

    invoke-virtual {v14, v0, v12}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, v8, Lcom/amazon/notebook/module/BaseNotebookHeaderBar;->dropdown:Landroid/view/View;

    .line 203
    sget v1, Lcom/amazon/notebook/module/R$id;->notebook_module_dropdown_list:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ExpandableListView;

    iput-object v0, v8, Lcom/amazon/notebook/module/BaseNotebookHeaderBar;->listView:Landroid/widget/ExpandableListView;

    .line 204
    iget-boolean v1, v8, Lcom/amazon/notebook/module/BaseNotebookHeaderBar;->isTablet:Z

    const/4 v15, -0x1

    const v7, -0xdcdcdd

    if-eqz v1, :cond_b

    if-eqz v10, :cond_a

    .line 206
    iget-object v1, v8, Lcom/amazon/notebook/module/BaseNotebookHeaderBar;->res:Landroid/content/res/Resources;

    sget v2, Lcom/amazon/notebook/module/R$drawable;->border_dark:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ExpandableListView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_2

    .line 208
    :cond_a
    iget-object v1, v8, Lcom/amazon/notebook/module/BaseNotebookHeaderBar;->res:Landroid/content/res/Resources;

    sget v2, Lcom/amazon/notebook/module/R$drawable;->border_light:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ExpandableListView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_2

    :cond_b
    if-eqz v10, :cond_c

    .line 212
    invoke-virtual {v0, v7}, Landroid/widget/ExpandableListView;->setBackgroundColor(I)V

    goto :goto_2

    .line 214
    :cond_c
    invoke-virtual {v0, v15}, Landroid/widget/ExpandableListView;->setBackgroundColor(I)V

    .line 218
    :goto_2
    iget-object v0, v8, Lcom/amazon/notebook/module/BaseNotebookHeaderBar;->listView:Landroid/widget/ExpandableListView;

    new-instance v1, Lcom/amazon/notebook/module/BaseNotebookHeaderBar$2;

    invoke-direct {v1, v8}, Lcom/amazon/notebook/module/BaseNotebookHeaderBar$2;-><init>(Lcom/amazon/notebook/module/BaseNotebookHeaderBar;)V

    invoke-virtual {v0, v1}, Landroid/widget/ExpandableListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 246
    iget-object v6, v8, Lcom/amazon/notebook/module/BaseNotebookHeaderBar;->listView:Landroid/widget/ExpandableListView;

    new-instance v5, Lcom/amazon/notebook/module/NotebookDropdownAdapter;

    iget-object v1, v8, Lcom/amazon/notebook/module/BaseNotebookHeaderBar;->activity:Lcom/amazon/notebook/module/NotebookActivity;

    iget-object v2, v8, Lcom/amazon/notebook/module/BaseNotebookHeaderBar;->topLevelFilters:Lcom/amazon/notebook/module/NotebookDropdownAdapter$FilterItem;

    invoke-virtual {v1}, Lcom/amazon/notebook/module/NotebookActivity;->getDocViewer()Lcom/amazon/android/docviewer/KindleDocViewer;

    move-result-object v3

    iget-boolean v4, v8, Lcom/amazon/notebook/module/BaseNotebookHeaderBar;->isTablet:Z

    iget-object v0, v8, Lcom/amazon/notebook/module/BaseNotebookHeaderBar;->noteTools:Lcom/amazon/notebook/module/NotebookNoteTools;

    iget-object v7, v8, Lcom/amazon/notebook/module/BaseNotebookHeaderBar;->themeProvider:Lcom/amazon/notebook/ThemeProvider;

    move-object/from16 v16, v0

    move-object v0, v5

    move/from16 v17, v4

    move-object/from16 v4, p0

    move-object v15, v5

    move/from16 v5, v17

    move-object v11, v6

    move-object/from16 v6, v16

    invoke-direct/range {v0 .. v7}, Lcom/amazon/notebook/module/NotebookDropdownAdapter;-><init>(Landroid/content/Context;Lcom/amazon/notebook/module/NotebookDropdownAdapter$FilterItem;Lcom/amazon/android/docviewer/KindleDocViewer;Lcom/amazon/notebook/module/BaseNotebookHeaderBar;ZLcom/amazon/notebook/module/NotebookNoteTools;Lcom/amazon/notebook/ThemeProvider;)V

    invoke-virtual {v11, v15}, Landroid/widget/ExpandableListView;->setAdapter(Landroid/widget/ExpandableListAdapter;)V

    .line 248
    iget-object v0, v8, Lcom/amazon/notebook/module/BaseNotebookHeaderBar;->listView:Landroid/widget/ExpandableListView;

    new-instance v1, Lcom/amazon/notebook/module/BaseNotebookHeaderBar$3;

    invoke-direct {v1, v8}, Lcom/amazon/notebook/module/BaseNotebookHeaderBar$3;-><init>(Lcom/amazon/notebook/module/BaseNotebookHeaderBar;)V

    invoke-virtual {v0, v1}, Landroid/widget/ExpandableListView;->setOnChildClickListener(Landroid/widget/ExpandableListView$OnChildClickListener;)V

    .line 257
    iget-object v0, v8, Lcom/amazon/notebook/module/BaseNotebookHeaderBar;->listView:Landroid/widget/ExpandableListView;

    new-instance v1, Lcom/amazon/notebook/module/BaseNotebookHeaderBar$4;

    invoke-direct {v1, v8}, Lcom/amazon/notebook/module/BaseNotebookHeaderBar$4;-><init>(Lcom/amazon/notebook/module/BaseNotebookHeaderBar;)V

    invoke-virtual {v0, v1}, Landroid/widget/ExpandableListView;->setOnGroupClickListener(Landroid/widget/ExpandableListView$OnGroupClickListener;)V

    const/16 v0, 0x10

    .line 266
    invoke-virtual {v9, v0}, Landroidx/appcompat/app/ActionBar;->setDisplayOptions(I)V

    .line 267
    sget v0, Lcom/amazon/notebook/module/R$layout;->new_notebook_actionbar:I

    invoke-virtual {v14, v0, v12}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    .line 268
    sget v1, Lcom/amazon/notebook/module/R$id;->notebook_title:I

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    if-eqz v10, :cond_d

    const/4 v15, -0x1

    goto :goto_3

    :cond_d
    const/high16 v15, -0x1000000

    .line 269
    :goto_3
    invoke-virtual {v1, v15}, Landroid/widget/TextView;->setTextColor(I)V

    .line 270
    invoke-virtual {v9, v0}, Landroidx/appcompat/app/ActionBar;->setCustomView(Landroid/view/View;)V

    .line 271
    invoke-virtual {v9, v13}, Landroidx/appcompat/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    if-eqz v10, :cond_e

    .line 274
    sget v0, Lcom/amazon/notebook/module/R$drawable;->ic_back_android_dark:I

    invoke-virtual {v9, v0}, Landroidx/appcompat/app/ActionBar;->setHomeAsUpIndicator(I)V

    .line 275
    invoke-virtual {v9}, Landroidx/appcompat/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v0

    const v1, -0xdcdcdd

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 276
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v9, v0}, Landroidx/appcompat/app/ActionBar;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_4

    .line 278
    :cond_e
    sget v0, Lcom/amazon/notebook/module/R$drawable;->ic_back_android_light:I

    invoke-virtual {v9, v0}, Landroidx/appcompat/app/ActionBar;->setHomeAsUpIndicator(I)V

    :goto_4
    const/4 v0, 0x0

    .line 281
    invoke-virtual {v9, v0}, Landroidx/appcompat/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 282
    invoke-direct/range {p0 .. p0}, Lcom/amazon/notebook/module/BaseNotebookHeaderBar;->updateFilterMenuCheckboxes()V

    return-void
.end method

.method public onActionClick(Landroid/view/MenuItem;)Z
    .locals 18

    move-object/from16 v8, p0

    .line 355
    invoke-interface/range {p1 .. p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const/4 v9, 0x1

    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    .line 356
    iget-object v0, v8, Lcom/amazon/notebook/module/BaseNotebookHeaderBar;->activity:Lcom/amazon/notebook/module/NotebookActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 357
    sget-object v0, Lcom/amazon/notebook/module/metrics/NotebookActionMetric$Header;->BACK_BUTTON_PRESSED:Lcom/amazon/notebook/module/metrics/NotebookActionMetric$Header;

    invoke-virtual {v0}, Lcom/amazon/notebook/module/metrics/NotebookActionMetric$Header;->emit()Lkotlin/Unit;

    return v9

    .line 359
    :cond_0
    invoke-interface/range {p1 .. p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sget v1, Lcom/amazon/notebook/module/R$id;->notebook_module_header_action_export:I

    const-string v10, "Notebook"

    if-ne v0, v1, :cond_3

    .line 360
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 361
    invoke-direct/range {p0 .. p0}, Lcom/amazon/notebook/module/BaseNotebookHeaderBar;->isExportSupported()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 362
    sget-object v1, Lcom/amazon/notebook/module/NotebookShareHelper$NotebookExportTarget;->SHARE:Lcom/amazon/notebook/module/NotebookShareHelper$NotebookExportTarget;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 364
    :cond_1
    invoke-direct/range {p0 .. p0}, Lcom/amazon/notebook/module/BaseNotebookHeaderBar;->areFlashCardsSupported()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 365
    sget-object v1, Lcom/amazon/notebook/module/NotebookShareHelper$NotebookExportTarget;->FLASHCARDS:Lcom/amazon/notebook/module/NotebookShareHelper$NotebookExportTarget;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 368
    :cond_2
    iget-object v1, v8, Lcom/amazon/notebook/module/BaseNotebookHeaderBar;->activity:Lcom/amazon/notebook/module/NotebookActivity;

    sget v2, Lcom/amazon/notebook/module/R$id;->notebook_module_header_action_export:I

    invoke-virtual {v1, v2}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 369
    iget-object v2, v8, Lcom/amazon/notebook/module/BaseNotebookHeaderBar;->shareHelper:Lcom/amazon/notebook/module/NotebookShareHelper;

    iget-object v3, v8, Lcom/amazon/notebook/module/BaseNotebookHeaderBar;->activity:Lcom/amazon/notebook/module/NotebookActivity;

    iget-object v4, v8, Lcom/amazon/notebook/module/BaseNotebookHeaderBar;->onShareMethodSelected:Lcom/amazon/notebook/module/NotebookShareHelper$OnSelectionListener;

    invoke-virtual {v2, v3, v1, v0, v4}, Lcom/amazon/notebook/module/NotebookShareHelper;->share(Lcom/amazon/notebook/module/NotebookActivity;Landroid/view/View;Ljava/util/List;Lcom/amazon/notebook/module/NotebookShareHelper$OnSelectionListener;)V

    .line 370
    invoke-static {}, Lcom/amazon/notebook/module/NotebookPlugin;->getSdk()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReadingStreamsEncoder()Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;

    move-result-object v0

    const-string v1, "ExportButtonClicked"

    invoke-interface {v0, v10, v1}, Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;->performAction(Ljava/lang/String;Ljava/lang/String;)V

    .line 371
    sget-object v0, Lcom/amazon/notebook/module/metrics/NotebookActionMetric$Header;->SHARE_MENU_BUTTON_PRESSED:Lcom/amazon/notebook/module/metrics/NotebookActionMetric$Header;

    invoke-virtual {v0}, Lcom/amazon/notebook/module/metrics/NotebookActionMetric$Header;->emit()Lkotlin/Unit;

    return v9

    .line 373
    :cond_3
    invoke-interface/range {p1 .. p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sget v1, Lcom/amazon/notebook/module/R$id;->notebook_module_filter:I

    const/4 v11, 0x0

    if-ne v0, v1, :cond_9

    .line 374
    iget-object v0, v8, Lcom/amazon/notebook/module/BaseNotebookHeaderBar;->activity:Lcom/amazon/notebook/module/NotebookActivity;

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 375
    iget-object v1, v8, Lcom/amazon/notebook/module/BaseNotebookHeaderBar;->themeProvider:Lcom/amazon/notebook/ThemeProvider;

    invoke-interface {v1}, Lcom/amazon/notebook/ThemeProvider;->isDarkThemed()Z

    move-result v12

    .line 376
    sget v1, Lcom/amazon/notebook/module/R$layout;->notebook_module_dropdown:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v13

    .line 377
    sget v0, Lcom/amazon/notebook/module/R$id;->notebook_module_dropdown_list:I

    invoke-virtual {v13, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ExpandableListView;

    iput-object v0, v8, Lcom/amazon/notebook/module/BaseNotebookHeaderBar;->listView:Landroid/widget/ExpandableListView;

    .line 378
    iget-boolean v1, v8, Lcom/amazon/notebook/module/BaseNotebookHeaderBar;->isTablet:Z

    const v14, -0xdcdcdd

    const/4 v15, -0x1

    if-eqz v1, :cond_5

    if-eqz v12, :cond_4

    .line 380
    iget-object v1, v8, Lcom/amazon/notebook/module/BaseNotebookHeaderBar;->res:Landroid/content/res/Resources;

    sget v2, Lcom/amazon/notebook/module/R$drawable;->border_dark:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ExpandableListView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 382
    :cond_4
    iget-object v1, v8, Lcom/amazon/notebook/module/BaseNotebookHeaderBar;->res:Landroid/content/res/Resources;

    sget v2, Lcom/amazon/notebook/module/R$drawable;->border_light:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ExpandableListView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_5
    if-eqz v12, :cond_6

    .line 386
    invoke-virtual {v0, v14}, Landroid/widget/ExpandableListView;->setBackgroundColor(I)V

    goto :goto_0

    .line 388
    :cond_6
    invoke-virtual {v0, v15}, Landroid/widget/ExpandableListView;->setBackgroundColor(I)V

    .line 391
    :goto_0
    iget-object v0, v8, Lcom/amazon/notebook/module/BaseNotebookHeaderBar;->listView:Landroid/widget/ExpandableListView;

    new-instance v1, Lcom/amazon/notebook/module/BaseNotebookHeaderBar$5;

    invoke-direct {v1, v8}, Lcom/amazon/notebook/module/BaseNotebookHeaderBar$5;-><init>(Lcom/amazon/notebook/module/BaseNotebookHeaderBar;)V

    invoke-virtual {v0, v1}, Landroid/widget/ExpandableListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 418
    iget-object v7, v8, Lcom/amazon/notebook/module/BaseNotebookHeaderBar;->listView:Landroid/widget/ExpandableListView;

    new-instance v6, Lcom/amazon/notebook/module/NotebookDropdownAdapter;

    iget-object v1, v8, Lcom/amazon/notebook/module/BaseNotebookHeaderBar;->activity:Lcom/amazon/notebook/module/NotebookActivity;

    iget-object v2, v8, Lcom/amazon/notebook/module/BaseNotebookHeaderBar;->topLevelFilters:Lcom/amazon/notebook/module/NotebookDropdownAdapter$FilterItem;

    invoke-virtual {v1}, Lcom/amazon/notebook/module/NotebookActivity;->getDocViewer()Lcom/amazon/android/docviewer/KindleDocViewer;

    move-result-object v3

    iget-boolean v5, v8, Lcom/amazon/notebook/module/BaseNotebookHeaderBar;->isTablet:Z

    iget-object v4, v8, Lcom/amazon/notebook/module/BaseNotebookHeaderBar;->noteTools:Lcom/amazon/notebook/module/NotebookNoteTools;

    iget-object v0, v8, Lcom/amazon/notebook/module/BaseNotebookHeaderBar;->themeProvider:Lcom/amazon/notebook/ThemeProvider;

    move-object/from16 v16, v0

    move-object v0, v6

    move-object/from16 v17, v4

    move-object/from16 v4, p0

    move-object v15, v6

    move-object/from16 v6, v17

    move-object v14, v7

    move-object/from16 v7, v16

    invoke-direct/range {v0 .. v7}, Lcom/amazon/notebook/module/NotebookDropdownAdapter;-><init>(Landroid/content/Context;Lcom/amazon/notebook/module/NotebookDropdownAdapter$FilterItem;Lcom/amazon/android/docviewer/KindleDocViewer;Lcom/amazon/notebook/module/BaseNotebookHeaderBar;ZLcom/amazon/notebook/module/NotebookNoteTools;Lcom/amazon/notebook/ThemeProvider;)V

    invoke-virtual {v14, v15}, Landroid/widget/ExpandableListView;->setAdapter(Landroid/widget/ExpandableListAdapter;)V

    .line 420
    iget-object v0, v8, Lcom/amazon/notebook/module/BaseNotebookHeaderBar;->listView:Landroid/widget/ExpandableListView;

    new-instance v1, Lcom/amazon/notebook/module/BaseNotebookHeaderBar$6;

    invoke-direct {v1, v8}, Lcom/amazon/notebook/module/BaseNotebookHeaderBar$6;-><init>(Lcom/amazon/notebook/module/BaseNotebookHeaderBar;)V

    invoke-virtual {v0, v1}, Landroid/widget/ExpandableListView;->setOnChildClickListener(Landroid/widget/ExpandableListView$OnChildClickListener;)V

    .line 429
    iget-object v0, v8, Lcom/amazon/notebook/module/BaseNotebookHeaderBar;->listView:Landroid/widget/ExpandableListView;

    new-instance v1, Lcom/amazon/notebook/module/BaseNotebookHeaderBar$7;

    invoke-direct {v1, v8}, Lcom/amazon/notebook/module/BaseNotebookHeaderBar$7;-><init>(Lcom/amazon/notebook/module/BaseNotebookHeaderBar;)V

    invoke-virtual {v0, v1}, Landroid/widget/ExpandableListView;->setOnGroupClickListener(Landroid/widget/ExpandableListView$OnGroupClickListener;)V

    .line 438
    new-instance v0, Lcom/google/android/material/bottomsheet/BottomSheetDialog;

    iget-object v1, v8, Lcom/amazon/notebook/module/BaseNotebookHeaderBar;->activity:Lcom/amazon/notebook/module/NotebookActivity;

    invoke-direct {v0, v1}, Lcom/google/android/material/bottomsheet/BottomSheetDialog;-><init>(Landroid/content/Context;)V

    .line 439
    sget v1, Lcom/amazon/notebook/module/R$id;->notebook_module_filter_menu_title:I

    invoke-virtual {v13, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 440
    iget-boolean v2, v8, Lcom/amazon/notebook/module/BaseNotebookHeaderBar;->isTablet:Z

    if-eqz v2, :cond_7

    .line 441
    new-instance v0, Landroid/widget/PopupWindow;

    invoke-direct {v0}, Landroid/widget/PopupWindow;-><init>()V

    .line 443
    invoke-virtual {v0, v13}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    const/4 v2, -0x2

    .line 444
    invoke-virtual {v0, v2}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 445
    iget-object v2, v8, Lcom/amazon/notebook/module/BaseNotebookHeaderBar;->res:Landroid/content/res/Resources;

    sget v3, Lcom/amazon/notebook/module/R$dimen;->notebook_dropdown_width:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {v0, v2}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 447
    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>()V

    invoke-virtual {v0, v2}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 448
    invoke-virtual {v0, v9}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 449
    invoke-virtual {v0, v9}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 450
    iget-object v2, v8, Lcom/amazon/notebook/module/BaseNotebookHeaderBar;->activity:Lcom/amazon/notebook/module/NotebookActivity;

    sget v3, Lcom/amazon/notebook/module/R$id;->notebook_module_filter:I

    invoke-virtual {v2, v3}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const/16 v3, 0x8

    .line 451
    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    const/16 v1, 0x50

    .line 452
    invoke-virtual {v0, v2, v11, v11, v1}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;III)V

    goto :goto_2

    .line 454
    :cond_7
    invoke-virtual {v0, v9}, Lcom/google/android/material/bottomsheet/BottomSheetDialog;->setCanceledOnTouchOutside(Z)V

    .line 455
    invoke-virtual {v0, v13}, Lcom/google/android/material/bottomsheet/BottomSheetDialog;->setContentView(Landroid/view/View;)V

    .line 456
    invoke-virtual {v1, v11}, Landroid/view/View;->setVisibility(I)V

    .line 457
    sget v2, Lcom/amazon/notebook/module/R$id;->module_filter_checked:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 458
    sget v3, Lcom/amazon/notebook/module/R$id;->module_filter_text:I

    invoke-virtual {v13, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 459
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v4

    invoke-interface {v4}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getFontFactory()Lcom/mobipocket/android/drawing/AndroidFontFactory;

    move-result-object v4

    sget-object v5, Lcom/mobipocket/android/drawing/FontFamily;->EMBERBOLD:Lcom/mobipocket/android/drawing/FontFamily;

    invoke-virtual {v4, v5}, Lcom/mobipocket/android/drawing/AndroidFontFactory;->getTypeFace(Lcom/mobipocket/android/drawing/FontFamily;)Landroid/graphics/Typeface;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 460
    sget v4, Lcom/amazon/notebook/module/R$id;->notebook_filter_divider:I

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    if-eqz v12, :cond_8

    const v5, -0xdcdcdd

    .line 463
    invoke-virtual {v1, v5}, Landroid/view/View;->setBackgroundColor(I)V

    const/4 v5, -0x1

    .line 464
    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setTextColor(I)V

    const v1, -0xbfbfc0

    .line 465
    invoke-virtual {v4, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 466
    sget v1, Lcom/amazon/notebook/module/R$drawable;->ic_close_dark:I

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    :cond_8
    const/4 v5, -0x1

    .line 468
    invoke-virtual {v1, v5}, Landroid/view/View;->setBackgroundColor(I)V

    const/high16 v1, -0x1000000

    .line 469
    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setTextColor(I)V

    const v1, -0x1f1f20

    .line 470
    invoke-virtual {v4, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 471
    sget v1, Lcom/amazon/notebook/module/R$drawable;->ic_close_light:I

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 474
    :goto_1
    new-instance v1, Lcom/amazon/notebook/module/BaseNotebookHeaderBar$8;

    invoke-direct {v1, v8, v0}, Lcom/amazon/notebook/module/BaseNotebookHeaderBar$8;-><init>(Lcom/amazon/notebook/module/BaseNotebookHeaderBar;Lcom/google/android/material/bottomsheet/BottomSheetDialog;)V

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 480
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 482
    :goto_2
    invoke-static {}, Lcom/amazon/notebook/module/NotebookPlugin;->getSdk()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReadingStreamsEncoder()Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;

    move-result-object v0

    const-string v1, "FilterButtonClicked"

    invoke-interface {v0, v10, v1}, Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;->performAction(Ljava/lang/String;Ljava/lang/String;)V

    .line 483
    sget-object v0, Lcom/amazon/notebook/module/metrics/NotebookActionMetric$Header;->FILTER_MENU_BUTTON_PRESSED:Lcom/amazon/notebook/module/metrics/NotebookActionMetric$Header;

    invoke-virtual {v0}, Lcom/amazon/notebook/module/metrics/NotebookActionMetric$Header;->emit()Lkotlin/Unit;

    return v9

    :cond_9
    return v11
.end method

.method public populateActionMenu(Landroid/view/Menu;)Landroid/view/Menu;
    .locals 3

    .line 492
    iget-object v0, p0, Lcom/amazon/notebook/module/BaseNotebookHeaderBar;->activity:Lcom/amazon/notebook/module/NotebookActivity;

    invoke-virtual {v0}, Landroidx/appcompat/app/AppCompatActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 493
    invoke-virtual {p0}, Lcom/amazon/notebook/module/BaseNotebookHeaderBar;->getHeaderBarMenuResId()I

    move-result v1

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 495
    sget v0, Lcom/amazon/notebook/module/R$id;->notebook_module_header_action_export:I

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 496
    sget v1, Lcom/amazon/notebook/module/R$id;->notebook_module_filter:I

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 497
    iget-object v2, p0, Lcom/amazon/notebook/module/BaseNotebookHeaderBar;->themeProvider:Lcom/amazon/notebook/ThemeProvider;

    invoke-interface {v2}, Lcom/amazon/notebook/ThemeProvider;->isDarkThemed()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 498
    sget v2, Lcom/amazon/notebook/module/R$drawable;->ic_share_android_dark:I

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 499
    sget v2, Lcom/amazon/notebook/module/R$drawable;->ic_filter_dark:I

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    goto :goto_0

    .line 501
    :cond_0
    sget v2, Lcom/amazon/notebook/module/R$drawable;->ic_share_android_light:I

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 502
    sget v2, Lcom/amazon/notebook/module/R$drawable;->ic_filter_light:I

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 505
    :goto_0
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getAuthenticationManager()Lcom/amazon/kcp/application/IAuthenticationManager;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kcp/application/IAuthenticationManager;->getAccountInfo()Lcom/amazon/kindle/services/authentication/IAccountInfo;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kindle/services/authentication/IAccountInfo;->isRestrictedAccount()Z

    move-result v1

    if-nez v1, :cond_2

    .line 506
    invoke-direct {p0}, Lcom/amazon/notebook/module/BaseNotebookHeaderBar;->isExportSupported()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-direct {p0}, Lcom/amazon/notebook/module/BaseNotebookHeaderBar;->areFlashCardsSupported()Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    const/4 v1, 0x1

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_1
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 507
    iget-boolean v1, p0, Lcom/amazon/notebook/module/BaseNotebookHeaderBar;->exportButtonEnabled:Z

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    return-object p1
.end method

.method public populateChapterMenu(Ljava/util/List;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 321
    iget-object v0, p0, Lcom/amazon/notebook/module/BaseNotebookHeaderBar;->listView:Landroid/widget/ExpandableListView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/amazon/notebook/module/BaseNotebookHeaderBar;->activity:Lcom/amazon/notebook/module/NotebookActivity;

    invoke-virtual {v0}, Lcom/amazon/notebook/module/NotebookActivity;->getDocViewer()Lcom/amazon/android/docviewer/KindleDocViewer;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/android/util/BookTypeUtil;->isLavaMagazine(Lcom/amazon/android/docviewer/KindleDocViewer;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/amazon/notebook/module/BaseNotebookHeaderBar;->res:Landroid/content/res/Resources;

    sget v1, Lcom/amazon/notebook/module/R$bool;->show_chapters_filter:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 322
    iget-object v0, p0, Lcom/amazon/notebook/module/BaseNotebookHeaderBar;->chapterFilters:Lcom/amazon/notebook/module/NotebookDropdownAdapter$FilterItem;

    invoke-virtual {v0}, Lcom/amazon/notebook/module/NotebookDropdownAdapter$FilterItem;->getSubFilters()Ljava/util/List;

    move-result-object v0

    .line 323
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 324
    new-instance v2, Lcom/amazon/notebook/module/NotebookHeaderBar$ChapterFilter;

    invoke-direct {v2}, Lcom/amazon/notebook/module/NotebookHeaderBar$ChapterFilter;-><init>()V

    .line 325
    iput-object v1, v2, Lcom/amazon/notebook/module/NotebookHeaderBar$ChapterFilter;->chapterName:Ljava/lang/String;

    .line 326
    iget-boolean v3, p0, Lcom/amazon/notebook/module/BaseNotebookHeaderBar;->isTablet:Z

    const/4 v4, 0x0

    const/4 v5, 0x0

    if-eqz v3, :cond_0

    .line 327
    new-instance v3, Lcom/amazon/notebook/module/NotebookDropdownAdapter$FilterItem;

    invoke-direct {v3, v1, v5, v4, v2}, Lcom/amazon/notebook/module/NotebookDropdownAdapter$FilterItem;-><init>(Ljava/lang/String;Landroid/graphics/drawable/Drawable;ZLjava/lang/Object;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 329
    :cond_0
    iget-object v3, p0, Lcom/amazon/notebook/module/BaseNotebookHeaderBar;->topLevelFilters:Lcom/amazon/notebook/module/NotebookDropdownAdapter$FilterItem;

    invoke-virtual {v3}, Lcom/amazon/notebook/module/NotebookDropdownAdapter$FilterItem;->getSubFilters()Ljava/util/List;

    move-result-object v3

    new-instance v6, Lcom/amazon/notebook/module/NotebookDropdownAdapter$FilterItem;

    invoke-direct {v6, v1, v5, v4, v2}, Lcom/amazon/notebook/module/NotebookDropdownAdapter$FilterItem;-><init>(Ljava/lang/String;Landroid/graphics/drawable/Drawable;ZLjava/lang/Object;)V

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 336
    :cond_1
    iget-object p1, p0, Lcom/amazon/notebook/module/BaseNotebookHeaderBar;->listView:Landroid/widget/ExpandableListView;

    new-instance v8, Lcom/amazon/notebook/module/NotebookDropdownAdapter;

    iget-object v1, p0, Lcom/amazon/notebook/module/BaseNotebookHeaderBar;->activity:Lcom/amazon/notebook/module/NotebookActivity;

    iget-object v2, p0, Lcom/amazon/notebook/module/BaseNotebookHeaderBar;->topLevelFilters:Lcom/amazon/notebook/module/NotebookDropdownAdapter$FilterItem;

    invoke-virtual {v1}, Lcom/amazon/notebook/module/NotebookActivity;->getDocViewer()Lcom/amazon/android/docviewer/KindleDocViewer;

    move-result-object v3

    iget-boolean v5, p0, Lcom/amazon/notebook/module/BaseNotebookHeaderBar;->isTablet:Z

    iget-object v6, p0, Lcom/amazon/notebook/module/BaseNotebookHeaderBar;->noteTools:Lcom/amazon/notebook/module/NotebookNoteTools;

    iget-object v7, p0, Lcom/amazon/notebook/module/BaseNotebookHeaderBar;->themeProvider:Lcom/amazon/notebook/ThemeProvider;

    move-object v0, v8

    move-object v4, p0

    invoke-direct/range {v0 .. v7}, Lcom/amazon/notebook/module/NotebookDropdownAdapter;-><init>(Landroid/content/Context;Lcom/amazon/notebook/module/NotebookDropdownAdapter$FilterItem;Lcom/amazon/android/docviewer/KindleDocViewer;Lcom/amazon/notebook/module/BaseNotebookHeaderBar;ZLcom/amazon/notebook/module/NotebookNoteTools;Lcom/amazon/notebook/ThemeProvider;)V

    invoke-virtual {p1, v8}, Landroid/widget/ExpandableListView;->setAdapter(Landroid/widget/ExpandableListAdapter;)V

    .line 338
    invoke-direct {p0}, Lcom/amazon/notebook/module/BaseNotebookHeaderBar;->updateChapterSubMenuCheckboxes()V

    :cond_2
    return-void
.end method

.method public selectItemByCompositeFilter(Lcom/amazon/notebook/module/CompositeNotebookFilter;)V
    .locals 0

    .line 344
    iput-object p1, p0, Lcom/amazon/notebook/module/BaseNotebookHeaderBar;->notebookFilter:Lcom/amazon/notebook/module/CompositeNotebookFilter;

    .line 347
    iget-object p1, p0, Lcom/amazon/notebook/module/BaseNotebookHeaderBar;->listView:Landroid/widget/ExpandableListView;

    if-eqz p1, :cond_0

    .line 348
    invoke-direct {p0}, Lcom/amazon/notebook/module/BaseNotebookHeaderBar;->updateFilterMenuCheckboxes()V

    .line 349
    invoke-direct {p0}, Lcom/amazon/notebook/module/BaseNotebookHeaderBar;->updateChapterSubMenuCheckboxes()V

    :cond_0
    return-void
.end method
