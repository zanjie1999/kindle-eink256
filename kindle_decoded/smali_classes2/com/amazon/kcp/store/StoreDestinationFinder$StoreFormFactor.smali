.class final enum Lcom/amazon/kcp/store/StoreDestinationFinder$StoreFormFactor;
.super Ljava/lang/Enum;
.source "StoreDestinationFinder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/store/StoreDestinationFinder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "StoreFormFactor"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/kcp/store/StoreDestinationFinder$StoreFormFactor;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/kcp/store/StoreDestinationFinder$StoreFormFactor;

.field public static final enum LARGE:Lcom/amazon/kcp/store/StoreDestinationFinder$StoreFormFactor;

.field public static final enum MEDIUM:Lcom/amazon/kcp/store/StoreDestinationFinder$StoreFormFactor;

.field public static final enum SMALL:Lcom/amazon/kcp/store/StoreDestinationFinder$StoreFormFactor;

.field public static final enum XLARGE:Lcom/amazon/kcp/store/StoreDestinationFinder$StoreFormFactor;

.field public static final enum XXLARGE:Lcom/amazon/kcp/store/StoreDestinationFinder$StoreFormFactor;


# instance fields
.field private maxScreenSize:F


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 29
    new-instance v0, Lcom/amazon/kcp/store/StoreDestinationFinder$StoreFormFactor;

    const/4 v1, 0x0

    const-string v2, "SMALL"

    const/high16 v3, 0x40c00000    # 6.0f

    invoke-direct {v0, v2, v1, v3}, Lcom/amazon/kcp/store/StoreDestinationFinder$StoreFormFactor;-><init>(Ljava/lang/String;IF)V

    sput-object v0, Lcom/amazon/kcp/store/StoreDestinationFinder$StoreFormFactor;->SMALL:Lcom/amazon/kcp/store/StoreDestinationFinder$StoreFormFactor;

    .line 30
    new-instance v0, Lcom/amazon/kcp/store/StoreDestinationFinder$StoreFormFactor;

    const/4 v2, 0x1

    const-string v3, "MEDIUM"

    const/high16 v4, 0x41000000    # 8.0f

    invoke-direct {v0, v3, v2, v4}, Lcom/amazon/kcp/store/StoreDestinationFinder$StoreFormFactor;-><init>(Ljava/lang/String;IF)V

    sput-object v0, Lcom/amazon/kcp/store/StoreDestinationFinder$StoreFormFactor;->MEDIUM:Lcom/amazon/kcp/store/StoreDestinationFinder$StoreFormFactor;

    .line 31
    new-instance v0, Lcom/amazon/kcp/store/StoreDestinationFinder$StoreFormFactor;

    const/4 v3, 0x2

    const-string v4, "LARGE"

    const/high16 v5, 0x41300000    # 11.0f

    invoke-direct {v0, v4, v3, v5}, Lcom/amazon/kcp/store/StoreDestinationFinder$StoreFormFactor;-><init>(Ljava/lang/String;IF)V

    sput-object v0, Lcom/amazon/kcp/store/StoreDestinationFinder$StoreFormFactor;->LARGE:Lcom/amazon/kcp/store/StoreDestinationFinder$StoreFormFactor;

    .line 32
    new-instance v0, Lcom/amazon/kcp/store/StoreDestinationFinder$StoreFormFactor;

    const/4 v4, 0x3

    const-string v5, "XLARGE"

    const v6, 0x4161c28f    # 14.11f

    invoke-direct {v0, v5, v4, v6}, Lcom/amazon/kcp/store/StoreDestinationFinder$StoreFormFactor;-><init>(Ljava/lang/String;IF)V

    sput-object v0, Lcom/amazon/kcp/store/StoreDestinationFinder$StoreFormFactor;->XLARGE:Lcom/amazon/kcp/store/StoreDestinationFinder$StoreFormFactor;

    .line 33
    new-instance v0, Lcom/amazon/kcp/store/StoreDestinationFinder$StoreFormFactor;

    const/4 v5, 0x4

    const-string v6, "XXLARGE"

    const/4 v7, 0x0

    invoke-direct {v0, v6, v5, v7}, Lcom/amazon/kcp/store/StoreDestinationFinder$StoreFormFactor;-><init>(Ljava/lang/String;IF)V

    sput-object v0, Lcom/amazon/kcp/store/StoreDestinationFinder$StoreFormFactor;->XXLARGE:Lcom/amazon/kcp/store/StoreDestinationFinder$StoreFormFactor;

    const/4 v6, 0x5

    new-array v6, v6, [Lcom/amazon/kcp/store/StoreDestinationFinder$StoreFormFactor;

    .line 28
    sget-object v7, Lcom/amazon/kcp/store/StoreDestinationFinder$StoreFormFactor;->SMALL:Lcom/amazon/kcp/store/StoreDestinationFinder$StoreFormFactor;

    aput-object v7, v6, v1

    sget-object v1, Lcom/amazon/kcp/store/StoreDestinationFinder$StoreFormFactor;->MEDIUM:Lcom/amazon/kcp/store/StoreDestinationFinder$StoreFormFactor;

    aput-object v1, v6, v2

    sget-object v1, Lcom/amazon/kcp/store/StoreDestinationFinder$StoreFormFactor;->LARGE:Lcom/amazon/kcp/store/StoreDestinationFinder$StoreFormFactor;

    aput-object v1, v6, v3

    sget-object v1, Lcom/amazon/kcp/store/StoreDestinationFinder$StoreFormFactor;->XLARGE:Lcom/amazon/kcp/store/StoreDestinationFinder$StoreFormFactor;

    aput-object v1, v6, v4

    aput-object v0, v6, v5

    sput-object v6, Lcom/amazon/kcp/store/StoreDestinationFinder$StoreFormFactor;->$VALUES:[Lcom/amazon/kcp/store/StoreDestinationFinder$StoreFormFactor;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IF)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)V"
        }
    .end annotation

    .line 37
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 38
    iput p3, p0, Lcom/amazon/kcp/store/StoreDestinationFinder$StoreFormFactor;->maxScreenSize:F

    return-void
