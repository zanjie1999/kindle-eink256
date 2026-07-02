.class public final enum Lcom/amazon/sitb/android/plugin/debug/DebugViewManager$DebugViewState;
.super Ljava/lang/Enum;
.source "DebugViewManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/sitb/android/plugin/debug/DebugViewManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DebugViewState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/sitb/android/plugin/debug/DebugViewManager$DebugViewState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/sitb/android/plugin/debug/DebugViewManager$DebugViewState;

.field public static final enum CANCELLING:Lcom/amazon/sitb/android/plugin/debug/DebugViewManager$DebugViewState;

.field public static final enum CONNECTION_ERROR:Lcom/amazon/sitb/android/plugin/debug/DebugViewManager$DebugViewState;

.field public static final enum DOWNLOADED_PURCHASED_PREVIOUSLY:Lcom/amazon/sitb/android/plugin/debug/DebugViewManager$DebugViewState;

.field public static final enum DOWNLOADED_PURCHASED_THIS_SESSION:Lcom/amazon/sitb/android/plugin/debug/DebugViewManager$DebugViewState;

.field public static final enum DOWNLOADING_PURCHASED_PREVIOUSLY:Lcom/amazon/sitb/android/plugin/debug/DebugViewManager$DebugViewState;

.field public static final enum DOWNLOADING_PURCHASED_THIS_SESSION:Lcom/amazon/sitb/android/plugin/debug/DebugViewManager$DebugViewState;

.field public static final enum OWNED_PURCHASED_PREVIOUSLY:Lcom/amazon/sitb/android/plugin/debug/DebugViewManager$DebugViewState;

.field public static final enum OWNED_PURCHASED_THIS_SESSION:Lcom/amazon/sitb/android/plugin/debug/DebugViewManager$DebugViewState;

.field public static final enum PAYMENT_ERROR:Lcom/amazon/sitb/android/plugin/debug/DebugViewManager$DebugViewState;

.field public static final enum PAYMENT_FAILURE_MFA_CHALLENGE:Lcom/amazon/sitb/android/plugin/debug/DebugViewManager$DebugViewState;

.field public static final enum PAYMENT_FAILURE_NEED_ADDRESS_OR_NEED_CARD:Lcom/amazon/sitb/android/plugin/debug/DebugViewManager$DebugViewState;

.field public static final enum PAYMENT_FAILURE_OTHER:Lcom/amazon/sitb/android/plugin/debug/DebugViewManager$DebugViewState;

.field public static final enum PAYMENT_FAILURE_PRICE_INCREASED:Lcom/amazon/sitb/android/plugin/debug/DebugViewManager$DebugViewState;

.field public static final enum PROGRAM_VIOLATION_ERROR:Lcom/amazon/sitb/android/plugin/debug/DebugViewManager$DebugViewState;

.field public static final enum PURCHASING:Lcom/amazon/sitb/android/plugin/debug/DebugViewManager$DebugViewState;

.field public static final enum RECENTLY_CANCELED_PRICE_FREE:Lcom/amazon/sitb/android/plugin/debug/DebugViewManager$DebugViewState;

.field public static final enum RECENTLY_CANCELED_PRICE_UNUSABLE:Lcom/amazon/sitb/android/plugin/debug/DebugViewManager$DebugViewState;

.field public static final enum RECENTLY_CANCELED_PRICE_USABLE:Lcom/amazon/sitb/android/plugin/debug/DebugViewManager$DebugViewState;

.field public static final enum SERVER_ERROR:Lcom/amazon/sitb/android/plugin/debug/DebugViewManager$DebugViewState;

.field public static final enum TECH_ERROR:Lcom/amazon/sitb/android/plugin/debug/DebugViewManager$DebugViewState;

.field public static final enum UNKNOWN:Lcom/amazon/sitb/android/plugin/debug/DebugViewManager$DebugViewState;

.field public static final enum UNOWNED_BORROWABLE:Lcom/amazon/sitb/android/plugin/debug/DebugViewManager$DebugViewState;

