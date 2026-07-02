.class public final Lcom/amazon/kindle/viewoptions/KSDKSettingsProvider;
.super Ljava/lang/Object;
.source "KSDKSettingsProvider.kt"

# interfaces
.implements Lcom/amazon/kindle/krx/viewoptions/IAaSettingsProvider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kindle/viewoptions/KSDKSettingsProvider$JsonKeys;,
        Lcom/amazon/kindle/viewoptions/KSDKSettingsProvider$DisplayType;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nKSDKSettingsProvider.kt\nKotlin\n*S Kotlin\n*F\n+ 1 KSDKSettingsProvider.kt\ncom/amazon/kindle/viewoptions/KSDKSettingsProvider\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,146:1\n734#2:147\n825#2,2:148\n1517#2:150\n1588#2,3:151\n1013#2:154\n734#2:155\n825#2,2:156\n*E\n*S KotlinDebug\n*F\n+ 1 KSDKSettingsProvider.kt\ncom/amazon/kindle/viewoptions/KSDKSettingsProvider\n*L\n133#1:147\n133#1,2:148\n134#1:150\n134#1,3:151\n138#1:154\n140#1:155\n140#1,2:156\n*E\n"
.end annotation


# instance fields
.field private dataSource:Lcom/amazon/kindle/viewoptions/KSDKSettingDataSource;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
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

