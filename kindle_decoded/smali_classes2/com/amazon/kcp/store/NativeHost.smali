.class public final Lcom/amazon/kcp/store/NativeHost;
.super Ljava/lang/Object;
.source "NativeHost.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kcp/store/NativeHost$PurchaseProtectionBroadcastReceiver;,
        Lcom/amazon/kcp/store/NativeHost$Companion;
    }
.end annotation


# instance fields
.field private final browserHost:Lcom/amazon/kcp/store/BrowserHost;

.field private final store:Lcom/amazon/kcp/store/listener/StoreInterface;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/amazon/kcp/store/NativeHost$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/amazon/kcp/store/NativeHost$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lcom/amazon/kcp/store/listener/StoreInterface;Lcom/amazon/kcp/store/BrowserHost;)V
    .locals 1

    const-string v0, "store"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "browserHost"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/amazon/kcp/store/NativeHost;->store:Lcom/amazon/kcp/store/listener/StoreInterface;

    iput-object p2, p0, Lcom/amazon/kcp/store/NativeHost;->browserHost:Lcom/amazon/kcp/store/BrowserHost;

    return-void
.end method

.method public static final synthetic access$getStore$p(Lcom/amazon/kcp/store/NativeHost;)Lcom/amazon/kcp/store/listener/StoreInterface;
    .locals 0

    .line 53
    iget-object p0, p0, Lcom/amazon/kcp/store/NativeHost;->store:Lcom/amazon/kcp/store/listener/StoreInterface;

    return-object p0
.end method

