.class Lcom/amazon/kcp/reader/UserGotoDialogBuilder;
.super Ljava/lang/Object;
.source "UserGotoDialogBuilder.java"

# interfaces
.implements Lcom/amazon/kcp/reader/DialogListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kcp/reader/UserGotoDialogBuilder$GoToDialogType;
    }
.end annotation


# static fields
.field private static final LOCATION_CURRENT_INDEX:I = 0x1

.field private static final PAGE_CURRENT_INDEX:I = 0x0

.field private static final PAGE_LOCATION_CURRENT_INDEX:I = 0x2

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final context:Landroid/content/Context;

.field private currentStrings:[Ljava/lang/String;

.field dialogController:Lcom/amazon/kcp/reader/UserGotoDialogController;

.field private final docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 33
    const-class v0, Lcom/amazon/kcp/reader/UserGotoDialogBuilder;

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kcp/reader/UserGotoDialogBuilder;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/amazon/android/docviewer/KindleDocViewer;)V
    .locals 5

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Lcom/amazon/kcp/reader/UserGotoDialogBuilder;->context:Landroid/content/Context;

    .line 47
    iput-object p2, p0, Lcom/amazon/kcp/reader/UserGotoDialogBuilder;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    const/4 p2, 0x3

    new-array v0, p2, [I

    .line 49
    sget v1, Lcom/amazon/kindle/krl/R$attr;->gotoPageCurrent:I

    const/4 v2, 0x0

    aput v1, v0, v2

    sget v1, Lcom/amazon/kindle/krl/R$attr;->gotoLocationCurrent:I

    const/4 v3, 0x1

    aput v1, v0, v3

    sget v1, Lcom/amazon/kindle/krl/R$attr;->gotoPageLocationCurrent:I

    const/4 v4, 0x2

    aput v1, v0, v4

    .line 50
    invoke-virtual {p1, v0}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object p1

    new-array p2, p2, [Ljava/lang/String;

    .line 51
    invoke-virtual {p1, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, p2, v2

    invoke-virtual {p1, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, p2, v3

    invoke-virtual {p1, v4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, p2, v4

    iput-object p2, p0, Lcom/amazon/kcp/reader/UserGotoDialogBuilder;->currentStrings:[Ljava/lang/String;

    .line 52
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private getCurrentLocationPrompt(Lcom/amazon/android/docviewer/KindleDoc;)Ljava/lang/String;
    .locals 3

    .line 59
    invoke-interface {p1}, Lcom/amazon/android/docviewer/KindleDoc;->getPageStartPosition()I

    move-result v0

    invoke-interface {p1, v0}, Lcom/amazon/android/docviewer/KindleDoc;->userLocationFromPosition(I)I

    move-result p1

    .line 60
    iget-object v0, p0, Lcom/amazon/kcp/reader/UserGotoDialogBuilder;->currentStrings:[Ljava/lang/String;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private getCurrentPageLocationPrompt(Lcom/amazon/android/docviewer/KindleDoc;)Ljava/lang/String;
    .locals 5

    .line 77
    invoke-interface {p1}, Lcom/amazon/android/docviewer/KindleDoc;->getPageStartPosition()I

    move-result v0

    invoke-interface {p1, v0}, Lcom/amazon/android/docviewer/KindleDoc;->userLocationFromPosition(I)I

    move-result v0

    .line 78
    iget-object v1, p0, Lcom/amazon/kcp/reader/UserGotoDialogBuilder;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    invoke-interface {v1}, Lcom/amazon/android/docviewer/KindleDocViewer;->supportsPageLabels()Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_0

    .line 79
    iget-object p1, p0, Lcom/amazon/kcp/reader/UserGotoDialogBuilder;->currentStrings:[Ljava/lang/String;

    aget-object p1, p1, v3

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v1, v2

    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 81
    :cond_0
    invoke-interface {p1}, Lcom/amazon/android/docviewer/KindleDoc;->getPageLabelProvider()Lcom/amazon/android/docviewer/IPageLabelProvider;

    move-result-object v1

    invoke-interface {p1}, Lcom/amazon/android/docviewer/KindleDoc;->getPageStartPosition()I

    move-result p1

    invoke-interface {v1, p1}, Lcom/amazon/android/docviewer/IPageLabelProvider;->getPageLabelForPosition(I)Ljava/lang/String;

    move-result-object p1

    .line 82
    invoke-static {p1}, Lcom/amazon/kcp/util/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 83
    iget-object p1, p0, Lcom/amazon/kcp/reader/UserGotoDialogBuilder;->currentStrings:[Ljava/lang/String;

    aget-object p1, p1, v3

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v1, v2

    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 85
    :cond_1
    iget-object v1, p0, Lcom/amazon/kcp/reader/UserGotoDialogBuilder;->currentStrings:[Ljava/lang/String;

    const/4 v4, 0x2

    aget-object v1, v1, v4

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p1, v4, v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v4, v3

    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method private getCurrentPagePrompt(Lcom/amazon/android/docviewer/KindleDoc;)Ljava/lang/String;
    .locals 3

    .line 67
    invoke-interface {p1}, Lcom/amazon/android/docviewer/KindleDoc;->getPageLabelProvider()Lcom/amazon/android/docviewer/IPageLabelProvider;

    move-result-object v0

    invoke-interface {p1}, Lcom/amazon/android/docviewer/KindleDoc;->getPageStartPosition()I

    move-result p1

    invoke-interface {v0, p1}, Lcom/amazon/android/docviewer/IPageLabelProvider;->getPageLabelForPosition(I)Ljava/lang/String;

    move-result-object p1

    .line 68
    invoke-static {p1}, Lcom/amazon/kcp/util/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/amazon/kcp/reader/UserGotoDialogBuilder;->currentStrings:[Ljava/lang/String;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v1

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method private getLocationTitleString(Lcom/amazon/android/docviewer/KindleDoc;)Ljava/lang/String;
    .locals 4

    .line 95
    invoke-interface {p1}, Lcom/amazon/android/docviewer/KindleDoc;->getBookEndPosition()I

    move-result v0

    invoke-interface {p1, v0}, Lcom/amazon/android/docviewer/KindleDoc;->userLocationFromPosition(I)I

    move-result p1

    .line 96
    iget-object v0, p0, Lcom/amazon/kcp/reader/UserGotoDialogBuilder;->context:Landroid/content/Context;

    sget v1, Lcom/amazon/kindle/krl/R$string;->location_title:I

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private getPageLocationTitleString(Lcom/amazon/android/docviewer/KindleDoc;)Ljava/lang/String;
    .locals 7

    .line 113
    invoke-interface {p1}, Lcom/amazon/android/docviewer/KindleDoc;->getBookEndPosition()I

    move-result v0

    invoke-interface {p1, v0}, Lcom/amazon/android/docviewer/KindleDoc;->userLocationFromPosition(I)I

    move-result v0

    .line 115
    iget-object v1, p0, Lcom/amazon/kcp/reader/UserGotoDialogBuilder;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    invoke-interface {v1}, Lcom/amazon/android/docviewer/KindleDocViewer;->supportsPageLabels()Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_0

    .line 116
    iget-object p1, p0, Lcom/amazon/kcp/reader/UserGotoDialogBuilder;->context:Landroid/content/Context;

    sget v1, Lcom/amazon/kindle/krl/R$string;->location_title:I

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v2

    invoke-virtual {p1, v1, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    .line 118
    :cond_0
    invoke-interface {p1}, Lcom/amazon/android/docviewer/KindleDoc;->getPageLabelProvider()Lcom/amazon/android/docviewer/IPageLabelProvider;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/android/docviewer/IPageLabelProvider;->getFirstNonEmptyPageLabel()Ljava/lang/String;

    move-result-object v1

    .line 119
    invoke-interface {p1}, Lcom/amazon/android/docviewer/KindleDoc;->getPageLabelProvider()Lcom/amazon/android/docviewer/IPageLabelProvider;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/android/docviewer/IPageLabelProvider;->getLastBodyPageLabel()Ljava/lang/String;

    move-result-object p1

    .line 120
    invoke-static {v1}, Lcom/amazon/kcp/util/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    invoke-static {p1}, Lcom/amazon/kcp/util/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_0

    .line 123
    :cond_1
    iget-object v4, p0, Lcom/amazon/kcp/reader/UserGotoDialogBuilder;->context:Landroid/content/Context;

    sget v5, Lcom/amazon/kindle/krl/R$string;->page_location_title:I

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v1, v6, v2

    aput-object p1, v6, v3

    const/4 p1, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v6, p1

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    .line 121
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/amazon/kcp/reader/UserGotoDialogBuilder;->context:Landroid/content/Context;

    sget v1, Lcom/amazon/kindle/krl/R$string;->location_title:I

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v2

    invoke-virtual {p1, v1, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    :goto_1
    return-object p1
.end method

.method private getPageTitleString(Lcom/amazon/android/docviewer/KindleDoc;)Ljava/lang/String;
    .locals 5

    .line 103
    invoke-interface {p1}, Lcom/amazon/android/docviewer/KindleDoc;->getPageLabelProvider()Lcom/amazon/android/docviewer/IPageLabelProvider;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/android/docviewer/IPageLabelProvider;->getFirstNonEmptyPageLabel()Ljava/lang/String;

    move-result-object v0

    .line 104
    invoke-interface {p1}, Lcom/amazon/android/docviewer/KindleDoc;->getPageLabelProvider()Lcom/amazon/android/docviewer/IPageLabelProvider;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/android/docviewer/IPageLabelProvider;->getLastBodyPageLabel()Ljava/lang/String;

    move-result-object p1

    .line 105
    iget-object v1, p0, Lcom/amazon/kcp/reader/UserGotoDialogBuilder;->context:Landroid/content/Context;

    sget v2, Lcom/amazon/kindle/krl/R$string;->page_title:I

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const/4 v0, 0x1

    aput-object p1, v3, v0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private setCurrentLocationText(Landroid/widget/TextView;Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_1

    .line 271
    invoke-static {p2}, Lcom/amazon/kcp/util/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 p2, 0x8

    .line 272
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 274
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 275
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public build(Lcom/amazon/kcp/reader/UserGotoDialogBuilder$GoToDialogType;)Landroid/app/Dialog;
    .locals 10

    .line 140
    iget-object v0, p0, Lcom/amazon/kcp/reader/UserGotoDialogBuilder;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    invoke-interface {v0}, Lcom/amazon/android/docviewer/KindleDocViewer;->getDocument()Lcom/amazon/android/docviewer/KindleDoc;

    move-result-object v0

    .line 142
    new-instance v1, Landroidx/appcompat/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/amazon/kcp/reader/UserGotoDialogBuilder;->context:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 143
    iget-object v2, p0, Lcom/amazon/kcp/reader/UserGotoDialogBuilder;->context:Landroid/content/Context;

    sget v3, Lcom/amazon/kindle/krl/R$layout;->goto_dialog:I

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 144
    sget v3, Lcom/amazon/kindle/krl/R$id;->goto_input_field:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    .line 145
    new-instance v5, Lcom/amazon/kcp/reader/UserGotoDialogController;

    iget-object v6, p0, Lcom/amazon/kcp/reader/UserGotoDialogBuilder;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    invoke-direct {v5, v3, v6, p1}, Lcom/amazon/kcp/reader/UserGotoDialogController;-><init>(Landroid/widget/EditText;Lcom/amazon/android/docviewer/KindleDocViewer;Lcom/amazon/kcp/reader/UserGotoDialogBuilder$GoToDialogType;)V

    .line 146
    iput-object v5, p0, Lcom/amazon/kcp/reader/UserGotoDialogBuilder;->dialogController:Lcom/amazon/kcp/reader/UserGotoDialogController;

    .line 148
    sget-object v6, Lcom/amazon/kcp/reader/UserGotoDialogBuilder$2;->$SwitchMap$com$amazon$kcp$reader$UserGotoDialogBuilder$GoToDialogType:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v7

    aget v6, v6, v7

    const/4 v7, 0x1

    const/4 v8, 0x2

    const v9, 0x80001

    if-eq v6, v7, :cond_5

    if-eq v6, v8, :cond_2

    const/4 v7, 0x3

    if-eq v6, v7, :cond_0

    .line 176
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "The specified type doesn\'t exist:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    return-object v4

    .line 167
    :cond_0
    invoke-direct {p0, v0}, Lcom/amazon/kcp/reader/UserGotoDialogBuilder;->getPageLocationTitleString(Lcom/amazon/android/docviewer/KindleDoc;)Ljava/lang/String;

    move-result-object v4

    .line 168
    invoke-direct {p0, v0}, Lcom/amazon/kcp/reader/UserGotoDialogBuilder;->getCurrentPageLocationPrompt(Lcom/amazon/android/docviewer/KindleDoc;)Ljava/lang/String;

    move-result-object v6

    .line 171
    iget-object v7, p0, Lcom/amazon/kcp/reader/UserGotoDialogBuilder;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    invoke-interface {v7}, Lcom/amazon/android/docviewer/KindleDocViewer;->supportsPageLabels()Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-interface {v0}, Lcom/amazon/android/docviewer/KindleDoc;->getPageLabelProvider()Lcom/amazon/android/docviewer/IPageLabelProvider;

    move-result-object v7

    invoke-interface {v7}, Lcom/amazon/android/docviewer/IPageLabelProvider;->hasOnlyNumericPageLabels()Z

    move-result v7

    if-eqz v7, :cond_1

    goto :goto_1

    :cond_1
    const v8, 0x80001

    goto :goto_1

    .line 155
    :cond_2
    iget-object v6, p0, Lcom/amazon/kcp/reader/UserGotoDialogBuilder;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    invoke-interface {v6}, Lcom/amazon/android/docviewer/KindleDocViewer;->supportsPageLabels()Z

    move-result v6

    if-nez v6, :cond_3

    return-object v4

    .line 160
    :cond_3
    invoke-interface {v0}, Lcom/amazon/android/docviewer/KindleDoc;->getPageLabelProvider()Lcom/amazon/android/docviewer/IPageLabelProvider;

    move-result-object v4

    invoke-interface {v4}, Lcom/amazon/android/docviewer/IPageLabelProvider;->hasOnlyNumericPageLabels()Z

    move-result v4

    if-eqz v4, :cond_4

    goto :goto_0

    :cond_4
    const v8, 0x80001

    .line 163
    :goto_0
    invoke-direct {p0, v0}, Lcom/amazon/kcp/reader/UserGotoDialogBuilder;->getPageTitleString(Lcom/amazon/android/docviewer/KindleDoc;)Ljava/lang/String;

    move-result-object v4

    .line 164
    invoke-direct {p0, v0}, Lcom/amazon/kcp/reader/UserGotoDialogBuilder;->getCurrentPagePrompt(Lcom/amazon/android/docviewer/KindleDoc;)Ljava/lang/String;

    move-result-object v6

    goto :goto_1

    .line 150
    :cond_5
    invoke-direct {p0, v0}, Lcom/amazon/kcp/reader/UserGotoDialogBuilder;->getLocationTitleString(Lcom/amazon/android/docviewer/KindleDoc;)Ljava/lang/String;

    move-result-object v4

    .line 151
    invoke-direct {p0, v0}, Lcom/amazon/kcp/reader/UserGotoDialogBuilder;->getCurrentLocationPrompt(Lcom/amazon/android/docviewer/KindleDoc;)Ljava/lang/String;

    move-result-object v6

    :cond_6
    :goto_1
    const/4 v7, 0x0

    .line 180
    invoke-virtual {v1, v7}, Landroidx/appcompat/app/AlertDialog$Builder;->setIcon(I)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 182
    invoke-virtual {v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 184
    invoke-virtual {v1, v4}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 187
    invoke-virtual {v5}, Lcom/amazon/kcp/reader/UserGotoDialogController;->getPositiveText()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4, v5}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 188
    invoke-virtual {v5}, Lcom/amazon/kcp/reader/UserGotoDialogController;->getNegativeText()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4, v5}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 189
    invoke-virtual {v5}, Lcom/amazon/kcp/reader/UserGotoDialogController;->getNeutralText()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4, v5}, Landroidx/appcompat/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 192
    sget v4, Lcom/amazon/kindle/krl/R$id;->current_location_text:I

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-direct {p0, v2, v6}, Lcom/amazon/kcp/reader/UserGotoDialogBuilder;->setCurrentLocationText(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 195
    invoke-virtual {v3, v8}, Landroid/widget/EditText;->setInputType(I)V

    .line 196
    invoke-interface {v0}, Lcom/amazon/android/docviewer/KindleDoc;->getGotoTextWatcher()Landroid/text/TextWatcher;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 198
    invoke-virtual {v1}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object v0

    .line 200
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 203
    new-instance v1, Lcom/amazon/kcp/reader/UserGotoDialogBuilder$1;

    invoke-direct {v1, p0, v0, p1, v5}, Lcom/amazon/kcp/reader/UserGotoDialogBuilder$1;-><init>(Lcom/amazon/kcp/reader/UserGotoDialogBuilder;Landroidx/appcompat/app/AlertDialog;Lcom/amazon/kcp/reader/UserGotoDialogBuilder$GoToDialogType;Lcom/amazon/kcp/reader/UserGotoDialogController;)V

    invoke-virtual {v3, v1}, Landroid/widget/EditText;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    return-object v0
.end method

.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 0

    .line 287
    iget-object p1, p0, Lcom/amazon/kcp/reader/UserGotoDialogBuilder;->dialogController:Lcom/amazon/kcp/reader/UserGotoDialogController;

    invoke-virtual {p1}, Lcom/amazon/kcp/reader/UserGotoDialogController;->onCancel()V

    return-void
.end method

.method public onShow(Landroid/content/DialogInterface;)V
    .locals 1

    .line 282
    iget-object v0, p0, Lcom/amazon/kcp/reader/UserGotoDialogBuilder;->dialogController:Lcom/amazon/kcp/reader/UserGotoDialogController;

    invoke-virtual {v0, p1}, Lcom/amazon/kcp/reader/UserGotoDialogController;->onShow(Landroid/content/DialogInterface;)V

    return-void
.end method

.method public refreshDialog(Lcom/amazon/kcp/reader/UserGotoDialogBuilder$GoToDialogType;Landroid/app/Dialog;)V
    .locals 2

    .line 231
    sget-object v0, Lcom/amazon/kcp/reader/UserGotoDialogBuilder$2;->$SwitchMap$com$amazon$kcp$reader$UserGotoDialogBuilder$GoToDialogType:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    .line 251
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "The specified type doesn\'t exist:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    goto :goto_0

    .line 239
    :cond_0
    sget p1, Lcom/amazon/kindle/krl/R$id;->current_location_text:I

    invoke-virtual {p2, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iget-object v0, p0, Lcom/amazon/kcp/reader/UserGotoDialogBuilder;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    invoke-interface {v0}, Lcom/amazon/android/docviewer/KindleDocViewer;->getDocument()Lcom/amazon/android/docviewer/KindleDoc;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/amazon/kcp/reader/UserGotoDialogBuilder;->getCurrentPageLocationPrompt(Lcom/amazon/android/docviewer/KindleDoc;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/amazon/kcp/reader/UserGotoDialogBuilder;->setCurrentLocationText(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 241
    iget-object p1, p0, Lcom/amazon/kcp/reader/UserGotoDialogBuilder;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    invoke-interface {p1}, Lcom/amazon/android/docviewer/KindleDocViewer;->supportsPageLabels()Z

    move-result p1

    if-nez p1, :cond_3

    .line 243
    move-object p1, p2

    check-cast p1, Landroidx/appcompat/app/AlertDialog;

    const/4 v0, -0x2

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object p1

    if-eqz p1, :cond_3

    const/4 v0, 0x0

    .line 245
    invoke-virtual {p1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0

    .line 236
    :cond_1
    sget p1, Lcom/amazon/kindle/krl/R$id;->current_location_text:I

    invoke-virtual {p2, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iget-object v0, p0, Lcom/amazon/kcp/reader/UserGotoDialogBuilder;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    invoke-interface {v0}, Lcom/amazon/android/docviewer/KindleDocViewer;->getDocument()Lcom/amazon/android/docviewer/KindleDoc;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/amazon/kcp/reader/UserGotoDialogBuilder;->getCurrentPagePrompt(Lcom/amazon/android/docviewer/KindleDoc;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/amazon/kcp/reader/UserGotoDialogBuilder;->setCurrentLocationText(Landroid/widget/TextView;Ljava/lang/String;)V

    goto :goto_0

    .line 233
    :cond_2
    sget p1, Lcom/amazon/kindle/krl/R$id;->current_location_text:I

    invoke-virtual {p2, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iget-object v0, p0, Lcom/amazon/kcp/reader/UserGotoDialogBuilder;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    invoke-interface {v0}, Lcom/amazon/android/docviewer/KindleDocViewer;->getDocument()Lcom/amazon/android/docviewer/KindleDoc;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/amazon/kcp/reader/UserGotoDialogBuilder;->getCurrentLocationPrompt(Lcom/amazon/android/docviewer/KindleDoc;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/amazon/kcp/reader/UserGotoDialogBuilder;->setCurrentLocationText(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 254
    :cond_3
    :goto_0
    sget p1, Lcom/amazon/kindle/krl/R$id;->goto_input_field:I

    invoke-virtual {p2, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    const/4 p2, 0x0

    .line 256
    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
