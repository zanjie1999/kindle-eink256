.class public final synthetic Lcom/amazon/kindle/viewoptions/themes/AaThemesManager$WhenMappings;
.super Ljava/lang/Object;


# static fields
.field public static final synthetic $EnumSwitchMapping$0:[I

.field public static final synthetic $EnumSwitchMapping$1:[I

.field public static final synthetic $EnumSwitchMapping$2:[I

.field public static final synthetic $EnumSwitchMapping$3:[I

.field public static final synthetic $EnumSwitchMapping$4:[I


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 6

    invoke-static {}, Lcom/amazon/ksdk/presets/BuiltInPresetType;->values()[Lcom/amazon/ksdk/presets/BuiltInPresetType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/amazon/kindle/viewoptions/themes/AaThemesManager$WhenMappings;->$EnumSwitchMapping$0:[I

    sget-object v1, Lcom/amazon/ksdk/presets/BuiltInPresetType;->COMPACT:Lcom/amazon/ksdk/presets/BuiltInPresetType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1

    sget-object v0, Lcom/amazon/kindle/viewoptions/themes/AaThemesManager$WhenMappings;->$EnumSwitchMapping$0:[I

    sget-object v1, Lcom/amazon/ksdk/presets/BuiltInPresetType;->STANDARD:Lcom/amazon/ksdk/presets/BuiltInPresetType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v3, 0x2

    aput v3, v0, v1

    sget-object v0, Lcom/amazon/kindle/viewoptions/themes/AaThemesManager$WhenMappings;->$EnumSwitchMapping$0:[I

    sget-object v1, Lcom/amazon/ksdk/presets/BuiltInPresetType;->LARGE:Lcom/amazon/ksdk/presets/BuiltInPresetType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v4, 0x3

    aput v4, v0, v1

    sget-object v0, Lcom/amazon/kindle/viewoptions/themes/AaThemesManager$WhenMappings;->$EnumSwitchMapping$0:[I

    sget-object v1, Lcom/amazon/ksdk/presets/BuiltInPresetType;->LOW_VISION:Lcom/amazon/ksdk/presets/BuiltInPresetType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v5, 0x4

    aput v5, v0, v1

    invoke-static {}, Lcom/amazon/ksdk/presets/BuiltInPresetType;->values()[Lcom/amazon/ksdk/presets/BuiltInPresetType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/amazon/kindle/viewoptions/themes/AaThemesManager$WhenMappings;->$EnumSwitchMapping$1:[I

    sget-object v1, Lcom/amazon/ksdk/presets/BuiltInPresetType;->COMPACT:Lcom/amazon/ksdk/presets/BuiltInPresetType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v2, v0, v1

    sget-object v0, Lcom/amazon/kindle/viewoptions/themes/AaThemesManager$WhenMappings;->$EnumSwitchMapping$1:[I

    sget-object v1, Lcom/amazon/ksdk/presets/BuiltInPresetType;->STANDARD:Lcom/amazon/ksdk/presets/BuiltInPresetType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v3, v0, v1

    sget-object v0, Lcom/amazon/kindle/viewoptions/themes/AaThemesManager$WhenMappings;->$EnumSwitchMapping$1:[I

    sget-object v1, Lcom/amazon/ksdk/presets/BuiltInPresetType;->LARGE:Lcom/amazon/ksdk/presets/BuiltInPresetType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v4, v0, v1

    sget-object v0, Lcom/amazon/kindle/viewoptions/themes/AaThemesManager$WhenMappings;->$EnumSwitchMapping$1:[I

    sget-object v1, Lcom/amazon/ksdk/presets/BuiltInPresetType;->LOW_VISION:Lcom/amazon/ksdk/presets/BuiltInPresetType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v5, v0, v1

    invoke-static {}, Lcom/amazon/ksdk/presets/BuiltInPresetType;->values()[Lcom/amazon/ksdk/presets/BuiltInPresetType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/amazon/kindle/viewoptions/themes/AaThemesManager$WhenMappings;->$EnumSwitchMapping$2:[I

    sget-object v1, Lcom/amazon/ksdk/presets/BuiltInPresetType;->COMPACT:Lcom/amazon/ksdk/presets/BuiltInPresetType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v2, v0, v1

    sget-object v0, Lcom/amazon/kindle/viewoptions/themes/AaThemesManager$WhenMappings;->$EnumSwitchMapping$2:[I

    sget-object v1, Lcom/amazon/ksdk/presets/BuiltInPresetType;->STANDARD:Lcom/amazon/ksdk/presets/BuiltInPresetType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v3, v0, v1

    sget-object v0, Lcom/amazon/kindle/viewoptions/themes/AaThemesManager$WhenMappings;->$EnumSwitchMapping$2:[I

    sget-object v1, Lcom/amazon/ksdk/presets/BuiltInPresetType;->LARGE:Lcom/amazon/ksdk/presets/BuiltInPresetType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v4, v0, v1

    sget-object v0, Lcom/amazon/kindle/viewoptions/themes/AaThemesManager$WhenMappings;->$EnumSwitchMapping$2:[I

    sget-object v1, Lcom/amazon/ksdk/presets/BuiltInPresetType;->LOW_VISION:Lcom/amazon/ksdk/presets/BuiltInPresetType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v5, v0, v1

    invoke-static {}, Lcom/amazon/ksdk/presets/BuiltInPresetType;->values()[Lcom/amazon/ksdk/presets/BuiltInPresetType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/amazon/kindle/viewoptions/themes/AaThemesManager$WhenMappings;->$EnumSwitchMapping$3:[I

    sget-object v1, Lcom/amazon/ksdk/presets/BuiltInPresetType;->COMPACT:Lcom/amazon/ksdk/presets/BuiltInPresetType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v2, v0, v1

    sget-object v0, Lcom/amazon/kindle/viewoptions/themes/AaThemesManager$WhenMappings;->$EnumSwitchMapping$3:[I

    sget-object v1, Lcom/amazon/ksdk/presets/BuiltInPresetType;->STANDARD:Lcom/amazon/ksdk/presets/BuiltInPresetType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v3, v0, v1

    sget-object v0, Lcom/amazon/kindle/viewoptions/themes/AaThemesManager$WhenMappings;->$EnumSwitchMapping$3:[I

    sget-object v1, Lcom/amazon/ksdk/presets/BuiltInPresetType;->LARGE:Lcom/amazon/ksdk/presets/BuiltInPresetType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v4, v0, v1

    sget-object v0, Lcom/amazon/kindle/viewoptions/themes/AaThemesManager$WhenMappings;->$EnumSwitchMapping$3:[I

    sget-object v1, Lcom/amazon/ksdk/presets/BuiltInPresetType;->LOW_VISION:Lcom/amazon/ksdk/presets/BuiltInPresetType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v5, v0, v1

    invoke-static {}, Lcom/amazon/ksdk/presets/BuiltInPresetType;->values()[Lcom/amazon/ksdk/presets/BuiltInPresetType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/amazon/kindle/viewoptions/themes/AaThemesManager$WhenMappings;->$EnumSwitchMapping$4:[I

    sget-object v1, Lcom/amazon/ksdk/presets/BuiltInPresetType;->STANDARD:Lcom/amazon/ksdk/presets/BuiltInPresetType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v2, v0, v1

    sget-object v0, Lcom/amazon/kindle/viewoptions/themes/AaThemesManager$WhenMappings;->$EnumSwitchMapping$4:[I

    sget-object v1, Lcom/amazon/ksdk/presets/BuiltInPresetType;->COMPACT:Lcom/amazon/ksdk/presets/BuiltInPresetType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v3, v0, v1

    sget-object v0, Lcom/amazon/kindle/viewoptions/themes/AaThemesManager$WhenMappings;->$EnumSwitchMapping$4:[I

    sget-object v1, Lcom/amazon/ksdk/presets/BuiltInPresetType;->LARGE:Lcom/amazon/ksdk/presets/BuiltInPresetType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v4, v0, v1

    sget-object v0, Lcom/amazon/kindle/viewoptions/themes/AaThemesManager$WhenMappings;->$EnumSwitchMapping$4:[I

    sget-object v1, Lcom/amazon/ksdk/presets/BuiltInPresetType;->LOW_VISION:Lcom/amazon/ksdk/presets/BuiltInPresetType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v5, v0, v1

    return-void
.end method
