.class public Lcom/amazon/kcp/reader/ui/WordWiseSettingsFragment$SettingsItem;
.super Ljava/lang/Object;
.source "WordWiseSettingsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/reader/ui/WordWiseSettingsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SettingsItem"
.end annotation


# static fields
.field private static final WORDWISE_ENABLED:Lcom/amazon/kcp/reader/ui/WordWiseSettingsFragment$SettingsItem;

.field private static final WORDWISE_GROUP:Lcom/amazon/kcp/reader/ui/WordWiseSettingsFragment$SettingsItem;

.field private static final WORDWISE_LANGUAGE:Lcom/amazon/kcp/reader/ui/WordWiseSettingsFragment$SettingsItem;

.field private static final WORDWISE_MULTICHOICE:Lcom/amazon/kcp/reader/ui/WordWiseSettingsFragment$SettingsItem;


# instance fields
.field final description:I

.field final id:I

.field final name:I

.field private value:I

.field final viewType:Lcom/amazon/kcp/reader/ui/WordWiseSettingsFragment$SettingsViewType;


# direct methods
.method static constructor <clinit>()V
    .locals 17

    .line 47
    new-instance v0, Lcom/amazon/kcp/reader/ui/WordWiseSettingsFragment$SettingsItem;

    sget-object v1, Lcom/amazon/kcp/reader/ui/WordWiseSettingsFragment$SettingsViewType;->TITLE:Lcom/amazon/kcp/reader/ui/WordWiseSettingsFragment$SettingsViewType;

    sget v2, Lcom/amazon/kindle/ww/R$string;->wordwise_settings_group:I

    sget v3, Lcom/amazon/kindle/ww/R$id;->settings_wordwise_group:I

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v4, v3}, Lcom/amazon/kcp/reader/ui/WordWiseSettingsFragment$SettingsItem;-><init>(Lcom/amazon/kcp/reader/ui/WordWiseSettingsFragment$SettingsViewType;III)V

    sput-object v0, Lcom/amazon/kcp/reader/ui/WordWiseSettingsFragment$SettingsItem;->WORDWISE_GROUP:Lcom/amazon/kcp/reader/ui/WordWiseSettingsFragment$SettingsItem;

    .line 48
    new-instance v0, Lcom/amazon/kcp/reader/ui/WordWiseSettingsFragment$SettingsItem;

    sget-object v6, Lcom/amazon/kcp/reader/ui/WordWiseSettingsFragment$SettingsViewType;->TWO_LINES_CHECKBOX:Lcom/amazon/kcp/reader/ui/WordWiseSettingsFragment$SettingsViewType;

    sget v7, Lcom/amazon/kindle/ww/R$string;->wordwise_settings_title:I

    sget v8, Lcom/amazon/kindle/ww/R$string;->wordwise_settings_subtitle:I

    sget v9, Lcom/amazon/kindle/ww/R$id;->settings_wordwise:I

    const/4 v10, 0x0

    move-object v5, v0

    invoke-direct/range {v5 .. v10}, Lcom/amazon/kcp/reader/ui/WordWiseSettingsFragment$SettingsItem;-><init>(Lcom/amazon/kcp/reader/ui/WordWiseSettingsFragment$SettingsViewType;IIIZ)V

    sput-object v0, Lcom/amazon/kcp/reader/ui/WordWiseSettingsFragment$SettingsItem;->WORDWISE_ENABLED:Lcom/amazon/kcp/reader/ui/WordWiseSettingsFragment$SettingsItem;

    .line 50
    new-instance v0, Lcom/amazon/kcp/reader/ui/WordWiseSettingsFragment$SettingsItem;

    sget-object v12, Lcom/amazon/kcp/reader/ui/WordWiseSettingsFragment$SettingsViewType;->TWO_LINES_CHECKBOX:Lcom/amazon/kcp/reader/ui/WordWiseSettingsFragment$SettingsViewType;

    sget v13, Lcom/amazon/kindle/ww/R$string;->wordwise_settings_multichoice_title:I

    sget v14, Lcom/amazon/kindle/ww/R$string;->wordwise_settings_multichoice_description:I

    sget v15, Lcom/amazon/kindle/ww/R$id;->settings_wordwise_multichoice:I

    const/16 v16, 0x1

    move-object v11, v0

    invoke-direct/range {v11 .. v16}, Lcom/amazon/kcp/reader/ui/WordWiseSettingsFragment$SettingsItem;-><init>(Lcom/amazon/kcp/reader/ui/WordWiseSettingsFragment$SettingsViewType;IIIZ)V

    sput-object v0, Lcom/amazon/kcp/reader/ui/WordWiseSettingsFragment$SettingsItem;->WORDWISE_MULTICHOICE:Lcom/amazon/kcp/reader/ui/WordWiseSettingsFragment$SettingsItem;

    .line 53
    new-instance v0, Lcom/amazon/kcp/reader/ui/WordWiseSettingsFragment$SettingsItem;

    sget-object v1, Lcom/amazon/kcp/reader/ui/WordWiseSettingsFragment$SettingsViewType;->LANGUAGE:Lcom/amazon/kcp/reader/ui/WordWiseSettingsFragment$SettingsViewType;

    sget v2, Lcom/amazon/kindle/ww/R$string;->wordwise_settings_language:I

    sget v3, Lcom/amazon/kindle/ww/R$id;->settings_wordwise_language:I

    invoke-direct {v0, v1, v2, v4, v3}, Lcom/amazon/kcp/reader/ui/WordWiseSettingsFragment$SettingsItem;-><init>(Lcom/amazon/kcp/reader/ui/WordWiseSettingsFragment$SettingsViewType;III)V

    sput-object v0, Lcom/amazon/kcp/reader/ui/WordWiseSettingsFragment$SettingsItem;->WORDWISE_LANGUAGE:Lcom/amazon/kcp/reader/ui/WordWiseSettingsFragment$SettingsItem;

    return-void
