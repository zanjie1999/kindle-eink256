.class public final synthetic Lcom/amazon/kindle/viewoptions/AaSettingManager$AaSettingsUtil$WhenMappings;
.super Ljava/lang/Object;


# static fields
.field public static final synthetic $EnumSwitchMapping$0:[I


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 3

    invoke-static {}, Lcom/amazon/ksdk/presets/AaSettingType;->values()[Lcom/amazon/ksdk/presets/AaSettingType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/amazon/kindle/viewoptions/AaSettingManager$AaSettingsUtil$WhenMappings;->$EnumSwitchMapping$0:[I

    sget-object v1, Lcom/amazon/ksdk/presets/AaSettingType;->BRIGHTNESS:Lcom/amazon/ksdk/presets/AaSettingType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1

    sget-object v0, Lcom/amazon/kindle/viewoptions/AaSettingManager$AaSettingsUtil$WhenMappings;->$EnumSwitchMapping$0:[I

    sget-object v1, Lcom/amazon/ksdk/presets/AaSettingType;->AUTO_BRIGHTNESS:Lcom/amazon/ksdk/presets/AaSettingType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1

    sget-object v0, Lcom/amazon/kindle/viewoptions/AaSettingManager$AaSettingsUtil$WhenMappings;->$EnumSwitchMapping$0:[I

    sget-object v1, Lcom/amazon/ksdk/presets/AaSettingType;->FONT_SIZE:Lcom/amazon/ksdk/presets/AaSettingType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1

    sget-object v0, Lcom/amazon/kindle/viewoptions/AaSettingManager$AaSettingsUtil$WhenMappings;->$EnumSwitchMapping$0:[I

    sget-object v1, Lcom/amazon/ksdk/presets/AaSettingType;->COLUMN_COUNT_MODE_BOOKS:Lcom/amazon/ksdk/presets/AaSettingType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1

    sget-object v0, Lcom/amazon/kindle/viewoptions/AaSettingManager$AaSettingsUtil$WhenMappings;->$EnumSwitchMapping$0:[I

    sget-object v1, Lcom/amazon/ksdk/presets/AaSettingType;->LINE_SPACING_MODE:Lcom/amazon/ksdk/presets/AaSettingType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1

    sget-object v0, Lcom/amazon/kindle/viewoptions/AaSettingManager$AaSettingsUtil$WhenMappings;->$EnumSwitchMapping$0:[I

    sget-object v1, Lcom/amazon/ksdk/presets/AaSettingType;->PAGE_COLOR_MODE:Lcom/amazon/ksdk/presets/AaSettingType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1

    sget-object v0, Lcom/amazon/kindle/viewoptions/AaSettingManager$AaSettingsUtil$WhenMappings;->$EnumSwitchMapping$0:[I

    sget-object v1, Lcom/amazon/ksdk/presets/AaSettingType;->PAGE_MARGIN_MODE:Lcom/amazon/ksdk/presets/AaSettingType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1

    sget-object v0, Lcom/amazon/kindle/viewoptions/AaSettingManager$AaSettingsUtil$WhenMappings;->$EnumSwitchMapping$0:[I

    sget-object v1, Lcom/amazon/ksdk/presets/AaSettingType;->JUSTIFICATION_MODE:Lcom/amazon/ksdk/presets/AaSettingType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1

    sget-object v0, Lcom/amazon/kindle/viewoptions/AaSettingManager$AaSettingsUtil$WhenMappings;->$EnumSwitchMapping$0:[I

    sget-object v1, Lcom/amazon/ksdk/presets/AaSettingType;->CONTINUOUS_SCROLLING:Lcom/amazon/ksdk/presets/AaSettingType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1

    sget-object v0, Lcom/amazon/kindle/viewoptions/AaSettingManager$AaSettingsUtil$WhenMappings;->$EnumSwitchMapping$0:[I

    sget-object v1, Lcom/amazon/ksdk/presets/AaSettingType;->PAGE_ORIENTATION_LOCK:Lcom/amazon/ksdk/presets/AaSettingType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0xa

    aput v2, v0, v1

    sget-object v0, Lcom/amazon/kindle/viewoptions/AaSettingManager$AaSettingsUtil$WhenMappings;->$EnumSwitchMapping$0:[I

    sget-object v1, Lcom/amazon/ksdk/presets/AaSettingType;->PAGE_ORIENTATION_MODE:Lcom/amazon/ksdk/presets/AaSettingType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0xb

    aput v2, v0, v1

    sget-object v0, Lcom/amazon/kindle/viewoptions/AaSettingManager$AaSettingsUtil$WhenMappings;->$EnumSwitchMapping$0:[I

    sget-object v1, Lcom/amazon/ksdk/presets/AaSettingType;->PAGE_TURN_ANIMATION:Lcom/amazon/ksdk/presets/AaSettingType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0xc

    aput v2, v0, v1

    sget-object v0, Lcom/amazon/kindle/viewoptions/AaSettingManager$AaSettingsUtil$WhenMappings;->$EnumSwitchMapping$0:[I

    sget-object v1, Lcom/amazon/ksdk/presets/AaSettingType;->READING_CLOCK:Lcom/amazon/ksdk/presets/AaSettingType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0xd

    aput v2, v0, v1

    sget-object v0, Lcom/amazon/kindle/viewoptions/AaSettingManager$AaSettingsUtil$WhenMappings;->$EnumSwitchMapping$0:[I

    sget-object v1, Lcom/amazon/ksdk/presets/AaSettingType;->HIGHLIGHT_MENU:Lcom/amazon/ksdk/presets/AaSettingType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0xe

    aput v2, v0, v1

    sget-object v0, Lcom/amazon/kindle/viewoptions/AaSettingManager$AaSettingsUtil$WhenMappings;->$EnumSwitchMapping$0:[I

    sget-object v1, Lcom/amazon/ksdk/presets/AaSettingType;->FONT_ID:Lcom/amazon/ksdk/presets/AaSettingType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0xf

    aput v2, v0, v1

    sget-object v0, Lcom/amazon/kindle/viewoptions/AaSettingManager$AaSettingsUtil$WhenMappings;->$EnumSwitchMapping$0:[I

    sget-object v1, Lcom/amazon/ksdk/presets/AaSettingType;->READING_PROGRESS_MODE:Lcom/amazon/ksdk/presets/AaSettingType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x10

    aput v2, v0, v1

    sget-object v0, Lcom/amazon/kindle/viewoptions/AaSettingManager$AaSettingsUtil$WhenMappings;->$EnumSwitchMapping$0:[I

    sget-object v1, Lcom/amazon/ksdk/presets/AaSettingType;->TURN_PAGES_WITH_VOLUME_CONTROLS:Lcom/amazon/ksdk/presets/AaSettingType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x11

    aput v2, v0, v1

    sget-object v0, Lcom/amazon/kindle/viewoptions/AaSettingManager$AaSettingsUtil$WhenMappings;->$EnumSwitchMapping$0:[I

    sget-object v1, Lcom/amazon/ksdk/presets/AaSettingType;->SHOW_MEDIA:Lcom/amazon/ksdk/presets/AaSettingType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x12

    aput v2, v0, v1

    sget-object v0, Lcom/amazon/kindle/viewoptions/AaSettingManager$AaSettingsUtil$WhenMappings;->$EnumSwitchMapping$0:[I

    sget-object v1, Lcom/amazon/ksdk/presets/AaSettingType;->AUTO_PLAY_MEDIA:Lcom/amazon/ksdk/presets/AaSettingType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x13

    aput v2, v0, v1

    sget-object v0, Lcom/amazon/kindle/viewoptions/AaSettingManager$AaSettingsUtil$WhenMappings;->$EnumSwitchMapping$0:[I

    sget-object v1, Lcom/amazon/ksdk/presets/AaSettingType;->ANIMATION:Lcom/amazon/ksdk/presets/AaSettingType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x14

    aput v2, v0, v1

    sget-object v0, Lcom/amazon/kindle/viewoptions/AaSettingManager$AaSettingsUtil$WhenMappings;->$EnumSwitchMapping$0:[I

    sget-object v1, Lcom/amazon/ksdk/presets/AaSettingType;->VERTICAL_SCROLLING:Lcom/amazon/ksdk/presets/AaSettingType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x15

    aput v2, v0, v1

    return-void
.end method
