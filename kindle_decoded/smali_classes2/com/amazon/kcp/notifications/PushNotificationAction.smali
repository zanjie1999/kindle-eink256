.class public final enum Lcom/amazon/kcp/notifications/PushNotificationAction;
.super Ljava/lang/Enum;
.source "PushNotificationAction.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/kcp/notifications/PushNotificationAction;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/kcp/notifications/PushNotificationAction;

.field public static final enum DOWNLOAD_SAMPLE:Lcom/amazon/kcp/notifications/PushNotificationAction;

.field public static final enum OPEN_BOOKWIZARD:Lcom/amazon/kcp/notifications/PushNotificationAction;

.field public static final enum OPEN_BROWSE_NODE:Lcom/amazon/kcp/notifications/PushNotificationAction;

.field public static final enum OPEN_CHAT:Lcom/amazon/kcp/notifications/PushNotificationAction;

.field public static final enum OPEN_HELP_PAGE:Lcom/amazon/kcp/notifications/PushNotificationAction;

.field public static final enum OPEN_KINDLE_UNLIMITED:Lcom/amazon/kcp/notifications/PushNotificationAction;

.field public static final enum OPEN_LIBRARY:Lcom/amazon/kcp/notifications/PushNotificationAction;

.field public static final enum OPEN_MOST_RECENT_BOOK:Lcom/amazon/kcp/notifications/PushNotificationAction;

.field public static final enum OPEN_PAGE_ID:Lcom/amazon/kcp/notifications/PushNotificationAction;

.field public static final enum OPEN_PERIODICAL_EDITION:Lcom/amazon/kcp/notifications/PushNotificationAction;

.field public static final enum OPEN_SAMSUNG_BOOK_DEALS:Lcom/amazon/kcp/notifications/PushNotificationAction;

.field public static final enum OPEN_SLIDESHOW:Lcom/amazon/kcp/notifications/PushNotificationAction;

.field public static final enum OPEN_STORE_DETAIL_PAGE:Lcom/amazon/kcp/notifications/PushNotificationAction;

.field public static final enum OPEN_STORE_URL:Lcom/amazon/kcp/notifications/PushNotificationAction;

.field public static final enum SIGNUP_FOR_KINDLE_DEALS:Lcom/amazon/kcp/notifications/PushNotificationAction;

.field public static final enum SIGNUP_FOR_NEW_CHANNEL:Lcom/amazon/kcp/notifications/PushNotificationAction;

.field public static final enum SIGNUP_FOR_SAMSUNG_BOOK_DEALS:Lcom/amazon/kcp/notifications/PushNotificationAction;


# instance fields
.field private displayIconId:I