.field public static final enum UNOWNED_NOT_BORROWABLE_PRICE_FREE:Lcom/amazon/sitb/android/plugin/debug/DebugViewManager$DebugViewState;

.field public static final enum UNOWNED_NOT_BORROWABLE_PRICE_UNUSABLE:Lcom/amazon/sitb/android/plugin/debug/DebugViewManager$DebugViewState;

.field public static final enum UNOWNED_NOT_BORROWABLE_PRICE_USABLE:Lcom/amazon/sitb/android/plugin/debug/DebugViewManager$DebugViewState;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 214
    new-instance v0, Lcom/amazon/sitb/android/plugin/debug/DebugViewManager$DebugViewState;

    const/4 v1, 0x0

    const-string v2, "RECENTLY_CANCELED_PRICE_UNUSABLE"

    invoke-direct {v0, v2, v1}, Lcom/amazon/sitb/android/plugin/debug/DebugViewManager$DebugViewState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/sitb/android/plugin/debug/DebugViewManager$DebugViewState;->RECENTLY_CANCELED_PRICE_UNUSABLE:Lcom/amazon/sitb/android/plugin/debug/DebugViewManager$DebugViewState;

    .line 216
    new-instance v0, Lcom/amazon/sitb/android/plugin/debug/DebugViewManager$DebugViewState;

    const/4 v2, 0x1

    const-string v3, "RECENTLY_CANCELED_PRICE_FREE"

    invoke-direct {v0, v3, v2}, Lcom/amazon/sitb/android/plugin/debug/DebugViewManager$DebugViewState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/sitb/android/plugin/debug/DebugViewManager$DebugViewState;->RECENTLY_CANCELED_PRICE_FREE:Lcom/amazon/sitb/android/plugin/debug/DebugViewManager$DebugViewState;

    .line 218
    new-instance v0, Lcom/amazon/sitb/android/plugin/debug/DebugViewManager$DebugViewState;

    const/4 v3, 0x2

    const-string v4, "RECENTLY_CANCELED_PRICE_USABLE"

    invoke-direct {v0, v4, v3}, Lcom/amazon/sitb/android/plugin/debug/DebugViewManager$DebugViewState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/sitb/android/plugin/debug/DebugViewManager$DebugViewState;->RECENTLY_CANCELED_PRICE_USABLE:Lcom/amazon/sitb/android/plugin/debug/DebugViewManager$DebugViewState;

    .line 220
    new-instance v0, Lcom/amazon/sitb/android/plugin/debug/DebugViewManager$DebugViewState;

    const/4 v4, 0x3

    const-string v5, "UNOWNED_BORROWABLE"

    invoke-direct {v0, v5, v4}, Lcom/amazon/sitb/android/plugin/debug/DebugViewManager$DebugViewState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/sitb/android/plugin/debug/DebugViewManager$DebugViewState;->UNOWNED_BORROWABLE:Lcom/amazon/sitb/android/plugin/debug/DebugViewManager$DebugViewState;

    .line 222
    new-instance v0, Lcom/amazon/sitb/android/plugin/debug/DebugViewManager$DebugViewState;

    const/4 v5, 0x4

    const-string v6, "UNOWNED_NOT_BORROWABLE_PRICE_UNUSABLE"

    invoke-direct {v0, v6, v5}, Lcom/amazon/sitb/android/plugin/debug/DebugViewManager$DebugViewState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/sitb/android/plugin/debug/DebugViewManager$DebugViewState;->UNOWNED_NOT_BORROWABLE_PRICE_UNUSABLE:Lcom/amazon/sitb/android/plugin/debug/DebugViewManager$DebugViewState;

    .line 224
    new-instance v0, Lcom/amazon/sitb/android/plugin/debug/DebugViewManager$DebugViewState;

    const/4 v6, 0x5

    const-string v7, "UNOWNED_NOT_BORROWABLE_PRICE_FREE"

    invoke-direct {v0, v7, v6}, Lcom/amazon/sitb/android/plugin/debug/DebugViewManager$DebugViewState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/sitb/android/plugin/debug/DebugViewManager$DebugViewState;->UNOWNED_NOT_BORROWABLE_PRICE_FREE:Lcom/amazon/sitb/android/plugin/debug/DebugViewManager$DebugViewState;

    .line 226
    new-instance v0, Lcom/amazon/sitb/android/plugin/debug/DebugViewManager$DebugViewState;

    const/4 v7, 0x6

    const-string v8, "UNOWNED_NOT_BORROWABLE_PRICE_USABLE"

    invoke-direct {v0, v8, v7}, Lcom/amazon/sitb/android/plugin/debug/DebugViewManager$DebugViewState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/sitb/android/plugin/debug/DebugViewManager$DebugViewState;->UNOWNED_NOT_BORROWABLE_PRICE_USABLE:Lcom/amazon/sitb/android/plugin/debug/DebugViewManager$DebugViewState;

    .line 228
    new-instance v0, Lcom/amazon/sitb/android/plugin/debug/DebugViewManager$DebugViewState;

    const/4 v8, 0x7

    const-string v9, "PURCHASING"

    invoke-direct {v0, v9, v8}, Lcom/amazon/sitb/android/plugin/debug/DebugViewManager$DebugViewState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/sitb/android/plugin/debug/DebugViewManager$DebugViewState;->PURCHASING:Lcom/amazon/sitb/android/plugin/debug/DebugViewManager$DebugViewState;

    .line 230
    new-instance v0, Lcom/amazon/sitb/android/plugin/debug/DebugViewManager$DebugViewState;

    const/16 v9, 0x8

    const-string v10, "OWNED_PURCHASED_THIS_SESSION"

    invoke-direct {v0, v10, v9}, Lcom/amazon/sitb/android/plugin/debug/DebugViewManager$DebugViewState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/sitb/android/plugin/debug/DebugViewManager$DebugViewState;->OWNED_PURCHASED_THIS_SESSION:Lcom/amazon/sitb/android/plugin/debug/DebugViewManager$DebugViewState;

    .line 232
    new-instance v0, Lcom/amazon/sitb/android/plugin/debug/DebugViewManager$DebugViewState;

    const/16 v10, 0x9

    const-string v11, "OWNED_PURCHASED_PREVIOUSLY"

    invoke-direct {v0, v11, v10}, Lcom/amazon/sitb/android/plugin/debug/DebugViewManager$DebugViewState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/sitb/android/plugin/debug/DebugViewManager$DebugViewState;->OWNED_PURCHASED_PREVIOUSLY:Lcom/amazon/sitb/android/plugin/debug/DebugViewManager$DebugViewState;

    .line 234
    new-instance v0, Lcom/amazon/sitb/android/plugin/debug/DebugViewManager$DebugViewState;

    const/16 v11, 0xa

    const-string v12, "DOWNLOADING_PURCHASED_THIS_SESSION"

    invoke-direct {v0, v12, v11}, Lcom/amazon/sitb/android/plugin/debug/DebugViewManager$DebugViewState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/sitb/android/plugin/debug/DebugViewManager$DebugViewState;->DOWNLOADING_PURCHASED_THIS_SESSION:Lcom/amazon/sitb/android/plugin/debug/DebugViewManager$DebugViewState;

    .line 236
    new-instance v0, Lcom/amazon/sitb/android/plugin/debug/DebugViewManager$DebugViewState;

    const/16 v12, 0xb

    const-string v13, "DOWNLOADING_PURCHASED_PREVIOUSLY"

    invoke-direct {v0, v13, v12}, Lcom/amazon/sitb/android/plugin/debug/DebugViewManager$DebugViewState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/sitb/android/plugin/debug/DebugViewManager$DebugViewState;->DOWNLOADING_PURCHASED_PREVIOUSLY:Lcom/amazon/sitb/android/plugin/debug/DebugViewManager$DebugViewState;

    .line 238
    new-instance v0, Lcom/amazon/sitb/android/plugin/debug/DebugViewManager$DebugViewState;

    const/16 v13, 0xc

    const-string v14, "DOWNLOADED_PURCHASED_THIS_SESSION"

    invoke-direct {v0, v14, v13}, Lcom/amazon/sitb/android/plugin/debug/DebugViewManager$DebugViewState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/sitb/android/plugin/debug/DebugViewManager$DebugViewState;->DOWNLOADED_PURCHASED_THIS_SESSION:Lcom/amazon/sitb/android/plugin/debug/DebugViewManager$DebugViewState;

    .line 240
    new-instance v0, Lcom/amazon/sitb/android/plugin/debug/DebugViewManager$DebugViewState;

    const/16 v14, 0xd

    const-string v15, "DOWNLOADED_PURCHASED_PREVIOUSLY"

    invoke-direct {v0, v15, v14}, Lcom/amazon/sitb/android/plugin/debug/DebugViewManager$DebugViewState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/sitb/android/plugin/debug/DebugViewManager$DebugViewState;->DOWNLOADED_PURCHASED_PREVIOUSLY:Lcom/amazon/sitb/android/plugin/debug/DebugViewManager$DebugViewState;

    .line 242
    new-instance v0, Lcom/amazon/sitb/android/plugin/debug/DebugViewManager$DebugViewState;

    const/16 v15, 0xe

    const-string v14, "PAYMENT_ERROR"

    invoke-direct {v0, v14, v15}, Lcom/amazon/sitb/android/plugin/debug/DebugViewManager$DebugViewState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/sitb/android/plugin/debug/DebugViewManager$DebugViewState;->PAYMENT_ERROR:Lcom/amazon/sitb/android/plugin/debug/DebugViewManager$DebugViewState;

    .line 244
    new-instance v0, Lcom/amazon/sitb/android/plugin/debug/DebugViewManager$DebugViewState;

    const/16 v14, 0xf

    const-string v15, "PAYMENT_FAILURE_MFA_CHALLENGE"

    invoke-direct {v0, v15, v14}, Lcom/amazon/sitb/android/plugin/debug/DebugViewManager$DebugViewState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/sitb/android/plugin/debug/DebugViewManager$DebugViewState;->PAYMENT_FAILURE_MFA_CHALLENGE:Lcom/amazon/sitb/android/plugin/debug/DebugViewManager$DebugViewState;

    .line 246
    new-instance v0, Lcom/amazon/sitb/android/plugin/debug/DebugViewManager$DebugViewState;

    const/16 v15, 0x10

    const-string v14, "PAYMENT_FAILURE_NEED_ADDRESS_OR_NEED_CARD"

    invoke-direct {v0, v14, v15}, Lcom/amazon/sitb/android/plugin/debug/DebugViewManager$DebugViewState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/sitb/android/plugin/debug/DebugViewManager$DebugViewState;->PAYMENT_FAILURE_NEED_ADDRESS_OR_NEED_CARD:Lcom/amazon/sitb/android/plugin/debug/DebugViewManager$DebugViewState;

    .line 248
    new-instance v0, Lcom/amazon/sitb/android/plugin/debug/DebugViewManager$DebugViewState;

    const/16 v14, 0x11

    const-string v15, "PAYMENT_FAILURE_PRICE_INCREASED"

    invoke-direct {v0, v15, v14}, Lcom/amazon/sitb/android/plugin/debug/DebugViewManager$DebugViewState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/sitb/android/plugin/debug/DebugViewManager$DebugViewState;->PAYMENT_FAILURE_PRICE_INCREASED:Lcom/amazon/sitb/android/plugin/debug/DebugViewManager$DebugViewState;

    .line 250
    new-instance v0, Lcom/amazon/sitb/android/plugin/debug/DebugViewManager$DebugViewState;

    const/16 v15, 0x12

    const-string v14, "PAYMENT_FAILURE_OTHER"

    invoke-direct {v0, v14, v15}, Lcom/amazon/sitb/android/plugin/debug/DebugViewManager$DebugViewState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/sitb/android/plugin/debug/DebugViewManager$DebugViewState;->PAYMENT_FAILURE_OTHER:Lcom/amazon/sitb/android/plugin/debug/DebugViewManager$DebugViewState;

    .line 252
    new-instance v0, Lcom/amazon/sitb/android/plugin/debug/DebugViewManager$DebugViewState;

    const/16 v14, 0x13

    const-string v15, "CANCELLING"

    invoke-direct {v0, v15, v14}, Lcom/amazon/sitb/android/plugin/debug/DebugViewManager$DebugViewState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/sitb/android/plugin/debug/DebugViewManager$DebugViewState;->CANCELLING:Lcom/amazon/sitb/android/plugin/debug/DebugViewManager$DebugViewState;

    .line 254
    new-instance v0, Lcom/amazon/sitb/android/plugin/debug/DebugViewManager$DebugViewState;

    const/16 v15, 0x14

    const-string v14, "TECH_ERROR"

    invoke-direct {v0, v14, v15}, Lcom/amazon/sitb/android/plugin/debug/DebugViewManager$DebugViewState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/sitb/android/plugin/debug/DebugViewManager$DebugViewState;->TECH_ERROR:Lcom/amazon/sitb/android/plugin/debug/DebugViewManager$DebugViewState;

    .line 256
    new-instance v0, Lcom/amazon/sitb/android/plugin/debug/DebugViewManager$DebugViewState;

    const/16 v14, 0x15

    const-string v15, "PROGRAM_VIOLATION_ERROR"

    invoke-direct {v0, v15, v14}, Lcom/amazon/sitb/android/plugin/debug/DebugViewManager$DebugViewState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/sitb/android/plugin/debug/DebugViewManager$DebugViewState;->PROGRAM_VIOLATION_ERROR:Lcom/amazon/sitb/android/plugin/debug/DebugViewManager$DebugViewState;

    .line 258
    new-instance v0, Lcom/amazon/sitb/android/plugin/debug/DebugViewManager$DebugViewState;

    const-string v15, "CONNECTION_ERROR"

    const/16 v14, 0x16

    invoke-direct {v0, v15, v14}, Lcom/amazon/sitb/android/plugin/debug/DebugViewManager$DebugViewState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/sitb/android/plugin/debug/DebugViewManager$DebugViewState;->CONNECTION_ERROR:Lcom/amazon/sitb/android/plugin/debug/DebugViewManager$DebugViewState;

    .line 260
    new-instance v0, Lcom/amazon/sitb/android/plugin/debug/DebugViewManager$DebugViewState;

    const-string v14, "SERVER_ERROR"

    const/16 v15, 0x17

    invoke-direct {v0, v14, v15}, Lcom/amazon/sitb/android/plugin/debug/DebugViewManager$DebugViewState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/sitb/android/plugin/debug/DebugViewManager$DebugViewState;->SERVER_ERROR:Lcom/amazon/sitb/android/plugin/debug/DebugViewManager$DebugViewState;

    .line 262
    new-instance v0, Lcom/amazon/sitb/android/plugin/debug/DebugViewManager$DebugViewState;

    const-string v14, "UNKNOWN"

    const/16 v15, 0x18

    invoke-direct {v0, v14, v15}, Lcom/amazon/sitb/android/plugin/debug/DebugViewManager$DebugViewState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/sitb/android/plugin/debug/DebugViewManager$DebugViewState;->UNKNOWN:Lcom/amazon/sitb/android/plugin/debug/DebugViewManager$DebugViewState;

    const/16 v14, 0x19

    new-array v14, v14, [Lcom/amazon/sitb/android/plugin/debug/DebugViewManager$DebugViewState;

    .line 213
    sget-object v15, Lcom/amazon/sitb/android/plugin/debug/DebugViewManager$DebugViewState;->RECENTLY_CANCELED_PRICE_UNUSABLE:Lcom/amazon/sitb/android/plugin/debug/DebugViewManager$DebugViewState;

    aput-object v15, v14, v1

    sget-object v1, Lcom/amazon/sitb/android/plugin/debug/DebugViewManager$DebugViewState;->RECENTLY_CANCELED_PRICE_FREE:Lcom/amazon/sitb/android/plugin/debug/DebugViewManager$DebugViewState;

    aput-object v1, v14, v2

    sget-object v1, Lcom/amazon/sitb/android/plugin/debug/DebugViewManager$DebugViewState;->RECENTLY_CANCELED_PRICE_USABLE:Lcom/amazon/sitb/android/plugin/debug/DebugViewManager$DebugViewState;

    aput-object v1, v14, v3

    sget-object v1, Lcom/amazon/sitb/android/plugin/debug/DebugViewManager$DebugViewState;->UNOWNED_BORROWABLE:Lcom/amazon/sitb/android/plugin/debug/DebugViewManager$DebugViewState;

    aput-object v1, v14, v4

    sget-object v1, Lcom/amazon/sitb/android/plugin/debug/DebugViewManager$DebugViewState;->UNOWNED_NOT_BORROWABLE_PRICE_UNUSABLE:Lcom/amazon/sitb/android/plugin/debug/DebugViewManager$DebugViewState;

    aput-object v1, v14, v5

    sget-object v1, Lcom/amazon/sitb/android/plugin/debug/DebugViewManager$DebugViewState;->UNOWNED_NOT_BORROWABLE_PRICE_FREE:Lcom/amazon/sitb/android/plugin/debug/DebugViewManager$DebugViewState;

    aput-object v1, v14, v6

    sget-object v1, Lcom/amazon/sitb/android/plugin/debug/DebugViewManager$DebugViewState;->UNOWNED_NOT_BORROWABLE_PRICE_USABLE:Lcom/amazon/sitb/android/plugin/debug/DebugViewManager$DebugViewState;

    aput-object v1, v14, v7

    sget-object v1, Lcom/amazon/sitb/android/plugin/debug/DebugViewManager$DebugViewState;->PURCHASING:Lcom/amazon/sitb/android/plugin/debug/DebugViewManager$DebugViewState;

    aput-object v1, v14, v8

    sget-object v1, Lcom/amazon/sitb/android/plugin/debug/DebugViewManager$DebugViewState;->OWNED_PURCHASED_THIS_SESSION:Lcom/amazon/sitb/android/plugin/debug/DebugViewManager$DebugViewState;

    aput-object v1, v14, v9

    sget-object v1, Lcom/amazon/sitb/android/plugin/debug/DebugViewManager$DebugViewState;->OWNED_PURCHASED_PREVIOUSLY:Lcom/amazon/sitb/android/plugin/debug/DebugViewManager$DebugViewState;

    aput-object v1, v14, v10

    sget-object v1, Lcom/amazon/sitb/android/plugin/debug/DebugViewManager$DebugViewState;->DOWNLOADING_PURCHASED_THIS_SESSION:Lcom/amazon/sitb/android/plugin/debug/DebugViewManager$DebugViewState;

    aput-object v1, v14, v11

    sget-object v1, Lcom/amazon/sitb/android/plugin/debug/DebugViewManager$DebugViewState;->DOWNLOADING_PURCHASED_PREVIOUSLY:Lcom/amazon/sitb/android/plugin/debug/DebugViewManager$DebugViewState;

    aput-object v1, v14, v12

    sget-object v1, Lcom/amazon/sitb/android/plugin/debug/DebugViewManager$DebugViewState;->DOWNLOADED_PURCHASED_THIS_SESSION:Lcom/amazon/sitb/android/plugin/debug/DebugViewManager$DebugViewState;

    aput-object v1, v14, v13

    sget-object v1, Lcom/amazon/sitb/android/plugin/debug/DebugViewManager$DebugViewState;->DOWNLOADED_PURCHASED_PREVIOUSLY:Lcom/amazon/sitb/android/plugin/debug/DebugViewManager$DebugViewState;

    const/16 v2, 0xd

    aput-object v1, v14, v2

    sget-object v1, Lcom/amazon/sitb/android/plugin/debug/DebugViewManager$DebugViewState;->PAYMENT_ERROR:Lcom/amazon/sitb/android/plugin/debug/DebugViewManager$DebugViewState;

    const/16 v2, 0xe

    aput-object v1, v14, v2

    sget-object v1, Lcom/amazon/sitb/android/plugin/debug/DebugViewManager$DebugViewState;->PAYMENT_FAILURE_MFA_CHALLENGE:Lcom/amazon/sitb/android/plugin/debug/DebugViewManager$DebugViewState;

    const/16 v2, 0xf

    aput-object v1, v14, v2

    sget-object v1, Lcom/amazon/sitb/android/plugin/debug/DebugViewManager$DebugViewState;->PAYMENT_FAILURE_NEED_ADDRESS_OR_NEED_CARD:Lcom/amazon/sitb/android/plugin/debug/DebugViewManager$DebugViewState;

    const/16 v2, 0x10

    aput-object v1, v14, v2

    sget-object v1, Lcom/amazon/sitb/android/plugin/debug/DebugViewManager$DebugViewState;->PAYMENT_FAILURE_PRICE_INCREASED:Lcom/amazon/sitb/android/plugin/debug/DebugViewManager$DebugViewState;

    const/16 v2, 0x11

    aput-object v1, v14, v2

    sget-object v1, Lcom/amazon/sitb/android/plugin/debug/DebugViewManager$DebugViewState;->PAYMENT_FAILURE_OTHER:Lcom/amazon/sitb/android/plugin/debug/DebugViewManager$DebugViewState;

    const/16 v2, 0x12

    aput-object v1, v14, v2

    sget-object v1, Lcom/amazon/sitb/android/plugin/debug/DebugViewManager$DebugViewState;->CANCELLING:Lcom/amazon/sitb/android/plugin/debug/DebugViewManager$DebugViewState;

    const/16 v2, 0x13

    aput-object v1, v14, v2

    sget-object v1, Lcom/amazon/sitb/android/plugin/debug/DebugViewManager$DebugViewState;->TECH_ERROR:Lcom/amazon/sitb/android/plugin/debug/DebugViewManager$DebugViewState;

    const/16 v2, 0x14

    aput-object v1, v14, v2

    sget-object v1, Lcom/amazon/sitb/android/plugin/debug/DebugViewManager$DebugViewState;->PROGRAM_VIOLATION_ERROR:Lcom/amazon/sitb/android/plugin/debug/DebugViewManager$DebugViewState;

    const/16 v2, 0x15

    aput-object v1, v14, v2

    sget-object v1, Lcom/amazon/sitb/android/plugin/debug/DebugViewManager$DebugViewState;->CONNECTION_ERROR:Lcom/amazon/sitb/android/plugin/debug/DebugViewManager$DebugViewState;

    const/16 v2, 0x16

    aput-object v1, v14, v2

    sget-object v1, Lcom/amazon/sitb/android/plugin/debug/DebugViewManager$DebugViewState;->SERVER_ERROR:Lcom/amazon/sitb/android/plugin/debug/DebugViewManager$DebugViewState;

    const/16 v2, 0x17

    aput-object v1, v14, v2

    const/16 v1, 0x18

    aput-object v0, v14, v1

    sput-object v14, Lcom/amazon/sitb/android/plugin/debug/DebugViewManager$DebugViewState;->$VALUES:[Lcom/amazon/sitb/android/plugin/debug/DebugViewManager$DebugViewState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 213
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/sitb/android/plugin/debug/DebugViewManager$DebugViewState;
    .locals 1

    .line 213
    const-class v0, Lcom/amazon/sitb/android/plugin/debug/DebugViewManager$DebugViewState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/sitb/android/plugin/debug/DebugViewManager$DebugViewState;

    return-object p0
.end method

.method public static values()[Lcom/amazon/sitb/android/plugin/debug/DebugViewManager$DebugViewState;
    .locals 1

    .line 213
    sget-object v0, Lcom/amazon/sitb/android/plugin/debug/DebugViewManager$DebugViewState;->$VALUES:[Lcom/amazon/sitb/android/plugin/debug/DebugViewManager$DebugViewState;

    invoke-virtual {v0}, [Lcom/amazon/sitb/android/plugin/debug/DebugViewManager$DebugViewState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/sitb/android/plugin/debug/DebugViewManager$DebugViewState;

    return-object v0
.end method
