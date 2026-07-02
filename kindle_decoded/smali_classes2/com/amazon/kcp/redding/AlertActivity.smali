.class public Lcom/amazon/kcp/redding/AlertActivity;
.super Lcom/amazon/kcp/redding/ReddingActivity;
.source "AlertActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kcp/redding/AlertActivity$AlertType;
    }
.end annotation


# static fields
.field public static final ALERT_BOOK_ID:Ljava/lang/String; = "alert_book_id"

.field public static final ALERT_CANCEL_TITLE:Ljava/lang/String; = "cancel_title"

.field public static final ALERT_LINK_TITLE:Ljava/lang/String; = "alert_link_title"

.field public static final ALERT_LINK_URL:Ljava/lang/String; = "alert_link_url"

.field public static final ALERT_MESSAGE:Ljava/lang/String; = "alert_message"

.field public static final ALERT_SETTINGS_ACTION:Ljava/lang/String; = "alert_settings_action"

.field public static final ALERT_TITLE:Ljava/lang/String; = "alert_title"

.field public static final ALERT_TYPE:Ljava/lang/String; = "alert_type"

.field private static final TAG:Ljava/lang/String;

.field private static final THE_DIALOG_ID:I = 0x1


# instance fields
.field private bookId:Ljava/lang/String;

.field private cancelTitle:Ljava/lang/String;

.field private linkTitle:Ljava/lang/String;

.field private linkUrl:Ljava/lang/String;

.field private message:Ljava/lang/String;

.field private settingsAction:Ljava/lang/String;

.field private title:Ljava/lang/String;

