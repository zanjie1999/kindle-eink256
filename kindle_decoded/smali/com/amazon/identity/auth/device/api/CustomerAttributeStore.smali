.class public final Lcom/amazon/identity/auth/device/api/CustomerAttributeStore;
.super Ljava/lang/Object;
.source "DCP"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/identity/auth/device/api/CustomerAttributeStore$GetAttributeOptions;,
        Lcom/amazon/identity/auth/device/api/CustomerAttributeStore$RenameDeviceError;
    }
.end annotation


# static fields
.field public static final AMAZON_ACCOUNT_PROPERTY_CHANGED_INTENT_ACTION:Ljava/lang/String; = "com.amazon.dcp.sso.action.AmazonAccountPropertyService.property.changed"
    .annotation build Lcom/amazon/fireos/sdk/annotations/FireOsSdk;
    .end annotation
.end field

.field public static final COR_PFM_CHANGED_INTENT_ACTION:Ljava/lang/String; = "com.amazon.dcp.sso.broadcast.CORPFMHasChanged"
    .annotation build Lcom/amazon/fireos/sdk/annotations/FireOsSdk;
    .end annotation
.end field

.field public static final ERROR_CODE_ACCOUNT_NOT_REGISTERED:I = 0x3
    .annotation build Lcom/amazon/fireos/sdk/annotations/FireOsSdk;
    .end annotation
.end field

.field public static final ERROR_CODE_GENERIC_INTERNAL_ERROR:I = 0x1
    .annotation build Lcom/amazon/fireos/sdk/annotations/FireOsSdk;
    .end annotation
.end field

.field public static final ERROR_CODE_KEY_NOT_FOUND:I = 0x2
    .annotation build Lcom/amazon/fireos/sdk/annotations/FireOsSdk;
    .end annotation
.end field

.field public static final ERROR_CODE_UNABLE_TO_GET_ATTRIBUTE_ERROR:I = 0x4
    .annotation build Lcom/amazon/fireos/sdk/annotations/FireOsSdk;
    .end annotation
.end field

.field public static final ERROR_CODE_UNABLE_TO_SET_ATTRIBUTE_ERROR:I = 0x5
    .annotation build Lcom/amazon/fireos/sdk/annotations/FireOsSdk;
    .end annotation
.end field

.field public static final KEY_DEFAULT_VALUE:Ljava/lang/String; = "defaut_value_key"
    .annotation build Lcom/amazon/fireos/sdk/annotations/FireOsSdk;
    .end annotation
.end field

.field public static final KEY_DEVICE_EMAIL:Ljava/lang/String; = "com.amazon.dcp.sso.property.deviceemail"
    .annotation build Lcom/amazon/fireos/sdk/annotations/FireOsSdk;
    .end annotation
.end field

.field public static final KEY_DEVICE_NAME:Ljava/lang/String; = "com.amazon.dcp.sso.property.devicename"
    .annotation build Lcom/amazon/fireos/sdk/annotations/FireOsSdk;
    .end annotation
.end field

.field public static final KEY_DIRECTED_ID:Ljava/lang/String; = "new.account.property.changed"
    .annotation build Lcom/amazon/fireos/sdk/annotations/FireOsSdk;
    .end annotation
.end field

.field public static final KEY_ERROR_CODE:Ljava/lang/String; = "error_code_key"
    .annotation build Lcom/amazon/fireos/sdk/annotations/FireOsSdk;
    .end annotation
.end field

.field public static final KEY_ERROR_MESSAGE:Ljava/lang/String; = "error_message_key"
    .annotation build Lcom/amazon/fireos/sdk/annotations/FireOsSdk;
    .end annotation
.end field

.field public static final KEY_NEW_DEVICE_NAME:Ljava/lang/String; = "new_device_name"
    .annotation build Lcom/amazon/fireos/sdk/annotations/FireOsSdk;
    .end annotation
.end field

.field public static final KEY_PACKAGE_NAME_FOR_RENAMING_CHILD_DEVICE_3P_DEVICES:Ljava/lang/String; = "key_package_name_for_renaming_child_device_3p_devices"
    .annotation build Lcom/amazon/fireos/sdk/annotations/FireOsSdk;
    .end annotation
