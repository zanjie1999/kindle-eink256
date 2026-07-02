.class public final synthetic Lcom/amazon/ea/EndActionsLauncher$WhenMappings;
.super Ljava/lang/Object;


# static fields
.field public static final synthetic $EnumSwitchMapping$0:[I

.field public static final synthetic $EnumSwitchMapping$1:[I

.field public static final synthetic $EnumSwitchMapping$2:[I


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 3

    invoke-static {}, Lcom/amazon/kindle/krx/application/AppType;->values()[Lcom/amazon/kindle/krx/application/AppType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/amazon/ea/EndActionsLauncher$WhenMappings;->$EnumSwitchMapping$0:[I

    sget-object v1, Lcom/amazon/kindle/krx/application/AppType;->KRT:Lcom/amazon/kindle/krx/application/AppType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1

    invoke-static {}, Lcom/amazon/kindle/krx/application/AppType;->values()[Lcom/amazon/kindle/krx/application/AppType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/amazon/ea/EndActionsLauncher$WhenMappings;->$EnumSwitchMapping$1:[I

    sget-object v1, Lcom/amazon/kindle/krx/application/AppType;->KRT:Lcom/amazon/kindle/krx/application/AppType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v2, v0, v1

    invoke-static {}, Lcom/amazon/ea/ReaderEventHandler$EndActionsEntryPoint;->values()[Lcom/amazon/ea/ReaderEventHandler$EndActionsEntryPoint;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/amazon/ea/EndActionsLauncher$WhenMappings;->$EnumSwitchMapping$2:[I

    sget-object v1, Lcom/amazon/ea/ReaderEventHandler$EndActionsEntryPoint;->END_OF_BOOK:Lcom/amazon/ea/ReaderEventHandler$EndActionsEntryPoint;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v2, v0, v1

    sget-object v0, Lcom/amazon/ea/EndActionsLauncher$WhenMappings;->$EnumSwitchMapping$2:[I

    sget-object v1, Lcom/amazon/ea/ReaderEventHandler$EndActionsEntryPoint;->ERL:Lcom/amazon/ea/ReaderEventHandler$EndActionsEntryPoint;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1

    sget-object v0, Lcom/amazon/ea/EndActionsLauncher$WhenMappings;->$EnumSwitchMapping$2:[I

    sget-object v1, Lcom/amazon/ea/ReaderEventHandler$EndActionsEntryPoint;->LEFT_NAV:Lcom/amazon/ea/ReaderEventHandler$EndActionsEntryPoint;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1

    sget-object v0, Lcom/amazon/ea/EndActionsLauncher$WhenMappings;->$EnumSwitchMapping$2:[I

    sget-object v1, Lcom/amazon/ea/ReaderEventHandler$EndActionsEntryPoint;->OVERFLOW_MENU:Lcom/amazon/ea/ReaderEventHandler$EndActionsEntryPoint;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1

    sget-object v0, Lcom/amazon/ea/EndActionsLauncher$WhenMappings;->$EnumSwitchMapping$2:[I

    sget-object v1, Lcom/amazon/ea/ReaderEventHandler$EndActionsEntryPoint;->UNKNOWN:Lcom/amazon/ea/ReaderEventHandler$EndActionsEntryPoint;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1

    return-void
.end method
