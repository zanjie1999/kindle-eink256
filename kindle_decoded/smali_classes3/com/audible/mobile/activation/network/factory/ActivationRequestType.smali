.class public final enum Lcom/audible/mobile/activation/network/factory/ActivationRequestType;
.super Ljava/lang/Enum;
.source "ActivationRequestType.java"

# interfaces
.implements Lcom/audible/mobile/downloader/factory/DownloadType;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/audible/mobile/activation/network/factory/ActivationRequestType;",
        ">;",
        "Lcom/audible/mobile/downloader/factory/DownloadType;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/audible/mobile/activation/network/factory/ActivationRequestType;

.field public static final enum Activate:Lcom/audible/mobile/activation/network/factory/ActivationRequestType;

.field public static final enum Deactivate:Lcom/audible/mobile/activation/network/factory/ActivationRequestType;


# instance fields
.field private final action:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 7
    new-instance v0, Lcom/audible/mobile/activation/network/factory/ActivationRequestType;

    const/4 v1, 0x0

    const-string v2, "Activate"

    const-string v3, "register"

    invoke-direct {v0, v2, v1, v3}, Lcom/audible/mobile/activation/network/factory/ActivationRequestType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/audible/mobile/activation/network/factory/ActivationRequestType;->Activate:Lcom/audible/mobile/activation/network/factory/ActivationRequestType;

    .line 9
    new-instance v0, Lcom/audible/mobile/activation/network/factory/ActivationRequestType;

    const/4 v2, 0x1

    const-string v3, "Deactivate"

    const-string v4, "de-register"

    invoke-direct {v0, v3, v2, v4}, Lcom/audible/mobile/activation/network/factory/ActivationRequestType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/audible/mobile/activation/network/factory/ActivationRequestType;->Deactivate:Lcom/audible/mobile/activation/network/factory/ActivationRequestType;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/audible/mobile/activation/network/factory/ActivationRequestType;

    .line 5
    sget-object v4, Lcom/audible/mobile/activation/network/factory/ActivationRequestType;->Activate:Lcom/audible/mobile/activation/network/factory/ActivationRequestType;

    aput-object v4, v3, v1

    aput-object v0, v3, v2

    sput-object v3, Lcom/audible/mobile/activation/network/factory/ActivationRequestType;->$VALUES:[Lcom/audible/mobile/activation/network/factory/ActivationRequestType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 14
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 15
    iput-object p3, p0, Lcom/audible/mobile/activation/network/factory/ActivationRequestType;->action:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/audible/mobile/activation/network/factory/ActivationRequestType;
    .locals 1

    .line 5
    const-class v0, Lcom/audible/mobile/activation/network/factory/ActivationRequestType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/audible/mobile/activation/network/factory/ActivationRequestType;

    return-object p0
.end method

.method public static values()[Lcom/audible/mobile/activation/network/factory/ActivationRequestType;
    .locals 1

    .line 5
    sget-object v0, Lcom/audible/mobile/activation/network/factory/ActivationRequestType;->$VALUES:[Lcom/audible/mobile/activation/network/factory/ActivationRequestType;

    invoke-virtual {v0}, [Lcom/audible/mobile/activation/network/factory/ActivationRequestType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/audible/mobile/activation/network/factory/ActivationRequestType;

    return-object v0
.end method


# virtual methods
.method public getAction()Ljava/lang/String;
    .locals 1

    .line 25
    iget-object v0, p0, Lcom/audible/mobile/activation/network/factory/ActivationRequestType;->action:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .line 31
    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
