.class public final Lcom/amazon/identity/auth/device/api/MAPError$ActorError;
.super Lcom/amazon/identity/auth/device/api/MAPError;
.source "DCP"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/identity/auth/device/api/MAPError;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ActorError"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/identity/auth/device/api/MAPError$ActorError$ActorErrorEnum;
    }
.end annotation


# static fields
.field public static final ACTOR_ENROLLMENT_FAILED:Lcom/amazon/identity/auth/device/api/MAPError$ActorError;
    .annotation build Lcom/amazon/fireos/sdk/annotations/FireOsSdk;
    .end annotation
.end field

.field public static final ACTOR_NOT_ASSOCIATED:Lcom/amazon/identity/auth/device/api/MAPError$ActorError;
    .annotation build Lcom/amazon/fireos/sdk/annotations/FireOsSdk;
    .end annotation
.end field

.field public static final ACTOR_SIGNUP_FAILED:Lcom/amazon/identity/auth/device/api/MAPError$ActorError;
    .annotation build Lcom/amazon/fireos/sdk/annotations/FireOsSdk;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 656
    new-instance v0, Lcom/amazon/identity/auth/device/api/MAPError$ActorError;

    sget-object v1, Lcom/amazon/identity/auth/device/api/MAPError$ActorError$ActorErrorEnum;->ACTOR_NOT_ASSOCIATED:Lcom/amazon/identity/auth/device/api/MAPError$ActorError$ActorErrorEnum;

    invoke-direct {v0, v1}, Lcom/amazon/identity/auth/device/api/MAPError$ActorError;-><init>(Lcom/amazon/identity/auth/device/api/MAPError$ActorError$ActorErrorEnum;)V

    sput-object v0, Lcom/amazon/identity/auth/device/api/MAPError$ActorError;->ACTOR_NOT_ASSOCIATED:Lcom/amazon/identity/auth/device/api/MAPError$ActorError;

    .line 662
    new-instance v0, Lcom/amazon/identity/auth/device/api/MAPError$ActorError;

    sget-object v1, Lcom/amazon/identity/auth/device/api/MAPError$ActorError$ActorErrorEnum;->ACTOR_SIGNUP_FAILED:Lcom/amazon/identity/auth/device/api/MAPError$ActorError$ActorErrorEnum;

    invoke-direct {v0, v1}, Lcom/amazon/identity/auth/device/api/MAPError$ActorError;-><init>(Lcom/amazon/identity/auth/device/api/MAPError$ActorError$ActorErrorEnum;)V

    sput-object v0, Lcom/amazon/identity/auth/device/api/MAPError$ActorError;->ACTOR_SIGNUP_FAILED:Lcom/amazon/identity/auth/device/api/MAPError$ActorError;

    .line 668
    new-instance v0, Lcom/amazon/identity/auth/device/api/MAPError$ActorError;

    sget-object v1, Lcom/amazon/identity/auth/device/api/MAPError$ActorError$ActorErrorEnum;->ACTOR_ENROLLMENT_FAILED:Lcom/amazon/identity/auth/device/api/MAPError$ActorError$ActorErrorEnum;

    invoke-direct {v0, v1}, Lcom/amazon/identity/auth/device/api/MAPError$ActorError;-><init>(Lcom/amazon/identity/auth/device/api/MAPError$ActorError$ActorErrorEnum;)V

    sput-object v0, Lcom/amazon/identity/auth/device/api/MAPError$ActorError;->ACTOR_ENROLLMENT_FAILED:Lcom/amazon/identity/auth/device/api/MAPError$ActorError;

    return-void
.end method

.method private constructor <init>(Lcom/amazon/identity/auth/device/api/MAPError$ActorError$ActorErrorEnum;)V
    .locals 2

    .line 672
    invoke-virtual {p1}, Lcom/amazon/identity/auth/device/api/MAPError$ActorError$ActorErrorEnum;->getErrorCode()I

    move-result v0

    invoke-virtual {p1}, Lcom/amazon/identity/auth/device/api/MAPError$ActorError$ActorErrorEnum;->getErrorMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/amazon/identity/auth/device/api/MAPError$ActorError$ActorErrorEnum;->getErrorType()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v0, v1, p1}, Lcom/amazon/identity/auth/device/api/MAPError;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/amazon/identity/auth/device/api/MAPError$ActorError$ActorErrorEnum;B)V
    .locals 0

    .line 617
    invoke-direct {p0, p1}, Lcom/amazon/identity/auth/device/api/MAPError$ActorError;-><init>(Lcom/amazon/identity/auth/device/api/MAPError$ActorError$ActorErrorEnum;)V

    return-void
.end method
