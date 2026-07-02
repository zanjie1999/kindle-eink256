.class public final Lcom/amazon/kindle/ffs/utils/Constants;
.super Ljava/lang/Object;
.source "Constants.kt"


# static fields
.field public static final ALLOWED_TIMES_TO_BE_SEEN:I = 0x1

.field public static final DISCOVERY_TIMEOUT_SECONDS:J = 0x78L

.field public static final FFS_BLUETOOTH_OS_DISABLE:Ljava/lang/String; = "FFS_BT_OFF"

.field public static final FFS_BLUETOOTH_OS_ENABLE:Ljava/lang/String; = "FFS_BT_ON"

.field public static final FFS_DISABLE:Ljava/lang/String; = "FFS_DISABLE"

.field public static final FFS_GO_TO_DEVICE_SETTINGS:Ljava/lang/String; = "FFS_GO_TO_DEVICE_SETTINGS"

.field public static final FFS_LOCATION_PERMISSION:Ljava/lang/String; = "android.permission.ACCESS_FINE_LOCATION"

.field public static final FFS_LOCATION_REQUEST_ID:I = 0x1b9d9

.field public static final FFS_LOCATION_SERVICES_OS_DISABLE:Ljava/lang/String; = "FFS_LOCATION_OFF"

.field public static final FFS_LOCATION_SERVICES_OS_ENABLE:Ljava/lang/String; = "FFS_LOCATION_ON"

.field public static final FFS_LOGGER_TAG:Ljava/lang/String; = "FFSPlugin"

.field public static final FFS_OPEN_LINK_REQUEST_ID:I = 0xb59

.field public static final FFS_PERMISSIONS_ACCEPTED_AFTER_RATIONALE:Ljava/lang/String; = "FFS_PERMISSIONS_ACCEPTED_AFTER_RATIONALE"

.field public static final FFS_PERMISSIONS_ACCEPTED_AT_FIRST:Ljava/lang/String; = "FFS_PERMISSIONS_ACCEPTED_AT_FIRST"

.field public static final FFS_PERMISSIONS_DENIED_AT_FIRST:Ljava/lang/String; = "FFS_PERMISSIONS_DENIED_AT_FIRST"

.field public static final FFS_PERMISSIONS_REJECTED_AFTER_RATIONALE:Ljava/lang/String; = "FFS_PERMISSIONS_REJECTED_AFTER_RATIONALE"

.field public static final FFS_RATIONALE_ACCEPTED:Ljava/lang/String; = "FFS_RATIONALE_ACCEPTED"

.field public static final FFS_RATIONALE_CLOSED:Ljava/lang/String; = "FFS_RATIONALE_CLOSED"

.field public static final FFS_RATIONALE_SHOWN:Ljava/lang/String; = "FFS_RATIONALE_SHOWN"

.field public static final FFS_SETTINGS_RATIONALE_CLOSED:Ljava/lang/String; = "FFS_SETTINGS_RATIONALE_CLOSED"

.field public static final FFS_SETTINGS_RATIONALE_SHOWN:Ljava/lang/String; = "FFS_SETTINGS_RATIONALE_SHOWN"

.field public static final FFS_SETTING_ITEM_ID:Ljava/lang/String; = "device_setup_over_bluetooth"

.field public static final FFS_STARTED_WITH_NO_ISSUES:Ljava/lang/String; = "FFS_STARTED_WITH_NO_ISSUES"

.field public static final FFS_TOGGLE:Ljava/lang/String; = "FFS_TOGGLE"

.field public static final INSTANCE:Lcom/amazon/kindle/ffs/utils/Constants;

.field public static final MIN_BATTERY_PERCENTAGE:I = 0xa

.field public static final PASSWORD_LEARN_MORE_URL:Ljava/lang/String; = "https://{0}/gp/help/customer/display.html?nodeId=201730860&pop-up=1"

.field public static final SNACKBAR_DISPLAY_SECONDS:I = 0x7

.field public static final TERMS_AND_CONDITIONS_URL:Ljava/lang/String; = "https://{0}/gp/help/customer/display.html?nodeId=201608280&pop-up=1"

.field public static final UGS_DISCOVERED:Ljava/lang/String; = "FFS_UGS_DISCOVERED"

.field public static final UGS_DISCOVERED_AND_ASR_ON:Ljava/lang/String; = "FFS_UGS_DISCOVERED_AND_ASR_ON"

.field public static final UGS_DISCOVERED_AND_CONTINUED:Ljava/lang/String; = "FFS_UGS_DISCOVERED_AND_CONTINUED"

.field public static final UGS_DISCOVERED_BUT_CANCELLED:Ljava/lang/String; = "FFS_UGS_DISCOVERED_BUT_CANCELLED"

.field public static final UGS_LINK_SETUP:Ljava/lang/String; = "FFS_UGS_LINK_SETUP"

.field public static final UGS_LINK_SETUP_AND_CONTINUE:Ljava/lang/String; = "FFS_UGS_LINK_SETUP_AND_CONTINUE"

.field public static final UGS_LINK_SETUP_BUT_CANCELLED:Ljava/lang/String; = "FFS_UGS_LINK_SETUP_BUT_CANCELLED"

.field public static final UGS_RESTART_DELAY_SECONDS:J = 0x5L

.field public static final UGS_SETUP_ERROR:Ljava/lang/String; = "FFS_UGS_SETUP_ERROR"

.field public static final UGS_SUCCESS:Ljava/lang/String; = "FFS_UGS_SUCCESS"

.field public static final UGS_TIMEOUT_DISCOVERY:Ljava/lang/String; = "FFS_UGS_TIMEOUT_DISCOVERY"

.field public static final UGS_TIMEOUT_PAIRING:Ljava/lang/String; = "FFS_UGS_TIMEOUT_PAIRING"

.field public static final UGS_TIMEOUT_WIFI_LIST_CONNECTING:Ljava/lang/String; = "FFS_UGS_TIMEOUT_WIFI_LIST_CONNECTING"

.field public static final UGS_TIMEOUT_WIFI_LIST_SCANNING:Ljava/lang/String; = "FFS_UGS_TIMEOUT_WIFI_LIST_SCANNING"

.field public static final UGS_TIMEOUT_WIFI_LIST_SELECTION:Ljava/lang/String; = "FFS_UGS_TIMEOUT_WIFI_LIST_SELECTION"

.field public static final UGS_WIFI_CANCEL:Ljava/lang/String; = "FFS_UGS_WIFI_CANCEL"

.field public static final UGS_WIFI_FAILURE:Ljava/lang/String; = "FFS_UGS_WIFI_FAILURE"

.field public static final WIFI_LIST_TIMEOUT_SECONDS:J = 0xf0L

.field public static final ZTS_DISCOVERED:Ljava/lang/String; = "FFS_ZTS_DISCOVERED"

.field public static final ZTS_FAILED:Ljava/lang/String; = "FFS_ZTS_FAILED"

.field public static final ZTS_STARTED:Ljava/lang/String; = "FFS_ZTS_STARTED"

.field public static final ZTS_STOPPED:Ljava/lang/String; = "FFS_ZTS_STOPPED"

.field public static final ZTS_SUCCESS:Ljava/lang/String; = "FFS_ZTS_SUCCESS"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 3
    new-instance v0, Lcom/amazon/kindle/ffs/utils/Constants;

    invoke-direct {v0}, Lcom/amazon/kindle/ffs/utils/Constants;-><init>()V

    sput-object v0, Lcom/amazon/kindle/ffs/utils/Constants;->INSTANCE:Lcom/amazon/kindle/ffs/utils/Constants;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
