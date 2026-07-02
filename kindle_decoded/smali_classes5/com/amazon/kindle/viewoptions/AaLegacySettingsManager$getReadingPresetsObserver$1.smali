.class public final Lcom/amazon/kindle/viewoptions/AaLegacySettingsManager$getReadingPresetsObserver$1;
.super Lcom/amazon/ksdk/presets/ReadingPresetsObserver;
.source "AaLegacySettingsManager.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kindle/viewoptions/AaLegacySettingsManager;->getReadingPresetsObserver()Lcom/amazon/ksdk/presets/ReadingPresetsObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAaLegacySettingsManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AaLegacySettingsManager.kt\ncom/amazon/kindle/viewoptions/AaLegacySettingsManager$getReadingPresetsObserver$1\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,1228:1\n1819#2:1229\n1819#2,2:1230\n1820#2:1232\n*E\n*S KotlinDebug\n*F\n+ 1 AaLegacySettingsManager.kt\ncom/amazon/kindle/viewoptions/AaLegacySettingsManager$getReadingPresetsObserver$1\n*L\n1082#1:1229\n1141#1,2:1230\n1082#1:1232\n*E\n"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kindle/viewoptions/AaLegacySettingsManager;


# direct methods
.method constructor <init>(Lcom/amazon/kindle/viewoptions/AaLegacySettingsManager;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1073
    iput-object p1, p0, Lcom/amazon/kindle/viewoptions/AaLegacySettingsManager$getReadingPresetsObserver$1;->this$0:Lcom/amazon/kindle/viewoptions/AaLegacySettingsManager;

    invoke-direct {p0}, Lcom/amazon/ksdk/presets/ReadingPresetsObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onAaSettingsChanged(Ljava/util/ArrayList;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/amazon/ksdk/presets/AaSettingType;",
            ">;)V"
        }
    .end annotation

    const-string v0, "aaSettings"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1163
    sget-object v0, Lcom/amazon/ksdk/presets/AaSettingType;->COLUMN_COUNT_MODE_BOOKS:Lcom/amazon/ksdk/presets/AaSettingType;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1164
    sget-object v0, Lcom/amazon/ksdk/presets/AaSettingType;->PAGE_MARGIN_MODE:Lcom/amazon/ksdk/presets/AaSettingType;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1165
    sget-object v0, Lcom/amazon/ksdk/presets/AaSettingType;->FONT_SIZE:Lcom/amazon/ksdk/presets/AaSettingType;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 1166
    :cond_0
    iget-object p1, p0, Lcom/amazon/kindle/viewoptions/AaLegacySettingsManager$getReadingPresetsObserver$1;->this$0:Lcom/amazon/kindle/viewoptions/AaLegacySettingsManager;

    invoke-virtual {p1}, Lcom/amazon/kindle/viewoptions/AaLegacySettingsManager;->getContext()Landroid/content/Context;

    move-result-object p1

    sget v0, Lcom/amazon/kindle/krl/R$string;->aa_menu_v2_alignment_title:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "context.getString(R.stri\u2026_menu_v2_alignment_title)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1167
    iget-object v0, p0, Lcom/amazon/kindle/viewoptions/AaLegacySettingsManager$getReadingPresetsObserver$1;->this$0:Lcom/amazon/kindle/viewoptions/AaLegacySettingsManager;

    invoke-static {v0}, Lcom/amazon/kindle/viewoptions/AaLegacySettingsManager;->access$getDisabledMessageForAlignment(Lcom/amazon/kindle/viewoptions/AaLegacySettingsManager;)Ljava/lang/String;

    move-result-object v0

    .line 1168
    new-instance v4, Lcom/amazon/kindle/krx/viewoptions/settingdisplay/Message;

    invoke-direct {v4, p1, v0}, Lcom/amazon/kindle/krx/viewoptions/settingdisplay/Message;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1169
    new-instance p1, Lcom/amazon/kindle/krx/viewoptions/AaSetting;

    sget-object v0, Lcom/amazon/kindle/krx/viewoptions/AaSettingIdentifier;->ALIGNMENT:Lcom/amazon/kindle/krx/viewoptions/AaSettingIdentifier;

    invoke-virtual {v0}, Lcom/amazon/kindle/krx/viewoptions/AaSettingIdentifier;->getValue()I

    move-result v2

    const/4 v3, 0x0

    .line 1170
    sget-object v5, Lcom/amazon/kindle/viewoptions/AaLegacySettingsManager$getReadingPresetsObserver$1$onAaSettingsChanged$1;->INSTANCE:Lcom/amazon/kindle/viewoptions/AaLegacySettingsManager$getReadingPresetsObserver$1$onAaSettingsChanged$1;

    const/4 v6, 0x0

    const/16 v7, 0x10

    const/4 v8, 0x0

    move-object v1, p1

    .line 1169
    invoke-direct/range {v1 .. v8}, Lcom/amazon/kindle/krx/viewoptions/AaSetting;-><init>(IILcom/amazon/kindle/krx/viewoptions/settingdisplay/AaSettingDisplay;Lkotlin/jvm/functions/Function0;Lcom/amazon/kindle/krx/viewoptions/settingdisplay/AaSettingDisplay;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-static {p1}, Lcom/amazon/kindle/krx/viewoptions/AaSettingUpdateManager;->notifySettingUpdate(Lcom/amazon/kindle/krx/viewoptions/AaSetting;)V

    :cond_1
    return-void
.end method

.method public onPresetInfoChanged(Ljava/util/ArrayList;)V
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v0, p0

    const-string v1, "arrayList"

    move-object/from16 v2, p1

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1082
    sget-object v1, Lcom/amazon/kindle/viewoptions/utils/AaCoreSettingUtils;->INSTANCE:Lcom/amazon/kindle/viewoptions/utils/AaCoreSettingUtils;

    invoke-virtual {v1}, Lcom/amazon/kindle/viewoptions/utils/AaCoreSettingUtils;->getCoreSettings()Ljava/util/Set;

    move-result-object v1

    .line 1229
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazon/kindle/krx/viewoptions/AaSettingIdentifier;

    .line 1083
    new-instance v3, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v3}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    const/4 v4, 0x0

    iput-object v4, v3, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 1084
    sget-object v4, Lcom/amazon/kindle/viewoptions/utils/AaCoreSettingUtils;->INSTANCE:Lcom/amazon/kindle/viewoptions/utils/AaCoreSettingUtils;

    invoke-virtual {v2}, Lcom/amazon/kindle/krx/viewoptions/AaSettingIdentifier;->getValue()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/amazon/kindle/viewoptions/utils/AaCoreSettingUtils;->settingTypeForAaSettingIdentifier(I)Lcom/amazon/ksdk/presets/AaSettingType;

    move-result-object v4

    .line 1086
    sget-object v5, Lcom/amazon/kindle/viewoptions/AaLegacySettingsManager$WhenMappings;->$EnumSwitchMapping$3:[I

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    aget v5, v5, v6

    const/4 v6, 0x1

    const/4 v7, 0x0

    packed-switch v5, :pswitch_data_0

    goto/16 :goto_4

    .line 1138
    :pswitch_0
    iget-object v4, v0, Lcom/amazon/kindle/viewoptions/AaLegacySettingsManager$getReadingPresetsObserver$1;->this$0:Lcom/amazon/kindle/viewoptions/AaLegacySettingsManager;

    invoke-static {v4}, Lcom/amazon/kindle/viewoptions/AaLegacySettingsManager;->access$getReadingProgressModel$p(Lcom/amazon/kindle/viewoptions/AaLegacySettingsManager;)Lcom/amazon/kindle/viewoptions/readingprogress/ReadingProgressModel;

    move-result-object v4

    if-eqz v4, :cond_4

    .line 1139
    invoke-virtual {v4}, Lcom/amazon/kindle/viewoptions/readingprogress/ReadingProgressModel;->onThemeChanged()V

    .line 1140
    iget-object v5, v0, Lcom/amazon/kindle/viewoptions/AaLegacySettingsManager$getReadingPresetsObserver$1;->this$0:Lcom/amazon/kindle/viewoptions/AaLegacySettingsManager;

    invoke-static {v5, v4}, Lcom/amazon/kindle/viewoptions/AaLegacySettingsManager;->access$createReadingProgressContentSettings(Lcom/amazon/kindle/viewoptions/AaLegacySettingsManager;Lcom/amazon/kindle/viewoptions/readingprogress/ReadingProgressModel;)Ljava/util/List;

    move-result-object v13

    .line 1230
    invoke-interface {v13}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/amazon/kindle/krx/viewoptions/AaSetting;

    .line 1143
    invoke-static {v6}, Lcom/amazon/kindle/krx/viewoptions/AaSettingUpdateManager;->notifySettingUpdate(Lcom/amazon/kindle/krx/viewoptions/AaSetting;)V

    goto :goto_1

    .line 1147
    :cond_1
    new-instance v5, Lcom/amazon/kindle/krx/viewoptions/settingdisplay/Disclosure;

    new-instance v11, Lcom/amazon/kindle/viewoptions/AaLegacySettingsManager$getReadingPresetsObserver$1$onPresetInfoChanged$$inlined$forEach$lambda$1;

    invoke-direct {v11, v4, v3, v0}, Lcom/amazon/kindle/viewoptions/AaLegacySettingsManager$getReadingPresetsObserver$1$onPresetInfoChanged$$inlined$forEach$lambda$1;-><init>(Lcom/amazon/kindle/viewoptions/readingprogress/ReadingProgressModel;Lkotlin/jvm/internal/Ref$ObjectRef;Lcom/amazon/kindle/viewoptions/AaLegacySettingsManager$getReadingPresetsObserver$1;)V

    sget-object v12, Lcom/amazon/kindle/viewoptions/AaLegacySettingsManager$getReadingPresetsObserver$1$onPresetInfoChanged$1$8$3;->INSTANCE:Lcom/amazon/kindle/viewoptions/AaLegacySettingsManager$getReadingPresetsObserver$1$onPresetInfoChanged$1$8$3;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const-string v9, ""

    const-string v10, ""

    move-object v8, v5

    invoke-direct/range {v8 .. v14}, Lcom/amazon/kindle/krx/viewoptions/settingdisplay/Disclosure;-><init>(Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Ljava/util/List;Ljava/lang/Integer;)V

    iput-object v5, v3, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    goto/16 :goto_4

    .line 1134
    :pswitch_1
    invoke-static {}, Lcom/amazon/kindle/viewoptions/AaSettingManager;->getInstance()Lcom/amazon/kcp/debug/IAaSettingsUtil;

    move-result-object v5

    invoke-interface {v5}, Lcom/amazon/kcp/debug/IAaSettingsUtil;->readingPresetManager()Lcom/amazon/ksdk/presets/ReadingPresetsManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/amazon/ksdk/presets/ReadingPresetsManager;->activePreset()Lcom/amazon/ksdk/presets/ReadingPreset;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/amazon/ksdk/presets/ReadingPreset;->getBoolForSetting(Lcom/amazon/ksdk/presets/AaSettingType;)Z

    move-result v10

    .line 1135
    new-instance v4, Lcom/amazon/kindle/krx/viewoptions/settingdisplay/Toggle;

    sget-object v9, Lcom/amazon/kindle/viewoptions/AaLegacySettingsManager$getReadingPresetsObserver$1$onPresetInfoChanged$1$7;->INSTANCE:Lcom/amazon/kindle/viewoptions/AaLegacySettingsManager$getReadingPresetsObserver$1$onPresetInfoChanged$1$7;

    const/4 v11, 0x0

    const/16 v12, 0x10

    const/4 v13, 0x0

    const-string v7, ""

    const-string v8, ""

    move-object v6, v4

    invoke-direct/range {v6 .. v13}, Lcom/amazon/kindle/krx/viewoptions/settingdisplay/Toggle;-><init>(Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;ZLjava/lang/Integer;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object v4, v3, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    goto/16 :goto_4

    .line 1116
    :pswitch_2
    invoke-static {}, Lcom/amazon/kindle/viewoptions/AaSettingManager;->getInstance()Lcom/amazon/kcp/debug/IAaSettingsUtil;

    move-result-object v4

    invoke-interface {v4}, Lcom/amazon/kcp/debug/IAaSettingsUtil;->readingPresetManager()Lcom/amazon/ksdk/presets/ReadingPresetsManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/amazon/ksdk/presets/ReadingPresetsManager;->activePreset()Lcom/amazon/ksdk/presets/ReadingPreset;

    move-result-object v4

    invoke-virtual {v4}, Lcom/amazon/ksdk/presets/ReadingPreset;->justificationMode()Lcom/amazon/ksdk/presets/JustificationModeType;

    move-result-object v4

    sget-object v5, Lcom/amazon/ksdk/presets/JustificationModeType;->JUSTIFIED:Lcom/amazon/ksdk/presets/JustificationModeType;

    if-ne v4, v5, :cond_2

    const/4 v4, 0x1

    goto :goto_2

    :cond_2
    const/4 v4, 0x0

    :goto_2
    xor-int/lit8 v16, v4, 0x1

    .line 1118
    new-instance v4, Lcom/amazon/kindle/krx/viewoptions/settingdisplay/RadioGroup;

    const/4 v11, 0x0

    new-array v12, v7, [I

    new-array v13, v7, [I

    .line 1119
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v14

    sget-object v15, Lcom/amazon/kindle/viewoptions/AaLegacySettingsManager$getReadingPresetsObserver$1$onPresetInfoChanged$1$6;->INSTANCE:Lcom/amazon/kindle/viewoptions/AaLegacySettingsManager$getReadingPresetsObserver$1$onPresetInfoChanged$1$6;

    new-array v5, v7, [I

    const-string v9, ""

    const-string v10, ""

    move-object v8, v4

    move-object/from16 v17, v5

    .line 1118
    invoke-direct/range {v8 .. v17}, Lcom/amazon/kindle/krx/viewoptions/settingdisplay/RadioGroup;-><init>(Ljava/lang/String;Ljava/lang/String;I[I[ILjava/util/List;Lkotlin/jvm/functions/Function1;I[I)V

    iput-object v4, v3, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    goto/16 :goto_4

    .line 1109
    :pswitch_3
    invoke-static {}, Lcom/amazon/kindle/viewoptions/AaSettingManager;->getInstance()Lcom/amazon/kcp/debug/IAaSettingsUtil;

    move-result-object v5

    invoke-interface {v5}, Lcom/amazon/kcp/debug/IAaSettingsUtil;->readingPresetManager()Lcom/amazon/ksdk/presets/ReadingPresetsManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/amazon/ksdk/presets/ReadingPresetsManager;->activePreset()Lcom/amazon/ksdk/presets/ReadingPreset;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/amazon/ksdk/presets/ReadingPreset;->getLongForSetting(Lcom/amazon/ksdk/presets/AaSettingType;)I

    move-result v4

    add-int/lit8 v16, v4, -0x1

    .line 1110
    new-instance v4, Lcom/amazon/kindle/krx/viewoptions/settingdisplay/RadioGroup;

    const/4 v11, 0x0

    new-array v12, v7, [I

    new-array v13, v7, [I

    .line 1111
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v14

    sget-object v15, Lcom/amazon/kindle/viewoptions/AaLegacySettingsManager$getReadingPresetsObserver$1$onPresetInfoChanged$1$5;->INSTANCE:Lcom/amazon/kindle/viewoptions/AaLegacySettingsManager$getReadingPresetsObserver$1$onPresetInfoChanged$1$5;

    new-array v5, v7, [I

    const-string v9, ""

    const-string v10, ""

    move-object v8, v4

    move-object/from16 v17, v5

    .line 1110
    invoke-direct/range {v8 .. v17}, Lcom/amazon/kindle/krx/viewoptions/settingdisplay/RadioGroup;-><init>(Ljava/lang/String;Ljava/lang/String;I[I[ILjava/util/List;Lkotlin/jvm/functions/Function1;I[I)V

    iput-object v4, v3, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    goto/16 :goto_4

    .line 1094
    :pswitch_4
    invoke-static {}, Lcom/amazon/kindle/viewoptions/AaSettingManager;->getInstance()Lcom/amazon/kcp/debug/IAaSettingsUtil;

    move-result-object v5

    invoke-interface {v5}, Lcom/amazon/kcp/debug/IAaSettingsUtil;->readingPresetManager()Lcom/amazon/ksdk/presets/ReadingPresetsManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/amazon/ksdk/presets/ReadingPresetsManager;->activePreset()Lcom/amazon/ksdk/presets/ReadingPreset;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/amazon/ksdk/presets/ReadingPreset;->getLongForSetting(Lcom/amazon/ksdk/presets/AaSettingType;)I

    move-result v4

    add-int/lit8 v16, v4, -0x1

    .line 1095
    invoke-static {}, Lcom/amazon/kcp/debug/DarkModeUtils;->isPhaseThreeEnabled()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1096
    invoke-static {}, Lcom/amazon/kindle/viewoptions/AaSettingManager;->getInstance()Lcom/amazon/kcp/debug/IAaSettingsUtil;

    move-result-object v4

    invoke-interface {v4}, Lcom/amazon/kcp/debug/IAaSettingsUtil;->readingPresetManager()Lcom/amazon/ksdk/presets/ReadingPresetsManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/amazon/ksdk/presets/ReadingPresetsManager;->activePreset()Lcom/amazon/ksdk/presets/ReadingPreset;

    move-result-object v4

    sget-object v5, Lcom/amazon/ksdk/presets/AaSettingType;->SYSTEM_THEME_FOR_PAGE_COLOR:Lcom/amazon/ksdk/presets/AaSettingType;

    invoke-virtual {v4, v5}, Lcom/amazon/ksdk/presets/ReadingPreset;->getBoolForSetting(Lcom/amazon/ksdk/presets/AaSettingType;)Z

    move-result v19

    .line 1097
    new-instance v4, Lcom/amazon/kindle/krx/viewoptions/settingdisplay/CheckableRadioGroup;

    const/4 v10, 0x0

    new-array v11, v7, [I

    new-array v12, v7, [I

    .line 1098
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v13

    sget-object v14, Lcom/amazon/kindle/viewoptions/AaLegacySettingsManager$getReadingPresetsObserver$1$onPresetInfoChanged$1$2;->INSTANCE:Lcom/amazon/kindle/viewoptions/AaLegacySettingsManager$getReadingPresetsObserver$1$onPresetInfoChanged$1$2;

    new-array v5, v7, [I

    sget-object v18, Lcom/amazon/kindle/viewoptions/AaLegacySettingsManager$getReadingPresetsObserver$1$onPresetInfoChanged$1$3;->INSTANCE:Lcom/amazon/kindle/viewoptions/AaLegacySettingsManager$getReadingPresetsObserver$1$onPresetInfoChanged$1$3;

    const-string v9, ""

    const-string v17, ""

    move-object v8, v4

    move/from16 v15, v16

    move-object/from16 v16, v5

    .line 1097
    invoke-direct/range {v8 .. v19}, Lcom/amazon/kindle/krx/viewoptions/settingdisplay/CheckableRadioGroup;-><init>(Ljava/lang/String;I[I[ILjava/util/List;Lkotlin/jvm/functions/Function1;I[ILjava/lang/String;Lkotlin/jvm/functions/Function1;Z)V

    goto :goto_3

    .line 1100
    :cond_3
    new-instance v4, Lcom/amazon/kindle/krx/viewoptions/settingdisplay/RadioGroup;

    const/4 v11, 0x0

    new-array v12, v7, [I

    new-array v13, v7, [I

    .line 1101
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v14

    sget-object v15, Lcom/amazon/kindle/viewoptions/AaLegacySettingsManager$getReadingPresetsObserver$1$onPresetInfoChanged$1$4;->INSTANCE:Lcom/amazon/kindle/viewoptions/AaLegacySettingsManager$getReadingPresetsObserver$1$onPresetInfoChanged$1$4;

    new-array v5, v7, [I

    const-string v9, ""

    const-string v10, ""

    move-object v8, v4

    move-object/from16 v17, v5

    .line 1100
    invoke-direct/range {v8 .. v17}, Lcom/amazon/kindle/krx/viewoptions/settingdisplay/RadioGroup;-><init>(Ljava/lang/String;Ljava/lang/String;I[I[ILjava/util/List;Lkotlin/jvm/functions/Function1;I[I)V

    .line 1095
    :goto_3
    iput-object v4, v3, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    goto :goto_4

    .line 1088
    :pswitch_5
    invoke-static {}, Lcom/amazon/kindle/viewoptions/AaSettingManager;->getInstance()Lcom/amazon/kcp/debug/IAaSettingsUtil;

    move-result-object v5

    invoke-interface {v5}, Lcom/amazon/kcp/debug/IAaSettingsUtil;->readingPresetManager()Lcom/amazon/ksdk/presets/ReadingPresetsManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/amazon/ksdk/presets/ReadingPresetsManager;->activePreset()Lcom/amazon/ksdk/presets/ReadingPreset;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/amazon/ksdk/presets/ReadingPreset;->getLongForSetting(Lcom/amazon/ksdk/presets/AaSettingType;)I

    move-result v11

    .line 1089
    new-instance v4, Lcom/amazon/kindle/krx/viewoptions/settingdisplay/Seekbar;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    .line 1090
    sget-object v14, Lcom/amazon/kindle/viewoptions/AaLegacySettingsManager$getReadingPresetsObserver$1$onPresetInfoChanged$1$1;->INSTANCE:Lcom/amazon/kindle/viewoptions/AaLegacySettingsManager$getReadingPresetsObserver$1$onPresetInfoChanged$1$1;

    const/4 v15, 0x0

    const/16 v16, 0x100

    const/16 v17, 0x0

    const-string v7, ""

    move-object v6, v4

    .line 1089
    invoke-direct/range {v6 .. v17}, Lcom/amazon/kindle/krx/viewoptions/settingdisplay/Seekbar;-><init>(Ljava/lang/String;Landroid/view/View;Landroid/view/View;IIZZLkotlin/jvm/functions/Function2;Ljava/lang/Integer;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object v4, v3, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 1155
    :cond_4
    :goto_4
    iget-object v3, v3, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    move-object v7, v3

    check-cast v7, Lcom/amazon/kindle/krx/viewoptions/settingdisplay/AaSettingDisplay;

    if-eqz v7, :cond_0

    .line 1156
    new-instance v3, Lcom/amazon/kindle/krx/viewoptions/AaSetting;

    invoke-virtual {v2}, Lcom/amazon/kindle/krx/viewoptions/AaSettingIdentifier;->getValue()I

    move-result v5

    const/4 v6, 0x0

    .line 1157
    sget-object v8, Lcom/amazon/kindle/viewoptions/AaLegacySettingsManager$getReadingPresetsObserver$1$onPresetInfoChanged$1$9$1;->INSTANCE:Lcom/amazon/kindle/viewoptions/AaLegacySettingsManager$getReadingPresetsObserver$1$onPresetInfoChanged$1$9$1;

    const/4 v9, 0x0

    const/16 v10, 0x10

    const/4 v11, 0x0

    move-object v4, v3

    .line 1156
    invoke-direct/range {v4 .. v11}, Lcom/amazon/kindle/krx/viewoptions/AaSetting;-><init>(IILcom/amazon/kindle/krx/viewoptions/settingdisplay/AaSettingDisplay;Lkotlin/jvm/functions/Function0;Lcom/amazon/kindle/krx/viewoptions/settingdisplay/AaSettingDisplay;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-static {v3}, Lcom/amazon/kindle/krx/viewoptions/AaSettingUpdateManager;->notifySettingUpdate(Lcom/amazon/kindle/krx/viewoptions/AaSetting;)V

    goto/16 :goto_0

    :cond_5
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onPresetsListChanged()V
    .locals 0

    return-void
.end method
