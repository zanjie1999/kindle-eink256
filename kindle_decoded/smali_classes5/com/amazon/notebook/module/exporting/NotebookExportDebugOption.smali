.class public Lcom/amazon/notebook/module/exporting/NotebookExportDebugOption;
.super Landroid/widget/LinearLayout;
.source "NotebookExportDebugOption.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private exportEnabledCheckBox:Landroid/widget/CheckBox;

.field private exportEnabledReflowableCheckBox:Landroid/widget/CheckBox;

.field private graphicalHighlightJpegQualityEdit:Landroid/widget/EditText;

.field private graphicalHighlightMaxWidthEdit:Landroid/widget/EditText;

.field private jpegFormatRadioButton:Landroid/widget/RadioButton;

.field private pngFormatRadioButton:Landroid/widget/RadioButton;

.field private selectDialogTocMaxLevelEdit:Landroid/widget/EditText;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 42
    const-class v0, Lcom/amazon/notebook/module/exporting/NotebookExportDebugOption;

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/notebook/module/exporting/NotebookExportDebugOption;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 45
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private clearClippingLimitForCurrentBook()V
    .locals 3

    .line 151
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/amazon/notebook/module/exporting/NotebookClearClippingLimitActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 152
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private onSelectDialogTocMaxLevel()V
    .locals 4

    .line 132
    :try_start_0
    iget-object v0, p0, Lcom/amazon/notebook/module/exporting/NotebookExportDebugOption;->selectDialogTocMaxLevelEdit:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lcom/amazon/notebook/module/exporting/NotebookExportSettings;->setSelectDialogTocMaxLevel(I)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 134
    sget-object v1, Lcom/amazon/notebook/module/exporting/NotebookExportDebugOption;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "NumberFormatException trying to get int value from select dialog toc max level. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    :goto_0
    iget-object v0, p0, Lcom/amazon/notebook/module/exporting/NotebookExportDebugOption;->selectDialogTocMaxLevelEdit:Landroid/widget/EditText;

    invoke-static {}, Lcom/amazon/notebook/module/exporting/NotebookExportSettings;->getSelectDialogTocMaxLevel()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private onSetGraphicalHighlightJpegQuality()V
    .locals 4

    .line 123
    :try_start_0
    iget-object v0, p0, Lcom/amazon/notebook/module/exporting/NotebookExportDebugOption;->graphicalHighlightJpegQualityEdit:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lcom/amazon/notebook/module/exporting/NotebookExportSettings;->setJpegImageQuality(I)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 125
    sget-object v1, Lcom/amazon/notebook/module/exporting/NotebookExportDebugOption;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "NumberFormatException trying to get int value from graphical highlight jpeg quality. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    :goto_0
    iget-object v0, p0, Lcom/amazon/notebook/module/exporting/NotebookExportDebugOption;->graphicalHighlightJpegQualityEdit:Landroid/widget/EditText;

    invoke-static {}, Lcom/amazon/notebook/module/exporting/NotebookExportSettings;->getJpegImageQuality()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private onSetGraphicalHighlightMaxWidth()V
    .locals 4

    .line 114
    :try_start_0
    iget-object v0, p0, Lcom/amazon/notebook/module/exporting/NotebookExportDebugOption;->graphicalHighlightMaxWidthEdit:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lcom/amazon/notebook/module/exporting/NotebookExportSettings;->setGraphicalHighlightMaxWidth(I)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 116
    sget-object v1, Lcom/amazon/notebook/module/exporting/NotebookExportDebugOption;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "NumberFormatException trying to get int value from graphical highlight max width. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    :goto_0
    iget-object v0, p0, Lcom/amazon/notebook/module/exporting/NotebookExportDebugOption;->graphicalHighlightMaxWidthEdit:Landroid/widget/EditText;

    invoke-static {}, Lcom/amazon/notebook/module/exporting/NotebookExportSettings;->getGraphicalHighlightMaxWidth()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private setClearClippingLimitButtonText()V
    .locals 6

    .line 156
    sget v0, Lcom/amazon/notebook/module/R$id;->module_clear_clipping_limit_button:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    if-eqz v0, :cond_3

    .line 158
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/amazon/kcp/application/KindleObjectFactorySingleton;->getInstance(Landroid/content/Context;)Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v1

    .line 159
    invoke-interface {v1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getReaderController()Lcom/amazon/kcp/reader/IReaderController;

    move-result-object v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    .line 160
    :cond_0
    invoke-interface {v1}, Lcom/amazon/kcp/reader/IReaderController;->getDocViewer()Lcom/amazon/android/docviewer/KindleDocViewer;

    move-result-object v1

    :goto_0
    if-eqz v1, :cond_2

    .line 162
    invoke-static {}, Lcom/amazon/notebook/module/NotebookPlugin;->getSdk()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v2

    invoke-interface {v2}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getApplicationManager()Lcom/amazon/kindle/krx/application/IApplicationManager;

    move-result-object v2

    invoke-interface {v2}, Lcom/amazon/kindle/krx/application/IApplicationManager;->getActiveUserAccount()Lcom/amazon/kindle/krx/application/IUserAccount;

    move-result-object v2

    invoke-interface {v2}, Lcom/amazon/kindle/krx/application/IUserAccount;->getUserId()Ljava/lang/String;

    move-result-object v2

    .line 163
    invoke-interface {v1}, Lcom/amazon/android/docviewer/KindleDocViewer;->getDocument()Lcom/amazon/android/docviewer/KindleDoc;

    move-result-object v3

    invoke-interface {v3}, Lcom/amazon/android/docviewer/KindleDoc;->getBookInfo()Lcom/amazon/kindle/model/content/ILocalBookItem;

    move-result-object v3

    invoke-interface {v3}, Lcom/amazon/kindle/model/content/ILocalBookInfo;->getBookID()Lcom/amazon/kindle/model/content/IBookID;

    move-result-object v3

    invoke-interface {v3}, Lcom/amazon/kindle/model/content/IBookID;->getSerializedForm()Ljava/lang/String;

    move-result-object v3

    .line 164
    invoke-static {}, Lcom/amazon/notebook/module/exporting/ClippingLimitDAO;->getInstance()Lcom/amazon/notebook/module/exporting/IClippingLimitDAO;

    move-result-object v4

    .line 166
    invoke-interface {v4, v2, v3}, Lcom/amazon/notebook/module/exporting/IClippingLimitDAO;->getAmountExported(Ljava/lang/String;Ljava/lang/String;)F

    move-result v2

    const/high16 v3, 0x42c80000    # 100.0f

    mul-float v2, v2, v3

    .line 167
    invoke-interface {v1}, Lcom/amazon/android/docviewer/KindleDocViewer;->getDocument()Lcom/amazon/android/docviewer/KindleDoc;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/android/docviewer/KindleDoc;->getBookInfo()Lcom/amazon/kindle/model/content/ILocalBookItem;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kindle/model/content/ILocalBookInfo;->getClippingLimit()F

    move-result v1

    mul-float v1, v1, v3

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    cmpg-float v3, v2, v3

    if-gez v3, :cond_1

    const-string v1, "clipping status unknown"

    goto :goto_1

    :cond_1
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    .line 169
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    aput-object v2, v3, v5

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    aput-object v1, v3, v4

    const-string v1, "%.2f%% of %.2f%% used"

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    :goto_1
    new-array v2, v4, [Ljava/lang/Object;

    aput-object v1, v2, v5

    const-string v1, "Reset clipping limit for the current book (%s)"

    .line 170
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    :cond_2
    const/16 v1, 0x8

    .line 172
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    :cond_3
    :goto_2
    return-void
.end method

.method private updateImageFormatRadioButtons()V
    .locals 3

    .line 140
    sget-object v0, Lcom/amazon/notebook/module/exporting/NotebookExportDebugOption$1;->$SwitchMap$android$graphics$Bitmap$CompressFormat:[I

    invoke-static {}, Lcom/amazon/notebook/module/exporting/NotebookExportSettings;->getImageformat()Landroid/graphics/Bitmap$CompressFormat;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Bitmap$CompressFormat;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    goto :goto_0

    .line 145
    :cond_0
    iget-object v0, p0, Lcom/amazon/notebook/module/exporting/NotebookExportDebugOption;->pngFormatRadioButton:Landroid/widget/RadioButton;

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_0

    .line 142
    :cond_1
    iget-object v0, p0, Lcom/amazon/notebook/module/exporting/NotebookExportDebugOption;->jpegFormatRadioButton:Landroid/widget/RadioButton;

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    :goto_0
    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2

    .line 97
    invoke-virtual {p1}, Landroid/widget/CompoundButton;->getId()I

    move-result v0

    sget v1, Lcom/amazon/notebook/module/R$id;->module_export_enabled_checkbox:I

    if-ne v0, v1, :cond_0

    .line 98
    invoke-static {p2}, Lcom/amazon/notebook/module/exporting/NotebookExportSettings;->setExportEnabled(Z)V

    goto :goto_0

    .line 99
    :cond_0
    invoke-virtual {p1}, Landroid/widget/CompoundButton;->getId()I

    move-result p1

    sget v0, Lcom/amazon/notebook/module/R$id;->module_export_enabled_checkbox_reflowable:I

    if-ne p1, v0, :cond_1

    .line 100
    invoke-static {p2}, Lcom/amazon/notebook/module/exporting/NotebookExportSettings;->setExportEnabledOnReflowable(Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 78
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/amazon/notebook/module/R$id;->module_graphical_highlight_max_width_set:I

    if-ne v0, v1, :cond_0

    .line 79
    invoke-direct {p0}, Lcom/amazon/notebook/module/exporting/NotebookExportDebugOption;->onSetGraphicalHighlightMaxWidth()V

    goto :goto_0

    .line 80
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/amazon/notebook/module/R$id;->module_graphical_highlight_jpeg_quality_set:I

    if-ne v0, v1, :cond_1

    .line 81
    invoke-direct {p0}, Lcom/amazon/notebook/module/exporting/NotebookExportDebugOption;->onSetGraphicalHighlightJpegQuality()V

    goto :goto_0

    .line 82
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/amazon/notebook/module/R$id;->module_toc_max_level_set:I

    if-ne v0, v1, :cond_2

    .line 83
    invoke-direct {p0}, Lcom/amazon/notebook/module/exporting/NotebookExportDebugOption;->onSelectDialogTocMaxLevel()V

    goto :goto_0

    .line 84
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/amazon/notebook/module/R$id;->module_radio_jpeg:I

    if-ne v0, v1, :cond_3

    .line 85
    sget-object p1, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-static {p1}, Lcom/amazon/notebook/module/exporting/NotebookExportSettings;->setImageFormat(Landroid/graphics/Bitmap$CompressFormat;)V

    .line 86
    invoke-direct {p0}, Lcom/amazon/notebook/module/exporting/NotebookExportDebugOption;->updateImageFormatRadioButtons()V

    goto :goto_0

    .line 87
    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/amazon/notebook/module/R$id;->module_radio_png:I

    if-ne v0, v1, :cond_4

    .line 88
    sget-object p1, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-static {p1}, Lcom/amazon/notebook/module/exporting/NotebookExportSettings;->setImageFormat(Landroid/graphics/Bitmap$CompressFormat;)V

    .line 89
    invoke-direct {p0}, Lcom/amazon/notebook/module/exporting/NotebookExportDebugOption;->updateImageFormatRadioButtons()V

    goto :goto_0

    .line 90
    :cond_4
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    sget v0, Lcom/amazon/notebook/module/R$id;->module_clear_clipping_limit_button:I

    if-ne p1, v0, :cond_5

    .line 91
    invoke-direct {p0}, Lcom/amazon/notebook/module/exporting/NotebookExportDebugOption;->clearClippingLimitForCurrentBook()V

    :cond_5
    :goto_0
    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    .line 50
    sget v0, Lcom/amazon/notebook/module/R$id;->module_graphical_highlight_max_width_edit:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/amazon/notebook/module/exporting/NotebookExportDebugOption;->graphicalHighlightMaxWidthEdit:Landroid/widget/EditText;

    .line 51
    sget v0, Lcom/amazon/notebook/module/R$id;->module_graphical_highlight_jpeg_quality_edit:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/amazon/notebook/module/exporting/NotebookExportDebugOption;->graphicalHighlightJpegQualityEdit:Landroid/widget/EditText;

    .line 52
    sget v0, Lcom/amazon/notebook/module/R$id;->module_toc_max_level_edit:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/amazon/notebook/module/exporting/NotebookExportDebugOption;->selectDialogTocMaxLevelEdit:Landroid/widget/EditText;

    .line 53
    sget v0, Lcom/amazon/notebook/module/R$id;->module_radio_jpeg:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/amazon/notebook/module/exporting/NotebookExportDebugOption;->jpegFormatRadioButton:Landroid/widget/RadioButton;

    .line 54
    sget v0, Lcom/amazon/notebook/module/R$id;->module_radio_png:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/amazon/notebook/module/exporting/NotebookExportDebugOption;->pngFormatRadioButton:Landroid/widget/RadioButton;

    .line 55
    sget v0, Lcom/amazon/notebook/module/R$id;->module_export_enabled_checkbox:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/amazon/notebook/module/exporting/NotebookExportDebugOption;->exportEnabledCheckBox:Landroid/widget/CheckBox;

    .line 56
    sget v0, Lcom/amazon/notebook/module/R$id;->module_export_enabled_checkbox_reflowable:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/amazon/notebook/module/exporting/NotebookExportDebugOption;->exportEnabledReflowableCheckBox:Landroid/widget/CheckBox;

    .line 58
    sget v0, Lcom/amazon/notebook/module/R$id;->module_graphical_highlight_max_width_set:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 59
    sget v0, Lcom/amazon/notebook/module/R$id;->module_graphical_highlight_jpeg_quality_set:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 60
    sget v0, Lcom/amazon/notebook/module/R$id;->module_toc_max_level_set:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 61
    sget v0, Lcom/amazon/notebook/module/R$id;->module_clear_clipping_limit_button:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 62
    iget-object v0, p0, Lcom/amazon/notebook/module/exporting/NotebookExportDebugOption;->jpegFormatRadioButton:Landroid/widget/RadioButton;

    invoke-virtual {v0, p0}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 63
    iget-object v0, p0, Lcom/amazon/notebook/module/exporting/NotebookExportDebugOption;->pngFormatRadioButton:Landroid/widget/RadioButton;

    invoke-virtual {v0, p0}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 64
    iget-object v0, p0, Lcom/amazon/notebook/module/exporting/NotebookExportDebugOption;->exportEnabledCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0, p0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 65
    iget-object v0, p0, Lcom/amazon/notebook/module/exporting/NotebookExportDebugOption;->exportEnabledReflowableCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0, p0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 67
    iget-object v0, p0, Lcom/amazon/notebook/module/exporting/NotebookExportDebugOption;->graphicalHighlightMaxWidthEdit:Landroid/widget/EditText;

    invoke-static {}, Lcom/amazon/notebook/module/exporting/NotebookExportSettings;->getGraphicalHighlightMaxWidth()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 68
    iget-object v0, p0, Lcom/amazon/notebook/module/exporting/NotebookExportDebugOption;->graphicalHighlightJpegQualityEdit:Landroid/widget/EditText;

    invoke-static {}, Lcom/amazon/notebook/module/exporting/NotebookExportSettings;->getJpegImageQuality()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 69
    iget-object v0, p0, Lcom/amazon/notebook/module/exporting/NotebookExportDebugOption;->selectDialogTocMaxLevelEdit:Landroid/widget/EditText;

    invoke-static {}, Lcom/amazon/notebook/module/exporting/NotebookExportSettings;->getSelectDialogTocMaxLevel()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 70
    iget-object v0, p0, Lcom/amazon/notebook/module/exporting/NotebookExportDebugOption;->exportEnabledCheckBox:Landroid/widget/CheckBox;

    invoke-static {}, Lcom/amazon/notebook/module/exporting/NotebookExportSettings;->isExportEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 71
    iget-object v0, p0, Lcom/amazon/notebook/module/exporting/NotebookExportDebugOption;->exportEnabledReflowableCheckBox:Landroid/widget/CheckBox;

    invoke-static {}, Lcom/amazon/notebook/module/exporting/NotebookExportSettings;->isExportEnabledOnReflowable()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 73
    invoke-direct {p0}, Lcom/amazon/notebook/module/exporting/NotebookExportDebugOption;->updateImageFormatRadioButtons()V

    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 0

    .line 106
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onWindowFocusChanged(Z)V

    if-eqz p1, :cond_0

    .line 108
    invoke-direct {p0}, Lcom/amazon/notebook/module/exporting/NotebookExportDebugOption;->setClearClippingLimitButtonText()V

    :cond_0
    return-void
.end method
