.class final Lcom/amazon/kcp/store/NativeHost$PurchaseProtectionBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "NativeHost.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/store/NativeHost;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "PurchaseProtectionBroadcastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/store/NativeHost;


# direct methods
.method public constructor <init>(Lcom/amazon/kcp/store/NativeHost;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 288
    iput-object p1, p0, Lcom/amazon/kcp/store/NativeHost$PurchaseProtectionBroadcastReceiver;->this$0:Lcom/amazon/kcp/store/NativeHost;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    if-eqz p1, :cond_4

    if-nez p2, :cond_0

    goto :goto_2

    :cond_0
    const-string v0, "android.content.extra.RESPONSE_BUNDLE"

    .line 294
    invoke-virtual {p2, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p2

    check-cast p2, Landroid/os/PersistableBundle;

    const/4 v0, 0x0

    if-eqz p2, :cond_1

    const-string v1, "android.request.id"

    .line 295
    invoke-virtual {p2, v1}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    move-object v1, v0

    :goto_0
    if-eqz p2, :cond_2

    const-string v2, "android.response.result"

    .line 296
    invoke-virtual {p2, v2}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    goto :goto_1

    :cond_2
    move-object p2, v0

    :goto_1
    const-string v2, "com.amazon.kindle.PURCHASE_REQUEST_ID"

    .line 298
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 299
    invoke-static {}, Lcom/amazon/kcp/store/NativeHostKt;->access$getTAG$p()Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Executing BrowserHost.onPurchasePermissionReceived("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ") to determine the store action"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 301
    iget-object v1, p0, Lcom/amazon/kcp/store/NativeHost$PurchaseProtectionBroadcastReceiver;->this$0:Lcom/amazon/kcp/store/NativeHost;

    invoke-static {v1}, Lcom/amazon/kcp/store/NativeHost;->access$getStore$p(Lcom/amazon/kcp/store/NativeHost;)Lcom/amazon/kcp/store/listener/StoreInterface;

    move-result-object v1

    sget-object v2, Lkotlin/jvm/internal/StringCompanionObject;->INSTANCE:Lkotlin/jvm/internal/StringCompanionObject;

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    aput-object p2, v3, v4

    invoke-static {v3, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p2

    const-string v2, "if (typeof BrowserHost !== \'undefined\' && typeof(BrowserHost.onPurchasePermissionReceived) === \'function\') { BrowserHost.onPurchasePermissionReceived(%s); }"

    invoke-static {v2, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const-string v2, "java.lang.String.format(format, *args)"

    invoke-static {p2, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v1, p2, v0}, Lcom/amazon/kcp/store/listener/StoreInterface;->executeJavascript(Ljava/lang/String;Lcom/amazon/foundation/IStringCallback;)V

    .line 304
    :cond_3
    invoke-virtual {p1, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_4
    :goto_2
    return-void
.end method
