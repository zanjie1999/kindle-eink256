.class public final enum Lcom/amazon/kindle/cms/api/Item$ItemFlag;
.super Ljava/lang/Enum;
.source "Item.java"

# interfaces
.implements Lcom/amazon/kindle/cms/api/AbstractItem$Valuable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kindle/cms/api/Item;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ItemFlag"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/kindle/cms/api/Item$ItemFlag;",
        ">;",
        "Lcom/amazon/kindle/cms/api/AbstractItem$Valuable;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/kindle/cms/api/Item$ItemFlag;

.field public static final enum SingleInstance:Lcom/amazon/kindle/cms/api/Item$ItemFlag;

.field public static final enum Sippable:Lcom/amazon/kindle/cms/api/Item$ItemFlag;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# instance fields
.field private final m_value:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 26
    new-instance v0, Lcom/amazon/kindle/cms/api/Item$ItemFlag;

    const/4 v1, 0x0

    const/4 v2, 0x1

    const-string v3, "Sippable"

    invoke-direct {v0, v3, v1, v2}, Lcom/amazon/kindle/cms/api/Item$ItemFlag;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/amazon/kindle/cms/api/Item$ItemFlag;->Sippable:Lcom/amazon/kindle/cms/api/Item$ItemFlag;

    .line 28
    new-instance v0, Lcom/amazon/kindle/cms/api/Item$ItemFlag;

    const/4 v3, 0x2

    const-string v4, "SingleInstance"

    invoke-direct {v0, v4, v2, v3}, Lcom/amazon/kindle/cms/api/Item$ItemFlag;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/amazon/kindle/cms/api/Item$ItemFlag;->SingleInstance:Lcom/amazon/kindle/cms/api/Item$ItemFlag;

    new-array v3, v3, [Lcom/amazon/kindle/cms/api/Item$ItemFlag;

    .line 21
    sget-object v4, Lcom/amazon/kindle/cms/api/Item$ItemFlag;->Sippable:Lcom/amazon/kindle/cms/api/Item$ItemFlag;

    aput-object v4, v3, v1

    aput-object v0, v3, v2

    sput-object v3, Lcom/amazon/kindle/cms/api/Item$ItemFlag;->$VALUES:[Lcom/amazon/kindle/cms/api/Item$ItemFlag;

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
    iput p3, p0, Lcom/amazon/kindle/cms/api/Item$ItemFlag;->m_value:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/kindle/cms/api/Item$ItemFlag;
    .locals 1

    .line 21
    const-class v0, Lcom/amazon/kindle/cms/api/Item$ItemFlag;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/kindle/cms/api/Item$ItemFlag;

    return-object p0
.end method

.method public static values()[Lcom/amazon/kindle/cms/api/Item$ItemFlag;
    .locals 1

    .line 21
    sget-object v0, Lcom/amazon/kindle/cms/api/Item$ItemFlag;->$VALUES:[Lcom/amazon/kindle/cms/api/Item$ItemFlag;

    invoke-virtual {v0}, [Lcom/amazon/kindle/cms/api/Item$ItemFlag;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/kindle/cms/api/Item$ItemFlag;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    .line 38
    iget v0, p0, Lcom/amazon/kindle/cms/api/Item$ItemFlag;->m_value:I

    return v0
.end method
