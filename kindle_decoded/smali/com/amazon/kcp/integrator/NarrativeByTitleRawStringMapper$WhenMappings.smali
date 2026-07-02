.class public final synthetic Lcom/amazon/kcp/integrator/NarrativeByTitleRawStringMapper$WhenMappings;
.super Ljava/lang/Object;


# static fields
.field public static final synthetic $EnumSwitchMapping$0:[I


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 3

    invoke-static {}, Lcom/amazon/kindle/observablemodel/RawDictionaryType;->values()[Lcom/amazon/kindle/observablemodel/RawDictionaryType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/amazon/kcp/integrator/NarrativeByTitleRawStringMapper$WhenMappings;->$EnumSwitchMapping$0:[I

    sget-object v1, Lcom/amazon/kindle/observablemodel/RawDictionaryType;->TITLE:Lcom/amazon/kindle/observablemodel/RawDictionaryType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1

    sget-object v0, Lcom/amazon/kcp/integrator/NarrativeByTitleRawStringMapper$WhenMappings;->$EnumSwitchMapping$0:[I

    sget-object v1, Lcom/amazon/kindle/observablemodel/RawDictionaryType;->AUTHOR:Lcom/amazon/kindle/observablemodel/RawDictionaryType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1

    return-void
.end method
