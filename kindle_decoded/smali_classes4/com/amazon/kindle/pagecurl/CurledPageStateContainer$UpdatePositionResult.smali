.class public final enum Lcom/amazon/kindle/pagecurl/CurledPageStateContainer$UpdatePositionResult;
.super Ljava/lang/Enum;
.source "CurledPageStateContainer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kindle/pagecurl/CurledPageStateContainer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "UpdatePositionResult"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/kindle/pagecurl/CurledPageStateContainer$UpdatePositionResult;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/kindle/pagecurl/CurledPageStateContainer$UpdatePositionResult;

.field public static final enum MERGED:Lcom/amazon/kindle/pagecurl/CurledPageStateContainer$UpdatePositionResult;

.field public static final enum NOT_MERGED:Lcom/amazon/kindle/pagecurl/CurledPageStateContainer$UpdatePositionResult;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 68
    new-instance v0, Lcom/amazon/kindle/pagecurl/CurledPageStateContainer$UpdatePositionResult;

    const/4 v1, 0x0

    const-string v2, "NOT_MERGED"

    invoke-direct {v0, v2, v1}, Lcom/amazon/kindle/pagecurl/CurledPageStateContainer$UpdatePositionResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kindle/pagecurl/CurledPageStateContainer$UpdatePositionResult;->NOT_MERGED:Lcom/amazon/kindle/pagecurl/CurledPageStateContainer$UpdatePositionResult;

    .line 69
    new-instance v0, Lcom/amazon/kindle/pagecurl/CurledPageStateContainer$UpdatePositionResult;

    const/4 v2, 0x1

    const-string v3, "MERGED"

    invoke-direct {v0, v3, v2}, Lcom/amazon/kindle/pagecurl/CurledPageStateContainer$UpdatePositionResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kindle/pagecurl/CurledPageStateContainer$UpdatePositionResult;->MERGED:Lcom/amazon/kindle/pagecurl/CurledPageStateContainer$UpdatePositionResult;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/amazon/kindle/pagecurl/CurledPageStateContainer$UpdatePositionResult;

    .line 67
    sget-object v4, Lcom/amazon/kindle/pagecurl/CurledPageStateContainer$UpdatePositionResult;->NOT_MERGED:Lcom/amazon/kindle/pagecurl/CurledPageStateContainer$UpdatePositionResult;

    aput-object v4, v3, v1

    aput-object v0, v3, v2

    sput-object v3, Lcom/amazon/kindle/pagecurl/CurledPageStateContainer$UpdatePositionResult;->$VALUES:[Lcom/amazon/kindle/pagecurl/CurledPageStateContainer$UpdatePositionResult;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 67
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/kindle/pagecurl/CurledPageStateContainer$UpdatePositionResult;
    .locals 1

    .line 67
    const-class v0, Lcom/amazon/kindle/pagecurl/CurledPageStateContainer$UpdatePositionResult;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/kindle/pagecurl/CurledPageStateContainer$UpdatePositionResult;

    return-object p0
.end method

.method public static values()[Lcom/amazon/kindle/pagecurl/CurledPageStateContainer$UpdatePositionResult;
    .locals 1

    .line 67
    sget-object v0, Lcom/amazon/kindle/pagecurl/CurledPageStateContainer$UpdatePositionResult;->$VALUES:[Lcom/amazon/kindle/pagecurl/CurledPageStateContainer$UpdatePositionResult;

    invoke-virtual {v0}, [Lcom/amazon/kindle/pagecurl/CurledPageStateContainer$UpdatePositionResult;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/kindle/pagecurl/CurledPageStateContainer$UpdatePositionResult;

    return-object v0
.end method
