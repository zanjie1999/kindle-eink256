.class public final enum Lcom/amazon/kcp/font/FontDownloadConfirmationEvent$Type;
.super Ljava/lang/Enum;
.source "FontDownloadConfirmationEvent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/font/FontDownloadConfirmationEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/kcp/font/FontDownloadConfirmationEvent$Type;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/kcp/font/FontDownloadConfirmationEvent$Type;

.field public static final enum ALLOWED:Lcom/amazon/kcp/font/FontDownloadConfirmationEvent$Type;

.field public static final enum REJECTED:Lcom/amazon/kcp/font/FontDownloadConfirmationEvent$Type;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 36
    new-instance v0, Lcom/amazon/kcp/font/FontDownloadConfirmationEvent$Type;

    const/4 v1, 0x0

    const-string v2, "ALLOWED"

    invoke-direct {v0, v2, v1}, Lcom/amazon/kcp/font/FontDownloadConfirmationEvent$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kcp/font/FontDownloadConfirmationEvent$Type;->ALLOWED:Lcom/amazon/kcp/font/FontDownloadConfirmationEvent$Type;

    .line 37
    new-instance v0, Lcom/amazon/kcp/font/FontDownloadConfirmationEvent$Type;

    const/4 v2, 0x1

    const-string v3, "REJECTED"

    invoke-direct {v0, v3, v2}, Lcom/amazon/kcp/font/FontDownloadConfirmationEvent$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kcp/font/FontDownloadConfirmationEvent$Type;->REJECTED:Lcom/amazon/kcp/font/FontDownloadConfirmationEvent$Type;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/amazon/kcp/font/FontDownloadConfirmationEvent$Type;

    .line 35
    sget-object v4, Lcom/amazon/kcp/font/FontDownloadConfirmationEvent$Type;->ALLOWED:Lcom/amazon/kcp/font/FontDownloadConfirmationEvent$Type;

    aput-object v4, v3, v1

    aput-object v0, v3, v2

    sput-object v3, Lcom/amazon/kcp/font/FontDownloadConfirmationEvent$Type;->$VALUES:[Lcom/amazon/kcp/font/FontDownloadConfirmationEvent$Type;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 35
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/kcp/font/FontDownloadConfirmationEvent$Type;
    .locals 1

    .line 35
    const-class v0, Lcom/amazon/kcp/font/FontDownloadConfirmationEvent$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/kcp/font/FontDownloadConfirmationEvent$Type;

    return-object p0
.end method

.method public static values()[Lcom/amazon/kcp/font/FontDownloadConfirmationEvent$Type;
    .locals 1

    .line 35
    sget-object v0, Lcom/amazon/kcp/font/FontDownloadConfirmationEvent$Type;->$VALUES:[Lcom/amazon/kcp/font/FontDownloadConfirmationEvent$Type;

    invoke-virtual {v0}, [Lcom/amazon/kcp/font/FontDownloadConfirmationEvent$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/kcp/font/FontDownloadConfirmationEvent$Type;

    return-object v0
.end method
