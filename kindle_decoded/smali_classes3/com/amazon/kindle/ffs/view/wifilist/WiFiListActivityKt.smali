.class public final Lcom/amazon/kindle/ffs/view/wifilist/WiFiListActivityKt;
.super Ljava/lang/Object;
.source "WiFiListActivity.kt"


# static fields
.field private static final CONNECTING_TO_KEY:Ljava/lang/String; = "WiFiListActivity:connectingTo"

.field private static final HIDE_PASSWORD_CHECKED_KEY:Ljava/lang/String; = "WiFiListActivity:hidePasswordChecked"

.field private static final PERSISTENT_PARAMETERS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final SAVE_TO_LOCKER_CHECKED_KEY:Ljava/lang/String; = "WiFiListActivity:saveToLockerChecked"

.field private static final STATUS_KEY:Ljava/lang/String; = "WiFiListActivity:statusKey"

.field private static final TAG:Ljava/lang/String;

.field private static final USER_PROVIDED_PASSWORD_KEY:Ljava/lang/String; = "WiFiListActivity:userProvidedPassword"

.field private static final VIEW_MODEL_KEY:Ljava/lang/String; = "WiFiListActivity:viewModel"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-string v0, "WiFiListActivity:userProvidedPassword"

    const-string v1, "WiFiListActivity:saveToLockerChecked"

    const-string v2, "WiFiListActivity:hidePasswordChecked"

    .line 29
    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/amazon/kindle/ffs/view/wifilist/WiFiListActivityKt;->PERSISTENT_PARAMETERS:Ljava/util/List;

    .line 39
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[FFSPlugin] - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/amazon/kindle/ffs/view/wifilist/WiFiListActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kindle/ffs/view/wifilist/WiFiListActivityKt;->TAG:Ljava/lang/String;

    return-void
.end method

.method public static final synthetic access$getPERSISTENT_PARAMETERS$p()Ljava/util/List;
    .locals 1

    .line 1
    sget-object v0, Lcom/amazon/kindle/ffs/view/wifilist/WiFiListActivityKt;->PERSISTENT_PARAMETERS:Ljava/util/List;

    return-object v0
.end method

.method public static final synthetic access$getTAG$p()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/amazon/kindle/ffs/view/wifilist/WiFiListActivityKt;->TAG:Ljava/lang/String;

    return-object v0
.end method
