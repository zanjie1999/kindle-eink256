.class public final Lcom/amazon/overlay/translation/TranslationLanguageButton$LanguageSelectionOnClickListener;
.super Ljava/lang/Object;
.source "TranslationLanguageButton.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/overlay/translation/TranslationLanguageButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "LanguageSelectionOnClickListener"
.end annotation


# instance fields
.field private m_buttonsClickable:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 72
    iput-boolean v0, p0, Lcom/amazon/overlay/translation/TranslationLanguageButton$LanguageSelectionOnClickListener;->m_buttonsClickable:Z

    return-void
.end method

.method static synthetic access$202(Lcom/amazon/overlay/translation/TranslationLanguageButton$LanguageSelectionOnClickListener;Z)Z
    .locals 0

    .line 67
    iput-boolean p1, p0, Lcom/amazon/overlay/translation/TranslationLanguageButton$LanguageSelectionOnClickListener;->m_buttonsClickable:Z

    return p1
.end method

.method private createLanguageSelectionDialog(Lcom/amazon/overlay/translation/TranslationLanguageButton;)V
    .locals 5

    .line 103
    invoke-static {p1}, Lcom/amazon/overlay/translation/TranslationLanguageButton;->access$000(Lcom/amazon/overlay/translation/TranslationLanguageButton;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-array v1, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 105
    invoke-static {p1}, Lcom/amazon/overlay/translation/TranslationLanguageButton;->access$000(Lcom/amazon/overlay/translation/TranslationLanguageButton;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/amazon/kcp/translation/Language;

    invoke-virtual {v3}, Lcom/amazon/kcp/translation/Language;->getDisplayName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    .line 110
    invoke-virtual {p1}, Lcom/amazon/overlay/translation/TranslationLanguageButton;->getSelectedItem()Lcom/amazon/kcp/translation/Language;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 111
    invoke-static {p1}, Lcom/amazon/overlay/translation/TranslationLanguageButton;->access$000(Lcom/amazon/overlay/translation/TranslationLanguageButton;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1}, Lcom/amazon/overlay/translation/TranslationLanguageButton;->getSelectedItem()Lcom/amazon/kcp/translation/Language;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 115
    :cond_1
    invoke-virtual {p1}, Landroid/widget/Button;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 116
    new-instance v3, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-direct {v3, v2}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v4, Lcom/amazon/kindle/oat/R$string;->translation_languages_title:I

    .line 117
    invoke-virtual {v3, v4}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(I)Landroidx/appcompat/app/AlertDialog$Builder;

    const/4 v4, 0x0

    invoke-virtual {v3, v1, v0, v4}, Landroidx/appcompat/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    sget v0, Lcom/amazon/kindle/oat/R$string;->select:I

    .line 118
    invoke-static {p1}, Lcom/amazon/overlay/translation/TranslationLanguageButton;->access$100(Lcom/amazon/overlay/translation/TranslationLanguageButton;)Landroid/content/DialogInterface$OnClickListener;

    move-result-object p1

    invoke-virtual {v3, v0, p1}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    sget p1, Lcom/amazon/kindle/oat/R$string;->cancel:I

    new-instance v0, Lcom/amazon/overlay/translation/TranslationLanguageButton$LanguageSelectionOnClickListener$1;

    invoke-direct {v0, p0}, Lcom/amazon/overlay/translation/TranslationLanguageButton$LanguageSelectionOnClickListener$1;-><init>(Lcom/amazon/overlay/translation/TranslationLanguageButton$LanguageSelectionOnClickListener;)V

    .line 119
    invoke-virtual {v3, p1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 124
    invoke-virtual {v3}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p1

    .line 125
    invoke-static {v2, p1}, Lcom/amazon/kindle/dialog/DialogManager;->showDialogSafely(Landroid/content/Context;Landroid/app/Dialog;)Z

    .line 128
    new-instance v0, Lcom/amazon/overlay/translation/TranslationLanguageButton$LanguageSelectionOnClickListener$2;

    invoke-direct {v0, p0}, Lcom/amazon/overlay/translation/TranslationLanguageButton$LanguageSelectionOnClickListener$2;-><init>(Lcom/amazon/overlay/translation/TranslationLanguageButton$LanguageSelectionOnClickListener;)V

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    return-void
.end method


# virtual methods
.method public declared-synchronized onClick(Landroid/view/View;)V
    .locals 2

    monitor-enter p0

    .line 81
    :try_start_0
    iget-boolean v0, p0, Lcom/amazon/overlay/translation/TranslationLanguageButton$LanguageSelectionOnClickListener;->m_buttonsClickable:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 82
    monitor-exit p0

    return-void

    .line 85
    :cond_0
    :try_start_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 86
    sget v1, Lcom/amazon/kindle/oat/R$id;->translation_source_language:I

    if-eq v0, v1, :cond_1

    sget v1, Lcom/amazon/kindle/oat/R$id;->translation_destination_language:I

    if-ne v0, v1, :cond_2

    :cond_1
    const/4 v0, 0x0

    .line 89
    iput-boolean v0, p0, Lcom/amazon/overlay/translation/TranslationLanguageButton$LanguageSelectionOnClickListener;->m_buttonsClickable:Z

    .line 90
    check-cast p1, Lcom/amazon/overlay/translation/TranslationLanguageButton;

    invoke-direct {p0, p1}, Lcom/amazon/overlay/translation/TranslationLanguageButton$LanguageSelectionOnClickListener;->createLanguageSelectionDialog(Lcom/amazon/overlay/translation/TranslationLanguageButton;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 92
    :cond_2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
