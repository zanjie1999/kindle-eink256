.class public final Lcom/amazon/kcp/util/GroupContentUtils;
.super Ljava/lang/Object;
.source "GroupContentUtils.java"


# static fields
.field private static final ASIN_KEY:Ljava/lang/String; = "asin"

.field private static final CORRECTIONS_KEY:Ljava/lang/String; = "corrections"

.field private static final ENABLE_COMICS_FILTER:Ljava/lang/String; = "EnableComicsFilter"

.field private static final ENABLE_SERIES_COVER_IMAGE:Ljava/lang/String; = "EnableSeriesCoverImage"

.field private static final ERROR_TYPE_KEY:Ljava/lang/String; = "error_type"

.field private static final FORMAT_VERSION:Ljava/lang/String; = "1.0"

.field private static final FORMAT_VERSION_KEY:Ljava/lang/String; = "format_version"

.field private static final GROUP_CONTENT_SETTINGS:Ljava/lang/String; = "GroupContentSettings"

.field private static final MARKETPLACE_ID_KEY:Ljava/lang/String; = "marketplace_id"

.field private static final SERIES_ERROR_RESPONSE_TOPIC:Ljava/lang/String; = "Overlays.Corrections.Submission"

.field private static final SERIES_ID_KEY:Ljava/lang/String; = "series_id"

.field private static final SERIES_LEVEL_REPORT_KEY:Ljava/lang/String; = "series_level_report"

.field private static final SERIES_UPSELL_DEBUG_SETTING_KEY:Ljava/lang/String; = "SeriesUpsellDebugSettingKey"

.field private static final SOFTWARE_VERSION_KEY:Ljava/lang/String; = "software_version"

.field private static final TAG:Ljava/lang/String;

.field private static final USER_COMMENT_KEY:Ljava/lang/String; = "user_comment"

.field private static isGroupingParameterEnabled:Ljava/lang/Boolean;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 59
    const-class v0, Lcom/amazon/kcp/util/GroupContentUtils;

    invoke-static {v0}, Lcom/amazon/kindle/log/Log;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kcp/util/GroupContentUtils;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    .line 60
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/amazon/kcp/util/GroupContentUtils;->isGroupingParameterEnabled:Ljava/lang/Boolean;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    new-instance v0, Ljava/lang/IllegalAccessError;

    invoke-direct {v0}, Ljava/lang/IllegalAccessError;-><init>()V

    throw v0
.end method

