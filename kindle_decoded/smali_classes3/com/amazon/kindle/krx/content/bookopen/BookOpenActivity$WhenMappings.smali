.class public final synthetic Lcom/amazon/kindle/krx/content/bookopen/BookOpenActivity$WhenMappings;
.super Ljava/lang/Object;


# static fields
.field public static final synthetic $EnumSwitchMapping$0:[I


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 3

    invoke-static {}, Lcom/amazon/kcp/debug/OneTapBookOpenDebugUtils$ProgressInterpolationType;->values()[Lcom/amazon/kcp/debug/OneTapBookOpenDebugUtils$ProgressInterpolationType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/amazon/kindle/krx/content/bookopen/BookOpenActivity$WhenMappings;->$EnumSwitchMapping$0:[I

    sget-object v1, Lcom/amazon/kcp/debug/OneTapBookOpenDebugUtils$ProgressInterpolationType;->LINEAR:Lcom/amazon/kcp/debug/OneTapBookOpenDebugUtils$ProgressInterpolationType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1

    sget-object v0, Lcom/amazon/kindle/krx/content/bookopen/BookOpenActivity$WhenMappings;->$EnumSwitchMapping$0:[I

    sget-object v1, Lcom/amazon/kcp/debug/OneTapBookOpenDebugUtils$ProgressInterpolationType;->FAST_OUT_SLOW_IN:Lcom/amazon/kcp/debug/OneTapBookOpenDebugUtils$ProgressInterpolationType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1

    sget-object v0, Lcom/amazon/kindle/krx/content/bookopen/BookOpenActivity$WhenMappings;->$EnumSwitchMapping$0:[I

    sget-object v1, Lcom/amazon/kcp/debug/OneTapBookOpenDebugUtils$ProgressInterpolationType;->ACCELERATE_DECELERATE:Lcom/amazon/kcp/debug/OneTapBookOpenDebugUtils$ProgressInterpolationType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1

    return-void
.end method
