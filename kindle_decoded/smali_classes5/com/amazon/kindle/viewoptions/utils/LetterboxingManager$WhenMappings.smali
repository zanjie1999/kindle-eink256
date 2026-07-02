.class public final synthetic Lcom/amazon/kindle/viewoptions/utils/LetterboxingManager$WhenMappings;
.super Ljava/lang/Object;


# static fields
.field public static final synthetic $EnumSwitchMapping$0:[I

.field public static final synthetic $EnumSwitchMapping$1:[I

.field public static final synthetic $EnumSwitchMapping$2:[I


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 5

    invoke-static {}, Lcom/amazon/android/docviewer/LetterboxingColor;->values()[Lcom/amazon/android/docviewer/LetterboxingColor;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/amazon/kindle/viewoptions/utils/LetterboxingManager$WhenMappings;->$EnumSwitchMapping$0:[I

    sget-object v1, Lcom/amazon/android/docviewer/LetterboxingColor;->TRANSPARENT:Lcom/amazon/android/docviewer/LetterboxingColor;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1

    sget-object v0, Lcom/amazon/kindle/viewoptions/utils/LetterboxingManager$WhenMappings;->$EnumSwitchMapping$0:[I

    sget-object v1, Lcom/amazon/android/docviewer/LetterboxingColor;->PUBLISHER:Lcom/amazon/android/docviewer/LetterboxingColor;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v3, 0x2

    aput v3, v0, v1

    sget-object v0, Lcom/amazon/kindle/viewoptions/utils/LetterboxingManager$WhenMappings;->$EnumSwitchMapping$0:[I

    sget-object v1, Lcom/amazon/android/docviewer/LetterboxingColor;->BLACK:Lcom/amazon/android/docviewer/LetterboxingColor;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v4, 0x3

    aput v4, v0, v1

    invoke-static {}, Lcom/amazon/android/docviewer/LetterboxingColor;->values()[Lcom/amazon/android/docviewer/LetterboxingColor;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/amazon/kindle/viewoptions/utils/LetterboxingManager$WhenMappings;->$EnumSwitchMapping$1:[I

    sget-object v1, Lcom/amazon/android/docviewer/LetterboxingColor;->TRANSPARENT:Lcom/amazon/android/docviewer/LetterboxingColor;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v2, v0, v1

    sget-object v0, Lcom/amazon/kindle/viewoptions/utils/LetterboxingManager$WhenMappings;->$EnumSwitchMapping$1:[I

    sget-object v1, Lcom/amazon/android/docviewer/LetterboxingColor;->PUBLISHER:Lcom/amazon/android/docviewer/LetterboxingColor;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v3, v0, v1

    sget-object v0, Lcom/amazon/kindle/viewoptions/utils/LetterboxingManager$WhenMappings;->$EnumSwitchMapping$1:[I

    sget-object v1, Lcom/amazon/android/docviewer/LetterboxingColor;->BLACK:Lcom/amazon/android/docviewer/LetterboxingColor;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v4, v0, v1

    invoke-static {}, Lcom/amazon/android/docviewer/LetterboxingColor;->values()[Lcom/amazon/android/docviewer/LetterboxingColor;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/amazon/kindle/viewoptions/utils/LetterboxingManager$WhenMappings;->$EnumSwitchMapping$2:[I

    sget-object v1, Lcom/amazon/android/docviewer/LetterboxingColor;->TRANSPARENT:Lcom/amazon/android/docviewer/LetterboxingColor;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v2, v0, v1

    sget-object v0, Lcom/amazon/kindle/viewoptions/utils/LetterboxingManager$WhenMappings;->$EnumSwitchMapping$2:[I

    sget-object v1, Lcom/amazon/android/docviewer/LetterboxingColor;->PUBLISHER:Lcom/amazon/android/docviewer/LetterboxingColor;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v3, v0, v1

    sget-object v0, Lcom/amazon/kindle/viewoptions/utils/LetterboxingManager$WhenMappings;->$EnumSwitchMapping$2:[I

    sget-object v1, Lcom/amazon/android/docviewer/LetterboxingColor;->BLACK:Lcom/amazon/android/docviewer/LetterboxingColor;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v4, v0, v1

    return-void
.end method
