.class public final Lcom/amazon/kindle/ffs/view/wifilist/WiFiListState;
.super Ljava/lang/Object;
.source "WiFiListState.kt"


# static fields
.field public static final INSTANCE:Lcom/amazon/kindle/ffs/view/wifilist/WiFiListState;

.field public static final STATE_UPDATED_ACTION:Ljava/lang/String; = "FFS_WIFI_LIST_STATE_UPDATED"

.field private static bundle:Landroid/os/Bundle;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 10
    new-instance v0, Lcom/amazon/kindle/ffs/view/wifilist/WiFiListState;

    invoke-direct {v0}, Lcom/amazon/kindle/ffs/view/wifilist/WiFiListState;-><init>()V

    sput-object v0, Lcom/amazon/kindle/ffs/view/wifilist/WiFiListState;->INSTANCE:Lcom/amazon/kindle/ffs/view/wifilist/WiFiListState;

    .line 13
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    sput-object v0, Lcom/amazon/kindle/ffs/view/wifilist/WiFiListState;->bundle:Landroid/os/Bundle;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getBundle()Landroid/os/Bundle;
    .locals 1

    .line 13
    sget-object v0, Lcom/amazon/kindle/ffs/view/wifilist/WiFiListState;->bundle:Landroid/os/Bundle;

    return-object v0
.end method

.method public final setBundle(Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    sput-object p1, Lcom/amazon/kindle/ffs/view/wifilist/WiFiListState;->bundle:Landroid/os/Bundle;

    .line 17
    new-instance v0, Landroid/content/Intent;

    const-string v1, "FFS_WIFI_LIST_STATE_UPDATED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 18
    invoke-virtual {v0, p1}, Landroid/content/Intent;->replaceExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 20
    sget-object p1, Lcom/amazon/kindle/ffs/plugin/FFSPlugin;->Companion:Lcom/amazon/kindle/ffs/plugin/FFSPlugin$Companion;

    invoke-virtual {p1}, Lcom/amazon/kindle/ffs/plugin/FFSPlugin$Companion;->get()Lcom/amazon/kindle/ffs/plugin/FFSPlugin;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/amazon/kindle/ffs/plugin/FFSPlugin;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void

    :cond_0
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    const/4 p1, 0x0

    throw p1
.end method
