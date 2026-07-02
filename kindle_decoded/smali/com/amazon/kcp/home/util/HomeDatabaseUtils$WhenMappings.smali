.class public final synthetic Lcom/amazon/kcp/home/util/HomeDatabaseUtils$WhenMappings;
.super Ljava/lang/Object;


# static fields
.field public static final synthetic $EnumSwitchMapping$0:[I


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 3

    invoke-static {}, Lcom/amazon/kcp/home/models/CardType;->values()[Lcom/amazon/kcp/home/models/CardType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/amazon/kcp/home/util/HomeDatabaseUtils$WhenMappings;->$EnumSwitchMapping$0:[I

    sget-object v1, Lcom/amazon/kcp/home/models/CardType;->SHOVELER:Lcom/amazon/kcp/home/models/CardType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1

    sget-object v0, Lcom/amazon/kcp/home/util/HomeDatabaseUtils$WhenMappings;->$EnumSwitchMapping$0:[I

    sget-object v1, Lcom/amazon/kcp/home/models/CardType;->BRANDED_SHOVELER:Lcom/amazon/kcp/home/models/CardType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1

    sget-object v0, Lcom/amazon/kcp/home/util/HomeDatabaseUtils$WhenMappings;->$EnumSwitchMapping$0:[I

    sget-object v1, Lcom/amazon/kcp/home/models/CardType;->NIS:Lcom/amazon/kcp/home/models/CardType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1

    sget-object v0, Lcom/amazon/kcp/home/util/HomeDatabaseUtils$WhenMappings;->$EnumSwitchMapping$0:[I

    sget-object v1, Lcom/amazon/kcp/home/models/CardType;->WEB:Lcom/amazon/kcp/home/models/CardType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1

    sget-object v0, Lcom/amazon/kcp/home/util/HomeDatabaseUtils$WhenMappings;->$EnumSwitchMapping$0:[I

    sget-object v1, Lcom/amazon/kcp/home/models/CardType;->CHARTS:Lcom/amazon/kcp/home/models/CardType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1

    sget-object v0, Lcom/amazon/kcp/home/util/HomeDatabaseUtils$WhenMappings;->$EnumSwitchMapping$0:[I

    sget-object v1, Lcom/amazon/kcp/home/models/CardType;->ARTICLE_SHOVELER:Lcom/amazon/kcp/home/models/CardType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1

    sget-object v0, Lcom/amazon/kcp/home/util/HomeDatabaseUtils$WhenMappings;->$EnumSwitchMapping$0:[I

    sget-object v1, Lcom/amazon/kcp/home/models/CardType;->AUTHOR_FOLLOW:Lcom/amazon/kcp/home/models/CardType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1

    sget-object v0, Lcom/amazon/kcp/home/util/HomeDatabaseUtils$WhenMappings;->$EnumSwitchMapping$0:[I

    sget-object v1, Lcom/amazon/kcp/home/models/CardType;->WAYS_TO_READ:Lcom/amazon/kcp/home/models/CardType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1

    sget-object v0, Lcom/amazon/kcp/home/util/HomeDatabaseUtils$WhenMappings;->$EnumSwitchMapping$0:[I

    sget-object v1, Lcom/amazon/kcp/home/models/CardType;->TIPS_AND_TRICKS:Lcom/amazon/kcp/home/models/CardType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1

    sget-object v0, Lcom/amazon/kcp/home/util/HomeDatabaseUtils$WhenMappings;->$EnumSwitchMapping$0:[I

    sget-object v1, Lcom/amazon/kcp/home/models/CardType;->BOOKS_BLURB_CARD:Lcom/amazon/kcp/home/models/CardType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0xa

    aput v2, v0, v1

    return-void
.end method
