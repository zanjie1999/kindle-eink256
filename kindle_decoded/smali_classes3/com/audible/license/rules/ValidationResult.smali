.class public final enum Lcom/audible/license/rules/ValidationResult;
.super Ljava/lang/Enum;
.source "ValidationResult.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/audible/license/rules/ValidationResult;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/audible/license/rules/ValidationResult;

.field public static final enum FailedDefaultExpiredRule:Lcom/audible/license/rules/ValidationResult;

.field public static final enum FailedNotAllowedUserRule:Lcom/audible/license/rules/ValidationResult;

.field public static final enum FailedWithEmptyRules:Lcom/audible/license/rules/ValidationResult;

.field public static final enum Success:Lcom/audible/license/rules/ValidationResult;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/audible/license/rules/ValidationResult;

    new-instance v1, Lcom/audible/license/rules/ValidationResult;

    const/4 v2, 0x0

    const-string v3, "Success"

    invoke-direct {v1, v3, v2}, Lcom/audible/license/rules/ValidationResult;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/audible/license/rules/ValidationResult;->Success:Lcom/audible/license/rules/ValidationResult;

    aput-object v1, v0, v2

    new-instance v1, Lcom/audible/license/rules/ValidationResult;

    const/4 v2, 0x1

    const-string v3, "FailedWithEmptyRules"

    invoke-direct {v1, v3, v2}, Lcom/audible/license/rules/ValidationResult;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/audible/license/rules/ValidationResult;->FailedWithEmptyRules:Lcom/audible/license/rules/ValidationResult;

    aput-object v1, v0, v2

    new-instance v1, Lcom/audible/license/rules/ValidationResult;

    const/4 v2, 0x2

    const-string v3, "FailedDefaultExpiredRule"

    invoke-direct {v1, v3, v2}, Lcom/audible/license/rules/ValidationResult;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/audible/license/rules/ValidationResult;->FailedDefaultExpiredRule:Lcom/audible/license/rules/ValidationResult;

    aput-object v1, v0, v2

    new-instance v1, Lcom/audible/license/rules/ValidationResult;

    const/4 v2, 0x3

    const-string v3, "FailedNotAllowedUserRule"

    invoke-direct {v1, v3, v2}, Lcom/audible/license/rules/ValidationResult;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/audible/license/rules/ValidationResult;->FailedNotAllowedUserRule:Lcom/audible/license/rules/ValidationResult;

    aput-object v1, v0, v2

    sput-object v0, Lcom/audible/license/rules/ValidationResult;->$VALUES:[Lcom/audible/license/rules/ValidationResult;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 3
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/audible/license/rules/ValidationResult;
    .locals 1

    const-class v0, Lcom/audible/license/rules/ValidationResult;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/audible/license/rules/ValidationResult;

    return-object p0
.end method

.method public static values()[Lcom/audible/license/rules/ValidationResult;
    .locals 1

    sget-object v0, Lcom/audible/license/rules/ValidationResult;->$VALUES:[Lcom/audible/license/rules/ValidationResult;

    invoke-virtual {v0}, [Lcom/audible/license/rules/ValidationResult;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/audible/license/rules/ValidationResult;

    return-object v0
.end method
