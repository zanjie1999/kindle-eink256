.class public Lcom/amazon/identity/auth/device/framework/MAPApplicationInformationQueryer$MAPApplicationCacheInvalidator;
.super Landroid/content/BroadcastReceiver;
.source "DCP"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/identity/auth/device/framework/MAPApplicationInformationQueryer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MAPApplicationCacheInvalidator"
.end annotation


# static fields
.field private static final kc:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lcom/amazon/identity/auth/device/framework/MAPApplicationInformationQueryer$MAPApplicationCacheInvalidator;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 45
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    sput-object v0, Lcom/amazon/identity/auth/device/framework/MAPApplicationInformationQueryer$MAPApplicationCacheInvalidator;->kc:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 43
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method public static F(Landroid/content/Context;)V
    .locals 5

    .line 50
    new-instance v0, Lcom/amazon/identity/auth/device/framework/MAPApplicationInformationQueryer$MAPApplicationCacheInvalidator;

    invoke-direct {v0}, Lcom/amazon/identity/auth/device/framework/MAPApplicationInformationQueryer$MAPApplicationCacheInvalidator;-><init>()V

    .line 51
    sget-object v1, Lcom/amazon/identity/auth/device/framework/MAPApplicationInformationQueryer$MAPApplicationCacheInvalidator;->kc:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "MAPApplicationCacheInvalidator"

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez v1, :cond_0

    .line 53
    invoke-static {}, Lcom/amazon/identity/auth/device/framework/MAPApplicationInformationQueryer;->access$000()Ljava/lang/String;

    move-result-object p0

    new-array v0, v4, [Ljava/lang/Object;

    aput-object v2, v0, v3

    const-string v1, "%s is already registered"

    invoke-static {p0, v1, v0}, Lcom/amazon/identity/auth/device/il;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 59
    :cond_0
    invoke-static {}, Lcom/amazon/identity/auth/device/framework/MAPApplicationInformationQueryer;->access$000()Ljava/lang/String;

    new-array v1, v4, [Ljava/lang/Object;

    aput-object v2, v1, v3

    const-string v2, "Initializing MAPCache cleaner %s."

    invoke-static {v2, v1}, Lcom/amazon/identity/auth/device/il;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 62
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    const-string v2, "android.intent.action.PACKAGE_ADDED"

    .line 63
    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "android.intent.action.PACKAGE_CHANGED"

    .line 65
    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "android.intent.action.PACKAGE_REMOVED"

    .line 66
    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "android.intent.action.PACKAGE_REPLACED"

    .line 67
    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v2, "package"

    .line 68
    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 72
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 79
    invoke-static {}, Lcom/amazon/identity/auth/device/framework/MAPApplicationInformationQueryer;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Failed to register receiver"

    invoke-static {v0, v1, p0}, Lcom/amazon/identity/auth/device/il;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static isRegistered()Z
    .locals 1

    .line 85
    sget-object v0, Lcom/amazon/identity/auth/device/framework/MAPApplicationInformationQueryer$MAPApplicationCacheInvalidator;->kc:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    .line 91
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    if-nez v0, :cond_0

    .line 94
    invoke-static {}, Lcom/amazon/identity/auth/device/framework/MAPApplicationInformationQueryer;->access$000()Ljava/lang/String;

    move-result-object p1

    const-string p2, "The system broadcast contains null data. Ignoring the broadcast"

    invoke-static {p1, p2}, Lcom/amazon/identity/auth/device/il;->ao(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 97
    :cond_0
    invoke-virtual {v0}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 100
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    .line 101
    invoke-static {}, Lcom/amazon/identity/auth/device/framework/MAPApplicationInformationQueryer;->access$000()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    const/4 v3, 0x1

    aput-object v0, v2, v3

    const-string v3, "Notified by action %s to invalidate app cache for %s"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    invoke-static {v1}, Lcom/amazon/identity/auth/device/il;->dl(Ljava/lang/String;)V

    const-string v1, "android.intent.action.PACKAGE_ADDED"

    .line 103
    invoke-static {p2, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 105
    invoke-static {p1}, Lcom/amazon/identity/auth/device/framework/MAPApplicationInformationQueryer;->E(Landroid/content/Context;)Lcom/amazon/identity/auth/device/framework/MAPApplicationInformationQueryer;

    move-result-object p1

    invoke-static {p1}, Lcom/amazon/identity/auth/device/framework/MAPApplicationInformationQueryer;->a(Lcom/amazon/identity/auth/device/framework/MAPApplicationInformationQueryer;)V

    return-void

    :cond_1
    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    .line 107
    invoke-static {p2, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 109
    invoke-static {p1}, Lcom/amazon/identity/auth/device/framework/MAPApplicationInformationQueryer;->E(Landroid/content/Context;)Lcom/amazon/identity/auth/device/framework/MAPApplicationInformationQueryer;

    move-result-object p2

    invoke-virtual {p2, v0}, Lcom/amazon/identity/auth/device/framework/MAPApplicationInformationQueryer;->bp(Ljava/lang/String;)V

    .line 110
    invoke-static {}, Lcom/amazon/identity/auth/device/framework/MAPApplicationInformationQueryer;->access$000()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Package just removed from the device: "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    invoke-static {p2}, Lcom/amazon/identity/auth/device/il;->dl(Ljava/lang/String;)V

    .line 112
    invoke-static {p1}, Lcom/amazon/identity/auth/device/ab;->g(Landroid/content/Context;)Lcom/amazon/identity/auth/device/ab;

    move-result-object p1

    .line 113
    invoke-virtual {p1}, Lcom/amazon/identity/auth/device/ab;->N()V

    return-void

    :cond_2
    const-string v1, "android.intent.action.PACKAGE_CHANGED"

    .line 115
    invoke-static {p2, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "android.intent.action.PACKAGE_REPLACED"

    invoke-static {p2, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_4

    .line 117
    :cond_3
    invoke-static {p1}, Lcom/amazon/identity/auth/device/framework/MAPApplicationInformationQueryer;->E(Landroid/content/Context;)Lcom/amazon/identity/auth/device/framework/MAPApplicationInformationQueryer;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/amazon/identity/auth/device/framework/MAPApplicationInformationQueryer;->bp(Ljava/lang/String;)V

    :cond_4
    return-void
.end method
