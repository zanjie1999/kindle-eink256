.class public final Lcom/amazon/kindle/setting/item/sync/SyncItem;
.super Lcom/amazon/kindle/setting/item/template/PrimaryItem;
.source "SyncItem.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kindle/setting/item/sync/SyncItem$SyncOnClickHandler;
    }
.end annotation


# instance fields
.field private final context:Landroid/content/Context;

.field private final syncStatus:Lcom/amazon/kindle/setting/item/sync/SyncStatus;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/amazon/kindle/setting/item/sync/SyncStatus;)V
    .locals 13

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    sget v0, Lcom/amazon/kcp/more/R$string;->more_item_sync:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v0, "context.getString(R.string.more_item_sync)"

    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    sget-object v4, Lcom/amazon/kindle/setting/item/Category;->OTHER:Lcom/amazon/kindle/setting/item/Category;

    .line 30
    sget v5, Lcom/amazon/kcp/more/R$attr;->me_sync_icon:I

    .line 31
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    const-string v1, "Utils.getFactory()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getAuthenticationManager()Lcom/amazon/kcp/application/IAuthenticationManager;

    move-result-object v0

    const-string v1, "Utils.getFactory().authenticationManager"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Lcom/amazon/kcp/application/IAuthenticationManager;->isAuthenticated()Z

    move-result v0

    xor-int/lit8 v6, v0, 0x1

    .line 32
    invoke-static {p1, p2}, Lcom/amazon/kindle/setting/item/sync/SyncItemKt;->getMessageFromSyncStatus(Landroid/content/Context;Lcom/amazon/kindle/setting/item/sync/SyncStatus;)Ljava/lang/String;

    move-result-object v7

    .line 33
    new-instance v8, Lcom/amazon/kindle/setting/item/sync/SyncItem$SyncOnClickHandler;

    invoke-direct {v8}, Lcom/amazon/kindle/setting/item/sync/SyncItem$SyncOnClickHandler;-><init>()V

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/16 v11, 0x180

    const/4 v12, 0x0

    const-string v2, "setting_item_sync"

    move-object v1, p0

    .line 27
    invoke-direct/range {v1 .. v12}, Lcom/amazon/kindle/setting/item/template/PrimaryItem;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/setting/item/Category;IZLjava/lang/String;Lcom/amazon/kindle/setting/item/template/OnClickHandler;ILjava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p1, p0, Lcom/amazon/kindle/setting/item/sync/SyncItem;->context:Landroid/content/Context;

    iput-object p2, p0, Lcom/amazon/kindle/setting/item/sync/SyncItem;->syncStatus:Lcom/amazon/kindle/setting/item/sync/SyncStatus;

    return-void
.end method


# virtual methods
.method public final getSyncStatus()Lcom/amazon/kindle/setting/item/sync/SyncStatus;
    .locals 1

    .line 26
    iget-object v0, p0, Lcom/amazon/kindle/setting/item/sync/SyncItem;->syncStatus:Lcom/amazon/kindle/setting/item/sync/SyncStatus;

    return-object v0
.end method
