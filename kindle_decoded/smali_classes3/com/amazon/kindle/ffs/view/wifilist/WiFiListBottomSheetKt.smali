.class public final Lcom/amazon/kindle/ffs/view/wifilist/WiFiListBottomSheetKt;
.super Ljava/lang/Object;
.source "WiFiListBottomSheet.kt"


# static fields
.field private static final CONNECTING_TO_KEY:Ljava/lang/String; = "WiFiListActivity:connectingTo"

.field private static final ERROR_DIALOG_TAG:Ljava/lang/String; = "WiFiListBottomSheet::errorDialog"

.field private static final HIDE_PASSWORD_CHECKED_KEY:Ljava/lang/String; = "WiFiListActivity:hidePasswordChecked"

.field private static final PASSWORD_DIALOG_TAG:Ljava/lang/String; = "WiFiListBottomSheet::passwordDialog"

.field private static final SAVE_TO_LOCKER_CHECKED_KEY:Ljava/lang/String; = "WiFiListActivity:saveToLockerChecked"

.field private static final STATUS_KEY:Ljava/lang/String; = "WiFiListActivity:statusKey"

.field private static final TAG:Ljava/lang/String;

.field private static final USER_PROVIDED_PASSWORD_KEY:Ljava/lang/String; = "WiFiListActivity:userProvidedPassword"

.field private static final VIEW_MODEL_KEY:Ljava/lang/String; = "WiFiListActivity:viewModel"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 28
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[FFSPlugin] - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/amazon/kindle/ffs/view/wifilist/WiFiListBottomSheet;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kindle/ffs/view/wifilist/WiFiListBottomSheetKt;->TAG:Ljava/lang/String;

    return-void
.end method

.method public static final synthetic access$getTAG$p()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/amazon/kindle/ffs/view/wifilist/WiFiListBottomSheetKt;->TAG:Ljava/lang/String;

    return-object v0
.end method
