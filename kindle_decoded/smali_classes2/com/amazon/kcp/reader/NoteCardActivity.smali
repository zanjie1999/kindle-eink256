.class public Lcom/amazon/kcp/reader/NoteCardActivity;
.super Lcom/amazon/kcp/redding/ReddingActivity;
.source "NoteCardActivity.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private data:Lcom/amazon/kcp/reader/notebook/notecard/NoteCardUIData;

.field private dialog:Landroidx/appcompat/app/AlertDialog;

.field private editText:Landroid/widget/EditText;

.field private isFixedLayoutContent:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 28
    const-class v0, Lcom/amazon/kcp/reader/NoteCardActivity;

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kcp/reader/NoteCardActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 27
    invoke-direct {p0}, Lcom/amazon/kcp/redding/ReddingActivity;-><init>()V

    const/4 v0, 0x0

    .line 38
    iput-boolean v0, p0, Lcom/amazon/kcp/reader/NoteCardActivity;->isFixedLayoutContent:Z

    return-void
.end method

.method static synthetic access$000(Lcom/amazon/kcp/reader/NoteCardActivity;)V
    .locals 0

    .line 27
    invoke-direct {p0}, Lcom/amazon/kcp/reader/NoteCardActivity;->onDelete()V

    return-void
.end method

.method static synthetic access$100(Lcom/amazon/kcp/reader/NoteCardActivity;ZLandroidx/appcompat/app/AlertDialog;)V
    .locals 0

    .line 27
    invoke-direct {p0, p1, p2}, Lcom/amazon/kcp/reader/NoteCardActivity;->updateForDialogBoxColorMode(ZLandroidx/appcompat/app/AlertDialog;)V

    return-void
.end method

.method static synthetic access$200(Lcom/amazon/kcp/reader/NoteCardActivity;)V
    .locals 0

    .line 27
    invoke-direct {p0}, Lcom/amazon/kcp/reader/NoteCardActivity;->deleteAndExit()V

    return-void
.end method

.method static synthetic access$300(Lcom/amazon/kcp/reader/NoteCardActivity;)V
    .locals 0

    .line 27
    invoke-direct {p0}, Lcom/amazon/kcp/reader/NoteCardActivity;->showNotecardDialog()V

    return-void
.end method