.field private type:Lcom/amazon/kcp/redding/AlertActivity$AlertType;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 49
    const-class v0, Lcom/amazon/kcp/redding/AlertActivity;

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kcp/redding/AlertActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 48
    invoke-direct {p0}, Lcom/amazon/kcp/redding/ReddingActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/amazon/kcp/redding/AlertActivity;)Ljava/lang/String;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/amazon/kcp/redding/AlertActivity;->linkUrl:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$100(Lcom/amazon/kcp/redding/AlertActivity;)Ljava/lang/String;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/amazon/kcp/redding/AlertActivity;->settingsAction:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$200()Ljava/lang/String;
    .locals 1

    .line 48
    sget-object v0, Lcom/amazon/kcp/redding/AlertActivity;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static createAlertIntent(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Landroid/content/Intent;
    .locals 6

    .line 216
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "ConnectionError"

    .line 217
    invoke-static {p0, v1}, Lcom/amazon/kindle/util/Utils;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 224
    new-instance p0, Ljava/util/GregorianCalendar;

    invoke-direct {p0}, Ljava/util/GregorianCalendar;-><init>()V

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Ljava/util/GregorianCalendar;->get(I)I

    move-result p0

    const/16 v1, 0x7db

    if-ge p0, v1, :cond_0

    .line 226
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 227
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "year"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 228
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v2

    sget-object v3, Lcom/amazon/kindle/krx/metrics/MetricType;->WARN:Lcom/amazon/kindle/krx/metrics/MetricType;

    const-string v4, "AndroidApplicationController"

    const-string v5, "ConnectionErrorBadDate"

    invoke-virtual {v2, v4, v5, v3, v1}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/krx/metrics/MetricType;Ljava/util/Map;)V

    .line 229
    sget v1, Lcom/amazon/kindle/krl/R$string;->error_title_date:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 230
    sget v2, Lcom/amazon/kindle/krl/R$string;->error_message_date:I

    new-array p1, p1, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, p1, v3

    invoke-virtual {v0, v2, p1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "android.settings.DATE_SETTINGS"

    goto :goto_0

    .line 236
    :cond_0
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->isAirplaneModeOn()Z

    move-result p0

    if-eqz p0, :cond_1

    .line 237
    sget p0, Lcom/amazon/kindle/krl/R$string;->airplane_mode:I

    invoke-virtual {v0, p0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 238
    sget p0, Lcom/amazon/kindle/krl/R$string;->turn_off_airplane_mode_message:I

    invoke-virtual {v0, p0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    const-string p1, "android.settings.AIRPLANE_MODE_SETTINGS"

    goto :goto_0

    .line 244
    :cond_1
    sget p0, Lcom/amazon/kindle/krl/R$string;->error_title_connection:I

    invoke-virtual {v0, p0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 245
    sget p0, Lcom/amazon/kindle/krl/R$string;->error_message_connection:I

    invoke-virtual {v0, p0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    const-string p1, "android.settings.WIRELESS_SETTINGS"

    .line 249
    :goto_0
    sget-object v0, Lcom/amazon/kcp/redding/AlertActivity$AlertType;->ANDROID_SETTINGS:Lcom/amazon/kcp/redding/AlertActivity$AlertType;

    invoke-static {v0, v1, p0, p2}, Lcom/amazon/kcp/redding/AlertActivity;->createBaseAlertIntent(Lcom/amazon/kcp/redding/AlertActivity$AlertType;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Landroid/content/Intent;

    move-result-object p0

    const-string p2, "alert_settings_action"

    .line 250
    invoke-virtual {p0, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_2

    :cond_2
    const-string v1, "UnregisteredUser"

    .line 251
    invoke-static {p0, v1}, Lcom/amazon/kindle/util/Utils;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 252
    sget p0, Lcom/amazon/kindle/krl/R$string;->register:I

    invoke-virtual {v0, p0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    .line 253
    sget p1, Lcom/amazon/kindle/krl/R$string;->error_message_unregistered:I

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 254
    sget-object v0, Lcom/amazon/kcp/redding/AlertActivity$AlertType;->UNREGISTERED_USER:Lcom/amazon/kcp/redding/AlertActivity$AlertType;

    invoke-static {v0, p0, p1, p2}, Lcom/amazon/kcp/redding/AlertActivity;->createBaseAlertIntent(Lcom/amazon/kcp/redding/AlertActivity$AlertType;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Landroid/content/Intent;

    move-result-object p0

    goto/16 :goto_2

    :cond_3
    const-string v1, "FontDownloadError"

    .line 255
    invoke-static {p0, v1}, Lcom/amazon/kindle/util/Utils;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 256
    sget p0, Lcom/amazon/kindle/krl/R$string;->error_title_download_content:I

    invoke-virtual {v0, p0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    .line 257
    sget p1, Lcom/amazon/kindle/krl/R$string;->error_message_font_download_fail:I

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 258
    sget-object v0, Lcom/amazon/kcp/redding/AlertActivity$AlertType;->CANCEL_MESSAGE:Lcom/amazon/kcp/redding/AlertActivity$AlertType;

    invoke-static {v0, p0, p1, p2}, Lcom/amazon/kcp/redding/AlertActivity;->createBaseAlertIntent(Lcom/amazon/kcp/redding/AlertActivity$AlertType;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Landroid/content/Intent;

    move-result-object p0

    goto/16 :goto_2

    :cond_4
    const-string v1, "BuyError"

    .line 260
    invoke-static {p0, v1}, Lcom/amazon/kindle/util/Utils;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 261
    sget p0, Lcom/amazon/kindle/krl/R$string;->error_title_buy:I

    invoke-virtual {v0, p0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    .line 262
    sget p1, Lcom/amazon/kindle/krl/R$string;->error_message_buy:I

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_1

    :cond_5
    const-string v1, "CustomerNotFound"

    .line 263
    invoke-static {p0, v1}, Lcom/amazon/kindle/util/Utils;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 264
    sget p0, Lcom/amazon/kindle/krl/R$string;->error_title_customer_not_found:I

    invoke-virtual {v0, p0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    .line 265
    sget p1, Lcom/amazon/kindle/krl/R$string;->error_message_customer_not_found:I

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_1

    :cond_6
    const-string v1, "DownloadContentError"

    .line 266
    invoke-static {p0, v1}, Lcom/amazon/kindle/util/Utils;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 268
    sget p0, Lcom/amazon/kindle/krl/R$string;->error_title_download_content:I

    invoke-virtual {v0, p0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    .line 269
    sget p1, Lcom/amazon/kindle/krl/R$string;->error_message_download_content:I

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_1

    :cond_7
    const-string v1, "InsufficientFunds"

    .line 270
    invoke-static {p0, v1}, Lcom/amazon/kindle/util/Utils;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 271
    sget p0, Lcom/amazon/kindle/krl/R$string;->error_title_credit_card:I

    invoke-virtual {v0, p0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    .line 272
    sget p1, Lcom/amazon/kindle/krl/R$string;->error_message_credit_card:I

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_1

    :cond_8
    const-string v1, "DeviceAlreadyRegistered"

    .line 273
    invoke-static {p0, v1}, Lcom/amazon/kindle/util/Utils;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 274
    sget p0, Lcom/amazon/kindle/krl/R$string;->error_title_device_already_registered:I

    invoke-virtual {v0, p0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    .line 275
    sget p1, Lcom/amazon/kindle/krl/R$string;->error_message_device_already_registered:I

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_1

    :cond_9
    const-string v1, "CredentialsRequired"

    .line 276
    invoke-static {p0, v1}, Lcom/amazon/kindle/util/Utils;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 277
    sget p0, Lcom/amazon/kindle/krl/R$string;->error_title_credentials_required:I

    invoke-virtual {v0, p0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    .line 278
    sget p1, Lcom/amazon/kindle/krl/R$string;->error_message_credentials_required:I

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_1

    :cond_a
    const-string v1, "DuplicateDeviceName"

    .line 279
    invoke-static {p0, v1}, Lcom/amazon/kindle/util/Utils;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 280
    sget p0, Lcom/amazon/kindle/krl/R$string;->error_title_duplicate_device_name:I

    invoke-virtual {v0, p0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    .line 281
    sget p1, Lcom/amazon/kindle/krl/R$string;->error_message_duplicate_device_name:I

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_1

    :cond_b
    const-string v1, "Server Error"

    .line 282
    invoke-static {p0, v1}, Lcom/amazon/kindle/util/Utils;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 283
    sget p0, Lcom/amazon/kindle/krl/R$string;->error_title_server:I

    invoke-virtual {v0, p0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    .line 284
    sget p1, Lcom/amazon/kindle/krl/R$string;->error_message_server:I

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_1

    :cond_c
    const-string v1, "OpenBookError"

    .line 285
    invoke-static {p0, v1}, Lcom/amazon/kindle/util/Utils;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 287
    sget p0, Lcom/amazon/kindle/krl/R$string;->error_title_open_book:I

    invoke-virtual {v0, p0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    .line 288
    sget p1, Lcom/amazon/kindle/krl/R$string;->error_message_open_book:I

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_1

    :cond_d
    const-string v1, "UnBuyError"

    .line 289
    invoke-static {p0, v1}, Lcom/amazon/kindle/util/Utils;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 290
    sget p0, Lcom/amazon/kindle/krl/R$string;->error_title_unbuy:I

    invoke-virtual {v0, p0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    .line 291
    sget p1, Lcom/amazon/kindle/krl/R$string;->error_message_unbuy:I

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_1

    :cond_e
    const-string v1, "InvalidAsin"

    .line 292
    invoke-static {p0, v1}, Lcom/amazon/kindle/util/Utils;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 293
    sget p0, Lcom/amazon/kindle/krl/R$string;->error_title_invalid_asin:I

    invoke-virtual {v0, p0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    .line 294
    sget p1, Lcom/amazon/kindle/krl/R$string;->error_message_invalid_asin:I

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_1

    :cond_f
    const-string v1, "FeatureDisabledInDemoMode"

    .line 295
    invoke-static {p0, v1}, Lcom/amazon/kindle/util/Utils;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 296
    sget p0, Lcom/amazon/kindle/krl/R$string;->not_available_in_demo_mode_title:I

    invoke-virtual {v0, p0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    .line 297
    sget p1, Lcom/amazon/kindle/krl/R$string;->not_available_in_demo_mode_message:I

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_10
    const-string v1, "FileSystemFull"

    .line 298
    invoke-static {p0, v1}, Lcom/amazon/kindle/util/Utils;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 299
    sget p0, Lcom/amazon/kindle/krl/R$string;->download_interrupted:I

    invoke-virtual {v0, p0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    .line 300
    sget p1, Lcom/amazon/kindle/krl/R$string;->full_device:I

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_11
    const-string v1, "DeeplinkingOpenError"

    .line 301
    invoke-static {p0, v1}, Lcom/amazon/kindle/util/Utils;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 302
    sget p0, Lcom/amazon/kindle/krl/R$string;->error:I

    invoke-virtual {v0, p0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    .line 303
    sget p1, Lcom/amazon/kindle/krl/R$string;->error_deeplinking_open:I

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_12
    if-eqz p0, :cond_13

    if-nez p1, :cond_14

    .line 305
    :cond_13
    sget-object v1, Lcom/amazon/kcp/redding/AlertActivity;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "User-displayable alert had null title or msg. Showing default message. Title was \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\", msg was \""

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\""

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 306
    sget p0, Lcom/amazon/kindle/krl/R$string;->error_title_unknown:I

    invoke-virtual {v0, p0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    .line 307
    sget p1, Lcom/amazon/kindle/krl/R$string;->error_message_unknown:I

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 310
    :cond_14
    :goto_1
    invoke-static {p0, p1, p2}, Lcom/amazon/kcp/redding/AlertActivity;->createBaseAlertIntent(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Landroid/content/Intent;

    move-result-object p0

    :goto_2
    return-object p0
.end method

.method public static createBaseAlertIntent(Lcom/amazon/kcp/redding/AlertActivity$AlertType;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Landroid/content/Intent;
    .locals 2

    .line 324
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/amazon/kcp/redding/AlertActivity;

    invoke-direct {v0, p3, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string p3, "alert_type"

    .line 325
    invoke-virtual {v0, p3, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const-string p0, "alert_title"

    .line 326
    invoke-virtual {v0, p0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p0, "alert_message"

    .line 327
    invoke-virtual {v0, p0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    return-object v0
.end method

.method public static createBaseAlertIntent(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Landroid/content/Intent;
    .locals 1

    .line 336
    sget-object v0, Lcom/amazon/kcp/redding/AlertActivity$AlertType;->MESSAGE:Lcom/amazon/kcp/redding/AlertActivity$AlertType;

    invoke-static {v0, p0, p1, p2}, Lcom/amazon/kcp/redding/AlertActivity;->createBaseAlertIntent(Lcom/amazon/kcp/redding/AlertActivity$AlertType;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method protected canShowUpdateDialog()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected getAlertType()Lcom/amazon/kcp/redding/AlertActivity$AlertType;
    .locals 1

    .line 566
    iget-object v0, p0, Lcom/amazon/kcp/redding/AlertActivity;->type:Lcom/amazon/kcp/redding/AlertActivity$AlertType;

    return-object v0
.end method

.method protected isCrashBitEnabled()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    .line 170
    invoke-super {p0, p1}, Lcom/amazon/kcp/redding/ReddingActivity;->onCreate(Landroid/os/Bundle;)V

    .line 172
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "alert_title"

    .line 173
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kcp/redding/AlertActivity;->title:Ljava/lang/String;

    const-string v0, "alert_message"

    .line 174
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kcp/redding/AlertActivity;->message:Ljava/lang/String;

    const-string v0, "alert_type"

    .line 175
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/amazon/kcp/redding/AlertActivity$AlertType;

    iput-object v0, p0, Lcom/amazon/kcp/redding/AlertActivity;->type:Lcom/amazon/kcp/redding/AlertActivity$AlertType;

    .line 177
    sget-object v1, Lcom/amazon/kcp/redding/AlertActivity$18;->$SwitchMap$com$amazon$kcp$redding$AlertActivity$AlertType:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const-string v1, "alert_book_id"

    const-string v2, "alert_link_url"

    const-string v3, "alert_link_title"

    packed-switch v0, :pswitch_data_0

    .line 205
    sget-object p1, Lcom/amazon/kcp/redding/AlertActivity;->TAG:Ljava/lang/String;

    const-string v0, "Unknown alert type or alert type not set"

    invoke-static {p1, v0}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 202
    :pswitch_0
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kcp/redding/AlertActivity;->bookId:Ljava/lang/String;

    goto :goto_0

    .line 198
    :pswitch_1
    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kcp/redding/AlertActivity;->linkTitle:Ljava/lang/String;

    const/4 v0, 0x0

    .line 199
    invoke-virtual {p1, v2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kcp/redding/AlertActivity;->linkUrl:Ljava/lang/String;

    goto :goto_0

    .line 193
    :pswitch_2
    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kcp/redding/AlertActivity;->linkTitle:Ljava/lang/String;

    .line 194
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kcp/redding/AlertActivity;->linkUrl:Ljava/lang/String;

    const-string v0, "cancel_title"

    .line 195
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kcp/redding/AlertActivity;->cancelTitle:Ljava/lang/String;

    goto :goto_0

    .line 190
    :pswitch_3
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kcp/redding/AlertActivity;->bookId:Ljava/lang/String;

    goto :goto_0

    :pswitch_4
    const-string v0, "alert_settings_action"

    .line 187
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kcp/redding/AlertActivity;->settingsAction:Ljava/lang/String;

    goto :goto_0

    .line 183
    :pswitch_5
    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kcp/redding/AlertActivity;->linkTitle:Ljava/lang/String;

    .line 184
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kcp/redding/AlertActivity;->linkUrl:Ljava/lang/String;

    :goto_0
    :pswitch_6
    const/4 p1, 0x1

    .line 208
    invoke-virtual {p0, p1}, Lcom/amazon/kcp/redding/ReddingActivity;->showDialogSafely(I)V

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 3

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    .line 342
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object p1

    return-object p1

    .line 345
    :cond_0
    new-instance p1, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-direct {p1, p0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 346
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/amazon/kindle/krl/R$bool;->should_show_icon_of_alert_dialog:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 347
    sget v0, Lcom/amazon/kindle/krl/R$attr;->alertDialogErrorIcon:I

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setIconAttribute(I)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 349
    :cond_1
    iget-object v0, p0, Lcom/amazon/kcp/redding/AlertActivity;->title:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 350
    iget-object v0, p0, Lcom/amazon/kcp/redding/AlertActivity;->message:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 352
    sget-object v0, Lcom/amazon/kcp/redding/AlertActivity$18;->$SwitchMap$com$amazon$kcp$redding$AlertActivity$AlertType:[I

    iget-object v1, p0, Lcom/amazon/kcp/redding/AlertActivity;->type:Lcom/amazon/kcp/redding/AlertActivity$AlertType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_0

    .line 410
    :pswitch_0
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getLibraryController()Lcom/amazon/kcp/library/ILibraryController;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kcp/redding/AlertActivity;->bookId:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/amazon/kcp/library/ILibraryController;->getBookFromBookId(Ljava/lang/String;)Lcom/amazon/kindle/model/content/ILocalBookItem;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 411
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/amazon/kindle/krl/R$bool;->enable_trial_buy_in_store_button:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 412
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/amazon/kindle/krl/R$string;->expired_to_store:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    new-instance v2, Lcom/amazon/kcp/redding/AlertActivity$7;

    invoke-direct {v2, p0, v0}, Lcom/amazon/kcp/redding/AlertActivity$7;-><init>(Lcom/amazon/kcp/redding/AlertActivity;Lcom/amazon/kindle/model/content/ILocalBookItem;)V

    invoke-virtual {p1, v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 422
    sget v0, Lcom/amazon/kindle/krl/R$string;->cancel:I

    new-instance v1, Lcom/amazon/kcp/redding/AlertActivity$8;

    invoke-direct {v1, p0}, Lcom/amazon/kcp/redding/AlertActivity$8;-><init>(Lcom/amazon/kcp/redding/AlertActivity;)V

    invoke-virtual {p1, v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    goto/16 :goto_0

    .line 430
    :cond_2
    sget v0, Lcom/amazon/kindle/krl/R$string;->ok:I

    new-instance v1, Lcom/amazon/kcp/redding/AlertActivity$9;

    invoke-direct {v1, p0}, Lcom/amazon/kcp/redding/AlertActivity$9;-><init>(Lcom/amazon/kcp/redding/AlertActivity;)V

    invoke-virtual {p1, v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    goto/16 :goto_0

    .line 509
    :pswitch_1
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/amazon/kindle/krl/R$bool;->should_show_icon_of_alert_dialog:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 510
    sget v0, Lcom/amazon/kindle/krl/R$attr;->alertDialogInfoIcon:I

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setIconAttribute(I)Landroidx/appcompat/app/AlertDialog$Builder;

    :cond_3
    const/4 v0, 0x0

    .line 512
    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setCancelable(Z)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 514
    iget-object v0, p0, Lcom/amazon/kcp/redding/AlertActivity;->linkUrl:Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 515
    iget-object v0, p0, Lcom/amazon/kcp/redding/AlertActivity;->linkTitle:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 518
    :cond_4
    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p1

    .line 519
    invoke-static {p0, p1}, Lcom/amazon/kindle/dialog/DialogManager;->showDialogSafely(Landroid/content/Context;Landroid/app/Dialog;)Z

    const/4 v0, -0x1

    .line 522
    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 524
    new-instance v1, Lcom/amazon/kcp/redding/AlertActivity$16;

    invoke-direct {v1, p0}, Lcom/amazon/kcp/redding/AlertActivity$16;-><init>(Lcom/amazon/kcp/redding/AlertActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_5
    return-object p1

    .line 463
    :pswitch_2
    iget-object v0, p0, Lcom/amazon/kcp/redding/AlertActivity;->linkTitle:Ljava/lang/String;

    new-instance v1, Lcom/amazon/kcp/redding/AlertActivity$12;

    invoke-direct {v1, p0}, Lcom/amazon/kcp/redding/AlertActivity$12;-><init>(Lcom/amazon/kcp/redding/AlertActivity;)V

    invoke-virtual {p1, v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 471
    iget-object v0, p0, Lcom/amazon/kcp/redding/AlertActivity;->cancelTitle:Ljava/lang/String;

    new-instance v1, Lcom/amazon/kcp/redding/AlertActivity$13;

    invoke-direct {v1, p0}, Lcom/amazon/kcp/redding/AlertActivity$13;-><init>(Lcom/amazon/kcp/redding/AlertActivity;)V

    invoke-virtual {p1, v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 478
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/amazon/kindle/krl/R$bool;->should_show_icon_of_alert_dialog:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 479
    sget v0, Lcom/amazon/kindle/krl/R$attr;->alertDialogInfoIcon:I

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setIconAttribute(I)Landroidx/appcompat/app/AlertDialog$Builder;

    goto/16 :goto_0

    .line 442
    :pswitch_3
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getLibraryController()Lcom/amazon/kcp/library/ILibraryController;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kcp/redding/AlertActivity;->bookId:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/amazon/kcp/library/ILibraryController;->getBookFromBookId(Ljava/lang/String;)Lcom/amazon/kindle/model/content/ILocalBookItem;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 444
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/amazon/kindle/krl/R$string;->remove:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    new-instance v2, Lcom/amazon/kcp/redding/AlertActivity$10;

    invoke-direct {v2, p0, v0}, Lcom/amazon/kcp/redding/AlertActivity$10;-><init>(Lcom/amazon/kcp/redding/AlertActivity;Lcom/amazon/kindle/model/content/ILocalBookItem;)V

    invoke-virtual {p1, v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 453
    :cond_6
    sget v0, Lcom/amazon/kindle/krl/R$string;->cancel:I

    new-instance v1, Lcom/amazon/kcp/redding/AlertActivity$11;

    invoke-direct {v1, p0}, Lcom/amazon/kcp/redding/AlertActivity$11;-><init>(Lcom/amazon/kcp/redding/AlertActivity;)V

    invoke-virtual {p1, v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    goto :goto_0

    .line 391
    :pswitch_4
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/amazon/kindle/krl/R$string;->android_settings:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    new-instance v1, Lcom/amazon/kcp/redding/AlertActivity$5;

    invoke-direct {v1, p0}, Lcom/amazon/kcp/redding/AlertActivity$5;-><init>(Lcom/amazon/kcp/redding/AlertActivity;)V

    invoke-virtual {p1, v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 399
    sget v0, Lcom/amazon/kindle/krl/R$string;->dismiss:I

    new-instance v1, Lcom/amazon/kcp/redding/AlertActivity$6;

    invoke-direct {v1, p0}, Lcom/amazon/kcp/redding/AlertActivity$6;-><init>(Lcom/amazon/kcp/redding/AlertActivity;)V

    invoke-virtual {p1, v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    goto :goto_0

    .line 373
    :pswitch_5
    iget-object v0, p0, Lcom/amazon/kcp/redding/AlertActivity;->linkTitle:Ljava/lang/String;

    new-instance v1, Lcom/amazon/kcp/redding/AlertActivity$3;

    invoke-direct {v1, p0}, Lcom/amazon/kcp/redding/AlertActivity$3;-><init>(Lcom/amazon/kcp/redding/AlertActivity;)V

    invoke-virtual {p1, v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 381
    sget v0, Lcom/amazon/kindle/krl/R$string;->cancel:I

    new-instance v1, Lcom/amazon/kcp/redding/AlertActivity$4;

    invoke-direct {v1, p0}, Lcom/amazon/kcp/redding/AlertActivity$4;-><init>(Lcom/amazon/kcp/redding/AlertActivity;)V

    invoke-virtual {p1, v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    goto :goto_0

    .line 485
    :pswitch_6
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/amazon/kindle/krl/R$string;->register:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    new-instance v1, Lcom/amazon/kcp/redding/AlertActivity$14;

    invoke-direct {v1, p0}, Lcom/amazon/kcp/redding/AlertActivity$14;-><init>(Lcom/amazon/kcp/redding/AlertActivity;)V

    invoke-virtual {p1, v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 499
    sget v0, Lcom/amazon/kindle/krl/R$string;->cancel:I

    new-instance v1, Lcom/amazon/kcp/redding/AlertActivity$15;

    invoke-direct {v1, p0}, Lcom/amazon/kcp/redding/AlertActivity$15;-><init>(Lcom/amazon/kcp/redding/AlertActivity;)V

    invoke-virtual {p1, v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    goto :goto_0

    .line 363
    :pswitch_7
    sget v0, Lcom/amazon/kindle/krl/R$string;->cancel:I

    new-instance v1, Lcom/amazon/kcp/redding/AlertActivity$2;

    invoke-direct {v1, p0}, Lcom/amazon/kcp/redding/AlertActivity$2;-><init>(Lcom/amazon/kcp/redding/AlertActivity;)V

    invoke-virtual {p1, v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    goto :goto_0

    .line 354
    :pswitch_8
    sget v0, Lcom/amazon/kindle/krl/R$string;->ok:I

    new-instance v1, Lcom/amazon/kcp/redding/AlertActivity$1;

    invoke-direct {v1, p0}, Lcom/amazon/kcp/redding/AlertActivity$1;-><init>(Lcom/amazon/kcp/redding/AlertActivity;)V

    invoke-virtual {p1, v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 538
    :cond_7
    :goto_0
    new-instance v0, Lcom/amazon/kcp/redding/AlertActivity$17;

    invoke-direct {v0, p0}, Lcom/amazon/kcp/redding/AlertActivity$17;-><init>(Lcom/amazon/kcp/redding/AlertActivity;)V

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 545
    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p1

    return-object p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public requiresRegistration()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