.end method

.method public static getStoreFormFactor(F)Lcom/amazon/kcp/store/StoreDestinationFinder$StoreFormFactor;
    .locals 1

    .line 46
    sget-object v0, Lcom/amazon/kcp/store/StoreDestinationFinder$StoreFormFactor;->SMALL:Lcom/amazon/kcp/store/StoreDestinationFinder$StoreFormFactor;

    invoke-virtual {v0}, Lcom/amazon/kcp/store/StoreDestinationFinder$StoreFormFactor;->getMaxScreenSize()F

    move-result v0

    cmpg-float v0, p0, v0

    if-gez v0, :cond_0

    sget-object p0, Lcom/amazon/kcp/store/StoreDestinationFinder$StoreFormFactor;->SMALL:Lcom/amazon/kcp/store/StoreDestinationFinder$StoreFormFactor;

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/amazon/kcp/store/StoreDestinationFinder$StoreFormFactor;->MEDIUM:Lcom/amazon/kcp/store/StoreDestinationFinder$StoreFormFactor;

    .line 47
    invoke-virtual {v0}, Lcom/amazon/kcp/store/StoreDestinationFinder$StoreFormFactor;->getMaxScreenSize()F

    move-result v0

    cmpg-float v0, p0, v0

    if-gez v0, :cond_1

    sget-object p0, Lcom/amazon/kcp/store/StoreDestinationFinder$StoreFormFactor;->MEDIUM:Lcom/amazon/kcp/store/StoreDestinationFinder$StoreFormFactor;

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/amazon/kcp/store/StoreDestinationFinder$StoreFormFactor;->LARGE:Lcom/amazon/kcp/store/StoreDestinationFinder$StoreFormFactor;

    .line 48
    invoke-virtual {v0}, Lcom/amazon/kcp/store/StoreDestinationFinder$StoreFormFactor;->getMaxScreenSize()F

    move-result v0

    cmpg-float v0, p0, v0

    if-gez v0, :cond_2

    sget-object p0, Lcom/amazon/kcp/store/StoreDestinationFinder$StoreFormFactor;->LARGE:Lcom/amazon/kcp/store/StoreDestinationFinder$StoreFormFactor;

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/amazon/kcp/store/StoreDestinationFinder$StoreFormFactor;->XLARGE:Lcom/amazon/kcp/store/StoreDestinationFinder$StoreFormFactor;

    .line 49
    invoke-virtual {v0}, Lcom/amazon/kcp/store/StoreDestinationFinder$StoreFormFactor;->getMaxScreenSize()F

    move-result v0

    cmpg-float p0, p0, v0

    if-gez p0, :cond_3

    sget-object p0, Lcom/amazon/kcp/store/StoreDestinationFinder$StoreFormFactor;->XLARGE:Lcom/amazon/kcp/store/StoreDestinationFinder$StoreFormFactor;

    goto :goto_0

    :cond_3
    sget-object p0, Lcom/amazon/kcp/store/StoreDestinationFinder$StoreFormFactor;->XXLARGE:Lcom/amazon/kcp/store/StoreDestinationFinder$StoreFormFactor;

    :goto_0
    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/kcp/store/StoreDestinationFinder$StoreFormFactor;
    .locals 1

    .line 28
    const-class v0, Lcom/amazon/kcp/store/StoreDestinationFinder$StoreFormFactor;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/kcp/store/StoreDestinationFinder$StoreFormFactor;

    return-object p0
.end method

.method public static values()[Lcom/amazon/kcp/store/StoreDestinationFinder$StoreFormFactor;
    .locals 1

    .line 28
    sget-object v0, Lcom/amazon/kcp/store/StoreDestinationFinder$StoreFormFactor;->$VALUES:[Lcom/amazon/kcp/store/StoreDestinationFinder$StoreFormFactor;

    invoke-virtual {v0}, [Lcom/amazon/kcp/store/StoreDestinationFinder$StoreFormFactor;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/kcp/store/StoreDestinationFinder$StoreFormFactor;

    return-object v0
.end method


# virtual methods
.method getMaxScreenSize()F
    .locals 1

    .line 42
    iget v0, p0, Lcom/amazon/kcp/store/StoreDestinationFinder$StoreFormFactor;->maxScreenSize:F

    return v0
.end method