.method private static getGroupContentDebugSetting(Ljava/lang/String;)Z
    .locals 3
    .annotation runtime Lcom/amazon/kindle/krx/strictmode/SuppressStrictMode;
        violations = {
            .enum Lcom/amazon/kindle/krx/strictmode/StrictModeViolation;->DiskReadViolation:Lcom/amazon/kindle/krx/strictmode/StrictModeViolation;
        }
    .end annotation

    .line 269
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "GroupContentSettings"

    .line 270
    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 271
    invoke-interface {v0, p0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public static getGroupCoverBookId(Lcom/amazon/kindle/model/content/IBookID;)Lcom/amazon/kindle/model/content/IBookID;
    .locals 1

    .line 135
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getGroupService()Lcom/amazon/kindle/content/IGroupService;

    move-result-object v0

    .line 136
    invoke-interface {v0, p0}, Lcom/amazon/kindle/content/IGroupService;->getGroupCoverBookId(Lcom/amazon/kindle/model/content/IBookID;)Lcom/amazon/kindle/model/content/IBookID;

    move-result-object v0

    if-eqz v0, :cond_0

    move-object p0, v0

    :cond_0
    return-object p0
.end method

.method public static getGroupCoverBookMetadata(Lcom/amazon/kindle/model/content/IBookID;)Lcom/amazon/kindle/model/content/IListableBook;
    .locals 2

    .line 120
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getGroupService()Lcom/amazon/kindle/content/IGroupService;

    move-result-object v0

    .line 121
    invoke-interface {v0, p0}, Lcom/amazon/kindle/content/IGroupService;->getGroupCoverBookId(Lcom/amazon/kindle/model/content/IBookID;)Lcom/amazon/kindle/model/content/IBookID;

    move-result-object p0

    .line 122
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getLibraryService()Lcom/amazon/kindle/content/ILibraryService;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 124
    invoke-interface {p0}, Lcom/amazon/kindle/model/content/IBookID;->getSerializedForm()Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x1

    invoke-interface {v0, p0, v1}, Lcom/amazon/kindle/cover/ICoverMetadataProvider;->getCoverMetadata(Ljava/lang/String;Z)Lcom/amazon/kindle/model/content/IListableBook;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getGroupItemsMetadataForId(Lcom/amazon/kindle/model/content/IBookID;Ljava/lang/String;)Lcom/amazon/kindle/content/GroupMetadata;
    .locals 2

    .line 169
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getGroupService()Lcom/amazon/kindle/content/IGroupService;

    move-result-object v0

    .line 170
    invoke-interface {p0}, Lcom/amazon/kindle/model/content/IBookID;->getSerializedForm()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/amazon/kindle/content/IGroupService;->getGroupMetadataWithItems(Ljava/lang/String;)Lcom/amazon/kindle/content/GroupMetadata;

    move-result-object v0

    if-nez v0, :cond_0

    .line 173
    new-instance v0, Lcom/amazon/kindle/content/GroupMetadata;

    invoke-interface {p0}, Lcom/amazon/kindle/model/content/IBookID;->getType()Lcom/amazon/kcp/library/models/BookType;

    move-result-object v1

    invoke-direct {v0, p0, p1, v1}, Lcom/amazon/kindle/content/GroupMetadata;-><init>(Lcom/amazon/kindle/model/content/IBookID;Ljava/lang/String;Lcom/amazon/kcp/library/models/BookType;)V

    :cond_0
    return-object v0
.end method

.method public static getGroupMetadataForId(Lcom/amazon/kindle/model/content/IBookID;Ljava/lang/String;)Lcom/amazon/kindle/content/GroupMetadata;
    .locals 2

    .line 150
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getGroupService()Lcom/amazon/kindle/content/IGroupService;

    move-result-object v0

    .line 151
    invoke-interface {p0}, Lcom/amazon/kindle/model/content/IBookID;->getSerializedForm()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/amazon/kindle/content/IGroupService;->getGroupMetadata(Ljava/lang/String;)Lcom/amazon/kindle/content/GroupMetadata;

    move-result-object v0

    if-nez v0, :cond_0

    .line 153
    new-instance v0, Lcom/amazon/kindle/content/GroupMetadata;

    invoke-interface {p0}, Lcom/amazon/kindle/model/content/IBookID;->getType()Lcom/amazon/kcp/library/models/BookType;

    move-result-object v1

    invoke-direct {v0, p0, p1, v1}, Lcom/amazon/kindle/content/GroupMetadata;-><init>(Lcom/amazon/kindle/model/content/IBookID;Ljava/lang/String;Lcom/amazon/kcp/library/models/BookType;)V

    :cond_0
    return-object v0
.end method

.method public static hasUserEnabledSeriesGrouping()Z
    .locals 1

    .line 100
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getUserSettingsController()Lcom/amazon/kcp/application/UserSettingsController;

    move-result-object v0

    .line 101
    invoke-virtual {v0}, Lcom/amazon/kcp/application/UserSettingsController;->isSeriesContentGrouped()Z

    move-result v0

    return v0
.end method

.method public static initializeGroupingParameterWeblab()V
    .locals 3

    .line 287
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getKindleReaderSDK()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 288
    new-instance v1, Lcom/amazon/kindle/weblab/OnOffWeblab;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getWeblabManager()Lcom/amazon/kindle/krx/mobileweblab/IWeblabManager;

    move-result-object v0

    const-string v2, "KINDLE_ANDROID_GROUPING_PARAMETER_ENABLED_359536"

    invoke-direct {v1, v0, v2}, Lcom/amazon/kindle/weblab/OnOffWeblab;-><init>(Lcom/amazon/kindle/krx/mobileweblab/IWeblabManager;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    .line 289
    invoke-virtual {v1}, Lcom/amazon/kindle/weblab/OnOffWeblab;->isOn()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/amazon/kcp/util/GroupContentUtils;->isGroupingParameterEnabled:Ljava/lang/Boolean;

    return-void
.end method

.method public static isComicFilterDebugEnabled()Z
    .locals 1

    const-string v0, "EnableComicsFilter"

    .line 228
    invoke-static {v0}, Lcom/amazon/kcp/util/GroupContentUtils;->getGroupContentDebugSetting(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isComicLibraryFilterEnabled()Z
    .locals 2

    .line 105
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 106
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/amazon/kindle/krl/R$bool;->dexter_is_comics_filter_enabled:I

    .line 107
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 108
    invoke-static {}, Lcom/amazon/kcp/util/GroupContentUtils;->isComicFilterDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public static isGroupingParameterEnabled()Ljava/lang/Boolean;
    .locals 1

    .line 296
    sget-object v0, Lcom/amazon/kcp/util/GroupContentUtils;->isGroupingParameterEnabled:Ljava/lang/Boolean;

    return-object v0
.end method

.method public static isSeriesContentGrouped()Z
    .locals 1

    .line 70
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getAuthenticationManager()Lcom/amazon/kcp/application/IAuthenticationManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IAuthenticationManager;->isAuthenticated()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 74
    :cond_0
    invoke-static {}, Lcom/amazon/kcp/util/GroupContentUtils;->hasUserEnabledSeriesGrouping()Z

    move-result v0

    return v0
.end method

.method public static isSeriesCoverImageDebugEnabled()Z
    .locals 1

    const-string v0, "EnableSeriesCoverImage"

    .line 219
    invoke-static {v0}, Lcom/amazon/kcp/util/GroupContentUtils;->getGroupContentDebugSetting(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isSeriesGroupingAvailable()Z
    .locals 1

    .line 93
    invoke-static {}, Lcom/amazon/kcp/util/GroupContentUtils;->isSeriesGroupingInitialized()Z

    move-result v0

    return v0
.end method

.method public static isSeriesGroupingInitialized()Z
    .locals 1

    .line 83
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getUserSettingsController()Lcom/amazon/kcp/application/UserSettingsController;

    move-result-object v0

    .line 84
    invoke-virtual {v0}, Lcom/amazon/kcp/application/UserSettingsController;->isSeriesGroupingStateInitialized()Z

    move-result v0

    return v0
.end method

.method public static isSeriesUpsellDebugEnabled()Z
    .locals 1

    const-string v0, "SeriesUpsellDebugSettingKey"

    .line 255
    invoke-static {v0}, Lcom/amazon/kcp/util/GroupContentUtils;->getGroupContentDebugSetting(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private static putGroupContentDebugSettings(Ljava/lang/String;Z)V
    .locals 3

    .line 276
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "GroupContentSettings"

    const/4 v2, 0x0

    .line 277
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 278
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 279
    invoke-interface {v0, p0, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 280
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static sendReportSeriesErrorMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JZ)V
    .locals 3

    .line 187
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "format_version"

    const-string v2, "1.0"

    .line 188
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "error_type"

    .line 189
    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p0

    const-string v0, "asin"

    .line 190
    invoke-virtual {p0, v0, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p0

    const-string/jumbo p4, "user_comment"

    .line 191
    invoke-virtual {p0, p4, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p0

    const-string p1, "series_id"

    .line 192
    invoke-virtual {p0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p0

    const-string p1, "marketplace_id"

    .line 193
    invoke-virtual {p0, p1, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p0

    const-string p1, "series_level_report"

    .line 194
    invoke-static {p7}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p0

    const-string p1, "software_version"

    .line 195
    invoke-static {p5, p6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p0

    .line 197
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    const-string p2, "corrections"

    .line 198
    invoke-virtual {p1, p2, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p0

    .line 200
    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    .line 201
    sget-object p1, Lcom/amazon/kcp/util/GroupContentUtils;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Sending series error message: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getMessengerServiceForPlugins()Lcom/amazon/kindle/krx/messaging/IMessengerService;

    move-result-object p1

    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object p2

    .line 203
    invoke-interface {p2}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getContext()Landroid/content/Context;

    move-result-object p2

    const-string p3, "Overlays.Corrections.Submission"

    const-string p4, "UTF-8"

    invoke-virtual {p0, p4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p0

    const/4 p4, 0x0

    new-array p4, p4, [Lcom/amazon/dcp/messaging/DeliveryOption;

    .line 202
    invoke-interface {p1, p2, p3, p0, p4}, Lcom/amazon/kindle/krx/messaging/IMessengerService;->send(Landroid/content/Context;Ljava/lang/String;[B[Lcom/amazon/dcp/messaging/DeliveryOption;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/amazon/kindle/krx/messaging/SendMessageFailureException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 209
    sget-object p1, Lcom/amazon/kcp/util/GroupContentUtils;->TAG:Ljava/lang/String;

    const-string p2, "Unable to send message"

    invoke-static {p1, p2, p0}, Lcom/amazon/kindle/log/Log;->warn(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_1
    move-exception p0

    .line 207
    sget-object p1, Lcom/amazon/kcp/util/GroupContentUtils;->TAG:Ljava/lang/String;

    const-string p2, "Unable to convert message to UTF-8"

    invoke-static {p1, p2, p0}, Lcom/amazon/kindle/log/Log;->warn(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_2
    move-exception p0

    .line 205
    sget-object p1, Lcom/amazon/kcp/util/GroupContentUtils;->TAG:Ljava/lang/String;

    const-string p2, "Unable to create JSON for message"

    invoke-static {p1, p2, p0}, Lcom/amazon/kindle/log/Log;->warn(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public static setComicFilterDebugEnabled(Z)V
    .locals 1

    const-string v0, "EnableComicsFilter"

    .line 246
    invoke-static {v0, p0}, Lcom/amazon/kcp/util/GroupContentUtils;->putGroupContentDebugSettings(Ljava/lang/String;Z)V

    return-void
.end method

.method public static setSeriesCoverImageDebugEnabled(Z)V
    .locals 1

    const-string v0, "EnableSeriesCoverImage"

    .line 237
    invoke-static {v0, p0}, Lcom/amazon/kcp/util/GroupContentUtils;->putGroupContentDebugSettings(Ljava/lang/String;Z)V

    return-void
.end method

.method public static setSeriesUpsellDebugEnabled(Z)V
    .locals 1

    const-string v0, "SeriesUpsellDebugSettingKey"

    .line 264
    invoke-static {v0, p0}, Lcom/amazon/kcp/util/GroupContentUtils;->putGroupContentDebugSettings(Ljava/lang/String;Z)V

    return-void
.end method
