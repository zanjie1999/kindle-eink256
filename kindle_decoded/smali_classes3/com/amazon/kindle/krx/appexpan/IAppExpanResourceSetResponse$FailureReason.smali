.class public final enum Lcom/amazon/kindle/krx/appexpan/IAppExpanResourceSetResponse$FailureReason;
.super Ljava/lang/Enum;
.source "IAppExpanResourceSetResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kindle/krx/appexpan/IAppExpanResourceSetResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "FailureReason"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/kindle/krx/appexpan/IAppExpanResourceSetResponse$FailureReason;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/kindle/krx/appexpan/IAppExpanResourceSetResponse$FailureReason;

.field public static final enum RESOURCE_SET_DOWNLOAD_FAILED:Lcom/amazon/kindle/krx/appexpan/IAppExpanResourceSetResponse$FailureReason;

.field public static final enum RESOURCE_SET_INVALID:Lcom/amazon/kindle/krx/appexpan/IAppExpanResourceSetResponse$FailureReason;

.field public static final enum RESOURCE_SET_NOT_LOCAL:Lcom/amazon/kindle/krx/appexpan/IAppExpanResourceSetResponse$FailureReason;

.field public static final enum UNKNOWN_FAILURE:Lcom/amazon/kindle/krx/appexpan/IAppExpanResourceSetResponse$FailureReason;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 36
    new-instance v0, Lcom/amazon/kindle/krx/appexpan/IAppExpanResourceSetResponse$FailureReason;

    const/4 v1, 0x0

    const-string v2, "RESOURCE_SET_NOT_LOCAL"

    invoke-direct {v0, v2, v1}, Lcom/amazon/kindle/krx/appexpan/IAppExpanResourceSetResponse$FailureReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kindle/krx/appexpan/IAppExpanResourceSetResponse$FailureReason;->RESOURCE_SET_NOT_LOCAL:Lcom/amazon/kindle/krx/appexpan/IAppExpanResourceSetResponse$FailureReason;

    .line 39
    new-instance v0, Lcom/amazon/kindle/krx/appexpan/IAppExpanResourceSetResponse$FailureReason;

    const/4 v2, 0x1

    const-string v3, "RESOURCE_SET_DOWNLOAD_FAILED"

    invoke-direct {v0, v3, v2}, Lcom/amazon/kindle/krx/appexpan/IAppExpanResourceSetResponse$FailureReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kindle/krx/appexpan/IAppExpanResourceSetResponse$FailureReason;->RESOURCE_SET_DOWNLOAD_FAILED:Lcom/amazon/kindle/krx/appexpan/IAppExpanResourceSetResponse$FailureReason;

    .line 42
    new-instance v0, Lcom/amazon/kindle/krx/appexpan/IAppExpanResourceSetResponse$FailureReason;

    const/4 v3, 0x2

    const-string v4, "RESOURCE_SET_INVALID"

    invoke-direct {v0, v4, v3}, Lcom/amazon/kindle/krx/appexpan/IAppExpanResourceSetResponse$FailureReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kindle/krx/appexpan/IAppExpanResourceSetResponse$FailureReason;->RESOURCE_SET_INVALID:Lcom/amazon/kindle/krx/appexpan/IAppExpanResourceSetResponse$FailureReason;

    .line 45
    new-instance v0, Lcom/amazon/kindle/krx/appexpan/IAppExpanResourceSetResponse$FailureReason;

    const/4 v4, 0x3

    const-string v5, "UNKNOWN_FAILURE"

    invoke-direct {v0, v5, v4}, Lcom/amazon/kindle/krx/appexpan/IAppExpanResourceSetResponse$FailureReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kindle/krx/appexpan/IAppExpanResourceSetResponse$FailureReason;->UNKNOWN_FAILURE:Lcom/amazon/kindle/krx/appexpan/IAppExpanResourceSetResponse$FailureReason;

    const/4 v5, 0x4

    new-array v5, v5, [Lcom/amazon/kindle/krx/appexpan/IAppExpanResourceSetResponse$FailureReason;

    .line 33
    sget-object v6, Lcom/amazon/kindle/krx/appexpan/IAppExpanResourceSetResponse$FailureReason;->RESOURCE_SET_NOT_LOCAL:Lcom/amazon/kindle/krx/appexpan/IAppExpanResourceSetResponse$FailureReason;

    aput-object v6, v5, v1

    sget-object v1, Lcom/amazon/kindle/krx/appexpan/IAppExpanResourceSetResponse$FailureReason;->RESOURCE_SET_DOWNLOAD_FAILED:Lcom/amazon/kindle/krx/appexpan/IAppExpanResourceSetResponse$FailureReason;

    aput-object v1, v5, v2

    sget-object v1, Lcom/amazon/kindle/krx/appexpan/IAppExpanResourceSetResponse$FailureReason;->RESOURCE_SET_INVALID:Lcom/amazon/kindle/krx/appexpan/IAppExpanResourceSetResponse$FailureReason;

    aput-object v1, v5, v3

    aput-object v0, v5, v4

    sput-object v5, Lcom/amazon/kindle/krx/appexpan/IAppExpanResourceSetResponse$FailureReason;->$VALUES:[Lcom/amazon/kindle/krx/appexpan/IAppExpanResourceSetResponse$FailureReason;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 33
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/kindle/krx/appexpan/IAppExpanResourceSetResponse$FailureReason;
    .locals 1

    .line 33
    const-class v0, Lcom/amazon/kindle/krx/appexpan/IAppExpanResourceSetResponse$FailureReason;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/kindle/krx/appexpan/IAppExpanResourceSetResponse$FailureReason;

    return-object p0
.end method

.method public static values()[Lcom/amazon/kindle/krx/appexpan/IAppExpanResourceSetResponse$FailureReason;
    .locals 1

    .line 33
    sget-object v0, Lcom/amazon/kindle/krx/appexpan/IAppExpanResourceSetResponse$FailureReason;->$VALUES:[Lcom/amazon/kindle/krx/appexpan/IAppExpanResourceSetResponse$FailureReason;

    invoke-virtual {v0}, [Lcom/amazon/kindle/krx/appexpan/IAppExpanResourceSetResponse$FailureReason;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/kindle/krx/appexpan/IAppExpanResourceSetResponse$FailureReason;

    return-object v0
.end method
