.class public final enum Lcom/amazon/ea/purchase/model/FailRecord$ActionType;
.super Ljava/lang/Enum;
.source "FailRecord.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/ea/purchase/model/FailRecord;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ActionType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/ea/purchase/model/FailRecord$ActionType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/ea/purchase/model/FailRecord$ActionType;

.field public static final enum BORROW:Lcom/amazon/ea/purchase/model/FailRecord$ActionType;

.field public static final enum PURCHASE:Lcom/amazon/ea/purchase/model/FailRecord$ActionType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 22
    new-instance v0, Lcom/amazon/ea/purchase/model/FailRecord$ActionType;

    const/4 v1, 0x0

    const-string v2, "PURCHASE"

    invoke-direct {v0, v2, v1}, Lcom/amazon/ea/purchase/model/FailRecord$ActionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/ea/purchase/model/FailRecord$ActionType;->PURCHASE:Lcom/amazon/ea/purchase/model/FailRecord$ActionType;

    .line 23
    new-instance v0, Lcom/amazon/ea/purchase/model/FailRecord$ActionType;

    const/4 v2, 0x1

    const-string v3, "BORROW"

    invoke-direct {v0, v3, v2}, Lcom/amazon/ea/purchase/model/FailRecord$ActionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/ea/purchase/model/FailRecord$ActionType;->BORROW:Lcom/amazon/ea/purchase/model/FailRecord$ActionType;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/amazon/ea/purchase/model/FailRecord$ActionType;

    .line 21
    sget-object v4, Lcom/amazon/ea/purchase/model/FailRecord$ActionType;->PURCHASE:Lcom/amazon/ea/purchase/model/FailRecord$ActionType;

    aput-object v4, v3, v1

    aput-object v0, v3, v2

    sput-object v3, Lcom/amazon/ea/purchase/model/FailRecord$ActionType;->$VALUES:[Lcom/amazon/ea/purchase/model/FailRecord$ActionType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 21
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/ea/purchase/model/FailRecord$ActionType;
    .locals 1

    .line 21
    const-class v0, Lcom/amazon/ea/purchase/model/FailRecord$ActionType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/ea/purchase/model/FailRecord$ActionType;

    return-object p0
.end method

.method public static values()[Lcom/amazon/ea/purchase/model/FailRecord$ActionType;
    .locals 1

    .line 21
    sget-object v0, Lcom/amazon/ea/purchase/model/FailRecord$ActionType;->$VALUES:[Lcom/amazon/ea/purchase/model/FailRecord$ActionType;

    invoke-virtual {v0}, [Lcom/amazon/ea/purchase/model/FailRecord$ActionType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/ea/purchase/model/FailRecord$ActionType;

    return-object v0
.end method
