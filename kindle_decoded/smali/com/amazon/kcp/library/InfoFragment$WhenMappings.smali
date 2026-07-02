.class public final synthetic Lcom/amazon/kcp/library/InfoFragment$WhenMappings;
.super Ljava/lang/Object;


# static fields
.field public static final synthetic $EnumSwitchMapping$0:[I


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 3

    invoke-static {}, Lcom/amazon/kcp/library/InfoFragment$InfoItem;->values()[Lcom/amazon/kcp/library/InfoFragment$InfoItem;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/amazon/kcp/library/InfoFragment$WhenMappings;->$EnumSwitchMapping$0:[I

    sget-object v1, Lcom/amazon/kcp/library/InfoFragment$InfoItem;->ABOUT:Lcom/amazon/kcp/library/InfoFragment$InfoItem;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1

    sget-object v0, Lcom/amazon/kcp/library/InfoFragment$WhenMappings;->$EnumSwitchMapping$0:[I

    sget-object v1, Lcom/amazon/kcp/library/InfoFragment$InfoItem;->WHATS_NEW:Lcom/amazon/kcp/library/InfoFragment$InfoItem;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1

    sget-object v0, Lcom/amazon/kcp/library/InfoFragment$WhenMappings;->$EnumSwitchMapping$0:[I

    sget-object v1, Lcom/amazon/kcp/library/InfoFragment$InfoItem;->TERMS_OF_USE:Lcom/amazon/kcp/library/InfoFragment$InfoItem;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1

    sget-object v0, Lcom/amazon/kcp/library/InfoFragment$WhenMappings;->$EnumSwitchMapping$0:[I

    sget-object v1, Lcom/amazon/kcp/library/InfoFragment$InfoItem;->LEGAL_NOTICES:Lcom/amazon/kcp/library/InfoFragment$InfoItem;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1

    sget-object v0, Lcom/amazon/kcp/library/InfoFragment$WhenMappings;->$EnumSwitchMapping$0:[I

    sget-object v1, Lcom/amazon/kcp/library/InfoFragment$InfoItem;->PRIVACY_POLICY:Lcom/amazon/kcp/library/InfoFragment$InfoItem;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1

    sget-object v0, Lcom/amazon/kcp/library/InfoFragment$WhenMappings;->$EnumSwitchMapping$0:[I

    sget-object v1, Lcom/amazon/kcp/library/InfoFragment$InfoItem;->COOKIES:Lcom/amazon/kcp/library/InfoFragment$InfoItem;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1

    sget-object v0, Lcom/amazon/kcp/library/InfoFragment$WhenMappings;->$EnumSwitchMapping$0:[I

    sget-object v1, Lcom/amazon/kcp/library/InfoFragment$InfoItem;->INTEREST_BASED_ADS:Lcom/amazon/kcp/library/InfoFragment$InfoItem;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1

    return-void
.end method
