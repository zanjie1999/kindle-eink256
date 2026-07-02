.class public final enum Lcom/amazon/kindle/cms/api/PeriodicalItem$GlobalFlag;
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
    name = "GlobalFlag"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/kindle/cms/api/PeriodicalItem$GlobalFlag;",
        ">;",
        "Lcom/amazon/kindle/cms/api/AbstractItem$Valuable;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/kindle/cms/api/PeriodicalItem$GlobalFlag;

.field public static final enum Kept:Lcom/amazon/kindle/cms/api/PeriodicalItem$GlobalFlag;


# instance fields
.field private final m_value:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 22
    new-instance v0, Lcom/amazon/kindle/cms/api/PeriodicalItem$GlobalFlag;

    const/4 v1, 0x0

    const-string v2, "Kept"

    const/4 v3, 0x2

    invoke-direct {v0, v2, v1, v3}, Lcom/amazon/kindle/cms/api/PeriodicalItem$GlobalFlag;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/amazon/kindle/cms/api/PeriodicalItem$GlobalFlag;->Kept:Lcom/amazon/kindle/cms/api/PeriodicalItem$GlobalFlag;

    const/4 v2, 0x1

    new-array v2, v2, [Lcom/amazon/kindle/cms/api/PeriodicalItem$GlobalFlag;

    aput-object v0, v2, v1

    .line 19
    sput-object v2, Lcom/amazon/kindle/cms/api/PeriodicalItem$GlobalFlag;->$VALUES:[Lcom/amazon/kindle/cms/api/PeriodicalItem$GlobalFlag;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 31
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 32
    iput p3, p0, Lcom/amazon/kindle/cms/api/PeriodicalItem$GlobalFlag;->m_value:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/kindle/cms/api/PeriodicalItem$GlobalFlag;
    .locals 1

    .line 19
    const-class v0, Lcom/amazon/kindle/cms/api/PeriodicalItem$GlobalFlag;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/kindle/cms/api/PeriodicalItem$GlobalFlag;

    return-object p0
.end method

.method public static values()[Lcom/amazon/kindle/cms/api/PeriodicalItem$GlobalFlag;
    .locals 1

    .line 19
    sget-object v0, Lcom/amazon/kindle/cms/api/PeriodicalItem$GlobalFlag;->$VALUES:[Lcom/amazon/kindle/cms/api/PeriodicalItem$GlobalFlag;

    invoke-virtual {v0}, [Lcom/amazon/kindle/cms/api/PeriodicalItem$GlobalFlag;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/kindle/cms/api/PeriodicalItem$GlobalFlag;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    .line 27
    iget v0, p0, Lcom/amazon/kindle/cms/api/PeriodicalItem$GlobalFlag;->m_value:I

    return v0
.end method
