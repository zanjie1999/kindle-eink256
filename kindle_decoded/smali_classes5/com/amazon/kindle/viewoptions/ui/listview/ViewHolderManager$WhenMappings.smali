.class public final synthetic Lcom/amazon/kindle/viewoptions/ui/listview/ViewHolderManager$WhenMappings;
.super Ljava/lang/Object;


# static fields
.field public static final synthetic $EnumSwitchMapping$0:[I

.field public static final synthetic $EnumSwitchMapping$1:[I


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 4

    invoke-static {}, Lcom/amazon/kindle/viewoptions/ui/listview/ViewHolderManager$ViewHolderType;->values()[Lcom/amazon/kindle/viewoptions/ui/listview/ViewHolderManager$ViewHolderType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/amazon/kindle/viewoptions/ui/listview/ViewHolderManager$WhenMappings;->$EnumSwitchMapping$0:[I

    sget-object v1, Lcom/amazon/kindle/viewoptions/ui/listview/ViewHolderManager$ViewHolderType;->FONT_FAMILY_VIEW_HOLDER:Lcom/amazon/kindle/viewoptions/ui/listview/ViewHolderManager$ViewHolderType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1

    sget-object v0, Lcom/amazon/kindle/viewoptions/ui/listview/ViewHolderManager$WhenMappings;->$EnumSwitchMapping$0:[I

    sget-object v1, Lcom/amazon/kindle/viewoptions/ui/listview/ViewHolderManager$ViewHolderType;->DOWNLOADABLE_FONTS_VIEW_HOLDER:Lcom/amazon/kindle/viewoptions/ui/listview/ViewHolderManager$ViewHolderType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v3, 0x2

    aput v3, v0, v1

    invoke-static {}, Lcom/amazon/kindle/viewoptions/ui/listview/ViewHolderManager$ViewHolderType;->values()[Lcom/amazon/kindle/viewoptions/ui/listview/ViewHolderManager$ViewHolderType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/amazon/kindle/viewoptions/ui/listview/ViewHolderManager$WhenMappings;->$EnumSwitchMapping$1:[I

    sget-object v1, Lcom/amazon/kindle/viewoptions/ui/listview/ViewHolderManager$ViewHolderType;->FONT_FAMILY_VIEW_HOLDER:Lcom/amazon/kindle/viewoptions/ui/listview/ViewHolderManager$ViewHolderType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v2, v0, v1

    return-void
.end method
