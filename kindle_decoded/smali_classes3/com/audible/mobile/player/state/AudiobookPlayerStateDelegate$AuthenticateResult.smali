.class public final enum Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$AuthenticateResult;
.super Ljava/lang/Enum;
.source "AudiobookPlayerStateDelegate.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "AuthenticateResult"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$AuthenticateResult;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$AuthenticateResult;

.field public static final enum DEVICE_NOT_ACTIVATED:Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$AuthenticateResult;

.field public static final enum DEVICE_NOT_ACTIVATED_FOR_THIS_FILE:Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$AuthenticateResult;

.field public static final enum FAILED_TO_DECRYPT_VOUCHER:Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$AuthenticateResult;

.field public static final enum FAILED_TO_FETCH_VOUCHER:Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$AuthenticateResult;

.field public static final enum FAILURE:Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$AuthenticateResult;

.field public static final enum INVALID_STATE:Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$AuthenticateResult;

.field public static final enum INVALID_VOUCHER:Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$AuthenticateResult;

.field public static final enum SUCCESS:Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$AuthenticateResult;

.field public static final enum VOUCHER_EXPIRED:Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$AuthenticateResult;

.field public static final enum VOUCHER_NOT_FOUND:Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$AuthenticateResult;

.field public static final enum VOUCHER_RULE_FAILED:Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$AuthenticateResult;


# direct methods
.method static constructor <clinit>()V
    .locals 14

    .line 72
    new-instance v0, Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$AuthenticateResult;

    const/4 v1, 0x0

    const-string v2, "SUCCESS"

    invoke-direct {v0, v2, v1}, Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$AuthenticateResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$AuthenticateResult;->SUCCESS:Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$AuthenticateResult;

    new-instance v0, Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$AuthenticateResult;

    const/4 v2, 0x1

    const-string v3, "FAILURE"

    invoke-direct {v0, v3, v2}, Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$AuthenticateResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$AuthenticateResult;->FAILURE:Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$AuthenticateResult;

    new-instance v0, Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$AuthenticateResult;

    const/4 v3, 0x2

    const-string v4, "INVALID_STATE"

    invoke-direct {v0, v4, v3}, Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$AuthenticateResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$AuthenticateResult;->INVALID_STATE:Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$AuthenticateResult;

    new-instance v0, Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$AuthenticateResult;

    const/4 v4, 0x3

    const-string v5, "DEVICE_NOT_ACTIVATED"

    invoke-direct {v0, v5, v4}, Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$AuthenticateResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$AuthenticateResult;->DEVICE_NOT_ACTIVATED:Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$AuthenticateResult;

    new-instance v0, Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$AuthenticateResult;

    const/4 v5, 0x4

    const-string v6, "DEVICE_NOT_ACTIVATED_FOR_THIS_FILE"

    invoke-direct {v0, v6, v5}, Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$AuthenticateResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$AuthenticateResult;->DEVICE_NOT_ACTIVATED_FOR_THIS_FILE:Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$AuthenticateResult;

    new-instance v0, Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$AuthenticateResult;

    const/4 v6, 0x5

    const-string v7, "VOUCHER_NOT_FOUND"

    invoke-direct {v0, v7, v6}, Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$AuthenticateResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$AuthenticateResult;->VOUCHER_NOT_FOUND:Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$AuthenticateResult;

    new-instance v0, Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$AuthenticateResult;

    const/4 v7, 0x6

    const-string v8, "INVALID_VOUCHER"

    invoke-direct {v0, v8, v7}, Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$AuthenticateResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$AuthenticateResult;->INVALID_VOUCHER:Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$AuthenticateResult;

    new-instance v0, Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$AuthenticateResult;

    const/4 v8, 0x7

    const-string v9, "FAILED_TO_DECRYPT_VOUCHER"

    invoke-direct {v0, v9, v8}, Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$AuthenticateResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$AuthenticateResult;->FAILED_TO_DECRYPT_VOUCHER:Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$AuthenticateResult;

    new-instance v0, Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$AuthenticateResult;

    const/16 v9, 0x8

    const-string v10, "VOUCHER_EXPIRED"

    invoke-direct {v0, v10, v9}, Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$AuthenticateResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$AuthenticateResult;->VOUCHER_EXPIRED:Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$AuthenticateResult;

    new-instance v0, Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$AuthenticateResult;

    const/16 v10, 0x9

    const-string v11, "FAILED_TO_FETCH_VOUCHER"

    invoke-direct {v0, v11, v10}, Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$AuthenticateResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$AuthenticateResult;->FAILED_TO_FETCH_VOUCHER:Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$AuthenticateResult;

    new-instance v0, Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$AuthenticateResult;

    const/16 v11, 0xa

    const-string v12, "VOUCHER_RULE_FAILED"

    invoke-direct {v0, v12, v11}, Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$AuthenticateResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$AuthenticateResult;->VOUCHER_RULE_FAILED:Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$AuthenticateResult;

    const/16 v12, 0xb

    new-array v12, v12, [Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$AuthenticateResult;

    .line 71
    sget-object v13, Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$AuthenticateResult;->SUCCESS:Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$AuthenticateResult;

    aput-object v13, v12, v1

    sget-object v1, Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$AuthenticateResult;->FAILURE:Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$AuthenticateResult;

    aput-object v1, v12, v2

    sget-object v1, Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$AuthenticateResult;->INVALID_STATE:Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$AuthenticateResult;

    aput-object v1, v12, v3

    sget-object v1, Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$AuthenticateResult;->DEVICE_NOT_ACTIVATED:Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$AuthenticateResult;

    aput-object v1, v12, v4

    sget-object v1, Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$AuthenticateResult;->DEVICE_NOT_ACTIVATED_FOR_THIS_FILE:Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$AuthenticateResult;

    aput-object v1, v12, v5

    sget-object v1, Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$AuthenticateResult;->VOUCHER_NOT_FOUND:Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$AuthenticateResult;

    aput-object v1, v12, v6

    sget-object v1, Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$AuthenticateResult;->INVALID_VOUCHER:Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$AuthenticateResult;

    aput-object v1, v12, v7

    sget-object v1, Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$AuthenticateResult;->FAILED_TO_DECRYPT_VOUCHER:Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$AuthenticateResult;

    aput-object v1, v12, v8

    sget-object v1, Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$AuthenticateResult;->VOUCHER_EXPIRED:Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$AuthenticateResult;

    aput-object v1, v12, v9

    sget-object v1, Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$AuthenticateResult;->FAILED_TO_FETCH_VOUCHER:Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$AuthenticateResult;

    aput-object v1, v12, v10

    aput-object v0, v12, v11

    sput-object v12, Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$AuthenticateResult;->$VALUES:[Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$AuthenticateResult;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 71
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$AuthenticateResult;
    .locals 1

    .line 71
    const-class v0, Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$AuthenticateResult;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$AuthenticateResult;

    return-object p0
.end method

.method public static values()[Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$AuthenticateResult;
    .locals 1

    .line 71
    sget-object v0, Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$AuthenticateResult;->$VALUES:[Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$AuthenticateResult;

    invoke-virtual {v0}, [Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$AuthenticateResult;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate$AuthenticateResult;

    return-object v0
.end method
