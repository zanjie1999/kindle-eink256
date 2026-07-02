.class final enum Lcom/amazon/kindle/cms/api/UpdateImpl$StrategyID;
.super Ljava/lang/Enum;
.source "UpdateImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kindle/cms/api/UpdateImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "StrategyID"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/kindle/cms/api/UpdateImpl$StrategyID;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/kindle/cms/api/UpdateImpl$StrategyID;

.field public static final enum Bulk:Lcom/amazon/kindle/cms/api/UpdateImpl$StrategyID;

.field public static final enum Simple:Lcom/amazon/kindle/cms/api/UpdateImpl$StrategyID;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 21
    new-instance v0, Lcom/amazon/kindle/cms/api/UpdateImpl$StrategyID;

    const/4 v1, 0x0

    const-string v2, "Simple"

    invoke-direct {v0, v2, v1}, Lcom/amazon/kindle/cms/api/UpdateImpl$StrategyID;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kindle/cms/api/UpdateImpl$StrategyID;->Simple:Lcom/amazon/kindle/cms/api/UpdateImpl$StrategyID;

    .line 22
    new-instance v0, Lcom/amazon/kindle/cms/api/UpdateImpl$StrategyID;

    const/4 v2, 0x1

    const-string v3, "Bulk"

    invoke-direct {v0, v3, v2}, Lcom/amazon/kindle/cms/api/UpdateImpl$StrategyID;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kindle/cms/api/UpdateImpl$StrategyID;->Bulk:Lcom/amazon/kindle/cms/api/UpdateImpl$StrategyID;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/amazon/kindle/cms/api/UpdateImpl$StrategyID;

    .line 19
    sget-object v4, Lcom/amazon/kindle/cms/api/UpdateImpl$StrategyID;->Simple:Lcom/amazon/kindle/cms/api/UpdateImpl$StrategyID;

    aput-object v4, v3, v1

    aput-object v0, v3, v2

    sput-object v3, Lcom/amazon/kindle/cms/api/UpdateImpl$StrategyID;->$VALUES:[Lcom/amazon/kindle/cms/api/UpdateImpl$StrategyID;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 19
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/kindle/cms/api/UpdateImpl$StrategyID;
    .locals 1

    .line 19
    const-class v0, Lcom/amazon/kindle/cms/api/UpdateImpl$StrategyID;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/kindle/cms/api/UpdateImpl$StrategyID;

    return-object p0
.end method

.method public static values()[Lcom/amazon/kindle/cms/api/UpdateImpl$StrategyID;
    .locals 1

    .line 19
    sget-object v0, Lcom/amazon/kindle/cms/api/UpdateImpl$StrategyID;->$VALUES:[Lcom/amazon/kindle/cms/api/UpdateImpl$StrategyID;

    invoke-virtual {v0}, [Lcom/amazon/kindle/cms/api/UpdateImpl$StrategyID;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/kindle/cms/api/UpdateImpl$StrategyID;

    return-object v0
.end method
