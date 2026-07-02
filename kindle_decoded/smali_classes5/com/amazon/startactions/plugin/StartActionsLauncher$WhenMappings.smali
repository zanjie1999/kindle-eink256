.class public final synthetic Lcom/amazon/startactions/plugin/StartActionsLauncher$WhenMappings;
.super Ljava/lang/Object;


# static fields
.field public static final synthetic $EnumSwitchMapping$0:[I


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 3

    invoke-static {}, Lcom/amazon/startactions/plugin/StartActionsController$StartActionsEntryPoint;->values()[Lcom/amazon/startactions/plugin/StartActionsController$StartActionsEntryPoint;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/amazon/startactions/plugin/StartActionsLauncher$WhenMappings;->$EnumSwitchMapping$0:[I

    sget-object v1, Lcom/amazon/startactions/plugin/StartActionsController$StartActionsEntryPoint;->SRL_OPEN:Lcom/amazon/startactions/plugin/StartActionsController$StartActionsEntryPoint;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1

    sget-object v0, Lcom/amazon/startactions/plugin/StartActionsLauncher$WhenMappings;->$EnumSwitchMapping$0:[I

    sget-object v1, Lcom/amazon/startactions/plugin/StartActionsController$StartActionsEntryPoint;->LEFT_NAVIGATION_BAR:Lcom/amazon/startactions/plugin/StartActionsController$StartActionsEntryPoint;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1

    sget-object v0, Lcom/amazon/startactions/plugin/StartActionsLauncher$WhenMappings;->$EnumSwitchMapping$0:[I

    sget-object v1, Lcom/amazon/startactions/plugin/StartActionsController$StartActionsEntryPoint;->OVERFLOW_MENU:Lcom/amazon/startactions/plugin/StartActionsController$StartActionsEntryPoint;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1

    sget-object v0, Lcom/amazon/startactions/plugin/StartActionsLauncher$WhenMappings;->$EnumSwitchMapping$0:[I

    sget-object v1, Lcom/amazon/startactions/plugin/StartActionsController$StartActionsEntryPoint;->BOOK_INFO_BUTTON:Lcom/amazon/startactions/plugin/StartActionsController$StartActionsEntryPoint;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1

    return-void
.end method
