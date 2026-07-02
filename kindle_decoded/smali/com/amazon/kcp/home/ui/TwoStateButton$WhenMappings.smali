.class public final synthetic Lcom/amazon/kcp/home/ui/TwoStateButton$WhenMappings;
.super Ljava/lang/Object;


# static fields
.field public static final synthetic $EnumSwitchMapping$0:[I

.field public static final synthetic $EnumSwitchMapping$1:[I

.field public static final synthetic $EnumSwitchMapping$2:[I


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 4

    invoke-static {}, Lcom/amazon/kcp/home/ui/TwoStateButton$DisplayState;->values()[Lcom/amazon/kcp/home/ui/TwoStateButton$DisplayState;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/amazon/kcp/home/ui/TwoStateButton$WhenMappings;->$EnumSwitchMapping$0:[I

    sget-object v1, Lcom/amazon/kcp/home/ui/TwoStateButton$DisplayState;->stateOne:Lcom/amazon/kcp/home/ui/TwoStateButton$DisplayState;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1

    invoke-static {}, Lcom/amazon/kcp/home/ui/TwoStateButton$DisplayState;->values()[Lcom/amazon/kcp/home/ui/TwoStateButton$DisplayState;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/amazon/kcp/home/ui/TwoStateButton$WhenMappings;->$EnumSwitchMapping$1:[I

    sget-object v1, Lcom/amazon/kcp/home/ui/TwoStateButton$DisplayState;->stateOne:Lcom/amazon/kcp/home/ui/TwoStateButton$DisplayState;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v2, v0, v1

    sget-object v0, Lcom/amazon/kcp/home/ui/TwoStateButton$WhenMappings;->$EnumSwitchMapping$1:[I

    sget-object v1, Lcom/amazon/kcp/home/ui/TwoStateButton$DisplayState;->stateTwo:Lcom/amazon/kcp/home/ui/TwoStateButton$DisplayState;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v3, 0x2

    aput v3, v0, v1

    sget-object v0, Lcom/amazon/kcp/home/ui/TwoStateButton$WhenMappings;->$EnumSwitchMapping$1:[I

    sget-object v1, Lcom/amazon/kcp/home/ui/TwoStateButton$DisplayState;->progressBar:Lcom/amazon/kcp/home/ui/TwoStateButton$DisplayState;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v3, 0x3

    aput v3, v0, v1

    invoke-static {}, Lcom/amazon/kcp/home/ui/TwoStateButton$DisplayState;->values()[Lcom/amazon/kcp/home/ui/TwoStateButton$DisplayState;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/amazon/kcp/home/ui/TwoStateButton$WhenMappings;->$EnumSwitchMapping$2:[I

    sget-object v1, Lcom/amazon/kcp/home/ui/TwoStateButton$DisplayState;->stateOne:Lcom/amazon/kcp/home/ui/TwoStateButton$DisplayState;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v2, v0, v1

    return-void
.end method
