.class public final synthetic Lcom/amazon/android/tableofcontents/TOCDataModel$WhenMappings;
.super Ljava/lang/Object;


# static fields
.field public static final synthetic $EnumSwitchMapping$0:[I

.field public static final synthetic $EnumSwitchMapping$1:[I

.field public static final synthetic $EnumSwitchMapping$2:[I

.field public static final synthetic $EnumSwitchMapping$3:[I


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 5

    invoke-static {}, Lcom/amazon/kindle/krx/reader/AbstractTableOfContentsEntryEx$DividerLayout;->values()[Lcom/amazon/kindle/krx/reader/AbstractTableOfContentsEntryEx$DividerLayout;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/amazon/android/tableofcontents/TOCDataModel$WhenMappings;->$EnumSwitchMapping$0:[I

    sget-object v1, Lcom/amazon/kindle/krx/reader/AbstractTableOfContentsEntryEx$DividerLayout;->DEFAULT:Lcom/amazon/kindle/krx/reader/AbstractTableOfContentsEntryEx$DividerLayout;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1

    sget-object v0, Lcom/amazon/android/tableofcontents/TOCDataModel$WhenMappings;->$EnumSwitchMapping$0:[I

    sget-object v1, Lcom/amazon/kindle/krx/reader/AbstractTableOfContentsEntryEx$DividerLayout;->NO_DIVIDER:Lcom/amazon/kindle/krx/reader/AbstractTableOfContentsEntryEx$DividerLayout;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v3, 0x2

    aput v3, v0, v1

    sget-object v0, Lcom/amazon/android/tableofcontents/TOCDataModel$WhenMappings;->$EnumSwitchMapping$0:[I

    sget-object v1, Lcom/amazon/kindle/krx/reader/AbstractTableOfContentsEntryEx$DividerLayout;->ZERO_PADDING:Lcom/amazon/kindle/krx/reader/AbstractTableOfContentsEntryEx$DividerLayout;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v4, 0x3

    aput v4, v0, v1

    invoke-static {}, Lcom/amazon/kindle/krx/reader/AbstractTableOfContentsEntryEx$CollapsibleState;->values()[Lcom/amazon/kindle/krx/reader/AbstractTableOfContentsEntryEx$CollapsibleState;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/amazon/android/tableofcontents/TOCDataModel$WhenMappings;->$EnumSwitchMapping$1:[I

    sget-object v1, Lcom/amazon/kindle/krx/reader/AbstractTableOfContentsEntryEx$CollapsibleState;->COLLAPSED:Lcom/amazon/kindle/krx/reader/AbstractTableOfContentsEntryEx$CollapsibleState;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v2, v0, v1

    sget-object v0, Lcom/amazon/android/tableofcontents/TOCDataModel$WhenMappings;->$EnumSwitchMapping$1:[I

    sget-object v1, Lcom/amazon/kindle/krx/reader/AbstractTableOfContentsEntryEx$CollapsibleState;->EXPANDED:Lcom/amazon/kindle/krx/reader/AbstractTableOfContentsEntryEx$CollapsibleState;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v3, v0, v1

    sget-object v0, Lcom/amazon/android/tableofcontents/TOCDataModel$WhenMappings;->$EnumSwitchMapping$1:[I

    sget-object v1, Lcom/amazon/kindle/krx/reader/AbstractTableOfContentsEntryEx$CollapsibleState;->UNCOLLAPSIBLE:Lcom/amazon/kindle/krx/reader/AbstractTableOfContentsEntryEx$CollapsibleState;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v4, v0, v1

    invoke-static {}, Lcom/amazon/android/tableofcontents/TOCDataModel$ReaderTOCType;->values()[Lcom/amazon/android/tableofcontents/TOCDataModel$ReaderTOCType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/amazon/android/tableofcontents/TOCDataModel$WhenMappings;->$EnumSwitchMapping$2:[I

    sget-object v1, Lcom/amazon/android/tableofcontents/TOCDataModel$ReaderTOCType;->LavaMagazine:Lcom/amazon/android/tableofcontents/TOCDataModel$ReaderTOCType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v2, v0, v1

    sget-object v0, Lcom/amazon/android/tableofcontents/TOCDataModel$WhenMappings;->$EnumSwitchMapping$2:[I

    sget-object v1, Lcom/amazon/android/tableofcontents/TOCDataModel$ReaderTOCType;->Book:Lcom/amazon/android/tableofcontents/TOCDataModel$ReaderTOCType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v3, v0, v1

    invoke-static {}, Lcom/amazon/android/tableofcontents/TOCDataModel$ReaderTOCType;->values()[Lcom/amazon/android/tableofcontents/TOCDataModel$ReaderTOCType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/amazon/android/tableofcontents/TOCDataModel$WhenMappings;->$EnumSwitchMapping$3:[I

    sget-object v1, Lcom/amazon/android/tableofcontents/TOCDataModel$ReaderTOCType;->Book:Lcom/amazon/android/tableofcontents/TOCDataModel$ReaderTOCType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v2, v0, v1

    sget-object v0, Lcom/amazon/android/tableofcontents/TOCDataModel$WhenMappings;->$EnumSwitchMapping$3:[I

    sget-object v1, Lcom/amazon/android/tableofcontents/TOCDataModel$ReaderTOCType;->LavaMagazine:Lcom/amazon/android/tableofcontents/TOCDataModel$ReaderTOCType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v3, v0, v1

    return-void
.end method
