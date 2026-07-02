.class public final enum Lcom/amazon/kcp/application/IAssociateInformationProvider$PreloadType;
.super Ljava/lang/Enum;
.source "IAssociateInformationProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/application/IAssociateInformationProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PreloadType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/kcp/application/IAssociateInformationProvider$PreloadType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/kcp/application/IAssociateInformationProvider$PreloadType;

.field public static final enum APK:Lcom/amazon/kcp/application/IAssociateInformationProvider$PreloadType;

.field public static final enum FILESYSTEM:Lcom/amazon/kcp/application/IAssociateInformationProvider$PreloadType;

.field public static final enum NONE:Lcom/amazon/kcp/application/IAssociateInformationProvider$PreloadType;

.field public static final enum PLM:Lcom/amazon/kcp/application/IAssociateInformationProvider$PreloadType;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 37
    new-instance v0, Lcom/amazon/kcp/application/IAssociateInformationProvider$PreloadType;

    const/4 v1, 0x0

    const-string v2, "NONE"

    invoke-direct {v0, v2, v1}, Lcom/amazon/kcp/application/IAssociateInformationProvider$PreloadType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kcp/application/IAssociateInformationProvider$PreloadType;->NONE:Lcom/amazon/kcp/application/IAssociateInformationProvider$PreloadType;

    .line 41
    new-instance v0, Lcom/amazon/kcp/application/IAssociateInformationProvider$PreloadType;

    const/4 v2, 0x1

    const-string v3, "FILESYSTEM"

    invoke-direct {v0, v3, v2}, Lcom/amazon/kcp/application/IAssociateInformationProvider$PreloadType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kcp/application/IAssociateInformationProvider$PreloadType;->FILESYSTEM:Lcom/amazon/kcp/application/IAssociateInformationProvider$PreloadType;

    .line 45
    new-instance v0, Lcom/amazon/kcp/application/IAssociateInformationProvider$PreloadType;

    const/4 v3, 0x2

    const-string v4, "APK"

    invoke-direct {v0, v4, v3}, Lcom/amazon/kcp/application/IAssociateInformationProvider$PreloadType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kcp/application/IAssociateInformationProvider$PreloadType;->APK:Lcom/amazon/kcp/application/IAssociateInformationProvider$PreloadType;

    .line 49
    new-instance v0, Lcom/amazon/kcp/application/IAssociateInformationProvider$PreloadType;

    const/4 v4, 0x3

    const-string v5, "PLM"

    invoke-direct {v0, v5, v4}, Lcom/amazon/kcp/application/IAssociateInformationProvider$PreloadType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kcp/application/IAssociateInformationProvider$PreloadType;->PLM:Lcom/amazon/kcp/application/IAssociateInformationProvider$PreloadType;

    const/4 v5, 0x4

    new-array v5, v5, [Lcom/amazon/kcp/application/IAssociateInformationProvider$PreloadType;

    .line 33
    sget-object v6, Lcom/amazon/kcp/application/IAssociateInformationProvider$PreloadType;->NONE:Lcom/amazon/kcp/application/IAssociateInformationProvider$PreloadType;

    aput-object v6, v5, v1

    sget-object v1, Lcom/amazon/kcp/application/IAssociateInformationProvider$PreloadType;->FILESYSTEM:Lcom/amazon/kcp/application/IAssociateInformationProvider$PreloadType;

    aput-object v1, v5, v2

    sget-object v1, Lcom/amazon/kcp/application/IAssociateInformationProvider$PreloadType;->APK:Lcom/amazon/kcp/application/IAssociateInformationProvider$PreloadType;

    aput-object v1, v5, v3

    aput-object v0, v5, v4

    sput-object v5, Lcom/amazon/kcp/application/IAssociateInformationProvider$PreloadType;->$VALUES:[Lcom/amazon/kcp/application/IAssociateInformationProvider$PreloadType;

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

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/kcp/application/IAssociateInformationProvider$PreloadType;
    .locals 1

    .line 33
    const-class v0, Lcom/amazon/kcp/application/IAssociateInformationProvider$PreloadType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/kcp/application/IAssociateInformationProvider$PreloadType;

    return-object p0
.end method

.method public static values()[Lcom/amazon/kcp/application/IAssociateInformationProvider$PreloadType;
    .locals 1

    .line 33
    sget-object v0, Lcom/amazon/kcp/application/IAssociateInformationProvider$PreloadType;->$VALUES:[Lcom/amazon/kcp/application/IAssociateInformationProvider$PreloadType;

    invoke-virtual {v0}, [Lcom/amazon/kcp/application/IAssociateInformationProvider$PreloadType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/kcp/application/IAssociateInformationProvider$PreloadType;

    return-object v0
.end method
