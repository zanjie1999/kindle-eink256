.class public final synthetic Lcom/amazon/kcp/store/StoreReturnBookUrlBuilder$WhenMappings;
.super Ljava/lang/Object;


# static fields
.field public static final synthetic $EnumSwitchMapping$0:[I


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 3

    invoke-static {}, Lcom/amazon/kindle/krx/glide/KRXAsinOffer$ActionProgram;->values()[Lcom/amazon/kindle/krx/glide/KRXAsinOffer$ActionProgram;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/amazon/kcp/store/StoreReturnBookUrlBuilder$WhenMappings;->$EnumSwitchMapping$0:[I

    sget-object v1, Lcom/amazon/kindle/krx/glide/KRXAsinOffer$ActionProgram;->KINDLE_UNLIMITED:Lcom/amazon/kindle/krx/glide/KRXAsinOffer$ActionProgram;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1

    sget-object v0, Lcom/amazon/kcp/store/StoreReturnBookUrlBuilder$WhenMappings;->$EnumSwitchMapping$0:[I

    sget-object v1, Lcom/amazon/kindle/krx/glide/KRXAsinOffer$ActionProgram;->PRIME_READING:Lcom/amazon/kindle/krx/glide/KRXAsinOffer$ActionProgram;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1

    sget-object v0, Lcom/amazon/kcp/store/StoreReturnBookUrlBuilder$WhenMappings;->$EnumSwitchMapping$0:[I

    sget-object v1, Lcom/amazon/kindle/krx/glide/KRXAsinOffer$ActionProgram;->COMICS_UNLIMITED:Lcom/amazon/kindle/krx/glide/KRXAsinOffer$ActionProgram;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1

    return-void
.end method
