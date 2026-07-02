.class public final Lcom/amazon/kcp/reader/ui/WordWiseAaSettingProvider;
.super Ljava/lang/Object;
.source "WordWiseAaSettingProvider.kt"

# interfaces
.implements Lcom/amazon/kindle/krx/viewoptions/IAaSettingsProvider;


# instance fields
.field private final AA_PRIORITY:I

.field private wordWiseModel:Lcom/amazon/kcp/reader/ui/WordWiseModel;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xc8

    .line 21
    iput v0, p0, Lcom/amazon/kcp/reader/ui/WordWiseAaSettingProvider;->AA_PRIORITY:I

    .line 25
    invoke-static {}, Lcom/amazon/kcp/wordwise/plugin/WordWisePlugin;->getSdk()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v0

    const-string v1, "WordWisePlugin.getSdk()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getPubSubEventManager()Lcom/amazon/kindle/krx/events/IPubSubEventsManager;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/amazon/kindle/krx/events/IPubSubEventsManager;->subscribe(Ljava/lang/Object;)V

    return-void
.end method

.method public static final synthetic access$createDisclosureContents(Lcom/amazon/kcp/reader/ui/WordWiseAaSettingProvider;Landroid/content/Context;Lcom/amazon/kcp/reader/ui/WordWiseModel;)Ljava/util/List;
    .locals 0

    .line 19
    invoke-direct {p0, p1, p2}, Lcom/amazon/kcp/reader/ui/WordWiseAaSettingProvider;->createDisclosureContents(Landroid/content/Context;Lcom/amazon/kcp/reader/ui/WordWiseModel;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getWordWiseModel$p(Lcom/amazon/kcp/reader/ui/WordWiseAaSettingProvider;)Lcom/amazon/kcp/reader/ui/WordWiseModel;
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/amazon/kcp/reader/ui/WordWiseAaSettingProvider;->wordWiseModel:Lcom/amazon/kcp/reader/ui/WordWiseModel;

    return-object p0
.end method

.method public static final synthetic access$isWordWiseDownloading(Lcom/amazon/kcp/reader/ui/WordWiseAaSettingProvider;)Z
    .locals 0

    .line 19
    invoke-direct {p0}, Lcom/amazon/kcp/reader/ui/WordWiseAaSettingProvider;->isWordWiseDownloading()Z

    move-result p0

    return p0
.end method

.method private final createDisclosureContents(Landroid/content/Context;Lcom/amazon/kcp/reader/ui/WordWiseModel;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/amazon/kcp/reader/ui/WordWiseModel;",
            ")",
            "Ljava/util/List<",
            "Lcom/amazon/kindle/krx/viewoptions/AaSetting;",
            ">;"
        }
    .end annotation

    .line 81
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 84
    invoke-direct {p0, p1, p2}, Lcom/amazon/kcp/reader/ui/WordWiseAaSettingProvider;->createDownloadMessageAaSetting(Landroid/content/Context;Lcom/amazon/kcp/reader/ui/WordWiseModel;)Lcom/amazon/kindle/krx/viewoptions/AaSetting;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 87
    invoke-direct {p0, p1, p2}, Lcom/amazon/kcp/reader/ui/WordWiseAaSettingProvider;->createWordWiseSwitchAaSetting(Landroid/content/Context;Lcom/amazon/kcp/reader/ui/WordWiseModel;)Lcom/amazon/kindle/krx/viewoptions/AaSetting;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 90
    sget-object v1, Lcom/amazon/kindle/krx/viewoptions/AaSettingIdentifier;->LANGUAGE_FOR_HINTS_DIVIDER:Lcom/amazon/kindle/krx/viewoptions/AaSettingIdentifier;

    const/16 v2, 0xc8

    invoke-direct {p0, p1, v1, v2, p2}, Lcom/amazon/kcp/reader/ui/WordWiseAaSettingProvider;->createDividerAaSetting(Landroid/content/Context;Lcom/amazon/kindle/krx/viewoptions/AaSettingIdentifier;ILcom/amazon/kcp/reader/ui/WordWiseModel;)Lcom/amazon/kindle/krx/viewoptions/AaSetting;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 91
    invoke-direct {p0, p1, p2}, Lcom/amazon/kcp/reader/ui/WordWiseAaSettingProvider;->createLanguageForHintsAaSetting(Landroid/content/Context;Lcom/amazon/kcp/reader/ui/WordWiseModel;)Lcom/amazon/kindle/krx/viewoptions/AaSetting;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 94
    sget-object v1, Lcom/amazon/kindle/krx/viewoptions/AaSettingIdentifier;->SHOW_MULTIPLE_CHOICE_HINTS_DIVIDER:Lcom/amazon/kindle/krx/viewoptions/AaSettingIdentifier;

    const/16 v2, 0x190

    invoke-direct {p0, p1, v1, v2, p2}, Lcom/amazon/kcp/reader/ui/WordWiseAaSettingProvider;->createDividerAaSetting(Landroid/content/Context;Lcom/amazon/kindle/krx/viewoptions/AaSettingIdentifier;ILcom/amazon/kcp/reader/ui/WordWiseModel;)Lcom/amazon/kindle/krx/viewoptions/AaSetting;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 95
    invoke-direct {p0, p1, p2}, Lcom/amazon/kcp/reader/ui/WordWiseAaSettingProvider;->createShowMultipleChoiceHintsAaSetting(Landroid/content/Context;Lcom/amazon/kcp/reader/ui/WordWiseModel;)Lcom/amazon/kindle/krx/viewoptions/AaSetting;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method private final createDividerAaSetting(Landroid/content/Context;Lcom/amazon/kindle/krx/viewoptions/AaSettingIdentifier;ILcom/amazon/kcp/reader/ui/WordWiseModel;)Lcom/amazon/kindle/krx/viewoptions/AaSetting;
    .locals 9

    .line 153
    new-instance v8, Lcom/amazon/kindle/krx/viewoptions/AaSetting;

    invoke-virtual {p2}, Lcom/amazon/kindle/krx/viewoptions/AaSettingIdentifier;->getValue()I

    move-result v1

    sget-object v3, Lcom/amazon/kindle/krx/viewoptions/settingdisplay/Divider;->INSTANCE:Lcom/amazon/kindle/krx/viewoptions/settingdisplay/Divider;

    invoke-direct {p0, p1, p4}, Lcom/amazon/kcp/reader/ui/WordWiseAaSettingProvider;->getDividerVisibilityHandler(Landroid/content/Context;Lcom/amazon/kcp/reader/ui/WordWiseModel;)Lkotlin/jvm/functions/Function0;

    move-result-object v4

    const/4 v5, 0x0

    const/16 v6, 0x10

    const/4 v7, 0x0

    move-object v0, v8

    move v2, p3

    invoke-direct/range {v0 .. v7}, Lcom/amazon/kindle/krx/viewoptions/AaSetting;-><init>(IILcom/amazon/kindle/krx/viewoptions/settingdisplay/AaSettingDisplay;Lkotlin/jvm/functions/Function0;Lcom/amazon/kindle/krx/viewoptions/settingdisplay/AaSettingDisplay;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v8
.end method

.method private final createDownloadMessageAaSetting(Landroid/content/Context;Lcom/amazon/kcp/reader/ui/WordWiseModel;)Lcom/amazon/kindle/krx/viewoptions/AaSetting;
    .locals 10

    .line 113
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/amazon/kindle/ww/R$string;->wordwise_status_downloading:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "context.resources.getStr\u2026dwise_status_downloading)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 114
    new-instance v5, Lcom/amazon/kindle/krx/viewoptions/settingdisplay/Message;

    const-string v1, ""

    invoke-direct {v5, v0, v1}, Lcom/amazon/kindle/krx/viewoptions/settingdisplay/Message;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    new-instance v0, Lcom/amazon/kindle/krx/viewoptions/AaSetting;

    sget-object v1, Lcom/amazon/kindle/krx/viewoptions/AaSettingIdentifier;->WORD_WISE_DOWNLOAD_MESSAGE:Lcom/amazon/kindle/krx/viewoptions/AaSettingIdentifier;

    invoke-virtual {v1}, Lcom/amazon/kindle/krx/viewoptions/AaSettingIdentifier;->getValue()I

    move-result v3

    .line 117
    invoke-direct {p0, p1, p2}, Lcom/amazon/kcp/reader/ui/WordWiseAaSettingProvider;->getDownloadMessageVisibilityHandler(Landroid/content/Context;Lcom/amazon/kcp/reader/ui/WordWiseModel;)Lkotlin/jvm/functions/Function0;

    move-result-object v6

    const/16 v4, 0x32

    const/4 v7, 0x0

    const/16 v8, 0x10

    const/4 v9, 0x0

    move-object v2, v0

    .line 115
    invoke-direct/range {v2 .. v9}, Lcom/amazon/kindle/krx/viewoptions/AaSetting;-><init>(IILcom/amazon/kindle/krx/viewoptions/settingdisplay/AaSettingDisplay;Lkotlin/jvm/functions/Function0;Lcom/amazon/kindle/krx/viewoptions/settingdisplay/AaSettingDisplay;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0
.end method

.method private final createLanguageForHintsAaSetting(Landroid/content/Context;Lcom/amazon/kcp/reader/ui/WordWiseModel;)Lcom/amazon/kindle/krx/viewoptions/AaSetting;
    .locals 17

    .line 121
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/amazon/kindle/ww/R$string;->aa_menu_v2_wordwise_hints_language_title:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v0, "context.resources.getStr\u2026ise_hints_language_title)"

    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 122
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 123
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/amazon/kindle/ww/R$string;->aa_menu_v2_wordwise_hints_language_english:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 124
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/amazon/kindle/ww/R$string;->aa_menu_v2_wordwise_hints_language_chinese:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x2

    new-array v8, v0, [I

    .line 125
    sget v0, Lcom/amazon/kindle/ww/R$id;->aa_menu_v2_wordwise_language_radio_group_english_option:I

    const/4 v1, 0x0

    aput v0, v8, v1

    .line 126
    sget v0, Lcom/amazon/kindle/ww/R$id;->aa_menu_v2_wordwise_language_radio_group_chinese_option:I

    const/4 v1, 0x1

    aput v0, v8, v1

    .line 128
    new-instance v12, Lcom/amazon/kindle/krx/viewoptions/settingdisplay/RadioGroupText;

    .line 129
    sget v4, Lcom/amazon/kindle/ww/R$layout;->aa_menu_v2_setting_radio_group_text_button:I

    .line 130
    invoke-virtual/range {p2 .. p2}, Lcom/amazon/kcp/reader/ui/WordWiseModel;->getLanguageForHintsRadioButtonClickHandler()Lkotlin/jvm/functions/Function1;

    move-result-object v6

    .line 131
    invoke-virtual/range {p2 .. p2}, Lcom/amazon/kcp/reader/ui/WordWiseModel;->getCurrentSelectedLanguageIndex()I

    move-result v7

    move-object v2, v12

    .line 128
    invoke-direct/range {v2 .. v8}, Lcom/amazon/kindle/krx/viewoptions/settingdisplay/RadioGroupText;-><init>(Ljava/lang/String;ILjava/util/List;Lkotlin/jvm/functions/Function1;I[I)V

    .line 134
    new-instance v0, Lcom/amazon/kindle/krx/viewoptions/AaSetting;

    sget-object v1, Lcom/amazon/kindle/krx/viewoptions/AaSettingIdentifier;->LANGUAGE_FOR_HINTS:Lcom/amazon/kindle/krx/viewoptions/AaSettingIdentifier;

    invoke-virtual {v1}, Lcom/amazon/kindle/krx/viewoptions/AaSettingIdentifier;->getValue()I

    move-result v10

    .line 136
    invoke-direct/range {p0 .. p2}, Lcom/amazon/kcp/reader/ui/WordWiseAaSettingProvider;->getOptionalSettingsVisibilityHandler(Landroid/content/Context;Lcom/amazon/kcp/reader/ui/WordWiseModel;)Lkotlin/jvm/functions/Function0;

    move-result-object v13

    const/16 v11, 0x12c

    const/4 v14, 0x0

    const/16 v15, 0x10

    const/16 v16, 0x0

    move-object v9, v0

    .line 134
    invoke-direct/range {v9 .. v16}, Lcom/amazon/kindle/krx/viewoptions/AaSetting;-><init>(IILcom/amazon/kindle/krx/viewoptions/settingdisplay/AaSettingDisplay;Lkotlin/jvm/functions/Function0;Lcom/amazon/kindle/krx/viewoptions/settingdisplay/AaSettingDisplay;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0
.end method

.method private final createShowMultipleChoiceHintsAaSetting(Landroid/content/Context;Lcom/amazon/kcp/reader/ui/WordWiseModel;)Lcom/amazon/kindle/krx/viewoptions/AaSetting;
    .locals 13

    .line 140
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/amazon/kindle/ww/R$string;->aa_menu_v2_wordwise_multichoice_hints_title:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v0, "context.resources.getStr\u2026_multichoice_hints_title)"

    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 141
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/amazon/kindle/ww/R$string;->aa_menu_v2_wordwise_multichoice_hints_subtitle:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v0, "context.resources.getStr\u2026ltichoice_hints_subtitle)"

    invoke-static {v4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 142
    new-instance v8, Lcom/amazon/kindle/krx/viewoptions/settingdisplay/Toggle;

    .line 143
    invoke-virtual {p2}, Lcom/amazon/kcp/reader/ui/WordWiseModel;->getShowHintsSwitchHandler()Lkotlin/jvm/functions/Function1;

    move-result-object v5

    .line 144
    invoke-virtual {p2}, Lcom/amazon/kcp/reader/ui/WordWiseModel;->isShowHintsEnabled()Z

    move-result v6

    .line 145
    sget v0, Lcom/amazon/kindle/ww/R$id;->aa_menu_v2_wordwise_toggle:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    move-object v2, v8

    .line 142
    invoke-direct/range {v2 .. v7}, Lcom/amazon/kindle/krx/viewoptions/settingdisplay/Toggle;-><init>(Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;ZLjava/lang/Integer;)V

    .line 147
    new-instance v0, Lcom/amazon/kindle/krx/viewoptions/AaSetting;

    sget-object v1, Lcom/amazon/kindle/krx/viewoptions/AaSettingIdentifier;->SHOW_MULTIPLE_CHOICE_HINTS:Lcom/amazon/kindle/krx/viewoptions/AaSettingIdentifier;

    invoke-virtual {v1}, Lcom/amazon/kindle/krx/viewoptions/AaSettingIdentifier;->getValue()I

    move-result v6

    .line 149
    invoke-direct {p0, p1, p2}, Lcom/amazon/kcp/reader/ui/WordWiseAaSettingProvider;->getOptionalSettingsVisibilityHandler(Landroid/content/Context;Lcom/amazon/kcp/reader/ui/WordWiseModel;)Lkotlin/jvm/functions/Function0;

    move-result-object v9

    const/16 v7, 0x1f4

    const/4 v10, 0x0

    const/16 v11, 0x10

    const/4 v12, 0x0

    move-object v5, v0

    .line 147
    invoke-direct/range {v5 .. v12}, Lcom/amazon/kindle/krx/viewoptions/AaSetting;-><init>(IILcom/amazon/kindle/krx/viewoptions/settingdisplay/AaSettingDisplay;Lkotlin/jvm/functions/Function0;Lcom/amazon/kindle/krx/viewoptions/settingdisplay/AaSettingDisplay;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0
.end method

.method private final createWordWiseSwitchAaSetting(Landroid/content/Context;Lcom/amazon/kcp/reader/ui/WordWiseModel;)Lcom/amazon/kindle/krx/viewoptions/AaSetting;
    .locals 13

    .line 101
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/amazon/kindle/ww/R$string;->aa_menu_v2_wordwise_title:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v0, "context.resources.getStr\u2026a_menu_v2_wordwise_title)"

    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 102
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/amazon/kindle/ww/R$string;->aa_menu_v2_wordwise_subtitle:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string p1, "context.resources.getStr\u2026enu_v2_wordwise_subtitle)"

    invoke-static {v4, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 103
    new-instance p1, Lcom/amazon/kindle/krx/viewoptions/settingdisplay/Toggle;

    .line 104
    invoke-virtual {p2}, Lcom/amazon/kcp/reader/ui/WordWiseModel;->getWordWiseSwitchHandler()Lkotlin/jvm/functions/Function1;

    move-result-object v5

    .line 105
    invoke-virtual {p2}, Lcom/amazon/kcp/reader/ui/WordWiseModel;->isWordWiseSwitchEnabled()Z

    move-result v6

    const/4 v7, 0x0

    const/16 v8, 0x10

    const/4 v9, 0x0

    move-object v2, p1

    .line 103
    invoke-direct/range {v2 .. v9}, Lcom/amazon/kindle/krx/viewoptions/settingdisplay/Toggle;-><init>(Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;ZLjava/lang/Integer;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 107
    new-instance p2, Lcom/amazon/kindle/krx/viewoptions/AaSetting;

    sget-object v0, Lcom/amazon/kindle/krx/viewoptions/AaSettingIdentifier;->SHOW_WORD_WISE:Lcom/amazon/kindle/krx/viewoptions/AaSettingIdentifier;

    invoke-virtual {v0}, Lcom/amazon/kindle/krx/viewoptions/AaSettingIdentifier;->getValue()I

    move-result v6

    .line 109
    invoke-direct {p0}, Lcom/amazon/kcp/reader/ui/WordWiseAaSettingProvider;->getMainSettingVisibilityHandler()Lkotlin/jvm/functions/Function0;

    move-result-object v9

    const/16 v7, 0x64

    const/4 v10, 0x0

    const/16 v11, 0x10

    const/4 v12, 0x0

    move-object v5, p2

    move-object v8, p1

    .line 107
    invoke-direct/range {v5 .. v12}, Lcom/amazon/kindle/krx/viewoptions/AaSetting;-><init>(IILcom/amazon/kindle/krx/viewoptions/settingdisplay/AaSettingDisplay;Lkotlin/jvm/functions/Function0;Lcom/amazon/kindle/krx/viewoptions/settingdisplay/AaSettingDisplay;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object p2
.end method

.method private final getDividerVisibilityHandler(Landroid/content/Context;Lcom/amazon/kcp/reader/ui/WordWiseModel;)Lkotlin/jvm/functions/Function0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/amazon/kcp/reader/ui/WordWiseModel;",
            ")",
            "Lkotlin/jvm/functions/Function0<",
            "Lcom/amazon/kindle/krx/viewoptions/DisplayState;",
            ">;"
        }
    .end annotation

    .line 205
    new-instance v0, Lcom/amazon/kcp/reader/ui/WordWiseAaSettingProvider$getDividerVisibilityHandler$1;

    invoke-direct {v0, p2, p1}, Lcom/amazon/kcp/reader/ui/WordWiseAaSettingProvider$getDividerVisibilityHandler$1;-><init>(Lcom/amazon/kcp/reader/ui/WordWiseModel;Landroid/content/Context;)V

    return-object v0
.end method

.method private final getDownloadMessageVisibilityHandler(Landroid/content/Context;Lcom/amazon/kcp/reader/ui/WordWiseModel;)Lkotlin/jvm/functions/Function0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/amazon/kcp/reader/ui/WordWiseModel;",
            ")",
            "Lkotlin/jvm/functions/Function0<",
            "Lcom/amazon/kindle/krx/viewoptions/DisplayState;",
            ">;"
        }
    .end annotation

    .line 191
    new-instance v0, Lcom/amazon/kcp/reader/ui/WordWiseAaSettingProvider$getDownloadMessageVisibilityHandler$1;

    invoke-direct {v0, p0, p2, p1}, Lcom/amazon/kcp/reader/ui/WordWiseAaSettingProvider$getDownloadMessageVisibilityHandler$1;-><init>(Lcom/amazon/kcp/reader/ui/WordWiseAaSettingProvider;Lcom/amazon/kcp/reader/ui/WordWiseModel;Landroid/content/Context;)V

    return-object v0
.end method

.method private final getMainSettingVisibilityHandler()Lkotlin/jvm/functions/Function0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function0<",
            "Lcom/amazon/kindle/krx/viewoptions/DisplayState;",
            ">;"
        }
    .end annotation

    .line 167
    new-instance v0, Lcom/amazon/kcp/reader/ui/WordWiseAaSettingProvider$getMainSettingVisibilityHandler$1;

    invoke-direct {v0, p0}, Lcom/amazon/kcp/reader/ui/WordWiseAaSettingProvider$getMainSettingVisibilityHandler$1;-><init>(Lcom/amazon/kcp/reader/ui/WordWiseAaSettingProvider;)V

    return-object v0
.end method

.method private final getMandatorySettingsVisibilityHandler()Lkotlin/jvm/functions/Function0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function0<",
            "Lcom/amazon/kindle/krx/viewoptions/DisplayState;",
            ">;"
        }
    .end annotation

    .line 161
    sget-object v0, Lcom/amazon/kcp/reader/ui/WordWiseAaSettingProvider$getMandatorySettingsVisibilityHandler$1;->INSTANCE:Lcom/amazon/kcp/reader/ui/WordWiseAaSettingProvider$getMandatorySettingsVisibilityHandler$1;

    return-object v0
.end method

.method private final getOptionalSettingsVisibilityHandler(Landroid/content/Context;Lcom/amazon/kcp/reader/ui/WordWiseModel;)Lkotlin/jvm/functions/Function0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/amazon/kcp/reader/ui/WordWiseModel;",
            ")",
            "Lkotlin/jvm/functions/Function0<",
            "Lcom/amazon/kindle/krx/viewoptions/DisplayState;",
            ">;"
        }
    .end annotation

    .line 177
    new-instance v0, Lcom/amazon/kcp/reader/ui/WordWiseAaSettingProvider$getOptionalSettingsVisibilityHandler$1;

    invoke-direct {v0, p0, p2, p1}, Lcom/amazon/kcp/reader/ui/WordWiseAaSettingProvider$getOptionalSettingsVisibilityHandler$1;-><init>(Lcom/amazon/kcp/reader/ui/WordWiseAaSettingProvider;Lcom/amazon/kcp/reader/ui/WordWiseModel;Landroid/content/Context;)V

    return-object v0
.end method

.method private final isWordWiseDownloading()Z
    .locals 2

    .line 233
    invoke-static {}, Lcom/amazon/kcp/wordwise/download/WordWiseContentStatus;->getInstance()Lcom/amazon/kcp/wordwise/download/WordWiseContentStatus;

    move-result-object v0

    const-string v1, "WordWiseContentStatus.getInstance()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 234
    invoke-virtual {v0}, Lcom/amazon/kcp/wordwise/download/WordWiseContentStatus;->isDownloadingDictionary()Z

    move-result v0

    return v0
.end method

.method private final shouldShowWordWiseSettings()Z
    .locals 6

    .line 57
    invoke-static {}, Lcom/amazon/kcp/wordwise/plugin/WordWisePlugin;->getSdk()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v0

    const-string v1, "WordWisePlugin.getSdk()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderManager()Lcom/amazon/kindle/krx/reader/IReaderManager;

    move-result-object v0

    const-string v2, "WordWisePlugin.getSdk().readerManager"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Lcom/amazon/kindle/krx/reader/IReaderManager;->getCurrentBook()Lcom/amazon/kindle/krx/content/IBook;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/kcp/wordwise/plugin/WordWisePlugin;->isWordWiseCapable(Lcom/amazon/kindle/krx/content/IBook;)Z

    move-result v0

    const/4 v3, 0x0

    if-nez v0, :cond_0

    return v3

    .line 60
    :cond_0
    invoke-static {}, Lcom/amazon/kcp/wordwise/gloss/GlossFactory;->getInstance()Lcom/amazon/kcp/wordwise/gloss/GlossFactory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/kcp/wordwise/gloss/GlossFactory;->hasAttemptedOpenSidecar()Z

    move-result v0

    const/4 v4, 0x1

    if-nez v0, :cond_2

    .line 62
    invoke-static {}, Lcom/amazon/kcp/wordwise/plugin/WordWisePlugin;->isWordWiseEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 63
    invoke-static {}, Lcom/amazon/kcp/wordwise/gloss/GlossFactory;->getInstance()Lcom/amazon/kcp/wordwise/gloss/GlossFactory;

    move-result-object v0

    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Lcom/amazon/kcp/wordwise/gloss/GlossFactory;->openSidecarForCurrentBookAsync(Ljava/lang/Runnable;)V

    .line 66
    :cond_1
    invoke-static {}, Lcom/amazon/kcp/wordwise/plugin/WordWisePlugin;->getSdk()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v0

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderManager()Lcom/amazon/kindle/krx/reader/IReaderManager;

    move-result-object v0

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Lcom/amazon/kindle/krx/reader/IReaderManager;->getCurrentBook()Lcom/amazon/kindle/krx/content/IBook;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/kcp/wordwise/plugin/WordWisePlugin;->isWordWiseSupported(Lcom/amazon/kindle/krx/content/IBook;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_0

    .line 69
    :cond_2
    invoke-static {}, Lcom/amazon/kcp/wordwise/plugin/WordWisePlugin;->isCurrentBookSidecarLoaded()Z

    move-result v0

    if-eqz v0, :cond_3

    :goto_0
    const/4 v3, 0x1

    :cond_3
    return v3
.end method


# virtual methods
.method public deleteAaTheme(I)V
    .locals 0

    .line 19
    invoke-static {p0, p1}, Lcom/amazon/kindle/krx/viewoptions/IAaSettingsProvider$DefaultImpls;->deleteAaTheme(Lcom/amazon/kindle/krx/viewoptions/IAaSettingsProvider;I)V

    return-void
.end method

.method public deleteAaTheme(ILandroid/content/Context;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    invoke-static {p0, p1, p2}, Lcom/amazon/kindle/krx/viewoptions/IAaSettingsProvider$DefaultImpls;->deleteAaTheme(Lcom/amazon/kindle/krx/viewoptions/IAaSettingsProvider;ILandroid/content/Context;)V

    return-void
.end method

.method public getSettings(Lcom/amazon/kindle/krx/viewoptions/AaTabType;Landroid/content/Context;)Ljava/util/List;
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kindle/krx/viewoptions/AaTabType;",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Lcom/amazon/kindle/krx/viewoptions/AaSetting;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    const-string v3, "tab"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "context"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    sget-object v3, Lcom/amazon/kindle/krx/viewoptions/AaTabType;->MORE_TAB:Lcom/amazon/kindle/krx/viewoptions/AaTabType;

    if-eq v1, v3, :cond_0

    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v1

    return-object v1

    .line 30
    :cond_0
    invoke-direct/range {p0 .. p0}, Lcom/amazon/kcp/reader/ui/WordWiseAaSettingProvider;->shouldShowWordWiseSettings()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v1

    return-object v1

    .line 32
    :cond_1
    invoke-virtual/range {p2 .. p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 33
    new-instance v3, Lcom/amazon/kcp/reader/ui/WordWiseModel;

    invoke-direct {v3, v2}, Lcom/amazon/kcp/reader/ui/WordWiseModel;-><init>(Landroid/content/Context;)V

    .line 34
    iput-object v3, v0, Lcom/amazon/kcp/reader/ui/WordWiseAaSettingProvider;->wordWiseModel:Lcom/amazon/kcp/reader/ui/WordWiseModel;

    .line 37
    invoke-direct {v0, v2, v3}, Lcom/amazon/kcp/reader/ui/WordWiseAaSettingProvider;->createDisclosureContents(Landroid/content/Context;Lcom/amazon/kcp/reader/ui/WordWiseModel;)Ljava/util/List;

    move-result-object v9

    .line 39
    sget v2, Lcom/amazon/kindle/ww/R$string;->aa_menu_v2_wordwise_title:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    const-string v2, "resources.getString(R.st\u2026a_menu_v2_wordwise_title)"

    invoke-static {v5, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 40
    sget v2, Lcom/amazon/kindle/ww/R$string;->aa_menu_v2_wordwise_subtitle:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    const-string v2, "resources.getString(R.st\u2026enu_v2_wordwise_subtitle)"

    invoke-static {v6, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    invoke-virtual {v3}, Lcom/amazon/kcp/reader/ui/WordWiseModel;->isWordWiseSwitchEnabled()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 43
    sget v2, Lcom/amazon/kindle/ww/R$string;->aa_menu_v2_wordwise_state_on:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 44
    :cond_2
    sget v2, Lcom/amazon/kindle/ww/R$string;->aa_menu_v2_wordwise_state_off:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    :goto_0
    const-string v2, "if (wordWiseSwitchEnable\u2026nu_v2_wordwise_state_off)"

    .line 42
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 45
    invoke-virtual {v3, v1}, Lcom/amazon/kindle/viewoptions/ui/disclosureview/DisclosureViewModel;->setState(Ljava/lang/String;)V

    .line 46
    new-instance v7, Lcom/amazon/kcp/reader/ui/WordWiseAaSettingProvider$getSettings$stateHandler$1;

    invoke-direct {v7, v3}, Lcom/amazon/kcp/reader/ui/WordWiseAaSettingProvider$getSettings$stateHandler$1;-><init>(Lcom/amazon/kcp/reader/ui/WordWiseModel;)V

    .line 51
    new-instance v13, Lcom/amazon/kindle/krx/viewoptions/settingdisplay/Disclosure;

    const/4 v8, 0x0

    sget v1, Lcom/amazon/kindle/ww/R$id;->aa_menu_v2_wordwise_disclosure:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    move-object v4, v13

    invoke-direct/range {v4 .. v10}, Lcom/amazon/kindle/krx/viewoptions/settingdisplay/Disclosure;-><init>(Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Ljava/util/List;Ljava/lang/Integer;)V

    .line 52
    new-instance v1, Lcom/amazon/kindle/krx/viewoptions/AaSetting;

    sget-object v2, Lcom/amazon/kindle/krx/viewoptions/AaSettingIdentifier;->WORD_WISE:Lcom/amazon/kindle/krx/viewoptions/AaSettingIdentifier;

    invoke-virtual {v2}, Lcom/amazon/kindle/krx/viewoptions/AaSettingIdentifier;->getValue()I

    move-result v11

    iget v12, v0, Lcom/amazon/kcp/reader/ui/WordWiseAaSettingProvider;->AA_PRIORITY:I

    invoke-direct/range {p0 .. p0}, Lcom/amazon/kcp/reader/ui/WordWiseAaSettingProvider;->getMandatorySettingsVisibilityHandler()Lkotlin/jvm/functions/Function0;

    move-result-object v14

    const/4 v15, 0x0

    const/16 v16, 0x10

    const/16 v17, 0x0

    move-object v10, v1

    invoke-direct/range {v10 .. v17}, Lcom/amazon/kindle/krx/viewoptions/AaSetting;-><init>(IILcom/amazon/kindle/krx/viewoptions/settingdisplay/AaSettingDisplay;Lkotlin/jvm/functions/Function0;Lcom/amazon/kindle/krx/viewoptions/settingdisplay/AaSettingDisplay;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 53
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method public loadSettingsFromAaTheme(I)V
    .locals 0

    .line 19
    invoke-static {p0, p1}, Lcom/amazon/kindle/krx/viewoptions/IAaSettingsProvider$DefaultImpls;->loadSettingsFromAaTheme(Lcom/amazon/kindle/krx/viewoptions/IAaSettingsProvider;I)V

    return-void
.end method

.method public loadSettingsFromAaTheme(ILandroid/content/Context;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    invoke-static {p0, p1, p2}, Lcom/amazon/kindle/krx/viewoptions/IAaSettingsProvider$DefaultImpls;->loadSettingsFromAaTheme(Lcom/amazon/kindle/krx/viewoptions/IAaSettingsProvider;ILandroid/content/Context;)V

    return-void
.end method

.method public final onWordWiseContentStatusEvent(Lcom/amazon/kcp/wordwise/download/WordWiseContentStatus$ContentStatusEvent;)V
    .locals 1
    .annotation runtime Lcom/amazon/kindle/krx/events/Subscriber;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 221
    new-instance p1, Lcom/amazon/kcp/reader/ui/WordWiseAaSettingProvider$onWordWiseContentStatusEvent$1;

    invoke-direct {p1, p0}, Lcom/amazon/kcp/reader/ui/WordWiseAaSettingProvider$onWordWiseContentStatusEvent$1;-><init>(Lcom/amazon/kcp/reader/ui/WordWiseAaSettingProvider;)V

    invoke-static {p1}, Lcom/amazon/krf/platform/ThreadUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public saveSettingsToAaTheme(I)V
    .locals 0

    .line 19
    invoke-static {p0, p1}, Lcom/amazon/kindle/krx/viewoptions/IAaSettingsProvider$DefaultImpls;->saveSettingsToAaTheme(Lcom/amazon/kindle/krx/viewoptions/IAaSettingsProvider;I)V

    return-void
.end method

.method public saveSettingsToAaTheme(ILandroid/content/Context;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    invoke-static {p0, p1, p2}, Lcom/amazon/kindle/krx/viewoptions/IAaSettingsProvider$DefaultImpls;->saveSettingsToAaTheme(Lcom/amazon/kindle/krx/viewoptions/IAaSettingsProvider;ILandroid/content/Context;)V

    return-void
.end method
