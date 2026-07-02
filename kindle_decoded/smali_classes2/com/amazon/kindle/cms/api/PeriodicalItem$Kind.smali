.class public final enum Lcom/amazon/kindle/cms/api/PeriodicalItem$Kind;
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
    name = "Kind"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/kindle/cms/api/PeriodicalItem$Kind;",
        ">;",
        "Lcom/amazon/kindle/cms/api/AbstractItem$Valuable;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/kindle/cms/api/PeriodicalItem$Kind;

.field public static final enum Magazine:Lcom/amazon/kindle/cms/api/PeriodicalItem$Kind;

.field public static final enum Newspaper:Lcom/amazon/kindle/cms/api/PeriodicalItem$Kind;


# instance fields
.field private final m_value:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 42
    new-instance v0, Lcom/amazon/kindle/cms/api/PeriodicalItem$Kind;

    const/4 v1, 0x0

    const-string v2, "Newspaper"

    invoke-direct {v0, v2, v1, v1}, Lcom/amazon/kindle/cms/api/PeriodicalItem$Kind;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/amazon/kindle/cms/api/PeriodicalItem$Kind;->Newspaper:Lcom/amazon/kindle/cms/api/PeriodicalItem$Kind;

    .line 44
    new-instance v0, Lcom/amazon/kindle/cms/api/PeriodicalItem$Kind;

    const/4 v2, 0x1

    const-string v3, "Magazine"

    invoke-direct {v0, v3, v2, v2}, Lcom/amazon/kindle/cms/api/PeriodicalItem$Kind;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/amazon/kindle/cms/api/PeriodicalItem$Kind;->Magazine:Lcom/amazon/kindle/cms/api/PeriodicalItem$Kind;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/amazon/kindle/cms/api/PeriodicalItem$Kind;

    .line 39
    sget-object v4, Lcom/amazon/kindle/cms/api/PeriodicalItem$Kind;->Newspaper:Lcom/amazon/kindle/cms/api/PeriodicalItem$Kind;

    aput-object v4, v3, v1

    aput-object v0, v3, v2

    sput-object v3, Lcom/amazon/kindle/cms/api/PeriodicalItem$Kind;->$VALUES:[Lcom/amazon/kindle/cms/api/PeriodicalItem$Kind;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 47
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 48
    iput p3, p0, Lcom/amazon/kindle/cms/api/PeriodicalItem$Kind;->m_value:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/kindle/cms/api/PeriodicalItem$Kind;
    .locals 1

    .line 39
    const-class v0, Lcom/amazon/kindle/cms/api/PeriodicalItem$Kind;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/kindle/cms/api/PeriodicalItem$Kind;

    return-object p0
.end method

.method public static values()[Lcom/amazon/kindle/cms/api/PeriodicalItem$Kind;
    .locals 1

    .line 39
    sget-object v0, Lcom/amazon/kindle/cms/api/PeriodicalItem$Kind;->$VALUES:[Lcom/amazon/kindle/cms/api/PeriodicalItem$Kind;

    invoke-virtual {v0}, [Lcom/amazon/kindle/cms/api/PeriodicalItem$Kind;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/kindle/cms/api/PeriodicalItem$Kind;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    .line 54
    iget v0, p0, Lcom/amazon/kindle/cms/api/PeriodicalItem$Kind;->m_value:I

    return v0
.end method
