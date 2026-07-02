.class public final enum Lcom/amazon/kindle/com/amazonaws/auth/policy/conditions/ArnCondition$ArnComparisonType;
.super Ljava/lang/Enum;
.source "ArnCondition.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kindle/com/amazonaws/auth/policy/conditions/ArnCondition;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ArnComparisonType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/kindle/com/amazonaws/auth/policy/conditions/ArnCondition$ArnComparisonType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/kindle/com/amazonaws/auth/policy/conditions/ArnCondition$ArnComparisonType;

.field public static final enum ArnEquals:Lcom/amazon/kindle/com/amazonaws/auth/policy/conditions/ArnCondition$ArnComparisonType;

.field public static final enum ArnLike:Lcom/amazon/kindle/com/amazonaws/auth/policy/conditions/ArnCondition$ArnComparisonType;

.field public static final enum ArnNotEquals:Lcom/amazon/kindle/com/amazonaws/auth/policy/conditions/ArnCondition$ArnComparisonType;

.field public static final enum ArnNotLike:Lcom/amazon/kindle/com/amazonaws/auth/policy/conditions/ArnCondition$ArnComparisonType;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 55
    new-instance v0, Lcom/amazon/kindle/com/amazonaws/auth/policy/conditions/ArnCondition$ArnComparisonType;

    const/4 v1, 0x0

    const-string v2, "ArnEquals"

    invoke-direct {v0, v2, v1}, Lcom/amazon/kindle/com/amazonaws/auth/policy/conditions/ArnCondition$ArnComparisonType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kindle/com/amazonaws/auth/policy/conditions/ArnCondition$ArnComparisonType;->ArnEquals:Lcom/amazon/kindle/com/amazonaws/auth/policy/conditions/ArnCondition$ArnComparisonType;

    .line 63
    new-instance v0, Lcom/amazon/kindle/com/amazonaws/auth/policy/conditions/ArnCondition$ArnComparisonType;

    const/4 v2, 0x1

    const-string v3, "ArnLike"

    invoke-direct {v0, v3, v2}, Lcom/amazon/kindle/com/amazonaws/auth/policy/conditions/ArnCondition$ArnComparisonType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kindle/com/amazonaws/auth/policy/conditions/ArnCondition$ArnComparisonType;->ArnLike:Lcom/amazon/kindle/com/amazonaws/auth/policy/conditions/ArnCondition$ArnComparisonType;

    .line 66
    new-instance v0, Lcom/amazon/kindle/com/amazonaws/auth/policy/conditions/ArnCondition$ArnComparisonType;

    const/4 v3, 0x2

    const-string v4, "ArnNotEquals"

    invoke-direct {v0, v4, v3}, Lcom/amazon/kindle/com/amazonaws/auth/policy/conditions/ArnCondition$ArnComparisonType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kindle/com/amazonaws/auth/policy/conditions/ArnCondition$ArnComparisonType;->ArnNotEquals:Lcom/amazon/kindle/com/amazonaws/auth/policy/conditions/ArnCondition$ArnComparisonType;

    .line 69
    new-instance v0, Lcom/amazon/kindle/com/amazonaws/auth/policy/conditions/ArnCondition$ArnComparisonType;

    const/4 v4, 0x3

    const-string v5, "ArnNotLike"

    invoke-direct {v0, v5, v4}, Lcom/amazon/kindle/com/amazonaws/auth/policy/conditions/ArnCondition$ArnComparisonType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kindle/com/amazonaws/auth/policy/conditions/ArnCondition$ArnComparisonType;->ArnNotLike:Lcom/amazon/kindle/com/amazonaws/auth/policy/conditions/ArnCondition$ArnComparisonType;

    const/4 v5, 0x4

    new-array v5, v5, [Lcom/amazon/kindle/com/amazonaws/auth/policy/conditions/ArnCondition$ArnComparisonType;

    .line 53
    sget-object v6, Lcom/amazon/kindle/com/amazonaws/auth/policy/conditions/ArnCondition$ArnComparisonType;->ArnEquals:Lcom/amazon/kindle/com/amazonaws/auth/policy/conditions/ArnCondition$ArnComparisonType;

    aput-object v6, v5, v1

    sget-object v1, Lcom/amazon/kindle/com/amazonaws/auth/policy/conditions/ArnCondition$ArnComparisonType;->ArnLike:Lcom/amazon/kindle/com/amazonaws/auth/policy/conditions/ArnCondition$ArnComparisonType;

    aput-object v1, v5, v2

    sget-object v1, Lcom/amazon/kindle/com/amazonaws/auth/policy/conditions/ArnCondition$ArnComparisonType;->ArnNotEquals:Lcom/amazon/kindle/com/amazonaws/auth/policy/conditions/ArnCondition$ArnComparisonType;

    aput-object v1, v5, v3

    aput-object v0, v5, v4

    sput-object v5, Lcom/amazon/kindle/com/amazonaws/auth/policy/conditions/ArnCondition$ArnComparisonType;->$VALUES:[Lcom/amazon/kindle/com/amazonaws/auth/policy/conditions/ArnCondition$ArnComparisonType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 53
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/kindle/com/amazonaws/auth/policy/conditions/ArnCondition$ArnComparisonType;
    .locals 1

    .line 53
    const-class v0, Lcom/amazon/kindle/com/amazonaws/auth/policy/conditions/ArnCondition$ArnComparisonType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/kindle/com/amazonaws/auth/policy/conditions/ArnCondition$ArnComparisonType;

    return-object p0
.end method

.method public static values()[Lcom/amazon/kindle/com/amazonaws/auth/policy/conditions/ArnCondition$ArnComparisonType;
    .locals 1

    .line 53
    sget-object v0, Lcom/amazon/kindle/com/amazonaws/auth/policy/conditions/ArnCondition$ArnComparisonType;->$VALUES:[Lcom/amazon/kindle/com/amazonaws/auth/policy/conditions/ArnCondition$ArnComparisonType;

    invoke-virtual {v0}, [Lcom/amazon/kindle/com/amazonaws/auth/policy/conditions/ArnCondition$ArnComparisonType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/kindle/com/amazonaws/auth/policy/conditions/ArnCondition$ArnComparisonType;

    return-object v0
.end method