.method public final fromJSONObject(Landroid/content/Context;Lorg/json/JSONObject;)Lcom/amazon/kindle/krx/viewoptions/AaSetting;
    .locals 39

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    const-string v3, "context"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v3, "settingObject"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50
    sget-object v3, Lcom/amazon/kindle/viewoptions/KSDKSettingsProvider$JsonKeys;->IDENTIFIER:Lcom/amazon/kindle/viewoptions/KSDKSettingsProvider$JsonKeys;

    invoke-virtual {v3}, Lcom/amazon/kindle/viewoptions/KSDKSettingsProvider$JsonKeys;->getKey()Ljava/lang/String;

    move-result-object v3

    const/4 v4, -0x1

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v6

    .line 51
    sget-object v3, Lcom/amazon/kindle/viewoptions/KSDKSettingsProvider$JsonKeys;->PRIORITY:Lcom/amazon/kindle/viewoptions/KSDKSettingsProvider$JsonKeys;

    invoke-virtual {v3}, Lcom/amazon/kindle/viewoptions/KSDKSettingsProvider$JsonKeys;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v7

    .line 52
    sget-object v3, Lcom/amazon/kindle/viewoptions/KSDKSettingsProvider$JsonKeys;->DISPLAY:Lcom/amazon/kindle/viewoptions/KSDKSettingsProvider$JsonKeys;

    invoke-virtual {v3}, Lcom/amazon/kindle/viewoptions/KSDKSettingsProvider$JsonKeys;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v2, :cond_a

    .line 53
    sget-object v4, Lcom/amazon/kindle/viewoptions/KSDKSettingsProvider$JsonKeys;->TITLE:Lcom/amazon/kindle/viewoptions/KSDKSettingsProvider$JsonKeys;

    invoke-virtual {v4}, Lcom/amazon/kindle/viewoptions/KSDKSettingsProvider$JsonKeys;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    const-string v5, ""

    if-eqz v4, :cond_0

    sget-object v4, Lcom/amazon/kindle/viewoptions/KSDKSettingsProvider$JsonKeys;->TITLE:Lcom/amazon/kindle/viewoptions/KSDKSettingsProvider$JsonKeys;

    invoke-virtual {v4}, Lcom/amazon/kindle/viewoptions/KSDKSettingsProvider$JsonKeys;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    goto :goto_0

    :cond_0
    move-object v4, v5

    .line 54
    :goto_0
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "aa_menu_v2_"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v10, "_title"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v10, "string"

    invoke-virtual {v0, v1, v8, v10}, Lcom/amazon/kindle/viewoptions/KSDKSettingsProvider;->getResourceFromString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 55
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, "_subtitle"

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v1, v4, v10}, Lcom/amazon/kindle/viewoptions/KSDKSettingsProvider;->getResourceFromString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 56
    sget-object v4, Lcom/amazon/kindle/viewoptions/KSDKSettingsProvider$JsonKeys;->DISPLAY_TYPE:Lcom/amazon/kindle/viewoptions/KSDKSettingsProvider$JsonKeys;

    invoke-virtual {v4}, Lcom/amazon/kindle/viewoptions/KSDKSettingsProvider$JsonKeys;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    sget-object v4, Lcom/amazon/kindle/viewoptions/KSDKSettingsProvider$JsonKeys;->DISPLAY_TYPE:Lcom/amazon/kindle/viewoptions/KSDKSettingsProvider$JsonKeys;

    invoke-virtual {v4}, Lcom/amazon/kindle/viewoptions/KSDKSettingsProvider$JsonKeys;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    .line 59
    :cond_1
    new-instance v2, Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder;

    move-object v9, v2

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x0

    const/16 v32, 0x0

    const/16 v33, 0x0

    const/16 v34, 0x0

    const/16 v35, 0x0

    const/16 v36, 0x0

    const v37, 0x7ffffff

    const/16 v38, 0x0

    invoke-direct/range {v9 .. v38}, Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/view/View;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;Ljava/lang/Integer;Ljava/lang/Boolean;Landroid/view/View;Landroid/view/View;Ljava/lang/Integer;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/Integer;[I[ILjava/util/List;Ljava/util/List;[I[ILkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Ljava/util/List;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder$BuildType;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 61
    sget-object v4, Lcom/amazon/kindle/viewoptions/KSDKSettingsProvider$DisplayType;->TOGGLE:Lcom/amazon/kindle/viewoptions/KSDKSettingsProvider$DisplayType;

    invoke-virtual {v4}, Lcom/amazon/kindle/viewoptions/KSDKSettingsProvider$DisplayType;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 62
    instance-of v4, v8, Ljava/lang/String;

    if-nez v4, :cond_2

    move-object v8, v3

    :cond_2
    invoke-virtual {v2, v8}, Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder;->title(Ljava/lang/String;)Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder;

    instance-of v4, v1, Ljava/lang/String;

    if-nez v4, :cond_3

    move-object v1, v3

    :cond_3
    invoke-virtual {v2, v1}, Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder;->subTitle(Ljava/lang/String;)Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder;

    .line 63
    sget-object v1, Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder$BuildType;->TOGGLE:Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder$BuildType;

    invoke-virtual {v2, v1}, Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder;->buildType(Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder$BuildType;)Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder;

    .line 72
    :cond_4
    invoke-virtual {v2}, Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder;->getBuildType()Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder$BuildType;

    move-result-object v1

    sget-object v4, Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder$BuildType;->TOGGLE:Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder$BuildType;

    if-ne v1, v4, :cond_6

    .line 73
    new-instance v1, Lcom/amazon/kindle/viewoptions/KSDKSettingsProvider$fromJSONObject$$inlined$let$lambda$1;

    invoke-direct {v1, v0, v6}, Lcom/amazon/kindle/viewoptions/KSDKSettingsProvider$fromJSONObject$$inlined$let$lambda$1;-><init>(Lcom/amazon/kindle/viewoptions/KSDKSettingsProvider;I)V

    invoke-virtual {v2, v1}, Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder;->sliderChangeHandler(Lkotlin/jvm/functions/Function2;)Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder;

    .line 74
    new-instance v1, Lcom/amazon/kindle/viewoptions/KSDKSettingsProvider$fromJSONObject$$inlined$let$lambda$2;

    invoke-direct {v1, v0, v6}, Lcom/amazon/kindle/viewoptions/KSDKSettingsProvider$fromJSONObject$$inlined$let$lambda$2;-><init>(Lcom/amazon/kindle/viewoptions/KSDKSettingsProvider;I)V

    invoke-virtual {v2, v1}, Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder;->toggleChangeHandler(Lkotlin/jvm/functions/Function1;)Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder;

    .line 75
    new-instance v1, Lcom/amazon/kindle/viewoptions/KSDKSettingsProvider$fromJSONObject$$inlined$let$lambda$3;

    invoke-direct {v1, v0, v6}, Lcom/amazon/kindle/viewoptions/KSDKSettingsProvider$fromJSONObject$$inlined$let$lambda$3;-><init>(Lcom/amazon/kindle/viewoptions/KSDKSettingsProvider;I)V

    invoke-virtual {v2, v1}, Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder;->optionListChangeHandler(Lkotlin/jvm/functions/Function1;)Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder;

    .line 76
    iget-object v1, v0, Lcom/amazon/kindle/viewoptions/KSDKSettingsProvider;->dataSource:Lcom/amazon/kindle/viewoptions/KSDKSettingDataSource;

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Lcom/amazon/kindle/viewoptions/KSDKSettingDataSource;->getBoolSettingGetter$KindleReaderLibrary_release()Lkotlin/jvm/functions/Function1;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v1, v4}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    goto :goto_1

    :cond_5
    move-object v1, v3

    :goto_1
    invoke-virtual {v2, v1}, Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder;->initialBooleanValue(Ljava/lang/Boolean;)Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder;

    goto :goto_3

    .line 78
    :cond_6
    new-instance v1, Lcom/amazon/kindle/viewoptions/KSDKSettingsProvider$fromJSONObject$$inlined$let$lambda$4;

    invoke-direct {v1, v0, v6}, Lcom/amazon/kindle/viewoptions/KSDKSettingsProvider$fromJSONObject$$inlined$let$lambda$4;-><init>(Lcom/amazon/kindle/viewoptions/KSDKSettingsProvider;I)V

    invoke-virtual {v2, v1}, Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder;->sliderChangeHandler(Lkotlin/jvm/functions/Function2;)Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder;

    .line 79
    new-instance v1, Lcom/amazon/kindle/viewoptions/KSDKSettingsProvider$fromJSONObject$$inlined$let$lambda$5;

    invoke-direct {v1, v0, v6}, Lcom/amazon/kindle/viewoptions/KSDKSettingsProvider$fromJSONObject$$inlined$let$lambda$5;-><init>(Lcom/amazon/kindle/viewoptions/KSDKSettingsProvider;I)V

    invoke-virtual {v2, v1}, Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder;->toggleChangeHandler(Lkotlin/jvm/functions/Function1;)Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder;

    .line 80
    new-instance v1, Lcom/amazon/kindle/viewoptions/KSDKSettingsProvider$fromJSONObject$$inlined$let$lambda$6;

    invoke-direct {v1, v0, v6}, Lcom/amazon/kindle/viewoptions/KSDKSettingsProvider$fromJSONObject$$inlined$let$lambda$6;-><init>(Lcom/amazon/kindle/viewoptions/KSDKSettingsProvider;I)V

    invoke-virtual {v2, v1}, Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder;->optionListChangeHandler(Lkotlin/jvm/functions/Function1;)Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder;

    .line 81
    iget-object v1, v0, Lcom/amazon/kindle/viewoptions/KSDKSettingsProvider;->dataSource:Lcom/amazon/kindle/viewoptions/KSDKSettingDataSource;

    if-eqz v1, :cond_7

    invoke-virtual {v1}, Lcom/amazon/kindle/viewoptions/KSDKSettingDataSource;->getIntSettingGetter$KindleReaderLibrary_release()Lkotlin/jvm/functions/Function1;

    move-result-object v1

    if-eqz v1, :cond_7

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v1, v4}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    goto :goto_2

    :cond_7
    move-object v1, v3

    :goto_2
    invoke-virtual {v2, v1}, Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder;->initialIntValue(Ljava/lang/Integer;)Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder;

    .line 86
    :goto_3
    invoke-virtual {v2}, Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder;->build()Lcom/amazon/kindle/krx/viewoptions/settingdisplay/AaSettingDisplay;

    move-result-object v8

    const-string v1, "disabled"

    .line 87
    invoke-virtual {v2, v1}, Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder;->title(Ljava/lang/String;)Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder;

    invoke-virtual {v2, v1}, Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder;->subTitle(Ljava/lang/String;)Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder;

    .line 88
    sget-object v1, Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder$BuildType;->MESSAGE:Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder$BuildType;

    invoke-virtual {v2, v1}, Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder;->buildType(Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder$BuildType;)Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder;

    .line 89
    invoke-virtual {v2}, Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder;->build()Lcom/amazon/kindle/krx/viewoptions/settingdisplay/AaSettingDisplay;

    move-result-object v1

    .line 91
    sget-object v2, Lcom/amazon/kindle/viewoptions/KSDKSettingsProvider$DisplayType;->TOGGLE:Lcom/amazon/kindle/viewoptions/KSDKSettingsProvider$DisplayType;

    invoke-virtual {v2}, Lcom/amazon/kindle/viewoptions/KSDKSettingsProvider$DisplayType;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    if-eqz v8, :cond_9

    .line 92
    new-instance v2, Lcom/amazon/kindle/krx/viewoptions/AaSetting;

    sget-object v9, Lcom/amazon/kindle/viewoptions/KSDKSettingsProvider$fromJSONObject$2;->INSTANCE:Lcom/amazon/kindle/viewoptions/KSDKSettingsProvider$fromJSONObject$2;

    if-eqz v1, :cond_8

    goto :goto_4

    .line 93
    :cond_8
    sget-object v1, Lcom/amazon/kindle/krx/viewoptions/settingdisplay/None;->INSTANCE:Lcom/amazon/kindle/krx/viewoptions/settingdisplay/None;

    :goto_4
    move-object v10, v1

    move-object v5, v2

    .line 92
    invoke-direct/range {v5 .. v10}, Lcom/amazon/kindle/krx/viewoptions/AaSetting;-><init>(IILcom/amazon/kindle/krx/viewoptions/settingdisplay/AaSettingDisplay;Lkotlin/jvm/functions/Function0;Lcom/amazon/kindle/krx/viewoptions/settingdisplay/AaSettingDisplay;)V

    return-object v2

    .line 95
    :cond_9
    iget-object v1, v0, Lcom/amazon/kindle/viewoptions/KSDKSettingsProvider;->dataSource:Lcom/amazon/kindle/viewoptions/KSDKSettingDataSource;

    if-eqz v1, :cond_a

    invoke-virtual {v1, v6}, Lcom/amazon/kindle/viewoptions/KSDKSettingDataSource;->getSetting(I)Lcom/amazon/kindle/krx/viewoptions/AaSetting;

    move-result-object v3

    :cond_a
    return-object v3
.end method

.method public final getDataSource()Lcom/amazon/kindle/viewoptions/KSDKSettingDataSource;
    .locals 1

    .line 20
    iget-object v0, p0, Lcom/amazon/kindle/viewoptions/KSDKSettingsProvider;->dataSource:Lcom/amazon/kindle/viewoptions/KSDKSettingDataSource;

    return-object v0
.end method

.method public final getResourceFromString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "input"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "type"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 44
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p2, p3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p2

    if-eqz p2, :cond_0

    .line 45
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    const-string p2, "context.resources.getString(resId)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string p1, "error"

    :goto_0
    return-object p1
.end method

.method public getSettings(Lcom/amazon/kindle/krx/viewoptions/AaTabType;Landroid/content/Context;)Ljava/util/List;
    .locals 7
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

    const-string/jumbo v0, "tab"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 125
    invoke-static {}, Lcom/amazon/kcp/debug/AaMenuUtils;->shouldEnableAaMenuJSONRefactor()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    .line 127
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p0, p1}, Lcom/amazon/kindle/viewoptions/KSDKSettingsProvider;->json(Lcom/amazon/kindle/krx/viewoptions/AaTabType;)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object p1

    const-string v0, "context.resources.openRawResource(json(tab))"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 128
    new-instance v0, Ljava/util/Scanner;

    invoke-direct {v0, p1}, Ljava/util/Scanner;-><init>(Ljava/io/InputStream;)V

    const-string p1, "\\A"

    invoke-virtual {v0, p1}, Ljava/util/Scanner;->useDelimiter(Ljava/lang/String;)Ljava/util/Scanner;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Scanner;->next()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Scanner(inputStream).useDelimiter(\"\\\\A\").next()"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 129
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 130
    invoke-virtual {p0, p2, v0}, Lcom/amazon/kindle/viewoptions/KSDKSettingsProvider;->settingsFromJson(Landroid/content/Context;Lorg/json/JSONObject;)Ljava/util/List;

    move-result-object p1

    goto :goto_4

    .line 132
    :cond_0
    sget-object p2, Lcom/amazon/kindle/viewoptions/utils/AaCoreSettingUtils;->INSTANCE:Lcom/amazon/kindle/viewoptions/utils/AaCoreSettingUtils;

    invoke-virtual {p2}, Lcom/amazon/kindle/viewoptions/utils/AaCoreSettingUtils;->getCoreSettings()Ljava/util/Set;

    move-result-object p2

    .line 147
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 148
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_1
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v5, v4

    check-cast v5, Lcom/amazon/kindle/krx/viewoptions/AaSettingIdentifier;

    .line 133
    sget-object v6, Lcom/amazon/kindle/viewoptions/utils/AaCoreSettingUtils;->INSTANCE:Lcom/amazon/kindle/viewoptions/utils/AaCoreSettingUtils;

    invoke-virtual {v5}, Lcom/amazon/kindle/krx/viewoptions/AaSettingIdentifier;->getValue()I

    move-result v5

    invoke-virtual {v6, v5}, Lcom/amazon/kindle/viewoptions/utils/AaCoreSettingUtils;->tabTypeForAaSettingIdentifier(I)Lcom/amazon/kindle/krx/viewoptions/AaTabType;

    move-result-object v5

    if-ne v5, p1, :cond_2

    const/4 v5, 0x1

    goto :goto_1

    :cond_2
    const/4 v5, 0x0

    :goto_1
    if-eqz v5, :cond_1

    invoke-interface {v0, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 150
    :cond_3
    new-instance p1, Ljava/util/ArrayList;

    const/16 p2, 0xa

    invoke-static {v0, p2}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result p2

    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(I)V

    .line 151
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_2
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 152
    check-cast v0, Lcom/amazon/kindle/krx/viewoptions/AaSettingIdentifier;

    .line 134
    iget-object v4, p0, Lcom/amazon/kindle/viewoptions/KSDKSettingsProvider;->dataSource:Lcom/amazon/kindle/viewoptions/KSDKSettingDataSource;

    if-eqz v4, :cond_4

    invoke-virtual {v0}, Lcom/amazon/kindle/krx/viewoptions/AaSettingIdentifier;->getValue()I

    move-result v0

    invoke-virtual {v4, v0}, Lcom/amazon/kindle/viewoptions/KSDKSettingDataSource;->getSetting(I)Lcom/amazon/kindle/krx/viewoptions/AaSetting;

    move-result-object v0

    goto :goto_3

    :cond_4
    move-object v0, v1

    :goto_3
    invoke-interface {p1, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 137
    :cond_5
    :goto_4
    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->filterNotNull(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p1

    .line 154
    new-instance p2, Lcom/amazon/kindle/viewoptions/KSDKSettingsProvider$getSettings$$inlined$sortedBy$1;

    invoke-direct {p2}, Lcom/amazon/kindle/viewoptions/KSDKSettingsProvider$getSettings$$inlined$sortedBy$1;-><init>()V

    invoke-static {p1, p2}, Lkotlin/collections/CollectionsKt;->sortedWith(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    move-result-object p1

    .line 155
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 156
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_6
    :goto_5
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lcom/amazon/kindle/krx/viewoptions/AaSetting;

    .line 141
    iget-object v5, p0, Lcom/amazon/kindle/viewoptions/KSDKSettingsProvider;->dataSource:Lcom/amazon/kindle/viewoptions/KSDKSettingDataSource;

    if-eqz v5, :cond_7

    invoke-virtual {v5}, Lcom/amazon/kindle/viewoptions/KSDKSettingDataSource;->getVisibilityHandler$KindleReaderLibrary_release()Lkotlin/jvm/functions/Function1;

    move-result-object v5

    if-eqz v5, :cond_7

    invoke-virtual {v4}, Lcom/amazon/kindle/krx/viewoptions/AaSetting;->getIdentifier()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v5, v4}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/amazon/kindle/krx/viewoptions/DisplayState;

    goto :goto_6

    :cond_7
    move-object v4, v1

    :goto_6
    if-eqz v4, :cond_8

    .line 142
    sget-object v5, Lcom/amazon/kindle/krx/viewoptions/DisplayState;->HIDDEN:Lcom/amazon/kindle/krx/viewoptions/DisplayState;

    if-eq v4, v5, :cond_8

    const/4 v4, 0x1

    goto :goto_7

    :cond_8
    const/4 v4, 0x0

    :goto_7
    if-eqz v4, :cond_6

    invoke-interface {p2, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_9
    return-object p2
.end method

.method public final json(Lcom/amazon/kindle/krx/viewoptions/AaTabType;)I
    .locals 1

    const-string/jumbo v0, "tab"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 112
    sget-object v0, Lcom/amazon/kindle/viewoptions/KSDKSettingsProvider$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    packed-switch p1, :pswitch_data_0

    .line 119
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1

    :pswitch_0
    sget p1, Lcom/amazon/kindle/krl/R$raw;->merged_settings:I

    goto :goto_0

    .line 118
    :pswitch_1
    sget p1, Lcom/amazon/kindle/krl/R$raw;->letterboxing_settings:I

    goto :goto_0

    .line 117
    :pswitch_2
    sget p1, Lcom/amazon/kindle/krl/R$raw;->guidedview_settings:I

    goto :goto_0

    .line 116
    :pswitch_3
    sget p1, Lcom/amazon/kindle/krl/R$raw;->more_settings:I

    goto :goto_0

    .line 115
    :pswitch_4
    sget p1, Lcom/amazon/kindle/krl/R$raw;->theme_settings:I

    goto :goto_0

    .line 114
    :pswitch_5
    sget p1, Lcom/amazon/kindle/krl/R$raw;->layout_settings:I

    goto :goto_0

    .line 113
    :pswitch_6
    sget p1, Lcom/amazon/kindle/krl/R$raw;->font_settings:I

    :goto_0
    return p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
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

.method public final setDataSource(Lcom/amazon/kindle/viewoptions/KSDKSettingDataSource;)V
    .locals 0

    .line 20
    iput-object p1, p0, Lcom/amazon/kindle/viewoptions/KSDKSettingsProvider;->dataSource:Lcom/amazon/kindle/viewoptions/KSDKSettingDataSource;

    return-void
.end method

.method public final settingsFromJson(Landroid/content/Context;Lorg/json/JSONObject;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lorg/json/JSONObject;",
            ")",
            "Ljava/util/List<",
            "Lcom/amazon/kindle/krx/viewoptions/AaSetting;",
            ">;"
        }
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "jsonObject"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "settings"

    .line 99
    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p2

    if-eqz p2, :cond_3

    .line 100
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 101
    invoke-virtual {p2}, Lorg/json/JSONArray;->length()I

    move-result v2

    :goto_0
    if-ge v1, v2, :cond_2

    .line 102
    invoke-virtual {p2, v1}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    instance-of v4, v3, Lorg/json/JSONObject;

    if-nez v4, :cond_0

    const/4 v3, 0x0

    :cond_0
    check-cast v3, Lorg/json/JSONObject;

    if-eqz v3, :cond_1

    .line 104
    invoke-virtual {p0, p1, v3}, Lcom/amazon/kindle/viewoptions/KSDKSettingsProvider;->fromJSONObject(Landroid/content/Context;Lorg/json/JSONObject;)Lcom/amazon/kindle/krx/viewoptions/AaSetting;

    move-result-object v3

    .line 105
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-object v0

    .line 99
    :cond_3
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1
.end method
