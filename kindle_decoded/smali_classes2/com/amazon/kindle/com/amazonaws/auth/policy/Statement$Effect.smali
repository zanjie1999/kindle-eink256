.class public final enum Lcom/amazon/kindle/com/amazonaws/auth/policy/Statement$Effect;
.super Ljava/lang/Enum;
.source "Statement.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kindle/com/amazonaws/auth/policy/Statement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Effect"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/kindle/com/amazonaws/auth/policy/Statement$Effect;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/kindle/com/amazonaws/auth/policy/Statement$Effect;

.field public static final enum Allow:Lcom/amazon/kindle/com/amazonaws/auth/policy/Statement$Effect;

.field public static final enum Deny:Lcom/amazon/kindle/com/amazonaws/auth/policy/Statement$Effect;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 70
    new-instance v0, Lcom/amazon/kindle/com/amazonaws/auth/policy/Statement$Effect;

    const/4 v1, 0x0

    const-string v2, "Allow"

    invoke-direct {v0, v2, v1}, Lcom/amazon/kindle/com/amazonaws/auth/policy/Statement$Effect;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kindle/com/amazonaws/auth/policy/Statement$Effect;->Allow:Lcom/amazon/kindle/com/amazonaws/auth/policy/Statement$Effect;

    .line 73
    new-instance v0, Lcom/amazon/kindle/com/amazonaws/auth/policy/Statement$Effect;

    const/4 v2, 0x1

    const-string v3, "Deny"

    invoke-direct {v0, v3, v2}, Lcom/amazon/kindle/com/amazonaws/auth/policy/Statement$Effect;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kindle/com/amazonaws/auth/policy/Statement$Effect;->Deny:Lcom/amazon/kindle/com/amazonaws/auth/policy/Statement$Effect;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/amazon/kindle/com/amazonaws/auth/policy/Statement$Effect;

    .line 67
    sget-object v4, Lcom/amazon/kindle/com/amazonaws/auth/policy/Statement$Effect;->Allow:Lcom/amazon/kindle/com/amazonaws/auth/policy/Statement$Effect;

    aput-object v4, v3, v1

    aput-object v0, v3, v2

    sput-object v3, Lcom/amazon/kindle/com/amazonaws/auth/policy/Statement$Effect;->$VALUES:[Lcom/amazon/kindle/com/amazonaws/auth/policy/Statement$Effect;

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

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/kindle/com/amazonaws/auth/policy/Statement$Effect;
    .locals 1

    .line 67
    const-class v0, Lcom/amazon/kindle/com/amazonaws/auth/policy/Statement$Effect;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/kindle/com/amazonaws/auth/policy/Statement$Effect;

    return-object p0
.end method

.method public static values()[Lcom/amazon/kindle/com/amazonaws/auth/policy/Statement$Effect;
    .locals 1

    .line 67
    sget-object v0, Lcom/amazon/kindle/com/amazonaws/auth/policy/Statement$Effect;->$VALUES:[Lcom/amazon/kindle/com/amazonaws/auth/policy/Statement$Effect;

    invoke-virtual {v0}, [Lcom/amazon/kindle/com/amazonaws/auth/policy/Statement$Effect;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/kindle/com/amazonaws/auth/policy/Statement$Effect;

    return-object v0
.end method
