.class public final Lcom/amazon/kindle/ffs/settings/DeviceSetupOverBluetoothToggleHandlerManager;
.super Ljava/lang/Object;
.source "FFSItemToggleHandler.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nFFSItemToggleHandler.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FFSItemToggleHandler.kt\ncom/amazon/kindle/ffs/settings/DeviceSetupOverBluetoothToggleHandlerManager\n*L\n1#1,88:1\n*E\n"
.end annotation


# static fields
.field public static final INSTANCE:Lcom/amazon/kindle/ffs/settings/DeviceSetupOverBluetoothToggleHandlerManager;

.field private static final INSTANCE$delegate:Lkotlin/Lazy;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 25
    new-instance v0, Lcom/amazon/kindle/ffs/settings/DeviceSetupOverBluetoothToggleHandlerManager;

    invoke-direct {v0}, Lcom/amazon/kindle/ffs/settings/DeviceSetupOverBluetoothToggleHandlerManager;-><init>()V

    sput-object v0, Lcom/amazon/kindle/ffs/settings/DeviceSetupOverBluetoothToggleHandlerManager;->INSTANCE:Lcom/amazon/kindle/ffs/settings/DeviceSetupOverBluetoothToggleHandlerManager;

    .line 26
    sget-object v0, Lcom/amazon/kindle/ffs/settings/DeviceSetupOverBluetoothToggleHandlerManager$INSTANCE$2;->INSTANCE:Lcom/amazon/kindle/ffs/settings/DeviceSetupOverBluetoothToggleHandlerManager$INSTANCE$2;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lcom/amazon/kindle/ffs/settings/DeviceSetupOverBluetoothToggleHandlerManager;->INSTANCE$delegate:Lkotlin/Lazy;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final getINSTANCE()Lcom/amazon/kindle/ffs/settings/DeviceSetupOverBluetoothToggleHandler;
    .locals 1

    sget-object v0, Lcom/amazon/kindle/ffs/settings/DeviceSetupOverBluetoothToggleHandlerManager;->INSTANCE$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kindle/ffs/settings/DeviceSetupOverBluetoothToggleHandler;

    return-object v0
.end method

.method public static final getInstance()Lcom/amazon/kindle/ffs/settings/DeviceSetupOverBluetoothToggleHandler;
    .locals 1

    .line 29
    sget-object v0, Lcom/amazon/kindle/ffs/settings/DeviceSetupOverBluetoothToggleHandlerManager;->INSTANCE:Lcom/amazon/kindle/ffs/settings/DeviceSetupOverBluetoothToggleHandlerManager;

    invoke-direct {v0}, Lcom/amazon/kindle/ffs/settings/DeviceSetupOverBluetoothToggleHandlerManager;->getINSTANCE()Lcom/amazon/kindle/ffs/settings/DeviceSetupOverBluetoothToggleHandler;

    move-result-object v0

    return-object v0
.end method
