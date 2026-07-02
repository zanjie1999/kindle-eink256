.class public final Lcom/amazon/kindle/setting/item/sync/SyncItemKt;
.super Ljava/lang/Object;
.source "SyncItem.kt"


# static fields
.field private static final SYNC_MESSAGE_DATE_FORMATTER:Ljava/text/SimpleDateFormat;

.field private static final SYNC_SETTING_ITEM_ID:Ljava/lang/String; = "setting_item_sync"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 59
    new-instance v0, Ljava/text/SimpleDateFormat;

    .line 60
    invoke-static {}, Lcom/amazon/kcp/application/ReddingApplication;->getDefaultApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 61
    sget v2, Lcom/amazon/kcp/more/R$string;->more_item_sync_message_date_format:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    .line 59
    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v0, Lcom/amazon/kindle/setting/item/sync/SyncItemKt;->SYNC_MESSAGE_DATE_FORMATTER:Ljava/text/SimpleDateFormat;

    return-void
.end method

.method public static final getMessageFromSyncStatus(Landroid/content/Context;Lcom/amazon/kindle/setting/item/sync/SyncStatus;)Ljava/lang/String;
    .locals 4

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    if-eqz p1, :cond_6

    .line 71
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v1

    const-string v2, "Utils.getFactory()"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getAuthenticationManager()Lcom/amazon/kcp/application/IAuthenticationManager;

    move-result-object v1

    const-string v2, "Utils.getFactory().authenticationManager"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v1}, Lcom/amazon/kcp/application/IAuthenticationManager;->isAuthenticated()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    .line 75
    :cond_0
    invoke-virtual {p1}, Lcom/amazon/kindle/setting/item/sync/SyncStatus;->getCode()Lcom/amazon/kindle/setting/item/sync/SyncStatus$Code;

    move-result-object v1

    .line 76
    invoke-virtual {p1}, Lcom/amazon/kindle/setting/item/sync/SyncStatus;->getCreationDate()Ljava/util/Date;

    move-result-object p1

    .line 80
    sget-object v2, Lcom/amazon/kindle/setting/item/sync/SyncItemKt$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v1, v2, v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_5

    const/4 v3, 0x2

    if-eq v1, v3, :cond_3

    const/4 p1, 0x3

    if-eq v1, p1, :cond_2

    const/4 p1, 0x4

    if-eq v1, p1, :cond_1

    goto :goto_1

    .line 88
    :cond_1
    sget p1, Lcom/amazon/kcp/more/R$string;->sync_cancelled:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 87
    :cond_2
    sget p1, Lcom/amazon/kcp/more/R$string;->sync_failed:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_3
    if-eqz p1, :cond_4

    goto :goto_0

    .line 83
    :cond_4
    new-instance p1, Ljava/util/Date;

    invoke-direct {p1}, Ljava/util/Date;-><init>()V

    .line 84
    :goto_0
    sget-object v0, Lcom/amazon/kindle/setting/item/sync/SyncItemKt;->SYNC_MESSAGE_DATE_FORMATTER:Ljava/text/SimpleDateFormat;

    invoke-virtual {v0, p1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    .line 85
    sget v0, Lcom/amazon/kcp/more/R$string;->more_item_sync_message_synced:I

    new-array v1, v2, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 81
    :cond_5
    sget p1, Lcom/amazon/kcp/more/R$string;->more_item_sync_message_syncing:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    :cond_6
    :goto_1
    return-object v0
.end method
