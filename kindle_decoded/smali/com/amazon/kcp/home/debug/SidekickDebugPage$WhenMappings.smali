.class public final synthetic Lcom/amazon/kcp/home/debug/SidekickDebugPage$WhenMappings;
.super Ljava/lang/Object;


# static fields
.field public static final synthetic $EnumSwitchMapping$0:[I


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 3

    invoke-static {}, Lcom/amazon/kcp/home/debug/SidekickEndpoint;->values()[Lcom/amazon/kcp/home/debug/SidekickEndpoint;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/amazon/kcp/home/debug/SidekickDebugPage$WhenMappings;->$EnumSwitchMapping$0:[I

    sget-object v1, Lcom/amazon/kcp/home/debug/SidekickEndpoint;->PROD:Lcom/amazon/kcp/home/debug/SidekickEndpoint;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1

    sget-object v0, Lcom/amazon/kcp/home/debug/SidekickDebugPage$WhenMappings;->$EnumSwitchMapping$0:[I

    sget-object v1, Lcom/amazon/kcp/home/debug/SidekickEndpoint;->PREPROD:Lcom/amazon/kcp/home/debug/SidekickEndpoint;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1

    sget-object v0, Lcom/amazon/kcp/home/debug/SidekickDebugPage$WhenMappings;->$EnumSwitchMapping$0:[I

    sget-object v1, Lcom/amazon/kcp/home/debug/SidekickEndpoint;->FILE:Lcom/amazon/kcp/home/debug/SidekickEndpoint;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1

    sget-object v0, Lcom/amazon/kcp/home/debug/SidekickDebugPage$WhenMappings;->$EnumSwitchMapping$0:[I

    sget-object v1, Lcom/amazon/kcp/home/debug/SidekickEndpoint;->CUSTOM:Lcom/amazon/kcp/home/debug/SidekickEndpoint;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1

    return-void
.end method
