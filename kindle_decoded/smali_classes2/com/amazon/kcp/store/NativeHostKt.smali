.class public final Lcom/amazon/kcp/store/NativeHostKt;
.super Ljava/lang/Object;
.source "NativeHost.kt"


# static fields
.field private static final AUDIBLE_PACKAGE_NAME:Ljava/lang/String; = "com.audible.application.kindle"

.field private static final BOOK_ID:Ljava/lang/String; = "id"

.field private static final DEFAULT_CANCEL_LISTENER:Landroid/content/DialogInterface$OnClickListener;

.field private static final ON_PURCHASE_PERMISSION_RECEIVED_JS_FUNCTION:Ljava/lang/String; = "if (typeof BrowserHost !== \'undefined\' && typeof(BrowserHost.onPurchasePermissionReceived) === \'function\') { BrowserHost.onPurchasePermissionReceived(%s); }"

.field private static final PERCENT_DOWNLOADED:Ljava/lang/String; = "percentDownloaded"

.field private static final PERCENT_DOWNLOADED_COMPLETE:Ljava/lang/String; = "100"

.field private static final PURCHASE_REQUEST_ID:Ljava/lang/String; = "com.amazon.kindle.PURCHASE_REQUEST_ID"

.field private static final STATUS:Ljava/lang/String; = "status"

.field private static final SUCCESSFUL_STATUS:I = 0x1

.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 42
    const-class v0, Lcom/amazon/kcp/store/NativeHost;

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Utils.getTag(NativeHost::class.java)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v0, Lcom/amazon/kcp/store/NativeHostKt;->TAG:Ljava/lang/String;

    .line 43
    sget-object v0, Lcom/amazon/kcp/store/NativeHostKt$DEFAULT_CANCEL_LISTENER$1;->INSTANCE:Lcom/amazon/kcp/store/NativeHostKt$DEFAULT_CANCEL_LISTENER$1;

    sput-object v0, Lcom/amazon/kcp/store/NativeHostKt;->DEFAULT_CANCEL_LISTENER:Landroid/content/DialogInterface$OnClickListener;

    return-void
.end method

.method public static final synthetic access$getDEFAULT_CANCEL_LISTENER$p()Landroid/content/DialogInterface$OnClickListener;
    .locals 1

    .line 1
    sget-object v0, Lcom/amazon/kcp/store/NativeHostKt;->DEFAULT_CANCEL_LISTENER:Landroid/content/DialogInterface$OnClickListener;

    return-object v0
.end method

.method public static final synthetic access$getTAG$p()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/amazon/kcp/store/NativeHostKt;->TAG:Ljava/lang/String;

    return-object v0
.end method