.end method

.method constructor <init>(Lcom/amazon/kcp/reader/ui/WordWiseSettingsFragment$SettingsViewType;III)V
    .locals 0

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    iput-object p1, p0, Lcom/amazon/kcp/reader/ui/WordWiseSettingsFragment$SettingsItem;->viewType:Lcom/amazon/kcp/reader/ui/WordWiseSettingsFragment$SettingsViewType;

    .line 65
    iput p2, p0, Lcom/amazon/kcp/reader/ui/WordWiseSettingsFragment$SettingsItem;->name:I

    .line 66
    iput p3, p0, Lcom/amazon/kcp/reader/ui/WordWiseSettingsFragment$SettingsItem;->description:I

    .line 67
    iput p4, p0, Lcom/amazon/kcp/reader/ui/WordWiseSettingsFragment$SettingsItem;->id:I

    const/4 p1, 0x0

    .line 68
    iput p1, p0, Lcom/amazon/kcp/reader/ui/WordWiseSettingsFragment$SettingsItem;->value:I

    return-void
.end method

.method constructor <init>(Lcom/amazon/kcp/reader/ui/WordWiseSettingsFragment$SettingsViewType;IIIZ)V
    .locals 0

    .line 72
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/amazon/kcp/reader/ui/WordWiseSettingsFragment$SettingsItem;-><init>(Lcom/amazon/kcp/reader/ui/WordWiseSettingsFragment$SettingsViewType;III)V

    .line 73
    iput p5, p0, Lcom/amazon/kcp/reader/ui/WordWiseSettingsFragment$SettingsItem;->value:I

    return-void
.end method

.method static synthetic access$500()Lcom/amazon/kcp/reader/ui/WordWiseSettingsFragment$SettingsItem;
    .locals 1

    .line 46
    sget-object v0, Lcom/amazon/kcp/reader/ui/WordWiseSettingsFragment$SettingsItem;->WORDWISE_ENABLED:Lcom/amazon/kcp/reader/ui/WordWiseSettingsFragment$SettingsItem;

    return-object v0
.end method

.method static synthetic access$700()Lcom/amazon/kcp/reader/ui/WordWiseSettingsFragment$SettingsItem;
    .locals 1

    .line 46
    sget-object v0, Lcom/amazon/kcp/reader/ui/WordWiseSettingsFragment$SettingsItem;->WORDWISE_LANGUAGE:Lcom/amazon/kcp/reader/ui/WordWiseSettingsFragment$SettingsItem;

    return-object v0
.end method

.method static synthetic access$800()Lcom/amazon/kcp/reader/ui/WordWiseSettingsFragment$SettingsItem;
    .locals 1

    .line 46
    sget-object v0, Lcom/amazon/kcp/reader/ui/WordWiseSettingsFragment$SettingsItem;->WORDWISE_GROUP:Lcom/amazon/kcp/reader/ui/WordWiseSettingsFragment$SettingsItem;

    return-object v0
.end method

.method static synthetic access$900()Lcom/amazon/kcp/reader/ui/WordWiseSettingsFragment$SettingsItem;
    .locals 1

    .line 46
    sget-object v0, Lcom/amazon/kcp/reader/ui/WordWiseSettingsFragment$SettingsItem;->WORDWISE_MULTICHOICE:Lcom/amazon/kcp/reader/ui/WordWiseSettingsFragment$SettingsItem;

    return-object v0
.end method

