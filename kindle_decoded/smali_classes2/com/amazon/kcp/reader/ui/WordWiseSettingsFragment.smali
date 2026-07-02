.class public Lcom/amazon/kcp/reader/ui/WordWiseSettingsFragment;
.super Landroidx/fragment/app/Fragment;
.source "WordWiseSettingsFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kcp/reader/ui/WordWiseSettingsFragment$SettingsListAdapter;,
        Lcom/amazon/kcp/reader/ui/WordWiseSettingsFragment$SettingsViewType;,
        Lcom/amazon/kcp/reader/ui/WordWiseSettingsFragment$SettingsItem;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private languageDescriptionTextBox:Landroid/widget/TextView;

.field private listAdapter:Landroid/widget/BaseAdapter;

.field private settingsItemsValues:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amazon/kcp/reader/ui/WordWiseSettingsFragment$SettingsItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 37
    const-class v0, Lcom/amazon/kcp/reader/ui/WordWiseSettingsFragment;

    invoke-static {v0}, Lcom/amazon/kcp/wordwise/util/WordWiseUtils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kcp/reader/ui/WordWiseSettingsFragment;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 36
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    .line 39
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amazon/kcp/reader/ui/WordWiseSettingsFragment;->settingsItemsValues:Ljava/util/List;

    .line 40
    new-instance v0, Lcom/amazon/kcp/reader/ui/WordWiseSettingsFragment$SettingsListAdapter;

    invoke-direct {v0, p0}, Lcom/amazon/kcp/reader/ui/WordWiseSettingsFragment$SettingsListAdapter;-><init>(Lcom/amazon/kcp/reader/ui/WordWiseSettingsFragment;)V

    iput-object v0, p0, Lcom/amazon/kcp/reader/ui/WordWiseSettingsFragment;->listAdapter:Landroid/widget/BaseAdapter;

    return-void
.end method

