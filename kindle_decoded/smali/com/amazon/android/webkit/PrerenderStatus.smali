.class public final enum Lcom/amazon/android/webkit/PrerenderStatus;
.super Ljava/lang/Enum;
.source "PrerenderStatus.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/android/webkit/PrerenderStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/android/webkit/PrerenderStatus;

.field public static final enum FINAL_STATUS_APP_TERMINATING:Lcom/amazon/android/webkit/PrerenderStatus;

.field public static final enum FINAL_STATUS_AUTH_NEEDED:Lcom/amazon/android/webkit/PrerenderStatus;

.field public static final enum FINAL_STATUS_CACHE_OR_HISTORY_CLEARED:Lcom/amazon/android/webkit/PrerenderStatus;

.field public static final enum FINAL_STATUS_CANCELLED:Lcom/amazon/android/webkit/PrerenderStatus;

.field public static final enum FINAL_STATUS_CONTROL_GROUP:Lcom/amazon/android/webkit/PrerenderStatus;

.field public static final enum FINAL_STATUS_CREATE_NEW_WINDOW:Lcom/amazon/android/webkit/PrerenderStatus;

.field public static final enum FINAL_STATUS_CROSS_SITE_NAVIGATION_PENDING:Lcom/amazon/android/webkit/PrerenderStatus;

.field public static final enum FINAL_STATUS_DEVTOOLS_ATTACHED:Lcom/amazon/android/webkit/PrerenderStatus;

.field public static final enum FINAL_STATUS_DOWNLOAD:Lcom/amazon/android/webkit/PrerenderStatus;

.field public static final enum FINAL_STATUS_EVICTED:Lcom/amazon/android/webkit/PrerenderStatus;

.field public static final enum FINAL_STATUS_FRAGMENT_MISMATCH:Lcom/amazon/android/webkit/PrerenderStatus;

.field public static final enum FINAL_STATUS_HTML5_MEDIA:Lcom/amazon/android/webkit/PrerenderStatus;

.field public static final enum FINAL_STATUS_HTTPS:Lcom/amazon/android/webkit/PrerenderStatus;

.field public static final enum FINAL_STATUS_INVALID_HTTP_METHOD:Lcom/amazon/android/webkit/PrerenderStatus;

.field public static final enum FINAL_STATUS_JAVASCRIPT_ALERT:Lcom/amazon/android/webkit/PrerenderStatus;

.field public static final enum FINAL_STATUS_JS_OUT_OF_MEMORY:Lcom/amazon/android/webkit/PrerenderStatus;

.field public static final enum FINAL_STATUS_MANAGER_SHUTDOWN:Lcom/amazon/android/webkit/PrerenderStatus;

.field public static final enum FINAL_STATUS_MEMORY_LIMIT_EXCEEDED:Lcom/amazon/android/webkit/PrerenderStatus;

.field public static final enum FINAL_STATUS_OPEN_URL:Lcom/amazon/android/webkit/PrerenderStatus;

.field public static final enum FINAL_STATUS_PAGE_ID_CONFLICT:Lcom/amazon/android/webkit/PrerenderStatus;

.field public static final enum FINAL_STATUS_PROFILE_DESTROYED:Lcom/amazon/android/webkit/PrerenderStatus;

.field public static final enum FINAL_STATUS_RATE_LIMIT_EXCEEDED:Lcom/amazon/android/webkit/PrerenderStatus;

.field public static final enum FINAL_STATUS_RECENTLY_VISITED:Lcom/amazon/android/webkit/PrerenderStatus;

.field public static final enum FINAL_STATUS_RENDERER_CRASHED:Lcom/amazon/android/webkit/PrerenderStatus;

.field public static final enum FINAL_STATUS_SAFE_BROWSING:Lcom/amazon/android/webkit/PrerenderStatus;

.field public static final enum FINAL_STATUS_SOURCE_RENDER_VIEW_CLOSED:Lcom/amazon/android/webkit/PrerenderStatus;

.field public static final enum FINAL_STATUS_SSL_CLIENT_CERTIFICATE_REQUESTED:Lcom/amazon/android/webkit/PrerenderStatus;

.field public static final enum FINAL_STATUS_SSL_ERROR:Lcom/amazon/android/webkit/PrerenderStatus;

