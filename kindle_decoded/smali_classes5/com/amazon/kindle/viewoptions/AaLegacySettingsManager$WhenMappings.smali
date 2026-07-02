.class public final synthetic Lcom/amazon/kindle/viewoptions/AaLegacySettingsManager$WhenMappings;
.super Ljava/lang/Object;


# static fields
.field public static final synthetic $EnumSwitchMapping$0:[I

.field public static final synthetic $EnumSwitchMapping$1:[I

.field public static final synthetic $EnumSwitchMapping$2:[I

.field public static final synthetic $EnumSwitchMapping$3:[I


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 6

    invoke-static {}, Lcom/amazon/android/docviewer/KindleDocColorMode$Id;->values()[Lcom/amazon/android/docviewer/KindleDocColorMode$Id;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/amazon/kindle/viewoptions/AaLegacySettingsManager$WhenMappings;->$EnumSwitchMapping$0:[I

    sget-object v1, Lcom/amazon/android/docviewer/KindleDocColorMode$Id;->WHITE:Lcom/amazon/android/docviewer/KindleDocColorMode$Id;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1

    sget-object v0, Lcom/amazon/kindle/viewoptions/AaLegacySettingsManager$WhenMappings;->$EnumSwitchMapping$0:[I

    sget-object v1, Lcom/amazon/android/docviewer/KindleDocColorMode$Id;->SEPIA:Lcom/amazon/android/docviewer/KindleDocColorMode$Id;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v3, 0x2

    aput v3, v0, v1

    sget-object v0, Lcom/amazon/kindle/viewoptions/AaLegacySettingsManager$WhenMappings;->$EnumSwitchMapping$0:[I

    sget-object v1, Lcom/amazon/android/docviewer/KindleDocColorMode$Id;->GREEN:Lcom/amazon/android/docviewer/KindleDocColorMode$Id;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v4, 0x3

    aput v4, v0, v1

    sget-object v0, Lcom/amazon/kindle/viewoptions/AaLegacySettingsManager$WhenMappings;->$EnumSwitchMapping$0:[I

    sget-object v1, Lcom/amazon/android/docviewer/KindleDocColorMode$Id;->BLACK:Lcom/amazon/android/docviewer/KindleDocColorMode$Id;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v5, 0x4

    aput v5, v0, v1

    invoke-static {}, Lcom/amazon/android/docviewer/KindleDocColorMode$Id;->values()[Lcom/amazon/android/docviewer/KindleDocColorMode$Id;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/amazon/kindle/viewoptions/AaLegacySettingsManager$WhenMappings;->$EnumSwitchMapping$1:[I

    sget-object v1, Lcom/amazon/android/docviewer/KindleDocColorMode$Id;->WHITE:Lcom/amazon/android/docviewer/KindleDocColorMode$Id;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v2, v0, v1

    sget-object v0, Lcom/amazon/kindle/viewoptions/AaLegacySettingsManager$WhenMappings;->$EnumSwitchMapping$1:[I

    sget-object v1, Lcom/amazon/android/docviewer/KindleDocColorMode$Id;->BLACK:Lcom/amazon/android/docviewer/KindleDocColorMode$Id;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v3, v0, v1

    sget-object v0, Lcom/amazon/kindle/viewoptions/AaLegacySettingsManager$WhenMappings;->$EnumSwitchMapping$1:[I

    sget-object v1, Lcom/amazon/android/docviewer/KindleDocColorMode$Id;->SEPIA:Lcom/amazon/android/docviewer/KindleDocColorMode$Id;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v4, v0, v1

    sget-object v0, Lcom/amazon/kindle/viewoptions/AaLegacySettingsManager$WhenMappings;->$EnumSwitchMapping$1:[I

    sget-object v1, Lcom/amazon/android/docviewer/KindleDocColorMode$Id;->GREEN:Lcom/amazon/android/docviewer/KindleDocColorMode$Id;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v5, v0, v1

    invoke-static {}, Lcom/amazon/android/docviewer/KindleDocLineSettings$Margin;->values()[Lcom/amazon/android/docviewer/KindleDocLineSettings$Margin;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/amazon/kindle/viewoptions/AaLegacySettingsManager$WhenMappings;->$EnumSwitchMapping$2:[I

    sget-object v1, Lcom/amazon/android/docviewer/KindleDocLineSettings$Margin;->NONE:Lcom/amazon/android/docviewer/KindleDocLineSettings$Margin;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v2, v0, v1

    sget-object v0, Lcom/amazon/kindle/viewoptions/AaLegacySettingsManager$WhenMappings;->$EnumSwitchMapping$2:[I

    sget-object v1, Lcom/amazon/android/docviewer/KindleDocLineSettings$Margin;->NARROW:Lcom/amazon/android/docviewer/KindleDocLineSettings$Margin;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v3, v0, v1

    sget-object v0, Lcom/amazon/kindle/viewoptions/AaLegacySettingsManager$WhenMappings;->$EnumSwitchMapping$2:[I

    sget-object v1, Lcom/amazon/android/docviewer/KindleDocLineSettings$Margin;->WIDE:Lcom/amazon/android/docviewer/KindleDocLineSettings$Margin;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v4, v0, v1

    invoke-static {}, Lcom/amazon/kindle/krx/viewoptions/AaSettingIdentifier;->values()[Lcom/amazon/kindle/krx/viewoptions/AaSettingIdentifier;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/amazon/kindle/viewoptions/AaLegacySettingsManager$WhenMappings;->$EnumSwitchMapping$3:[I

    sget-object v1, Lcom/amazon/kindle/krx/viewoptions/AaSettingIdentifier;->FONT_SIZE:Lcom/amazon/kindle/krx/viewoptions/AaSettingIdentifier;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v2, v0, v1

    sget-object v0, Lcom/amazon/kindle/viewoptions/AaLegacySettingsManager$WhenMappings;->$EnumSwitchMapping$3:[I

    sget-object v1, Lcom/amazon/kindle/krx/viewoptions/AaSettingIdentifier;->BACKGROUND_COLOR:Lcom/amazon/kindle/krx/viewoptions/AaSettingIdentifier;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v3, v0, v1

    sget-object v0, Lcom/amazon/kindle/viewoptions/AaLegacySettingsManager$WhenMappings;->$EnumSwitchMapping$3:[I

    sget-object v1, Lcom/amazon/kindle/krx/viewoptions/AaSettingIdentifier;->MARGIN:Lcom/amazon/kindle/krx/viewoptions/AaSettingIdentifier;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v4, v0, v1

    sget-object v0, Lcom/amazon/kindle/viewoptions/AaLegacySettingsManager$WhenMappings;->$EnumSwitchMapping$3:[I

    sget-object v1, Lcom/amazon/kindle/krx/viewoptions/AaSettingIdentifier;->LINE_SPACING:Lcom/amazon/kindle/krx/viewoptions/AaSettingIdentifier;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v5, v0, v1

    sget-object v0, Lcom/amazon/kindle/viewoptions/AaLegacySettingsManager$WhenMappings;->$EnumSwitchMapping$3:[I

    sget-object v1, Lcom/amazon/kindle/krx/viewoptions/AaSettingIdentifier;->MULTI_COLUMN:Lcom/amazon/kindle/krx/viewoptions/AaSettingIdentifier;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1

    sget-object v0, Lcom/amazon/kindle/viewoptions/AaLegacySettingsManager$WhenMappings;->$EnumSwitchMapping$3:[I

    sget-object v1, Lcom/amazon/kindle/krx/viewoptions/AaSettingIdentifier;->ALIGNMENT:Lcom/amazon/kindle/krx/viewoptions/AaSettingIdentifier;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1

    sget-object v0, Lcom/amazon/kindle/viewoptions/AaLegacySettingsManager$WhenMappings;->$EnumSwitchMapping$3:[I

    sget-object v1, Lcom/amazon/kindle/krx/viewoptions/AaSettingIdentifier;->CONTINUOUS_SCROLLING:Lcom/amazon/kindle/krx/viewoptions/AaSettingIdentifier;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1

    sget-object v0, Lcom/amazon/kindle/viewoptions/AaLegacySettingsManager$WhenMappings;->$EnumSwitchMapping$3:[I

    sget-object v1, Lcom/amazon/kindle/krx/viewoptions/AaSettingIdentifier;->ORIENTATION_LOCK:Lcom/amazon/kindle/krx/viewoptions/AaSettingIdentifier;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1

    sget-object v0, Lcom/amazon/kindle/viewoptions/AaLegacySettingsManager$WhenMappings;->$EnumSwitchMapping$3:[I

    sget-object v1, Lcom/amazon/kindle/krx/viewoptions/AaSettingIdentifier;->PAGE_TURN_ANIMATION:Lcom/amazon/kindle/krx/viewoptions/AaSettingIdentifier;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1

    sget-object v0, Lcom/amazon/kindle/viewoptions/AaLegacySettingsManager$WhenMappings;->$EnumSwitchMapping$3:[I

    sget-object v1, Lcom/amazon/kindle/krx/viewoptions/AaSettingIdentifier;->CLOCK:Lcom/amazon/kindle/krx/viewoptions/AaSettingIdentifier;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0xa

    aput v2, v0, v1

    sget-object v0, Lcom/amazon/kindle/viewoptions/AaLegacySettingsManager$WhenMappings;->$EnumSwitchMapping$3:[I

    sget-object v1, Lcom/amazon/kindle/krx/viewoptions/AaSettingIdentifier;->HIGHLIGHT_MENU:Lcom/amazon/kindle/krx/viewoptions/AaSettingIdentifier;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0xb

    aput v2, v0, v1

    sget-object v0, Lcom/amazon/kindle/viewoptions/AaLegacySettingsManager$WhenMappings;->$EnumSwitchMapping$3:[I

    sget-object v1, Lcom/amazon/kindle/krx/viewoptions/AaSettingIdentifier;->TURN_PAGE_WITH_VOLUME:Lcom/amazon/kindle/krx/viewoptions/AaSettingIdentifier;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0xc

    aput v2, v0, v1

    sget-object v0, Lcom/amazon/kindle/viewoptions/AaLegacySettingsManager$WhenMappings;->$EnumSwitchMapping$3:[I

    sget-object v1, Lcom/amazon/kindle/krx/viewoptions/AaSettingIdentifier;->COMIC_SCROLLING:Lcom/amazon/kindle/krx/viewoptions/AaSettingIdentifier;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0xd

    aput v2, v0, v1

    sget-object v0, Lcom/amazon/kindle/viewoptions/AaLegacySettingsManager$WhenMappings;->$EnumSwitchMapping$3:[I

    sget-object v1, Lcom/amazon/kindle/krx/viewoptions/AaSettingIdentifier;->SHOW_MEDIA:Lcom/amazon/kindle/krx/viewoptions/AaSettingIdentifier;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0xe

    aput v2, v0, v1

    sget-object v0, Lcom/amazon/kindle/viewoptions/AaLegacySettingsManager$WhenMappings;->$EnumSwitchMapping$3:[I

    sget-object v1, Lcom/amazon/kindle/krx/viewoptions/AaSettingIdentifier;->AUTOPLAY_MEDIA:Lcom/amazon/kindle/krx/viewoptions/AaSettingIdentifier;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0xf

    aput v2, v0, v1

    sget-object v0, Lcom/amazon/kindle/viewoptions/AaLegacySettingsManager$WhenMappings;->$EnumSwitchMapping$3:[I

    sget-object v1, Lcom/amazon/kindle/krx/viewoptions/AaSettingIdentifier;->ANIMATION:Lcom/amazon/kindle/krx/viewoptions/AaSettingIdentifier;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x10

    aput v2, v0, v1

    sget-object v0, Lcom/amazon/kindle/viewoptions/AaLegacySettingsManager$WhenMappings;->$EnumSwitchMapping$3:[I

    sget-object v1, Lcom/amazon/kindle/krx/viewoptions/AaSettingIdentifier;->SHOW_PAGE_ON_EXIT:Lcom/amazon/kindle/krx/viewoptions/AaSettingIdentifier;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x11

    aput v2, v0, v1

    sget-object v0, Lcom/amazon/kindle/viewoptions/AaLegacySettingsManager$WhenMappings;->$EnumSwitchMapping$3:[I

    sget-object v1, Lcom/amazon/kindle/krx/viewoptions/AaSettingIdentifier;->SHOW_PAGE_ON_ENTER:Lcom/amazon/kindle/krx/viewoptions/AaSettingIdentifier;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x12

    aput v2, v0, v1

    sget-object v0, Lcom/amazon/kindle/viewoptions/AaLegacySettingsManager$WhenMappings;->$EnumSwitchMapping$3:[I

    sget-object v1, Lcom/amazon/kindle/krx/viewoptions/AaSettingIdentifier;->OPEN_IN_GUIDEDVIEW:Lcom/amazon/kindle/krx/viewoptions/AaSettingIdentifier;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x13

    aput v2, v0, v1

    sget-object v0, Lcom/amazon/kindle/viewoptions/AaLegacySettingsManager$WhenMappings;->$EnumSwitchMapping$3:[I

    sget-object v1, Lcom/amazon/kindle/krx/viewoptions/AaSettingIdentifier;->READING_PROGRESS:Lcom/amazon/kindle/krx/viewoptions/AaSettingIdentifier;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x14

    aput v2, v0, v1

    return-void
.end method
