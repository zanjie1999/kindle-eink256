.class Lcom/amazon/kcp/reader/ui/WordWiseSettingsFragment$1;
.super Ljava/lang/Object;
.source "WordWiseSettingsFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/reader/ui/WordWiseSettingsFragment;->onLanguageItemClicked()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/reader/ui/WordWiseSettingsFragment;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/reader/ui/WordWiseSettingsFragment;)V
    .locals 0

    .line 295
    iput-object p1, p0, Lcom/amazon/kcp/reader/ui/WordWiseSettingsFragment$1;->this$0:Lcom/amazon/kcp/reader/ui/WordWiseSettingsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .line 298
    invoke-static {}, Lcom/amazon/kcp/wordwise/plugin/WordWisePlugin;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    if-eqz p2, :cond_3

    const/4 v1, 0x1

    if-eq p2, v1, :cond_0

    goto :goto_0

    .line 310
    :cond_0
    iget-object p2, p0, Lcom/amazon/kcp/reader/ui/WordWiseSettingsFragment$1;->this$0:Lcom/amazon/kcp/reader/ui/WordWiseSettingsFragment;

    invoke-static {p2}, Lcom/amazon/kcp/reader/ui/WordWiseSettingsFragment;->access$400(Lcom/amazon/kcp/reader/ui/WordWiseSettingsFragment;)Landroid/widget/TextView;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 311
    iget-object p2, p0, Lcom/amazon/kcp/reader/ui/WordWiseSettingsFragment$1;->this$0:Lcom/amazon/kcp/reader/ui/WordWiseSettingsFragment;

    invoke-static {p2}, Lcom/amazon/kcp/reader/ui/WordWiseSettingsFragment;->access$400(Lcom/amazon/kcp/reader/ui/WordWiseSettingsFragment;)Landroid/widget/TextView;

    move-result-object p2

    sget v1, Lcom/amazon/kindle/ww/R$string;->wordwise_settings_language_chinese_description:I

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setText(I)V

    :cond_1
    if-eqz v0, :cond_2

    .line 314
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p2

    sget-object v0, Lcom/amazon/kcp/wordwise/plugin/WordWisePreferences;->WORDWISE_LANGUAGE:Lcom/amazon/kcp/wordwise/plugin/WordWisePreferences;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/amazon/kcp/wordwise/language/WordWiseSettingLanguage;->CHINESE:Lcom/amazon/kcp/wordwise/language/WordWiseSettingLanguage;

    invoke-virtual {v1}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p2

    invoke-interface {p2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 316
    :cond_2
    invoke-static {}, Lcom/amazon/kcp/reader/ui/WordWiseSettingsFragment$SettingsItem;->access$700()Lcom/amazon/kcp/reader/ui/WordWiseSettingsFragment$SettingsItem;

    move-result-object p2

    sget-object v0, Lcom/amazon/kcp/wordwise/language/WordWiseSettingLanguage;->CHINESE:Lcom/amazon/kcp/wordwise/language/WordWiseSettingLanguage;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/amazon/kcp/reader/ui/WordWiseSettingsFragment$SettingsItem;->setSelectedValue(I)V

    goto :goto_0

    .line 301
    :cond_3
    iget-object p2, p0, Lcom/amazon/kcp/reader/ui/WordWiseSettingsFragment$1;->this$0:Lcom/amazon/kcp/reader/ui/WordWiseSettingsFragment;

    invoke-static {p2}, Lcom/amazon/kcp/reader/ui/WordWiseSettingsFragment;->access$400(Lcom/amazon/kcp/reader/ui/WordWiseSettingsFragment;)Landroid/widget/TextView;

    move-result-object p2

    if-eqz p2, :cond_4

    .line 302
    iget-object p2, p0, Lcom/amazon/kcp/reader/ui/WordWiseSettingsFragment$1;->this$0:Lcom/amazon/kcp/reader/ui/WordWiseSettingsFragment;

    invoke-static {p2}, Lcom/amazon/kcp/reader/ui/WordWiseSettingsFragment;->access$400(Lcom/amazon/kcp/reader/ui/WordWiseSettingsFragment;)Landroid/widget/TextView;

    move-result-object p2

    sget v1, Lcom/amazon/kindle/ww/R$string;->wordwise_settings_language_english_description:I

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setText(I)V

    :cond_4
    if-eqz v0, :cond_5

    .line 305
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p2

    sget-object v0, Lcom/amazon/kcp/wordwise/plugin/WordWisePreferences;->WORDWISE_LANGUAGE:Lcom/amazon/kcp/wordwise/plugin/WordWisePreferences;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/amazon/kcp/wordwise/language/WordWiseSettingLanguage;->ENGLISH:Lcom/amazon/kcp/wordwise/language/WordWiseSettingLanguage;

    invoke-virtual {v1}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p2

    invoke-interface {p2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 307
    :cond_5
    invoke-static {}, Lcom/amazon/kcp/reader/ui/WordWiseSettingsFragment$SettingsItem;->access$700()Lcom/amazon/kcp/reader/ui/WordWiseSettingsFragment$SettingsItem;

    move-result-object p2

    sget-object v0, Lcom/amazon/kcp/wordwise/language/WordWiseSettingLanguage;->ENGLISH:Lcom/amazon/kcp/wordwise/language/WordWiseSettingLanguage;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/amazon/kcp/reader/ui/WordWiseSettingsFragment$SettingsItem;->setSelectedValue(I)V

    .line 319
    :goto_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
