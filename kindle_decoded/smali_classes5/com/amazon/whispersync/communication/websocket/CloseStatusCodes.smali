.class public Lcom/amazon/whispersync/communication/websocket/CloseStatusCodes;
.super Ljava/lang/Object;
.source "CloseStatusCodes.java"


# static fields
.field public static final ACCOUNT_CHANGE:I = 0x1195

.field public static final AUTHENTICATION_FAILED:I = 0xfa1

.field public static final CLIENT_ERROR:I = 0xfa2

.field public static final CONNECTION_TIMEOUT:I = 0x1197

.field public static final CONNECTIVITY_CHANGE:I = 0x1194

.field public static final EOF_ERROR:I = 0xfa4

.field public static final EXTRA_DATA_RECEIVED:I = 0xfa3

.field public static final HEARTBEAT_FAILURE:I = 0x1196

.field public static final INCORRECT_FRAME_HEADER:I = 0xfa5

.field public static final IO_ERROR:I = 0xfa7

.field public static final MAX_VALUE:I = 0x1387

.field public static final MIN_VALUE:I = 0x3e8

.field public static final NORMAL:I = 0x3e8

.field public static final NOT_YET_CONNECTED_ERROR:I = 0xfaf

.field public static final NO_RECENT_HEARTBEATS:I = 0x1198

.field public static final PINGPONG_FAILURE:I = 0xfa6

.field public static final RESOURCE_CRUNCH_ON_SERVER:I = 0xfad

.field public static final SERVER_COMMUNICATION_ERROR:I = 0xfa8

.field public static final SERVER_EXISTING_CONNECTION_NOT_OLD:I = 0xfae

.field public static final SERVER_INITIATED_CLOSE:I = 0xfaa

.field public static final SERVER_RECEIVES_NEW_CONNECTION:I = 0xfa9

.field public static final TUNING_FAILED:I = 0xfab

.field public static final TUNING_FAILED_PROTOCOL_MISMATCH:I = 0xfac

.field public static final UNKNOWN_ERROR:I = 0xfa0


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isError(I)Z
    .locals 1

    const/16 v0, 0x3e8

    if-eq p0, v0, :cond_1

    const/16 v0, 0xfa9

    if-eq p0, v0, :cond_1

    const/16 v0, 0xfae

    if-eq p0, v0, :cond_1

    const/16 v0, 0xfaa

    if-eq p0, v0, :cond_1

    const/16 v0, 0xfad

    if-eq p0, v0, :cond_1

    const/16 v0, 0x1194

    if-lt p0, v0, :cond_0

    const/16 v0, 0x11f8

    if-lt p0, v0, :cond_1

    :cond_0
    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method