.method static synthetic access$000(Lcom/amazon/kcp/reader/ui/WordWiseSettingsFragment;)Ljava/util/List;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/amazon/kcp/reader/ui/WordWiseSettingsFragment;->settingsItemsValues:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$100(Lcom/amazon/kcp/reader/ui/WordWiseSettingsFragment;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 0

    .line 36
    invoke-direct {p0, p1}, Lcom/amazon/kcp/reader/ui/WordWiseSettingsFragment;->createTwoLineCheckBox(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$200(Lcom/amazon/kcp/reader/ui/WordWiseSettingsFragment;Lcom/amazon/kcp/reader/ui/WordWiseSettingsFragment$SettingsItem;Landroid/widget/Checkable;)Z
    .locals 0

    .line 36
    invoke-direct {p0, p1, p2}, Lcom/amazon/kcp/reader/ui/WordWiseSettingsFragment;->prepareSettingsItemCheckBox(Lcom/amazon/kcp/reader/ui/WordWiseSettingsFragment$SettingsItem;Landroid/widget/Checkable;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$300(Lcom/amazon/kcp/reader/ui/WordWiseSettingsFragment;Lcom/amazon/kcp/reader/ui/WordWiseSettingsFragment$SettingsItem;Landroid/widget/Checkable;Landroid/view/View;)V
    .locals 0

    .line 36
    invoke-direct {p0, p1, p2, p3}, Lcom/amazon/kcp/reader/ui/WordWiseSettingsFragment;->onSettingsItemCheckBoxClicked(Lcom/amazon/kcp/reader/ui/WordWiseSettingsFragment$SettingsItem;Landroid/widget/Checkable;Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$400(Lcom/amazon/kcp/reader/ui/WordWiseSettingsFragment;)Landroid/widget/TextView;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/amazon/kcp/reader/ui/WordWiseSettingsFragment;->languageDescriptionTextBox:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$402(Lcom/amazon/kcp/reader/ui/WordWiseSettingsFragment;Landroid/widget/TextView;)Landroid/widget/TextView;
    .locals 0

    .line 36
    iput-object p1, p0, Lcom/amazon/kcp/reader/ui/WordWiseSettingsFragment;->languageDescriptionTextBox:Landroid/widget/TextView;

    return-object p1
.end method

.method static synthetic access$600(Lcom/amazon/kcp/reader/ui/WordWiseSettingsFragment;)V
    .locals 0

    .line 36
    invoke-direct {p0}, Lcom/amazon/kcp/reader/ui/WordWiseSettingsFragment;->onLanguageItemClicked()V

    return-void
.end method

.method private createTwoLineCheckBox(Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    .line 274
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/amazon/kindle/ww/R$layout;->checkbox_list_item_2:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method private onLanguageItemClicked()V
    .locals 5

    .line 278
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/amazon/kindle/ww/R$string;->wordwise_settings_language_menu_item_english:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 279
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/amazon/kindle/ww/R$string;->wordwise_settings_language_menu_item_chinese:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/CharSequence;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const/4 v0, 0x1

    aput-object v1, v2, v0

    .line 281
    new-instance v0, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 282
    sget v1, Lcom/amazon/kindle/ww/R$string;->wordwise_settings_language_menu_title:I

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(I)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 283
    invoke-static {}, Lcom/amazon/kcp/wordwise/plugin/WordWisePlugin;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    if-nez v1, :cond_0

    .line 286
    sget-object v1, Lcom/amazon/kcp/wordwise/plugin/WordWisePlugin;->DEFAULT_WORDWISE_SETTING_LANGUAGE:Lcom/amazon/kcp/wordwise/language/WordWiseSettingLanguage;

    invoke-virtual {v1}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 288
    :cond_0
    sget-object v3, Lcom/amazon/kcp/wordwise/plugin/WordWisePreferences;->WORDWISE_LANGUAGE:Lcom/amazon/kcp/wordwise/plugin/WordWisePreferences;

    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/amazon/kcp/wordwise/plugin/WordWisePlugin;->DEFAULT_WORDWISE_SETTING_LANGUAGE:Lcom/amazon/kcp/wordwise/language/WordWiseSettingLanguage;

    invoke-virtual {v4}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 291
    :goto_0
    sget-object v3, Lcom/amazon/kcp/wordwise/language/WordWiseSettingLanguage;->CHINESE:Lcom/amazon/kcp/wordwise/language/WordWiseSettingLanguage;

    invoke-virtual {v3}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 295
    new-instance v3, Lcom/amazon/kcp/reader/ui/WordWiseSettingsFragment$1;

    invoke-direct {v3, p0}, Lcom/amazon/kcp/reader/ui/WordWiseSettingsFragment$1;-><init>(Lcom/amazon/kcp/reader/ui/WordWiseSettingsFragment;)V

    invoke-virtual {v0, v2, v1, v3}, Landroidx/appcompat/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 322
    sget v1, Lcom/amazon/kindle/ww/R$string;->cancel:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 324
    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object v0

    .line 325
    new-instance v1, Lcom/amazon/kcp/reader/ui/WordWiseSettingsFragment$2;

    invoke-direct {v1, p0}, Lcom/amazon/kcp/reader/ui/WordWiseSettingsFragment$2;-><init>(Lcom/amazon/kcp/reader/ui/WordWiseSettingsFragment;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 331
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/amazon/kindle/dialog/DialogManager;->showDialogSafely(Landroid/content/Context;Landroid/app/Dialog;)Z

    return-void
.end method

.method private onSettingsItemCheckBoxClicked(Lcom/amazon/kcp/reader/ui/WordWiseSettingsFragment$SettingsItem;Landroid/widget/Checkable;Landroid/view/View;)V
    .locals 1

    .line 381
    invoke-interface {p2}, Landroid/widget/Checkable;->toggle()V

    .line 382
    invoke-interface {p2}, Landroid/widget/Checkable;->isChecked()Z

    move-result p2

    .line 383
    invoke-static {}, Lcom/amazon/kcp/reader/ui/WordWiseSettingsFragment$SettingsItem;->access$500()Lcom/amazon/kcp/reader/ui/WordWiseSettingsFragment$SettingsItem;

    move-result-object p3

    if-ne p1, p3, :cond_0

    .line 385
    iget-object p3, p0, Lcom/amazon/kcp/reader/ui/WordWiseSettingsFragment;->listAdapter:Landroid/widget/BaseAdapter;

    invoke-virtual {p3}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 389
    :cond_0
    invoke-virtual {p1, p2}, Lcom/amazon/kcp/reader/ui/WordWiseSettingsFragment$SettingsItem;->setChecked(Z)V

    .line 391
    invoke-static {}, Lcom/amazon/kcp/wordwise/plugin/WordWisePlugin;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object p3

    if-nez p3, :cond_1

    return-void

    .line 398
    :cond_1
    invoke-static {}, Lcom/amazon/kcp/reader/ui/WordWiseSettingsFragment$SettingsItem;->access$500()Lcom/amazon/kcp/reader/ui/WordWiseSettingsFragment$SettingsItem;

    move-result-object v0

    if-ne p1, v0, :cond_2

    const-string/jumbo p1, "word_wise"

    .line 399
    invoke-static {p1, p2}, Lcom/amazon/kcp/util/fastmetrics/MoreSettingsPageFastMetrics;->reportToggleItem(Ljava/lang/String;Z)V

    .line 401
    invoke-static {p2}, Lcom/amazon/kcp/wordwise/plugin/WordWisePlugin;->setWordWiseEnabled(Z)V

    goto :goto_0

    .line 402
    :cond_2
    invoke-static {}, Lcom/amazon/kcp/reader/ui/WordWiseSettingsFragment$SettingsItem;->access$900()Lcom/amazon/kcp/reader/ui/WordWiseSettingsFragment$SettingsItem;

    move-result-object v0

    if-ne p1, v0, :cond_3

    const-string p1, "show_multiple_choice_hints"

    .line 403
    invoke-static {p1, p2}, Lcom/amazon/kcp/util/fastmetrics/MoreSettingsPageFastMetrics;->reportToggleItem(Ljava/lang/String;Z)V

    .line 404
    invoke-interface {p3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 405
    sget-object p3, Lcom/amazon/kcp/wordwise/plugin/WordWisePreferences;->WORDWISE_SHOW_MULTIPLE_CHOICE:Lcom/amazon/kcp/wordwise/plugin/WordWisePreferences;

    invoke-virtual {p3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p3

    invoke-interface {p1, p3, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 406
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 407
    invoke-static {}, Lcom/amazon/kcp/wordwise/plugin/WordWisePlugin;->refreshGlosses()V

    :cond_3
    :goto_0
    return-void
.end method

.method private populateSettingsList()V
    .locals 2

    .line 335
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/WordWiseSettingsFragment;->settingsItemsValues:Ljava/util/List;

    invoke-static {}, Lcom/amazon/kcp/reader/ui/WordWiseSettingsFragment$SettingsItem;->access$800()Lcom/amazon/kcp/reader/ui/WordWiseSettingsFragment$SettingsItem;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 336
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/WordWiseSettingsFragment;->settingsItemsValues:Ljava/util/List;

    invoke-static {}, Lcom/amazon/kcp/reader/ui/WordWiseSettingsFragment$SettingsItem;->access$500()Lcom/amazon/kcp/reader/ui/WordWiseSettingsFragment$SettingsItem;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 337
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/WordWiseSettingsFragment;->settingsItemsValues:Ljava/util/List;

    invoke-static {}, Lcom/amazon/kcp/reader/ui/WordWiseSettingsFragment$SettingsItem;->access$900()Lcom/amazon/kcp/reader/ui/WordWiseSettingsFragment$SettingsItem;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 338
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/WordWiseSettingsFragment;->settingsItemsValues:Ljava/util/List;

    invoke-static {}, Lcom/amazon/kcp/reader/ui/WordWiseSettingsFragment$SettingsItem;->access$700()Lcom/amazon/kcp/reader/ui/WordWiseSettingsFragment$SettingsItem;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private prepareSettingsItemCheckBox(Lcom/amazon/kcp/reader/ui/WordWiseSettingsFragment$SettingsItem;Landroid/widget/Checkable;)Z
    .locals 4

    .line 350
    invoke-static {}, Lcom/amazon/kcp/wordwise/plugin/WordWisePlugin;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 352
    sget-object v1, Lcom/amazon/kcp/wordwise/plugin/WordWisePreferences;->WORDWISE_ENABLED:Lcom/amazon/kcp/wordwise/plugin/WordWisePreferences;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 353
    invoke-static {}, Lcom/amazon/kcp/reader/ui/WordWiseSettingsFragment$SettingsItem;->access$500()Lcom/amazon/kcp/reader/ui/WordWiseSettingsFragment$SettingsItem;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/amazon/kcp/reader/ui/WordWiseSettingsFragment$SettingsItem;->setChecked(Z)V

    goto :goto_0

    .line 356
    :cond_0
    invoke-static {}, Lcom/amazon/kcp/reader/ui/WordWiseSettingsFragment$SettingsItem;->access$500()Lcom/amazon/kcp/reader/ui/WordWiseSettingsFragment$SettingsItem;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazon/kcp/reader/ui/WordWiseSettingsFragment$SettingsItem;->isChecked()Z

    move-result v1

    .line 359
    :goto_0
    invoke-static {}, Lcom/amazon/kcp/reader/ui/WordWiseSettingsFragment$SettingsItem;->access$500()Lcom/amazon/kcp/reader/ui/WordWiseSettingsFragment$SettingsItem;

    move-result-object v2

    const/4 v3, 0x1

    if-ne p1, v2, :cond_1

    .line 361
    invoke-interface {p2, v1}, Landroid/widget/Checkable;->setChecked(Z)V

    return v3

    .line 366
    :cond_1
    invoke-static {}, Lcom/amazon/kcp/reader/ui/WordWiseSettingsFragment$SettingsItem;->access$900()Lcom/amazon/kcp/reader/ui/WordWiseSettingsFragment$SettingsItem;

    move-result-object v2

    if-ne p1, v2, :cond_3

    if-eqz v0, :cond_2

    .line 369
    sget-object v2, Lcom/amazon/kcp/wordwise/plugin/WordWisePreferences;->WORDWISE_SHOW_MULTIPLE_CHOICE:Lcom/amazon/kcp/wordwise/plugin/WordWisePreferences;

    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 370
    invoke-virtual {p1, v0}, Lcom/amazon/kcp/reader/ui/WordWiseSettingsFragment$SettingsItem;->setChecked(Z)V

    goto :goto_1

    .line 373
    :cond_2
    invoke-virtual {p1}, Lcom/amazon/kcp/reader/ui/WordWiseSettingsFragment$SettingsItem;->isChecked()Z

    move-result v0

    .line 375
    :goto_1
    invoke-interface {p2, v0}, Landroid/widget/Checkable;->setChecked(Z)V

    :cond_3
    return v1
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 413
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 416
    invoke-direct {p0}, Lcom/amazon/kcp/reader/ui/WordWiseSettingsFragment;->populateSettingsList()V

    const/4 p1, 0x1

    .line 417
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->setHasOptionsMenu(Z)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 422
    sget p3, Lcom/amazon/kindle/ww/R$layout;->settings_screen:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 424
    sget p2, Lcom/amazon/kindle/ww/R$id;->list:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ListView;

    .line 425
    iget-object p3, p0, Lcom/amazon/kcp/reader/ui/WordWiseSettingsFragment;->listAdapter:Landroid/widget/BaseAdapter;

    invoke-virtual {p2, p3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-object p1
.end method