.field private displayTextId:I


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 16
    new-instance v0, Lcom/amazon/kcp/notifications/PushNotificationAction;

    sget v1, Lcom/amazon/kindle/krl/R$string;->notification_download_sample:I

    sget v2, Lcom/amazon/kindle/krl/R$drawable;->ic_notification_download:I

    const/4 v3, 0x0

    const-string v4, "DOWNLOAD_SAMPLE"

    invoke-direct {v0, v4, v3, v1, v2}, Lcom/amazon/kcp/notifications/PushNotificationAction;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/amazon/kcp/notifications/PushNotificationAction;->DOWNLOAD_SAMPLE:Lcom/amazon/kcp/notifications/PushNotificationAction;

    .line 17
    new-instance v0, Lcom/amazon/kcp/notifications/PushNotificationAction;

    sget v1, Lcom/amazon/kindle/krl/R$string;->notification_browse_node:I

    sget v2, Lcom/amazon/kindle/krl/R$drawable;->ic_notification_shopping:I

    const/4 v4, 0x1

    const-string v5, "OPEN_BROWSE_NODE"

    invoke-direct {v0, v5, v4, v1, v2}, Lcom/amazon/kcp/notifications/PushNotificationAction;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/amazon/kcp/notifications/PushNotificationAction;->OPEN_BROWSE_NODE:Lcom/amazon/kcp/notifications/PushNotificationAction;

    .line 18
    new-instance v0, Lcom/amazon/kcp/notifications/PushNotificationAction;

    sget v1, Lcom/amazon/kindle/krl/R$string;->notification_open_help:I

    sget v2, Lcom/amazon/kindle/krl/R$drawable;->ic_notification_general:I

    const/4 v5, 0x2

    const-string v6, "OPEN_HELP_PAGE"

    invoke-direct {v0, v6, v5, v1, v2}, Lcom/amazon/kcp/notifications/PushNotificationAction;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/amazon/kcp/notifications/PushNotificationAction;->OPEN_HELP_PAGE:Lcom/amazon/kcp/notifications/PushNotificationAction;

    .line 19
    new-instance v0, Lcom/amazon/kcp/notifications/PushNotificationAction;

    sget v1, Lcom/amazon/kindle/krl/R$string;->notification_open_store_detail_page:I

    sget v2, Lcom/amazon/kindle/krl/R$drawable;->ic_notification_general:I

    const/4 v6, 0x3

    const-string v7, "OPEN_KINDLE_UNLIMITED"

    invoke-direct {v0, v7, v6, v1, v2}, Lcom/amazon/kcp/notifications/PushNotificationAction;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/amazon/kcp/notifications/PushNotificationAction;->OPEN_KINDLE_UNLIMITED:Lcom/amazon/kcp/notifications/PushNotificationAction;

    .line 20
    new-instance v0, Lcom/amazon/kcp/notifications/PushNotificationAction;

    sget v1, Lcom/amazon/kindle/krl/R$string;->notification_open_library:I

    sget v2, Lcom/amazon/kindle/krl/R$drawable;->ic_notification_general:I

    const/4 v7, 0x4

    const-string v8, "OPEN_LIBRARY"

    invoke-direct {v0, v8, v7, v1, v2}, Lcom/amazon/kcp/notifications/PushNotificationAction;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/amazon/kcp/notifications/PushNotificationAction;->OPEN_LIBRARY:Lcom/amazon/kcp/notifications/PushNotificationAction;

    .line 21
    new-instance v0, Lcom/amazon/kcp/notifications/PushNotificationAction;

    sget v1, Lcom/amazon/kindle/krl/R$string;->notification_open_most_recent_book:I

    sget v2, Lcom/amazon/kindle/krl/R$drawable;->ic_notification_general:I

    const/4 v8, 0x5

    const-string v9, "OPEN_MOST_RECENT_BOOK"

    invoke-direct {v0, v9, v8, v1, v2}, Lcom/amazon/kcp/notifications/PushNotificationAction;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/amazon/kcp/notifications/PushNotificationAction;->OPEN_MOST_RECENT_BOOK:Lcom/amazon/kcp/notifications/PushNotificationAction;

    .line 22
    new-instance v0, Lcom/amazon/kcp/notifications/PushNotificationAction;

    sget v1, Lcom/amazon/kindle/krl/R$string;->notification_open_store_detail_page:I

    sget v2, Lcom/amazon/kindle/krl/R$drawable;->ic_notification_general:I

    const/4 v9, 0x6

    const-string v10, "OPEN_PAGE_ID"

    invoke-direct {v0, v10, v9, v1, v2}, Lcom/amazon/kcp/notifications/PushNotificationAction;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/amazon/kcp/notifications/PushNotificationAction;->OPEN_PAGE_ID:Lcom/amazon/kcp/notifications/PushNotificationAction;

    .line 23
    new-instance v0, Lcom/amazon/kcp/notifications/PushNotificationAction;

    sget v1, Lcom/amazon/kindle/krl/R$string;->notification_open_store_detail_page:I

    sget v2, Lcom/amazon/kindle/krl/R$drawable;->ic_notification_shopping:I

    const/4 v10, 0x7

    const-string v11, "OPEN_STORE_DETAIL_PAGE"

    invoke-direct {v0, v11, v10, v1, v2}, Lcom/amazon/kcp/notifications/PushNotificationAction;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/amazon/kcp/notifications/PushNotificationAction;->OPEN_STORE_DETAIL_PAGE:Lcom/amazon/kcp/notifications/PushNotificationAction;

    .line 24
    new-instance v0, Lcom/amazon/kcp/notifications/PushNotificationAction;

    sget v1, Lcom/amazon/kindle/krl/R$string;->notification_open_store_url:I

    sget v2, Lcom/amazon/kindle/krl/R$drawable;->ic_notification_shopping:I

    const/16 v11, 0x8

    const-string v12, "OPEN_STORE_URL"

    invoke-direct {v0, v12, v11, v1, v2}, Lcom/amazon/kcp/notifications/PushNotificationAction;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/amazon/kcp/notifications/PushNotificationAction;->OPEN_STORE_URL:Lcom/amazon/kcp/notifications/PushNotificationAction;

    .line 25
    new-instance v0, Lcom/amazon/kcp/notifications/PushNotificationAction;

    sget v1, Lcom/amazon/kindle/krl/R$string;->notification_signup_for_kindle_deals:I

    sget v2, Lcom/amazon/kindle/krl/R$drawable;->ic_notification_general:I

    const/16 v12, 0x9

    const-string v13, "SIGNUP_FOR_KINDLE_DEALS"

    invoke-direct {v0, v13, v12, v1, v2}, Lcom/amazon/kcp/notifications/PushNotificationAction;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/amazon/kcp/notifications/PushNotificationAction;->SIGNUP_FOR_KINDLE_DEALS:Lcom/amazon/kcp/notifications/PushNotificationAction;

    .line 26
    new-instance v0, Lcom/amazon/kcp/notifications/PushNotificationAction;

    sget v1, Lcom/amazon/kindle/krl/R$string;->notification_signup_for_new_channel:I

    sget v2, Lcom/amazon/kindle/krl/R$drawable;->ic_notification_general:I

    const/16 v13, 0xa

    const-string v14, "SIGNUP_FOR_NEW_CHANNEL"

    invoke-direct {v0, v14, v13, v1, v2}, Lcom/amazon/kcp/notifications/PushNotificationAction;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/amazon/kcp/notifications/PushNotificationAction;->SIGNUP_FOR_NEW_CHANNEL:Lcom/amazon/kcp/notifications/PushNotificationAction;

    .line 27
    new-instance v0, Lcom/amazon/kcp/notifications/PushNotificationAction;

    sget v1, Lcom/amazon/kindle/krl/R$string;->notification_goto_samsung_book_deals:I

    sget v2, Lcom/amazon/kindle/krl/R$drawable;->ic_notification_shopping:I

    const/16 v14, 0xb

    const-string v15, "OPEN_SAMSUNG_BOOK_DEALS"

    invoke-direct {v0, v15, v14, v1, v2}, Lcom/amazon/kcp/notifications/PushNotificationAction;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/amazon/kcp/notifications/PushNotificationAction;->OPEN_SAMSUNG_BOOK_DEALS:Lcom/amazon/kcp/notifications/PushNotificationAction;

    .line 28
    new-instance v0, Lcom/amazon/kcp/notifications/PushNotificationAction;

    sget v1, Lcom/amazon/kindle/krl/R$string;->notification_goto_samsung_book_deals:I

    sget v2, Lcom/amazon/kindle/krl/R$drawable;->ic_notification_shopping:I

    const/16 v15, 0xc

    const-string v14, "SIGNUP_FOR_SAMSUNG_BOOK_DEALS"

    invoke-direct {v0, v14, v15, v1, v2}, Lcom/amazon/kcp/notifications/PushNotificationAction;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/amazon/kcp/notifications/PushNotificationAction;->SIGNUP_FOR_SAMSUNG_BOOK_DEALS:Lcom/amazon/kcp/notifications/PushNotificationAction;

    .line 29
    new-instance v0, Lcom/amazon/kcp/notifications/PushNotificationAction;

    sget v1, Lcom/amazon/kindle/krl/R$string;->notification_open_slideshow:I

    sget v2, Lcom/amazon/kindle/krl/R$drawable;->ic_notification_general:I

    const/16 v14, 0xd

    const-string v15, "OPEN_SLIDESHOW"

    invoke-direct {v0, v15, v14, v1, v2}, Lcom/amazon/kcp/notifications/PushNotificationAction;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/amazon/kcp/notifications/PushNotificationAction;->OPEN_SLIDESHOW:Lcom/amazon/kcp/notifications/PushNotificationAction;

    .line 30
    new-instance v0, Lcom/amazon/kcp/notifications/PushNotificationAction;

    sget v1, Lcom/amazon/kindle/krl/R$string;->notification_open_periodical_edition:I

    sget v2, Lcom/amazon/kindle/krl/R$drawable;->ic_notification_download:I

    const/16 v15, 0xe

    const-string v14, "OPEN_PERIODICAL_EDITION"

    invoke-direct {v0, v14, v15, v1, v2}, Lcom/amazon/kcp/notifications/PushNotificationAction;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/amazon/kcp/notifications/PushNotificationAction;->OPEN_PERIODICAL_EDITION:Lcom/amazon/kcp/notifications/PushNotificationAction;

    .line 31
    new-instance v0, Lcom/amazon/kcp/notifications/PushNotificationAction;

    sget v1, Lcom/amazon/kindle/krl/R$string;->notification_open_bookwizard:I

    sget v2, Lcom/amazon/kindle/krl/R$drawable;->ic_notification_general:I

    const/16 v14, 0xf

    const-string v15, "OPEN_BOOKWIZARD"

    invoke-direct {v0, v15, v14, v1, v2}, Lcom/amazon/kcp/notifications/PushNotificationAction;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/amazon/kcp/notifications/PushNotificationAction;->OPEN_BOOKWIZARD:Lcom/amazon/kcp/notifications/PushNotificationAction;

    .line 32
    new-instance v0, Lcom/amazon/kcp/notifications/PushNotificationAction;

    sget v1, Lcom/amazon/kindle/krl/R$string;->notification_open_chat:I

    sget v2, Lcom/amazon/kindle/krl/R$drawable;->ic_notification_general:I

    const/16 v15, 0x10

    const-string v14, "OPEN_CHAT"

    invoke-direct {v0, v14, v15, v1, v2}, Lcom/amazon/kcp/notifications/PushNotificationAction;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/amazon/kcp/notifications/PushNotificationAction;->OPEN_CHAT:Lcom/amazon/kcp/notifications/PushNotificationAction;

    const/16 v1, 0x11

    new-array v1, v1, [Lcom/amazon/kcp/notifications/PushNotificationAction;

    .line 15
    sget-object v2, Lcom/amazon/kcp/notifications/PushNotificationAction;->DOWNLOAD_SAMPLE:Lcom/amazon/kcp/notifications/PushNotificationAction;

    aput-object v2, v1, v3

    sget-object v2, Lcom/amazon/kcp/notifications/PushNotificationAction;->OPEN_BROWSE_NODE:Lcom/amazon/kcp/notifications/PushNotificationAction;

    aput-object v2, v1, v4

    sget-object v2, Lcom/amazon/kcp/notifications/PushNotificationAction;->OPEN_HELP_PAGE:Lcom/amazon/kcp/notifications/PushNotificationAction;

    aput-object v2, v1, v5

    sget-object v2, Lcom/amazon/kcp/notifications/PushNotificationAction;->OPEN_KINDLE_UNLIMITED:Lcom/amazon/kcp/notifications/PushNotificationAction;

    aput-object v2, v1, v6

    sget-object v2, Lcom/amazon/kcp/notifications/PushNotificationAction;->OPEN_LIBRARY:Lcom/amazon/kcp/notifications/PushNotificationAction;

    aput-object v2, v1, v7

    sget-object v2, Lcom/amazon/kcp/notifications/PushNotificationAction;->OPEN_MOST_RECENT_BOOK:Lcom/amazon/kcp/notifications/PushNotificationAction;

    aput-object v2, v1, v8

    sget-object v2, Lcom/amazon/kcp/notifications/PushNotificationAction;->OPEN_PAGE_ID:Lcom/amazon/kcp/notifications/PushNotificationAction;

    aput-object v2, v1, v9

    sget-object v2, Lcom/amazon/kcp/notifications/PushNotificationAction;->OPEN_STORE_DETAIL_PAGE:Lcom/amazon/kcp/notifications/PushNotificationAction;

    aput-object v2, v1, v10

    sget-object v2, Lcom/amazon/kcp/notifications/PushNotificationAction;->OPEN_STORE_URL:Lcom/amazon/kcp/notifications/PushNotificationAction;

    aput-object v2, v1, v11

    sget-object v2, Lcom/amazon/kcp/notifications/PushNotificationAction;->SIGNUP_FOR_KINDLE_DEALS:Lcom/amazon/kcp/notifications/PushNotificationAction;

    aput-object v2, v1, v12

    sget-object v2, Lcom/amazon/kcp/notifications/PushNotificationAction;->SIGNUP_FOR_NEW_CHANNEL:Lcom/amazon/kcp/notifications/PushNotificationAction;

    aput-object v2, v1, v13

    sget-object v2, Lcom/amazon/kcp/notifications/PushNotificationAction;->OPEN_SAMSUNG_BOOK_DEALS:Lcom/amazon/kcp/notifications/PushNotificationAction;

    const/16 v3, 0xb

    aput-object v2, v1, v3

    sget-object v2, Lcom/amazon/kcp/notifications/PushNotificationAction;->SIGNUP_FOR_SAMSUNG_BOOK_DEALS:Lcom/amazon/kcp/notifications/PushNotificationAction;

    const/16 v3, 0xc

    aput-object v2, v1, v3

    sget-object v2, Lcom/amazon/kcp/notifications/PushNotificationAction;->OPEN_SLIDESHOW:Lcom/amazon/kcp/notifications/PushNotificationAction;

    const/16 v3, 0xd

    aput-object v2, v1, v3

    sget-object v2, Lcom/amazon/kcp/notifications/PushNotificationAction;->OPEN_PERIODICAL_EDITION:Lcom/amazon/kcp/notifications/PushNotificationAction;

    const/16 v3, 0xe

    aput-object v2, v1, v3

    sget-object v2, Lcom/amazon/kcp/notifications/PushNotificationAction;->OPEN_BOOKWIZARD:Lcom/amazon/kcp/notifications/PushNotificationAction;

    const/16 v3, 0xf

    aput-object v2, v1, v3

    aput-object v0, v1, v15

    sput-object v1, Lcom/amazon/kcp/notifications/PushNotificationAction;->$VALUES:[Lcom/amazon/kcp/notifications/PushNotificationAction;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;III)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)V"
        }
    .end annotation

    .line 43
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 44
    iput p3, p0, Lcom/amazon/kcp/notifications/PushNotificationAction;->displayTextId:I

    .line 45
    iput p4, p0, Lcom/amazon/kcp/notifications/PushNotificationAction;->displayIconId:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/kcp/notifications/PushNotificationAction;
    .locals 1

    .line 15
    const-class v0, Lcom/amazon/kcp/notifications/PushNotificationAction;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/kcp/notifications/PushNotificationAction;

    return-object p0
.end method

.method public static values()[Lcom/amazon/kcp/notifications/PushNotificationAction;
    .locals 1

    .line 15
    sget-object v0, Lcom/amazon/kcp/notifications/PushNotificationAction;->$VALUES:[Lcom/amazon/kcp/notifications/PushNotificationAction;

    invoke-virtual {v0}, [Lcom/amazon/kcp/notifications/PushNotificationAction;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/kcp/notifications/PushNotificationAction;

    return-object v0
.end method


# virtual methods
.method public getDisplayIcon()I
    .locals 1

    .line 59
    iget v0, p0, Lcom/amazon/kcp/notifications/PushNotificationAction;->displayIconId:I

    return v0
.end method

.method public getDisplayText(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .line 52
    iget v0, p0, Lcom/amazon/kcp/notifications/PushNotificationAction;->displayTextId:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