.method private deleteAndExit()V
    .locals 2

    .line 243
    iget-object v0, p0, Lcom/amazon/kcp/reader/NoteCardActivity;->data:Lcom/amazon/kcp/reader/notebook/notecard/NoteCardUIData;

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/notebook/notecard/NoteCardUIData;->hasValidAnnotationIndex()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 244
    iget-object v0, p0, Lcom/amazon/kcp/reader/NoteCardActivity;->data:Lcom/amazon/kcp/reader/notebook/notecard/NoteCardUIData;

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/notebook/notecard/NoteCardUIData;->getDeleteIntent()Landroid/content/Intent;

    move-result-object v0

    const/4 v1, -0x1

    .line 245
    invoke-virtual {p0, v1, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 247
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method private onDelete()V
    .locals 3

    .line 164
    new-instance v0, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 166
    sget v1, Lcom/amazon/kindle/krl/R$string;->annotation_verify_delete_title:I

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(I)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 167
    sget v1, Lcom/amazon/kindle/krl/R$string;->annotation_verify_delete_message:I

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(I)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 168
    sget v1, Lcom/amazon/kindle/krl/R$string;->notes_context_delete:I

    new-instance v2, Lcom/amazon/kcp/reader/NoteCardActivity$7;

    invoke-direct {v2, p0}, Lcom/amazon/kcp/reader/NoteCardActivity$7;-><init>(Lcom/amazon/kcp/reader/NoteCardActivity;)V

    invoke-virtual {v0, v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 175
    sget v1, Lcom/amazon/kindle/krl/R$string;->cancel:I

    new-instance v2, Lcom/amazon/kcp/reader/NoteCardActivity$8;

    invoke-direct {v2, p0}, Lcom/amazon/kcp/reader/NoteCardActivity$8;-><init>(Lcom/amazon/kcp/reader/NoteCardActivity;)V

    invoke-virtual {v0, v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 183
    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object v0

    .line 185
    new-instance v1, Lcom/amazon/kcp/reader/NoteCardActivity$9;

    invoke-direct {v1, p0}, Lcom/amazon/kcp/reader/NoteCardActivity$9;-><init>(Lcom/amazon/kcp/reader/NoteCardActivity;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 192
    new-instance v1, Lcom/amazon/kcp/reader/NoteCardActivity$10;

    invoke-direct {v1, p0}, Lcom/amazon/kcp/reader/NoteCardActivity$10;-><init>(Lcom/amazon/kcp/reader/NoteCardActivity;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 201
    invoke-static {p0, v0}, Lcom/amazon/kindle/dialog/DialogManager;->showDialogSafely(Landroid/content/Context;Landroid/app/Dialog;)Z

    return-void
.end method

.method private showNotecardDialog()V
    .locals 2

    .line 205
    iget-object v0, p0, Lcom/amazon/kcp/reader/NoteCardActivity;->dialog:Landroidx/appcompat/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 206
    invoke-static {p0, v0}, Lcom/amazon/kindle/dialog/DialogManager;->showDialogSafely(Landroid/content/Context;Landroid/app/Dialog;)Z

    goto :goto_0

    .line 208
    :cond_0
    sget-object v0, Lcom/amazon/kcp/reader/NoteCardActivity;->TAG:Ljava/lang/String;

    const-string v1, "Dialog object was null, so have to finish the notecard activity"

    invoke-static {v0, v1}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 209
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :goto_0
    return-void
.end method

.method private updateForDialogBoxColorMode(ZLandroidx/appcompat/app/AlertDialog;)V
    .locals 4

    const/4 v0, -0x1

    .line 222
    invoke-virtual {p2, v0}, Landroidx/appcompat/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    .line 223
    invoke-virtual {v0}, Landroid/widget/Button;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 224
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/amazon/kindle/krl/R$color;->gray:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    :cond_0
    const/4 v1, -0x3

    const/4 v2, -0x2

    if-eqz p1, :cond_2

    .line 227
    invoke-virtual {v0}, Landroid/widget/Button;->isEnabled()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 228
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v3, Lcom/amazon/kindle/krl/R$color;->white:I

    invoke-virtual {p1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setTextColor(I)V

    .line 230
    :cond_1
    invoke-virtual {p2, v2}, Landroidx/appcompat/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object p1

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/amazon/kindle/krl/R$color;->white:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setTextColor(I)V

    .line 231
    invoke-virtual {p2, v1}, Landroidx/appcompat/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object p1

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Lcom/amazon/kindle/krl/R$color;->white:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setTextColor(I)V

    goto :goto_0

    .line 233
    :cond_2
    invoke-virtual {v0}, Landroid/widget/Button;->isEnabled()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 234
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v3, Lcom/amazon/kindle/krl/R$color;->black:I

    invoke-virtual {p1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setTextColor(I)V

    .line 236
    :cond_3
    invoke-virtual {p2, v2}, Landroidx/appcompat/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object p1

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/amazon/kindle/krl/R$color;->black:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setTextColor(I)V

    .line 237
    invoke-virtual {p2, v1}, Landroidx/appcompat/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object p1

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Lcom/amazon/kindle/krl/R$color;->black:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setTextColor(I)V

    :goto_0
    return-void
.end method


# virtual methods
.method protected getThemeResourceId(Lcom/amazon/kindle/krx/theme/Theme;)I
    .locals 1

    .line 144
    invoke-static {}, Lcom/amazon/kcp/debug/DarkModeUtils;->supportsThemeChangeForFixedFormat()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/amazon/kcp/reader/NoteCardActivity;->isFixedLayoutContent:Z

    if-eqz v0, :cond_0

    .line 146
    sget p1, Lcom/amazon/kindle/krl/R$style;->Theme_EditNote_Dark:I

    return p1

    .line 148
    :cond_0
    invoke-super {p0, p1}, Lcom/amazon/kcp/redding/ThemeActivity;->getThemeResourceId(Lcom/amazon/kindle/krx/theme/Theme;)I

    move-result p1

    return p1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5

    .line 42
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getReaderController()Lcom/amazon/kcp/reader/IReaderController;

    move-result-object v0

    check-cast v0, Lcom/amazon/kcp/reader/ReaderController;

    invoke-virtual {v0, p0}, Lcom/amazon/kcp/reader/ReaderController;->bindToCurrentBook(Landroid/app/Activity;)Lcom/amazon/android/docviewer/KindleDocViewer;

    move-result-object v0

    .line 43
    invoke-interface {v0}, Lcom/amazon/android/docviewer/KindleDocViewer;->getBookInfo()Lcom/amazon/kindle/model/content/ILocalBookItem;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kindle/model/content/ILocalBookInfo;->isFixedLayout()Z

    move-result v1

    iput-boolean v1, p0, Lcom/amazon/kcp/reader/NoteCardActivity;->isFixedLayoutContent:Z

    .line 45
    invoke-super {p0, p1}, Lcom/amazon/kcp/redding/ReddingActivity;->onCreate(Landroid/os/Bundle;)V

    .line 47
    sget p1, Lcom/amazon/kindle/krl/R$layout;->notecard_edit_layout:I

    const/4 v1, 0x0

    invoke-static {p0, p1, v1}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 48
    sget v1, Lcom/amazon/kindle/krl/R$id;->edit_note_text:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/amazon/kcp/reader/NoteCardActivity;->editText:Landroid/widget/EditText;

    if-nez v1, :cond_0

    .line 51
    sget-object p1, Lcom/amazon/kcp/reader/NoteCardActivity;->TAG:Ljava/lang/String;

    const-string v0, "editText is null. Do not attempt creating a dialog!"

    invoke-static {p1, v0}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    .line 56
    :cond_0
    new-instance v2, Lcom/amazon/kcp/reader/notebook/notecard/NoteCardUIData;

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/amazon/kcp/reader/notebook/notecard/NoteCardUIData;-><init>(Landroid/os/Bundle;)V

    iput-object v2, p0, Lcom/amazon/kcp/reader/NoteCardActivity;->data:Lcom/amazon/kcp/reader/notebook/notecard/NoteCardUIData;

    const/4 v2, 0x0

    .line 59
    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setSingleLine(Z)V

    .line 60
    iget-object v3, p0, Lcom/amazon/kcp/reader/NoteCardActivity;->data:Lcom/amazon/kcp/reader/notebook/notecard/NoteCardUIData;

    invoke-virtual {v3}, Lcom/amazon/kcp/reader/notebook/notecard/NoteCardUIData;->getText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 62
    invoke-interface {v0}, Lcom/amazon/android/docviewer/KindleDocViewer;->getColorModeFromAppTheme()Lcom/amazon/android/docviewer/KindleDocColorMode;

    move-result-object v3

    invoke-virtual {v3}, Lcom/amazon/android/docviewer/KindleDocColorMode;->hasDarkBackground()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 63
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/amazon/kindle/krl/R$color;->white:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setTextColor(I)V

    .line 66
    :cond_1
    invoke-static {v1, v0}, Lcom/amazon/kcp/font/FontUtils;->setTypefaceIfNeeded(Landroid/widget/TextView;Lcom/amazon/android/docviewer/KindleDocViewer;)Z

    .line 68
    new-instance v1, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 69
    iget-object v3, p0, Lcom/amazon/kcp/reader/NoteCardActivity;->data:Lcom/amazon/kcp/reader/notebook/notecard/NoteCardUIData;

    invoke-virtual {v3}, Lcom/amazon/kcp/reader/notebook/notecard/NoteCardUIData;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 70
    sget v3, Lcom/amazon/kindle/krl/R$string;->save:I

    new-instance v4, Lcom/amazon/kcp/reader/NoteCardActivity$1;

    invoke-direct {v4, p0}, Lcom/amazon/kcp/reader/NoteCardActivity$1;-><init>(Lcom/amazon/kcp/reader/NoteCardActivity;)V

    invoke-virtual {v1, v3, v4}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 76
    sget v3, Lcom/amazon/kindle/krl/R$string;->cancel:I

    new-instance v4, Lcom/amazon/kcp/reader/NoteCardActivity$2;

    invoke-direct {v4, p0}, Lcom/amazon/kcp/reader/NoteCardActivity$2;-><init>(Lcom/amazon/kcp/reader/NoteCardActivity;)V

    invoke-virtual {v1, v3, v4}, Landroidx/appcompat/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 83
    iget-object v3, p0, Lcom/amazon/kcp/reader/NoteCardActivity;->data:Lcom/amazon/kcp/reader/notebook/notecard/NoteCardUIData;

    invoke-virtual {v3}, Lcom/amazon/kcp/reader/notebook/notecard/NoteCardUIData;->hasValidAnnotationIndex()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 84
    sget v3, Lcom/amazon/kindle/krl/R$string;->delete:I

    new-instance v4, Lcom/amazon/kcp/reader/NoteCardActivity$3;

    invoke-direct {v4, p0}, Lcom/amazon/kcp/reader/NoteCardActivity$3;-><init>(Lcom/amazon/kcp/reader/NoteCardActivity;)V

    invoke-virtual {v1, v3, v4}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 92
    :cond_2
    invoke-virtual {v1, p1}, Landroidx/appcompat/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 93
    invoke-virtual {v1}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p1

    .line 95
    new-instance v1, Lcom/amazon/kcp/reader/NoteCardActivity$4;

    invoke-direct {v1, p0}, Lcom/amazon/kcp/reader/NoteCardActivity$4;-><init>(Lcom/amazon/kcp/reader/NoteCardActivity;)V

    invoke-virtual {p1, v1}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 102
    new-instance v1, Lcom/amazon/kcp/reader/NoteCardActivity$5;

    invoke-direct {v1, p0}, Lcom/amazon/kcp/reader/NoteCardActivity$5;-><init>(Lcom/amazon/kcp/reader/NoteCardActivity;)V

    invoke-virtual {p1, v1}, Landroid/app/Dialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 112
    iput-object p1, p0, Lcom/amazon/kcp/reader/NoteCardActivity;->dialog:Landroidx/appcompat/app/AlertDialog;

    .line 113
    invoke-static {p0, p1}, Lcom/amazon/kindle/dialog/DialogManager;->showDialogSafely(Landroid/content/Context;Landroid/app/Dialog;)Z

    .line 115
    iget-object v1, p0, Lcom/amazon/kcp/reader/NoteCardActivity;->editText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/amazon/kcp/util/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, -0x1

    .line 116
    invoke-virtual {p1, v1}, Landroidx/appcompat/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 119
    :cond_3
    iget-object v1, p0, Lcom/amazon/kcp/reader/NoteCardActivity;->editText:Landroid/widget/EditText;

    new-instance v2, Lcom/amazon/kcp/reader/NoteCardActivity$6;

    invoke-direct {v2, p0, p1, v0}, Lcom/amazon/kcp/reader/NoteCardActivity$6;-><init>(Lcom/amazon/kcp/reader/NoteCardActivity;Landroidx/appcompat/app/AlertDialog;Lcom/amazon/android/docviewer/KindleDocViewer;)V

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 137
    invoke-interface {v0}, Lcom/amazon/android/docviewer/KindleDocViewer;->getColorModeFromAppTheme()Lcom/amazon/android/docviewer/KindleDocColorMode;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/android/docviewer/KindleDocColorMode;->hasDarkBackground()Z

    move-result v0

    invoke-direct {p0, v0, p1}, Lcom/amazon/kcp/reader/NoteCardActivity;->updateForDialogBoxColorMode(ZLandroidx/appcompat/app/AlertDialog;)V

    .line 139
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/amazon/kindle/krl/R$color;->medium_transparent_black:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p1, v0}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 262
    invoke-super {p0}, Lcom/amazon/kcp/redding/ReddingActivity;->onDestroy()V

    .line 263
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getReaderController()Lcom/amazon/kcp/reader/IReaderController;

    move-result-object v0

    check-cast v0, Lcom/amazon/kcp/reader/ReaderController;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/amazon/kcp/reader/ReaderController;->unbindFromCurrentBook(Landroid/app/Activity;Z)V

    return-void
.end method

.method protected onStart()V
    .locals 2

    .line 154
    invoke-super {p0}, Lcom/amazon/kcp/redding/ReddingActivity;->onStart()V

    .line 157
    iget-object v0, p0, Lcom/amazon/kcp/reader/NoteCardActivity;->editText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    return-void
.end method

.method protected saveAndExit()V
    .locals 2

    .line 254
    iget-object v0, p0, Lcom/amazon/kcp/reader/NoteCardActivity;->editText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 255
    iget-object v1, p0, Lcom/amazon/kcp/reader/NoteCardActivity;->data:Lcom/amazon/kcp/reader/notebook/notecard/NoteCardUIData;

    invoke-virtual {v1, v0}, Lcom/amazon/kcp/reader/notebook/notecard/NoteCardUIData;->getSaveIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const/4 v1, -0x1

    .line 256
    invoke-virtual {p0, v1, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 257
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method
