.class final enum Lcom/amazon/kcp/application/AppConfigRequest$AuthPortalColumn;
.super Ljava/lang/Enum;
.source "AppConfigRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/application/AppConfigRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "AuthPortalColumn"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/kcp/application/AppConfigRequest$AuthPortalColumn;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/kcp/application/AppConfigRequest$AuthPortalColumn;

.field public static final enum DOMAIN:Lcom/amazon/kcp/application/AppConfigRequest$AuthPortalColumn;

.field public static final enum HANDLE:Lcom/amazon/kcp/application/AppConfigRequest$AuthPortalColumn;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 76
    new-instance v0, Lcom/amazon/kcp/application/AppConfigRequest$AuthPortalColumn;

    const/4 v1, 0x0

    const-string v2, "HANDLE"

    invoke-direct {v0, v2, v1}, Lcom/amazon/kcp/application/AppConfigRequest$AuthPortalColumn;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kcp/application/AppConfigRequest$AuthPortalColumn;->HANDLE:Lcom/amazon/kcp/application/AppConfigRequest$AuthPortalColumn;

    .line 77
    new-instance v0, Lcom/amazon/kcp/application/AppConfigRequest$AuthPortalColumn;

    const/4 v2, 0x1

    const-string v3, "DOMAIN"

    invoke-direct {v0, v3, v2}, Lcom/amazon/kcp/application/AppConfigRequest$AuthPortalColumn;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kcp/application/AppConfigRequest$AuthPortalColumn;->DOMAIN:Lcom/amazon/kcp/application/AppConfigRequest$AuthPortalColumn;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/amazon/kcp/application/AppConfigRequest$AuthPortalColumn;

    .line 75
    sget-object v4, Lcom/amazon/kcp/application/AppConfigRequest$AuthPortalColumn;->HANDLE:Lcom/amazon/kcp/application/AppConfigRequest$AuthPortalColumn;

    aput-object v4, v3, v1

    aput-object v0, v3, v2

    sput-object v3, Lcom/amazon/kcp/application/AppConfigRequest$AuthPortalColumn;->$VALUES:[Lcom/amazon/kcp/application/AppConfigRequest$AuthPortalColumn;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 75
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/kcp/application/AppConfigRequest$AuthPortalColumn;
    .locals 1

    .line 75
    const-class v0, Lcom/amazon/kcp/application/AppConfigRequest$AuthPortalColumn;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/kcp/application/AppConfigRequest$AuthPortalColumn;

    return-object p0
.end method

.method public static values()[Lcom/amazon/kcp/application/AppConfigRequest$AuthPortalColumn;
    .locals 1

    .line 75
    sget-object v0, Lcom/amazon/kcp/application/AppConfigRequest$AuthPortalColumn;->$VALUES:[Lcom/amazon/kcp/application/AppConfigRequest$AuthPortalColumn;

    invoke-virtual {v0}, [Lcom/amazon/kcp/application/AppConfigRequest$AuthPortalColumn;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/kcp/application/AppConfigRequest$AuthPortalColumn;

    return-object v0
.end method