.end field

.field public static final KEY_VALUE:Ljava/lang/String; = "value_key"
    .annotation build Lcom/amazon/fireos/sdk/annotations/FireOsSdk;
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "com.amazon.identity.auth.device.api.CustomerAttributeStore"

.field private static final fJ:Ljava/lang/String; = "CustomerAttributeStore"

.field private static fT:Lcom/amazon/identity/auth/device/api/CustomerAttributeStore;


# instance fields
.field private fU:Lcom/amazon/identity/auth/device/as;

.field private fV:Lcom/amazon/identity/auth/device/f;

.field private final o:Lcom/amazon/identity/auth/device/ed;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 395
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 396
    invoke-static {p1}, Lcom/amazon/identity/auth/device/api/MAPInit;->getInstance(Landroid/content/Context;)Lcom/amazon/identity/auth/device/api/MAPInit;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/identity/auth/device/api/MAPInit;->initialize()V

    .line 398
    invoke-static {p1}, Lcom/amazon/identity/auth/device/ed;->M(Landroid/content/Context;)Lcom/amazon/identity/auth/device/ed;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/identity/auth/device/api/CustomerAttributeStore;->o:Lcom/amazon/identity/auth/device/ed;

    const/4 p1, 0x0

    .line 401
    iput-object p1, p0, Lcom/amazon/identity/auth/device/api/CustomerAttributeStore;->fV:Lcom/amazon/identity/auth/device/f;

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 31
    sget-object v0, Lcom/amazon/identity/auth/device/api/CustomerAttributeStore;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private declared-synchronized bf()Lcom/amazon/identity/auth/device/as;
    .locals 1

    monitor-enter p0

    .line 902
    :try_start_0
    iget-object v0, p0, Lcom/amazon/identity/auth/device/api/CustomerAttributeStore;->fU:Lcom/amazon/identity/auth/device/as;

    if-nez v0, :cond_0

    .line 904
    iget-object v0, p0, Lcom/amazon/identity/auth/device/api/CustomerAttributeStore;->o:Lcom/amazon/identity/auth/device/ed;

    .line 905
    invoke-static {v0}, Lcom/amazon/identity/auth/device/at;->i(Landroid/content/Context;)Lcom/amazon/identity/auth/device/as;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/identity/auth/device/api/CustomerAttributeStore;->fU:Lcom/amazon/identity/auth/device/as;

    .line 908
    :cond_0
    iget-object v0, p0, Lcom/amazon/identity/auth/device/api/CustomerAttributeStore;->fU:Lcom/amazon/identity/auth/device/as;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public static generateNewInstance(Landroid/content/Context;)V
    .locals 1
    .annotation build Lcom/amazon/fireos/sdk/annotations/FireOsSdk;
    .end annotation

    .line 426
    new-instance v0, Lcom/amazon/identity/auth/device/api/CustomerAttributeStore;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/amazon/identity/auth/device/api/CustomerAttributeStore;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/amazon/identity/auth/device/api/CustomerAttributeStore;->fT:Lcom/amazon/identity/auth/device/api/CustomerAttributeStore;

    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/amazon/identity/auth/device/api/CustomerAttributeStore;
    .locals 2
    .annotation build Lcom/amazon/fireos/sdk/annotations/FireOsSdk;
    .end annotation

    const-class v0, Lcom/amazon/identity/auth/device/api/CustomerAttributeStore;

    monitor-enter v0

    :try_start_0
    const-string v1, "context"

    .line 413
    invoke-static {p0, v1}, Lcom/amazon/identity/auth/device/ik;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 415
    sget-object v1, Lcom/amazon/identity/auth/device/api/CustomerAttributeStore;->fT:Lcom/amazon/identity/auth/device/api/CustomerAttributeStore;

    if-nez v1, :cond_0

    .line 417
    invoke-static {p0}, Lcom/amazon/identity/auth/device/api/CustomerAttributeStore;->generateNewInstance(Landroid/content/Context;)V

    .line 420
    :cond_0
    sget-object p0, Lcom/amazon/identity/auth/device/api/CustomerAttributeStore;->fT:Lcom/amazon/identity/auth/device/api/CustomerAttributeStore;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static getValueOrAttributeDefault(Landroid/os/Bundle;)Ljava/lang/String;
    .locals 1
    .annotation build Lcom/amazon/fireos/sdk/annotations/FireOsSdk;
    .end annotation

    const-string v0, "attributeResult"

    .line 449
    invoke-static {p0, v0}, Lcom/amazon/identity/auth/device/ik;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "value_key"

    .line 451
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "defaut_value_key"

    .line 457
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private h(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 888
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    if-nez p1, :cond_1

    .line 893
    invoke-static {p2}, Lcom/amazon/identity/auth/device/ij;->dk(Ljava/lang/String;)Lcom/amazon/identity/auth/device/ij;

    move-result-object p1

    invoke-static {p1}, Lcom/amazon/identity/auth/device/au;->a(Lcom/amazon/identity/auth/device/ij;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 895
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Account cannot be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    return-void

    .line 890
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Key cannot be null or empty"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public getAttribute(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/identity/auth/device/api/Callback;)Lcom/amazon/identity/auth/device/api/MAPFuture;
    .locals 1
    .annotation build Lcom/amazon/fireos/sdk/annotations/FireOsSdk;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/amazon/identity/auth/device/api/Callback;",
            ")",
            "Lcom/amazon/identity/auth/device/api/MAPFuture<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation

    .line 513
    const-class v0, Lcom/amazon/identity/auth/device/api/CustomerAttributeStore$GetAttributeOptions;

    invoke-static {v0}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/amazon/identity/auth/device/api/CustomerAttributeStore;->getAttribute(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/identity/auth/device/api/Callback;Ljava/util/EnumSet;)Lcom/amazon/identity/auth/device/api/MAPFuture;

    move-result-object p1

    return-object p1
.end method

.method public getAttribute(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/identity/auth/device/api/Callback;Landroid/os/Bundle;Ljava/util/EnumSet;)Lcom/amazon/identity/auth/device/api/MAPFuture;
    .locals 8
    .annotation build Lcom/amazon/fireos/sdk/annotations/FireOsSdk;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/amazon/identity/auth/device/api/Callback;",
            "Landroid/os/Bundle;",
            "Ljava/util/EnumSet<",
            "Lcom/amazon/identity/auth/device/api/CustomerAttributeStore$GetAttributeOptions;",
            ">;)",
            "Lcom/amazon/identity/auth/device/api/MAPFuture<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation

    const-string v0, "CustomerAttributeStore:GetAttribute"

    .line 674
    invoke-static {v0}, Lcom/amazon/identity/auth/device/ej;->by(Ljava/lang/String;)Lcom/amazon/identity/auth/device/ej;

    move-result-object v7

    .line 675
    invoke-direct {p0, p1, p2}, Lcom/amazon/identity/auth/device/api/CustomerAttributeStore;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 677
    invoke-virtual {v7}, Lcom/amazon/identity/auth/device/ej;->dZ()Lcom/amazon/identity/auth/device/ms;

    move-result-object v0

    if-nez p4, :cond_0

    .line 682
    new-instance p4, Landroid/os/Bundle;

    invoke-direct {p4}, Landroid/os/Bundle;-><init>()V

    :cond_0
    move-object v5, p4

    if-nez p5, :cond_1

    .line 688
    const-class p4, Lcom/amazon/identity/auth/device/api/CustomerAttributeStore$GetAttributeOptions;

    invoke-static {p4}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object p5

    :cond_1
    move-object v6, p5

    .line 691
    invoke-direct {p0}, Lcom/amazon/identity/auth/device/api/CustomerAttributeStore;->bf()Lcom/amazon/identity/auth/device/as;

    move-result-object v1

    .line 693
    invoke-static {v7, v0, p3}, Lcom/amazon/identity/auth/device/mn;->a(Lcom/amazon/identity/auth/device/ej;Lcom/amazon/identity/auth/device/ms;Lcom/amazon/identity/auth/device/api/Callback;)Lcom/amazon/identity/auth/device/api/Callback;

    move-result-object v4

    move-object v2, p1

    move-object v3, p2

    .line 691
    invoke-interface/range {v1 .. v7}, Lcom/amazon/identity/auth/device/as;->a(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/identity/auth/device/api/Callback;Landroid/os/Bundle;Ljava/util/EnumSet;Lcom/amazon/identity/auth/device/ej;)Lcom/amazon/identity/auth/device/api/MAPFuture;

    move-result-object p1

    return-object p1
.end method

.method public getAttribute(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/identity/auth/device/api/Callback;Ljava/util/EnumSet;)Lcom/amazon/identity/auth/device/api/MAPFuture;
    .locals 6
    .annotation build Lcom/amazon/fireos/sdk/annotations/FireOsSdk;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/amazon/identity/auth/device/api/Callback;",
            "Ljava/util/EnumSet<",
            "Lcom/amazon/identity/auth/device/api/CustomerAttributeStore$GetAttributeOptions;",
            ">;)",
            "Lcom/amazon/identity/auth/device/api/MAPFuture<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation

    .line 573
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/amazon/identity/auth/device/api/CustomerAttributeStore;->getAttribute(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/identity/auth/device/api/Callback;Landroid/os/Bundle;Ljava/util/EnumSet;)Lcom/amazon/identity/auth/device/api/MAPFuture;

    move-result-object p1

    return-object p1
.end method

.method public peekAttribute(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;
    .locals 3
    .annotation build Lcom/amazon/fireos/sdk/annotations/FireOsSdk;
    .end annotation

    const-string v0, "CustomerAttributeStore:peekAttribute"

    .line 762
    invoke-static {v0}, Lcom/amazon/identity/auth/device/ej;->by(Ljava/lang/String;)Lcom/amazon/identity/auth/device/ej;

    move-result-object v0

    .line 763
    invoke-direct {p0, p1, p2}, Lcom/amazon/identity/auth/device/api/CustomerAttributeStore;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 764
    invoke-virtual {v0}, Lcom/amazon/identity/auth/device/ej;->dZ()Lcom/amazon/identity/auth/device/ms;

    move-result-object v1

    .line 767
    :try_start_0
    invoke-direct {p0}, Lcom/amazon/identity/auth/device/api/CustomerAttributeStore;->bf()Lcom/amazon/identity/auth/device/as;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lcom/amazon/identity/auth/device/as;->peekAttribute(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 771
    invoke-virtual {v1}, Lcom/amazon/identity/auth/device/ms;->stop()V

    .line 772
    invoke-virtual {v0}, Lcom/amazon/identity/auth/device/ej;->ea()V

    return-object p1

    :catchall_0
    move-exception p1

    .line 771
    invoke-virtual {v1}, Lcom/amazon/identity/auth/device/ms;->stop()V

    .line 772
    invoke-virtual {v0}, Lcom/amazon/identity/auth/device/ej;->ea()V

    .line 773
    throw p1
.end method

.method public renameDevice(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Lcom/amazon/identity/auth/device/api/Callback;)Lcom/amazon/identity/auth/device/api/MAPFuture;
    .locals 7
    .annotation build Lcom/amazon/fireos/sdk/annotations/FireOsSdk;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Landroid/os/Bundle;",
            "Lcom/amazon/identity/auth/device/api/Callback;",
            ")",
            "Lcom/amazon/identity/auth/device/api/MAPFuture<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation

    const-string v0, "RenameDevice"

    .line 876
    invoke-static {v0}, Lcom/amazon/identity/auth/device/ej;->by(Ljava/lang/String;)Lcom/amazon/identity/auth/device/ej;

    move-result-object v6

    .line 877
    sget-object v0, Lcom/amazon/identity/auth/device/api/CustomerAttributeStore;->TAG:Ljava/lang/String;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/amazon/identity/auth/device/api/CustomerAttributeStore;->o:Lcom/amazon/identity/auth/device/ed;

    invoke-virtual {v2}, Landroid/content/ContextWrapper;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string/jumbo v2, "renameDevice called by %s"

    invoke-static {v0, v2, v1}, Lcom/amazon/identity/auth/device/il;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 878
    invoke-virtual {v6}, Lcom/amazon/identity/auth/device/ej;->dZ()Lcom/amazon/identity/auth/device/ms;

    move-result-object v0

    .line 1913
    iget-object v1, p0, Lcom/amazon/identity/auth/device/api/CustomerAttributeStore;->fV:Lcom/amazon/identity/auth/device/f;

    if-nez v1, :cond_0

    .line 1915
    iget-object v1, p0, Lcom/amazon/identity/auth/device/api/CustomerAttributeStore;->o:Lcom/amazon/identity/auth/device/ed;

    .line 1916
    invoke-static {v1}, Lcom/amazon/identity/auth/device/g;->a(Landroid/content/Context;)Lcom/amazon/identity/auth/device/f;

    move-result-object v1

    iput-object v1, p0, Lcom/amazon/identity/auth/device/api/CustomerAttributeStore;->fV:Lcom/amazon/identity/auth/device/f;

    .line 1919
    :cond_0
    iget-object v1, p0, Lcom/amazon/identity/auth/device/api/CustomerAttributeStore;->fV:Lcom/amazon/identity/auth/device/f;

    .line 882
    invoke-static {v6, v0, p4}, Lcom/amazon/identity/auth/device/mn;->a(Lcom/amazon/identity/auth/device/ej;Lcom/amazon/identity/auth/device/ms;Lcom/amazon/identity/auth/device/api/Callback;)Lcom/amazon/identity/auth/device/api/Callback;

    move-result-object v5

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    .line 879
    invoke-interface/range {v1 .. v6}, Lcom/amazon/identity/auth/device/f;->b(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Lcom/amazon/identity/auth/device/api/Callback;Lcom/amazon/identity/auth/device/ej;)Lcom/amazon/identity/auth/device/api/MAPFuture;

    move-result-object p1

    return-object p1
.end method

.method public setAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/amazon/identity/auth/device/api/Callback;)Lcom/amazon/identity/auth/device/api/MAPFuture;
    .locals 2
    .annotation build Lcom/amazon/fireos/sdk/annotations/FireOsSdk;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/amazon/identity/auth/device/api/Callback;",
            ")",
            "Lcom/amazon/identity/auth/device/api/MAPFuture<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 797
    invoke-static {}, Lcom/amazon/identity/auth/device/il;->gG()V

    const-string v0, "CustomerAttributeStore:setAttribute"

    .line 799
    invoke-static {v0}, Lcom/amazon/identity/auth/device/ej;->by(Ljava/lang/String;)Lcom/amazon/identity/auth/device/ej;

    move-result-object v0

    .line 800
    invoke-direct {p0, p1, p2}, Lcom/amazon/identity/auth/device/api/CustomerAttributeStore;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 801
    invoke-virtual {v0}, Lcom/amazon/identity/auth/device/ej;->dZ()Lcom/amazon/identity/auth/device/ms;

    move-result-object v0

    .line 802
    invoke-direct {p0}, Lcom/amazon/identity/auth/device/api/CustomerAttributeStore;->bf()Lcom/amazon/identity/auth/device/as;

    move-result-object v1

    .line 805
    invoke-static {v0, p4}, Lcom/amazon/identity/auth/device/mn;->a(Lcom/amazon/identity/auth/device/ms;Lcom/amazon/identity/auth/device/api/Callback;)Lcom/amazon/identity/auth/device/api/Callback;

    move-result-object p4

    .line 802
    invoke-interface {v1, p1, p2, p3, p4}, Lcom/amazon/identity/auth/device/as;->setAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/amazon/identity/auth/device/api/Callback;)Lcom/amazon/identity/auth/device/api/MAPFuture;

    move-result-object p1

    return-object p1
.end method
