.class Lcom/amazon/kcp/reader/ui/WordWiseSettingsFragment$SettingsListAdapter;
.super Landroid/widget/BaseAdapter;
.source "WordWiseSettingsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/reader/ui/WordWiseSettingsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SettingsListAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/reader/ui/WordWiseSettingsFragment;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/reader/ui/WordWiseSettingsFragment;)V
    .locals 0

    .line 135
    iput-object p1, p0, Lcom/amazon/kcp/reader/ui/WordWiseSettingsFragment$SettingsListAdapter;->this$0:Lcom/amazon/kcp/reader/ui/WordWiseSettingsFragment;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getCount()I
    .locals 1

    .line 139
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/WordWiseSettingsFragment$SettingsListAdapter;->this$0:Lcom/amazon/kcp/reader/ui/WordWiseSettingsFragment;

    invoke-static {v0}, Lcom/amazon/kcp/reader/ui/WordWiseSettingsFragment;->access$000(Lcom/amazon/kcp/reader/ui/WordWiseSettingsFragment;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    .line 144
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/WordWiseSettingsFragment$SettingsListAdapter;->this$0:Lcom/amazon/kcp/reader/ui/WordWiseSettingsFragment;

    invoke-static {v0}, Lcom/amazon/kcp/reader/ui/WordWiseSettingsFragment;->access$000(Lcom/amazon/kcp/reader/ui/WordWiseSettingsFragment;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 1

    .line 159
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/WordWiseSettingsFragment$SettingsListAdapter;->this$0:Lcom/amazon/kcp/reader/ui/WordWiseSettingsFragment;

    invoke-static {v0}, Lcom/amazon/kcp/reader/ui/WordWiseSettingsFragment;->access$000(Lcom/amazon/kcp/reader/ui/WordWiseSettingsFragment;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/kcp/reader/ui/WordWiseSettingsFragment$SettingsItem;

    .line 160
    iget-object p1, p1, Lcom/amazon/kcp/reader/ui/WordWiseSettingsFragment$SettingsItem;->viewType:Lcom/amazon/kcp/reader/ui/WordWiseSettingsFragment$SettingsViewType;

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    return p1
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5

    .line 177
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/WordWiseSettingsFragment$SettingsListAdapter;->this$0:Lcom/amazon/kcp/reader/ui/WordWiseSettingsFragment;

    invoke-static {v0}, Lcom/amazon/kcp/reader/ui/WordWiseSettingsFragment;->access$000(Lcom/amazon/kcp/reader/ui/WordWiseSettingsFragment;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/kcp/reader/ui/WordWiseSettingsFragment$SettingsItem;

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p2, :cond_3

    .line 179
    sget-object p2, Lcom/amazon/kcp/reader/ui/WordWiseSettingsFragment$3;->$SwitchMap$com$amazon$kcp$reader$ui$WordWiseSettingsFragment$SettingsViewType:[I

    iget-object v2, p1, Lcom/amazon/kcp/reader/ui/WordWiseSettingsFragment$SettingsItem;->viewType:Lcom/amazon/kcp/reader/ui/WordWiseSettingsFragment$SettingsViewType;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget p2, p2, v2

    if-eq p2, v0, :cond_2

    const/4 v2, 0x2

    if-eq p2, v2, :cond_1

    const/4 v2, 0x3

    if-eq p2, v2, :cond_0

    .line 191
    iget-object p2, p0, Lcom/amazon/kcp/reader/ui/WordWiseSettingsFragment$SettingsListAdapter;->this$0:Lcom/amazon/kcp/reader/ui/WordWiseSettingsFragment;

    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    invoke-virtual {p2}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p2

    sget v2, Lcom/amazon/kindle/ww/R$layout;->simple_list_title:I

    invoke-virtual {p2, v2, p3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    goto :goto_0

    .line 187
    :cond_0
    iget-object p2, p0, Lcom/amazon/kcp/reader/ui/WordWiseSettingsFragment$SettingsListAdapter;->this$0:Lcom/amazon/kcp/reader/ui/WordWiseSettingsFragment;

    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    invoke-virtual {p2}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p2

    sget v2, Lcom/amazon/kindle/ww/R$layout;->simple_list_item_2:I

    invoke-virtual {p2, v2, p3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    goto :goto_0

    .line 184
    :cond_1
    iget-object p2, p0, Lcom/amazon/kcp/reader/ui/WordWiseSettingsFragment$SettingsListAdapter;->this$0:Lcom/amazon/kcp/reader/ui/WordWiseSettingsFragment;

    invoke-static {p2, p3}, Lcom/amazon/kcp/reader/ui/WordWiseSettingsFragment;->access$100(Lcom/amazon/kcp/reader/ui/WordWiseSettingsFragment;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    goto :goto_0

    .line 181
    :cond_2
    iget-object p2, p0, Lcom/amazon/kcp/reader/ui/WordWiseSettingsFragment$SettingsListAdapter;->this$0:Lcom/amazon/kcp/reader/ui/WordWiseSettingsFragment;

    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    invoke-virtual {p2}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p2

    sget v2, Lcom/amazon/kindle/ww/R$layout;->simple_list_title:I

    invoke-virtual {p2, v2, p3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 197
    :cond_3
    :goto_0
    iget p3, p1, Lcom/amazon/kcp/reader/ui/WordWiseSettingsFragment$SettingsItem;->id:I

    invoke-virtual {p2, p3}, Landroid/view/View;->setId(I)V

    const p3, 0x1020014

    .line 198
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    if-eqz p3, :cond_4

    .line 199
    iget v2, p1, Lcom/amazon/kcp/reader/ui/WordWiseSettingsFragment$SettingsItem;->name:I

    if-eqz v2, :cond_4

    .line 200
    invoke-virtual {p3, v2}, Landroid/widget/TextView;->setText(I)V

    .line 201
    iget-object v2, p1, Lcom/amazon/kcp/reader/ui/WordWiseSettingsFragment$SettingsItem;->viewType:Lcom/amazon/kcp/reader/ui/WordWiseSettingsFragment$SettingsViewType;

    sget-object v3, Lcom/amazon/kcp/reader/ui/WordWiseSettingsFragment$SettingsViewType;->TITLE:Lcom/amazon/kcp/reader/ui/WordWiseSettingsFragment$SettingsViewType;

    if-ne v2, v3, :cond_4

    .line 202
    iget-object v2, p0, Lcom/amazon/kcp/reader/ui/WordWiseSettingsFragment$SettingsListAdapter;->this$0:Lcom/amazon/kcp/reader/ui/WordWiseSettingsFragment;

    sget v3, Lcom/amazon/kindle/ww/R$string;->settings_header:I

    new-array v0, v0, [Ljava/lang/Object;

    iget v4, p1, Lcom/amazon/kcp/reader/ui/WordWiseSettingsFragment$SettingsItem;->name:I

    invoke-virtual {v2, v4}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v1

    invoke-virtual {v2, v3, v0}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 207
    :cond_4
    sget p3, Lcom/amazon/kindle/ww/R$id;->checkbox:I

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    if-eqz p3, :cond_7

    .line 209
    iget v0, p1, Lcom/amazon/kcp/reader/ui/WordWiseSettingsFragment$SettingsItem;->description:I

    if-eqz v0, :cond_5

    .line 210
    move-object v2, p3

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(I)V

    .line 213
    :cond_5
    move-object v0, p3

    check-cast v0, Landroid/widget/Checkable;

    .line 214
    iget-object v2, p0, Lcom/amazon/kcp/reader/ui/WordWiseSettingsFragment$SettingsListAdapter;->this$0:Lcom/amazon/kcp/reader/ui/WordWiseSettingsFragment;

    invoke-static {v2, p1, v0}, Lcom/amazon/kcp/reader/ui/WordWiseSettingsFragment;->access$200(Lcom/amazon/kcp/reader/ui/WordWiseSettingsFragment;Lcom/amazon/kcp/reader/ui/WordWiseSettingsFragment$SettingsItem;Landroid/widget/Checkable;)Z

    move-result v2

    .line 215
    invoke-virtual {p2, v2}, Landroid/view/View;->setClickable(Z)V

    .line 216
    invoke-virtual {p2, v2}, Landroid/view/View;->setEnabled(Z)V

    .line 217
    instance-of v3, p3, Landroid/widget/CompoundButton;

    if-eqz v3, :cond_6

    .line 219
    move-object v3, p3

    check-cast v3, Landroid/widget/CompoundButton;

    .line 220
    invoke-virtual {v3, v1}, Landroid/widget/CompoundButton;->setClickable(Z)V

    .line 221
    invoke-virtual {v3, v2}, Landroid/widget/CompoundButton;->setEnabled(Z)V

    .line 224
    :cond_6
    new-instance v2, Lcom/amazon/kcp/reader/ui/WordWiseSettingsFragment$SettingsListAdapter$1;

    invoke-direct {v2, p0, p1, v0, p3}, Lcom/amazon/kcp/reader/ui/WordWiseSettingsFragment$SettingsListAdapter$1;-><init>(Lcom/amazon/kcp/reader/ui/WordWiseSettingsFragment$SettingsListAdapter;Lcom/amazon/kcp/reader/ui/WordWiseSettingsFragment$SettingsItem;Landroid/widget/Checkable;Landroid/view/View;)V

    invoke-virtual {p2, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 232
    :cond_7
    iget-object p1, p1, Lcom/amazon/kcp/reader/ui/WordWiseSettingsFragment$SettingsItem;->viewType:Lcom/amazon/kcp/reader/ui/WordWiseSettingsFragment$SettingsViewType;

    sget-object p3, Lcom/amazon/kcp/reader/ui/WordWiseSettingsFragment$SettingsViewType;->LANGUAGE:Lcom/amazon/kcp/reader/ui/WordWiseSettingsFragment$SettingsViewType;

    if-ne p1, p3, :cond_a

    .line 234
    iget-object p1, p0, Lcom/amazon/kcp/reader/ui/WordWiseSettingsFragment$SettingsListAdapter;->this$0:Lcom/amazon/kcp/reader/ui/WordWiseSettingsFragment;

    const p3, 0x1020015

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    invoke-static {p1, p3}, Lcom/amazon/kcp/reader/ui/WordWiseSettingsFragment;->access$402(Lcom/amazon/kcp/reader/ui/WordWiseSettingsFragment;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 236
    invoke-static {}, Lcom/amazon/kcp/wordwise/plugin/WordWisePlugin;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object p1

    if-eqz p1, :cond_9

    .line 238
    sget-object p3, Lcom/amazon/kcp/wordwise/plugin/WordWisePreferences;->WORDWISE_LANGUAGE:Lcom/amazon/kcp/wordwise/plugin/WordWisePreferences;

    invoke-virtual {p3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p3

    sget-object v0, Lcom/amazon/kcp/wordwise/plugin/WordWisePlugin;->DEFAULT_WORDWISE_SETTING_LANGUAGE:Lcom/amazon/kcp/wordwise/language/WordWiseSettingLanguage;

    invoke-virtual {v0}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, p3, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 239
    sget-object v0, Lcom/amazon/kcp/wordwise/plugin/WordWisePlugin;->DEFAULT_WORDWISE_SETTING_LANGUAGE:Lcom/amazon/kcp/wordwise/language/WordWiseSettingLanguage;

    invoke-virtual {v0}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_8

    .line 240
    iget-object p3, p0, Lcom/amazon/kcp/reader/ui/WordWiseSettingsFragment$SettingsListAdapter;->this$0:Lcom/amazon/kcp/reader/ui/WordWiseSettingsFragment;

    invoke-static {p3}, Lcom/amazon/kcp/reader/ui/WordWiseSettingsFragment;->access$400(Lcom/amazon/kcp/reader/ui/WordWiseSettingsFragment;)Landroid/widget/TextView;

    move-result-object p3

    sget v0, Lcom/amazon/kindle/ww/R$string;->wordwise_settings_language_english_description:I

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    .line 242
    :cond_8
    iget-object p3, p0, Lcom/amazon/kcp/reader/ui/WordWiseSettingsFragment$SettingsListAdapter;->this$0:Lcom/amazon/kcp/reader/ui/WordWiseSettingsFragment;

    invoke-static {p3}, Lcom/amazon/kcp/reader/ui/WordWiseSettingsFragment;->access$400(Lcom/amazon/kcp/reader/ui/WordWiseSettingsFragment;)Landroid/widget/TextView;

    move-result-object p3

    sget v0, Lcom/amazon/kindle/ww/R$string;->wordwise_settings_language_chinese_description:I

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setText(I)V

    .line 245
    :goto_1
    sget-object p3, Lcom/amazon/kcp/wordwise/plugin/WordWisePreferences;->WORDWISE_ENABLED:Lcom/amazon/kcp/wordwise/plugin/WordWisePreferences;

    invoke-virtual {p3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p3

    invoke-interface {p1, p3, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    goto :goto_2

    .line 247
    :cond_9
    iget-object p1, p0, Lcom/amazon/kcp/reader/ui/WordWiseSettingsFragment$SettingsListAdapter;->this$0:Lcom/amazon/kcp/reader/ui/WordWiseSettingsFragment;

    invoke-static {p1}, Lcom/amazon/kcp/reader/ui/WordWiseSettingsFragment;->access$400(Lcom/amazon/kcp/reader/ui/WordWiseSettingsFragment;)Landroid/widget/TextView;

    move-result-object p1

    sget p3, Lcom/amazon/kindle/ww/R$string;->wordwise_settings_language_english_description:I

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(I)V

    .line 248
    invoke-static {}, Lcom/amazon/kcp/reader/ui/WordWiseSettingsFragment$SettingsItem;->access$500()Lcom/amazon/kcp/reader/ui/WordWiseSettingsFragment$SettingsItem;

    move-result-object p1

    invoke-virtual {p1}, Lcom/amazon/kcp/reader/ui/WordWiseSettingsFragment$SettingsItem;->isChecked()Z

    move-result p1

    .line 251
    :goto_2
    invoke-virtual {p2, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 252
    invoke-virtual {p2, p1}, Landroid/view/View;->setClickable(Z)V

    .line 253
    new-instance p1, Lcom/amazon/kcp/reader/ui/WordWiseSettingsFragment$SettingsListAdapter$2;

    invoke-direct {p1, p0}, Lcom/amazon/kcp/reader/ui/WordWiseSettingsFragment$SettingsListAdapter$2;-><init>(Lcom/amazon/kcp/reader/ui/WordWiseSettingsFragment$SettingsListAdapter;)V

    invoke-virtual {p2, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_a
    return-object p2
.end method

.method public getViewTypeCount()I
    .locals 1

    .line 154
    invoke-static {}, Lcom/amazon/kcp/reader/ui/WordWiseSettingsFragment$SettingsViewType;->values()[Lcom/amazon/kcp/reader/ui/WordWiseSettingsFragment$SettingsViewType;

    move-result-object v0

    array-length v0, v0

    return v0
.end method

.method public isEnabled(I)Z
    .locals 1

    .line 171
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/WordWiseSettingsFragment$SettingsListAdapter;->this$0:Lcom/amazon/kcp/reader/ui/WordWiseSettingsFragment;

    invoke-static {v0}, Lcom/amazon/kcp/reader/ui/WordWiseSettingsFragment;->access$000(Lcom/amazon/kcp/reader/ui/WordWiseSettingsFragment;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/kcp/reader/ui/WordWiseSettingsFragment$SettingsItem;

    .line 172
    iget-object p1, p1, Lcom/amazon/kcp/reader/ui/WordWiseSettingsFragment$SettingsItem;->viewType:Lcom/amazon/kcp/reader/ui/WordWiseSettingsFragment$SettingsViewType;

    sget-object v0, Lcom/amazon/kcp/reader/ui/WordWiseSettingsFragment$SettingsViewType;->TITLE:Lcom/amazon/kcp/reader/ui/WordWiseSettingsFragment$SettingsViewType;

    if-eq p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
