.class public final enum Lcom/amazon/kindle/cms/api/PeriodicalItem$UserStatusFlag;
.super Ljava/lang/Enum;
.source "PeriodicalItem.java"

# interfaces
.implements Lcom/amazon/kindle/cms/api/AbstractItem$Valuable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kindle/cms/api/PeriodicalItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "UserStatusFlag"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/kindle/cms/api/PeriodicalItem$UserStatusFlag;",
        ">;",
        "Lcom/amazon/kindle/cms/api/AbstractItem$Valuable;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/kindle/cms/api/PeriodicalItem$UserStatusFlag;

.field public static final enum New:Lcom/amazon/kindle/cms/api/PeriodicalItem$UserStatusFlag;


# instance fields
.field private final m_value:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 64
    new-instance v0, Lcom/amazon/kindle/cms/api/PeriodicalItem$UserStatusFlag;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const-string v3, "New"

    invoke-direct {v0, v3, v2, v1}, Lcom/amazon/kindle/cms/api/PeriodicalItem$UserStatusFlag;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/amazon/kindle/cms/api/PeriodicalItem$UserStatusFlag;->New:Lcom/amazon/kindle/cms/api/PeriodicalItem$UserStatusFlag;

    new-array v1, v1, [Lcom/amazon/kindle/cms/api/PeriodicalItem$UserStatusFlag;

    aput-object v0, v1, v2

    .line 61
    sput-object v1, Lcom/amazon/kindle/cms/api/PeriodicalItem$UserStatusFlag;->$VALUES:[Lcom/amazon/kindle/cms/api/PeriodicalItem$UserStatusFlag;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 73
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 74
    iput p3, p0, Lcom/amazon/kindle/cms/api/PeriodicalItem$UserStatusFlag;->m_value:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/kindle/cms/api/PeriodicalItem$UserStatusFlag;
    .locals 1

    .line 61
    const-class v0, Lcom/amazon/kindle/cms/api/PeriodicalItem$UserStatusFlag;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/kindle/cms/api/PeriodicalItem$UserStatusFlag;

    return-object p0
.end method

.method public static values()[Lcom/amazon/kindle/cms/api/PeriodicalItem$UserStatusFlag;
    .locals 1

    .line 61
    sget-object v0, Lcom/amazon/kindle/cms/api/PeriodicalItem$UserStatusFlag;->$VALUES:[Lcom/amazon/kindle/cms/api/PeriodicalItem$UserStatusFlag;

    invoke-virtual {v0}, [Lcom/amazon/kindle/cms/api/PeriodicalItem$UserStatusFlag;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/kindle/cms/api/PeriodicalItem$UserStatusFlag;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    .line 69
    iget v0, p0, Lcom/amazon/kindle/cms/api/PeriodicalItem$UserStatusFlag;->m_value:I

    return v0
.end method