.method private final showDialog(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 276
    iget-object v0, p0, Lcom/amazon/kcp/store/NativeHost;->store:Lcom/amazon/kcp/store/listener/StoreInterface;

    invoke-interface {v0}, Lcom/amazon/kcp/store/listener/StoreInterface;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/kindle/utils/KindleDialogUtils;->getAlertDialogBuilder(Landroid/content/Context;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    .line 277
    invoke-virtual {v0, p1}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 278
    invoke-virtual {v0, p2}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 279
    iget-object p1, p0, Lcom/amazon/kcp/store/NativeHost;->store:Lcom/amazon/kcp/store/listener/StoreInterface;

    invoke-interface {p1}, Lcom/amazon/kcp/store/listener/StoreInterface;->getActivity()Landroid/app/Activity;

    move-result-object p1

    sget p2, Lcom/amazon/kcp/store/R$string;->close:I

    invoke-virtual {p1, p2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {}, Lcom/amazon/kcp/store/NativeHostKt;->access$getDEFAULT_CANCEL_LISTENER$p()Landroid/content/DialogInterface$OnClickListener;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 280
    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p1

    .line 281
    iget-object p2, p0, Lcom/amazon/kcp/store/NativeHost;->store:Lcom/amazon/kcp/store/listener/StoreInterface;

    invoke-interface {p2}, Lcom/amazon/kcp/store/listener/StoreInterface;->getActivity()Landroid/app/Activity;

    move-result-object p2

    const-string v0, "dialog"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p2, p1}, Lcom/amazon/kindle/dialog/DialogManager;->showDialogSafely(Landroid/content/Context;Landroid/app/Dialog;)Z

    return-void
.end method


# virtual methods
.method public final audibleAppVersion()I
    .locals 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    const/4 v0, 0x0

    .line 242
    :try_start_0
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v1

    const-string v2, "Utils.getFactory()"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "Utils.getFactory().context"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "com.audible.application.kindle"

    invoke-virtual {v1, v2, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v1, :cond_0

    .line 247
    iget v0, v1, Landroid/content/pm/PackageInfo;->versionCode:I

    :catch_0
    :cond_0
    return v0
.end method

.method public final checkPurchasePermission()V
    .locals 5
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 68
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    const-string v1, "Utils.getFactory()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getRestrictionHandler()Lcom/amazon/kindle/krx/restriction/IRestrictionHandler;

    move-result-object v0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 69
    invoke-interface {v0}, Lcom/amazon/kindle/krx/restriction/IRestrictionHandler;->isBookPurchaseProtected()Z

    move-result v0

    if-ne v0, v2, :cond_1

    .line 70
    invoke-static {}, Lcom/amazon/kcp/store/NativeHostKt;->access$getTAG$p()Ljava/lang/String;

    .line 71
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 72
    new-instance v1, Lcom/amazon/kcp/store/NativeHost$PurchaseProtectionBroadcastReceiver;

    invoke-direct {v1, p0}, Lcom/amazon/kcp/store/NativeHost$PurchaseProtectionBroadcastReceiver;-><init>(Lcom/amazon/kcp/store/NativeHost;)V

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.content.action.PERMISSION_RESPONSE_RECEIVED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const-string v1, "restrictions"

    .line 74
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    check-cast v0, Landroid/content/RestrictionsManager;

    .line 75
    new-instance v1, Landroid/os/PersistableBundle;

    invoke-direct {v1}, Landroid/os/PersistableBundle;-><init>()V

    const-string v2, "android.content.action.REQUEST_PERMISSION"

    const-string v3, "com.amazon.kindle.PURCHASE_REQUEST_ID"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/RestrictionsManager;->requestPermission(Ljava/lang/String;Ljava/lang/String;Landroid/os/PersistableBundle;)V

    goto :goto_0

    .line 74
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "null cannot be cast to non-null type android.content.RestrictionsManager"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 77
    :cond_1
    invoke-static {}, Lcom/amazon/kcp/store/NativeHostKt;->access$getTAG$p()Ljava/lang/String;

    .line 78
    iget-object v0, p0, Lcom/amazon/kcp/store/NativeHost;->store:Lcom/amazon/kcp/store/listener/StoreInterface;

    sget-object v1, Lkotlin/jvm/internal/StringCompanionObject;->INSTANCE:Lkotlin/jvm/internal/StringCompanionObject;

    new-array v1, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v3

    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    const-string v2, "if (typeof BrowserHost !== \'undefined\' && typeof(BrowserHost.onPurchasePermissionReceived) === \'function\') { BrowserHost.onPurchasePermissionReceived(%s); }"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "java.lang.String.format(format, *args)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/amazon/kcp/store/listener/StoreInterface;->executeJavascript(Ljava/lang/String;Lcom/amazon/foundation/IStringCallback;)V

    :goto_0
    return-void
.end method

.method public final downloadAndOpenBookWithBookData(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    const-string v0, "inputBookData"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 260
    iget-object v0, p0, Lcom/amazon/kcp/store/NativeHost;->browserHost:Lcom/amazon/kcp/store/BrowserHost;

    invoke-virtual {v0, p1}, Lcom/amazon/kcp/store/BrowserHost;->downloadAndOpenBookWithBookData(Ljava/lang/String;)V

    return-void
.end method

.method public final getAccessibilityStatus()Z
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 221
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    const-string v1, "Utils.getFactory()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "accessibility"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    .line 222
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    return v0

    .line 221
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "null cannot be cast to non-null type android.view.accessibility.AccessibilityManager"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final getBookDownloadStatus(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    const-string v0, "jsonBookID"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 201
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "percentDownloaded"

    const-string v2, "100"

    .line 203
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "id"

    .line 204
    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "status"

    const/4 v1, 0x1

    .line 205
    invoke-virtual {v0, p1, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 207
    invoke-static {}, Lcom/amazon/kcp/store/NativeHostKt;->access$getTAG$p()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "JSONException occurred while attempting to return book download status: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 210
    :goto_0
    invoke-static {}, Lcom/amazon/kcp/store/NativeHostKt;->access$getTAG$p()Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Returning book download status to server: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 212
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "result.toString()"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public final isContentOnDevice(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    const-string v0, "asin"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "contentType"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 231
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object p2

    const-string v0, "Utils.getFactory()"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p2}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getLibraryService()Lcom/amazon/kindle/content/ILibraryService;

    move-result-object p2

    const/4 v0, 0x0

    invoke-interface {p2, p1, v0}, Lcom/amazon/kindle/content/ILibraryService;->getContentMetadata(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/kindle/content/ContentMetadata;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 232
    invoke-virtual {p1}, Lcom/amazon/kindle/content/ContentMetadata;->isOwned()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-virtual {p1}, Lcom/amazon/kindle/content/ContentMetadata;->isLocal()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public final isDemoMode()Z
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 90
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    const-string v1, "Utils.getFactory()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getApplicationCapabilities()Lcom/amazon/kcp/application/AndroidApplicationCapabilities;

    move-result-object v0

    const-string v1, "Utils.getFactory().applicationCapabilities"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/amazon/kcp/application/AndroidApplicationCapabilities;->isInDemoMode()Z

    move-result v0

    return v0
.end method

.method public final openLibrary()V
    .locals 5
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 144
    invoke-static {}, Lcom/amazon/kcp/store/NativeHostKt;->access$getTAG$p()Ljava/lang/String;

    .line 145
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 146
    sget-object v1, Lcom/amazon/kindle/krx/library/LibraryView;->ALL_ITEMS:Lcom/amazon/kindle/krx/library/LibraryView;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.amazon.kindle.LAUNCH_LIBRARY_VIEW"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getLibraryController()Lcom/amazon/kcp/library/ILibraryController;

    move-result-object v1

    .line 149
    invoke-interface {v1, v0}, Lcom/amazon/kcp/library/ILibraryController;->newLibraryScreenletIntent(Landroid/os/Bundle;)Lcom/amazon/kindle/krx/ui/ScreenletIntent;

    move-result-object v0

    .line 150
    iget-object v2, p0, Lcom/amazon/kcp/store/NativeHost;->store:Lcom/amazon/kcp/store/listener/StoreInterface;

    invoke-interface {v2}, Lcom/amazon/kcp/store/listener/StoreInterface;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p0, Lcom/amazon/kcp/store/NativeHost;->store:Lcom/amazon/kcp/store/listener/StoreInterface;

    invoke-interface {v3}, Lcom/amazon/kcp/store/listener/StoreInterface;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const-string v4, "libraryController"

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v1}, Lcom/amazon/kcp/library/ILibraryController;->getLibraryTabId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1, v0}, Lcom/amazon/kcp/oob/MainActivity;->newIntent(Landroid/content/Context;Ljava/lang/String;Lcom/amazon/kindle/krx/ui/ScreenletIntent;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public final openStorefront()V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 133
    invoke-static {}, Lcom/amazon/kcp/store/NativeHostKt;->access$getTAG$p()Ljava/lang/String;

    .line 134
    iget-object v0, p0, Lcom/amazon/kcp/store/NativeHost;->store:Lcom/amazon/kcp/store/listener/StoreInterface;

    invoke-interface {v0}, Lcom/amazon/kcp/store/listener/StoreInterface;->getActivity()Landroid/app/Activity;

    move-result-object v0

    sget-object v1, Lcom/amazon/kindle/store/StoreType;->BOOKSTORE:Lcom/amazon/kindle/store/StoreType;

    invoke-static {v0, v1}, Lcom/amazon/kindle/utils/StoreOpeners;->createStorefrontOpener(Landroid/content/Context;Lcom/amazon/kindle/store/StoreType;)Lcom/amazon/kindle/store/StoreOpener;

    move-result-object v0

    .line 135
    invoke-static {}, Lcom/amazon/kcp/store/StoreContext;->getScreenletContext()Lcom/amazon/kindle/krx/ui/ScreenletContext;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/amazon/kindle/store/StoreOpener;->setScreenletContext(Lcom/amazon/kindle/krx/ui/ScreenletContext;)Lcom/amazon/kindle/store/StoreOpener;

    move-result-object v0

    .line 136
    invoke-interface {v0}, Lcom/amazon/kindle/store/StoreOpener;->execute()V

    return-void
.end method

.method public final openStorefront(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    const-string v0, "ref"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 121
    invoke-static {}, Lcom/amazon/kcp/store/NativeHostKt;->access$getTAG$p()Ljava/lang/String;

    .line 122
    iget-object v0, p0, Lcom/amazon/kcp/store/NativeHost;->store:Lcom/amazon/kcp/store/listener/StoreInterface;

    invoke-interface {v0}, Lcom/amazon/kcp/store/listener/StoreInterface;->getActivity()Landroid/app/Activity;

    move-result-object v0

    sget-object v1, Lcom/amazon/kindle/store/StoreType;->BOOKSTORE:Lcom/amazon/kindle/store/StoreType;

    invoke-static {v0, v1}, Lcom/amazon/kindle/utils/StoreOpeners;->createStorefrontOpener(Landroid/content/Context;Lcom/amazon/kindle/store/StoreType;)Lcom/amazon/kindle/store/StoreOpener;

    move-result-object v0

    .line 123
    invoke-static {}, Lcom/amazon/kcp/store/StoreContext;->getScreenletContext()Lcom/amazon/kindle/krx/ui/ScreenletContext;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/amazon/kindle/store/StoreOpener;->setScreenletContext(Lcom/amazon/kindle/krx/ui/ScreenletContext;)Lcom/amazon/kindle/store/StoreOpener;

    move-result-object v0

    .line 124
    invoke-interface {v0, p1}, Lcom/amazon/kindle/store/StoreOpener;->setReferralTag(Ljava/lang/String;)Lcom/amazon/kindle/store/StoreOpener;

    move-result-object p1

    .line 125
    invoke-interface {p1}, Lcom/amazon/kindle/store/StoreOpener;->execute()V

    return-void
.end method

.method public final shareBook(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    const-string v0, "asin"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 269
    iget-object v0, p0, Lcom/amazon/kcp/store/NativeHost;->browserHost:Lcom/amazon/kcp/store/BrowserHost;

    invoke-virtual {v0, p1}, Lcom/amazon/kcp/store/BrowserHost;->shareBook(Ljava/lang/String;)V

    return-void
.end method

.method public final showDemoDialog()V
    .locals 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 100
    invoke-static {}, Lcom/amazon/kcp/store/NativeHostKt;->access$getTAG$p()Ljava/lang/String;

    .line 101
    iget-object v0, p0, Lcom/amazon/kcp/store/NativeHost;->store:Lcom/amazon/kcp/store/listener/StoreInterface;

    invoke-interface {v0}, Lcom/amazon/kcp/store/listener/StoreInterface;->getActivity()Landroid/app/Activity;

    move-result-object v0

    sget v1, Lcom/amazon/kcp/store/R$string;->not_available_in_demo_mode_title:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "store.activity.getString\u2026lable_in_demo_mode_title)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/amazon/kcp/store/NativeHost;->store:Lcom/amazon/kcp/store/listener/StoreInterface;

    invoke-interface {v1}, Lcom/amazon/kcp/store/listener/StoreInterface;->getActivity()Landroid/app/Activity;

    move-result-object v1

    sget v2, Lcom/amazon/kcp/store/R$string;->not_available_in_demo_mode_message:I

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "store.activity.getString\u2026ble_in_demo_mode_message)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v0, v1}, Lcom/amazon/kcp/store/NativeHost;->showDialog(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final showNotificationDialog(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    const-string v0, "title"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "message"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 111
    invoke-static {}, Lcom/amazon/kcp/store/NativeHostKt;->access$getTAG$p()Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Showing notification dialog with title: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " and message: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 112
    invoke-direct {p0, p1, p2}, Lcom/amazon/kcp/store/NativeHost;->showDialog(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final startDownloadListener(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    const-string v0, "jsonBookID"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 182
    invoke-static {}, Lcom/amazon/kcp/store/NativeHostKt;->access$getTAG$p()Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Starting book download for jsonBookID: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 183
    iget-object v0, p0, Lcom/amazon/kcp/store/NativeHost;->browserHost:Lcom/amazon/kcp/store/BrowserHost;

    invoke-virtual {v0, p1}, Lcom/amazon/kcp/store/BrowserHost;->checkTODO(Ljava/lang/String;)V

    return-void
.end method

.method public final startService(Ljava/lang/String;)V
    .locals 5
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    const-string v0, ", error: "

    const-string/jumbo v1, "uriString"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 162
    :try_start_0
    invoke-static {}, Lcom/amazon/kcp/store/NativeHostKt;->access$getTAG$p()Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Attempting to start service with uri: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    const/4 v1, 0x1

    .line 163
    invoke-static {p1, v1}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v1
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_1

    .line 165
    :try_start_1
    iget-object v2, p0, Lcom/amazon/kcp/store/NativeHost;->store:Lcom/amazon/kcp/store/listener/StoreInterface;

    invoke-interface {v2}, Lcom/amazon/kcp/store/listener/StoreInterface;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/app/Activity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/net/URISyntaxException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_0
    move-exception v1

    .line 167
    :try_start_2
    invoke-static {}, Lcom/amazon/kcp/store/NativeHostKt;->access$getTAG$p()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to start service with uri: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/net/URISyntaxException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_1
    move-exception v1

    .line 171
    invoke-static {}, Lcom/amazon/kcp/store/NativeHostKt;->access$getTAG$p()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to parse uri string: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/net/URISyntaxException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
