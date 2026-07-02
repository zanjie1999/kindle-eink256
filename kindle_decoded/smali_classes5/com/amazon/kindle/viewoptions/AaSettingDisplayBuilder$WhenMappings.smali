.class public final synthetic Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder$WhenMappings;
.super Ljava/lang/Object;


# static fields
.field public static final synthetic $EnumSwitchMapping$0:[I


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 3

    invoke-static {}, Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder$BuildType;->values()[Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder$BuildType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder$WhenMappings;->$EnumSwitchMapping$0:[I

    sget-object v1, Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder$BuildType;->TOGGLE:Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder$BuildType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1

    sget-object v0, Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder$WhenMappings;->$EnumSwitchMapping$0:[I

    sget-object v1, Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder$BuildType;->CUSTOM:Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder$BuildType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1

    sget-object v0, Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder$WhenMappings;->$EnumSwitchMapping$0:[I

    sget-object v1, Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder$BuildType;->DISCLOSURE:Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder$BuildType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1

    sget-object v0, Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder$WhenMappings;->$EnumSwitchMapping$0:[I

    sget-object v1, Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder$BuildType;->RADIO_GROUP:Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder$BuildType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1

    sget-object v0, Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder$WhenMappings;->$EnumSwitchMapping$0:[I

    sget-object v1, Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder$BuildType;->CHECKABLE_RADIO_GROUP:Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder$BuildType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1

    sget-object v0, Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder$WhenMappings;->$EnumSwitchMapping$0:[I

    sget-object v1, Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder$BuildType;->RADIO_GROUP_TEXT:Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder$BuildType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1

    sget-object v0, Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder$WhenMappings;->$EnumSwitchMapping$0:[I

    sget-object v1, Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder$BuildType;->SLIDER:Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder$BuildType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1

    sget-object v0, Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder$WhenMappings;->$EnumSwitchMapping$0:[I

    sget-object v1, Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder$BuildType;->MESSAGE:Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder$BuildType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1

    sget-object v0, Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder$WhenMappings;->$EnumSwitchMapping$0:[I

    sget-object v1, Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder$BuildType;->CHECKBOX_GROUP:Lcom/amazon/kindle/viewoptions/AaSettingDisplayBuilder$BuildType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1

    return-void
.end method