.field public static final enum FINAL_STATUS_TIMED_OUT:Lcom/amazon/android/webkit/PrerenderStatus;

.field public static final enum FINAL_STATUS_TOO_MANY_PROCESSES:Lcom/amazon/android/webkit/PrerenderStatus;

.field public static final enum FINAL_STATUS_UNKNOWN:Lcom/amazon/android/webkit/PrerenderStatus;

.field public static final enum FINAL_STATUS_UNSUPPORTED_SCHEME:Lcom/amazon/android/webkit/PrerenderStatus;

.field public static final enum FINAL_STATUS_USED:Lcom/amazon/android/webkit/PrerenderStatus;

.field public static final enum FINAL_STATUS_WINDOW_OPENER:Lcom/amazon/android/webkit/PrerenderStatus;

.field public static final enum FINAL_STATUS_WINDOW_PRINT:Lcom/amazon/android/webkit/PrerenderStatus;


# instance fields
.field private final status:I


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 8
    new-instance v0, Lcom/amazon/android/webkit/PrerenderStatus;

    const/4 v1, 0x0

    const-string v2, "FINAL_STATUS_UNKNOWN"

    const/4 v3, -0x1

    invoke-direct {v0, v2, v1, v3}, Lcom/amazon/android/webkit/PrerenderStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/amazon/android/webkit/PrerenderStatus;->FINAL_STATUS_UNKNOWN:Lcom/amazon/android/webkit/PrerenderStatus;

    .line 9
    new-instance v0, Lcom/amazon/android/webkit/PrerenderStatus;

    const/4 v2, 0x1

    const-string v3, "FINAL_STATUS_USED"

    invoke-direct {v0, v3, v2, v1}, Lcom/amazon/android/webkit/PrerenderStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/amazon/android/webkit/PrerenderStatus;->FINAL_STATUS_USED:Lcom/amazon/android/webkit/PrerenderStatus;

    .line 10
    new-instance v0, Lcom/amazon/android/webkit/PrerenderStatus;

    const/4 v3, 0x2

    const-string v4, "FINAL_STATUS_TIMED_OUT"

    invoke-direct {v0, v4, v3, v2}, Lcom/amazon/android/webkit/PrerenderStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/amazon/android/webkit/PrerenderStatus;->FINAL_STATUS_TIMED_OUT:Lcom/amazon/android/webkit/PrerenderStatus;

    .line 11
    new-instance v0, Lcom/amazon/android/webkit/PrerenderStatus;

    const/4 v4, 0x3

    const-string v5, "FINAL_STATUS_EVICTED"

    invoke-direct {v0, v5, v4, v3}, Lcom/amazon/android/webkit/PrerenderStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/amazon/android/webkit/PrerenderStatus;->FINAL_STATUS_EVICTED:Lcom/amazon/android/webkit/PrerenderStatus;

    .line 12
    new-instance v0, Lcom/amazon/android/webkit/PrerenderStatus;

    const-string v5, "FINAL_STATUS_MANAGER_SHUTDOWN"

    const/4 v6, 0x4

    invoke-direct {v0, v5, v6, v4}, Lcom/amazon/android/webkit/PrerenderStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/amazon/android/webkit/PrerenderStatus;->FINAL_STATUS_MANAGER_SHUTDOWN:Lcom/amazon/android/webkit/PrerenderStatus;

    .line 14
    new-instance v0, Lcom/amazon/android/webkit/PrerenderStatus;

    const/4 v5, 0x5

    const-string v6, "FINAL_STATUS_CREATE_NEW_WINDOW"

    invoke-direct {v0, v6, v5, v5}, Lcom/amazon/android/webkit/PrerenderStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/amazon/android/webkit/PrerenderStatus;->FINAL_STATUS_CREATE_NEW_WINDOW:Lcom/amazon/android/webkit/PrerenderStatus;

    .line 15
    new-instance v0, Lcom/amazon/android/webkit/PrerenderStatus;

    const/4 v6, 0x6

    const-string v7, "FINAL_STATUS_PROFILE_DESTROYED"

    invoke-direct {v0, v7, v6, v6}, Lcom/amazon/android/webkit/PrerenderStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/amazon/android/webkit/PrerenderStatus;->FINAL_STATUS_PROFILE_DESTROYED:Lcom/amazon/android/webkit/PrerenderStatus;

    .line 16
    new-instance v0, Lcom/amazon/android/webkit/PrerenderStatus;

    const/4 v7, 0x7

    const-string v8, "FINAL_STATUS_APP_TERMINATING"

    invoke-direct {v0, v8, v7, v7}, Lcom/amazon/android/webkit/PrerenderStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/amazon/android/webkit/PrerenderStatus;->FINAL_STATUS_APP_TERMINATING:Lcom/amazon/android/webkit/PrerenderStatus;

    .line 17
    new-instance v0, Lcom/amazon/android/webkit/PrerenderStatus;

    const/16 v8, 0x8

    const-string v9, "FINAL_STATUS_JAVASCRIPT_ALERT"

    invoke-direct {v0, v9, v8, v8}, Lcom/amazon/android/webkit/PrerenderStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/amazon/android/webkit/PrerenderStatus;->FINAL_STATUS_JAVASCRIPT_ALERT:Lcom/amazon/android/webkit/PrerenderStatus;

    .line 18
    new-instance v0, Lcom/amazon/android/webkit/PrerenderStatus;

    const/16 v9, 0x9

    const-string v10, "FINAL_STATUS_AUTH_NEEDED"

    invoke-direct {v0, v10, v9, v9}, Lcom/amazon/android/webkit/PrerenderStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/amazon/android/webkit/PrerenderStatus;->FINAL_STATUS_AUTH_NEEDED:Lcom/amazon/android/webkit/PrerenderStatus;

    .line 19
    new-instance v0, Lcom/amazon/android/webkit/PrerenderStatus;

    const/16 v10, 0xa

    const-string v11, "FINAL_STATUS_HTTPS"

    invoke-direct {v0, v11, v10, v10}, Lcom/amazon/android/webkit/PrerenderStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/amazon/android/webkit/PrerenderStatus;->FINAL_STATUS_HTTPS:Lcom/amazon/android/webkit/PrerenderStatus;

    .line 20
    new-instance v0, Lcom/amazon/android/webkit/PrerenderStatus;

    const/16 v11, 0xb

    const-string v12, "FINAL_STATUS_DOWNLOAD"

    invoke-direct {v0, v12, v11, v11}, Lcom/amazon/android/webkit/PrerenderStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/amazon/android/webkit/PrerenderStatus;->FINAL_STATUS_DOWNLOAD:Lcom/amazon/android/webkit/PrerenderStatus;

    .line 21
    new-instance v0, Lcom/amazon/android/webkit/PrerenderStatus;

    const/16 v12, 0xc

    const-string v13, "FINAL_STATUS_MEMORY_LIMIT_EXCEEDED"

    invoke-direct {v0, v13, v12, v12}, Lcom/amazon/android/webkit/PrerenderStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/amazon/android/webkit/PrerenderStatus;->FINAL_STATUS_MEMORY_LIMIT_EXCEEDED:Lcom/amazon/android/webkit/PrerenderStatus;

    .line 22
    new-instance v0, Lcom/amazon/android/webkit/PrerenderStatus;

    const/16 v13, 0xd

    const-string v14, "FINAL_STATUS_JS_OUT_OF_MEMORY"

    invoke-direct {v0, v14, v13, v13}, Lcom/amazon/android/webkit/PrerenderStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/amazon/android/webkit/PrerenderStatus;->FINAL_STATUS_JS_OUT_OF_MEMORY:Lcom/amazon/android/webkit/PrerenderStatus;

    .line 24
    new-instance v0, Lcom/amazon/android/webkit/PrerenderStatus;

    const/16 v14, 0xf

    const-string v15, "FINAL_STATUS_TOO_MANY_PROCESSES"

    const/16 v13, 0xe

    invoke-direct {v0, v15, v13, v14}, Lcom/amazon/android/webkit/PrerenderStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/amazon/android/webkit/PrerenderStatus;->FINAL_STATUS_TOO_MANY_PROCESSES:Lcom/amazon/android/webkit/PrerenderStatus;

    .line 25
    new-instance v0, Lcom/amazon/android/webkit/PrerenderStatus;

    const/16 v13, 0x10

    const-string v15, "FINAL_STATUS_RATE_LIMIT_EXCEEDED"

    invoke-direct {v0, v15, v14, v13}, Lcom/amazon/android/webkit/PrerenderStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/amazon/android/webkit/PrerenderStatus;->FINAL_STATUS_RATE_LIMIT_EXCEEDED:Lcom/amazon/android/webkit/PrerenderStatus;

    .line 27
    new-instance v0, Lcom/amazon/android/webkit/PrerenderStatus;

    const/16 v15, 0x12

    const-string v14, "FINAL_STATUS_CONTROL_GROUP"

    invoke-direct {v0, v14, v13, v15}, Lcom/amazon/android/webkit/PrerenderStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/amazon/android/webkit/PrerenderStatus;->FINAL_STATUS_CONTROL_GROUP:Lcom/amazon/android/webkit/PrerenderStatus;

    .line 28
    new-instance v0, Lcom/amazon/android/webkit/PrerenderStatus;

    const/16 v14, 0x13

    const-string v13, "FINAL_STATUS_HTML5_MEDIA"

    const/16 v12, 0x11

    invoke-direct {v0, v13, v12, v14}, Lcom/amazon/android/webkit/PrerenderStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/amazon/android/webkit/PrerenderStatus;->FINAL_STATUS_HTML5_MEDIA:Lcom/amazon/android/webkit/PrerenderStatus;

    .line 29
    new-instance v0, Lcom/amazon/android/webkit/PrerenderStatus;

    const/16 v12, 0x14

    const-string v13, "FINAL_STATUS_SOURCE_RENDER_VIEW_CLOSED"

    invoke-direct {v0, v13, v15, v12}, Lcom/amazon/android/webkit/PrerenderStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/amazon/android/webkit/PrerenderStatus;->FINAL_STATUS_SOURCE_RENDER_VIEW_CLOSED:Lcom/amazon/android/webkit/PrerenderStatus;

    .line 30
    new-instance v0, Lcom/amazon/android/webkit/PrerenderStatus;

    const/16 v13, 0x15

    const-string v15, "FINAL_STATUS_RENDERER_CRASHED"

    invoke-direct {v0, v15, v14, v13}, Lcom/amazon/android/webkit/PrerenderStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/amazon/android/webkit/PrerenderStatus;->FINAL_STATUS_RENDERER_CRASHED:Lcom/amazon/android/webkit/PrerenderStatus;

    .line 31
    new-instance v0, Lcom/amazon/android/webkit/PrerenderStatus;

    const/16 v15, 0x16

    const-string v14, "FINAL_STATUS_UNSUPPORTED_SCHEME"

    invoke-direct {v0, v14, v12, v15}, Lcom/amazon/android/webkit/PrerenderStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/amazon/android/webkit/PrerenderStatus;->FINAL_STATUS_UNSUPPORTED_SCHEME:Lcom/amazon/android/webkit/PrerenderStatus;

    .line 32
    new-instance v0, Lcom/amazon/android/webkit/PrerenderStatus;

    const/16 v14, 0x17

    const-string v12, "FINAL_STATUS_INVALID_HTTP_METHOD"

    invoke-direct {v0, v12, v13, v14}, Lcom/amazon/android/webkit/PrerenderStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/amazon/android/webkit/PrerenderStatus;->FINAL_STATUS_INVALID_HTTP_METHOD:Lcom/amazon/android/webkit/PrerenderStatus;

    .line 33
    new-instance v0, Lcom/amazon/android/webkit/PrerenderStatus;

    const/16 v12, 0x18

    const-string v13, "FINAL_STATUS_WINDOW_PRINT"

    invoke-direct {v0, v13, v15, v12}, Lcom/amazon/android/webkit/PrerenderStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/amazon/android/webkit/PrerenderStatus;->FINAL_STATUS_WINDOW_PRINT:Lcom/amazon/android/webkit/PrerenderStatus;

    .line 34
    new-instance v0, Lcom/amazon/android/webkit/PrerenderStatus;

    const-string v13, "FINAL_STATUS_RECENTLY_VISITED"

    const/16 v15, 0x19

    invoke-direct {v0, v13, v14, v15}, Lcom/amazon/android/webkit/PrerenderStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/amazon/android/webkit/PrerenderStatus;->FINAL_STATUS_RECENTLY_VISITED:Lcom/amazon/android/webkit/PrerenderStatus;

    .line 35
    new-instance v0, Lcom/amazon/android/webkit/PrerenderStatus;

    const-string v13, "FINAL_STATUS_WINDOW_OPENER"

    const/16 v15, 0x1a

    invoke-direct {v0, v13, v12, v15}, Lcom/amazon/android/webkit/PrerenderStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/amazon/android/webkit/PrerenderStatus;->FINAL_STATUS_WINDOW_OPENER:Lcom/amazon/android/webkit/PrerenderStatus;

    .line 36
    new-instance v0, Lcom/amazon/android/webkit/PrerenderStatus;

    const-string v13, "FINAL_STATUS_PAGE_ID_CONFLICT"

    const/16 v15, 0x19

    const/16 v12, 0x1b

    invoke-direct {v0, v13, v15, v12}, Lcom/amazon/android/webkit/PrerenderStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/amazon/android/webkit/PrerenderStatus;->FINAL_STATUS_PAGE_ID_CONFLICT:Lcom/amazon/android/webkit/PrerenderStatus;

    .line 37
    new-instance v0, Lcom/amazon/android/webkit/PrerenderStatus;

    const-string v12, "FINAL_STATUS_SAFE_BROWSING"

    const/16 v13, 0x1a

    const/16 v15, 0x1c

    invoke-direct {v0, v12, v13, v15}, Lcom/amazon/android/webkit/PrerenderStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/amazon/android/webkit/PrerenderStatus;->FINAL_STATUS_SAFE_BROWSING:Lcom/amazon/android/webkit/PrerenderStatus;

    .line 38
    new-instance v0, Lcom/amazon/android/webkit/PrerenderStatus;

    const-string v12, "FINAL_STATUS_FRAGMENT_MISMATCH"

    const/16 v13, 0x1b

    const/16 v15, 0x1d

    invoke-direct {v0, v12, v13, v15}, Lcom/amazon/android/webkit/PrerenderStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/amazon/android/webkit/PrerenderStatus;->FINAL_STATUS_FRAGMENT_MISMATCH:Lcom/amazon/android/webkit/PrerenderStatus;

    .line 39
    new-instance v0, Lcom/amazon/android/webkit/PrerenderStatus;

    const-string v12, "FINAL_STATUS_SSL_CLIENT_CERTIFICATE_REQUESTED"

    const/16 v13, 0x1c

    const/16 v15, 0x1e

    invoke-direct {v0, v12, v13, v15}, Lcom/amazon/android/webkit/PrerenderStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/amazon/android/webkit/PrerenderStatus;->FINAL_STATUS_SSL_CLIENT_CERTIFICATE_REQUESTED:Lcom/amazon/android/webkit/PrerenderStatus;

    .line 40
    new-instance v0, Lcom/amazon/android/webkit/PrerenderStatus;

    const-string v12, "FINAL_STATUS_CACHE_OR_HISTORY_CLEARED"

    const/16 v13, 0x1d

    const/16 v15, 0x1f

    invoke-direct {v0, v12, v13, v15}, Lcom/amazon/android/webkit/PrerenderStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/amazon/android/webkit/PrerenderStatus;->FINAL_STATUS_CACHE_OR_HISTORY_CLEARED:Lcom/amazon/android/webkit/PrerenderStatus;

    .line 41
    new-instance v0, Lcom/amazon/android/webkit/PrerenderStatus;

    const-string v12, "FINAL_STATUS_CANCELLED"

    const/16 v13, 0x1e

    const/16 v15, 0x20

    invoke-direct {v0, v12, v13, v15}, Lcom/amazon/android/webkit/PrerenderStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/amazon/android/webkit/PrerenderStatus;->FINAL_STATUS_CANCELLED:Lcom/amazon/android/webkit/PrerenderStatus;

    .line 42
    new-instance v0, Lcom/amazon/android/webkit/PrerenderStatus;

    const-string v12, "FINAL_STATUS_SSL_ERROR"

    const/16 v13, 0x1f

    const/16 v15, 0x21

    invoke-direct {v0, v12, v13, v15}, Lcom/amazon/android/webkit/PrerenderStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/amazon/android/webkit/PrerenderStatus;->FINAL_STATUS_SSL_ERROR:Lcom/amazon/android/webkit/PrerenderStatus;

    .line 43
    new-instance v0, Lcom/amazon/android/webkit/PrerenderStatus;

    const-string v12, "FINAL_STATUS_CROSS_SITE_NAVIGATION_PENDING"

    const/16 v13, 0x20

    const/16 v15, 0x22

    invoke-direct {v0, v12, v13, v15}, Lcom/amazon/android/webkit/PrerenderStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/amazon/android/webkit/PrerenderStatus;->FINAL_STATUS_CROSS_SITE_NAVIGATION_PENDING:Lcom/amazon/android/webkit/PrerenderStatus;

    .line 44
    new-instance v0, Lcom/amazon/android/webkit/PrerenderStatus;

    const-string v12, "FINAL_STATUS_DEVTOOLS_ATTACHED"

    const/16 v13, 0x21

    const/16 v15, 0x23

    invoke-direct {v0, v12, v13, v15}, Lcom/amazon/android/webkit/PrerenderStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/amazon/android/webkit/PrerenderStatus;->FINAL_STATUS_DEVTOOLS_ATTACHED:Lcom/amazon/android/webkit/PrerenderStatus;

    .line 45
    new-instance v0, Lcom/amazon/android/webkit/PrerenderStatus;

    const-string v12, "FINAL_STATUS_OPEN_URL"

    const/16 v13, 0x22

    const/16 v15, 0x28

    invoke-direct {v0, v12, v13, v15}, Lcom/amazon/android/webkit/PrerenderStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/amazon/android/webkit/PrerenderStatus;->FINAL_STATUS_OPEN_URL:Lcom/amazon/android/webkit/PrerenderStatus;

    const/16 v12, 0x23

    new-array v12, v12, [Lcom/amazon/android/webkit/PrerenderStatus;

    .line 7
    sget-object v13, Lcom/amazon/android/webkit/PrerenderStatus;->FINAL_STATUS_UNKNOWN:Lcom/amazon/android/webkit/PrerenderStatus;

    aput-object v13, v12, v1

    sget-object v1, Lcom/amazon/android/webkit/PrerenderStatus;->FINAL_STATUS_USED:Lcom/amazon/android/webkit/PrerenderStatus;

    aput-object v1, v12, v2

    sget-object v1, Lcom/amazon/android/webkit/PrerenderStatus;->FINAL_STATUS_TIMED_OUT:Lcom/amazon/android/webkit/PrerenderStatus;

    aput-object v1, v12, v3

    sget-object v1, Lcom/amazon/android/webkit/PrerenderStatus;->FINAL_STATUS_EVICTED:Lcom/amazon/android/webkit/PrerenderStatus;

    aput-object v1, v12, v4

    sget-object v1, Lcom/amazon/android/webkit/PrerenderStatus;->FINAL_STATUS_MANAGER_SHUTDOWN:Lcom/amazon/android/webkit/PrerenderStatus;

    const/4 v2, 0x4

    aput-object v1, v12, v2

    sget-object v1, Lcom/amazon/android/webkit/PrerenderStatus;->FINAL_STATUS_CREATE_NEW_WINDOW:Lcom/amazon/android/webkit/PrerenderStatus;

    aput-object v1, v12, v5

    sget-object v1, Lcom/amazon/android/webkit/PrerenderStatus;->FINAL_STATUS_PROFILE_DESTROYED:Lcom/amazon/android/webkit/PrerenderStatus;

    aput-object v1, v12, v6

    sget-object v1, Lcom/amazon/android/webkit/PrerenderStatus;->FINAL_STATUS_APP_TERMINATING:Lcom/amazon/android/webkit/PrerenderStatus;

    aput-object v1, v12, v7

    sget-object v1, Lcom/amazon/android/webkit/PrerenderStatus;->FINAL_STATUS_JAVASCRIPT_ALERT:Lcom/amazon/android/webkit/PrerenderStatus;

    aput-object v1, v12, v8

    sget-object v1, Lcom/amazon/android/webkit/PrerenderStatus;->FINAL_STATUS_AUTH_NEEDED:Lcom/amazon/android/webkit/PrerenderStatus;

    aput-object v1, v12, v9

    sget-object v1, Lcom/amazon/android/webkit/PrerenderStatus;->FINAL_STATUS_HTTPS:Lcom/amazon/android/webkit/PrerenderStatus;

    aput-object v1, v12, v10

    sget-object v1, Lcom/amazon/android/webkit/PrerenderStatus;->FINAL_STATUS_DOWNLOAD:Lcom/amazon/android/webkit/PrerenderStatus;

    aput-object v1, v12, v11

    sget-object v1, Lcom/amazon/android/webkit/PrerenderStatus;->FINAL_STATUS_MEMORY_LIMIT_EXCEEDED:Lcom/amazon/android/webkit/PrerenderStatus;

    const/16 v2, 0xc

    aput-object v1, v12, v2

    sget-object v1, Lcom/amazon/android/webkit/PrerenderStatus;->FINAL_STATUS_JS_OUT_OF_MEMORY:Lcom/amazon/android/webkit/PrerenderStatus;

    const/16 v2, 0xd

    aput-object v1, v12, v2

    sget-object v1, Lcom/amazon/android/webkit/PrerenderStatus;->FINAL_STATUS_TOO_MANY_PROCESSES:Lcom/amazon/android/webkit/PrerenderStatus;

    const/16 v2, 0xe

    aput-object v1, v12, v2

    sget-object v1, Lcom/amazon/android/webkit/PrerenderStatus;->FINAL_STATUS_RATE_LIMIT_EXCEEDED:Lcom/amazon/android/webkit/PrerenderStatus;

    const/16 v2, 0xf

    aput-object v1, v12, v2

    sget-object v1, Lcom/amazon/android/webkit/PrerenderStatus;->FINAL_STATUS_CONTROL_GROUP:Lcom/amazon/android/webkit/PrerenderStatus;

    const/16 v2, 0x10

    aput-object v1, v12, v2

    sget-object v1, Lcom/amazon/android/webkit/PrerenderStatus;->FINAL_STATUS_HTML5_MEDIA:Lcom/amazon/android/webkit/PrerenderStatus;

    const/16 v2, 0x11

    aput-object v1, v12, v2

    sget-object v1, Lcom/amazon/android/webkit/PrerenderStatus;->FINAL_STATUS_SOURCE_RENDER_VIEW_CLOSED:Lcom/amazon/android/webkit/PrerenderStatus;

    const/16 v2, 0x12

    aput-object v1, v12, v2

    sget-object v1, Lcom/amazon/android/webkit/PrerenderStatus;->FINAL_STATUS_RENDERER_CRASHED:Lcom/amazon/android/webkit/PrerenderStatus;

    const/16 v2, 0x13

    aput-object v1, v12, v2

    sget-object v1, Lcom/amazon/android/webkit/PrerenderStatus;->FINAL_STATUS_UNSUPPORTED_SCHEME:Lcom/amazon/android/webkit/PrerenderStatus;

    const/16 v2, 0x14

    aput-object v1, v12, v2

    sget-object v1, Lcom/amazon/android/webkit/PrerenderStatus;->FINAL_STATUS_INVALID_HTTP_METHOD:Lcom/amazon/android/webkit/PrerenderStatus;

    const/16 v2, 0x15

    aput-object v1, v12, v2

    sget-object v1, Lcom/amazon/android/webkit/PrerenderStatus;->FINAL_STATUS_WINDOW_PRINT:Lcom/amazon/android/webkit/PrerenderStatus;

    const/16 v2, 0x16

    aput-object v1, v12, v2

    sget-object v1, Lcom/amazon/android/webkit/PrerenderStatus;->FINAL_STATUS_RECENTLY_VISITED:Lcom/amazon/android/webkit/PrerenderStatus;

    aput-object v1, v12, v14

    sget-object v1, Lcom/amazon/android/webkit/PrerenderStatus;->FINAL_STATUS_WINDOW_OPENER:Lcom/amazon/android/webkit/PrerenderStatus;

    const/16 v2, 0x18

    aput-object v1, v12, v2

    sget-object v1, Lcom/amazon/android/webkit/PrerenderStatus;->FINAL_STATUS_PAGE_ID_CONFLICT:Lcom/amazon/android/webkit/PrerenderStatus;

    const/16 v2, 0x19

    aput-object v1, v12, v2

    sget-object v1, Lcom/amazon/android/webkit/PrerenderStatus;->FINAL_STATUS_SAFE_BROWSING:Lcom/amazon/android/webkit/PrerenderStatus;

    const/16 v2, 0x1a

    aput-object v1, v12, v2

    sget-object v1, Lcom/amazon/android/webkit/PrerenderStatus;->FINAL_STATUS_FRAGMENT_MISMATCH:Lcom/amazon/android/webkit/PrerenderStatus;

    const/16 v2, 0x1b

    aput-object v1, v12, v2

    sget-object v1, Lcom/amazon/android/webkit/PrerenderStatus;->FINAL_STATUS_SSL_CLIENT_CERTIFICATE_REQUESTED:Lcom/amazon/android/webkit/PrerenderStatus;

    const/16 v2, 0x1c

    aput-object v1, v12, v2

    sget-object v1, Lcom/amazon/android/webkit/PrerenderStatus;->FINAL_STATUS_CACHE_OR_HISTORY_CLEARED:Lcom/amazon/android/webkit/PrerenderStatus;

    const/16 v2, 0x1d

    aput-object v1, v12, v2

    sget-object v1, Lcom/amazon/android/webkit/PrerenderStatus;->FINAL_STATUS_CANCELLED:Lcom/amazon/android/webkit/PrerenderStatus;

    const/16 v2, 0x1e

    aput-object v1, v12, v2

    sget-object v1, Lcom/amazon/android/webkit/PrerenderStatus;->FINAL_STATUS_SSL_ERROR:Lcom/amazon/android/webkit/PrerenderStatus;

    const/16 v2, 0x1f

    aput-object v1, v12, v2

    sget-object v1, Lcom/amazon/android/webkit/PrerenderStatus;->FINAL_STATUS_CROSS_SITE_NAVIGATION_PENDING:Lcom/amazon/android/webkit/PrerenderStatus;

    const/16 v2, 0x20

    aput-object v1, v12, v2

    sget-object v1, Lcom/amazon/android/webkit/PrerenderStatus;->FINAL_STATUS_DEVTOOLS_ATTACHED:Lcom/amazon/android/webkit/PrerenderStatus;

    const/16 v2, 0x21

    aput-object v1, v12, v2

    const/16 v1, 0x22

    aput-object v0, v12, v1

    sput-object v12, Lcom/amazon/android/webkit/PrerenderStatus;->$VALUES:[Lcom/amazon/android/webkit/PrerenderStatus;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 53
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 54
    iput p3, p0, Lcom/amazon/android/webkit/PrerenderStatus;->status:I

    return-void
.end method

.method public static fromStatusCode(I)Lcom/amazon/android/webkit/PrerenderStatus;
    .locals 5

    .line 58
    invoke-static {}, Lcom/amazon/android/webkit/PrerenderStatus;->values()[Lcom/amazon/android/webkit/PrerenderStatus;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 59
    invoke-virtual {v3}, Lcom/amazon/android/webkit/PrerenderStatus;->getStatusCode()I

    move-result v4

    if-ne v4, p0, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 63
    :cond_1
    sget-object p0, Lcom/amazon/android/webkit/PrerenderStatus;->FINAL_STATUS_UNKNOWN:Lcom/amazon/android/webkit/PrerenderStatus;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/android/webkit/PrerenderStatus;
    .locals 1

    .line 7
    const-class v0, Lcom/amazon/android/webkit/PrerenderStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/android/webkit/PrerenderStatus;

    return-object p0
.end method

.method public static values()[Lcom/amazon/android/webkit/PrerenderStatus;
    .locals 1

    .line 7
    sget-object v0, Lcom/amazon/android/webkit/PrerenderStatus;->$VALUES:[Lcom/amazon/android/webkit/PrerenderStatus;

    invoke-virtual {v0}, [Lcom/amazon/android/webkit/PrerenderStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/android/webkit/PrerenderStatus;

    return-object v0
.end method


# virtual methods
.method public getStatusCode()I
    .locals 1

    .line 50
    iget v0, p0, Lcom/amazon/android/webkit/PrerenderStatus;->status:I

    return v0
.end method
