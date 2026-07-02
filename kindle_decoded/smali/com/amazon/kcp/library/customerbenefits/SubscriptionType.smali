.class public final enum Lcom/amazon/kcp/library/customerbenefits/SubscriptionType;
.super Ljava/lang/Enum;
.source "ICustomerBenefits.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/kcp/library/customerbenefits/SubscriptionType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/kcp/library/customerbenefits/SubscriptionType;

.field public static final enum COMICS_UNLIMITED:Lcom/amazon/kcp/library/customerbenefits/SubscriptionType;

.field public static final enum KINDLE_UNLIMITED:Lcom/amazon/kcp/library/customerbenefits/SubscriptionType;

.field public static final enum PRIME:Lcom/amazon/kcp/library/customerbenefits/SubscriptionType;


# instance fields
.field private final channelKey:Ljava/lang/String;

.field private final programKey:Ljava/lang/String;

.field private final programPersistKey:Ljava/lang/String;

.field private final programStartKey:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/amazon/kcp/library/customerbenefits/SubscriptionType;

    new-instance v8, Lcom/amazon/kcp/library/customerbenefits/SubscriptionType;

    const-string v2, "KINDLE_UNLIMITED"

    const/4 v3, 0x0

    const-string v4, "KINDLE_UNLIMITED"

    const-string v5, "ALL_YOU_CAN_READ"

    const-string v6, "KindleUnlimitedProgramPersistKey"

    const-string v7, "KindleUnlimitedProgramStartKey"

    move-object v1, v8

    .line 40
    invoke-direct/range {v1 .. v7}, Lcom/amazon/kcp/library/customerbenefits/SubscriptionType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v8, Lcom/amazon/kcp/library/customerbenefits/SubscriptionType;->KINDLE_UNLIMITED:Lcom/amazon/kcp/library/customerbenefits/SubscriptionType;

    const/4 v1, 0x0

    aput-object v8, v0, v1

    new-instance v1, Lcom/amazon/kcp/library/customerbenefits/SubscriptionType;

    const-string v10, "PRIME"

    const/4 v11, 0x1

    const-string v12, "PRIME"

    const-string v13, "PRIME_READING"

    const-string v14, "PrimeProgramPersistKey"

    const-string v15, "PrimeProgramStartKey"

    move-object v9, v1

    .line 41
    invoke-direct/range {v9 .. v15}, Lcom/amazon/kcp/library/customerbenefits/SubscriptionType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v1, Lcom/amazon/kcp/library/customerbenefits/SubscriptionType;->PRIME:Lcom/amazon/kcp/library/customerbenefits/SubscriptionType;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    new-instance v1, Lcom/amazon/kcp/library/customerbenefits/SubscriptionType;

    const-string v4, "COMICS_UNLIMITED"

    const/4 v5, 0x2

    const-string v6, "COMICS_UNLIMITED"

    const-string v7, "ALL_YOU_CAN_READ"

    const-string v8, "ComicsUnlimitedProgramPersistKey"

    const-string v9, "ComicsUnlimitedProgramStartKey"

    move-object v3, v1

    .line 42
    invoke-direct/range {v3 .. v9}, Lcom/amazon/kcp/library/customerbenefits/SubscriptionType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v1, Lcom/amazon/kcp/library/customerbenefits/SubscriptionType;->COMICS_UNLIMITED:Lcom/amazon/kcp/library/customerbenefits/SubscriptionType;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sput-object v0, Lcom/amazon/kcp/library/customerbenefits/SubscriptionType;->$VALUES:[Lcom/amazon/kcp/library/customerbenefits/SubscriptionType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 36
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/amazon/kcp/library/customerbenefits/SubscriptionType;->programKey:Ljava/lang/String;

    iput-object p4, p0, Lcom/amazon/kcp/library/customerbenefits/SubscriptionType;->channelKey:Ljava/lang/String;

    iput-object p5, p0, Lcom/amazon/kcp/library/customerbenefits/SubscriptionType;->programPersistKey:Ljava/lang/String;

    iput-object p6, p0, Lcom/amazon/kcp/library/customerbenefits/SubscriptionType;->programStartKey:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/kcp/library/customerbenefits/SubscriptionType;
    .locals 1

    const-class v0, Lcom/amazon/kcp/library/customerbenefits/SubscriptionType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/kcp/library/customerbenefits/SubscriptionType;

    return-object p0
.end method

.method public static values()[Lcom/amazon/kcp/library/customerbenefits/SubscriptionType;
    .locals 1

    sget-object v0, Lcom/amazon/kcp/library/customerbenefits/SubscriptionType;->$VALUES:[Lcom/amazon/kcp/library/customerbenefits/SubscriptionType;

    invoke-virtual {v0}, [Lcom/amazon/kcp/library/customerbenefits/SubscriptionType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/kcp/library/customerbenefits/SubscriptionType;

    return-object v0
.end method


# virtual methods
.method public final getChannelKey()Ljava/lang/String;
    .locals 1

    .line 37
    iget-object v0, p0, Lcom/amazon/kcp/library/customerbenefits/SubscriptionType;->channelKey:Ljava/lang/String;

    return-object v0
.end method

.method public final getProgramKey()Ljava/lang/String;
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/amazon/kcp/library/customerbenefits/SubscriptionType;->programKey:Ljava/lang/String;

    return-object v0
.end method

.method public final getProgramPersistKey()Ljava/lang/String;
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/amazon/kcp/library/customerbenefits/SubscriptionType;->programPersistKey:Ljava/lang/String;

    return-object v0
.end method

.method public final getProgramStartKey()Ljava/lang/String;
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/amazon/kcp/library/customerbenefits/SubscriptionType;->programStartKey:Ljava/lang/String;

    return-object v0
.end method