.method public static getLanguageValue(Lcom/amazon/kcp/wordwise/plugin/WordWisePreferences;)Lcom/amazon/kcp/wordwise/language/WordWiseSettingLanguage;
    .locals 1

    .line 112
    sget-object v0, Lcom/amazon/kcp/wordwise/plugin/WordWisePreferences;->WORDWISE_LANGUAGE:Lcom/amazon/kcp/wordwise/plugin/WordWisePreferences;

    if-ne p0, v0, :cond_0

    .line 113
    sget-object p0, Lcom/amazon/kcp/reader/ui/WordWiseSettingsFragment$SettingsItem;->WORDWISE_LANGUAGE:Lcom/amazon/kcp/reader/ui/WordWiseSettingsFragment$SettingsItem;

    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ui/WordWiseSettingsFragment$SettingsItem;->getSelectedValue()I

    move-result p0

    .line 114
    invoke-static {}, Lcom/amazon/kcp/wordwise/language/WordWiseSettingLanguage;->values()[Lcom/amazon/kcp/wordwise/language/WordWiseSettingLanguage;

    move-result-object v0

    array-length v0, v0

    if-ge p0, v0, :cond_0

    .line 115
    invoke-static {}, Lcom/amazon/kcp/wordwise/language/WordWiseSettingLanguage;->values()[Lcom/amazon/kcp/wordwise/language/WordWiseSettingLanguage;

    move-result-object v0

    aget-object p0, v0, p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getWordWiseEnabled()Lcom/amazon/kcp/reader/ui/WordWiseSettingsFragment$SettingsItem;
    .locals 1

    .line 121
    sget-object v0, Lcom/amazon/kcp/reader/ui/WordWiseSettingsFragment$SettingsItem;->WORDWISE_ENABLED:Lcom/amazon/kcp/reader/ui/WordWiseSettingsFragment$SettingsItem;

    return-object v0
.end method

.method public static getWordwiseLanguage()Lcom/amazon/kcp/reader/ui/WordWiseSettingsFragment$SettingsItem;
    .locals 1

    .line 123
    sget-object v0, Lcom/amazon/kcp/reader/ui/WordWiseSettingsFragment$SettingsItem;->WORDWISE_LANGUAGE:Lcom/amazon/kcp/reader/ui/WordWiseSettingsFragment$SettingsItem;

    return-object v0
.end method

.method public static getWordwiseMultichoice()Lcom/amazon/kcp/reader/ui/WordWiseSettingsFragment$SettingsItem;
    .locals 1

    .line 122
    sget-object v0, Lcom/amazon/kcp/reader/ui/WordWiseSettingsFragment$SettingsItem;->WORDWISE_MULTICHOICE:Lcom/amazon/kcp/reader/ui/WordWiseSettingsFragment$SettingsItem;

    return-object v0
.end method

.method public static isChecked(Lcom/amazon/kcp/wordwise/plugin/WordWisePreferences;)Z
    .locals 1

    .line 98
    sget-object v0, Lcom/amazon/kcp/wordwise/plugin/WordWisePreferences;->WORDWISE_ENABLED:Lcom/amazon/kcp/wordwise/plugin/WordWisePreferences;

    if-ne p0, v0, :cond_0

    .line 99
    sget-object p0, Lcom/amazon/kcp/reader/ui/WordWiseSettingsFragment$SettingsItem;->WORDWISE_ENABLED:Lcom/amazon/kcp/reader/ui/WordWiseSettingsFragment$SettingsItem;

    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ui/WordWiseSettingsFragment$SettingsItem;->isChecked()Z

    move-result p0

    return p0

    .line 100
    :cond_0
    sget-object v0, Lcom/amazon/kcp/wordwise/plugin/WordWisePreferences;->WORDWISE_SHOW_MULTIPLE_CHOICE:Lcom/amazon/kcp/wordwise/plugin/WordWisePreferences;

    if-ne p0, v0, :cond_1

    .line 101
    sget-object p0, Lcom/amazon/kcp/reader/ui/WordWiseSettingsFragment$SettingsItem;->WORDWISE_MULTICHOICE:Lcom/amazon/kcp/reader/ui/WordWiseSettingsFragment$SettingsItem;

    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ui/WordWiseSettingsFragment$SettingsItem;->isChecked()Z

    move-result p0

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method getSelectedValue()I
    .locals 1

    .line 89
    iget v0, p0, Lcom/amazon/kcp/reader/ui/WordWiseSettingsFragment$SettingsItem;->value:I

    return v0
.end method

.method isChecked()Z
    .locals 1

    .line 81
    iget v0, p0, Lcom/amazon/kcp/reader/ui/WordWiseSettingsFragment$SettingsItem;->value:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method setChecked(Z)V
    .locals 0

    .line 77
    iput p1, p0, Lcom/amazon/kcp/reader/ui/WordWiseSettingsFragment$SettingsItem;->value:I

    return-void
.end method

.method setSelectedValue(I)V
    .locals 0

    .line 85
    iput p1, p0, Lcom/amazon/kcp/reader/ui/WordWiseSettingsFragment$SettingsItem;->value:I

    return-void
.end method
