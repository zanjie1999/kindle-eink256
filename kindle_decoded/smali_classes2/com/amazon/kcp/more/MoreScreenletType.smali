.class abstract enum Lcom/amazon/kcp/more/MoreScreenletType;
.super Ljava/lang/Enum;
.source "MoreScreenletType.java"

# interfaces
.implements Lcom/amazon/kindle/krx/ui/ScreenletType;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/kcp/more/MoreScreenletType;",
        ">;",
        "Lcom/amazon/kindle/krx/ui/ScreenletType;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/kcp/more/MoreScreenletType;

.field public static final enum INSTANCE:Lcom/amazon/kcp/more/MoreScreenletType;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 12
    new-instance v0, Lcom/amazon/kcp/more/MoreScreenletType$1;

    const/4 v1, 0x0

    const-string v2, "INSTANCE"

    invoke-direct {v0, v2, v1}, Lcom/amazon/kcp/more/MoreScreenletType$1;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kcp/more/MoreScreenletType;->INSTANCE:Lcom/amazon/kcp/more/MoreScreenletType;

    const/4 v2, 0x1

    new-array v2, v2, [Lcom/amazon/kcp/more/MoreScreenletType;

    aput-object v0, v2, v1

    .line 11
    sput-object v2, Lcom/amazon/kcp/more/MoreScreenletType;->$VALUES:[Lcom/amazon/kcp/more/MoreScreenletType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 11
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILcom/amazon/kcp/more/MoreScreenletType$1;)V
    .locals 0

    .line 11
    invoke-direct {p0, p1, p2}, Lcom/amazon/kcp/more/MoreScreenletType;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/kcp/more/MoreScreenletType;
    .locals 1

    .line 11
    const-class v0, Lcom/amazon/kcp/more/MoreScreenletType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/kcp/more/MoreScreenletType;

    return-object p0
.end method

.method public static values()[Lcom/amazon/kcp/more/MoreScreenletType;
    .locals 1

    .line 11
    sget-object v0, Lcom/amazon/kcp/more/MoreScreenletType;->$VALUES:[Lcom/amazon/kcp/more/MoreScreenletType;

    invoke-virtual {v0}, [Lcom/amazon/kcp/more/MoreScreenletType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/kcp/more/MoreScreenletType;

    return-object v0
.end method
